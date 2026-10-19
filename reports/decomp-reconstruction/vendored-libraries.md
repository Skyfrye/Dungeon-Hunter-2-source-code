# Vendored libraries in libDungeonHunter2.so: gameswf, Lua, Box2D

Research note for the Track B whole-game reconstruction, 2026-10-13. Read-only analysis; no source or ledger files were changed.

Inputs: `reports/decomp-reconstruction/inventory.csv` (buckets `lib-gameswf` 2474, `lib-lua` 577, `lib-box2d` 318), `recovered/native/symbols/libDungeonHunter2.so/` (strings, symbols, sections, and `build-source-filenames.json`, the 867 DWARF compile units), `tools/decomp_extract.py` (Hex-Rays pseudocode), the vendored trees under `port/`, and the original ELF (outside the repo; read only for the ELF magic, the `lua_ident` string and the `b2_version` bytes, and both offsets matched the symbol dump).

## 1. Summary

| Library | Functions | Upstream version (evidence) | Name-matched to vendored upstream | Gameloft-specific | Already claimed by port manifests | Vendored copy |
|---|---:|---|---|---|---:|---|
| Lua | 577 | Lua 5.1.4 (`lua_ident`), float `LUA_NUMBER` | 471 exact (453 inside the size gate) | 106: 105 `sfc::script::lua` wrappers + `LuaAllocator` | 63 | `port/lua-runtime/vendor/lua-5.1.4` (hash-verified) |
| Box2D | 318 | 2.0.1 (`b2_version` = {2,0,1}), DH2 `b2Settings` values | 294 exact + 24 compiler-generated destructors | 0 functions; 2 vendored files carry DH2 settings | 266 | `port/physics-backend/box2d-2.0.1` (not hash-verified here) |
| gameswf | 2474 | "official GameSWF r1714" (Track A pin; not provable from the binary) | 1789 exact + 34 namespace fallback | 509: 284 absent from the tree, 103 glitch/scene, 101 RenderFX glue, 21 render-handler name collisions | 14 | `port/engine-ui/vendor/gameswf1714` (no manifest) |

gameswf also has 142 constructor/destructor rows with no source body. Some are compiler-generated (as in Box2D); the rest, including Gameloft-only classes such as `filter_engine` and `character::custom`, need a per-function check.

Unclaimed rows, the work left for a queue: Lua 514 (456 exact name matches, 58 Gameloft wrappers), Box2D 52 (44 exact, 8 destructors), gameswf 2460.

## 2. Upstream versions

### 2.1 Lua: 5.1.4, with float numbers

- The binary's `lua_ident` (0x90f5b8) reads `$Lua: Lua 5.1.4 Copyright (C) 1994-2008 Lua.org, PUC-Rio $`.
- The vendored `lua-5.1.4/src` matches `port/lua-runtime/vendor-manifest.json` for all 56 files once CRLF is normalised to LF. The files are stored with CRLF in the checkout, so the raw hashes do not match. The manifest records the lua.org archive hash (`b038e225...`); I could not re-check it offline.
- The DWARF list has 25 core units (lapi through lzio), all present in the vendored tree. `linit.c`, `liolib.c`, `loadlib.c` and `loslib.c` are not in the binary.
- `lua_pushnumber` (0x84b458) takes one 32-bit argument, so `lua_Number` is `float` in the DH2 build. Upstream defaults to `double`. The `port/adam-script-runtime/lua/luaconf.h` copy sets `LUA_NUMBER float`, and the lua-runtime copy does not. Ledgered Lua functions must be built with the float configuration to match.
- The adam-script copy also differs in `ldump.c`, `lundump.c` (`uint32_t` for the serialized `size_t`, a 32-bit chunk format on a 64-bit host) and `lgc.c` (an Android `strchr` workaround). These are host-port changes, not Gameloft changes.

### 2.2 Box2D: 2.0.1

- `b2_version` (0x99e228, `.data`, 12 bytes) reads `{2, 0, 1}`.
- The DWARF list has 30 `b2*.cpp` units. The vendored `Source/` has 31: `Collision/b2Collision.cpp` is absent from the build. Its only function, `b2Segment::TestSegment`, is also absent from the binary.
- The README states that the DH2 build uses `b2_maxProxies` 2048 and `b2_maxPairs` 16384 (`8 * 2048`), recovered from the binary's constructor loop bounds, against upstream 512 and 4096. The vendored `b2Settings.h` has those DH2 values. `b2Settings.cpp` has a DH2 aligned allocation header. `port/physics-backend/README.md` documents both changes and says the other 63 vendored files match the official archive bytes. I did not re-verify that claim.

### 2.3 gameswf: "official r1714", not provable from the binary

- `port/engine-ui/gameswf_sources.cmake` says "Pinned official GameSWF r1714, explicit portability/fork patches in reference/gameswf-core". That folder does not exist in this worktree, so the fork patches cannot be checked.
- The binary has no revision string. Its version function (`gameswf::get_gameswf_version`, 0x76c77c) returns a pointer into `gameswf::s_gameswf_version`, which a static initialiser constructs from `"LINUX"` (Hex-Rays for the initialiser, chunk_047 around line 19139). Upstream (`gameswf_player.cpp:234`) constructs it from `"WIN " __DATE__ " " __TIME__`. That is a platform change, see 3.3.
- The vendored tree has three roots: `gameswf/` (65 translation units in the cmake list), `base/` (21, tu-testbed utilities) and `net/` (9). The cmake list has 95 units. The DWARF list contains 68 of them. The other 27 (for example `as_xml.cpp`, `as_xmlsocket.cpp`, `http_*.cpp`, `webtweaker.cpp`, `utility.cpp`, `tu_types.cpp`) have no compile unit in the DH2 build, and none of their names match a binary row. The DH2 build also has six units absent from the tree: `GameSWFUtils.cpp`, `gameswf_allocator.cpp`, `gameswf_bitmapfont.cpp`, `gameswf_render_handler_glitch.cpp`, `gameswf_scene_node.cpp`, `gameswf_texture_cache.cpp`.
- 1823 of 2474 binary functions match upstream by name (74%). That is consistent with r1714 plus a fork, but it does not confirm the revision.

