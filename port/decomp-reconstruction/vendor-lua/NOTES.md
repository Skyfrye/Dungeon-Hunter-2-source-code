# vendor-lua: Lua 5.1.4 in libDungeonHunter2.so

Queue: `queue.csv`, 471 rows, all exact name matches. The 105 `sfc::script::lua` wrappers and `LuaAllocator` are Gameloft code and sit in `game-app`.

## Ledger: 453 rows, status `upstream`

- `ledger.d/upstream-1.csv`: 440 unclaimed rows that are exact name matches inside the size gate.
- `ledger.d/upstream-2.csv`: 13 claimed rows that are exact name matches inside the size gate. Claimed rows are ledgered like any other.

Size gate: binary bytes per source token within 4x of the median (1.73). `source_file` is under `upstream/lua-5.1.4/src/`.

## Left for reconstruction or review: 18 rows

- 15 unclaimed rows outside the size gate (flagged). Review before ledgering.
- 2 claimed rows outside the size gate (flagged).
- 1 unclaimed tiny body (under 8 bytes). The tiny rule is for Box2D only, so it is not ledgered here.

## Vendored source: `upstream/lua-5.1.4/`

- 56 files: `COPYRIGHT` and 55 files in `src/`, LF line endings.
- DH2 build configuration applied, marked `// DH2:` (9 markers in 3 files): float `lua_Number` in `luaconf.h`, no `luaB_dofile` or `luaB_loadfile` in `lbaselib.c`, no `io`, `os` or `package` opens in `linit.c`.
- Details and build notes: `upstream/lua-5.1.4/README.md`.

## Build needs (not added to CMake)

- The 25 core units, as C99, with float `lua_Number`.
- Lua's base, table, string, math and debug libraries are opened by the Gameloft `sfc` wrapper (in `game-app`), so no `linit.c`.
- Host use of DH2 `.luac` files needs the 32-bit `size_t` chunk change from `port/adam-script-runtime/lua/` (not applied).
