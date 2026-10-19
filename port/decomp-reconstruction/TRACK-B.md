# Track B: whole-game source reconstruction

Branch `track-b/development`, cut from `feature/decomp-reconstruction` at `2482a90d` (the final decomp
merge). Track B rebuilds the whole of `libDungeonHunter2.so` as one coherent C++17 source tree that
later recompiles for ARM64 Android. Track A (the playable port on `feature/desktop-gameplay-loop`,
`port/level-world`, `port/android-native` and the other port modules) is a separate project. Track B
uses its code only as a behaviour reference and never copies it in.

Read `README.md` (rules for reconstructed code) and `STATUS.md` (decisions from the decomp phase)
first. This file adds what Track B changes.

## Scope

`tools/decomp_categories.py` no longer holds functions back for Track A. The 6,699 functions it used
to reserve or count as claimed are queued again:

| category | queued | contents |
|---|---|---|
| game-world | 1,527 | GameObject, ObjectManager, Level, rooms and zones, triggers, doors, containers, traps, projectiles, physics (PF*), visual objects and FX, lights, cameras, SceneManager |
| game-app | 1,303 | Application, state machines, Lua and script runtime, input, events, globals, rnd, streams |
| game-character | 1,143 | Character, CharAI, CharProperties, CharStateMachine, CS* skills, AIS* scripts, PlayerManager |
| game-items-save | 831 | items and inventory, quests and objectives, rewards, conditions, savegames, properties, trophies |
| game-ui | 704 | menus, HUD, GameSWF glue, dialogs, string manager |
| game-anim | 365 | animators, blenders, v2 controllers, animation sets |
| additions | 812 | claimed engine, net and pydata functions routed to their existing categories |

Vendored libraries (2026-10-13, `reports/decomp-reconstruction/vendored-libraries.md`): vendor-lua (471,
Lua 5.1.4 with float `lua_Number`), vendor-box2d (318, Box2D 2.0.1 with the DH2 `b2Settings`) and
vendor-gameswf (2,370, gameswf r1714 plus Gameloft changes). Pristine upstream sources are in
`vendor-*/upstream/`; DH2 changes are marked `// DH2:` and host-build fixes `HOST-PORT:`. Rows that match
upstream by name and size are ledgered `upstream`; the rest are reconstructed like any other row. RenderFX
glue moved to game-ui and the `sfc::script::lua` wrapper to game-app.

