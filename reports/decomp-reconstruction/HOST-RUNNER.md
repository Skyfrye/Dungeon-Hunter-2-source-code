# Windows host runner (owner W, 2026-10-16)

The reconstructed game runs natively on this Windows machine (MinGW-w64 GCC 16.2, 64-bit), headless or in a window, with a fixed timestep,
scripted input, a state log, gdb, and a guard-page heap that finds memory errors where the toolchain has no AddressSanitizer.

Result on 2026-10-16 (all four builds: Release, -O0 with asserts, guard-page heap, UBSan-trap plus guard-page heap): boot -> GSInit -> menus -> title tap -> main menu -> Start -> Single player -> loading -> first level (`001_swamp.mlx`, 51
characters, player 165/165 HP) -> hero walking, 2500 frames, exit code 0, in the Release build and in the guard-page build. The windowed runner
draws the same session through ANGLE (GLES2 on D3D11): title, main menu, loading and level 1 render correctly (1200x540 screenshots taken by the script).

## Layout

| Path | What |
| --- | --- |
| `port/decomp-reconstruction/host-runner/` | the runner sources, `CMakeLists.txt`, `scripts/*.txt` (input scripts), `symbolize.py` |
| `CMakeLists.txt` option `DH2_HOST_RUNNER` (OFF by default) | adds the `host-runner` subdirectory and defines `DH2_HOST_RUNNER=1` for every library |
| `build/own-w`, `build/own-w-dbg`, `build/own-w-ubsan` | the three build directories used here (untracked) |
| `build/own-w/data/files` | the game data (a copy of the emulator data folder, made with `robocopy`; the game writes savegames into it). Never tracked. |

Targets (all link every library whole-archive, like `libdh2.so`, because the game relies on static initialisers such as `IrrFactory::s_factory`):

* `dh2_win_headless`: no window, GL calls go to a table of stand-ins (`host_gl_null.cpp`), fixed clock.
* `dh2_win_headless_ph`: the same on a guard-page heap (`host_pageheap.cpp`), the AddressSpace-style memory checker.
* `dh2_win_window`: Win32 window plus an EGL/GLES2 context from ANGLE, wall clock by default, mouse = touch.

## Build

```
cmake -S port/decomp-reconstruction -B build/own-w -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS=-g -DCMAKE_C_FLAGS=-g -DDH2_HOST_RUNNER=ON
cd build/own-w && ninja dh2_win_headless dh2_win_headless_ph dh2_win_window      # about 5 minutes cold on 16 cores
# gdb build (-O0): same with -B build/own-w-dbg -DCMAKE_BUILD_TYPE=Debug -DCMAKE_CXX_FLAGS="-g -O0" -DCMAKE_C_FLAGS="-g -O0"
```

Never run ninja in `build/tb-int`. Do not build `all` (tests) in these directories.

## Data

The data folder is the one `tools/trackb/boot/push_data.sh` pushes to the emulator (`Dungeon-Hunter-2-HD-v1-0-2-cache.zip`, extracted to
`build/own-r/data/com.gameloft.android.GAND.GloftD2SS/files`). The runner takes it as `--data <dir>`; point it at a copy, because the game saves into it:

```
robocopy build/own-r/data/com.gameloft.android.GAND.GloftD2SS/files build/own-w/data/files /E /MT:16
```

(Language: the saved "Language" option in this data selects the Russian text pack, as on the emulator. `--lang N` only sets the phone language the Java side
reports.)

## Run

```
build/own-w/host-runner/dh2_win_headless.exe --data build/own-w/data/files --size 2400x1080 --frames 2500 --out build/own-w/run1 --log-every 100 \
    --script port/decomp-reconstruction/host-runner/scripts/new_game.txt
```

Options: `--data` (required), `--script`, `--frames`, `--dt <ms of game time per frame, default 33>`, `--log-every N`, `--out <dir>`, `--size WxH`,
`--script-scale f` (scripts are written for 2400x1080, the emulator surface), `--lang N`, `--realtime` / `--fixed`, `--verbose` (game chatter on the console),
`--jni-log` (print every Java method the natives call), `--angle <dir>` (window only). Environment: `DH2_GL_DUMP=1|2` prints every linked GL program with its
active attributes/uniforms (2 also dumps the sources of programs with no attributes).

Output: the runner's lines on the console (`[runner]`, `[script]`, `[state]`), the game's own `_DEBUG_OUT`/stderr chatter in `<out>/game.log`, crash reports in both.

State line, every `--log-every` frames: `[state] f=<frame> t=<game ms> dt=<last frame ms> states=<stack depth> top=<state class> level=<file> chars=<live characters> player pos=(x,y,z) hp=hp/total dead=<0|1> csm=<character state id>`.

### Input script

One command per line, `#` comments, frame = absolute frame index (0-based). Coordinates are surface pixels of a 2400x1080 surface unless `--script-scale` is given.

```
<f> tap x y [hold]          touch down, up after hold frames (default 2)       <f> down|move|up x y [slot]
<f> drag x1 y1 x2 y2 n [hold]   down, n linear moves, hold frames at the end, up   <f> key code      <f> log text      <f> shot name (window)      <f> quit
```

`scripts/new_game.txt` (title -> Start -> Single player -> loading -> walk) and `scripts/new_game_shots.txt` (the same with screenshots for the window).
Touches reach the game through `appOnTouch`, the function `GameGLSurfaceView.nativeOnTouch` calls; keys through `DungeonHunter2.nativeKeyDown/Up`.

## Windowed

```
build/own-w/host-runner/dh2_win_window.exe --data build/own-w/data/files --size 1200x540 --script-scale 0.5 \
    --angle "<android-sdk>/emulator/lib64/gles_angle" --out build/own-w/runw --script .../scripts/new_game_shots.txt
```

Without `--script` it is interactive: left mouse = touch (drag = stick or swipe), F12 = BMP screenshot in `--out`, Esc = quit. `--fixed` uses the fixed timestep instead of the wall clock.

GLES2 comes from ANGLE (`libEGL.dll`, `libGLESv2.dll`, `d3dcompiler_47.dll`) loaded at run time and never copied into the tree. Source used: the Android SDK
emulator folder, `<sdk>/emulator/lib64/gles_angle` (here `<home>\Documents\Codex\2026-10-09\find\work\tools\android-sdk\emulator\lib64\gles_angle`),
ANGLE "2.1.22762 git hash 533fa5cedc61", Authenticode status Valid, signer Google LLC (the `d3dcompiler_47.dll` next to it is signed by Microsoft). The runner binds the
game's `GLFunctionTable` (`shared/include/glitch-shared/gl_function_table.hpp`) to the `glXxx` exports of `libGLESv2.dll`, exactly the binding
`glitch-video/src/gl_function_table.cpp` does for Android (with the same BGRA and 64-bit-size wrappers). Not used: desktop GL.

## What the platform seams are

