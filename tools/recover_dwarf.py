#!/usr/bin/env python3
"""Export DWARF evidence and C++ declaration sketches, never invented bodies.

The export is deterministic and retains every DIE, including null terminators,
its attributes, DWARF forms, raw values, references, and line-program commands.
Original debug sections can additionally be copied with --raw-sections.

Requires pyelftools. No Android SDK, decompiler, network, or game source needed.
"""

from __future__ import annotations

import argparse
import collections
import gzip
import hashlib
import json
import re
import sys
from pathlib import Path
from typing import Any

import elftools
from elftools.dwarf.descriptions import describe_form_class
from elftools.dwarf.dwarf_expr import DWARFExprParser
from elftools.dwarf.locationlists import LocationParser
from elftools.elf.elffile import ELFFile


TYPE_TAGS = {
    "DW_TAG_array_type", "DW_TAG_base_type", "DW_TAG_class_type",
    "DW_TAG_const_type", "DW_TAG_enumeration_type", "DW_TAG_pointer_type",
    "DW_TAG_reference_type", "DW_TAG_restrict_type", "DW_TAG_rvalue_reference_type",
    "DW_TAG_structure_type", "DW_TAG_subroutine_type", "DW_TAG_typedef",
    "DW_TAG_union_type", "DW_TAG_unspecified_type", "DW_TAG_volatile_type",
    "DW_TAG_ptr_to_member_type",
}
RECORD_TAGS = {"DW_TAG_class_type", "DW_TAG_structure_type", "DW_TAG_union_type"}
SCOPE_TAGS = RECORD_TAGS | {"DW_TAG_namespace"}
EXPR_ATTRS = {
    "DW_AT_location", "DW_AT_frame_base", "DW_AT_data_member_location",
    "DW_AT_vtable_elem_location", "DW_AT_return_addr", "DW_AT_static_link",
    "DW_AT_use_location", "DW_AT_string_length", "DW_AT_segment",
}


def plain(value: Any) -> Any:
    """JSON-safe and byte-exact; text is only a convenience view."""
    if isinstance(value, bytes):
        return {"text": value.decode("utf-8", "replace"), "hex": value.hex()}
    if hasattr(value, "_asdict"):
        return plain(value._asdict())
    if isinstance(value, (tuple, list)):
        return [plain(x) for x in value]
    if isinstance(value, dict):
        return {str(k): plain(v) for k, v in value.items()}
    if isinstance(value, (str, int, float, bool)) or value is None:
        return value
    return {"python_type": type(value).__name__, "repr": repr(value)}


def string(value: Any) -> str:
    return value.decode("utf-8", "replace") if isinstance(value, bytes) else str(value)


def write_json(path: Path, data: Any) -> None:
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def compressed_writer(path: Path):
    # mtime=0 avoids clock-dependent compressed files in repeated recoveries.
    return gzip.GzipFile(filename="", mode="wb", fileobj=path.open("wb"), mtime=0)


def write_record(stream, record: Any) -> None:
    stream.write((json.dumps(record, ensure_ascii=False, separators=(",", ":")) + "\n").encode("utf-8"))


def slug(name: str) -> str:
    return re.sub(r"[^A-Za-z0-9_.-]+", "_", name.replace("\\", "/").split("/")[-1]) or "unknown"