## 3. Gameloft-specific evidence

### 3.1 Lua

- `sfc::script::lua` is a Gameloft C++ wrapper: `Arguments`, `Value`, `ReturnValues`, `Binder`, `Error`, `Instance`, `UserData`, `newstate`, `panic`. Its DWARF units are `Arguments.cpp`, `Binder.cpp`, `Error.cpp`, `Instance.cpp`, `ReturnValues.cpp`, `Value.cpp`, under `sources\Utils\sfc\script\lua\`. It accounts for 105 functions.
- `LuaAllocator(void*, void*, unsigned, unsigned)` is a custom `lua_Alloc`. `sfc::script::lua::newstate` (0x31b224) calls `lua_newstate(LuaAllocator, 0)` and then `lua_atpanic(sfc::script::lua::panic)`.
- Libraries are opened selectively. `Instance::includeIO` (0x31aa50) and `Instance::includePackage` (0x31aa54) are empty bodies. `includeDebug` (0x31aff0) calls `luaopen_debug`. No `luaopen_io`, `luaopen_os` or `luaopen_package` exists in the binary.
- `luaB_dofile` and `luaB_loadfile` are absent. `luaopen_base` (0x84dbfc) registers `base_funcs` through `luaL_register`, and `lbaselib.c` lines 450 and 455 list those two entries, so the DH2 base table omits them. `luaL_loadfile` is also absent. Scripts are loaded through `Instance::loadFile(IFileStream&)` with a custom chunk reader.
- Upstream names with no binary symbol (147 in total) include `luaL_loadfile`, `luaB_loadfile` and `luaB_dofile` (above), `luaL_getn` and `luaL_setn`, and file-local helpers that the optimiser inlined (for example `DumpChar`, `LoadChar`, `statement`, `expr`, `rehash`). `luaL_getn` and `luaL_setn` are compiled only under `LUA_COMPAT_GETN`, which upstream `luaconf.h` `#undef`s by default, so their absence is expected and is not Gameloft evidence.

### 3.2 Box2D

- All 318 Box2D rows are either upstream name matches (294) or compiler-generated destructors (24). The 24 are `D0`/`D1` destructors for classes without a user-declared destructor, such as `b2CircleDef`, `b2PolygonShape`, `b2NullContact` and the joint classes. The vendored sources do not define them.
- The 202 upstream names with no binary symbol are inline header members (`b2Body::GetPosition`, `b2World::SetGravity`), the `Fixed.h` fixed-point classes (not compiled), and file-local helpers. The DH2 build is float, not fixed-point.
- The settings in 2.2 change the constants used by `b2World`, `b2BroadPhase` and `b2PairManager`. Name matches for those functions are valid, but their bytes depend on the DH2 settings.

### 3.3 gameswf

Evidence, strongest first. Counts are binary functions.

1. Version string: `"LINUX"` against upstream `"WIN " __DATE__ " " __TIME__`.
2. Memory layer: `gameswf::malloc_internal(unsigned, swf::MemHint[, char const*, int])`, `realloc_internal` and `free_internal(void*, unsigned)`, and `init/close/dump_memory_allocator`. None exist in the vendored tree, which uses `tu_malloc`. `swf::MemHint` does not occur anywhere in the vendored tree.
3. Character and display changes: `character::hit_test(float,float)`, `set_drag_state(const drag_state&)` (upstream `root::set_drag_state` takes a non-const reference), `get_drag_state`, `do_mouse_drag`, `recycle`, `set_effect`, `update_world_matrix`, `update_world_cxform`, the `*_root_change` pair, `attach_scene_node` and `detach_scene_node`.
4. Filter engine: `filter_engine` (about 15 methods), `create_filter_engine`, `close_filter_engine`, `gaussian_kernel`, and `filter_texture_cache` methods. None exist in the vendored tree.
5. Loader hooks: `define_native_image_loader`, `define_debug_id_loader`, `substitute_bitmap_character`, `register_texture_loader_callback`, `is_tag_loaders_initialized`, `get/set_verbose_dlist`, and `movie_def_impl::has_init_actions`.
6. Glitch render backend (103 rows): `render_handler_glitch` (about 50), `scene_node` (14) and `texture_cache` (13), with DWARF units `gameswf_render_handler_glitch.cpp`, `gameswf_scene_node.cpp` and `gameswf_texture_cache.cpp`.
7. Render-handler name collisions (21 rows): `bitmap_info_ogl::*` and `render_handler_glitch::fill_style::set_bitmap` have the same names as the OGL, OGLES, D3D and Xbox handlers, which are not built. Their signatures use glitch types (for example `glitch::video::IVideoDriver*`), so they are Gameloft code. They must not be ledgered upstream.
8. Namespace change (34 rows): functions that the vendored tree defines globally (`string_printf`, `tu_file.cpp` memory and std callbacks, `container.cpp` encode) or in `utf8::` and `image::` (`decode_next_unicode_character`, `encode_unicode_character`, `read_jpeg`, `create_rgb`, `write_tga`) appear in the binary as `gameswf::`. The DH2 base library is therefore not namespace-identical to the vendored tree.
9. Game code in the bucket (101 rows): `RenderFX::*` and related SWF glue are game code, not gameswf. The inventory rule in `tools/decomp_inventory.py` line 34 matches the `RenderFX` prefix into `lib-gameswf`, so they should move to a game-ui category.
10. Track A overlays: `port/engine-ui/overlays/` replaces seven stock units (`gameswf_font.cpp`, `gameswf_button.cpp`, `gameswf_root.cpp`, `gameswf_sprite.cpp`, `gameswf_character.cpp`, `gameswf_object.cpp`, `gameswf_text.cpp`) with DH2 integration code that includes the `swf_*.hpp` game headers. The 219 functions they define are not in the absent set, so the overlays patch stock names rather than cover the Gameloft-only ones.

