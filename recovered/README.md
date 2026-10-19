# Recovered reference material

Exports from the original Android 1.0.2 binaries and data, used as the source for the reconstruction. Nothing here is
original Gameloft source code.

| Folder | Contents |
| --- | --- |
| `native/hexrays-all/` | Hex-Rays pseudocode of `libDungeonHunter2.so` (31,724 functions): the primary source. |
| `native/ida-asm/` | Full ARM disassembly listing. |
| `native/ida-types/` | IDA type and structure layouts. |
| `native/decompiled/` | Older Ghidra export (fallback only). |
| `native/symbols/`, `native/assembly/` | Symbol tables and per-function assembly of the native libraries. |
| `native/debug/` | DWARF debug metadata of the native library. |
| `android/` | Java and smali of the original app. |
| `assets/` | Original shaders and text resources. |
| `scripts/` | The game's Lua scripts. |