| Android side | Host replacement | Where |
| --- | --- | --- |
| JNI: `GLMediaPlayer` (sound, movie, `getSDFolder`, `detectPhoneLang`), `DungeonHunter2` (phone model/manufacturer/language, wifi, demo, VZ purchase), `GLResLoader`, `Musicplayer` | a fake `JavaVM`/`JNIEnv` whose method table answers the static calls from the host (the data folder, a generic phone, no vendor flag, sound calls ignored, the intro movie reported finished by setting `videoDone`); the real `*_nativeInit` natives run against it, in the Java classes' order | `host_jni.cpp` |
| EGL/GLES2 | `GLFunctionTable` of stand-ins (headless: object names, viewport, shader source scan with a small GLSL preprocessor so active uniforms/attributes match what a GLES2 compiler keeps, caps of a 1024-vector GLES2 device, framebuffers complete) or ANGLE (window) | `host_gl_null.cpp`, `host_window.cpp` |
| wall clock (`gettimeofday`) | `glitch::os::Timer` reads `g_dh2HostMicrosecondsOverride` (added to `glitch-core-io/src/timer.cpp`), `TimeNow`/`_GetTime`/`OS_GetTime` come from the runner; the fixed clock advances `--dt` ms per frame | `host_runner.cpp` |
| touch / keys from Java | `appOnTouch`, `nativeKeyDown/Up` called from the script or the window procedure | `host_script.cpp`, `host_window.cpp` |
| surface size | `appInit` already sized the device from `Width_Screen` only on Android; `core-platform/src/app_entry.cpp` now does it when `DH2_HOST_RUNNER` is defined | app_entry.cpp |
| resource root | the SWF file opener (`game-ui/.../RenderFX-849cdc-2.cpp`) prefixes `RES_PATH` for the host as for Android; `FileSystemBase::createAndOpenFile` treats a name that already starts with `RES_PATH` as absolute (the binary tests for `/sdcard/`, which only an Android `RES_PATH` has) | both files, `DH2_HOST_RUNNER` only |
| `lrand48` (POSIX, used by `ok2-Clustering.cpp`) | the drand48 generator in the runner | `host_runner.cpp` |

Sound: the vox sound manager initialises without a device and nothing is played. Audio output on Windows is not done.

## Debugging

* A crash filter prints the exception, the fault address, and a backtrace of RVAs: `python port/decomp-reconstruction/host-runner/symbolize.py <exe> <out>/game.log <path to addr2line>` turns them into functions and lines (use the `-g` Release build or the `-O0` build).
* `gdb -batch -ex run -ex bt --args <exe> ...` works as is (`gdb` and `addr2line` are in the MinGW bin folder). For a hang, `gdb -ex run` and Ctrl+C.
* The `-O0` build (`build/own-w-dbg`) keeps the `assert`s of the vendored gameswf code (the Release build compiles them out) and gives exact lines and locals; it is the one to use with `gdb` watch/condition breakpoints.

## Sanitizers

The WinLibs GCC here has no AddressSanitizer or UBSan runtime (`cannot find -lasan`, `-lubsan`), and no clang-cl/MSVC/llvm-mingw is installed (downloading one needs the
owner's consent, so none was fetched). What is configured instead:

1. `dh2_win_headless_ph` (`host-runner/host_pageheap.cpp`): operator new/delete and malloc/calloc/realloc/free (through `-Wl,--wrap`) allocate every block on its own pages with the end of the block
   against a NOACCESS guard page; a freed block is decommitted for good. An overrun or a use after free faults on the exact instruction, and the crash report adds
   "address is in a FREED block of N bytes" with the allocation and the free stack of that block (`symbolize.py` prints both). Fixed arena address, so runs repeat.
   Cost: one 4 KiB page per live allocation (700 frames, to the first level: peak working set 1.4 GB, no slower than the Release build by more than a few times).
2. `build/own-w-ubsan` (RelWithDebInfo -O1, plus the guard-page heap in `dh2_win_headless_ph`): `-fsanitize=bounds,shift,integer-divide-by-zero,unreachable,bool,enum,object-size,pointer-overflow,nonnull-attribute,returns-nonnull-attribute,float-cast-overflow -fsanitize-undefined-trap-on-error`
   (the UBSan runtime is not installed, but the trap form needs none: a failed check is an illegal-instruction exception, reported by the crash filter with its backtrace).
   Left out on purpose: `alignment` (finding 6 traps at once), `null` (finding 9, benign), signed-integer-overflow and `vptr` (the reconstruction deliberately relies on 32-bit wrap and raw casts).
3. `build/own-w-dbg`: `-O0 -g` with asserts.

Each build also runs under `gdb`.

## Findings

All found with the headless boot to the first level. Fixed ones are changes to the engine sources, each checked with `bash tools/trackb/check_tu.sh` (OK). They change Android behaviour too (every one is a real bug there, hidden by the allocator).

| # | Where | Finding | Status |
| --- | --- | --- | --- |
| 1 | `glitch-video/src/ok2-IVideoDriver.cpp` `initImplementationDependentData` | `intrusive_ptr<CVertexAttributeMap>(new CVertexAttributeMap(...))` without the add-ref flag: the map is born with count 0, the first copy takes it to 1, the temporary's release then deleted it. The full-screen quad map `unk_144[0..3]` was freed memory (Windows heap: `0xc0000374` heap corruption at the first big allocation after the driver init). | fixed (`, true`, like every other `new CVertexAttributeMap`) |
| 2 | `game-ui/src/g1-game-ui-MenuBase-8948cc-3.cpp` `~MenuBase` | released the saved-focus and character weak proxies with `weak_proxy::drop_ref()` and left the fields set; the C++ base destructor `MenuFX::State::~State` then released them again. Count below zero, proxy freed while other `weak_ptr<character>`s still pointed at it; the next gameswf object destructor read freed memory, and in the Release heap `RenderFX::Unload` during the level load ended in a heap corruption fast-fail. (`assert(m_ref_count > 0)` in `weak_ptr.h:41` fires in the -O0 build.) | fixed (fields cleared after the release) |
| 3 | `glitch-scene-collada-gui/src/r3a-...CColladaDatabase-056212-2.cpp` `getAnimation` | compared the bind URI (`channel->extra`, not a string for other channel types) with `_stricmp` before testing the channel type: a jump through a bad pointer for the fairy particle effect (`bolt2`, `faeries_02_celeste.bdae`). | fixed (type tested first) |
| 4 | `glitch-core-io/src/material_copy.cpp` `copyMaterialParameters` (0x6a1d9c) | walks `count` ids per shader stage but a pass keeps `count - field04` (12 vs 8 in the first batch of level 1): reads `field04` ids past the list, and starts the second stage late. The binary does the same (UB hidden by the next heap block); the guard-page heap faults on it. | fixed on the host semantics (walk and advance by `count - field04`, as `CGenericBaker::initParameters`); worth an explicit check against Hex-Rays by the owner of the batch code |
| 5 | `glitch-video/src/res_address_space.cpp` | the registry was a function-local static destroyed before the static destructors of other files (`VisualFXManager` dictionary) freed `.bdae` blocks: reads of freed map nodes at exit. | fixed (registry is never destroyed) |
| 6 | `glitch-core-io/src/process_buffer_heap.cpp` | the heap hands out blocks on 4-byte words; objects placed in it (`SCreationState` in `CMaterialRendererManager::beginMaterialRenderer`, `CMaterial` heap copies, ...) have 8-byte alignment on a 64-bit host. x86-64 and ARM64 tolerate scalar misaligned access, but a vectorised initialiser (`movaps`) would fault; `-fsanitize=alignment` traps at the first one. | open (owner of core-io: round the block start to 16 bytes and the header accounting with it) |
| 7 | `glitch-core-io/src/vertex_override.cpp` `overrideVertexStreams<true,false,true>` (batch baking) | the destination stream for an attribute in the shader's mask but not configured by `CGenericBaker::configureAppendBuffer` (attribute 28 here, 0x1c, which `configureAppendBuffer`'s switch has no case for) has a null buffer, `->map(5)` on it is a null call. It showed up only when the headless GL stand-in reported unused attributes as active (a real GLES2 compiler drops them); fixed in the stand-in. | open, latent: guard `destinationStream.buffer` or add the case if the binary has one |
| 8 | data set | `data/3d/characters/prince/weapons/mc_torso_default_warrior.bdae` is not in the data folder; `FileSystemBase::createAndOpenFile` logs "Could not open file" and the character-select screen carries on. | note |
| 9 | `game-ui/.../MenuCharMenu_Map-2d6327-0.cpp` `Init` | calls `m_menu->Find(...)` with `m_menu` null (the `menu_MapSheet` movie is not registered when the singleton is built in `MenuManager::Init`). Harmless: `RenderFX::Find` returns before touching `this` when the context is null. `-fsanitize=null` traps on it. | note (UB, benign) |
| 10 | `game-app/src/n2-game-app-sfc_script_lua_Value-c98984-1.cpp` `Value::getUInteger` | `static_cast<unsigned>(float)` of a negative number (first hit: `Character::_SetProp` from a skill script): undefined in C++ and wraps on x86-64 (-1.0f gave 0xffffffff), the binary's `__aeabi_f2uiz` / arm64 `fcvtzu` saturate to 0. | fixed (saturating conversion). The same class (`(unsigned)` or `(int)` casts of floats that can leave the range) may exist elsewhere: only reached paths were checked |
| 11 | `vendor-gameswf/src/v1-...sprite_instance-d5206d-0.cpp` `goto_frame(const tu_string&)` | `(int) number_value` of NaN/huge doubles from the loading movie's `gotoAndStop(...)`: `__aeabi_d2iz` saturates (NaN gives 0), x86-64 gives INT_MIN. | fixed (saturating conversion) |
| 12 | `glitch-video/src/material_parameters.cpp` `matrixPool()` | a function-local static vector destroyed before the static destructors of other files (`VisualFXManager::_FlushAnimDict`) released materials into it: use after free at exit. | fixed (pool is never destroyed) |