Of the 426 unmatched gameswf rows outside the glitch, RenderFX and wrapper groups, 194 have a bare name that appears nowhere in the vendored tree. Those are the strongest candidates for Gameloft code. The other 232 are constructors/destructors or names that exist on other classes. The "absent" bucket also contains scanner misses: `tu_string::operator+=` is declared in `base/container.h` and was not matched. Treat the 284 figure as an upper bound.

## 4. Exact upstream copies in the repository

| Library | Path | Verification | Missing or different |
|---|---|---|---|
| Lua 5.1.4 | `port/lua-runtime/vendor/lua-5.1.4/` (src, COPYRIGHT) and `port/adam-script-runtime/vendor/lua-5.1.4/` (full, incl. test/) | All 56 manifest hashes match after CRLF to LF. The two `src/` trees are byte-identical. | The DH2 float `LUA_NUMBER` lives only in the `adam-script-runtime/lua/` copy. Four files there differ (section 2.1). The `io`, `os`, `package` and `linit` sources are present but not built. |
| Box2D 2.0.1 | `port/physics-backend/box2d-2.0.1/` (65 files) | `b2_version` confirmed. The README claims 63 files match the official archive (SHA-1 `27a1a0bd...`); not re-checked. | `reference/provenance.json` (named in the README) is absent; only `reference/original-functions.json` exists. `b2Collision.cpp` is vendored but not built. |
| gameswf r1714 | `port/engine-ui/vendor/gameswf1714/` (`base/`, `gameswf/`, `net/`) | No manifest. The pin is a comment in `gameswf_sources.cmake`. | `reference/gameswf-core` (the fork patches) is absent. 27 cmake units are not built. Six Gameloft units are not in the tree. |

## 5. Matching method and limits

- Each binary row's demangled name was reduced to a `Scope::name` key (template arguments, return types and clone suffixes removed). Each vendored `.c`, `.cpp`, `.h`, `.hpp` and `.inl` file was scanned with a brace-aware parser for function definitions, keyed the same way. Exact keys are matches. A namespace-only fallback handles `gameswf::` free functions.
- A name match is not a body match. Name-matched bodies were compared by size only: binary bytes against source token count. The median is 1.73 bytes per token for Lua, 1.48 for Box2D and 1.90 for gameswf. Outside a 4x band around the median are 17 Lua, 38 Box2D and about 210 gameswf rows. Rows under 8 bytes (42 Box2D, 181 gameswf) are not gated. Examples: `character::set_matrix` (96 bytes against 4 tokens) and `matrix::concatenate` (48 bytes against 300 tokens). Rows like these should not be ledgered upstream until checked; the mismatch may be a wrong match, an inlined body, or a Gameloft change.
- No ARM toolchain was used. The Hex-Rays export and the symbols were not compared against a compiled upstream object file. A per-function check needs an ARMv7 build of the vendored source.
- The scanner and the DWARF unit list are heuristics. Both can miss or over-count a function (section 3.3).

## 6. Recommended plan

1. Create `queue.csv` and `ledger.csv` for `upstream-vendored-lua`, `upstream-vendored-box2d` and `upstream-vendored-gameswf`. `reports/decomp-reconstruction/categories.json` defines them, but no `port/decomp-reconstruction/upstream-vendored-*` folder exists yet.

2. Ledger as `upstream`, with the matched source file as `source_file`. The path is relative to `port/decomp-reconstruction`, for example `../physics-backend/box2d-2.0.1/Source/Dynamics/b2Body.cpp`:
   - Box2D: the 52 unclaimed rows. Keep the 266 claimed rows as they are. Rows that touch `b2World`, `b2BroadPhase` or `b2PairManager` need the DH2 settings noted.
   - Lua: the 456 unclaimed exact rows. 440 pass the size gate. The other 16 are tiny or flagged; review them before ledgering. Build with the float `LUA_NUMBER` configuration.
   - gameswf: the 1786 unclaimed exact rows (1395 pass the size gate) and the 34 namespace-fallback rows, after review. Exclude the 21 render-handler name collisions. The 142 constructor/destructor rows: ledger `upstream` only where the class is upstream and the function is compiler-generated. Otherwise reconstruct.

