# Lua 5.1.4 (upstream source, DH2 build configuration)

Third-party upstream code, not Track A reconstruction.

## Provenance

- Copied from `port/lua-runtime/vendor/lua-5.1.4` (Track A tree). That tree matches `port/lua-runtime/vendor-manifest.json` for all 56 files after CRLF to LF normalisation.
- Upstream archive: `https://www.lua.org/ftp/lua-5.1.4.tar.gz`, sha256 `b038e225eaf2a5b57c9bcc35cd13aa8c6c8288ef493d52970c9545074098af3a` (as recorded in the manifest; not re-checked here).
- License: MIT. `COPYRIGHT` is kept unchanged.
- Line endings: LF. The Track A copy is stored with CRLF.
- Files: `COPYRIGHT` and 55 files in `src/` (56 total).
- Binary evidence: the DH2 `libDungeonHunter2.so` `lua_ident` reads `$Lua: Lua 5.1.4 Copyright (C) 1994-2008 Lua.org, PUC-Rio $`.

## DH2 changes (each marked with a `// DH2:` line)

1. `src/luaconf.h`: `LUA_NUMBER_DOUBLE` undefined, `LUA_NUMBER` is `float`, `LUA_NUMBER_SCAN` is `"%f"`. The DH2 binary's `lua_pushnumber` takes one 32-bit argument, so `lua_Number` is float there. 2 markers.
2. `src/lbaselib.c`: `luaB_loadfile` and `luaB_dofile` removed, with their `base_funcs` entries. Both are absent from the DH2 binary, and `luaopen_base` registers `base_funcs`. 4 markers.
3. `src/linit.c`: `package`, `io` and `os` removed from `luaL_openlibs`. The DH2 binary has no `luaopen_io`, `luaopen_os` or `luaopen_package`. The Gameloft `sfc::script::lua::Instance` opens base, table, string, math and debug only. 3 markers.

Nothing else is changed. `lauxlib.c` (including `luaL_loadfile`, which the DH2 build does not reference), `liolib.c`, `loslib.c`, `loadlib.c`, `lua.c`, `luac.c` and `print.c` are upstream as copied. The io, os and package sources are not part of the DH2 build.

## Known differences not applied here

- `ldump.c` and `lundump.c` write and read `sizeof(size_t)` in the chunk header. The DH2 `.luac` files use a 32-bit `size_t`. On a 64-bit host, loading them needs the `uint32_t` change in `port/adam-script-runtime/lua/` (Track A). That is a host-port change, not a DH2 build setting, so it is not applied here.
- `lgc.c` has an Android `strchr` workaround in the Track A copy. Not applied here.

## Build

Compile the 25 core units (`lapi`, `lauxlib`, `lbaselib`, `lcode`, `ldblib`, `ldebug`, `ldo`, `ldump`, `lfunc`, `lgc`, `llex`, `lmathlib`, `lmem`, `lobject`, `lopcodes`, `lparser`, `lstate`, `lstring`, `lstrlib`, `ltable`, `ltablib`, `ltm`, `lundump`, `lvm`, `lzio`) as C99 (the `// DH2:` lines need C99 or later). Use the float `LUA_NUMBER` from `luaconf.h`. Do not compile `linit.c`, `liolib.c`, `loslib.c`, `loadlib.c`, `lua.c`, `luac.c` or `print.c` for the DH2 library.
