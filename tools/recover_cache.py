#!/usr/bin/env python3
"""Reassemble and validate a numbered cache ZIP, including a truncated ZIP prefix.

Recovered bytes are private inputs: the manifest records evidence, not game assets.
Only entries with matching decompressed size and CRC-32 are written. The parser
does not search payload bytes for guessed ZIP headers or repair damaged content.
"""
from __future__ import annotations

import argparse
import collections
import hashlib
import io
import json
from pathlib import Path, PurePosixPath
import re
import struct
import sys
import zipfile
import zlib

PART_RE = re.compile(r"^(.*)\.part(\d+)$")
LOCAL_HEADER = struct.Struct("<4s5H3I2H")
CHUNK_SIZE = 1024 * 1024


def ordered_parts(paths: list[Path]) -> list[Path]:
    """Reject missing/duplicate indices and mixed archives; sort numerically."""
    indexed = []
    stems = set()
    for path in paths:
        match = PART_RE.fullmatch(path.name)
        if not match:
            raise ValueError(f"not a numbered ZIP part: {path.name}")
        stems.add(match.group(1))
        indexed.append((int(match.group(2)), path))
    if not indexed or len(stems) != 1:
        raise ValueError("parts must belong to exactly one archive")
    indexed.sort(key=lambda pair: pair[0])
    indices = [index for index, _ in indexed]
    if indices != list(range(1, len(indices) + 1)):
        raise ValueError(f"parts must be unique and contiguous from 1: {indices}")
    if any(not path.is_file() for _, path in indexed):
        raise ValueError("all parts must be existing regular files")
    return [path for _, path in indexed]


def assemble(parts: list[Path], output: Path) -> dict:
    parts = ordered_parts(parts)
    if output.resolve() in {path.resolve() for path in parts}:
        raise ValueError("assembled archive must not overwrite an input part")
    output.parent.mkdir(parents=True, exist_ok=True)
    total_hash = hashlib.sha256()
    records = []
    with output.open("wb") as dest:
        for path in parts:
            digest = hashlib.sha256()
            size = 0
            with path.open("rb") as source:
                while block := source.read(CHUNK_SIZE):
                    dest.write(block)
                    digest.update(block)
                    total_hash.update(block)
                    size += len(block)
            records.append({"name": path.name, "size": size, "sha256": digest.hexdigest()})
    return {"size": sum(item["size"] for item in records), "sha256": total_hash.hexdigest(),
            "parts": records}


def safe_name(name: str) -> PurePosixPath:
    """Reject traversal, alternate Windows separators/drives, and empty paths."""
    if not name or "\x00" in name or "\\" in name or ":" in name or name.startswith("/"):
        raise ValueError(f"unsafe archive path: {name!r}")
    tokens = name.rstrip("/").split("/")
    if any(token in ("", ".", "..") for token in tokens):
        raise ValueError(f"unsafe archive path: {name!r}")
    return PurePosixPath(*tokens)


def write_entry(root: Path, name: str, content: bytes, is_directory: bool) -> None:
    relative = safe_name(name)
    target = root.joinpath(*relative.parts)
    resolved_root = root.resolve()
    if not target.resolve().is_relative_to(resolved_root):
        raise ValueError(f"output path escapes extraction directory: {name!r}")
    # Do not follow a preexisting link even when it points within the root.
    cursor = target
    while cursor != root:
        if cursor.is_symlink():
            raise ValueError(f"output path contains an existing symlink: {name!r}")
        cursor = cursor.parent
    if is_directory:
        target.mkdir(parents=True, exist_ok=True)
    else:
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(content)