3. Reconstruct (Gameloft-specific, no upstream body):
   - Lua: the 58 unclaimed `sfc::script::lua` wrappers. The other 47 wrappers and `LuaAllocator` are already claimed.
   - gameswf: the 277 unclaimed absent-from-tree rows (section 3.3, items 2 to 5 first), the 102 unclaimed glitch/scene rows (move them to the glitch categories rather than gameswf), and the 21 name-collision rows.
   - The 98 unclaimed `RenderFX` rows belong in game-ui, not gameswf. Fix the bucket rule in `tools/decomp_inventory.py` line 34 and regenerate the inventory.

4. Verify before the ledger is treated as final. An ARMv7 build of the vendored sources would let the sizes be compared per function. No ARM cross toolchain was found on PATH or in this worktree. Until then, mark name-only `upstream` rows with a note, as the Musepack precedent in `port/decomp-reconstruction/STATUS.md` does.

5. Provenance: add `reference/provenance.json` for Box2D as the README describes, add a hash manifest for `gameswf1714`, and restore or locate `reference/gameswf-core`. Make the Lua manifest hashes CRLF-independent (or add `.gitattributes`).

6. Build configuration: the Lua ledger needs `LUA_NUMBER float` (the `adam-script-runtime/lua/luaconf.h` setting). Box2D needs the DH2 settings already in the vendored tree. gameswf's `base/` namespace should be decided before the upstream rows are compiled, because 34 rows depend on it.

## Appendix A: non-upstream names with addresses

Up to 100 rows per library, sorted by address. The `claimed` column is 1 when a port manifest already covers the address. Lua lists the first 100 of its 105 `sfc::script::lua` wrapper rows. `LuaAllocator` (0x310500, claimed) is the 106th non-upstream Lua row and is described in 3.1. gameswf lists the first 100 of its 284 absent-from-tree rows. Box2D lists all 24 destructor rows. The full sets can be regenerated from `inventory.csv` with the bucket rules above.

### Lua: Gameloft `sfc::script::lua` wrapper functions

105 rows in this class; showing 100.

