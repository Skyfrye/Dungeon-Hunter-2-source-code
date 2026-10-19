#!/usr/bin/env python3
"""Evidence-preserving ELF inventories and ARM/Thumb assembly recovery.

This does not recover compilable C++ or reconstruct original source bodies.
Requires Python packages pyelftools and capstone, plus c++filt on PATH.
"""
from __future__ import annotations

import argparse
import bisect
import csv
import hashlib
import io
import json
import re
import shutil
import subprocess
from collections import Counter, defaultdict
from pathlib import Path

from capstone import CS_ARCH_ARM, CS_MODE_ARM, CS_MODE_LITTLE_ENDIAN, CS_MODE_THUMB, Cs
from elftools.elf.descriptions import describe_reloc_type
from elftools.elf.elffile import ELFFile
from elftools.elf.relocation import RelocationSection
from elftools.elf.sections import SymbolTableSection

SCHEMA_VERSION = 1
CHUNK_BYTES = 25 * 1024 * 1024
ASCII_RE = re.compile(rb"[\x20-\x7e]{4,}")
UTF16_RE = re.compile(rb"(?:[\x20-\x7e]\x00){4,}")


def sha256(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for part in iter(lambda: f.read(1024 * 1024), b""):
            h.update(part)
    return h.hexdigest()


def write_json(path, obj):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(json.dumps(obj, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def write_csv(path, rows, fields):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", encoding="utf-8", newline="") as f:
        w = csv.DictWriter(f, fields, extrasaction="ignore")
        w.writeheader()
        for row in rows:
            w.writerow({k: json.dumps(v, ensure_ascii=False) if isinstance(v, (dict, list)) else v
                        for k, v in row.items()})


def write_json_chunks(folder, basename, rows):
    """Bound each readable JSON array below 25 MiB, including original table rows."""
    folder.mkdir(parents=True, exist_ok=True)
    chunks, contents, size = [], [], 0
    for row in rows:
        value = json.dumps(row, ensure_ascii=False, separators=(",", ":"))
        nbytes = len(value.encode("utf-8")) + 2
        if contents and size + nbytes > CHUNK_BYTES:
            p = folder / f"{basename}-{len(chunks) + 1:03d}.json"
            p.write_text("[\n" + ",\n".join(contents) + "\n]\n", encoding="utf-8")
            chunks.append(p.name)
            contents, size = [], 0
        contents.append(value)
        size += nbytes
    if contents or not chunks:
        p = folder / f"{basename}-{len(chunks) + 1:03d}.json"
        p.write_text("[\n" + ",\n".join(contents) + "\n]\n", encoding="utf-8")
        chunks.append(p.name)
    return chunks


def demangle_all(names):
    names = sorted({s for s in names if s.startswith("_Z")})
    if not names:
        return {}
    result = subprocess.run(["c++filt", "-n"], input="\n".join(names) + "\n",
                            text=True, capture_output=True, check=True)
    lines = result.stdout.splitlines()
    if len(lines) != len(names):
        raise RuntimeError("c++filt output length differs from symbol input")
    return dict(zip(names, lines))


def class_root(name):
    """Group on the final top-level C++ scope separator, respecting templates."""
    name = re.sub(r"^(?:non-virtual|virtual|covariant return) thunk to ", "", name)
    depth = 0
    separators = []
    for i, ch in enumerate(name):
        if ch == "<":
            depth += 1
        elif ch == ">":
            depth = max(0, depth - 1)
        elif ch == "(" and depth == 0:
            break
        elif ch == ":" and i + 1 < len(name) and name[i + 1] == ":" and depth == 0:
            separators.append(i)
    return name[:separators[-1]] if separators else "global-functions"


def safe_root(name):
    slug = re.sub(r"[^A-Za-z0-9._-]+", "_", name).strip("_")[:90] or "global"
    return slug + "-" + hashlib.sha256(name.encode()).hexdigest()[:12]


def runs(data, wanted=None):
    """Contiguous byte ranges, optionally selecting a coverage classification."""
    if not data:
        return
    start, value = 0, data[0]
    for i in range(1, len(data)):
        if data[i] != value:
            if wanted is None or value in wanted:
                yield start, i, value
            start, value = i, data[i]
    if wanted is None or value in wanted:
        yield start, len(data), value


class AssemblyWriter:
    def __init__(self, folder):
        self.folder = folder
        folder.mkdir(parents=True, exist_ok=True)
        self.paths, self.sizes = {}, {}
        self.files = {}

    def write(self, root, content):
        encoded = content.encode("utf-8")
        key = safe_root(root)
        part = self.files.get(key, 1)
        path = self.folder / f"{key}-{part:03d}.asm"
        if self.sizes.get(path, 0) + len(encoded) > CHUNK_BYTES:
            part += 1
            path = self.folder / f"{key}-{part:03d}.asm"
        self.files[key] = part
        if path not in self.sizes:
            with path.open("w", encoding="utf-8") as f:
                f.write("; ARM ELF recovered assembly. Addresses are original ELF virtual addresses.\n")
                f.write("; .byte marks mapped data or bytes Capstone could not decode.\n")
                f.write("; This is an annotated listing, not assembler-ready source.\n")
        with path.open("a", encoding="utf-8") as f:
            f.write(content)
        self.sizes[path] = path.stat().st_size
        self.paths[path.name] = root
        return path.name


def recover_library(path, symbols_folder, assembly_folder):
    filename = path.name
    output = symbols_folder / filename
    for generated_folder in [output, assembly_folder / filename]:
        if generated_folder.exists():
            shutil.rmtree(generated_folder)
    output.mkdir(parents=True, exist_ok=True)
    with path.open("rb") as stream:
        elf = ELFFile(stream)
        if elf['e_machine'] != 'EM_ARM' or elf.elfclass != 32 or not elf.little_endian:
            raise ValueError(f"{filename}: only ARM32 little-endian ELF is supported")
        sections = list(elf.iter_sections())
        bytes_by_section = {i: s.data() for i, s in enumerate(sections) if s['sh_type'] != 'SHT_NOBITS'}
        section_rows = [{"index": i, "name": s.name, "type": s['sh_type'],
                         "address": s['sh_addr'], "file_offset": s['sh_offset'],
                         "size": s['sh_size'], "flags": s['sh_flags'],
                         "alignment": s['sh_addralign']} for i, s in enumerate(sections)]
        rows = []
        for sec in sections:
            if isinstance(sec, SymbolTableSection):
                for i, sym in enumerate(sec.iter_symbols()):
                    rows.append({"table": sec.name, "index": i, "name": sym.name,
                                 "value": sym['st_value'], "size": sym['st_size'],
                                 "type": sym['st_info']['type'], "binding": sym['st_info']['bind'],
                                 "visibility": sym['st_other']['visibility'],
                                 "section_index": sym['st_shndx']})
        demangled = demangle_all(r['name'] for r in rows)
        for row in rows:
            row['demangled'] = demangled.get(row['name'], row['name'])
            si = row['section_index']
            row['section'] = sections[si].name if isinstance(si, int) else si
            row['address'] = row['value'] & ~1 if row['type'] == 'STT_FUNC' else row['value']
            row['mode'] = ('thumb' if row['value'] & 1 else 'arm') if row['type'] == 'STT_FUNC' else None
        row_by_ref = {(r['table'], r['index']): r for r in rows}
        symbol_chunks = write_json_chunks(output, "symbols", rows)
        write_csv(output / 'symbols.csv', rows, ['table', 'index', 'name', 'demangled', 'value',
                  'address', 'size', 'mode', 'type', 'binding', 'visibility', 'section_index', 'section'])
        write_json(output / 'sections.json', section_rows)
        imports = [r for r in rows if r['section_index'] == 'SHN_UNDEF' and r['name']]
        write_json(output / 'imports.json', imports)
        write_csv(output / 'imports.csv', imports, ['table', 'index', 'name', 'demangled', 'type', 'binding'])
        source_files = sorted({r['name'] for r in rows if r['type'] == 'STT_FILE' and r['name']})
        write_json(output / 'build-source-filenames.json', source_files)
        dynamic = []
        if elf.get_section_by_name('.dynamic') is not None:
            for tag in elf.get_section_by_name('.dynamic').iter_tags():
                dynamic.append({"tag": tag['d_tag'], "value": tag['d_val'],
                                "string": getattr(tag, 'needed', getattr(tag, 'soname', None))})
        write_json(output / 'dynamic.json', dynamic)
        address_symbols = defaultdict(list)
        for row in rows:
            if isinstance(row['section_index'], int) and row['name'] and not row['name'].startswith('$'):
                if row['demangled'] not in address_symbols[row['address']]:
                    address_symbols[row['address']].append(row['demangled'])

        def memory_bytes(address, size):
            for i, sec in enumerate(sections):
                if sec['sh_type'] != 'SHT_NOBITS' and sec['sh_addr'] <= address < sec['sh_addr'] + sec['sh_size']:
                    start = address - sec['sh_addr']
                    return bytes_by_section[i][start:start + size]
            return b''

        relocations, reloc_by_addr = [], defaultdict(list)
        for sec in sections:
            if isinstance(sec, RelocationSection):
                link = sections[sec['sh_link']]
                for i, rel in enumerate(sec.iter_relocations()):
                    sr = row_by_ref.get((link.name, rel['r_info_sym']))
                    raw = memory_bytes(rel['r_offset'], 4)
                    implicit = int.from_bytes(raw, 'little') if len(raw) == 4 else None
                    rr = {"section": sec.name, "index": i, "offset": rel['r_offset'],
                          "type_id": rel['r_info_type'], "type": describe_reloc_type(rel['r_info_type'], elf),
                          "symbol_index": rel['r_info_sym'], "symbol_table": link.name,
                          "symbol": sr['name'] if sr else None,
                          "demangled": sr['demangled'] if sr else None,
                          "addend": rel['r_addend'] if rel.is_RELA() else implicit,
                          "addend_kind": 'explicit' if rel.is_RELA() else 'raw-word-at-relocation'}
                    relocations.append(rr)
                    reloc_by_addr[rel['r_offset']].append(rr)
        relocation_chunks = write_json_chunks(output, 'relocations', relocations)
        write_csv(output / 'relocations.csv', relocations, ['section', 'index', 'offset', 'type_id', 'type',
                  'symbol_table', 'symbol_index', 'symbol', 'demangled', 'addend', 'addend_kind'])

        seen_tables, tables, typeinfo = set(), [], []
        for row in rows:
            if row['name'].startswith('_ZTI') and (row['name'], row['value']) not in seen_tables:
                seen_tables.add((row['name'], row['value']))
                typeinfo.append(row)
            if row['name'].startswith('_ZTV') and isinstance(row['section_index'], int):
                key = (row['name'], row['value'], row['size'])
                if key in seen_tables:
                    continue
                seen_tables.add(key)
                raw = memory_bytes(row['value'], row['size'])
                entries = []
                for i in range(0, len(raw) - 3, 4):
                    value = int.from_bytes(raw[i:i + 4], 'little')
                    entries.append({"offset": i, "address": row['value'] + i, "raw_word": value,
                                    "target_symbols": address_symbols.get(value & ~1, []),
                                    "relocations": reloc_by_addr.get(row['value'] + i, [])})
                tables.append({"name": row['name'], "demangled": row['demangled'],
                               "address": row['value'], "size": row['size'], "entries": entries})
        vtable_chunks = write_json_chunks(output, 'vtables', tables)
        write_json(output / 'typeinfo.json', typeinfo)

        strings = []
        for i, sec in enumerate(sections):
            if sec['sh_type'] == 'SHT_NOBITS' or not sec['sh_size']:
                continue
            for encoding, pattern in [('ascii', ASCII_RE), ('utf-16le-ascii-subset', UTF16_RE)]:
                for m in pattern.finditer(bytes_by_section[i]):
                    text = m.group().decode('ascii' if encoding == 'ascii' else 'utf-16le')
                    strings.append({"section_index": i, "section": sec.name,
                                    "file_offset": sec['sh_offset'] + m.start(),
                                    "address": sec['sh_addr'] + m.start() if sec['sh_flags'] & 2 else None,
                                    "encoding": encoding, "byte_length": len(m.group()), "text": text})
        strings.sort(key=lambda r: (r['file_offset'], r['encoding']))
        strings_chunks = write_json_chunks(output, 'strings', strings)
        write_csv(output / 'strings.csv', strings, ['section_index', 'section', 'file_offset', 'address',
                  'encoding', 'byte_length', 'text'])

        maps = defaultdict(dict)
        for row in rows:
            if isinstance(row['section_index'], int) and re.match(r'^\$[atd](?:\.|$)', row['name']):
                maps[row['section_index']][row['value']] = {'$a': 'arm', '$t': 'thumb', '$d': 'data'}[row['name'][:2]]
        mapping_rows = [{"section_index": si, "section": sections[si].name, "address": addr, "kind": kind}
                        for si in sorted(maps) for addr, kind in sorted(maps[si].items())]
        map_transitions = {si: sorted(mapping.items()) for si, mapping in maps.items()}
        map_addresses = {si: [a for a, _ in transitions] for si, transitions in map_transitions.items()}
        write_json(output / 'mapping-symbols.json', mapping_rows)
        fn_symbols = [r for r in rows if r['type'] == 'STT_FUNC' and isinstance(r['section_index'], int)]
        unwind_entries = []
        exidx = elf.get_section_by_name('.ARM.exidx')
        if exidx is not None:
            raw = exidx.data()
            for off in range(0, len(raw) - 7, 8):
                function_word = int.from_bytes(raw[off:off + 4], 'little')
                delta = function_word & 0x7fffffff
                if delta & 0x40000000:
                    delta -= 1 << 31
                entry_address = exidx['sh_addr'] + off
                function_address = (entry_address + delta) & 0xffffffff
                unwind_word = int.from_bytes(raw[off + 4:off + 8], 'little')
                unwind_delta = unwind_word & 0x7fffffff
                if unwind_delta & 0x40000000:
                    unwind_delta -= 1 << 31
                kind = 'cantunwind' if unwind_word == 1 else 'inline-compact' if unwind_word & 0x80000000 else 'extab-prel31'
                unwind_entries.append({"entry_address": entry_address, "function_word": function_word,
                                       "function_address": function_address, "function_symbols": address_symbols.get(function_address, []),
                                       "unwind_word": unwind_word, "unwind_kind": kind,
                                       "extab_address": (entry_address + 4 + unwind_delta) & 0xffffffff if kind == 'extab-prel31' else None})
        write_json(output / 'arm-unwind-index.json', unwind_entries)
        function_ranges = defaultdict(list)
        for row in fn_symbols:
            function_ranges[(row['section_index'], row['address'], row['size'], row['mode'])].append(row)
        fn_starts = defaultdict(list)
        for si, addr, size, mode in function_ranges:
            fn_starts[si].append(addr)
        fn_starts = {si: sorted(set(addrs)) for si, addrs in fn_starts.items()}
        executable = {i: s for i, s in enumerate(sections) if s['sh_flags'] & 4 and s['sh_size']}
        coverage = {i: bytearray(s['sh_size']) for i, s in executable.items()}
        section_data = {i: s.data() for i, s in executable.items()}
        arm = Cs(CS_ARCH_ARM, CS_MODE_ARM | CS_MODE_LITTLE_ENDIAN)
        thumb = Cs(CS_ARCH_ARM, CS_MODE_THUMB | CS_MODE_LITTLE_ENDIAN)
        arm.skipdata = thumb.skipdata = True
        assembly = AssemblyWriter(assembly_folder / filename)
        function_index, unresolved = [], []
        instruction_count = 0
        for (si, addr, declared_size, mode), aliases in sorted(function_ranges.items()):
            sec = sections[si]
            if si not in executable:
                unresolved.append({"section": sec.name, "start": addr, "size": declared_size,
                                   "reason": "function-symbol-in-nonexecutable-section"})
                continue
            bound = sec['sh_addr'] + sec['sh_size']
            size = declared_size
            inferred = False
            if not size:
                starts = fn_starts[si]
                ni = bisect.bisect_right(starts, addr)
                size = (starts[ni] if ni < len(starts) else bound) - addr
                inferred = True
            end = min(addr + size, bound)
            if addr < sec['sh_addr'] or addr >= bound:
                unresolved.append({"section": sec.name, "start": addr, "size": size,
                                   "reason": "function-address-outside-section"})
                continue
            unique_aliases = sorted({(r['name'], r['demangled']) for r in aliases})
            chosen = next((r for r in aliases if r['table'] == '.symtab'), aliases[0])
            root = class_root(chosen['demangled'])
            header = [f"\n; FUNCTION 0x{addr:08x}, declared_size={declared_size}, range_size={end - addr}, mode={mode}",
                      f"; class-group: {root}"]
            if inferred:
                header.append('; ZERO-SIZE SYMBOL: end inferred from next function start/section end; may include unrelated bytes.')
            for name, dname in unique_aliases:
                header.append(f"; alias: {name}\n; demangled: {dname}")
            output_lines = header
            transitions = map_transitions.get(si, [])
            transition_addresses = map_addresses.get(si, [])
            ti = bisect.bisect_right(transition_addresses, addr) - 1
            kind = transitions[ti][1] if ti >= 0 else mode
            points = [(addr, kind)] + transitions[bisect.bisect_right(transition_addresses, addr):
                                                bisect.bisect_left(transition_addresses, end)] + [(end, None)]
            fn_counts = Counter()
            for pi in range(len(points) - 1):
                lo, kind = points[pi]
                hi = points[pi + 1][0]
                local = lo - sec['sh_addr']
                raw = section_data[si][local:hi - sec['sh_addr']]
                if kind == 'data':
                    output_lines.append('; mapping-symbol data/literal pool')
                    for j in range(0, len(raw), 16):
                        bs = raw[j:j + 16]
                        output_lines.append(f"{lo + j:08x}  {bs.hex(' '):<47}  .byte " + ', '.join(f'0x{x:02x}' for x in bs))
                    coverage[si][local:local + len(raw)] = bytes([2]) * len(raw)
                    fn_counts['mapped_data_bytes'] += len(raw)
                    continue
                output_lines.append(f'; decoder-mode: {kind}')
                decoder = thumb if kind == 'thumb' else arm
                consumed = 0
                for ins_addr, ins_size, mnemonic, operands in decoder.disasm_lite(raw, lo):
                    bs = raw[ins_addr - lo:ins_addr - lo + ins_size]
                    output_lines.append(f"{ins_addr:08x}  {bs.hex(' '):<47}  {mnemonic} {operands}".rstrip())
                    invalid = mnemonic == '.byte'
                    value = 3 if invalid else 1
                    start = ins_addr - sec['sh_addr']
                    coverage[si][start:start + ins_size] = bytes([value]) * ins_size
                    fn_counts['undecoded_bytes' if invalid else 'instruction_bytes'] += ins_size
                    if not invalid:
                        fn_counts['instructions'] += 1
                        instruction_count += 1
                    else:
                        unresolved.append({"section": sec.name, "start": ins_addr, "size": ins_size,
                                           "reason": "capstone-undecoded", "mode": kind,
                                           "function": chosen['name']})
                    consumed = ins_addr - lo + ins_size
                if consumed < len(raw):
                    bs = raw[consumed:]
                    tail_addr = lo + consumed
                    output_lines.append(f"{tail_addr:08x}  {bs.hex(' '):<47}  .byte " + ', '.join(f'0x{x:02x}' for x in bs))
                    coverage[si][local + consumed:local + len(raw)] = bytes([3]) * len(bs)
                    fn_counts['undecoded_bytes'] += len(bs)
                    unresolved.append({"section": sec.name, "start": tail_addr, "size": len(bs),
                                       "reason": "decoder-tail", "mode": kind, "function": chosen['name']})
            asm_file = assembly.write(root, '\n'.join(output_lines) + '\n')
            function_index.append({"address": addr, "declared_size": declared_size, "range_size": end - addr,
                                   "section": sec.name, "mode": mode, "end_inferred": inferred,
                                   "class_group": root, "assembly_file": asm_file,
                                   "aliases": [{"name": n, "demangled": d} for n, d in unique_aliases],
                                   "symbol_references": [{"table": a['table'], "index": a['index']} for a in aliases],
                                   "counts": dict(fn_counts)})
        coverage_summary, uncovered = [], []
        gap_file = assembly_folder / filename / 'unattributed-executable-bytes.asm'
        with gap_file.open('w', encoding='utf-8') as gf:
            gf.write('; Raw bytes outside named function export ranges. No decoder mode or function identity is claimed.\n')
        for si, data in coverage.items():
            sec = sections[si]
            counts = Counter(data)
            cov = {"section": sec.name, "address": sec['sh_addr'], "size": len(data),
                   "instruction_bytes": counts[1], "mapped_data_bytes": counts[2],
                   "undecoded_bytes": counts[3], "outside_function_ranges_bytes": counts[0]}
            cov['instruction_byte_fraction'] = counts[1] / len(data)
            cov['accounted_byte_fraction'] = (len(data) - counts[0]) / len(data)
            coverage_summary.append(cov)
            for lo, hi, value in runs(data, {0}):
                uncovered.append({"section": sec.name, "start": sec['sh_addr'] + lo, "size": hi - lo,
                                  "reason": "outside-exported-function-ranges"})
                with gap_file.open('a', encoding='utf-8') as gf:
                    gf.write(f"\n; SECTION {sec.name}, start=0x{sec['sh_addr'] + lo:08x}, size={hi - lo}\n")
                    raw = section_data[si][lo:hi]
                    for j in range(0, len(raw), 16):
                        bs = raw[j:j + 16]
                        gf.write(f"{sec['sh_addr'] + lo + j:08x}  {bs.hex(' '):<47}  .byte " +
                                 ', '.join(f'0x{x:02x}' for x in bs) + '\n')
        function_chunks = write_json_chunks(output, 'function-index', function_index)
        write_csv(output / 'function-index.csv', function_index, ['address', 'declared_size', 'range_size',
                  'section', 'mode', 'end_inferred', 'class_group', 'assembly_file', 'aliases', 'counts'])
        write_json(output / 'assembly-groups.json', assembly.paths)
        write_json(output / 'coverage.json', coverage_summary)
        write_json_chunks(output, 'unresolved-ranges', unresolved + uncovered)
        gameplay = sorted({r['demangled'] for r in fn_symbols if re.search(
            r'(?:^|::)(?:PlayerManager|PlayerSavegame|Quest|Game|Level|Weapon|Character|Enemy|Loot|Spell|Inventory|ItemInventory)[A-Za-z0-9_]*::',
            r['demangled'])})
        gameplay_examples = [s for classname in ['Character', 'PlayerManager', 'PlayerSavegame', 'Quest', 'ItemInventory', 'Level']
                             for s in [x for x in gameplay if x.startswith(classname + '::')][:5]]
        source_examples = [s for s in source_files if re.search(r'^(?:Character|Player|Quest|ItemInventory|Level|GameObject)', s)][:35]
        class_counts = Counter(r['class_group'] for r in function_index)
        write_json(output / 'class-groups.json', [{"class_group": k, "unique_function_ranges": n}
                                                 for k, n in sorted(class_counts.items())])
        write_json(output / 'gameplay-symbol-evidence.json', gameplay)
        summary = {"library": filename, "sha256": sha256(path), "file_size": path.stat().st_size,
                   "machine": elf['e_machine'], "elf_class": elf.elfclass,
                   "entry_address": elf['e_entry'], "sections": len(sections),
                   "symbol_table_rows": len(rows), "symbol_tables": dict(Counter(r['table'] for r in rows)),
                   "defined_function_symbol_rows": len(fn_symbols),
                   "unique_defined_function_symbols": len({(r['name'], r['value'], r['size']) for r in fn_symbols}),
                   "unique_function_ranges": len(function_ranges),
                   "exported_function_ranges": len(function_index),
                   "zero_size_function_ranges": sum(r['end_inferred'] for r in function_index),
                   "instruction_count_per_unique_range": instruction_count,
                   "class_groups": len(class_counts), "assembly_files": len(assembly.paths),
                   "imports_unique": len({r['name'] for r in imports}), "relocations": len(relocations),
                   "vtables": len(tables), "typeinfo_symbols": len(typeinfo),
                   "mapping_symbol_rows_unique_addresses": len(mapping_rows),
                   "arm_unwind_index_entries": len(unwind_entries),
                   "extracted_strings": len(strings), "build_source_filenames": len(source_files),
                   "coverage": coverage_summary,
                   "unresolved_decoder_ranges": len(unresolved), "outside_function_ranges": len(uncovered),
                   "gameplay_symbol_examples": gameplay_examples,
                   "source_filename_examples": source_examples or source_files[:35],
                   "json_chunks": {"symbols": symbol_chunks, "relocations": relocation_chunks,
                                   "vtables": vtable_chunks, "strings": strings_chunks,
                                   "function_index": function_chunks}}
        write_json(output / 'summary.json', summary)
        return summary


def verify_assembly_byte_round_trip(input_folder, assembly_folder):
    """Compare every listed byte with the original and require full executable coverage."""
    line_pattern = re.compile(r'^([0-9a-f]{8})  ([0-9a-f ]{47})  ')
    checks = []
    for path in sorted(input_folder.glob('*.so')):
        with path.open('rb') as stream:
            elf = ELFFile(stream)
            sections = [s for s in elf.iter_sections() if s['sh_flags'] & 4 and s['sh_size']]
            base = min(s['sh_addr'] for s in sections)
            end = max(s['sh_addr'] + s['sh_size'] for s in sections)
            expected, present, seen = bytearray(end - base), bytearray(end - base), bytearray(end - base)
            for section in sections:
                start = section['sh_addr'] - base
                expected[start:start + section['sh_size']] = section.data()
                present[start:start + section['sh_size']] = bytes([1]) * section['sh_size']
            listing_rows = 0
            for listing in (assembly_folder / path.name).glob('*.asm'):
                with listing.open(encoding='utf-8') as source:
                    for line in source:
                        match = line_pattern.match(line)
                        if not match:
                            continue
                        address, raw = int(match[1], 16), bytes.fromhex(match[2])
                        offset = address - base
                        if offset < 0 or offset + len(raw) > len(expected):
                            raise RuntimeError(f'{listing}: listed address 0x{address:08x} outside ELF executable span')
                        if expected[offset:offset + len(raw)] != raw:
                            raise RuntimeError(f'{listing}: listed bytes at 0x{address:08x} differ from ELF')
                        if not all(present[offset:offset + len(raw)]):
                            raise RuntimeError(f'{listing}: listed address 0x{address:08x} outside executable sections')
                        seen[offset:offset + len(raw)] = bytes([1]) * len(raw)
                        listing_rows += 1
            if seen != present:
                raise RuntimeError(f'{path.name}: assembly listings fail to preserve all executable bytes')
            checks.append({"library": path.name, "executable_bytes": sum(present),
                           "unique_listing_bytes": sum(seen), "assembly_rows_checked": listing_rows,
                           "all_executable_bytes_preserved_exactly": True})
    return {"assembly_byte_round_trip": checks,
            "method": "Parsed every address/hex row of the generated function and unattributed-byte assembly listings, compared its bytes with the original ELF executable sections, and verified complete unique executable-byte coverage."}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', type=Path, required=True, help='Directory containing original ARM32 .so files')
    parser.add_argument('--repo', type=Path, required=True, help='Reconstruction repository directory')
    parser.add_argument('--apk', type=Path, required=True, help='Original APK for provenance hash')
    args = parser.parse_args()
    symbols_folder = args.repo / 'recovered/native/symbols'
    assembly_folder = args.repo / 'recovered/native/assembly'
    results = []
    for path in sorted(args.input.glob('*.so')):
        print(f'Recovering {path.name}', flush=True)
        result = recover_library(path, symbols_folder, assembly_folder)
        results.append(result)
        print(f"{path.name}: {result['exported_function_ranges']} unique function ranges, "
              f"{result['instruction_count_per_unique_range']} instructions, "
              f"{result['unresolved_decoder_ranges']} decoder failures", flush=True)
    inventory = {"schema_version": SCHEMA_VERSION,
                 "source_apk": {"filename": args.apk.name, "sha256": sha256(args.apk),
                                "size": args.apk.stat().st_size},
                 "tools": {"symbol_reader": "pyelftools", "demangler": "c++filt",
                           "instruction_decoder": "capstone"},
                 "interpretation": [
                     "All original ELF symbol-table rows are preserved, including duplicates across .dynsym and .symtab.",
                     "Function aliases share a single assembly body for each (section, normalized address, size, mode) range.",
                     "ARM mapping symbols select ARM, Thumb or literal-pool data when present; otherwise ELF function bit zero selects the decoder mode.",
                     "Capstone instruction coverage measures syntactic decoding, not proof of executable semantics; libraries without mapping symbols can contain literal pools that happen to decode as instructions.",
                     "Byte coverage reports decoded instructions, mapped data, decoder failures, and bytes outside exported function ranges separately.",
                     "All executable-section bytes outside named function ranges are preserved verbatim in unattributed-executable-bytes.asm; ARM unwind index metadata is exported separately without claiming recovered function bodies or decoder modes.",
                     "Zero-size symbols are bounded using the next function start or section end; those boundaries are inferred.",
                     "String inventory exhaustively scans file-backed ELF sections for printable ASCII runs of at least 4 bytes and the ASCII subset of UTF-16LE runs of at least 4 characters; this does not identify every encoding or binary string format.",
                     "Vtable words and relocation records are raw ELF evidence, not recovered C++ declarations or validated runtime dispatch layouts.",
                     "Build source filenames and class/method symbols are original binary metadata; no original C++ source bodies are claimed.",
                     "Assembly listings preserve virtual addresses and byte encodings, but are annotated analysis listings, not directly compilable source."
                 ], "libraries": results,
                 "verification": verify_assembly_byte_round_trip(args.input, assembly_folder)}
    write_json(args.repo / 'reports/native-inventory.json', inventory)


if __name__ == '__main__':
    main()