def signature(content: bytes, name: str) -> str:
    if content.startswith(b"\x89PNG\r\n\x1a\n"):
        return "PNG"
    if content.startswith(b"BRES"):
        return "BRES (Gameloft binary resource; schema unresolved)"
    if content.startswith(b"BTEX"):
        subtype = content[4:8].rstrip(b"\0").decode("ascii", errors="replace")
        return f"BTEX/{subtype}"
    if content.startswith(b"PK\x03\x04"):
        return "ZIP"
    if content.startswith(b"RIFF") and content[8:12] == b"WAVE":
        return "RIFF/WAVE"
    if content.startswith(b"VoxN"):
        return "VoxN (chunked audio)"
    if len(content) >= 12 and content[4:8] == b"ftyp":
        return "ISO-BMFF/MP4"
    if content.startswith((b"\x00\x01\x00\x00", b"OTTO")) and name.lower().endswith(".ttf"):
        return "sfnt/TrueType"
    if (name.lower().endswith(".tga") and len(content) >= 18 and content[1] == 0 and content[2] == 2
            and content[16] in (24, 32) and struct.unpack_from("<HH", content, 12) != (0, 0)):
        return "TGA/uncompressed true-color"
    stripped = content.lstrip(b"\xef\xbb\xbf\t\r\n ")
    if stripped.startswith((b"<?xml", b"<Module")):
        return "XML/UTF-8"
    if content.startswith((b"\xff\xfe", b"\xfe\xff")):
        try:
            if content.decode("utf-16").lstrip().startswith("<"):
                return "XML/UTF-16"
        except UnicodeError:
            pass
    if content and all(byte in (9, 10, 13) or 32 <= byte < 127 for byte in content[:4096]):
        return "ASCII text"
    return "unclassified binary" if content else "empty"