| elf_address | bytes | claimed | name |
|---|---:|:-:|---|
| 0x319228 | 48 | 1 | `sfc::script::lua::Arguments::~Arguments()` |
| 0x319260 | 20 | 0 | `sfc::script::lua::Arguments::~Arguments()` |
| 0x31927c | 48 | 0 | `sfc::script::lua::Arguments::~Arguments()` |
| 0x3192b4 | 48 | 1 | `sfc::script::lua::Arguments::Arguments()` |
| 0x3192ec | 48 | 0 | `sfc::script::lua::Arguments::Arguments()` |
| 0x3193e8 | 92 | 1 | `sfc::script::lua::Value::~Value()` |
| 0x319454 | 20 | 0 | `sfc::script::lua::Value::~Value()` |
| 0x3194e0 | 80 | 0 | `sfc::script::lua::Value::Value()` |
| 0x3196ec | 480 | 1 | `sfc::script::lua::Arguments::Arguments(lua_State*, int)` |
| 0x3198e0 | 480 | 0 | `sfc::script::lua::Arguments::Arguments(lua_State*, int)` |
| 0x319af4 | 296 | 1 | `sfc::script::lua::Binder::bindMethod(char const*, void (*)(sfc::script::lua::Arguments const&, sfc::script::lu` |
| 0x319c44 | 92 | 0 | `sfc::script::lua::Binder::_bindMethod(char const*, void*, void*)` |
| 0x319ca8 | 744 | 0 | `sfc::script::lua::Binder::__methodCallback(lua_State*)` |
| 0x319fd0 | 580 | 1 | `sfc::script::lua::Binder::__smethodCallback(lua_State*)` |
| 0x31a250 | 416 | 1 | `sfc::script::lua::Binder::__functionCallback(lua_State*)` |
| 0x31a414 | 80 | 0 | `sfc::script::lua::Value::Value(void*)` |
| 0x31a46c | 96 | 0 | `sfc::script::lua::Arguments::pushPointer(void*)` |
| 0x31a4d4 | 304 | 1 | `sfc::script::lua::Binder::bindFunction(char const*, void (*)(sfc::script::lua::Arguments const&, sfc::script::` |
| 0x31a68c | 36 | 0 | `sfc::script::lua::Error::~Error()` |
| 0x31a6c0 | 36 | 0 | `sfc::script::lua::Error::~Error()` |
| 0x31a6f4 | 20 | 0 | `sfc::script::lua::Error::~Error()` |
| 0x31a714 | 112 | 0 | `sfc::script::lua::Error::Error(sfc::script::lua::Error const&)` |
| 0x31a78c | 112 | 0 | `sfc::script::lua::Error::Error(sfc::script::lua::Error const&)` |
| 0x31a804 | 76 | 1 | `sfc::script::lua::Error::Error()` |
| 0x31a858 | 76 | 0 | `sfc::script::lua::Error::Error()` |
| 0x31a8ac | 72 | 1 | `sfc::script::lua::Error::setError(lua_State*, int)` |
| 0x31a918 | 96 | 0 | `sfc::script::lua::Error::Error(lua_State*, int)` |
| 0x31a980 | 96 | 0 | `sfc::script::lua::Error::Error(lua_State*, int)` |
| 0x31a9e8 | 8 | 1 | `sfc::script::lua::panic(lua_State*)` |
| 0x31a9f0 | 40 | 1 | `sfc::script::lua::Instance::Instance(lua_State*)` |
| 0x31aa20 | 40 | 1 | `sfc::script::lua::Instance::Instance(lua_State*)` |
| 0x31aa50 | 4 | 0 | `sfc::script::lua::Instance::includeIO()` |
| 0x31aa54 | 4 | 0 | `sfc::script::lua::Instance::includePackage()` |
| 0x31aa78 | 156 | 1 | `sfc::script::lua::Instance::pCall_(unsigned int, sfc::script::lua::ReturnValues&)` |
| 0x31ab14 | 56 | 0 | `sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::ReturnValues&)` |
| 0x31ab4c | 156 | 1 | `sfc::script::lua::Instance::pCall(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&)` |
| 0x31abe8 | 60 | 1 | `sfc::script::lua::Instance::pCall(char const*, sfc::script::lua::Arguments const&, sfc::script::lua::ReturnVal` |
| 0x31ac24 | 192 | 0 | `sfc::script::lua::Instance::execFile(IFileStream&, sfc::script::lua::ReturnValues&)` |
| 0x31acf4 | 228 | 1 | `sfc::script::lua::Instance::loadFile(StreamBuffer&)` |
| 0x31ade8 | 224 | 1 | `sfc::script::lua::Instance::loadFile(IFileStream&)` |
| 0x31aed8 | 48 | 0 | `sfc::script::lua::Instance::setGlobal(char const*, sfc::script::lua::Value const&)` |
| 0x31af08 | 180 | 1 | `sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*), sfc::script::lua::Arguments con` |
| 0x31afbc | 52 | 0 | `sfc::script::lua::Instance::registerFunction(char const*, int (*)(lua_State*))` |
| 0x31aff0 | 8 | 0 | `sfc::script::lua::Instance::includeDebug()` |
| 0x31aff8 | 8 | 1 | `sfc::script::lua::Instance::includeTable()` |
| 0x31b000 | 8 | 1 | `sfc::script::lua::Instance::includeMath()` |
| 0x31b008 | 8 | 1 | `sfc::script::lua::Instance::includeString()` |
| 0x31b010 | 8 | 1 | `sfc::script::lua::Instance::includeBase()` |
| 0x31b018 | 336 | 0 | `sfc::script::lua::Instance::_chunkReader(lua_State*, void*, unsigned int*)` |
| 0x31b180 | 60 | 1 | `sfc::script::lua::Instance::~Instance()` |
| 0x31b1c4 | 20 | 0 | `sfc::script::lua::Instance::~Instance()` |
| 0x31b1e0 | 60 | 1 | `sfc::script::lua::Instance::~Instance()` |
| 0x31b224 | 56 | 1 | `sfc::script::lua::newstate()` |
| 0x31b268 | 56 | 1 | `sfc::script::lua::Instance::Instance()` |
| 0x31b2a8 | 56 | 1 | `sfc::script::lua::Instance::Instance()` |
| 0x31b308 | 144 | 1 | `sfc::script::lua::ReturnValues::_doReturn(lua_State*)` |
| 0x31b398 | 56 | 1 | `sfc::script::lua::ReturnValues::~ReturnValues()` |
| 0x31b3d8 | 20 | 0 | `sfc::script::lua::ReturnValues::~ReturnValues()` |
| 0x31b3f4 | 56 | 0 | `sfc::script::lua::ReturnValues::~ReturnValues()` |
| 0x31b434 | 52 | 1 | `sfc::script::lua::ReturnValues::ReturnValues()` |
| 0x31b470 | 52 | 0 | `sfc::script::lua::ReturnValues::ReturnValues()` |
| 0x31b4ac | 196 | 1 | `sfc::script::lua::ReturnValues::_addFromStack(lua_State*, int)` |
| 0x31b57c | 4 | 0 | `sfc::script::lua::Binder::~Binder()` |
| 0x31b580 | 32 | 0 | `sfc::script::lua::Value::getPointer() const` |
| 0x31b5a0 | 32 | 0 | `sfc::script::lua::Value::getUserData() const` |
| 0x31b5c0 | 12 | 0 | `sfc::script::lua::Value::setNil()` |
| 0x31b5cc | 28 | 0 | `sfc::script::lua::Value::setBool(bool)` |
| 0x31b5e8 | 16 | 1 | `sfc::script::lua::Value::setNumber(float)` |
| 0x31b5f8 | 16 | 0 | `sfc::script::lua::Value::setPointer(void*)` |
| 0x31b608 | 16 | 0 | `sfc::script::lua::Value::setUserData(sfc::script::lua::UserData*)` |
| 0x31bb54 | 36 | 0 | `sfc::script::lua::Binder::~Binder()` |
| 0x31bbf0 | 144 | 1 | `sfc::script::lua::Value::getNumber() const` |
| 0x31bc80 | 172 | 1 | `sfc::script::lua::Value::getBool() const` |
| 0x31c368 | 100 | 0 | `sfc::script::lua::Value::operator=(sfc::script::lua::Value const&)` |
| 0x31c46c | 28 | 1 | `sfc::script::lua::Value::setString(char const*)` |
| 0x31c49c | 336 | 1 | `sfc::script::lua::Value::getString() const` |
| 0x31c634 | 60 | 0 | `sfc::script::lua::Value::Value(sfc::script::lua::Value const&)` |
| 0x31c89c | 60 | 0 | `sfc::script::lua::Value::Value(sfc::script::lua::Value const&)` |
| 0x31c9c8 | 228 | 1 | `sfc::script::lua::Value::_setFromStack(lua_State*, int)` |
| 0x31cac4 | 304 | 1 | `sfc::script::lua::Value::_pushOnStack(lua_State*) const` |
| 0x31ce84 | 748 | 0 | `sfc::script::lua::Value::allocValueList()` |
| 0x31d194 | 960 | 0 | `sfc::script::lua::Value::freeValueList(std::vector<sfc::script::lua::Value, std::allocator<sfc::script::lua::V` |
| 0x33dcb0 | 4 | 0 | `sfc::script::lua::UserData::~UserData()` |
| 0x33dcb4 | 12 | 0 | `sfc::script::lua::UserData::getUDTypeName() const` |
| 0x33dcc4 | 4 | 0 | `sfc::script::lua::UserData::createBindings(sfc::script::lua::Binder&)` |
| 0x33e2f0 | 36 | 0 | `sfc::script::lua::UserData::~UserData()` |
| 0x37baf8 | 84 | 1 | `sfc::script::lua::Arguments::operator[](unsigned int) const` |
| 0x37c764 | 60 | 0 | `sfc::script::lua::Value::Value(bool)` |
| 0x37c7e4 | 96 | 1 | `sfc::script::lua::ReturnValues::pushBoolean(bool)` |
| 0x37c84c | 60 | 0 | `sfc::script::lua::Value::Value(char const*)` |
| 0x37c8cc | 96 | 0 | `sfc::script::lua::ReturnValues::pushString(char const*)` |
| 0x37c978 | 60 | 0 | `sfc::script::lua::Value::Value(sfc::script::lua::UserData*)` |
| 0x37c9f8 | 96 | 0 | `sfc::script::lua::ReturnValues::pushUserData(sfc::script::lua::UserData*)` |
| 0x37ca9c | 60 | 1 | `sfc::script::lua::Value::Value(int)` |
| 0x37cb24 | 96 | 1 | `sfc::script::lua::ReturnValues::pushInteger(int)` |
| 0x37cc3c | 60 | 0 | `sfc::script::lua::Value::Value(float)` |
| 0x37ccbc | 96 | 0 | `sfc::script::lua::ReturnValues::pushNumber(float)` |
| 0x386c20 | 196 | 0 | `void sfc::script::lua::Binder::bindMethod<TestUD>(char const*, void (TestUD::*)(sfc::script::lua::Arguments co` |
| 0x386f28 | 96 | 0 | `sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData*)` |
| 0x38d798 | 16 | 1 | `sfc::script::lua::Value::getUInteger() const` |

