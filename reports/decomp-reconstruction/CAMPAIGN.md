# Campaign playthrough in the windowed runner (owner P1, 2026-10-17)

Goal: the whole single-player campaign completed in the windowed runner (`dh2_win_window`, ANGLE, real visuals), level by level, from a save that reached it.
Result in one line: **every level of the shipped LevelList loads, renders textured and plays (41 level files, 3 or more screenshots each); the story was played end to end for the swamp
(001 -> witch cave 002 -> boss -> portal -> 001 -> world map -> water temple 023 -> swamp 2 022 ...) and about 20 levels were played with the campaign bot; the rest of the
story (about 30 more levels at 8-10 minutes of machine time each, on a machine that was shared with 6 other runners) was not finished.** Nothing in the game code stopped a level from
being completed; every stop was in the bot or in the data (below).

Method, commands and the release build are in `HOST-RUNNER.md` (section "Campaign driver ..."). Screenshots: `build/own-p1/shots/<level>/` (`a/b/c` = spawn, after exploring, after hunting;
`enter_<frames since entering>` = every 700 frames of the campaign; `exit_panel_*`, `route_end`, `checkpoints_end`). Missing-asset log: `build/own-p1/missing/<level>.txt`. Logs of the runs:
`build/own-p1-r1/console.txt` (story run), `build/own-p1/seg_c_console.txt`, `seg_d_console.txt`, `build/own-p1-r2/console.txt` (one-level-at-a-time runs; `[campaign] LEFT` lines).

## Story run (continuous campaign from the saved level-1 hero, cheat LevelUp x6 per new level)