def inspect_archive(archive: Path, extraction_root: Path | None = None,
                    max_entry_bytes: int = 512 * 1024 * 1024,
                    source_root: Path | None = None) -> dict:
    """Walk local headers; a missing central directory does not hide intact entries.

    Data descriptors, encryption and unsupported compression are explicit stops.
    ZIP64 local sizes are intentionally unsupported, not silently interpreted.
    """
    size = archive.stat().st_size
    entries = []
    source_records = []
    stop = None
    offset = 0
    seen = set()
    if extraction_root:
        if extraction_root.is_symlink():
            raise ValueError("extraction root must not be a symlink")
        extraction_root.mkdir(parents=True, exist_ok=True)
    if source_root:
        if source_root.is_symlink():
            raise ValueError("source output root must not be a symlink")
        source_root.mkdir(parents=True, exist_ok=True)
    with archive.open("rb") as source:
        while offset < size:
            source.seek(offset)
            prefix = source.read(4)
            if prefix in (b"PK\x01\x02", b"PK\x05\x06"):
                stop = {"reason": "central_directory_reached", "offset": offset}
                break
            if prefix != b"PK\x03\x04":
                stop = {"reason": "unexpected_signature", "offset": offset, "header_hex": prefix.hex()}
                break
            source.seek(offset)
            header = source.read(LOCAL_HEADER.size)
            if len(header) != LOCAL_HEADER.size:
                stop = {"reason": "truncated_local_header", "offset": offset}
                break
            _, version, flags, method, dos_time, dos_date, crc, compressed, uncompressed, nlen, elen = LOCAL_HEADER.unpack(header)
            name_bytes = source.read(nlen)
            extra = source.read(elen)
            if len(name_bytes) != nlen or len(extra) != elen:
                stop = {"reason": "truncated_name_or_extra", "offset": offset}
                break
            name = name_bytes.decode("utf-8" if flags & 0x800 else "cp437")
            relative = str(safe_name(name))
            if relative in seen:
                raise ValueError(f"duplicate archive path: {name!r}")
            seen.add(relative)
            record = {"path": name, "kind": "directory" if name.endswith("/") else "file",
                      "local_header_offset": offset, "data_offset": source.tell(),
                      "compressed_size": compressed, "size": uncompressed, "compression_method": method,
                      "crc32": f"{crc:08x}"}
            if flags & 1:
                stop = {"reason": "encrypted_entry_unsupported", **record}
                break
            if flags & 8:
                stop = {"reason": "data_descriptor_unsupported", **record}
                break
            if compressed == 0xFFFFFFFF or uncompressed == 0xFFFFFFFF:
                stop = {"reason": "zip64_unsupported", **record}
                break
            if uncompressed > max_entry_bytes or compressed > max_entry_bytes:
                stop = {"reason": "entry_size_limit", **record}
                break
            available = size - record["data_offset"]
            if compressed > available:
                stop = {"reason": "truncated_entry", **record, "compressed_bytes_available": available,
                        "compressed_bytes_missing": compressed - available}
                break
            payload = source.read(compressed)
            if method == 0:
                content = payload
            elif method == 8:
                decoder = zlib.decompressobj(-15)
                try:
                    content = decoder.decompress(payload, uncompressed + 1)
                    if (not decoder.eof or decoder.unused_data or decoder.unconsumed_tail):
                        stop = {"reason": "invalid_deflate_stream", **record}
                        break
                except zlib.error as error:
                    stop = {"reason": "deflate_error", "detail": str(error), **record}
                    break
            else:
                stop = {"reason": "compression_method_unsupported", **record}
                break
            if len(content) != uncompressed:
                stop = {"reason": "uncompressed_size_mismatch", "actual_size": len(content), **record}
                break
            actual_crc = zlib.crc32(content) & 0xFFFFFFFF
            if actual_crc != crc:
                stop = {"reason": "crc_mismatch", "actual_crc32": f"{actual_crc:08x}", **record}
                break
            record.update({"verified": True, "sha256": hashlib.sha256(content).hexdigest(),
                           "signature": "directory" if record["kind"] == "directory" else signature(content, name),
                           "header_hex": content[:32].hex()})
            entries.append(record)
            if extraction_root:
                write_entry(extraction_root, name, content, record["kind"] == "directory")
            if source_root and record["kind"] == "file":
                ext = Path(name).suffix.lower()
                if record["signature"].startswith("XML/") or (record["signature"] == "ASCII text" and
                                                                 ext in (".txt", ".state", ".bar")):
                    write_entry(source_root, name, content, False)
                    source_records.append({"output_path": name, "cache_path": name,
                                           "size": len(content), "sha256": record["sha256"],
                                           "crc32": record["crc32"], "kind": "original_text_resource"})
                elif Path(name).name == "shaders.pak" and record["signature"] == "ZIP":
                    with zipfile.ZipFile(io.BytesIO(content)) as nested:
                        nested_seen = set()
                        for member in nested.infolist():
                            normalized = str(safe_name(member.filename))
                            if normalized in nested_seen:
                                raise ValueError(f"duplicate nested shader path: {member.filename!r}")
                            nested_seen.add(normalized)
                            if member.is_dir():
                                continue
                            if member.file_size > max_entry_bytes:
                                raise ValueError("nested shader exceeds size limit")
                            # ZipFile.read verifies the nested member CRC before returning bytes.
                            shader = nested.read(member)
                            if Path(member.filename).suffix.lower() not in (".glsl", ".config"):
                                continue
                            shader.decode("utf-8")  # Reject binary or invalid text exported as source.
                            output_name = name + ".contents/" + member.filename
                            write_entry(source_root, output_name, shader, False)
                            source_records.append({"output_path": output_name, "cache_path": name,
                                                   "nested_archive_path": member.filename,
                                                   "size": len(shader), "sha256": hashlib.sha256(shader).hexdigest(),
                                                   "crc32": f"{member.CRC:08x}", "kind": "original_shader_source"})
            offset = record["data_offset"] + compressed
    central_error = None
    central_valid = False
    try:
        with zipfile.ZipFile(archive) as standard_zip:
            central = standard_zip.infolist()
            central_valid = (len(central) == len(entries)
                             and all(info.filename == entry["path"] and info.CRC == int(entry["crc32"], 16)
                                     and info.file_size == entry["size"] and info.header_offset == entry["local_header_offset"]
                                     for info, entry in zip(central, entries)))
            if not central_valid:
                central_error = "central/local directory entries differ"
    except (zipfile.BadZipFile, OSError) as error:
        central_error = str(error)
    files = [entry for entry in entries if entry["kind"] == "file"]
    return {"schema": "dh2-cache-evidence/v1", "archive_complete": central_valid,
            "central_directory_valid": central_valid, "central_directory_error": central_error,
            "stop": stop, "verified_entry_count": len(entries), "verified_file_count": len(files),
            "verified_directory_count": len(entries) - len(files),
            "verified_uncompressed_bytes": sum(entry["size"] for entry in files),
            "extension_counts": dict(sorted(collections.Counter(Path(entry["path"]).suffix.lower() or "(none)"
                                                                 for entry in files).items())),
            "signature_counts": dict(sorted(collections.Counter(entry["signature"] for entry in files).items())),
            "source_records": source_records,
            "entries": entries}


