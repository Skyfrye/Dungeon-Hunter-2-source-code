#!/usr/bin/env python3
"""Reproduce binary evidence; recovered C is deliberately not treated as a build."""
import argparse
import subprocess
import sys
import zipfile
from pathlib import Path

from elftools.elf.elffile import ELFFile


def run(args, allowed=(0,)):
    print('+', ' '.join(map(str, args)), flush=True)
    result = subprocess.run(list(map(str, args)))
    if result.returncode not in allowed:
        raise SystemExit(result.returncode)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--apk', type=Path, required=True)
    p.add_argument('--work-dir', type=Path, required=True)
    p.add_argument('--repo-root', type=Path, default=Path(__file__).resolve().parents[1])
    p.add_argument('--stages', nargs='+', choices=['native', 'dwarf', 'java', 'cache', 'ghidra'],
                   default=['native', 'dwarf'])
    p.add_argument('--cache-parts', type=Path)
    p.add_argument('--apktool-jar', type=Path)
    p.add_argument('--jadx-jar', type=Path)
    p.add_argument('--android-jar', type=Path)
    p.add_argument('--java', default='java')
    p.add_argument('--javac')
    p.add_argument('--ghidra-home', type=Path)
    p.add_argument('--workers', type=int, default=6)
    a = p.parse_args()
    apk, work, repo = a.apk.resolve(), a.work_dir.resolve(), a.repo_root.resolve()
    work.mkdir(parents=True, exist_ok=True)
    libs = work / 'original' / 'lib' / 'armeabi-v7a'
    libs.mkdir(parents=True, exist_ok=True)
    with zipfile.ZipFile(apk) as z:
        for name in ('libDungeonHunter2.so', 'libStormGLOFT.so', 'libnativeinterface.so'):
            (libs / name).write_bytes(z.read('lib/armeabi-v7a/' + name))
    tools = repo / 'tools'
    if 'native' in a.stages:
        run([sys.executable, tools / 'recover_native.py', '--input', libs, '--repo', repo, '--apk', apk])
    if 'dwarf' in a.stages:
        run([sys.executable, tools / 'recover_dwarf.py', '--elf-dir', libs,
             '--output', repo / 'recovered/native/debug'])
    if 'java' in a.stages:
        if not a.apktool_jar or not a.jadx_jar:
            p.error('java stage requires --apktool-jar and --jadx-jar')
        cmd = [sys.executable, tools / 'recover_java.py', apk, '--apktool-jar', a.apktool_jar.resolve(),
               '--jadx-jar', a.jadx_jar.resolve(), '--work-dir', work / 'java', '--repo-root', repo,
               '--java', a.java]
        if a.javac: cmd += ['--javac', a.javac]
        if a.android_jar: cmd += ['--android-jar', a.android_jar.resolve()]
        run(cmd)
    if 'cache' in a.stages:
        if not a.cache_parts: p.error('cache stage requires --cache-parts')
        run([sys.executable, tools / 'recover_cache.py', '--parts', a.cache_parts.resolve(),
             '--work-dir', work / 'cache', '--manifest', repo / 'recovered/assets/cache-manifest.json',
             '--report', repo / 'reports/cache-recovery.md', '--source-data', repo / 'recovered/assets/source-data'],
            allowed=(0, 2))
    if 'ghidra' in a.stages:
        if not a.ghidra_home: p.error('ghidra stage requires --ghidra-home')
        projects = work / 'ghidra-projects'
        projects.mkdir(exist_ok=True)
        for lib in sorted(libs.glob('*.so')):
            modes = work / (lib.name + '.modes.tsv')
            with lib.open('rb') as f:
                e = ELFFile(f)
                table = e.get_section_by_name('.symtab') or e.get_section_by_name('.dynsym')
                rows = sorted({(s['st_value'], s['st_size']) for s in table.iter_symbols()
                               if s['st_info']['type'] == 'STT_FUNC' and s['st_shndx'] != 'SHN_UNDEF'
                               and s['st_size'] > 0})
            modes.write_text(''.join(f'{address:x}\t{size}\n' for address, size in rows))
            run([a.ghidra_home.resolve() / 'support/analyzeHeadless', projects, lib.stem,
                 '-import', lib, '-overwrite', '-scriptPath', tools / 'ghidra',
                 '-preScript', 'ConfigureRecovery.java', modes,
                 '-preScript', 'FixArmEabiFloatHelpers.java',
                 '-postScript', 'FixThumbRanges.java', modes,
                 '-postScript', 'EnsureNamedFunctions.java', modes,
                 '-postScript', 'FixArmEabiFloatHelpers.java',
                 '-postScript', 'ExportRecovery.java', repo / 'recovered/native/decompiled', a.workers, 30,
                 '-analysisTimeoutPerFile', 900, '-max-cpu', a.workers])


if __name__ == '__main__':
    main()