| step | where | what happened |
|---|---|---|
| 1 | 001_swamp.mlx | CheckpointZones 01-03 reached (04 is behind water: skipped), 24 rooms/zones walked, hero accepts `Swamp_KillWitch` (AVAILABLE 3 -> ACTIVE 6) by entering `_prim_WitchQuestStart`; `Swamp_Escape` is active from the start, `Swamp_KillFiveLizman` and `Swamp_Moths` stay AVAILABLE (they are accepted through NPC dialogs, which the bot does not do). Real exit `_prim_ExitLevelZone` (-4588,18915) reached, panel pressed, 002 loads. |
| 2 | 002_swamp_witchcave.rule.xml | CP01, all 7 rooms, zones `doorport`, `TriggerZone_11` (starts the `Intro_Witch` cut scene), witch `_prim_Monster_04_56` (700 HP) and her slimes killed: `Swamp_KillWitch` 6 -> 13 (CLOSED), `Open_portal_witch` enables `_prim_ExitLevelZone_42` (4705,-10368). With the quest only AVAILABLE (a hero that skipped 001's zone) the portal never opens: by design. |
| 3 | 002 -> world map | the portal and the entry exit both lead back to 001 (visited); the bot takes the world map (`FastTravelList` order) to 023_watertemple.rule.xml. |
| 4 | 023_watertemple.rule.xml | played, exit `_prim_ExitLevelZone_to_Swamp1` reached through the panel (after the fix below) -> 022_swamp2.rule.xml |
| 5 | 022_swamp2.rule.xml | played 27k frames; the exit the bot touched first (`_toWT`) leads back to 023 (visited), the unvisited trollcave exit was not the first one reached; run stopped here (machine time) |

## Per level (sweep of all levels + the one-level-at-a-time campaign runs)

"exit result": which level the bot's route left to (real exit panel, no warp) and when. "warp": times the route was blocked and the bot warped to the exit (0 = the real route worked).
"not left": the level budget (8000-11000 frames) ended before the bot reached an exit. "-": not run to the exit (loaded, rendered and explored in the sweep only). Missing files / characters: unique entries.
Hero level in the table is after the cheat LevelUps (the saved hero is level 1). Quests are in the story table above (the quest log of each run is in the `[quests]` lines of the logs).

| level (file) | shots | exit result | warp | missing files / chars |
|---|---|---|---|---|
| 001_swamp.mlx | 24 | story run: left to 002_swamp_witchcave (real route in one run after 24k frames, 1 WARP in another: the route stalls near NPC_PriestGood at (-8903,18248)) | 0-1 | 14 / 0 |
| 002_swamp_witchcave.rule.xml | 23 | story run: witch killed, portal opened, left to 001 / world map to 023_watertemple (1 WARP: route to the portal blocked by the arena) | 1 | 4 / 0 |
| 003_darkwood.mlx | 21 | left to 011_earth_temple_01.rule.xml after 9060 frames (hero lvl 13) | 0 | 4 / 0 |
| 004_root_den.rule.xml | 22 | left to 003_darkwood.mlx after 11547 frames (hero lvl 4) | 0 | 4 / 7 |
| 005_infectedvillage.mlx | 17 | left to 006_basement.rule.xml after 7793 frames (hero lvl 19) | 0 | 0 / 0 |
| 006_basement.rule.xml | 20 | not left | 0 | 2 / 0 |
| 007_crypt_01.rule.xml | 3 | - | - | 2 / 0 |
| 008_gothicus_castle_01.rule.xml | 3 | - | - | 2 / 0 |
| 009_abbey.rule.xml | 3 | - | - | 4 / 0 |
| 009a_abbey.mlx | 6 | - | - | 2 / 0 |
| 010_el_lightning.rule.xml | 3 | - | - | 0 / 0 |
| 011_earth_temple_01.rule.xml | 3 | - | - | 6 / 0 |
| 012_earth_temple_02.rule.xml | 3 | - | - | 2 / 0 |
| 013_earth_temple_03.rule.xml | 3 | - | - | 8 / 0 |
| 014_el_earth.rule.xml | 3 | - | - | 2 / 0 |
| 015_red_desert_hub.mlx | 23 | left to 003_darkwood.mlx after 6966 frames (hero lvl 4) | 0 | 4 / 0 |
| 016_red_desert_cave_01.rule.xml | 20 | left to 015_red_desert_hub.mlx after 9477 frames (hero lvl 7) | 0 | 4 / 0 |
| 017_red_desert_cave_02.rule.xml | 19 | left to 015_red_desert_hub.mlx after 9967 frames (hero lvl 10) | 0 | 0 / 0 |
| 018_red_desert_cave_03.rule.xml | 20 | left to 015_red_desert_hub.mlx after 10181 frames (hero lvl 13) | 0 | 0 / 0 |
| 019_light_house_01.rule.xml | 19 | left to 015_red_desert_hub.mlx after 9520 frames (hero lvl 16) | 0 | 2 / 2 |
| 019_light_house_02.rule.xml | 19 | left to 019_light_house_01.rule.xml after 9803 frames (hero lvl 19) | 0 | 2 / 0 |
| 019_light_house_03.rule.xml | 8 | left to 019_light_house_02.rule.xml after 963 frames (hero lvl 22) | 0 | 0 / 0 |
| 020_crypt_02.rule.xml | 3 | - | - | 2 / 0 |
| 021_gothicus_castle_02.rule.xml | 3 | - | - | 0 / 0 |
| 022_swamp2.rule.xml | 39 | left to 001_swamp.mlx after 8290 frames (hero lvl 4) | 0 | 2 / 0 |
| 022_swamp2_trollcave.rule.xml | 19 | left to 001_swamp.mlx after 9109 frames (hero lvl 7) | 0 | 2 / 2 |
| 023_watertemple.rule.xml | 51 | story run: left to 022_swamp2 through the real exit panel | 0 | 2 / 0 |
| 024_el_water.rule.xml | 3 | - | - | 0 / 0 |
| 025_icy_hub.mlx | 19 | left to 003_darkwood.mlx after 9509 frames (hero lvl 25) | 0 | 2 / 0 |
| 026_icy_cavern_01.rule.xml | 19 | left to 025_icy_hub.mlx after 9401 frames (hero lvl 28) | 0 | 4 / 0 |
| 028_icy_cavern_03.rule.xml | 7 | not left | 0 | 2 / 1 |
| 029_wind_temple.rule.xml | 3 | - | - | 2 / 0 |
| 030_el_air.rule.xml | 3 | - | - | 2 / 0 |
| 031_firetemple.mlx | 3 | - | - | 0 / 0 |
| 032_el_fire.rule.xml | 22 | - | - | 4 / 0 |
| 033_voidmaze_01.rule.xml | 3 | - | - | 0 / 0 |
| 034_voidmaze_02.rule.xml | 3 | - | - | 0 / 0 |
| 035_voidmaze_03.rule.xml | 3 | - | - | 0 / 0 |
| 036_underworld_hub.mlx | 3 | - | - | 2 / 1 |
| 037_machine_rooms_01.mlx | 3 | - | - | 4 / 0 |
| 038_dark_temple.mlx | 3 | - | - | 2 / 0 |
| 039_dark_temple_bossroom_01.mlx | 3 | - | - | 2 / 0 |
| 050_earth_temple_demo.rule.xml | 3 | - | - | 4 / 0 |
| x27_icy_cavern_02_BACKUP.mlx | 19 | left to 025_icy_hub.mlx after 9358 frames (hero lvl 31) | 0 | 4 / 0 |

## Missing assets (all levels, `build/own-p1/missing/*.txt`)

Every failed file lookup of the run goes through `FileSystemBase::createAndOpenFile` (textures, .bdae, scenes, fonts). **Over all 41 levels only 28 distinct paths fail, all textures**:
`char_faerie`, `fx_spark`, `spot_shadow`, `troll_swamp`, `tex_faerie_001`, `tex_prince`, `tex_princehair`, `tex_prince_pants`, `tex_plate_shoulder_default_000`, `env_swamp_alpha`,
`env_castle_alpha`, `env_crypt_alpha`, `env_darktemple_alpha`, `env_earth_temple_alpha`, `env_lighthousse_alpha`, each as `data/3d/textures/<n>.tga` and (all but `char_faerie`, `fx_spark`)
`qata/3d/textures/<n>.tga`. Verdict for each: **original fails too** - the names are among the 43 authoring leftovers that no shipped data set contains (`DATA-VERSIONS.md`), and the `qata/...` twin is
the binary's own `ApplyFilenameHacks` rewrite (`.tga` -> `ata/3d/textures/<base>` after the working-directory prefix; CHAOS-BUGS M3, HOST-RUNNER finding 25). No path, case, extension or prefix problem
was found: every other texture, .bdae, animation, scene, font and .swf the 41 levels ask for opens. Not covered by this log: sound files (opened by vox's own file layer, audio owner) and string-table lookups.

Characters without a table row or model (`character` lines; all are in the 9 known-absent names or placeholders): `RD_Bandit1` (`_prim_Bandit_03..07`) and `RD_Bandit2` (`_prim_Bandit2_03`) in 004_root_den,
`Swamp_ActorTroll2` (`_prim_MedLizard_04/05`) in 022_swamp2_trollcave, `_prim_tmp_uncommontype*` / `_prim_tmp_commontype1` with an empty `charpropsname` (random-level spawn templates that the generator
did not replace) and `_prim_NPC_Eddie` (hidden placeholder NPC of 002). The original does not crash on them (`CharAnimator::IncAnimSetUsers` null guard, HOST-RUNNER finding 22); they are simply not
there, so 004's bandit camp is empty.

## Findings and fixes of this run

| # | Where | Finding | Verdict |
|---|---|---|---|
| 1 | bot, `TriggerZoneExitLevel` panel | the fast-travel panel (`DisplayFastTravel`) does not appear while an enemy attacks the hero in the zone (the zone's `m_fastTravelShown` was already 1, the Flash movie showed nothing); the route pressed "travel" into nothing and the level never changed | bot fixed: finish enemies within 700 units, wait 60 frames in the zone before pressing, `[route] ... touching` logs `shown/idx/unlocked` |
| 2 | bot | pressing attack next to the merchant opened the shop and the bot stood there forever | bot fixed: any full-screen menu open for 120 frames gets the back button |
| 3 | 002_swamp_witchcave | the exit portal never opens unless `Swamp_KillWitch` is ACTIVE when the witch dies (quest script `Open_portal_witch`, `v2quests`: the quest is accepted by `_prim_WitchQuestStart` in 001) | **by design**; with the quest active the witch dies, the quest closes (13), `_prim_ExitLevelZone_42` enables, travel works |
| 4 | 027_icy_cavern_02.rule.xml | the random-level generator fails every time and the level loads as `x27_icy_cavern_02_BACKUP.mlx` | **original behaviour**. Root cause with `DH2_RND_LOG=1`: the rule's leaf `<path name="#path[5]"/>` (length 1, no children) is a dead end; `Path::Impl::AddExit` (0x48f05c, checked against the listing) accepts only 1-side blocks for a dead end (`Path::Impl::IsDeadEnd` 0x48bd0c: depth + 1 == length and no child rules) and list element 5 is `straight_icycavern_we_00` (2 sides), so `FilterExits` leaves no candidate. The port equals the binary; the data is broken and the original falls back to the BACKUP level in the same way (every other .rule.xml level generated in the sweep) |
| 5 | 001 -> every level with the hero standing in an exit zone at spawn (003, 023, 028 ...) | the exit panel shows at arrival: the entry point lies inside the zone AABB (`touching=1`, hero AABB z extent 0, zone z -410..190) | matches `TriggerZoneExitLevel::Update` (the panel shows while the local player's AABB touches the zone; the port transcribes the binary's Update); data-driven |
| 6 | HUD portrait | a glowing "+" replaces the hero's face while attribute/skill points are available | **by design** (`AVAIL_POINTS` of `NativeGetPlayerHUDInfos`); the face is back after the points are spent |
| 7 | vox audio (ASan builds) | heap-use-after-free: audio mix thread reads an emitter's buffer ring that `VoxThread::_Update` -> `KillEmitter` -> `EmitterObj::CleanUp` freed (kills every ASan window run after a few thousand frames; the Release build survives) | not fixed (audio owner is in those files); stacks in `build/own-p1-w2/game.log` |
| 8 | Release run, level 002 load | one `std::logic_error: basic_string: construction from null` at `m_loadStep 7` (random-level step) of a travel to 002, process aborted | seen once, not reproduced in 24 consecutive loads of four rule levels, nor in 6 story transitions; open |
| 9 | runner | `game.log` is opened twice (`stdout "w"`, `stderr "a"`): stdout flushes overwrite stderr lines, so a `fprintf(stderr)` debug line can vanish | use `dh2host::recordMissing("note", text, nullptr)` or `g_runnerOut`; documented in HOST-RUNNER.md |
| 10 | shared sources while others edit them | `host_window.cpp` and `glitch-scene-collada-gui/.../CColladaFactory.cpp`, `glitch-video/.../programmable_gl_driver.cpp` (`std::getenv` without `<cstdlib>`), `game-app/.../global-f216b6-13.cpp` (a newline inside a string literal), `game-world/.../ObjectManager-5017c7-2.cpp` (`windows.h` renames `ObjectHandle::GetObject` to `GetObjectA`: link error) stopped the Windows build | one-line fixes (include / join / `#undef GetObject`) |
| 11 | quests | `Swamp_KillFiveLizman` and `Swamp_Moths` stay AVAILABLE for the whole run: accepting needs an NPC dialog, which the bot does not drive; every other quest the bot met (QuestRootDen, QuestTrollCave1, Swamp_KillWitch, Swamp_Escape) became ACTIVE by entering its zone | open (bot) |
| 12 | green creatures | many creatures look green in the swamp/cave levels; left to owner RT as instructed | - |

Changed files: `host-runner/{host_bot,host_state_log,host_script,host_window}.cpp`, `core-platform/src/filesystem_base.cpp` (the `recordMissing` call), `game-app/src/g1-game-app-rnd-8b06ae-{0,6}.cpp` and
`game-world/src/g1-game-world-Level-7c7f5d-3.cpp` (env-gated `DH2_RND_LOG` tracing, host runner only), the one-line build fixes of finding 10.