def report_markdown(manifest: dict) -> str:
    archive = manifest["archive"]
    lines = ["# Dungeon Hunter 2 cache recovery evidence", "",
             f"Input: {len(archive['parts'])} numbered parts, {archive['size']:,} bytes.",
             f"Assembled SHA-256: `{archive['sha256']}`.", "",
             f"Complete ZIP: **{'yes' if manifest['archive_complete'] else 'no'}**.",
             f"Validated: **{manifest['verified_file_count']:,} files** and "
             f"{manifest['verified_directory_count']:,} directories; "
             f"{manifest['verified_uncompressed_bytes']:,} uncompressed file bytes.",
             "Every recovered entry passed its local-header size and CRC-32 checks; SHA-256 hashes are in the manifest.", "",
             "Recovery stopped at:", "", "```json", json.dumps(manifest['stop'], indent=2), "```", "",
             "A missing central directory means total original entry count and later missing files are unknown.",
             "A recovered prefix is not a complete game cache or proof that a modern port can run.", "",
             f"Exported original text/shader resources: **{len(manifest['source_records']):,} files** "
             f"({sum(item['size'] for item in manifest['source_records']):,} bytes).",
             "The export preserves original bytes and records provenance, including the nested shader member names.",
             "These are recovered proprietary resources; no open-source license is asserted.", "",
             "## Signature inventory", "", "| Observed format | Files |", "|---|---:|"]
    lines.extend(f"| {key} | {value:,} |" for key, value in manifest["signature_counts"].items())
    lines.extend(["", "## Filename extension inventory", "", "| Extension | Files |", "|---|---:|"])
    lines.extend(f"| `{key}` | {value:,} |" for key, value in manifest["extension_counts"].items())
    lines.extend(["", "## Input parts", "", "| Part | Bytes | SHA-256 |", "|---|---:|---|"])
    lines.extend(f"| `{item['name']}` | {item['size']:,} | `{item['sha256']}` |" for item in archive["parts"])
    return "\n".join(lines) + "\n"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--parts", required=True, type=Path, help="directory containing one .zip.partNNNNN set")
    parser.add_argument("--work-dir", required=True, type=Path, help="private intermediate directory")
    parser.add_argument("--manifest", required=True, type=Path, help="metadata-only JSON output")
    parser.add_argument("--report", type=Path, help="Markdown evidence report")
    parser.add_argument("--extract", action="store_true", help="write CRC-verified assets in work-dir/extracted")
    parser.add_argument("--source-data", type=Path,
                        help="export original XML/text resources and GLSL with provenance (proprietary content)")
    args = parser.parse_args()
    try:
        archive_path = args.work_dir / "cache.zip"
        assembled = assemble(list(args.parts.glob("*.zip.part*")), archive_path)
        result = inspect_archive(archive_path, args.work_dir / "extracted" if args.extract else None,
                                 source_root=args.source_data)
        result["archive"] = assembled
        if args.source_data:
            provenance = {"schema": "dh2-text-source-provenance/v1", "cache_archive_sha256": assembled["sha256"],
                          "cache_archive_complete": result["archive_complete"],
                          "notice": "Recovered original proprietary resources. No open-source license is asserted.",
                          "files": result["source_records"]}
            (args.source_data / "provenance.json").write_text(json.dumps(provenance, indent=2) + "\n", encoding="utf-8")
        args.manifest.parent.mkdir(parents=True, exist_ok=True)
        args.manifest.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
        if args.report:
            args.report.parent.mkdir(parents=True, exist_ok=True)
            args.report.write_text(report_markdown(result), encoding="utf-8")
        print(json.dumps({key: result[key] for key in ("archive_complete", "verified_file_count",
                                                      "verified_uncompressed_bytes", "stop")}, indent=2))
        return 0 if result["archive_complete"] else 2
    except (ValueError, UnicodeError, OSError, zipfile.BadZipFile) as error:
        print(f"cache recovery failed: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