### gameswf: non-upstream functions absent from the vendored tree (first 100 by address)

284 rows in this class; showing 100.

| elf_address | bytes | claimed | name |
|---|---:|:-:|---|
| 0x41fe84 | 80 | 0 | `gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*)` |
| 0x43c404 | 56 | 0 | `gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*)` |
| 0x7521cc | 20 | 0 | `gameswf::tu_string::operator+=(char const*)` |
| 0x752a18 | 276 | 0 | `gameswf::format_utf_text(char const*, char*, int, bool)` |
| 0x752b2c | 4 | 0 | `gameswf::init_memory_allocator()` |
| 0x752b30 | 4 | 0 | `gameswf::close_memory_allocator()` |
| 0x752b34 | 4 | 0 | `gameswf::dump_memory_allocator()` |
| 0x752b38 | 4 | 0 | `gameswf::free_internal(void*, unsigned int)` |
| 0x752b3c | 8 | 0 | `gameswf::malloc_internal(unsigned int, swf::MemHint, char const*, int)` |
| 0x752b4c | 60 | 0 | `gameswf::realloc_internal(void*, unsigned int, unsigned int, swf::MemHint, char const*, int)` |
| 0x752b9c | 8 | 0 | `gameswf::malloc_internal(unsigned int, swf::MemHint)` |
| 0x752bac | 52 | 0 | `gameswf::realloc_internal(void*, unsigned int, unsigned int, swf::MemHint)` |
| 0x752c0c | 12 | 0 | `gameswf::as_object::_typeof()` |
| 0x752c24 | 4 | 0 | `gameswf::as_object::notify_set_member(gameswf::tu_stringi const&, gameswf::as_value const&)` |
| 0x752c48 | 8 | 0 | `gameswf::character::hit_test(float, float)` |
| 0x752d0c | 4 | 0 | `gameswf::character::set_drag_state(gameswf::character::drag_state const&)` |
| 0x752d2c | 4 | 0 | `gameswf::character::set_display_bounds(int, int, int, int)` |
| 0x752d84 | 4 | 0 | `gameswf::character::construct()` |
| 0x753120 | 112 | 0 | `gameswf::tu_string::operator+=(gameswf::tu_string const&)` |
| 0x753e34 | 140 | 0 | `gameswf::character::get_world_cxform_root_change()` |
| 0x753ee8 | 140 | 0 | `gameswf::character::get_world_matrix_root_change()` |
| 0x754824 | 104 | 0 | `gameswf::character::get_drag_state(gameswf::character::drag_state*)` |
| 0x75488c | 196 | 0 | `gameswf::character::update_world_cxform()` |
| 0x754958 | 176 | 0 | `gameswf::character::recycle(gameswf::character*, int)` |
| 0x754c34 | 212 | 0 | `gameswf::character::update_world_matrix()` |
| 0x755a10 | 200 | 0 | `gameswf::display_list::construct()` |
| 0x755cf8 | 168 | 0 | `gameswf::character::set_effect(gameswf::effect const&)` |
| 0x756d88 | 400 | 0 | `gameswf::filter_engine::blend(gameswf::filter_engine::raster&, gameswf::filter_engine::raster&)` |
| 0x756f18 | 4 | 0 | `gameswf::filter_engine::apply_glow(gameswf::filter_engine::params&)` |
| 0x7572a0 | 312 | 0 | `gameswf::filter_engine::read_frame_buffer(int, int, int, int)` |
| 0x75756c | 60 | 0 | `gameswf::create_filter_engine()` |
| 0x7575b0 | 108 | 0 | `gameswf::filter_engine::prepare(gameswf::filter_engine::params&)` |
| 0x7576d4 | 164 | 0 | `gameswf::filter_engine::apply_shadow(gameswf::filter_engine::params&)` |
| 0x757840 | 28 | 0 | `gameswf::gaussian_kernel(float*, int)` |
| 0x75792c | 80 | 0 | `gameswf::filter_engine::apply_blur_v(gameswf::filter_engine::params&)` |
| 0x757cd8 | 80 | 0 | `gameswf::filter_engine::apply_blur_h(gameswf::filter_engine::params&)` |
| 0x75807c | 100 | 0 | `gameswf::filter_engine::copy(gameswf::filter_engine::raster&, gameswf::filter_engine::raster&)` |
| 0x7580f8 | 72 | 0 | `gameswf::filter_engine::clear(gameswf::filter_engine::raster&)` |
| 0x758140 | 176 | 0 | `gameswf::filter_engine::apply(gameswf::filter_engine::params&)` |
| 0x75830c | 204 | 0 | `gameswf::filter_engine::collect_filtered_characters(gameswf::character*)` |
| 0x758434 | 124 | 0 | `gameswf::filter_engine::display_cached(gameswf::character*)` |
| 0x759140 | 68 | 0 | `gameswf::close_filter_engine()` |
| 0x75918c | 1104 | 0 | `gameswf::filter_engine::run(gameswf::root*)` |
| 0x7599cc | 36 | 0 | `gameswf::generic_character::is(int) const` |
| 0x7599f8 | 28 | 0 | `gameswf::generic_character::hit_test(float, float)` |
| 0x759a14 | 28 | 0 | `gameswf::bitmap_character::is(int) const` |
| 0x759afc | 8 | 0 | `gameswf::execute_tag::get_depth() const` |
| 0x759b04 | 8 | 0 | `gameswf::execute_tag::get_action_offset() const` |
| 0x759b0c | 8 | 0 | `gameswf::execute_tag::is_place_tag() const` |
| 0x759b14 | 8 | 0 | `gameswf::place_object_2::get_depth() const` |
| 0x759b1c | 8 | 0 | `gameswf::place_object_2::is_place_tag() const` |
| 0x759b84 | 24 | 0 | `gameswf::get_verbose_dlist()` |
| 0x759be4 | 24 | 0 | `gameswf::set_verbose_dlist(bool)` |
| 0x759c64 | 16 | 0 | `gameswf::ref_counted::add_ref() const` |
| 0x759cfc | 152 | 0 | `gameswf::substitute_bitmap_character(gameswf::tu_string&, gameswf::bitmap_character_def*, gameswf::movie_defin` |
| 0x759d9c | 72 | 0 | `gameswf::define_debug_id_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)` |
| 0x75a02c | 16 | 0 | `void gameswf::destructp<unsigned char>(unsigned char const*, unsigned int)` |
| 0x75a1bc | 44 | 0 | `void gameswf::destruct<gameswf::image_rgb>(gameswf::image_rgb const*)` |
| 0x75a1e8 | 44 | 0 | `void gameswf::destruct<gameswf::image_rgba>(gameswf::image_rgba const*)` |
| 0x75a214 | 44 | 0 | `void gameswf::destruct<gameswf::ref_counted>(gameswf::ref_counted const*)` |
| 0x75a240 | 24 | 0 | `gameswf::ref_counted::drop_ref()` |
| 0x75a88c | 80 | 0 | `gameswf::ref_counted::get_weak_proxy() const` |
| 0x75b9f4 | 52 | 0 | `gameswf::counted_buffer::drop_ref()` |
| 0x75c2cc | 124 | 0 | `gameswf::permanent_string_cache::get(gameswf::tu_string const&)` |
| 0x75cb14 | 84 | 0 | `void gameswf::destruct<gameswf::character::custom>(gameswf::character::custom const*)` |
| 0x75d89c | 60 | 0 | `gameswf::array<gameswf::swf_event*>::release_buffer()` |
| 0x75dbe4 | 68 | 0 | `gameswf::ref_counted::detach_weak_proxy()` |
| 0x75e3a8 | 308 | 0 | `gameswf::character::do_mouse_drag()` |
| 0x75fbf8 | 288 | 0 | `gameswf::define_native_image_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)` |
| 0x760940 | 164 | 0 | `gameswf::listener::alive()` |
| 0x7613b8 | 44 | 0 | `void gameswf::destruct<gameswf::shape_character_def>(gameswf::shape_character_def const*)` |
| 0x7635c8 | 152 | 0 | `gameswf::tu_string::get_hashi() const` |
| 0x7636b4 | 8 | 0 | `gameswf::movie_def_impl::has_init_actions()` |
| 0x763dc0 | 44 | 0 | `void gameswf::destruct<gameswf::jpeg::input>(gameswf::jpeg::input const*)` |
| 0x763e6c | 44 | 0 | `void gameswf::destruct<gameswf::execute_tag>(gameswf::execute_tag const*)` |
| 0x764c5c | 92 | 0 | `gameswf::is_tag_loaders_initialized()` |
| 0x76c728 | 24 | 0 | `gameswf::as_stage::is(int) const` |
| 0x76c768 | 16 | 0 | `gameswf::get_standard_property_map()` |
| 0x76c7e4 | 8 | 0 | `gameswf::player::get_stage() const` |
| 0x76c870 | 56 | 0 | `void gameswf::destruct<gameswf::permanent_string>(gameswf::permanent_string const*)` |
| 0x76c8ac | 228 | 0 | `gameswf::permanent_string_cache::clear()` |
| 0x76c9ac | 44 | 0 | `void gameswf::destruct<gameswf::bitmap_glyph_provider>(gameswf::bitmap_glyph_provider const*)` |
| 0x76c9d8 | 48 | 0 | `gameswf::player::clear_unused_instances()` |
| 0x76cb44 | 188 | 0 | `gameswf::player::create_edit_text_character(gameswf::edit_text_character_def*, gameswf::character*, int)` |
| 0x76cc00 | 188 | 0 | `gameswf::player::create_generic_character(gameswf::character_def*, gameswf::character*, int)` |
| 0x76ccf0 | 196 | 0 | `gameswf::player::create_sprite_instance(gameswf::movie_definition_sub*, gameswf::root*, gameswf::character*, i` |
| 0x76d594 | 20 | 0 | `gameswf::get_static_string(gameswf::tu_string const&)` |
| 0x76d724 | 436 | 0 | `gameswf::as_stage::get_member(gameswf::tu_stringi const&, gameswf::as_value*)` |
| 0x76ef5c | 176 | 0 | `gameswf::register_as_native_function(char const*, void (*)(gameswf::fn_call const&))` |
| 0x773268 | 344 | 0 | `gameswf::player::notify_unused_instance(gameswf::character*)` |
| 0x7737d4 | 4 | 0 | `gameswf::bitmap_info::unlayout()` |
| 0x7737dc | 4 | 0 | `gameswf::bitmap_info::set_writable()` |
| 0x7737e0 | 8 | 0 | `gameswf::bitmap_info::lock()` |
| 0x7737e8 | 4 | 0 | `gameswf::bitmap_info::unlock()` |
| 0x773800 | 4 | 0 | `gameswf::bitmap_info::set_min_filter(gameswf::bitmap_info::filter_mode)` |
| 0x773804 | 4 | 0 | `gameswf::bitmap_info::set_mag_filter(gameswf::bitmap_info::filter_mode)` |
| 0x773808 | 8 | 0 | `gameswf::bitmap_info::is_layout() const` |
| 0x773810 | 20 | 0 | `gameswf::bitmap_info::get_internal_width() const` |
| 0x773824 | 20 | 0 | `gameswf::bitmap_info::get_internal_height() const` |
| 0x7738a4 | 208 | 0 | `gameswf::render_cache::is_valid(gameswf::character*)` |

