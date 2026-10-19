# Decompiled-function reconstruction

Readable, compilable C++ rebuilt function by function from the IDA Hex-Rays
pseudocode of `libDungeonHunter2.so` (`recovered/native/hexrays-all/`, 31,724
functions in `chunk_000.c` to `chunk_063.c`). The target is code that builds and
runs on Windows (MinGW-w64 or MSVC) and on the host; Android builds come later
through the existing app projects.

**Source rule: Hex-Rays is the primary source.** `tools/decomp_extract.py`
reads it by default. Use the older Ghidra export (`recovered/native/decompiled/`,
`--source ghidra`) only as a fallback when a function has no usable Hex-Rays
body. Ghidra's output garbles some ARM tail calls and missing returns, which is
why the earlier `partial` rows were produced; re-reconstruct those from Hex-Rays
and replace the old ledger row in place (one row per address, never a duplicate).

## Layout

```
<category>/
  queue.csv            functions assigned to this category (generated, do not edit)
  ledger.csv           one row per finished function (elf_address,symbol,status,source_file,notes)
  NOTES.md             class layouts, open questions, upstream-library findings
  include/<category>/  public headers; deps/ holds minimal stand-ins for other categories' types
  src/                 reconstructed .cpp/.c
  tests/               one executable per file; return non-zero on failure
```

Ledger `status` values:

- `reconstructed`: the body is rebuilt from the pseudocode, compiles, and matches its control flow and side effects.
- `upstream`: the function is unmodified code from a known open-source library; `notes` names the library, version and upstream function.
- `partial`: compiles, but part of the behaviour is stubbed or uncertain; `notes` says which part.
- `skipped`: deliberately not rebuilt (`notes` says why, such as a compiler-generated thunk or a platform that is not a target).

## Setup

A fresh Debian or Ubuntu container needs the build tools once. This installs CMake,
Ninja, the MinGW-w64 cross compiler, Wine (to run the Windows tests) and unar (for the
nested RAR in the IDA export), then creates the Wine prefix:

```sh
tools/decomp_setup.sh
```

After that, `tools/decomp_build.sh host <category>` and `tools/decomp_build.sh windows <category>`
work as shown under Tools. On a real Windows machine, build with CMake and MinGW or MSVC instead.

## Tools

```sh
python3 tools/decomp_extract.py --category core-platform --remaining
python3 tools/decomp_extract.py --category core-platform --owner Console      # one class, unfinished only
python3 tools/decomp_extract.py --category core-platform --next 20 --max-bytes 600
python3 tools/decomp_extract.py --address 0x30eea0
python3 tools/decomp_extract.py --category glitch-core-io --match "glitch::io::CXMLReader" --list   # address, size, name
python3 tools/decomp_vtable.py Console           # vtable byte offset -> method, for (*obj + 0x98)(...) calls
tools/decomp_build.sh host core-platform         # fast build + tests
tools/decomp_build.sh windows core-platform      # MinGW-w64 build, tests run under Wine
python3 tools/decomp_progress.py                 # ledger totals per category
```

Original strings and symbols are in `recovered/native/symbols/libDungeonHunter2.so/`
(`strings.csv`, `symbols.csv`, `vtables-001.json`). Upstream Irrlicht 1.8.5, the
ancestor of `glitch::`, is vendored at `port/irrlicht-prototype/upstream/irrlicht-1.8.5/`
for naming reference.

## Rules for reconstructed code

- Write idiomatic C++17: real classes and structs with named members, real
  pointer types, no `undefined4`/`param_1` names. Keep the original 32-bit
  offset of each member as a comment (`// +0x40`) so layouts stay checkable,
  but never do pointer arithmetic on raw offsets; the code must work on 64-bit.
- Each function starts with a comment giving its original address and mangled
  symbol, e.g. `// 0x30ef50 _Z8ObjToStrPcRN6glitch4core8vector3dIfEE`.
- Keep original names (classes, methods, globals) from the demangled symbols.
- Platform code: prefer the original's Win32 variants (`FileSystemWin32`,
  `TouchScreenWin32`, ...). Where only an Android/iOS variant exists, write
  portable C++ or `#ifdef _WIN32` with Winsock/Win32.
- Do not paste pseudocode. Do not invent behaviour that is not in it; mark
  `partial` instead.