## Open points for the owners of gameplay and rendering

* In the 2500-frame session the hero walks about 30 frames after the stick drag and then stands still at (-4393, 555) though the stick is held until frame 621; no enemy comes
  into range, so no combat was exercised. State lines are cheap now: `scripts/new_game.txt` is the starting point for a combat script.
* Every `GL_*` capability the driver reads at start-up is answered by the headless stand-in (`host_gl_null.cpp`) with a mid-range GLES2 device; the windowed run uses ANGLE's real answers.

## AddressSanitizer + UBSan build, play bot, findings 13-17 (owner W2, 2026-10-16)

**Toolchain.** llvm-mingw 20261006 ucrt x86_64 (github.com/mstorsjo/llvm-mingw release asset `llvm-mingw-20261006-ucrt-x86_64.zip`, 190836485 bytes,
sha256 `317492c456aa27ee607a5919f1d2d38dcdc1112516a24d0bf4b00d078f52d17a`, matching the release digest), unpacked to `%TEMP%\llvmmingw_x` (never in the tree).
Real ASan works with it on Windows (dynamic runtime `libclang_rt.asan_dynamic-x86_64.dll` from its `bin`, which must be on PATH at run time):

```
export PATH="$TEMP/llvmmingw_x/llvm-mingw-20261006-ucrt-x86_64/bin:$PATH"
SAN="-fsanitize=address,bounds,shift,integer-divide-by-zero,unreachable,bool,enum,object-size,pointer-overflow,nonnull-attribute,returns-nonnull-attribute,float-cast-overflow,alignment,null -fno-sanitize-recover=address -fsanitize-recover=undefined"
cmake -S port/decomp-reconstruction -B build/own-w2-asan -G Ninja -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ \
  -DCMAKE_CXX_FLAGS="-g -O1 -fno-omit-frame-pointer $SAN" -DCMAKE_C_FLAGS="-g -O1 -fno-omit-frame-pointer $SAN" \
  -DCMAKE_EXE_LINKER_FLAGS="-fsanitize=address,undefined" -DDH2_HOST_RUNNER=ON -DDH2_HOST_ASAN=ON
cd build/own-w2-asan && ninja dh2_win_headless
```
`DH2_HOST_ASAN` (top CMakeLists) drops `-static` (the ASan runtime is a DLL) and links winpthreads. Reports (with symbolized stacks) go to `<out>/game.log`.
Clang/libc++ needed three portability fixes: `CResFileDecode.cpp` lacked `<cstdlib>`; `sync.cpp` and `vox_thread_object.cpp` assumed `std::thread::native_handle()` is a
`pthread_t` (libc++ on Windows gives a HANDLE: `WaitForSingleObject` probe / priority step skipped). `host-runner/compat/android/log.h` is a host shim for sources with
Android-only `__android_log_print` debugging (added to the include path only with `DH2_HOST_RUNNER`).