In-scope total: 25,218 functions. Thunks, the STL runtime and `libStormGLOFT.so` stay out of scope.
`dh2_vendor_lua`, `dh2_vendor_box2d` and `dh2_vendor_gameswf` (the 68 upstream units under
`vendor-gameswf/upstream/gameswf-r1714`, minus the definitions the DH2 sources replace; zlib is the copy from
`../irrlicht-prototype`, option `DH2_SYSTEM_ZLIB` uses the toolchain's) build as libraries of their own and are part of
the one link group. Game code may include `lua.h`, `Box2D.h` and `gameswf/gameswf_value.h`.

## One tree, one definition

- **Game class headers.** Every game class has exactly one header, `game/include/dh2/<Class>.hpp`.
  Namespaced classes nest by directory (`dh2/Foo/Bar.hpp` for `Foo::Bar`). Nested classes
  (`Character::NetStructCharacter`) live in their owner's header. Free functions owned by `<global>`
  go in `game/include/dh2/global/<topic>.hpp`.
- **Sources.** Game sources go in `game-<cat>/src/<Class>.cpp`, or `<Class>_<n>.cpp` when one class is
  split across batches. Engine and library categories keep their existing layout.
- **Build.** All game categories build into one library, `dh2_game`. It sees `game/include`,
  `shared/include` and every engine category's `include/`, so a game file can include
  `glitch-video/...` or `vox-audio/...` directly.
- **Includes.** Use `#include "dh2/Character.hpp"`, never a relative path. Headers must be
  self-contained, so `tools/trackb/check_tu.sh <header>` compiles them on their own.
- **Layouts.** A layout lives only in its owner's header. Code that needs another class's field
  includes that class's header and uses the named member. If the member is not declared, the code
  does not invent a local stand-in struct. It declares nothing, marks the function `partial`, and
  records a layout request (see Reports below). The integrator applies the request to the owner header.
- **Stand-ins.** No new `deps/` stand-ins for game code. Existing engine `deps/` headers stay until
  the engine unification wave.
- **Link integration (link-1).** Every library is one member of a rescanned link group (`dh2_all`), and every test links
  `dh2_all_tests`: the same group plus `dh2_test_link_stubs`. The stub archive holds one aborting definition for each symbol
  that a test reaches and no library defines yet (`link-stubs/link_stubs.csv`, regenerated from the link; the full list of
  symbols without a body is `reports/decomp-reconstruction/link-missing.csv`). A stub is the last archive, so a real
  definition anywhere wins, and the ctest `link/library-duplicates` fails when a stub is stale or two libraries define
  one symbol. Test executables link with `--allow-multiple-definition`: the test's own definitions come first and win, so a
  test can still replace a seam with a recording double; a library may not do that. A double that should win must be a
  strong definition (a `weak` one loses to an archive member in a COFF link). A test must not keep a double for a function
  that the tree now defines, unless it is a deliberate spy. `-flifetime-dse=0` is set for GCC: the original compiler kept
  stores to an object before its constructor and in its destructor, and the code and the tests read them.
  `boost::intrusive_ptr(T*)` takes over the reference it is given; use `(p, true)` to add a use.
  `py -3 tools/trackb/link_report.py stubs|missing|overrides` regenerates `link-stubs/link_stubs.csv` (from the tests'
  undefined symbols; rerun cmake and ninja after it), `reports/decomp-reconstruction/link-missing.csv` and
  `reports/decomp-reconstruction/link-test-overrides.csv` (the library definitions that a test replaces). Run it with
  one ninja at a time in the build directory, after `ninja -k 0` has built every library and test object.

## Layout rules (game classes)

- Recover a layout from its constructor first, then its other methods (Hex-Rays `*(T*)(a1 + N)`
  accesses), and the vtable listing (`tools/decomp_vtable.py`). `reports/decomp-reconstruction/class-facts.json`
  gives the hints: base classes, members constructed in place, `operator new` sizes and vtable size.
- Declare members in their original order. Each member gets its original 32-bit offset as a comment:
  `CharAI m_ai; // +0x3c8`. When the original object size is known, record it as a comment on the class.
- Name members from evidence: a getter or setter name, a string, a Lua binding or a save field. Name an
  unknown field `unk_<hex offset>` with the narrowest type the accesses show. Fill an unknown gap with
  `uint8_t pad_<hex offset>[N];`. Never use `undefined4`.
- Declare virtual methods in vtable slot order, primary vtable first. Write `override` where a base
  declares the slot. With multiple vtable pointers (Character has them at +0, +4 and +0x24), declare
  the secondary bases in offset order.
- Do not `static_assert` the 32-bit sizes. The build is 64-bit, so pointers are 8 bytes.

## Decisions in force (the integrator settles the decomp open decisions for Track B)

1. `intrusive_ptr`: the counting form (`glitch-core-io`'s `boost/intrusive_ptr.hpp` with
   `IReferenceCounted`) is canonical. The non-counting stubs are retired in the engine unification wave.
2. Pointer width: in-memory pointers are host width. Binary data from files (savegames, tables, assets)
   is decoded field by field at its 32-bit file layout, never cast to a host struct.
3. pydata `Arrays` stride: the same rule. Tables are decoded at the file stride into host-sized elements.
4. A thunk is forwarded to its target. It is never reimplemented.
5. No guessing: an unknown branch, table or layout keeps the row `partial`, and its note says what is missing.
6. Engine conflicts (2026-10-13): the binary wins. `CCameraSceneNode` derives from `ICameraSceneNode`, and its
   `SViewFrustum` owns the overlapping box and matrices. `CNetPlayerInfo` derives from `NetStruct`, and its
   member id defaults to 0 as the constructor sets it. `NetStructMemberType<bool>` keeps the value at +0x1d.
   `ByteArray` owns its buffer.
7. The pydata generated headers are hand-maintained source. `gen_structs.py` and `gen_script_cmd.py` are retired.
8. Claimed by Track A means nothing in Track B. Every row is ledgered on its own evidence.
9. Access specifiers are not recoverable from the binary, and the original code reads other classes'
   fields directly (for example `Character` reads `CharAI` +0x40). Game class members are `public`. Do not
   add `private:` or `protected:` to game headers, and do not add getters only to get around access.
10. Every reconstructed function reproduces the original mangled symbol: the same namespaces, class, name,
    parameter types and const-ness, so it links where the original did. `tools/trackb/armdiff/conformance.py`
    checks this. A deviation is a defect, not a style choice.
11. Verification: `tools/trackb/armdiff` runs reconstructed functions beside the original ARM code. A
    mismatch triaged as a reconstruction error demotes the row to `partial`, with a note naming the first
    differing register or byte. A base-class layout error is fixed once, at the base. Matches of 8 bytes or
    less are reported separately from matches of real bodies.
12. STLport option A (2026-10-16, `reports/decomp-reconstruction/STLPORT-DECISION.md`): the original links STLport 5.2.1 statically
    (namespace plain `std`, NDK r5b); Track B builds against the NDK libc++ (`std::__ndk1`) and the host libstdc++
    (`std::__cxx11`) and does not vendor STLport. The conformance checker (`tools/trackb/armdiff/conformance.py`, `norm_std`)
    therefore canonicalises a std-typed symbol before comparing: inline namespaces and ABI tags are dropped (`std::__ndk1::`,
    `std::__1::`, `std::__cxx11::`, `[abi:...]`), the expanded `basic_string<char|wchar_t>` and `basic_istream/ostream/iostream<char>`
    are read as `std::string/wstring/istream/ostream/iostream` (the `Ss`, `Si`, `So`, `Sd` abbreviations), and `unsigned long` inside a
    std type is read as the 32-bit original's `unsigned int` (64-bit `size_t`). Rows equal after this are class `stl_abi`: expected, not
    a defect. Deviations that stay documented: STLport-internal types in a signature (`std::priv::...`, 22 rows), the layouts of
    `std::string/map/set/list/vector<bool>` (24/24/24/8/20 bytes in the original, 12 in libc++; the armdiff `C-stl` class), and the
    `glitch::core::SAllocator` and `vox::SAllocator` containers (a separate declaration defect, decision paper section 6). The host may
    add `-D_GLIBCXX_USE_CXX11_ABI=0` for byte-identical host symbols; nothing requires it.
13. `gameswf::as_value` is 12 bytes with alignment 4: `#pragma pack(push, 4)` scopes to the struct in
    `vendor-gameswf/include/vendor-gameswf/as_value.hpp`, and `m_owner` (+0x08) overlays the high word of `m_number` (+0x04) in an
    anonymous struct inside the payload union, as in the binary. A number constructor must not write `m_owner`. `tu_datetime::m_time`
    is `int64_t` (8 bytes, read whole by `as_date::get_time` 0x79d650). The armdiff cache key is the source file hash only: after a
    header layout change rebuild with `build_arm.py --force`.
14. Process-buffer heap alignment (2026-10-16, W2): `glitch-core-io/src/process_buffer_heap.cpp` places the first block word so that
    every payload (header + 4 bytes) is 16-byte aligned and rounds every block to a multiple of 4 words. The binary carves 4-byte words
    (32-bit ARM, `allocProcessBuffer` 0x5345f4). Host-width deviation in the spirit of decision 2: the blocks hold host objects with
    pointers and 64-bit members. Evidence: `CMaterialRendererManager::beginMaterialRenderer` builds its `SCreationState` (pointer
    members, alignment 8) in place in an `allocProcessBuffer(sizeof(SCreationState))` block (`ok1-CMaterialRendererManager.cpp` ~763);
    the llvm-mingw UBSan build reported "member access within misaligned address 0x...824 for type 'SCreationState', which requires
    8 byte alignment" (and the same for its `SPassBinding`/`STechniqueList` members) at the first material of the boot. On arm64 an
    exclusive/atomic access or a vector store to such an address faults. Free-space accounting, merging and the dump format are the
    binary's; only block sizes grow (the dump prints the rounded size). `glitch-core-io/tests/process_buffer_heap_test.cpp` checks this
    layout.
15. Screen aspect: 3D aspect, HUD box, tailored menu layouts (2026-10-17, UI3..UI12, deviation from the binary; the centred menu box of UI3 and the black bars of UI4 (c) / UI5 are gone since UI12, see the end): the original stretches every Flash movie over the whole
    surface (`MenuFlash2DCamera::Update` -> `SetBounds(..., scale_mode 0)`) and builds its cameras for a 16:9 screen (Level camera aspect 1.66775,
    avatar camera `kAvatarCameraAspectRatio`). On a surface of any other aspect (21:9 phone, square foldable) that distorts the UI. The port keeps
    the viewport on the whole surface and fits the movies into the largest centred 16:9 rectangle (`ScreenUsesAspectFit()` in
    `dh2/global/screen_size.hpp`; touch uses the same `root::display_bounds`, so hit-testing follows the drawing); the 3D cameras multiply their
    aspect by `ScreenAspectScale()` (vertical FOV unchanged, more world at the sides). The original's own sizes (800/854/960 wide) and non-Android,
    non-host-runner builds are untouched (helpers return false / 1.0).
    UI4 additions to the same deviation, all under `ScreenUsesAspectFit()`: (a) *HUD corner anchoring*: the HUD movie (slot 3, `dqhud*.swf`, root
    `menu_HUD_<HUDStyle>`) is not left in the centred box; `HudAnchorUpdate` (game-ui `HUDControls` file, called by `MenuManager::Draw` for slot 3 every
    frame before `Render`) keeps the fit's scale but translates each HUD element in its local matrix by the extra surface margin (margin in px /
    px per stage unit, per axis) toward the edge of the quadrant its stage reference point lies in: top half up, bottom half down, left half left,
    right half right, nothing inside a +-10% band around the centre. Elements: `HealthBars.{player,btn_potion,enemy}`, `btn_charactermenu`,
    `btn_mainmenu`, `itunes_controls`, `menu_miniMap` (forced top right), `itemname_text` (bottom), the `deadzone_*` touch blockers and
    `controls.controls.{Joystick,btn_interact,btn_skill1..3,btn_spell,list}`. The applied offset is remembered per character so a timeline or
    `SetHUDPos` rewrite is taken as the new base, `initCachedChars` releases it before the layout is read and captured, and it is 0 while the
    layout is being customised; touch hit-testing and the minimap viewport read the moved matrices, so they follow. The 16:9 clip of the
    movie is lifted for the HUD (`g_dh2FlashFit[0] = 0`). World-anchored clips (FlashAnimManager, SWFAnim, ally bars) are not under these elements.
    (b) *Stick touch zone*: in `RenderFX::UpdateCursor` a press in the bottom-left quarter of the surface that hits nothing, the stick's own
    pad or the full-screen `pinch` clip takes the virtual stick as its hit (`HudStickZoneTarget`, switch `ScreenUsesStickZone()` = the fit is on,
    so the original's own sizes keep the original stick); the drag is measured from the press point, the stick graphic stays in place.
    (c) *Black bars*: on the opaque full-screen pages (`menu_splash`, `menu_Loading`, `menu_VerificationLoading`; told by the state name,
    `IsOpaqueFullScreenState`, because the movies carry no flag) the render handler paints the bars outside the box black before the movie is
    drawn (`g_dh2FlashFit[5..11]`); transparent pages (main menu, start game) and the HUD keep the 3D scene behind them. (d) The `preload_font`
    clip (six "Warrior" text fields parked above the stage, whose glyphs `MenuManager` preloads) is parked 1000 px higher once, because the 5%
    clip margin of the box revealed it on the splash and main menu.
    UI5 additions (the user's test of v0.2.5 on the Fold): (a) *port settings* (`core-platform/port_settings.hpp`, file `dh2_port.cfg` in the
    files dir, env `DH2_SCREENFIT` / `DH2_HUDSCALE`, Java natives `nativeGet/SetPortSetting`, controls in the "!" session dialog): `screenfit`
    0 = the binary's stretch (`ScreenUsesAspectFit()` false, everything above inert), 1 = the fit (default); `hudscale` HUD size in percent,
    0 = automatic (125 on a tablet-shaped surface, else 100). Changes are applied on the game thread at the next frame (`dh2port::Apply` in
    `appUpdate`, the 3D camera rescaled with the old and new aspect). (b) *HUD box*: `MenuFlash2DCamera::Update` gives the HUD movie its own
    box, the 16:9 fit scaled by `HudScalePercent()` about the surface centre; every movie's box is recorded (`SetFlashBoxForRoot`) and the
    world-to-stage code (ally bars, Flash anims, SWFAnim, minimaps) uses `FlashBoxOffsetX/Y(root)` of the movie it writes into. `HudAnchorUpdate`
    takes its margins from that box (negative when the box is wider than the surface: side elements are pulled in to the real edges). (c) *pages
    cover the HUD*: `HudCoveredByPage()` (game-ui `screen_fit_port.cpp`) is true when any of the charmenu/menus movies has pages on its stack
    (the test `MenuManager::Draw` uses) or the HUD movie shows a page of its own (state not `menu_HUD_*`, i.e. the pause page); then the HUD
    offsets are released (the HUD returns into its box, under the page, as on the original's stretched screen) and the bars outside the box
    are painted black for every movie drawn (UI4's opaque-page list now counts only while the page is really shown: the menus root keeps
    `menu_Loading` as its current state all through a level). (d) *full-stage overlays* of the HUD movie (`HurtCorners`, `SemiAlphaBlackBg`,
    `menu_BlackScreen`, the fades) are scaled, not moved (`CoverHudOverlay`), so the hurt vignette and the black screens cover the whole surface.
    UI6 addition (port feature, every screen): *per-element HUD size* on the game's own HUD customise page (Options > Custom). A press on a
    layout element selects it; a gilt frame and two medallions (+ / -, port art generated by `tools/trackb/hud_icons.py`, shipped as
    `assets/dh2port/*.png`, copied to `files/data/port/` by DataSetup, loaded through the engine's PNG loader) change its size in 10% steps
    (50..200%), kept as `hudelem.<HUDStyle>.<index>` in `dh2_port.cfg`; Reset restores 100% everywhere. The size is a uniform scale of the
    element's local matrix about its bound centre, applied after the layout code and the anchoring every frame (`HudScaleApply`) and taken
    off before anything reads the layout (`HudScaleRelease` in `HudAnchorUpdate`, `SaveHUDPos`, `CaptureDefaults`), so the saved layout
    stays the original's stage positions. While customising, the HUD movie uses the plain fit box so every element is on the screen.
    Medallion touches are swallowed in `RenderFX::UpdateCursor` (`HudCustomizeOverlayHit`); the overlay is drawn by `MenuManager::Draw`
    after the HUD movie (`HudCustomizeOverlayDraw`, 2D driver path of the loading screens).
    UI7 port option `enemybar` (default 1): the original shows the targeted enemy's bar (`HealthBars.enemy`) at a fixed HUD slot
    (InfoHUDManager::FastUpdate only shows/hides it and sets name, level and HP frame; the ally bars are the ones placed from world
    positions). With the option on, the bar's bottom centre is placed above the enemy's head (world position + 350, the ally offset)
    through the HUD movie's box; when the head is off the rendered screen, or with the option off, the bar is back at its authored
    slot, so the original look is one switch away ("!" dialog, `enemybar=0`).
    UI8..UI11 (2026-10-17/18, superseded by UI12): automatic per-clip layouts (spread toward the edges, grouping, stretch then
    shape restore by size class, sticky classes). Each round fixed one page and broke another, because the classes came from clip
    bounds that animations, selection glows and hit areas change. Kept from that time: UI9 (a) the activity is `sensorLandscape`
    and the game's own accelerometer flip (`nativeSetOrientation`) is no longer called, Android rotates the window; UI9 (b) the HUD
    customise page shows the play layout and `HUDControls::OnEvent` calls `HudLayoutRelease` before its drag/save maths; the HUD
    customise medallions are `.tgp` files (TGA 2.0 footer; `FileSystemBase::ApplyFilenameHacks` sends every `.tga` name to
    data/3d/textures/); `dumpui=1` (the "!" dialog's Save mark) logs every clip path of the visible pages under logcat tag DH2FIT.
    UI12 (2026-10-18, the user's rule: hand-tailored layouts for the common phone ratios, the plain stretch for any other, no
    automatic rules, no boxes, no bars): (a) the menu movies (slots 0-2) are stretched over the whole surface exactly as the binary
    does (`SetBounds(..., scale_mode 0)`), so every position is the original's and edges reach the screen edges; the HUD movie keeps
    its UI5 box and anchoring, except while it shows its own pause page (`HudMoviePageUp`), when it is stretched like the menus.
    (b) `data/port/ui_layouts.txt` (shipped as `assets/dh2port/ui_layouts.txt`, copied by DataSetup; written once in
    `tools/trackb/ui_layouts.body.txt` and composed per ratio section by `py -3 tools/trackb/ui_walk.py layouts`) lists, per
    screen-ratio section, the clips whose 16:9 shape is restored: `shape` scales the clip back against the stretch (x by 1/r on a
    wide screen, y by r on a tall one, r = (W/H)/(16/9)) about a pivot: a point of its own bound (`anchor=`), a point of the stage
    (`edge=`, e.g. a column pinned to the right edge) or a sibling's bound (`pivot=`); `cover` scales the other axis up instead
    (pictures; `amount=0.5` = half cropped, half stretched, used for the splash art); `grow` lets a clip take the section's
    `scale=` (the Fold inner screen section has 1.25: main menu, start game, loading, pause and splash buttons get bigger, dense
    pages keep the 16:9 size). Sections: 1.95-2.50 (18:9 to 21:9 phones, Fold cover 2520x1080), 1.00-1.45 (Fold inner 2184x1968,
    4:3 tablets), 1.45-1.70 (16:10, 3:2). 16:9 and any unlisted ratio get the pure original stretch. Every rule works from the
    clip's timeline matrix each frame (animations stay right) and runs again before the hit test (`MenuPageLayoutForCursor`), so
    taps land on what is drawn. A matrix that keeps the scale written by the rule and changes only the translation is a move by
    the game (`MenuFX::SetPosition` while a skill icon is dragged, `Dragable::ResetPosition`): the move is added to the
    remembered timeline matrix instead of replacing it (otherwise the shape was restored again on every move and the dragged
    icon shrank away; the user's Fold report of 2026-10-18). (c) Regression walk: `py -3 tools/trackb/ui_walk.py run` drives the host runner through 19 shots
    (splash to the HUD customise page, a skill dropped on no slot, menu taps by clip name with the runner's `tapclip <path>`) at 1920x1080, 2520x1080 and
    2184x1968, and `ui_walk.py sheet` writes one contact sheet per size (16:9 reference next to each page).

## Worker protocol (one batch = one owner class, up to about 20 functions)

1. Read every function in the batch: `py -3 tools/decomp_extract.py --address 0x...` (Hex-Rays). Check
   doubtful spots against the assembly (`py -3 tools/decomp_asm.py`) or IDA (ida-pro-mcp tools:
   `decompile`, `disasm`, `xrefs_to`). Do not write to the IDA database.
2. Write the bodies into the batch's own source file. Add method declarations to the owner header
   when they are missing. The owner header is yours for the batch; other headers are read-only.
3. Each function starts with `// 0x<addr> <mangled or demangled symbol>`.
4. Compile: `bash tools/trackb/check_tu.sh <your .cpp> <owner header>`. Fix until both are `OK`.
5. Add a test in `game-<cat>/tests/<class>_<n>_test.cpp` where the logic can run without the
   engine (arithmetic, state, parsing). Check it with `bash tools/trackb/check_tu.sh --test <test> <sources>`.
6. Write the ledger rows to `<category>/ledger.d/<batch-id>.csv` (header
   `elf_address,symbol,status,source_file,notes`), one row per batch function. Never edit `ledger.csv`.
7. Report back with the structured result (statuses, files and layout requests). Do not run git.

## Reports and integration

After each wave the integrator runs `py -3 tools/trackb/merge_ledger.py`, applies the layout requests
to the owner headers, rebuilds (`cmake --build build/tb-host`), runs the tests, updates
`tools/decomp_progress.py` totals in `STATUS.md`, commits and pushes.

## Known baseline failures (native MinGW, 2026-10-12)

The decomp phase reported 380 of 380 tests passing under Wine. Native MinGW at `2482a90d`: 376 of 380.
- `core-platform/filesystem_extra_test`, `sys_config_fs_test`, `win32_slim_test`: exit code
  0xc0000139 (entry point not found). Probably a DLL mismatch on this machine.
- `vox-audio/random_group_test`: exit code 0xc0000374 (heap corruption). Wine did not show it. Likely a real bug.