### Box2D: functions with no upstream source body (compiler-generated destructors)

24 rows in this class; showing 24.

| elf_address | bytes | claimed | name |
|---|---:|:-:|---|
| 0x46e6b4 | 4 | 0 | `b2CircleDef::~b2CircleDef()` |
| 0x46e6b8 | 4 | 0 | `b2PolygonDef::~b2PolygonDef()` |
| 0x46ea08 | 36 | 0 | `b2CircleDef::~b2CircleDef()` |
| 0x46ea3c | 36 | 0 | `b2PolygonDef::~b2PolygonDef()` |
| 0x7e5444 | 44 | 1 | `b2PolygonShape::~b2PolygonShape()` |
| 0x7e602c | 44 | 1 | `b2PolygonShape::~b2PolygonShape()` |
| 0x7e65d0 | 4 | 1 | `b2NullContact::~b2NullContact()` |
| 0x7e807c | 12 | 1 | `b2NullContact::~b2NullContact()` |
| 0x7e9668 | 44 | 1 | `b2CircleShape::~b2CircleShape()` |
| 0x7e9a60 | 44 | 1 | `b2CircleShape::~b2CircleShape()` |
| 0x7e9f90 | 44 | 1 | `b2ContactManager::~b2ContactManager()` |
| 0x7e9fc8 | 52 | 1 | `b2ContactManager::~b2ContactManager()` |
| 0x7eb838 | 4 | 1 | `b2MouseJoint::~b2MouseJoint()` |
| 0x7eb83c | 12 | 1 | `b2MouseJoint::~b2MouseJoint()` |
| 0x7eeff8 | 4 | 1 | `b2PrismaticJoint::~b2PrismaticJoint()` |
| 0x7eeffc | 12 | 1 | `b2PrismaticJoint::~b2PrismaticJoint()` |
| 0x7f04f8 | 4 | 1 | `b2PulleyJoint::~b2PulleyJoint()` |
| 0x7f04fc | 12 | 1 | `b2PulleyJoint::~b2PulleyJoint()` |
| 0x7f2bd4 | 4 | 1 | `b2RevoluteJoint::~b2RevoluteJoint()` |
| 0x7f2bd8 | 12 | 1 | `b2RevoluteJoint::~b2RevoluteJoint()` |
| 0x7fa080 | 4 | 0 | `b2DistanceJoint::~b2DistanceJoint()` |
| 0x7fa084 | 12 | 0 | `b2DistanceJoint::~b2DistanceJoint()` |
| 0x7fb45c | 4 | 0 | `b2GearJoint::~b2GearJoint()` |
| 0x7fb460 | 12 | 0 | `b2GearJoint::~b2GearJoint()` |

