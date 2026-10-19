#!/usr/bin/env python3
"""Recover the supplied APK's Android layer without fabricating original source.

Requires Java 17+, APKTool 2.12.1, and the JADX 1.5.6 all-in-one JAR.
Tool binaries and the input APK are deliberately not copied into the repository.
JADX warnings are preserved. Full smali is the bytecode-level recovery fallback.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import struct
import subprocess
import zipfile
import zlib

JADX_OPTIONS = [
    "--show-bad-code", "--comments-level", "debug",
    "--no-inline-anonymous", "--no-inline-methods", "--no-move-inner-classes",
    "--use-source-name-as-class-name-alias", "never",
    "--respect-bytecode-access-modifiers", "--fs-case-sensitive",
]


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run_logged(argv: list[str], log: Path) -> int:
    result = subprocess.run(argv, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                            text=True, encoding="utf-8", errors="replace")
    log.write_text(result.stdout, encoding="utf-8")
    return result.returncode


def write_json(path: Path, value: object) -> None:
    path.write_text(json.dumps(value, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")


def copy_file(source: Path, target: Path) -> None:
    target.parent.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(source, target)


def dex_header(data: bytes) -> dict:
    if not data.startswith(b"dex\n"):
        raise ValueError("Input classes file is not DEX")
    read = lambda offset: struct.unpack_from("<I", data, offset)[0]
    return {
        "magic": data[:8].decode("ascii", errors="replace"),
        "file_size": read(32), "actual_size": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
        "sha1_signature_valid": hashlib.sha1(data[32:]).digest() == data[12:32],
        "adler32_valid": zlib.adler32(data[12:]) & 0xffffffff == read(8),
        "string_ids": read(56), "type_ids": read(64), "proto_ids": read(72),
        "field_ids": read(80), "method_ids_including_external_references": read(88),
        "class_defs": read(96),
    }


def jni_escape(value: str) -> str:
    return "".join("_" if c in "/." else "_1" if c == "_" else "_2" if c == ";"
                   else "_3" if c == "[" else c if c.isalnum()
                   else "_0" + format(ord(c), "04x") for c in value)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", type=Path)
    parser.add_argument("--apktool-jar", required=True, type=Path)
    parser.add_argument("--jadx-jar", required=True, type=Path)
    parser.add_argument("--work-dir", required=True, type=Path,
                        help="Scratch output directory; APKTool binary resources remain here")
    parser.add_argument("--repo-root", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--java", default="java")
    parser.add_argument("--javac", help="Optional Java compiler executable")
    parser.add_argument("--android-jar", type=Path, help="Optional Android SDK platform JAR")
    args = parser.parse_args()
    for path in (args.apk, args.apktool_jar, args.jadx_jar):
        if not path.is_file():
            parser.error(f"Required input is missing: {path}")
    if bool(args.javac) != bool(args.android_jar):
        parser.error("--javac and --android-jar must be supplied together")

    work = args.work_dir.resolve()
    repo = args.repo_root.resolve()
    work.mkdir(parents=True, exist_ok=True)
    out = repo / "recovered/android"
    reports = repo / "reports"
    out.mkdir(parents=True, exist_ok=True)
    reports.mkdir(parents=True, exist_ok=True)
    decoded = work / "apktool-decoded"
    jadx = work / "jadx-original"
    decode_code = run_logged([args.java, "-jar", str(args.apktool_jar.resolve()), "d", "-f",
                              "-o", str(decoded), str(args.apk.resolve())],
                             reports / "java-recovery-apktool.log")
    if decode_code:
        raise SystemExit(f"APKTool failed; see {reports / 'java-recovery-apktool.log'}")
    jadx_code = run_logged([args.java, "-cp", str(args.jadx_jar.resolve()), "jadx.cli.JadxCLI",
                            *JADX_OPTIONS, "-d", str(jadx), str(args.apk.resolve())],
                           reports / "java-recovery-jadx.log")
    if not (jadx / "sources").exists():
        raise SystemExit("JADX produced no source directory")

    # Include only textual reconstructions, never original libraries/assets/signatures.
    copy_file(decoded / "AndroidManifest.xml", out / "AndroidManifest.xml")
    copy_file(decoded / "apktool.yml", out / "apktool.yml")
    for source in sorted((decoded / "res").rglob("*.xml")):
        copy_file(source, out / "res" / source.relative_to(decoded / "res"))
    smali_files = []
    for smali_root in sorted(decoded.glob("smali*")):
        if smali_root.is_dir():
            for source in sorted(smali_root.rglob("*.smali")):
                target = out / smali_root.name / source.relative_to(smali_root)
                copy_file(source, target)
                smali_files.append(target)
    java_files = []
    for source in sorted((jadx / "sources").rglob("*.java")):
        target = out / "java" / source.relative_to(jadx / "sources")
        copy_file(source, target)
        java_files.append(target)

    native_methods = []
    class_inventory = []
    warnings = []
    java_errors = []
    java_stubs = []
    unknown_type_lines = []
    for source in java_files:
        for line_number, line in enumerate(source.read_text().splitlines(), 1):
            row = {"file": source.relative_to(repo).as_posix(), "line": line_number, "text": line.strip()}
            if "JADX WARN" in line:
                warnings.append(row)
            if "JADX ERROR" in line:
                java_errors.append(row)
            if "Method not decompiled" in line:
                java_stubs.append(row)
            if "??" in line:
                unknown_type_lines.append(row)
    for source in smali_files:
        body = source.read_text()
        match = re.search(r"^\.class[ \t]+((?:\S+[ \t]+)*)(L[^;\r\n]+;)$", body, re.MULTILINE)
        if not match:
            raise ValueError(f"Missing class declaration: {source}")
        flags, descriptor = match.groups()
        flags = flags.strip()
        class_path = descriptor[1:-1]
        java_path = out / "java" / (class_path + ".java")
        defined_methods = re.findall(r"^\.method\s+(.+)$", body, re.MULTILINE)
        class_inventory.append({
            "class_descriptor": descriptor, "access_flags": flags,
            "smali": source.relative_to(repo).as_posix(), "smali_sha256": sha256(source),
            "java": java_path.relative_to(repo).as_posix() if java_path.is_file() else None,
            "java_sha256": sha256(java_path) if java_path.is_file() else None,
            "defined_methods": len(defined_methods),
        })
        for method in defined_methods:
            parts = method.split()
            if "native" not in parts[:-1]:
                continue
            signature = parts[-1]
            method_name = signature.split("(", 1)[0]
            native_methods.append({
                "class_descriptor": descriptor, "method": signature,
                "access_flags": " ".join(parts[:-1]), "static": "static" in parts[:-1],
                "jni_short_name": "Java_" + jni_escape(class_path) + "_" + jni_escape(method_name),
                "smali": source.relative_to(repo).as_posix(),
            })
    expected_java_paths = {row["java"] for row in class_inventory}
    synthesized_java = [p.relative_to(repo).as_posix() for p in java_files
                        if p.relative_to(repo).as_posix() not in expected_java_paths]
    with zipfile.ZipFile(args.apk) as archive:
        dex_headers = {name: dex_header(archive.read(name)) for name in archive.namelist()
                       if re.fullmatch(r"classes\d*\.dex", name)}
    missing_java = [row["class_descriptor"] for row in class_inventory if not row["java"]]
    if len(class_inventory) != sum(header["class_defs"] for header in dex_headers.values()):
        raise ValueError("DEX class count disagrees with smali class count")
    write_json(reports / "java-recovery-class-inventory.json", class_inventory)
    write_json(reports / "java-recovery-native-methods.json", native_methods)
    write_json(reports / "java-recovery-warnings.json", warnings)
    (reports / "java-recovery-native-methods.tsv").write_text(
        "class_descriptor\tmethod\taccess_flags\tjni_short_name\n" + "".join(
            "\t".join(row[key] for key in ("class_descriptor", "method", "access_flags", "jni_short_name")) + "\n"
            for row in native_methods))
    compile_result = {"attempted": False, "compiles": None}
    if args.javac:
        arg_file = work / "javac-sources.args"
        arg_file.write_text("\n".join('"' + str(path) + '"' for path in java_files) + "\n")
        compile_code = run_logged([
            args.javac, "-encoding", "UTF-8", "-source", "8", "-target", "8",
            "-Xmaxerrs", "50", "-classpath", str(args.android_jar.resolve()),
            "-d", str(work / "javac-classes"), "@" + str(arg_file),
        ], reports / "java-recovery-javac.log")
        compile_result = {
            "attempted": True, "compiles": compile_code == 0, "exit_code": compile_code,
            "android_jar_sha256": sha256(args.android_jar),
            "source_compatibility": 8,
            "log": "reports/java-recovery-javac.log",
            "note": "This is a raw export compile diagnostic; semantic equivalence has not been tested.",
        }
    result = {
        "apk": {"filename": args.apk.name, "bytes": args.apk.stat().st_size, "sha256": sha256(args.apk)},
        "tools": {
            "apktool": {"version": "2.12.1", "sha256": sha256(args.apktool_jar), "exit_code": decode_code},
            "jadx": {"version": "1.5.6", "sha256": sha256(args.jadx_jar), "exit_code": jadx_code,
                     "options": JADX_OPTIONS},
        },
        "dex": dex_headers, "smali_classes": len(class_inventory),
        "defined_methods": sum(row["defined_methods"] for row in class_inventory),
        "java_files": len(java_files), "dex_classes_with_java": len(class_inventory) - len(missing_java),
        "missing_java_classes": missing_java, "synthesized_resource_java_files": synthesized_java,
        "jni_native_declarations": len(native_methods), "jadx_warning_annotations": len(warnings),
        "jadx_error_annotations": len(java_errors), "method_not_decompiled_stubs": len(java_stubs),
        "unresolved_type_lines": unknown_type_lines,
        "raw_java_compile_diagnostic": compile_result,
        "limitations": [
            "Java source is decompiler output, not the original studio source.",
            "Warnings and unresolved types are preserved; counts do not prove semantic equivalence.",
            "Smali preserves complete method instructions but is not an ARM64 game-engine port.",
            "Only decoded XML resources are included; original binary assets, resource table and libraries are excluded.",
        ],
    }
    write_json(reports / "java-recovery.json", result)
    print(json.dumps({key: result[key] for key in (
        "smali_classes", "defined_methods", "java_files", "dex_classes_with_java",
        "jni_native_declarations", "jadx_warning_annotations", "jadx_error_annotations",
        "method_not_decompiled_stubs", "raw_java_compile_diagnostic")}, indent=2))


if __name__ == "__main__":
    main()