**"Hero stops after ~30 frames" (W's open point): not an input bug.** `probe` (below) at the stop shows the floor ring ahead empty at 40 units: the hero walked to the edge of
the path-finding floor. Movement is root motion (~29 units per 33 ms frame) and `PFWorld::ValidateDirection` (0x525944, checked against the listing) only looks 10 units
ahead, so a step that crosses the floor edge is refused whole and the hero stands at the edge in the run state, as the original does. In eight stick directions from the
start the hero runs 20..120 frames until the next edge. Scripts walk anywhere with `goto` (path-finding `Cmd_MoveTo`).

**Runner additions** (`host_bot.cpp`, `host_script.cpp`, `run_session.sh`): `click x y` (down, move on the spot, up: Flash buttons such as pause ignore a bare tap), `probe`,
`goto x y`, `walkdir dx dy`, `stop`, `loadlevel <file.mlx>` (`Application::LoadLevel(name,0,0,false,true,0,false,0,0)`, what the menu's `FS_LoadLevel` fscommand does),
`hunt N [range]` (nearest visible enemy by `AI_IsEnemy`: path to it, hold the attack button, skills every 50 frames, potion under 45 % HP; a target the hero does not
approach in 90 frames is skipped for 900), `loot N [range]` (ItemObject / OpenableContainer), `explore N` (random reachable floor points), `rand <seed> N [range]`
(seeded random stick / attack / skill / potion / pause / goals), `enemies`, `objects`, `kill`, `atk 0|1`, `idle`. `run_session.sh` restores a savegame set before each run so a
script repeats exactly; `DATA=` selects a data folder (`build/own-w2/data{,b,c,d}/files`: copies of the root files with junctions to `data/` and `res/`, one per parallel run).
HUD/menu coordinates (2400x1080): pause (176,340) [FIRST-BOOT's (294,322) misses], hero screen (260,140), its tabs y=56 at x 1030/1250/1490/1750/1990/2220, sub-tabs y=430,
back (80,56); pause menu continue/help/settings/main menu at x=1190 y=340/452/565/678; "return to main menu?" yes (912,604) / no (1448,604); new hero: name key A (220,750),
confirm (1200,350), class confirm (1200,956), intro skip (160,90). The HUD answers clicks from about frame 700 of `session_play.txt`.

`scripts/session_play.txt`: continue -> hunt 1400 frames (kills the lizards and moths of the first area) -> loot -> pause/continue -> all hero screens -> pause -> main menu
-> yes (save) -> continue -> `rand 11`. The fresh-hero path (name, class, intro skip) is in `scripts/newgame_fresh.txt` (with `BASE=none`).

| # | Where | Finding | Status |
| --- | --- | --- | --- |
| 13 | `glitch-scene-collada-gui/src/scene/CBatchSceneNode.cpp` `postCompile` (0x57ef64) | maxSolid/TransparentIndices came from the attribute-map count (a few entries); the listing calls mesh vtable +0x14 (`getMeshBuffer`) and reads +0x20, the primitive stream's index count. `renderSolidBatch`'s uncached path sized its process buffer from it, so `updateIndices` overran it: write access violation in the seeded session (frames 5015 / 6366, Release). | fixed |
| 14 | `game-items-save/.../ItemInventory-cf6f6b-1.cpp` `TransferInventoryTo` (0x3ffa68) | reads `slot->m_item->GetItemId()` after `_AddItemInstance`, which deletes a stackable item it merged (ASan heap-use-after-free on loot pickup). The binary has the same order (stale read). | fixed (id read first) |
| 15 | `CDynamicAnimationSet::addAnimationLibraryBindings` | the set's handle took no use of the record, so level teardown unloaded a `.bdae` the Animation entries still held (ASan UAF in `~Animation` at quit to main menu) | fixed (copyDatabase; by the parallel W2 run) |
| 16 | `game-world/.../ObjectManager-5017c7-2.cpp:417` `Draw3D` | UBSan: `m_visible` loaded as 190 from an `m_objectMap` entry (object not an ObjectBase, or stale) | open |
| 17 | `glitch-video/src/ok1b-CProgrammableGLDriver.cpp:108` | `nullptr + offset` for VBO attribute offsets (GL idiom) | note |
| 6 | `process_buffer_heap.cpp` | blocks now start 16-byte aligned on every host (start placed so header+4 is aligned, block sizes multiples of 4 words); the binary uses 4-byte words (32-bit). | fixed |
| 8 | `mc_torso_default_warrior.bdae` | still missing in the data; the class-select screen renders the warrior without it. | note |

## Level playthrough, cheat sessions, soak (owner W2, 2026-10-16, second part)

**More runner commands** (`host_bot.cpp`): `levels` (prints `Arrays::LevelList`: 51 rows, 48 distinct files), `route N [worldmap]` (the level's
CheckpointZones in name order, then its enabled TriggerZoneExitLevel zones; fights within 600 units; when the hero touches the exit zone it clicks
the fast-travel panel that `TriggerZoneExitLevel::Update` shows: (1206,884) = travel to the zone's level, (1206,984) = world map), `walkto x y N`,
`levelstat <tag>` (one parseable line: level, loadStep, position, walked, enemies alive/dead, loot left, exits, route reached/skipped/total,
kills, deaths, cut-scene skips, items, gold), `auto 1` (taps through the death screen, skips cut scenes), `cheats 1` / `cheat LevelUp|GiveGold`,
`herostat` (level, HP, gold, items, skill levels 0-7), `types`, `near R`, `rooms x y` / `roomsall`, `floor x1 y1 x2 y2 [z]`, `badbools`.
Navigation: the game's own search (`GameObject::PathTo` -> `PFWorld::FindPath`) is capped at `m_maxPath` nodes (30 by default), so a
far `Cmd_MoveTo` answers nothing (as in the listing). The runner keeps a lazily filled 150-unit grid of the path-finding floor
(`PFWorld::GetFloorHeightAt`), plans a breadth-first path, and gives the game 450-unit hops.
Determinism: `LC_API_GET_RANDOM` reseeds from `time()`; the runner's fixed clock now answers it (seam in `host_runner.cpp`), so most sessions
repeat exactly. Pointer-keyed containers still make a few sessions differ between runs (ASLR).
`level_report.py <out>` turns a `run_levels.sh` folder into the table below plus every ASan/UBSan/ASSERT location (runner files excluded).

**Cheat path.** `handle_cheats_inGame` (0x9f640a, exported .bss byte) has three readers and no writer in the shipped binary (IDA xrefs:
`Application::_Update`, `Level::_LoadProcess`, `SavegameManager::toggleOption`); DebugSwitches.savegame does not reach it. A test build sets it from
outside, which `cheats 1` does. `cheat LevelUp` / `cheat GiveGold` call `SavegameManager::toggleOption`, the function the debug touch regions of
`Application::_Update` (lastOpenMenuID 10, rects (0,0)-(100,100) and (0,100)-(100,200)) call.

Sessions (all in `host-runner/scripts/`, run with `run_session.sh`):

| script | what | result |
| --- | --- | --- |
| `session_levelup.txt` (a) | 3x LevelUp, GiveGold, hero screen: + on the four attributes, skills tab: upgrade skill 1 twice, skill 2 once, confirm dialog (900,560), fight | level 1 -> 4, HP 165 -> 177 -> 181 (stamina), attribute points 6 -> 0, strength 10 -> 12 (attack 81 -> 87, seen in the window), skills `1 0 ...` -> `3 1 ...`, gold +0x200000; hunt afterwards fights normally |
| `session_death.txt` (b) | walk into the lizard/moth packs without fighting, then `kill` (v2Controller::Cmd_Kill) | the packs never kill a level-1 hero (lowest HP 126/165, regeneration wins): the low-damage report of R4 holds on the host too. Kill -> death screen -> tap -> respawn. The respawn is `Level::Restart` (0x3ef9a0 checked: LoadLevel with resume = false): the level restarts from its first entry point, the intro cut scene plays again and the killed intro lizards are back (enemiesDead 4 -> 1). Whether a death should load the checkpoint instead is for an emulator comparison (open, W2-23) |
| `session_exit.txt` (c) | `route 7000` through 001_swamp, then the fast-travel panel | checkpoints 01-03 reached, 04 skipped, exit zone `_prim_ExitLevelZone` touched at frame 6324, panel button pressed, level `002_swamp_witchcave.rule.xml` loads, the hero spawns at its `_prim_EntryPoint` (after fix 19) and plays |
| `session_worldmap.txt` (c2) | the same route, "world map" button | the world-map menu opens (states 2, GSFlashMenu) |
| `soak_seed1..3.txt` | 30000 frames of seeded random play (move goals, stick, attack, skills, potion, pause + continue, hunting) | seed 1: no crash, 147k units walked, 13 kills, gold 8 -> 26, items 6 -> 11 (Release, 15 minutes). Seeds 2/3 are ready to run |

### Per-level playthrough (ASan + UBSan build, 4 in parallel, `run_levels.sh`, 2026-10-16 18:20-19:20)

Each level: continue the saved hero, `loadlevel <file>` (the FS_LoadLevel path), tap through loading, explore 600 frames, hunt 1500, loot 600,
`route 3000`. "walked" is world units; "left to" means the real exit was taken. 48 distinct files of the level list (47 + one BACKUP alias).
Before fix 18 every `.rule.xml` level (33) crashed at load; before fix 19 the hero of every random level stood at (0,0,0) off the floor.

| level | loads | walked | fights | loot | route / exits | exit | reports |
| --- | --- | --- | --- | --- | --- | --- | --- |
| 001_swamp.mlx | yes | 47548 | 38 enemies, 4 kills, 0 deaths | 14 containers/drops; items 6 -> 6, gold 8 -> 18 | 3/0/5 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 002_swamp_witchcave.rule.xml | yes | 49293 | 33 enemies, 5 kills, 0 deaths | 5 containers/drops; items 6 -> 8, gold 8 -> 25 | 0/1/2 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 003_darkwood.mlx | yes | 43599 | 57 enemies, 0 kills, 0 deaths | 20 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/8 (reached/skipped/waypoints), exits 7 | 0 | 0 |
| 004_root_den.rule.xml | yes | 534 | 56 enemies, 0 kills, 0 deaths | 18 containers/drops; items 6 -> 6, gold 8 -> 8 | - | 1 | 2 |
| 005_infectedvillage.mlx | yes | 13454 | 23 enemies, 0 kills, 0 deaths | 5 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/2 (reached/skipped/waypoints), exits 2, left to 003_darkwood.mlx | 0 | 0 |
| 006_basement.rule.xml | yes | 23939 | 38 enemies, 0 kills, 1 deaths | 3 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/2 (reached/skipped/waypoints), exits 2, left to 005_infectedvillage.mlx | 0 | 0 |
| 007_crypt_01.rule.xml | yes | 30912 | 42 enemies, 1 kills, 1 deaths | 14 containers/drops; items 6 -> 6, gold 8 -> 22 | 1/2/4 (reached/skipped/waypoints), exits 2, left to 003_darkwood.mlx | 0 | 0 |
| 008_gothicus_castle_01.rule.xml | yes | 40367 | 25 enemies, 1 kills, 2 deaths | 5 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/2/2 (reached/skipped/waypoints), exits 0 | 0 | 0 |
| 009_abbey.rule.xml | yes | 27192 | 39 enemies, 0 kills, 0 deaths | 14 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/4 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 009a_abbey.mlx | yes | 9350 | 0 enemies, 0 kills, 0 deaths | 2 containers/drops; items 6 -> 6, gold 8 -> 42 | 1/0/2 (reached/skipped/waypoints), exits 2, left to 003_darkwood.mlx | 0 | 0 |
| 010_el_lightning.rule.xml | yes | 50924 | 45 enemies, 0 kills, 0 deaths | 29 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/2/6 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 011_earth_temple_01.rule.xml | yes | 28152 | 63 enemies, 0 kills, 2 deaths | 28 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/2/4 (reached/skipped/waypoints), exits 2, left to 003_darkwood.mlx | 0 | 0 |
| 012_earth_temple_02.rule.xml | yes | 88692 | 58 enemies, 0 kills, 0 deaths | 18 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/5 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 013_earth_temple_03.rule.xml | yes | 26692 | 33 enemies, 1 kills, 0 deaths | 12 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/1/2 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 014_el_earth.rule.xml | yes | 29913 | 41 enemies, 5 kills, 0 deaths | 32 containers/drops; items 6 -> 6, gold 8 -> 97 | 0/2/8 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 015_red_desert_hub.mlx | yes | 22007 | 26 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/5 (reached/skipped/waypoints), exits 5, left to 003_darkwood.mlx | 0 | 0 |
| 016_red_desert_cave_01.rule.xml | yes | 43290 | 67 enemies, 0 kills, 0 deaths | 38 containers/drops; items 6 -> 6, gold 8 -> 264 | 0/1/4 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 017_red_desert_cave_02.rule.xml | yes | 38267 | 43 enemies, 0 kills, 0 deaths | 27 containers/drops; items 6 -> 6, gold 8 -> 170 | 0/1/5 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 018_red_desert_cave_03.rule.xml | yes | 40601 | 49 enemies, 0 kills, 0 deaths | 36 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/1/3 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 019_light_house_01.rule.xml | yes | 25560 | 47 enemies, 0 kills, 0 deaths | 43 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/6 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 019_light_house_02.rule.xml | yes | 24470 | 59 enemies, 0 kills, 0 deaths | 40 containers/drops; items 6 -> 9, gold 8 -> 8 | 0/4/7 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 019_light_house_03.rule.xml | yes | 2922 | 1 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/1 (reached/skipped/waypoints), exits 1, left to 019_light_house_02.rule.xml | 0 | 0 |
| 020_crypt_02.rule.xml | yes | 23826 | 57 enemies, 3 kills, 2 deaths | 23 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/1/3 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 021_gothicus_castle_02.rule.xml | yes | 22396 | 32 enemies, 0 kills, 0 deaths | 5 containers/drops; items 6 -> 6, gold 8 -> 19 | 0/3/3 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 022_swamp2.rule.xml | yes | 40097 | 48 enemies, 0 kills, 1 deaths | 8 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/2/5 (reached/skipped/waypoints), exits 3 | 0 | 0 |
| 022_swamp2_trollcave.rule.xml | NO | - | - | - | - | 1 | 2 |
| 023_watertemple.rule.xml | yes | 46022 | 53 enemies, 0 kills, 0 deaths | 24 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/1/4 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 024_el_water.rule.xml | yes | 51456 | 47 enemies, 0 kills, 0 deaths | 38 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/2/6 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 025_icy_hub.mlx | yes | 41530 | 30 enemies, 0 kills, 0 deaths | 25 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/2/7 (reached/skipped/waypoints), exits 4 | 0 | 0 |
| 026_icy_cavern_01.rule.xml | yes | 38587 | 46 enemies, 1 kills, 0 deaths | 11 containers/drops; items 6 -> 6, gold 8 -> 154 | 0/2/3 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 027_icy_cavern_02.rule.xml | as x27_icy_cavern_02_BACKUP.mlx | 27313 | 71 enemies, 0 kills, 0 deaths | 17 containers/drops; items 6 -> 6, gold 8 -> 140 | 1/0/2 (reached/skipped/waypoints), exits 2, left to 025_icy_hub.mlx | 0 | 0 |
| 028_icy_cavern_03.rule.xml | yes | 56807 | 63 enemies, 0 kills, 0 deaths | 21 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/2/3 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 029_wind_temple.rule.xml | yes | 37559 | 35 enemies, 1 kills, 0 deaths | 16 containers/drops; items 6 -> 7, gold 8 -> 187 | 0/2/5 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 030_el_air.rule.xml | yes | 29641 | 54 enemies, 4 kills, 0 deaths | 37 containers/drops; items 6 -> 7, gold 8 -> 169 | 0/1/6 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 031_firetemple.mlx | yes | 31645 | 51 enemies, 1 kills, 0 deaths | 18 containers/drops; items 6 -> 6, gold 8 -> 169 | 0/4/10 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 032_el_fire.rule.xml | yes | 56840 | 53 enemies, 0 kills, 0 deaths | 36 containers/drops; items 6 -> 6, gold 8 -> 208 | 0/1/5 (reached/skipped/waypoints), exits 2 | 0 | 0 |
| 033_voidmaze_01.rule.xml | yes | 11285 | 1 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/3/3 (reached/skipped/waypoints), exits 3 | 0 | 0 |
| 034_voidmaze_02.rule.xml | yes | 2117 | 0 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | - | 1 | 1 |
| 035_voidmaze_03.rule.xml | yes | 42259 | 0 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/1 (reached/skipped/waypoints), exits 1, left to 033_voidmaze_01.rule.xml | 0 | 0 |
| 036_underworld_hub.mlx | yes | 17553 | 38 enemies, 0 kills, 0 deaths | 16 containers/drops; items 6 -> 6, gold 8 -> 413 | - | 1 | 2 |
| 037_machine_rooms_01.mlx | yes | 2716 | 56 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 1/0/1 (reached/skipped/waypoints), exits 1, left to 036_underworld_hub.mlx | 0 | 0 |
| 038_dark_temple.mlx | yes | 38402 | 57 enemies, 1 kills, 1 deaths | 8 containers/drops; items 6 -> 5, gold 8 -> 8 | 1/0/5 (reached/skipped/waypoints), exits 1 | 0 | 0 |
| 039_dark_temple_bossroom_01.mlx | yes | 5931 | 3 enemies, 0 kills, 0 deaths | 1 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/0 (reached/skipped/waypoints), exits 0 | 0 | 0 |
| 050_earth_temple_demo.rule.xml | yes | 72472 | 18 enemies, 0 kills, 0 deaths | 3 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/0 (reached/skipped/waypoints), exits 0 | 0 | 0 |
| 101_debug_MachineRoomTestMultiPlayer.mlx | NO | - | - | - | - | 1 | 4 |
| 102_debug_QUESTTEST.rule.xml | step 36 | 0 | 0 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/0 (reached/skipped/waypoints), exits 0 | 0 | 0 |
| 125_RandomForAlexB.rule.xml | step 36 | 0 | 0 enemies, 0 kills, 0 deaths | 0 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/0 (reached/skipped/waypoints), exits 0 | 0 | 0 |
| x50_earth_temple_demo_BACKUP.mlx | yes | 72473 | 28 enemies, 0 kills, 0 deaths | 5 containers/drops; items 6 -> 6, gold 8 -> 8 | 0/0/0 (reached/skipped/waypoints), exits 0 | 0 | 0 |

Kills are counted only for targets the bot engaged within 400 units (low). The hero is level 1 everywhere, so later levels are mostly survival
(deaths 0-2) rather than clearing.

### Findings, continued

| # | Where | Finding | Status |
| --- | --- | --- | --- |
| 18 | `game-app/src/g1-game-app-rnd-8b06ae-7.cpp` `rnd::Tile::SaveAsModuleXML` (0x491d90) | the port dropped the store of "Module" after the Module constructor as a dead store; it is `PropertyMap::m_className` (Hex-Rays v27 = module +0x20), which `InitProperties` keys the class tables on: strcmp(null) in every random level (33 of 48 levels never loaded) | fixed |
| 19 | `Level::GetSpawnPoint` (0x3ef614), `FindEntrySpawnPoint` (Level::_LoadPlayer 0x3f0018), `MenuCharMenu_Map` icon pass | compared the level's entry point with `GameObject::m_entryPointId`, a port field nothing writes (garbage); the +0x374 the listing reads is `SpawnPoint::m_entrypointId` (GameObject ends at +0x374). No spawn point ever matched: the hero of a random level stayed at (0,0,0) | fixed (read the SpawnPoint member). Open for the layout owner: remove `GameObject::m_entryPointId`; `HUDMinimap::SetObjectsVisibility` (game-ui HUDMinimap-93879d-0.cpp:204) still reads it for its `unk_3dc` objects (type not recovered) |
| 20 | `Character::INV_UpdateSkin` (0x3a999c) | took slots 0..2 as weapon slots; the listing keeps a second counter from -1 and branches on `<= 1` unsigned: slots 1 and 2. Slot 0 is `MC_Torso`, so the torso module went to `SetWeaponSkin` (`weapons/mc_torso_default_warrior.bdae`, W's finding 8) and the torso skin was never set | fixed; the file is not missing, it was never meant to be loaded |
| 21 | `ObjectManager::Draw3D` (UBSan m_visible = 190, W2-16) | the objects are `LevelConfig` and `LightPoint` `_prim_PlayerLight_S` (`badbools`): their `DeclareProperties` (0x3f4b9c, 0x40adf0 checked) never declare "visible" and `ObjectBase::ObjectBase` (0x33f15c) does not write +0x80, so the byte keeps what the allocator left (0xbe under ASan) in the original too. Both `Draw` bodies are empty or debug-only | note (original UB, harmless) |
| 22 | `CharAnimator::IncAnimSetUsers` (0x3c9168) | null `m_visualObject` for `_prim_Bandit_03` (004_root_den, module `corner_rootden_nw__01.mgp`) and characters of 022_swamp2_trollcave, 036_underworld_hub, 101_debug: `charpropsname="RD_Bandit1"` is not in `character_properties_pyarraynames.bin` (455 names), so `SafeGetCharPropsId` gives -1, no model, no visual; `CharAnimator::Update` dereferences it as soon as the state flag 0x200 is set. The port follows the listing in all three functions | open: does the original survive this (data that never ships in a reachable module, or a guard elsewhere)? An emulator run of 004_root_den answers it |
| 23 | death / respawn | see session (b) | open (emulator comparison) |
| 24 | `GameObject::PathTo` (0x3939f0) | path search capped at `m_maxPath` (30) nodes: tap-to-move far away does nothing; matches the listing | note |
| 25 | `FileSystemBase::ApplyFilenameHacks` (0x34e96c) / texture probes | missing textures (`tex_faerie_001.tga`, `char_faerie.tga`, `fx_spark.tga`, `env_swamp_alpha.tga`) are tried as `data/3d/textures/x.tga` and as `qata/3d/textures/x.tga`; the second form looks like the "prefix + `ata/3d/textures/`" rebuild with a wrong first character | open (rendering owner) |
| 26 | `CBatchSceneNode::updateIndices` (ASan heap-use-after-free, 034_voidmaze_02, once) | the index destination points into a `CMaterialRenderer` freed by `SceneManager::clear` in the previous level's `~Level` | open (rendering owner; stack in `build/own-w2-LA2/034_voidmaze_02_rule_xml/game.log`) |
| 27 | `glitch-core-io/src/vertex_override.cpp` (W's 7) | `CGenericBaker::configureAppendBuffer` (0x609ba4, checked) has cases 0..0x1b only; 0x1c/0x1d in both masks leave a stream without a buffer, mapped unconditionally | fixed (guarded like the default-fill path, deviation noted) |
| 28 | `MenuCharMenu_Map::Init` (W's 9) | identical to 0x453c3c (Find on a null m_menu before the movie exists) | closed, benign |
| 6 | process-buffer heap (W's open point) | TRACK-B.md decision 14 (16-byte payload alignment, evidence SCreationState); `process_buffer_heap_test` updated; all 81 glitch-core-io tests pass in build/own-w2 | fixed |
| - | runner | `tickHunt` kept a pointer to a deleted Character (spawned monsters are deleted): an access violation at frame 1389 of a route run was the runner's, not the game's | fixed (runner) |

## Residue owner L2: findings 19, 22, 23, 25, 26 closed (2026-10-16)

Method: IDA Hex-Rays and the byte listing, read-only (the 32-bit APK cannot run on the emulator, so every answer below is from the binary, and the runner confirms the port reaches the same code).

| # | Question | Answer from the binary | Change |
| --- | --- | --- | --- |
| 22 | `RD_Bandit1` (004_root_den `corner_rootden_nw__01.mgp`, `_prim_Bandit_03..07`, `RD_Bandit2`) not in the character table | **The name does not exist in the shipped data.** Searched every byte of the data folder, case-insensitive: only the module XML mentions it; `character_properties_pyarraynames.bin` (455 names, the file `Arrays::CharacterTable` reads) has `RD_MeleeBandit`, `RD_RangedBandit`, `RD_ThugBandit` ... but no `RD_Bandit1/2`; no alias in `character_models_dictionary`, `ingame.symbols`, the v2 condition names or the strings of `libDungeonHunter2.so`. Also absent (module `charpropsname`): `Dragon`, `Multiplayer_LizadMan_Type1`, `Thamos_Catacombs_Skeleton_A/B`, `Seba_PerformanceTest`, `SwimKing`, `Swamp_ActorTroll2` (the swamp-cave and troll-cave modules of 002/022t, debug modules of 036/101). The lookup is correct (`FindMemberName` = strcmp over `names[0..size)`, as 0x3b3d38). **The original does not crash on the failed lookup**: `Character::SafeGetCharPropsId` leaves -1, the character is built with the empty base sheet, no model, no visual, and the animator copes: `CharAnimator::IncAnimSetUsers` (0x3c9168) and `DecAnimSetUsers` (0x3c91c8) test the visual object (`Character +0x2d8`) and the returned animation set for null and do nothing. The port had dropped both tests (Hex-Rays `if (v1)` / `if (v2)`) and dereferenced `m_visualObject` | `CharAnimator::IncAnimSetUsers/DecAnimSetUsers` null guards (`game-anim/src/g1-game-anim-CharAnimator-2af513-0.cpp`) |
| 23 | Does death restart the level (`Level::Restart`, resume off) or reload the checkpoint? | **Checkpoint.** `Level::Restart` (0x3ef9a0) has exactly one caller in the binary, `Script_RestartLevel::Execute` (script command 63); the other xref is a relocation record. The offline death path is `PlayerManager::_HandleLocalDeaths` (0x375fe8, pushes `menu_FadeToBlackScreen`) -> the Flash menu's `NativeReviveAllPlayers` (0x43b1e4) -> `PlayerManager::ReviveLocalPlayers(false)` (0x37565c) -> `Level::LoadCheckpoint` (0x3f0428: `LevelSavegame::LoadCheckPoint(slot, subId, index)` 0x46259c, `GameEventManager::ReInit` 0x47992c, `Character::SG_LoadCheckpoint(16)`, `SG_Update(true)`). All of it matches the port line by line. gdb on the `kill` session of `session_death.txt` (breakpoints on `Level::Restart`, `Level::LoadCheckpoint`, `NativeReviveAllPlayers`): `NativeReviveAllPlayers` -> `ReviveLocalPlayers` -> `LoadCheckpoint` once, `Level::Restart` never. The W2 note "the respawn is Level::Restart" was an inference. What W2 saw (enemies back: dead 4 -> 0, the intro cut scene again) is the checkpoint file (`dh2_000_0_single_level.checkpoint` of the saved hero is the level-start state) plus `GameEventManager::ReInit` re-arming the events | none |
| 25 | `qata/3d/textures/...` probes | **The original requests the same paths.** `ApplyFilenameHacks` (0x34e96c, Hex-Rays and listing equal the port): the working directory (`CFileSystem::WorkingDirectory`, written only through the vtable slot +0x30, never by code, so empty at run time) matches at the start of the name (`strstr(name, "")`), so the result is `name[1..]`; a `.tga` becomes `"ata/3d/textures/" + basename`, lower-cased, and the first character of `name` is put back in front. The textures are named in the `.bdae` as the artists' drive `q:/data/iphone/3d/textures/tex_Prince.tga`, so the probe is `RES_PATH + "qata/3d/textures/tex_prince.tga"` and fails (the file is not in the data either: no `tex_prince.tga`, `tex_faerie_001.tga`, `char_faerie.tga` in `data/3d/textures`; they belong to animation-only `.bdae`s). The reader returns null, `FileSystemBase::createAndOpenFile` logs "Could not open file" and the material keeps no texture, as on a device | none |
| 26 | `CBatchSceneNode::updateIndices` use after free, 034_voidmaze_02 | Not reproducible with the current tree (034 ran 7460 frames in the ASan build and again 1300 frames in the 48-level pass, route to its exit, no finding). The report was made at 18:59, before the 19:01 edit of `CBatchSceneNode.cpp` (`invalidateVisibleIndexCache`, whose comment describes this failure: the old `slot->base` started inside the 12-byte-per-batch slot table, so the first copied indices overwrote the later slots' count/capacity/base, and `renderSolidBatch` formed `visibleIndexCache + 2 * base` from garbage, a wild 12-byte `memcpy` that landed in a quarantined `CMaterialRenderer` of the previous level (the "freed by SceneManager::clear" stack is only the history of the chunk that happened to be hit). This is the most likely cause by reading; the old binary was not rebuilt to prove it. Listing 0x5800e8 and 0x57ebec agree with the current code (slot {count, capacity, base} at `cache + 12 * batch`, buffer over `cache + 2 * base`) | already fixed by the 19:01 edit; nothing more |
| 19 | `GameObject::m_entryPointId` never written, read by `HUDMinimap::SetObjectsVisibility` | The port field does not exist in the binary: `GameObject` ends at +0x374 (`Character`'s `v2Controllable` base, `ItemObject`'s `ItemInventory` and the first members of `SpawnPoint`, `Container`, `LiftableObject`, `ColBox`, `Zone`, `SoundEmitter`, `Projectile` all start there), and the field made every derived layout 4 bytes too large. The only word that holds an entry point id at +0x374 is `SpawnPoint::m_entrypointId` (property "entrypointID", -1 from the constructor, read by `Level::GetSpawnPoint`, `FindEntrySpawnPoint`, `MenuCharMenu_Map`), which is written by the constructor and `DeclareProperties`. The writers of the offset in the original are those subclass members; nobody writes `HUDMinimap +0x3dc` (`SetObjects` 0x41b560 is empty, `MenuMinimap` does not override it, `InitAllObjects` only clears), so `unk_d4` stays 0 and the loop in 0x41b8b4 never runs | field removed from `game/include/dh2/GameObject.hpp`; `HUDMinimap::SetObjectsVisibility` reads `SpawnPoint::m_entrypointId` (`game-ui/src/g1-game-ui-HUDMinimap-93879d-0.cpp`); `host_bot.cpp` `near` prints it through `SpawnPoint`; comment in `LiftableObject-ad7bbe-0.cpp` |

Runner scripts: `run_levels.sh` takes `DATA_ROOT=<dir>` (the folder holding `data{,b,c,d}/files` and `data/saves-fresh`, default `build/own-w2`) and `WORKERS=n` (default 4; on a machine shared with other ASan runs each worker needs 0.5-1.5 GB of commit, and an ASan run that dies with "allocator out of memory" or error 1455 is the machine's, not the game's).

Re-run (ASan + UBSan clang build `build/own-l2-asan`, all 48 level scripts of `scripts/levels`): **all 48 load** (the level file is on top of the state stack with its characters, `exit 0`); **0 AddressSanitizer reports and 0 UBSan reports** except the known runner/third-party lines (`host_bot.cpp:146` reading `m_visible` of a `LevelConfig`/`LightPoint`, finding 21; freetype shifts). 004_root_den, 034_voidmaze_02, 022_swamp2_trollcave, 036_underworld_hub, 101_debug_MachineRoom: 5000-7460 frames each (004 and 034 run to the end of the script, 004 now passes frame 3600 where it crashed; 022t and 036 reached 5000-6000 frames before the machine's commit limit ended them, and ran again for 1300 frames in the 48-level pass). The other 43 levels ran 1300 frames (load, explore start). Checked with `check_tu.sh` (OK): `CharAnimator-2af513-0.cpp`, `HUDMinimap-93879d-0.cpp`, `LiftableObject-ad7bbe-0.cpp`, `GameObject.hpp`.

## Owner FD: is game data missing? (2026-10-16) - no, the references are stale in the shipped data

Re-checked against the user's own files, not the extracted copy: `Dungeon-Hunter-2-HD-v1-0-2-cache.zip` (6833 files; `build/own-w/data/files` is byte-identical in names and sizes: 0 missing, 0 different) and `Dungeon-Hunter-2-HD-v1-0-2.apk` (+ `reference-binaries/DungeonHunter2-1.0.4-Universal.apk`).

* Archives: the cache has no nested archive but `shaders.pak` (a plain zip of shaders); the APK's only asset is `assets/data.save` (AES payload of the repack-injected `SavesRestoringPortable`, not game data; see `port/android-trackb/README.md`). No .obb/.pak anywhere else in the project. A recursive scan of every zip/apk (nested archives too) finds `RD_Bandit1|2` in exactly one file: `corner_rootden_nw__01.mgp`. Not in any pydata file, not in `libDungeonHunter2.so`/`libStormGLOFT.so`/`classes.dex`, not in the 1.0.4 APK.
* The original installer's own manifest, `files/d_o_w_n_l_o_a_d_e_d.txt` (6574 entries, written by the game as dir+name with the separator dropped), is fully present on disk: 0 of 6574 missing. So the device had the same files; nothing was left undownloaded.
* Character table: one table (`character_properties_pyarraynames.bin`, 455 names). `character_templates_*` (templates), `character_models_dictionary` (model files: bandit1, bandit1_ranged, bandit2 ... as lower-case model names, not RD_ keys) and `character_properties_extra_pystructnames` (struct field names) are different tables; none holds `RD_Bandit1`. Track A's own loader (`port/android-native/.../model_renderer.cpp`, `port/level-world/tools/prepare_static_level_actors.py`) reaches the same conclusion: the name is an authoring typo of the root-den backup module, the record is skipped, and the level still plays.
* Textures: 43 `q:/data/iphone/3d/textures/...` names referenced by .bdae/.mgp files are not in `data/3d/textures` (242 files, all BTEXpvr under a .tga name). They are leftovers in the artists' files: `env_*_alpha.tga` where the real file is `pvr2_env_*_alpha.tga` (the four `go_swamp_*` gameobjects ask for the un-prefixed one, the swamp module itself asks for `pvr2_env_swamp_alpha.tga`, which loads), `tex_prince*`/`tex_faerie_001` of cut-scene-only animation files, spell_* / smoke / streak particle sheets of unused skill bdaes. Each fails on the device the same way (`Could not open file`, material keeps no texture), as L2 found for `ApplyFilenameHacks`. The `qata/` probe is the binary's own second attempt.
* Result: no loader fix is possible or needed; no code changed. Do not alias RD_Bandit1 to RD_MeleeBandit: the binary does not.

### Long seeded soaks (W2, 2026-10-16/17)

`scripts/make_soak_scripts.py <levels output> <frames> <seed...>` writes `scripts/soak/<level>_s<seed>.txt`: loadlevel, five cheat level-ups and
GiveGold, then 5000-frame cycles of seeded random play, explore, hunt, loot, a menu cycle (pause/continue, the six hero-screen tabs, the skills
confirm) and two more level-ups; every second cycle save + quit to the main menu + continue. `SCRIPTS=.../scripts/soak FRAMES=30020 run_levels.sh`
runs them four at a time; `soak_report.py <out> [--stacks]` dedupes ASan/UBSan/ASSERT/crash reports by their top three game frames (runner files
excluded, out-of-memory as "environment"). The headless GL stub counts draw calls and indices; `levelstat` prints both per frame.

| pass | build | runs | result |
| --- | --- | --- | --- |
| seed 1 | before f6f9a99d | 47 x 26,800 frames | 44 clean; 3 = the RD_Bandit1 null visual (L2's, fixed in f6f9a99d). 22 runs were first killed from outside four at a time (another owner's `taskkill /IM dh2_win_headless.exe`); the soak exe is now copied to `dh2_w2_soak*.exe`, and those were rerun clean. 2 out-of-commit-memory aborts (the emulators of other owners hold ~85 GB of commit) were rerun |
| seed 2 | 5a126477 (CMaterial hash/batching) | 47 x 26,800 frames | 13 runs: ASan heap-use-after-free, audio thread `DriverCallbackSourceInterface::GetWorkData` <- `FillBufferStereo16` <- `FillBuffer` reading an emitter's buffer ring freed by `EmitterObj::CleanUp` in `VoxEngineInternal::KillEmitter` (vox thread). Fixed (below); the 13 reruns and all 47 runs are clean: 0 findings |

Draw counters, seed 2 (235 cycle samples over 47 levels): 11.7 .. 67.7 draws per frame (median 44.0), 1,136 .. 36,071 indices per frame (median
9,645); no level draws nothing. No sanitizer report in batch or material code after the CMaterial hash change. These numbers are the baseline for
later batching changes (there is no earlier measurement).

| # | Where | Finding | Status |
| --- | --- | --- | --- |
| 29 | `vox-audio/src/engine-internal-emitter/update_emitters_kill.cpp` `VoxEngineInternal::KillEmitter` (0x86e180) | the call at 0x86e1b4 goes through `_ZTVN3vox13DriverAndroidE` (address point 0x993aa0) slot +0x48 = 0x993ae8 = `DestroyDriverSource` (0x88f59c), with the emitter's source (+0x110) in r1; the port read it as `PrintDebug` (+0x40) and dropped the source, so the driver kept mixing a source whose buffers `CleanUp` then freed (audio-thread UAF, 13 of 47 soak runs) and leaked it | fixed; vox-audio tests 78/78 in a non-runner build |
| 30 | `core-platform/src/filesystem_base.cpp` (another owner) | references `dh2host::recordMissing`, defined only in the runner sources: 59 tests fail to link in any `DH2_HOST_RUNNER` build | the integrator adds a weak default |


## Campaign driver, missing-asset log, release window build (owner P1, 2026-10-17)

**Release build for long plays.** `cmake -S port/decomp-reconstruction -B build/own-p1-rel2 -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS=-g -DCMAKE_C_FLAGS=-g -DDH2_HOST_RUNNER=ON` (WinLibs GCC), `ninja -j4 dh2_win_window`: about 10 minutes cold at -j4, 2-3 times the frame rate of the ASan clang window build. The ASan window build dies on the vox audio race (heap-use-after-free between `VoxThread::_Update` -> `EmitterObj::CleanUp` and `DriverCallbackSourceInterface::GetWorkData`, audio owner) after a few thousand frames of play, the Release build does not.

**Missing-asset log (`DH2_HOST_RUNNER` only).** `FileSystemBase::createAndOpenFile` calls `dh2host::recordMissing("file", path, return address)` where it already logs "Could not open file"; `dh2host::recordMissing` (`host_state_log.cpp`) appends one deduplicated line `kind<TAB>name<TAB>caller` per level to `build/own-p1/missing/<level>.txt` (level `boot` before a level exists). The campaign driver and `sweepinfo` add `character` lines (`reportMissingCharacters`: a character with no `CharacterTable` row or no visual object, with its `charpropsname`), and level step 7 adds a `rnd` line with the random-level generator result. Do not read stderr for such lines: stdout and stderr are two `freopen` handles on `game.log` (`"w"` and `"a"`), so stdout flushes overwrite stderr lines.

**New script commands** (`host_bot.cpp`): `campaign <frames> [lvlN] [bN] [once] [q:<Quest>] [route|warp]` (below), `sweepinfo <tag>` (missing characters + screenshot into `build/own-p1/shots/<level>/<tag>.bmp`), `spend` (spend attribute/skill points like the hero screen's `+`: `IncStatStr/End`, `IncSkill`), `setquest <Name> <state>` (`Quest::SetState`), `scripts` (running script contexts), `worldmap` (the `FastTravelList` rows with unlocked/visited), `nearxy x y r` (objects around a point with their AABB), `enemies` also prints the cut-scene flag.

**Campaign driver** (`campaign`): per level it (1) walks the CheckpointZones, then every room of the path-finding world and every enabled plain `TriggerZone` (cut scenes, boss arenas and ambushes fire when the hero stands in their volume), nearest first, fighting within 600 units, (2) hunts every visible enemy, (3) loots, (4) walks to an exit zone whose target level was not visited yet, waits 60 frames in the zone (the HUD panel needs them; after a warp the zone has not updated yet), finishes enemies within 700 units first (the panel does not show while enemies attack) and presses "travel" at (1206,884). A level that is not left in `bN` frames (default 26000) goes straight to its exit. When every exit leads back to a visited level it takes the world map: the first unlocked, unvisited `FastTravelList` row (the designers' order), `Application::LoadLevel(level, entry, ...)`. Blocked routes warp the hero to the floor point nearest to the exit (`WARP` lines in the log are therefore findings: something on the way blocks the bot). `lvlN` cheats N `LevelUp` toggles (and spends the points) on the first visit of each level so that the story fights are winnable, `once` stops when the level is left (for scripts that `loadlevel` one level at a time), `q:Name` forces a quest ACTIVE on entering. A full-screen menu that stays open for 120 frames (the bot pressed attack next to a merchant) is closed with the back button.
| 31 | `PlayerManager::_ManageCharacters` (0x37280c), hero hidden in cut scenes (phone report) | offline the listing skips everything after LABEL_30 (manage flag +0x6c9 and `GetOnline()+5`); online a local record packs and only publishes m_ingame (LABEL_63), a remote record unpacks and runs the cut-scene rule (0x373580). The port ran the rule offline (hero hidden in Swamp_Intro, tutorials, dialogs; Q2's IsLocal exemption hid the symptom) and had pack/unpack swapped between local and remote, and wrote the HUD slot +4 into the record | fixed; intro screenshot shows the hero, gameplay sessions unchanged except that the hero can now die in packs (the per-frame idle reset of a hero in limbus no longer runs) |
| 32 | LAN co-op regression check of finding 31 (`run_mp.sh`, mp_host / mp_join + `unequip 1`, `unequip 3` on the joiner, ASan build) | both instances see both heroes (visible, positions within a few units, HP/dead state shared); the host's view of the joiner shows slots 1 and 3 empty after the joiner took them off, the joiner's view of the host keeps the full gear, potions 4 vs 5 shown on both sides: local = `_PackInventory`, remote = `_UnpackInventory` works. `[mp] ... view` lines now print each hero's visibility, gold, potions and the nine equipped item ids | ok. Both processes end with an ASan access violation (write to 0x24, thread T303, pc in ntdll, no game frame) AFTER `[runner] done`, i.e. in the multiplayer shutdown: for MP1 |