class Recovery:
    def __init__(self, elf: ELFFile, source: Path, out: Path, raw_sections: bool):
        self.elf, self.source, self.out = elf, source, out
        self.raw_sections = raw_sections
        self.dwarf = elf.get_dwarf_info()
        self.expr_parser = DWARFExprParser(self.dwarf.structs)
        self.locations = LocationParser(self.dwarf.location_lists())
        self.dies: dict[int, Any] = {}
        self.parents: dict[int, int | None] = {}
        self.children: dict[int, list[int]] = collections.defaultdict(list)
        self.cus: list[Any] = []
        self.cu_meta: dict[int, dict] = {}
        self.tags = collections.Counter()
        self.qname_cache: dict[int, str] = {}
        self.type_cache: dict[int, str] = {}
        self.errors: list[dict] = []
        self.sources: dict[str, dict] = {}
        self.location_refs: dict[tuple, tuple[Any, Any]] = {}
        self.range_refs: dict[tuple, tuple[Any, Any]] = {}

    def reference(self, die, name: str) -> int | None:
        attr = die.attributes.get(name)
        if attr is None:
            return None
        try:
            target = die.get_DIE_from_attribute(name)
            return target.offset if target is not None else None
        except Exception as exc:
            self.errors.append({"kind": "reference", "die": die.offset, "attribute": name, "error": str(exc)})
            return None

    def attr(self, die, name: str, inherit: bool = True, seen=None):
        if die is None:
            return None
        value = die.attributes.get(name)
        if value is not None or not inherit:
            return value
        seen = set() if seen is None else seen
        if die.offset in seen:
            return None
        seen.add(die.offset)
        for link in ("DW_AT_specification", "DW_AT_abstract_origin"):
            target = self.reference(die, link)
            if target in self.dies:
                result = self.attr(self.dies[target], name, True, seen)
                if result is not None:
                    return result
        return None

    def value(self, die, name: str, default=None, inherit=True):
        attr = self.attr(die, name, inherit)
        return attr.value if attr is not None else default

    def origin(self, die, seen=None):
        seen = set() if seen is None else seen
        if die.offset in seen:
            return die
        seen.add(die.offset)
        for link in ("DW_AT_specification", "DW_AT_abstract_origin"):
            target = self.reference(die, link)
            if target in self.dies:
                return self.origin(self.dies[target], seen)
        return die

    def qualified_name(self, die, seen=None) -> str:
        if die.offset in self.qname_cache:
            return self.qname_cache[die.offset]
        seen = set() if seen is None else seen
        if die.offset in seen:
            return f"<cyclic-DIE-0x{die.offset:x}>"
        seen.add(die.offset)
        origin = self.origin(die)
        if origin.offset != die.offset:
            result = self.qualified_name(origin, seen)
            self.qname_cache[die.offset] = result
            return result
        name = string(self.value(die, "DW_AT_name", f"<anonymous-DIE-0x{die.offset:x}>", False))
        parent = self.dies.get(self.parents.get(die.offset))
        if parent is not None and parent.tag in SCOPE_TAGS:
            prefix = self.qualified_name(parent, seen)
            result = prefix + "::" + name
        else:
            result = name
        self.qname_cache[die.offset] = result
        return result

    def type_ref(self, die, seen=None) -> int | None:
        seen = set() if seen is None else seen
        if die.offset in seen:
            return None
        seen.add(die.offset)
        if "DW_AT_type" in die.attributes:
            return self.reference(die, "DW_AT_type")
        for link in ("DW_AT_specification", "DW_AT_abstract_origin"):
            target = self.reference(die, link)
            if target in self.dies:
                result = self.type_ref(self.dies[target], seen)
                if result is not None:
                    return result
        return None

    def type_name(self, offset: int | None, seen=None) -> str:
        if offset is None:
            return "void"
        if offset in self.type_cache:
            return self.type_cache[offset]
        die = self.dies.get(offset)
        if die is None:
            return f"<unresolved-type-0x{offset:x}>"
        seen = set() if seen is None else seen
        if offset in seen:
            return self.qualified_name(die)
        seen.add(offset)
        target = self.type_ref(die)
        if die.tag in RECORD_TAGS | {"DW_TAG_typedef", "DW_TAG_enumeration_type", "DW_TAG_base_type", "DW_TAG_unspecified_type"}:
            result = self.qualified_name(die)
        elif die.tag in {"DW_TAG_pointer_type", "DW_TAG_reference_type", "DW_TAG_rvalue_reference_type"}:
            result = self.type_name(target, seen) + {"DW_TAG_pointer_type": "*", "DW_TAG_reference_type": "&", "DW_TAG_rvalue_reference_type": "&&"}[die.tag]
        elif die.tag in {"DW_TAG_const_type", "DW_TAG_volatile_type", "DW_TAG_restrict_type"}:
            result = self.type_name(target, seen) + " " + die.tag[7:-5]
        elif die.tag == "DW_TAG_array_type":
            dimensions = []
            for child_id in self.children[die.offset]:
                child = self.dies[child_id]
                if child.tag == "DW_TAG_subrange_type":
                    count = self.value(child, "DW_AT_count")
                    upper, lower = self.value(child, "DW_AT_upper_bound"), self.value(child, "DW_AT_lower_bound", 0)
                    if count is None and isinstance(upper, int) and isinstance(lower, int):
                        count = upper - lower + 1
                    dimensions.append("[" + (str(count) if count is not None else "") + "]")
            result = self.type_name(target, seen) + "".join(dimensions or ["[]"])
        elif die.tag == "DW_TAG_subroutine_type":
            params = []
            for child_id in self.children[die.offset]:
                child = self.dies[child_id]
                if child.tag == "DW_TAG_formal_parameter":
                    params.append(self.type_name(self.type_ref(child), seen.copy()))
                elif child.tag == "DW_TAG_unspecified_parameters":
                    params.append("...")
            result = self.type_name(target, seen) + " (" + ", ".join(params) + ")"
        elif die.tag == "DW_TAG_ptr_to_member_type":
            containing = self.reference(die, "DW_AT_containing_type")
            result = self.type_name(target, seen) + " " + self.type_name(containing, seen) + "::*"
        else:
            result = f"<type-{die.tag}-0x{offset:x}>"
        self.type_cache[offset] = result
        return result

    def expression(self, value) -> list | dict:
        try:
            return [{"opcode": op.op, "name": op.op_name, "args": plain(op.args), "offset": op.offset}
                    for op in self.expr_parser.parse_expr(value)]
        except Exception as exc:
            return {"decode_error": str(exc)}

    def attrs_record(self, die) -> dict:
        result = {}
        for name, attr in die.attributes.items():
            item = {"form": attr.form, "value": plain(attr.value), "raw_value": plain(attr.raw_value),
                    "attribute_offset": attr.offset, "indirection_length": attr.indirection_length}
            if attr.form.startswith("DW_FORM_ref"):
                item["reference_die_offset"] = self.reference(die, name)
            if name in EXPR_ATTRS and attr.form in {"DW_FORM_exprloc", "DW_FORM_block", "DW_FORM_block1", "DW_FORM_block2", "DW_FORM_block4"}:
                item["expression"] = self.expression(attr.value)
            result[name] = item
        return result

    def files_for_cu(self, cu, program) -> tuple[list, list]:
        comp_dir = string(self.value(cu.get_top_DIE(), "DW_AT_comp_dir", ""))
        directories = [string(v) for v in program.header.get("include_directory", [])]
        files = []
        for index, entry in enumerate(program.header.get("file_entry", []), start=1):
            name = string(entry.name)
            dir_index = entry.dir_index
            directory = directories[dir_index - 1] if dir_index else comp_dir
            normalized_dir = directory.replace("\\", "/")
            normalized_name = name.replace("\\", "/")
            path = normalized_name if normalized_name.startswith("/") or re.match(r"^[A-Za-z]:/", normalized_name) else normalized_dir.rstrip("/") + "/" + normalized_name
            if directory and not (normalized_dir.startswith("/") or re.match(r"^[A-Za-z]:/", normalized_dir)):
                path = comp_dir.replace("\\", "/").rstrip("/") + "/" + path
            files.append({"index": index, "name": name, "directory_index": dir_index, "directory": directory, "debug_path": path,
                          "modification_time": entry.mtime, "length": entry.length})
            source_entry = self.sources.setdefault(path, {"debug_path": path, "compilation_units": [], "line_rows": 0})
            if cu.cu_offset not in source_entry["compilation_units"]:
                source_entry["compilation_units"].append(cu.cu_offset)
        return directories, files

    def source_location(self, die) -> dict | None:
        origin = self.origin(die)
        file_number = self.value(die, "DW_AT_decl_file")
        line = self.value(die, "DW_AT_decl_line")
        column = self.value(die, "DW_AT_decl_column")
        if file_number is None and line is None:
            return None
        cu_offset = origin.cu.cu_offset
        files = self.cu_meta[cu_offset]["files"]
        entry = next((f for f in files if f["index"] == file_number), None)
        return {"file_index": file_number, "line": line, "column": column, "debug_path": entry["debug_path"] if entry else None, "cu_offset": cu_offset}

    def address_ranges(self, die) -> list:
        low, high = die.attributes.get("DW_AT_low_pc"), die.attributes.get("DW_AT_high_pc")
        ranges = []
        if low and high:
            try:
                high_pc = high.value if describe_form_class(high.form) == "address" else low.value + high.value
                ranges.append({"begin": low.value, "end": high_pc, "source": "low/high_pc"})
            except Exception as exc:
                self.errors.append({"kind": "high_pc", "die": die.offset, "error": str(exc)})
        if "DW_AT_ranges" in die.attributes:
            offset = die.attributes["DW_AT_ranges"].value
            try:
                base = self.value(die.cu.get_top_DIE(), "DW_AT_low_pc", 0, False)
                entries = self.dwarf.range_lists().get_range_list_at_offset(offset, cu=die.cu)
                for entry in entries:
                    if hasattr(entry, "base_address"):
                        base = entry.base_address
                    elif hasattr(entry, "begin_offset"):
                        adjustment = 0 if entry.is_absolute else base
                        ranges.append({"begin": entry.begin_offset + adjustment, "end": entry.end_offset + adjustment, "source": "range_list"})
            except Exception as exc:
                self.errors.append({"kind": "ranges", "die": die.offset, "offset": offset, "error": str(exc)})
        return ranges

    def physical_children(self, die) -> list:
        result = [self.dies[k] for k in self.children[die.offset] if self.dies[k].tag in {"DW_TAG_formal_parameter", "DW_TAG_unspecified_parameters"}]
        if not result:
            origin = self.origin(die)
            if origin.offset != die.offset:
                result = [self.dies[k] for k in self.children[origin.offset] if self.dies[k].tag in {"DW_TAG_formal_parameter", "DW_TAG_unspecified_parameters"}]
        return result

    def function_record(self, die) -> dict:
        params = []
        variadic = False
        for child in self.physical_children(die):
            if child.tag == "DW_TAG_unspecified_parameters":
                variadic = True
            else:
                params.append({"die_offset": child.offset, "name": string(self.value(child, "DW_AT_name", "")),
                               "type_die_offset": self.type_ref(child), "type": self.type_name(self.type_ref(child)),
                               "artificial": bool(self.value(child, "DW_AT_artificial", False))})
        source_params = [x for x in params if not x["artificial"]]
        source_param_text = [x["type"] + (" " + x["name"] if x["name"] else "") for x in source_params]
        if variadic:
            source_param_text.append("...")
        name = self.qualified_name(die)
        return_type = self.type_name(self.type_ref(die))
        simple_name = string(self.value(die, "DW_AT_name", ""))
        origin = self.origin(die)
        parent = self.dies.get(self.parents.get(origin.offset))
        class_name = string(self.value(parent, "DW_AT_name", "")) if parent else ""
        constructor = parent is not None and parent.tag in RECORD_TAGS and simple_name in (class_name, "~" + class_name)
        signature = ("" if constructor else return_type + " ") + name + "(" + ", ".join(source_param_text) + ")"
        return {"die_offset": die.offset, "cu_offset": die.cu.cu_offset, "qualified_name": name,
                "linkage_name": string(self.value(die, "DW_AT_linkage_name", self.value(die, "DW_AT_MIPS_linkage_name", ""))),
                "return_type_die_offset": self.type_ref(die), "return_type": return_type, "parameters": params,
                "variadic": variadic, "declaration": bool(self.value(die, "DW_AT_declaration", False)),
                "inline_attribute": self.value(die, "DW_AT_inline"), "external": bool(self.value(die, "DW_AT_external", False)),
                "artificial": bool(self.value(die, "DW_AT_artificial", False)), "virtuality": self.value(die, "DW_AT_virtuality"),
                "accessibility": self.value(die, "DW_AT_accessibility"), "source": self.source_location(die),
                "address_ranges": self.address_ranges(die), "specification_die_offset": self.reference(die, "DW_AT_specification"),
                "abstract_origin_die_offset": self.reference(die, "DW_AT_abstract_origin"), "declaration_sketch": signature + ";"}

    def member_offset(self, die):
        attr = die.attributes.get("DW_AT_data_member_location")
        if attr is None:
            return None
        if isinstance(attr.value, int):
            return attr.value
        try:
            ops = self.expr_parser.parse_expr(attr.value)
            if len(ops) == 1 and ops[0].op_name == "DW_OP_plus_uconst":
                return ops[0].args[0]
        except Exception:
            pass
        return None

    def type_record(self, die) -> dict:
        result = {"die_offset": die.offset, "cu_offset": die.cu.cu_offset, "tag": die.tag,
                  "name": string(self.value(die, "DW_AT_name", "", False)), "qualified_name": self.qualified_name(die),
                  "display_type": self.type_name(die.offset), "byte_size": self.value(die, "DW_AT_byte_size", inherit=False),
                  "declaration": bool(self.value(die, "DW_AT_declaration", False, False)),
                  "type_die_offset": self.type_ref(die), "source": self.source_location(die)}
        if die.tag in RECORD_TAGS:
            members, bases, methods, nested = [], [], [], []
            for child_id in self.children[die.offset]:
                child = self.dies[child_id]
                if child.tag == "DW_TAG_member":
                    members.append({"die_offset": child.offset, "name": string(self.value(child, "DW_AT_name", "")),
                                    "type_die_offset": self.type_ref(child), "type": self.type_name(self.type_ref(child)),
                                    "byte_offset": self.member_offset(child), "bit_size": self.value(child, "DW_AT_bit_size"),
                                    "bit_offset": self.value(child, "DW_AT_bit_offset"), "accessibility": self.value(child, "DW_AT_accessibility"),
                                    "artificial": bool(self.value(child, "DW_AT_artificial", False))})
                elif child.tag == "DW_TAG_inheritance":
                    bases.append({"die_offset": child.offset, "type_die_offset": self.type_ref(child), "type": self.type_name(self.type_ref(child)),
                                  "byte_offset": self.member_offset(child), "accessibility": self.value(child, "DW_AT_accessibility"),
                                  "virtuality": self.value(child, "DW_AT_virtuality")})
                elif child.tag == "DW_TAG_subprogram":
                    methods.append(child.offset)
                elif child.tag in TYPE_TAGS:
                    nested.append(child.offset)
            result.update(members=members, bases=bases, method_die_offsets=methods, nested_type_die_offsets=nested)
        elif die.tag == "DW_TAG_enumeration_type":
            result["enumerators"] = [{"name": string(self.value(self.dies[k], "DW_AT_name", "")), "value": self.value(self.dies[k], "DW_AT_const_value"), "die_offset": k}
                                      for k in self.children[die.offset] if self.dies[k].tag == "DW_TAG_enumerator"]
        elif die.tag == "DW_TAG_array_type":
            result["subranges"] = [{"die_offset": k, "attributes": self.attrs_record(self.dies[k])}
                                   for k in self.children[die.offset] if self.dies[k].tag == "DW_TAG_subrange_type"]
        return result

    def declaration_text(self, type_info: dict, functions: dict[int, dict]) -> str:
        offset, tag, name = type_info["die_offset"], type_info["tag"], type_info["qualified_name"]
        if tag not in RECORD_TAGS | {"DW_TAG_enumeration_type", "DW_TAG_typedef"}:
            return ""
        heading = f"// DIE 0x{offset:x}, byte_size={type_info['byte_size']}, declaration={type_info['declaration']}\n"
        if type_info["source"]:
            location = type_info["source"]
            heading += f"// {location['debug_path']}:{location['line']}\n"
        if tag == "DW_TAG_typedef":
            return heading + f"typedef {self.type_name(type_info['type_die_offset'])} {name};\n"
        kind = {"DW_TAG_class_type": "class", "DW_TAG_structure_type": "struct", "DW_TAG_union_type": "union", "DW_TAG_enumeration_type": "enum"}[tag]
        if type_info["declaration"]:
            return heading + kind + " " + name + ";\n"
        bases = type_info.get("bases", [])
        base_text = " : " + ", ".join(x["type"] for x in bases) if bases else ""
        lines = [heading + kind + " " + name + base_text + " {"]
        for member in type_info.get("members", []):
            member_name = member["name"] or f"/* unnamed member at DIE 0x{member['die_offset']:x} */"
            bit_size = f" : {member['bit_size']}" if member["bit_size"] is not None else ""
            lines.append(f"    {member['type']} {member_name}{bit_size}; // byte offset: {member['byte_offset']}, access: {member['accessibility']}, artificial: {member['artificial']}")
        for method in type_info.get("method_die_offsets", []):
            info = functions[method]
            lines.append("    " + info["declaration_sketch"] + f" // method DIE 0x{method:x}")
        for enumerator in type_info.get("enumerators", []):
            lines.append(f"    {enumerator['name']} = {enumerator['value']},")
        lines.append("};")
        return "\n".join(lines) + "\n"

    def index(self):
        self.cus = list(self.dwarf.iter_CUs())
        for cu in self.cus:
            top = cu.get_top_DIE()
            program = self.dwarf.line_program_for_CU(cu)
            directories, files = self.files_for_cu(cu, program) if program else ([], [])
            name = string(self.value(top, "DW_AT_name", ""))
            if "stlport" in name.lower():
                category = "cxx_runtime_stlport"
            elif "libgcc" in name.lower() or "/gcc/" in name.lower():
                category = "compiler_runtime_libgcc"
            elif "license" in name.lower() or "LCXPlayer" in name or name.endswith("ConfigFile.cpp"):
                category = "license_and_online_glue"
            else:
                category = "unclassified"
            self.cu_meta[cu.cu_offset] = {"cu_offset": cu.cu_offset, "header": plain(dict(cu.header)),
                                        "name": name, "comp_dir": string(self.value(top, "DW_AT_comp_dir", "")),
                                        "producer": string(self.value(top, "DW_AT_producer", "")), "language": self.value(top, "DW_AT_language"),
                                        "evidence_category": category, "include_directories": directories, "files": files,
                                        "die_count": 0, "line_program_commands": 0, "line_rows": 0}
            stack = []
            for die in cu.iter_DIEs():
                if die.tag is None:
                    parent = stack.pop() if stack else None
                else:
                    parent = stack[-1] if stack else None
                    if parent is not None:
                        self.children[parent].append(die.offset)
                    if die.has_children:
                        stack.append(die.offset)
                self.dies[die.offset] = die
                self.parents[die.offset] = parent
                self.tags[die.tag or "NULL_TERMINATOR"] += 1
                self.cu_meta[cu.cu_offset]["die_count"] += 1

    def export_dies_and_lines(self):
        with compressed_writer(self.out / "dies.jsonl.gz") as die_stream, compressed_writer(self.out / "line-program.jsonl.gz") as line_stream:
            for cu in self.cus:
                for die in cu.iter_DIEs():
                    write_record(die_stream, {"offset": die.offset, "cu_offset": cu.cu_offset, "tag": die.tag,
                                              "abbreviation_code": die.abbrev_code, "has_children": die.has_children,
                                              "parent_offset": self.parents[die.offset], "size": die.size, "attributes": self.attrs_record(die)})
                    for name, attr in die.attributes.items():
                        if name in EXPR_ATTRS:
                            try:
                                if self.locations.attribute_has_location(attr, cu.header.version):
                                    self.location_refs.setdefault((cu.cu_offset, name, attr.form, str(attr.value)), (die, attr))
                            except Exception as exc:
                                self.errors.append({"kind": "location_reference", "die": die.offset, "error": str(exc)})
                        if name == "DW_AT_ranges":
                            self.range_refs.setdefault((cu.cu_offset, attr.value), (die, attr))
                program = self.dwarf.line_program_for_CU(cu)
                if program is None:
                    continue
                for index, entry in enumerate(program.get_entries()):
                    state = plain(vars(entry.state)) if entry.state is not None else None
                    write_record(line_stream, {"cu_offset": cu.cu_offset, "command_index": index, "command": entry.command,
                                               "is_extended": entry.is_extended, "args": plain(entry.args), "state": state})
                    self.cu_meta[cu.cu_offset]["line_program_commands"] += 1
                    if entry.state is not None:
                        self.cu_meta[cu.cu_offset]["line_rows"] += 1
                        files = self.cu_meta[cu.cu_offset]["files"]
                        if 1 <= entry.state.file <= len(files):
                            self.sources[files[entry.state.file - 1]["debug_path"]]["line_rows"] += 1

    def export_locations_and_ranges(self):
        with compressed_writer(self.out / "locations.jsonl.gz") as stream:
            for (cu_offset, name, form, _), (die, attr) in self.location_refs.items():
                record = {"cu_offset": cu_offset, "die_offset": die.offset, "attribute": name, "form": form, "value": plain(attr.value)}
                try:
                    parsed = self.locations.parse_from_attribute(attr, die.cu.header.version, die)
                    entries = parsed if isinstance(parsed, list) else [parsed]
                    record["entries"] = []
                    for entry in entries:
                        data = plain(entry)
                        if hasattr(entry, "loc_expr"):
                            data["expression"] = self.expression(entry.loc_expr)
                        record["entries"].append(data)
                except Exception as exc:
                    record["parse_error"] = str(exc)
                    self.errors.append({"kind": "location_list", "die": die.offset, "error": str(exc)})
                write_record(stream, record)
        with compressed_writer(self.out / "ranges.jsonl.gz") as stream:
            for (cu_offset, offset), (die, _) in self.range_refs.items():
                record = {"cu_offset": cu_offset, "offset": offset, "die_offset": die.offset}
                try:
                    record["entries"] = plain(self.dwarf.range_lists().get_range_list_at_offset(offset, cu=die.cu))
                    record["resolved_address_ranges"] = self.address_ranges(die)
                except Exception as exc:
                    record["parse_error"] = str(exc)
                    self.errors.append({"kind": "range_list", "die": die.offset, "error": str(exc)})
                write_record(stream, record)

    def run(self) -> dict:
        self.out.mkdir(parents=True, exist_ok=True)
        sections = []
        for section in self.elf.iter_sections():
            if section.name.startswith((".debug", ".zdebug")):
                data = section.data()
                sections.append({"name": section.name, "file_offset": section["sh_offset"], "size": len(data), "sha256": hashlib.sha256(data).hexdigest()})
                if self.raw_sections:
                    raw_dir = self.out / "raw-sections"
                    raw_dir.mkdir(exist_ok=True)
                    (raw_dir / (section.name.lstrip(".") + ".bin")).write_bytes(data)
        self.index()
        self.export_dies_and_lines()
        self.export_locations_and_ranges()
        function_list = [self.function_record(die) for die in self.dies.values() if die.tag == "DW_TAG_subprogram"]
        functions = {record["die_offset"]: record for record in function_list}
        type_list = [self.type_record(die) for die in self.dies.values() if die.tag in TYPE_TAGS]
        with compressed_writer(self.out / "functions.jsonl.gz") as stream:
            for record in function_list:
                write_record(stream, record)
        with compressed_writer(self.out / "types.jsonl.gz") as stream:
            for record in type_list:
                write_record(stream, record)
        declaration_dir = self.out / "declarations"
        declaration_dir.mkdir(exist_ok=True)
        warning = ("DWARF-derived C++ declaration sketches. These are NOT original source files,\n"
                   "not compilation-ready headers, and contain NO recovered function bodies.\n"
                   "Qualified names are printed verbatim; arrays/function pointers, templates,\n"
                   "access defaults, static methods, and ABI-only entries may require manual repair.\n"
                   "Exact DWARF attributes and type references are preserved in dies.jsonl.gz.\n"
                   "Source paths refer to original debug metadata; those files are not bundled.\n\n")
        for cu in self.cus:
            meta = self.cu_meta[cu.cu_offset]
            pieces = [warning, "Compilation unit: " + meta["name"] + "\n", "Evidence category: " + meta["evidence_category"] + "\n\n"]
            for info in type_list:
                if info["cu_offset"] == cu.cu_offset:
                    sketch = self.declaration_text(info, functions)
                    if sketch:
                        pieces.append(sketch + "\n")
            pieces.append("\n// Functions outside record declarations\n")
            for info in function_list:
                if info["cu_offset"] == cu.cu_offset:
                    origin = self.origin(self.dies[info["die_offset"]])
                    parent = self.dies.get(self.parents.get(origin.offset))
                    if parent is None or parent.tag not in RECORD_TAGS:
                        pieces.append(f"// DIE 0x{info['die_offset']:x}, ranges: {info['address_ranges']}\n{info['declaration_sketch']}\n")
            (declaration_dir / f"{cu.cu_offset:08x}-{slug(meta['name'])}.cpp.txt").write_text("".join(pieces), encoding="utf-8")
        address_index = [{"die_offset": f["die_offset"], "qualified_name": f["qualified_name"], "linkage_name": f["linkage_name"],
                          "source": f["source"], "address_ranges": f["address_ranges"], "declaration_sketch": f["declaration_sketch"]}
                         for f in function_list if any(r["end"] > r["begin"] and r["begin"] > 0 for r in f["address_ranges"])]
        write_json(self.out / "function-address-index.json", address_index)
        write_json(self.out / "compilation-units.json", list(self.cu_meta.values()))
        write_json(self.out / "sources.json", sorted(self.sources.values(), key=lambda s: s["debug_path"]))
        write_json(self.out / "debug-sections.json", sections)
        write_json(self.out / "parse-errors.json", self.errors)
        summary = {
            "schema_version": 1, "input_name": self.source.name,
            "input_sha256": hashlib.sha256(self.source.read_bytes()).hexdigest(),
            "elf_machine": self.elf["e_machine"], "elf_class": self.elf.elfclass,
            "pyelftools_version": elftools.__version__, "dwarf_compilation_units": len(self.cus),
            "all_die_records_including_terminators": len(self.dies), "die_tags": dict(sorted(self.tags.items())),
            "type_records": len(type_list), "subprogram_records": len(function_list),
            "subprograms_with_nonzero_address_ranges": len(address_index),
            "distinct_named_subprograms_with_address_ranges": len({f["qualified_name"] for f in address_index}),
            "line_program_commands": sum(m["line_program_commands"] for m in self.cu_meta.values()),
            "line_rows": sum(m["line_rows"] for m in self.cu_meta.values()), "source_file_paths": len(self.sources),
            "distinct_location_references": len(self.location_refs), "distinct_range_references": len(self.range_refs),
            "compilation_unit_categories": dict(collections.Counter(m["evidence_category"] for m in self.cu_meta.values())),
            "parse_error_count": len(self.errors), "recovered_original_function_bodies": 0,
            "limits": ["DWARF preserves declarations, types, locations and line mappings, not original source text or function bodies.",
                       "Compiler-generated, optimized, duplicated and inlined records do not represent distinct original functions.",
                       "Source paths in debug metadata do not imply that the referenced source files were recovered.",
                       "Compilation-unit categories are path-based inference and must be reviewed.",
                       "For this APK, debug metadata covers license/online glue and C++/compiler runtime; it contains no identified gameplay compilation unit.",
                       "C++ sketches are informational, may need declarator/template/access corrections, and are not buildable replacement sources."],
        }
        write_json(self.out / "summary.json", summary)
        (self.out / "README.md").write_text(
            "# Native DWARF recovery evidence\n\n"
            "This is a reproducible export of debug metadata from the supplied native library. It is not original source code. "
            "No function bodies are fabricated or claimed recovered.\n\n"
            "`dies.jsonl.gz` preserves every DIE (including null terminators), parent, DWARF form, attribute offset, "
            "decoded value, raw value and reference. Byte strings retain exact hex plus a convenience UTF-8 text view. "
            "For a byte-for-byte section copy, run the recovery tool with `--raw-sections`.\n\n"
            "`line-program.jsonl.gz` preserves line-program commands and states; `compilation-units.json` maps their file indices. "
            "`types.jsonl.gz` and `functions.jsonl.gz` are derived indexes. `locations.jsonl.gz` and `ranges.jsonl.gz` "
            "decode referenced lists while retaining their raw operands. `function-address-index.json` is a compact map "
            "for disassembler address matching. All addresses are original ELF virtual addresses.\n\n"
            "`declarations/*.cpp.txt` are readable C++ declaration sketches for review, not compilation-ready code. "
            "Their limitations are noted at the top of each file. For exact semantics, consult the associated DIE.\n\n"
            "The original debug units in this APK identify license/online glue, STLport and libgcc. "
            "A large debug section therefore does not mean gameplay implementation was recovered. See `summary.json` "
            "for counts and `parse-errors.json` for any parse limitations.\n", encoding="utf-8")
        return summary


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("inputs", nargs="*", type=Path, help="ELF shared libraries to examine")
    parser.add_argument("--elf-dir", type=Path, help="Read every .so directly in this directory")
    parser.add_argument("--output", type=Path, default=Path("recovered/native/debug"))
    parser.add_argument("--raw-sections", action="store_true", help="Also preserve exact original debug-section binary bytes")
    args = parser.parse_args()
    inputs = sorted(set(args.inputs + (list(args.elf_dir.glob("*.so")) if args.elf_dir else [])))
    if not inputs:
        parser.error("provide ELF inputs or --elf-dir")
    args.output.mkdir(parents=True, exist_ok=True)
    summaries = []
    for source in inputs:
        print(f"Recovering DWARF: {source.name}", flush=True)
        out = args.output / source.name
        out.mkdir(parents=True, exist_ok=True)
        with source.open("rb") as stream:
            elf = ELFFile(stream)
            if not elf.has_dwarf_info(strict=True):
                summary = {"schema_version": 1, "input_name": source.name, "input_sha256": hashlib.sha256(source.read_bytes()).hexdigest(),
                           "elf_machine": elf["e_machine"], "elf_class": elf.elfclass, "dwarf_compilation_units": 0,
                           "recovered_original_function_bodies": 0, "status": "no_DWARF_debug_info"}
                write_json(out / "summary.json", summary)
            else:
                summary = Recovery(elf, source, out, args.raw_sections).run()
        summaries.append(summary)
        print(json.dumps({k: summary.get(k) for k in ("input_name", "dwarf_compilation_units", "all_die_records_including_terminators", "type_records", "subprogram_records", "subprograms_with_nonzero_address_ranges", "parse_error_count")}), flush=True)
    write_json(args.output / "summary.json", summaries)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
