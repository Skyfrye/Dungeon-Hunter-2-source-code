# Level transition graph (owner R5, 2026-10-17)

Every level transition of the shipped data, derived from the game data and cross-checked against the reconstructed game in the Windows host runner (`build/own-r5b`, headless Release build of the current tree).

Sources: `levels_pyarray.bin` (Arrays::FastTravelList 33 rows, Arrays::LevelList 51 rows), `worldmap_pyarray.bin` (Arrays::WorldMap 13 rows, Arrays::WorldMapLockers 3 rows), `v2conditions_pyarray.bin`, `v2quests_pyarray.bin`, the `TriggerZoneExitLevel` / `SpawnPoint` objects of every `.mlx` level and every `.mgp` block that a `.rule.xml` level lists (`data/3d/modules/*/mgp`), the `ChangeLevel` script commands of `data/pydata/scripts/*_pyscripts.bin`, and `data/text/locations.english` for the titles. Parsers: `build/own-r5/{pd,graph,quests,common,genmd}.py`.

## How a transition works

1. A `TriggerZoneExitLevel` (properties `levelName` = a LevelList row name, `entrypointID`, `fasttravel` = a FastTravelList id, `activate_cond` = a v2Conditions name, `maploc`, `question`; `levelID` is unused) is only updated while its condition holds (`ObjectBase::TestEnableCondition`, run by `ObjectManager::Update` for every object in the condition list). While the local hero touches it (`GameObject::IsTouching`, AABB including z) `TriggerZoneExitLevel::Update` (0x39c33c) unlocks its `fasttravel` id for the hero (once) and calls the HUD callback `DisplayFastTravel(true, LevelList[levelName].LevelName text, levelName, entrypointID)`.
2. The panel button calls `NativeGoToZone(levelName, entrypointID)` (0x4422b8): `-1` becomes 0, `Level::QuickSave(false)` + `SG_SaveAllPlayer(false)`, the row is looked up in LevelList (`m_memberNames`), then `Application::LoadLevel(LevelList[row].LevelFile, entry, slot, resume=true, useSpawnPoint=true, difficulty, false, 0, 0)`. The world-map list of the hero screen (`NativeGetWorldMapLocations`) shows the FastTravelList rows whose bit the hero has unlocked and ends in the same `NativeGoToZone` with that row's `LevelName` and `EntryPointId`.
3. The destination hero is put on the first enabled `SpawnPoint` (template `EntryPoint`) whose `entrypointID` equals the entry (`Level::GetSpawnPoint` 0x3ef614). Most entries exist as 3-4 copies at the same spot with different `activate_cond` (`NoFollowers1`, `RENE_FOLLOW`, `EDWARD_FOLLOW`, `IsAfter_KillFlaminite`) that select where the followers appear.
4. Script transitions use `Script_ChangeLevel` (0x45cba0): `SG_SetLevelId(row)`, `SG_Save`, `LoadLevel(file, entry, ...)`.

LevelHub values (`levels_pycst.bin`): 0 Main, 1 Swamp, 2 Darkwood, 3 GothicusCastle, 4 IcyCliff, 5 RedDesert, 6 Underworld, 7 MachineRoom, 8 DarkTemple. FastTravelLocationType: 0 Hub, 1 SubLocation, 2 SubLevel. Quest states: 0 Locked, 1 PostLocked, 2 PreAvailable, 3 Available, 4 PostAvailable, 5 PreActive, 6 Active, 7 PostActive, 8 PreCompleted, 9 Completed, 10 PostCompleted, 11 PreClosed, 12 Closed, 13 PostClosed.

## Levels (Arrays::LevelList)

| row | name | file | hub | random | title (LevelName) | exits (distinct) |
|---|---|---|---|---|---|---|
| 0 | ABBEY_ENTRANCE_01 | `009_abbey.rule.xml` | Darkwood | yes | Sanctuary Dungeon | 2 |
| 1 | ABBEY_RUINS_01 | `009a_abbey.mlx` | Darkwood | no | Great Sanctuary | 7 |
| 2 | APPLETEMPLE | `050_earth_temple_demo.rule.xml` | - | yes | Inner Sanctum | 0 |
| 3 | APPLETEMPLEBACKUP | `x50_earth_temple_demo_BACKUP.mlx` | - | no | Inner Sanctum | 0 |
| 4 | DARKWOOD | `003_darkwood.mlx` | Main | no | Gothicus Darkwood | 11 |
| 5 | DARKWOOD_V2 | `003_darkwood.mlx` | Main | no | Gothicus Darkwood | 11 |
| 6 | DARKWOOD_V3 | `003_darkwood.mlx` | Main | no | Gothicus Darkwood | 11 |
| 7 | DARK_DUNGEON_TEMPLE_01 | `038_dark_temple.mlx` | Underworld | no | Alastor's Domain | 3 |
| 8 | DARK_DUNGEON_TEMPLE_BOSSROOM | `039_dark_temple_bossroom_01.mlx` | DarkTemple | no | Destiny's End | 1 |
| 9 | DESERT_CAVE_01 | `016_red_desert_cave_01.rule.xml` | RedDesert | yes | Bandit Lair | 2 |
| 10 | DESERT_CAVE_02 | `017_red_desert_cave_02.rule.xml` | RedDesert | yes | Wormgroves | 2 |
| 11 | DESERT_CAVE_03 | `018_red_desert_cave_03.rule.xml` | RedDesert | yes | Tar Mines | 1 |
| 12 | EARTH_TEMPLE_01 | `011_earth_temple_01.rule.xml` | Darkwood | yes | Earthlight Temple - Entrance | 2 |
| 13 | EARTH_TEMPLE_02 | `012_earth_temple_02.rule.xml` | Darkwood | yes | Inner Sanctum | 2 |
| 14 | EARTH_TEMPLE_03 | `013_earth_temple_03.rule.xml` | Darkwood | yes | Den of Corruption | 2 |
| 15 | ELEMENTAL_AIR | `030_el_air.rule.xml` | Darkwood | yes | Trial of Air | 2 |
| 16 | ELEMENTAL_EARTH | `014_el_earth.rule.xml` | Darkwood | yes | Trial of Earth | 2 |
| 17 | ELEMENTAL_FIRE | `032_el_fire.rule.xml` | Darkwood | yes | Trial of Fire | 2 |
| 18 | ELEMENTAL_LIGHT | `010_el_lightning.rule.xml` | Darkwood | yes | Trial of Lightning | 2 |
| 19 | ELEMENTAL_WATER | `024_el_water.rule.xml` | Darkwood | yes | Trial of Water | 2 |
| 20 | FIRE_TEMPLE_01 | `031_firetemple.mlx` | RedDesert | no | Fallen Kingdom | 2 |
| 21 | GOTHICUS_CASTLE_01 | `008_gothicus_castle_01.rule.xml` | Darkwood | yes | Gothicus Castle | 0 |
| 22 | GOTHICUS_CASTLE_02 | `021_gothicus_castle_02.rule.xml` | Darkwood | yes | Gothicus Castle | 2 |
| 23 | GOTHICUS_CRYPT_01 | `007_crypt_01.rule.xml` | Darkwood | yes | Path of Kings | 8 |
| 24 | GOTHICUS_CRYPT_02 | `020_crypt_02.rule.xml` | Darkwood | yes | Royal Tomb | 2 |
| 25 | ICY_CAVERN_01 | `026_icy_cavern_01.rule.xml` | IcyCliff | yes | Icemurk Dellion | 2 |
| 26 | ICY_CAVERN_02 | `027_icy_cavern_02.rule.xml` | IcyCliff | yes | Frost Comb | 2 |
| 27 | ICY_CAVERN_03 | `028_icy_cavern_03.rule.xml` | IcyCliff | yes | The Howling | 2 |
| 28 | ICY_HUB | `025_icy_hub.mlx` | Main | no | Northerlands | 4 |
| 29 | INFECTED_VILLAGE_01 | `005_infectedvillage.mlx` | Darkwood | no | Condemned Village | 2 |
| 30 | LIGHT_HOUSE_01 | `019_light_house_01.rule.xml` | RedDesert | yes | Lighthouse - Entrance | 2 |
| 31 | LIGHT_HOUSE_02 | `019_light_house_02.rule.xml` | RedDesert | yes | Lighthouse -  Upper Tower | 2 |
| 32 | LIGHT_HOUSE_03 | `019_light_house_03.rule.xml` | RedDesert | yes | Light of Corruption | 5 |
| 33 | MACHINE_ROOMS_01 | `037_machine_rooms_01.mlx` | MachineRoom | no | Faerie Domain | 1 |
| 34 | MULTIPLAYER_TEST | `101_debug_MachineRoomTestMultiPlayer.mlx` | - | no | Alastor's Domain | 0 |
| 35 | PORTAL_ROOM | `003_darkwood.mlx` | Darkwood | no | Great Sanctuary | 11 |
| 36 | QUESTTEST | `102_debug_QUESTTEST.rule.xml` | - | yes | Alastor's Domain | 0 |
| 37 | RANDOMFORALEX | `125_RandomForAlexB.rule.xml` | - | yes | Alastor's Domain | 2 |
| 38 | RED_DESERT_HUB | `015_red_desert_hub.mlx` | Main | no | The Bloodsands | 6 |
| 39 | ROOT_DEN_01 | `004_root_den.rule.xml` | Darkwood | yes | Wormroot Hollow | 2 |
| 40 | SECRET_BASEMENT_01 | `006_basement.rule.xml` | Darkwood | yes | Dried Well | 2 |
| 41 | SWAMP | `001_swamp.mlx` | Main | no | The Boglands  | 3 |
| 42 | SWAMP_02 | `022_swamp2.rule.xml` | Swamp | yes | South Boglands | 3 |
| 43 | SWAMP_CAVE_TROLL_A | `022_swamp2_trollcave.rule.xml` | Swamp | yes | Slough Pit | 2 |
| 44 | SWAMP_CAVE_WITCH_A | `002_swamp_witchcave.rule.xml` | Swamp | yes | Bogwitch Cavern | 2 |
| 45 | UNDERWORLD_HUB | `036_underworld_hub.mlx` | Main | no | World of Ruin | 2 |
| 46 | VOID_MAZE_01 | `033_voidmaze_01.rule.xml` | Underworld | yes | The Void | 3 |
| 47 | VOID_MAZE_02 | `034_voidmaze_02.rule.xml` | Underworld | yes | The Void - Left Lobe | 1 |
| 48 | VOID_MAZE_03 | `035_voidmaze_03.rule.xml` | Underworld | yes | The Void - Right Lobe | 1 |
| 49 | WATER_TEMPLE_01 | `023_watertemple.rule.xml` | Swamp | yes | Shrine of Tears | 2 |
| 50 | WIND_TEMPLE_01 | `029_wind_temple.rule.xml` | IcyCliff | yes | Temple of Winds | 2 |

## Exit zones (TriggerZoneExitLevel) per level

"block" is the `.mgp` module (or `(level)` for `.mlx` levels) that holds the zone; for `.rule.xml` levels only the blocks the generated level really contains can appear (`*` = block of a list that the RootRule does not reference). "entry spawn copies" are the conditions of the destination `SpawnPoint` objects with that id. "runner" is the result of the automated run (zone entered with `tpnear`/`tele`, panel button pressed, destination level and hero position compared with the destination spawn points).

| level | exit object | block | condition | destination (file) | entry | entry spawn copies (conditions) | fasttravel id | runner |
|---|---|---|---|---|---|---|---|---|
| ABBEY_ENTRANCE_01 | `_prim_ExitLevelZone` | abbey_deadend_w_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 42 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_fromBasement (d=0) |
| ABBEY_ENTRANCE_01 | `_prim_ExitLevelZone_toAbbeyupstairs` | ABBEY_entrance_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 42 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_fromBasement (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone` | ABBEY_entrance_ns_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 8 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | a07_DARKWOOD_CATHEDRAL | ok: hero on enabled entry spawn _prim_EntryPoint8_fromAbbey (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toEarth` | ABBEY_entrance_ns_01.mgp | `IsAfter_EDKillTroll` = QuestInState(ED_KillTroll,PostClosed) | ELEMENTAL_EARTH (`014_el_earth.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toWater` | ABBEY_entrance_ns_01.mgp | `IsAfter_WT_Balrog` = QuestStateHigher(WT_Balrog,Closed) | ELEMENTAL_WATER (`024_el_water.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toWind` | ABBEY_entrance_ns_01.mgp | `IsAfter_WindTemp` = QuestInState(WindTemp_FindFaery,PostClosed) | ELEMENTAL_AIR (`030_el_air.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toFire` | ABBEY_entrance_ns_01.mgp | `IsAfter_KillFlaminite` = QuestInState(FireTemp_FindHotty,PostClosed) | ELEMENTAL_FIRE (`032_el_fire.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toLightning` | ABBEY_entrance_ns_01.mgp | - | ELEMENTAL_LIGHT (`010_el_lightning.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok (retry with a shorter approach: ELEMENTAL_LIGHT loaded, hero on its entry (-1553,-1316)) |
| ABBEY_RUINS_01 | `_prim_ExitLevelZone_toAbbeyCrypt` | ABBEY_entrance_ns_01.mgp | `IsAfter_Lighthouse_to_Abbey` = QuestStateHigher(Lighthouse_to_Abbey,Available) | ABBEY_ENTRANCE_01 (`009_abbey.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_fromUpstairs (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_to_swamp` | Darkwood_01_01.mgp | - | SWAMP (`001_swamp.mlx`) | 13 | - | a05_DARKWOOD_ENTRANCE | ok: level and entry loaded; hero 220 from the spawn (arrival walk/script) |
| DARKWOOD | `_prim_ExitLevelZone_toInfectedVillage` | Darkwood_03_01.mgp | - | INFECTED_VILLAGE_01 (`005_infectedvillage.mlx`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_to_rootDen` | Darkwood_19_01.mgp | - | ROOT_DEN_01 (`004_root_den.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint01_001 (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_To_EarthTemple` | Darkwood_12_01.mgp | - | EARTH_TEMPLE_01 (`011_earth_temple_01.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_toUW` | Darkwood_14_01.mgp | `IsAfter_Kill_DarkQueen_A` = QuestInState(Darkwoods_KillDarkQueen,PostClosed) | UNDERWORLD_HUB (`036_underworld_hub.mlx`) | 1 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_from_Fasttravel (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_toAbbey` | Darkwood_27_01.mgp | `IsAfter_GothicusEscape` = QuestInState(Gothicus1_Escape,PostClosed) | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_to_Crypts` | Darkwood_07_01.mgp | - | GOTHICUS_CRYPT_01 (`007_crypt_01.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_fromDW (d=0) |
| DARKWOOD | `_prim_ExitLevelZone` | Darkwood_07_01.mgp | - | GOTHICUS_CRYPT_02 (`020_crypt_02.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_fromDW (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_toGothicus02` | Darkwood_17_01.mgp | `IsAfter_Abbey_Assassin` = QuestInState(Abbey_Assassin,PostClosed) | GOTHICUS_CASTLE_02 (`021_gothicus_castle_02.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_fromDarkwood (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_to_icyCliff` | Darkwood_28_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_FromDarkwoods (d=0) |
| DARKWOOD | `_prim_ExitLevelZone_to_RedDesert` | Darkwood_29_01.mgp | `IsAfter_EDKillTroll` = QuestInState(ED_KillTroll,PostClosed) | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 0 | - | Invalid | zone enabled by its condition, panel up (`shown=1`); the button press was not exercised (the quest jump of the harness starts cut-scene scripts that cover the HUD) |
| DARK_DUNGEON_TEMPLE_01 | `_prim_ExitLevelZone_start` | DT_01.mgp | `DarkTemple_Special` = QuestStateHigher(DarkTemple,Available) | UNDERWORLD_HUB (`036_underworld_hub.mlx`) | 4 | - | a34_UNDERWORLD_DARK_TEMPLE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_Fasttravel01 (d=0) |
| DARK_DUNGEON_TEMPLE_01 | `_prim_ExitLevelZone_toAlastor` | DT_08.mgp | `IsAfter_DarkTemple` = QuestStateHigher(DarkTemple,Closed) & QuestStateLower(FinalBoss,Closed) | DARK_DUNGEON_TEMPLE_BOSSROOM (`039_dark_temple_bossroom_01.mlx`) | 0 | Invalid | a34_UNDERWORLD_DARK_TEMPLE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| DARK_DUNGEON_TEMPLE_01 | `_prim_ExitLevelZone_toAlastor01` | DT_08.mgp | `IsAfter_FinalBoss` = QuestStateHigher(FinalBoss,Active) | UNDERWORLD_HUB (`036_underworld_hub.mlx`) | 4 | - | a34_UNDERWORLD_DARK_TEMPLE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_Fasttravel01 (d=0) |
| DARK_DUNGEON_TEMPLE_BOSSROOM | `_prim_ExitLevelZone_return` | DT_darktemple_bossroom_01.mgp | `IsDuring_FinalBoss` = QuestInState(FinalBoss,Active) | DARK_DUNGEON_TEMPLE_01 (`038_dark_temple.mlx`) | 1 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 1530 from the spawn (arrival walk/script) |
| DESERT_CAVE_01 | `_prim_ExitLevelZone` | rdc01_obj01_dsrtcave_e_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 3 | - | a21_DESERT_CAVE_01_ENTRANCE | ok: level and entry loaded; hero 335 from the spawn (arrival walk/script) |
| DESERT_CAVE_01 | `_prim_ExitLevelZone_backoutside` | rdc01_obj05_dsrtcave_n_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 3 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 335 from the spawn (arrival walk/script) |
| DESERT_CAVE_02 | `_prim_ExitLevelZone` | rdc02_objentrance_dsrtcave_n_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 4 | - | a22_DESERT_CAVE_02_ENTRANCE | ok: level and entry loaded; hero 506 from the spawn (arrival walk/script) |
| DESERT_CAVE_02 | `_prim_ExitLevelZone_bossroom` | rdc02_obj05_dsrtcave_n_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 4 | - | Invalid | ok: level and entry loaded; hero 506 from the spawn (arrival walk/script) |
| DESERT_CAVE_03 | `_prim_ExitLevelZone` | rdc03_objentrance_dsrtcave_n_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 5 | - | a23_DESERT_CAVE_03_ENTRANCE | ok: level and entry loaded; hero 855 from the spawn (arrival walk/script) |
| DESERT_CAVE_03 | `_prim_ExitLevelZone` | rdc03_objexit_dsrtcave_s_00_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 5 | - | - | ok: level and entry loaded; hero 855 from the spawn (arrival walk/script) |
| EARTH_TEMPLE_01 | `_prim_ExitLevelZone` | et01_entry_earthtemp_w__01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 1 | NoFollowers1, IsAfter_KillFlaminite, RENE_FOLLOW, EDWARD_FOLLOW | a19_DARKWOOD_EARTH_TEMPLE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_EarthTemple02 (d=0) |
| EARTH_TEMPLE_01 | `_prim_ExitLevelZone` | et01_deadend_toet02_e__01.mgp | - | EARTH_TEMPLE_02 (`012_earth_temple_02.rule.xml`) | 0 | - | - |  |
| EARTH_TEMPLE_01 | `_prim_ExitLevelZone` | et01_deadend_toet02_n__01.mgp | - | EARTH_TEMPLE_02 (`012_earth_temple_02.rule.xml`) | 0 | - | - |  |
| EARTH_TEMPLE_01 | `_prim_ExitLevelZone` | et01_deadend_toet02_s__01.mgp | - | EARTH_TEMPLE_02 (`012_earth_temple_02.rule.xml`) | 0 | - | - |  |
| EARTH_TEMPLE_01 | `_prim_ExitLevelZone` | et01_deadend_toet02_w__01.mgp | - | EARTH_TEMPLE_02 (`012_earth_temple_02.rule.xml`) | 0 | - | - |  |
| EARTH_TEMPLE_02 | `_prim_ExitLevelZone` | et02_deadend_toet03_n__01.mgp | - | EARTH_TEMPLE_03 (`013_earth_temple_03.rule.xml`) | 0 | - | - |  |
| EARTH_TEMPLE_02 | `_prim_ExitLevelZone` | et02_deadend_toet01_e__01.mgp | - | EARTH_TEMPLE_01 (`011_earth_temple_01.rule.xml`) | 1 | - | - | not exercised: random layout differs between runs, duplicate zone name |
| EARTH_TEMPLE_02 | `_prim_ExitLevelZone` | et02_deadend_toet01_n__01.mgp | - | EARTH_TEMPLE_01 (`011_earth_temple_01.rule.xml`) | 1 | - | - | not exercised: random layout differs between runs, duplicate zone name |
| EARTH_TEMPLE_02 | `_prim_ExitLevelZone` | et02_deadend_toet01_s__01.mgp | - | EARTH_TEMPLE_01 (`011_earth_temple_01.rule.xml`) | 1 | - | - | not exercised: random layout differs between runs, duplicate zone name |
| EARTH_TEMPLE_02 | `_prim_ExitLevelZone` | et02_deadend_toet01_w__01.mgp | - | EARTH_TEMPLE_01 (`011_earth_temple_01.rule.xml`) | 1 | - | - | not exercised: random layout differs between runs, duplicate zone name |
| EARTH_TEMPLE_03 | `_prim_ExitLevelZone_aftertroll` | et03_objboss_earthtemp_s__01.mgp | `IsAfter_EDKillTroll` = QuestInState(ED_KillTroll,PostClosed) | DARKWOOD (`003_darkwood.mlx`) | 1 | NoFollowers1, IsAfter_KillFlaminite, RENE_FOLLOW, EDWARD_FOLLOW | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_from_EarthTemple02 (d=0) |
| EARTH_TEMPLE_03 | `_prim_ExitLevelZone` | et03_tmodule_toet02_nsw__01.mgp | - | EARTH_TEMPLE_02 (`012_earth_temple_02.rule.xml`) | 1 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ELEMENTAL_AIR | `_prim_ExitLevelZone` | el_air_deadend_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 3 | - | a16_ELEMENTAL_AIR | ok: hero on enabled entry spawn _prim_EntryPoint_fromWind (d=0) |
| ELEMENTAL_AIR | `_prim_ExitLevelZone_fromairboss01` | boss_air.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 3 | - | a16_ELEMENTAL_AIR | ok (retry: hero on entry 3 spawn (1382,3346)) |
| ELEMENTAL_EARTH | `_prim_ExitLevelZone` | el_earth_deadend_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 1 | Invalid | a14_ELEMENTAL_EARTH | ok: hero on enabled entry spawn _prim_EntryPoint_fromEarth (d=0) |
| ELEMENTAL_EARTH | `_prim_ExitLevelZone_fromearthboss` | boss_earth.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 1 | Invalid | a14_ELEMENTAL_EARTH | ok: hero on enabled entry spawn _prim_EntryPoint_fromEarth (d=0) |
| ELEMENTAL_FIRE | `_prim_ExitLevelZone` | el_fire_deadend_n.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 4 | - | a13_ELEMENTAL_FIRE | ok: hero on enabled entry spawn _prim_EntryPoint_fromFire (d=0) |
| ELEMENTAL_FIRE | `_prim_ExitLevelZone_fromfiree01` | boss_fire.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 4 | - | a13_ELEMENTAL_FIRE | not exercised: zone in the boss room does not update after a teleport (room not active); the room's first exit zone was verified |
| ELEMENTAL_LIGHT | `_prim_ExitLevelZone_lightningstart` | el_lightning_deadend_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 5 | IsBefore_LighthouseEmissary, - | a17_ELEMENTAL_LIGHT | ok: hero on enabled entry spawn _prim_EntryPoint_fromLightning (d=0) |
| ELEMENTAL_LIGHT | `_prim_ExitLevelZone_fromlightning` | boss_lightning.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 5 | IsBefore_LighthouseEmissary, - | a17_ELEMENTAL_LIGHT | ok: hero on enabled entry spawn _prim_EntryPoint_fromLightning (d=0) |
| ELEMENTAL_WATER | `_prim_ExitLevelZone` | el_water_deadend_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 2 | - | a15_ELEMENTAL_WATER | ok: hero on enabled entry spawn _prim_EntryPoint_fromWater (d=0) |
| ELEMENTAL_WATER | `_prim_ExitLevelZone_fromwaterboss` | boss_water.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 2 | - | a15_ELEMENTAL_WATER | not exercised: zone in the boss room does not update after a teleport (room not active); the room's first exit zone was verified |
| FIRE_TEMPLE_01 | `_prim_ExitLevelZone_end` | firetemple_12.mgp | `IsAfter_KillFlaminite` = QuestInState(FireTemp_FindHotty,PostClosed) | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 1 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| FIRE_TEMPLE_01 | `_prim_ExitLevelZone_start` | firetemple_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 1 | - | a25_DESERT_FIRE_TEMPLE_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| GOTHICUS_CASTLE_02 | `_prim_ExitLevelZone` | gc02_deadend_n_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 3 | - | a12_GOTHICUS_CASTLE_02 | ok: hero on enabled entry spawn _prim_EntryPoint_from_gothicusCastle (d=0) |
| GOTHICUS_CASTLE_02 | `_prim_ExitLevelZone_toCrypt01` | gc02_kingroom_s_01.mgp | `IsAfter_Gothicus2Survivors` = QuestStateHigher(Gothicus2_Survivors,Active) | GOTHICUS_CRYPT_01 (`007_crypt_01.rule.xml`) | 2 | - | a12_GOTHICUS_CASTLE_02 | ok: hero on enabled entry spawn _prim_EntryPoint_fromGothicus04 (d=0) |
| GOTHICUS_CASTLE_02 | (block `gc02_corner_ws_01.mgp` is listed by the rule but absent from the data) | | | | | | | - |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_to_Darkwood` | crypt_kings_chamber_s_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 7 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | - |  |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_to_Castle` | crypt_entrance_s_01.mgp | - | GOTHICUS_CASTLE_01 (`008_gothicus_castle_01.rule.xml`) | 0 | - | - |  |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGraveyard01` | crypt_straight_c_ns_01.mgp | `IsBefore_GothicusAssassin` = QuestStateLower(Gothicus1_Escape,PostClosed) | GOTHICUS_CASTLE_01 (`008_gothicus_castle_01.rule.xml`) | 0 | - | - | ok: level and entry loaded; hero 177 from the spawn (arrival walk/script) |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGothicus2` | crypt_straight_c_ns_01.mgp | `IsAfter_Gothicus2Survivors` = QuestStateHigher(Gothicus2_Survivors,Active) | GOTHICUS_CASTLE_02 (`021_gothicus_castle_02.rule.xml`) | 2 | - | - |  |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toDW` | crypt_cemetery_entrance_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 6 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | a10_DARKWOOD_CRYPT_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_Crypts (d=0) |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGraveyard01` | crypt_straight_c_ns_02.mgp | `IsBefore_GothicusEscape` = QuestStateLower(Gothicus1_Escape,Active) | GOTHICUS_CASTLE_01 (`008_gothicus_castle_01.rule.xml`) | 0 | - | - | ok: level and entry loaded; hero 177 from the spawn (arrival walk/script) |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGothicus03` | crypt_straight_c_ns_02.mgp | `IsAfter_Gothicus2Survivors` = QuestStateHigher(Gothicus2_Survivors,Active) | GOTHICUS_CASTLE_02 (`021_gothicus_castle_02.rule.xml`) | 2 | - | - |  |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGraveyard01` | crypt_straight_c_ns_03.mgp | `IsBefore_GothicusEscape` = QuestStateLower(Gothicus1_Escape,Active) | GOTHICUS_CASTLE_01 (`008_gothicus_castle_01.rule.xml`) | 0 | - | - | ok: level and entry loaded; hero 177 from the spawn (arrival walk/script) |
| GOTHICUS_CRYPT_01 | `_prim_ExitLevelZone_toGothicus04` | crypt_straight_c_ns_03.mgp | `IsAfter_Gothicus2Survivors` = QuestStateHigher(Gothicus2_Survivors,Active) | GOTHICUS_CASTLE_02 (`021_gothicus_castle_02.rule.xml`) | 2 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_fromCrypt (d=0) |
| GOTHICUS_CRYPT_02 | `_prim_ExitLevelZone_to_Darkwood` | crypt2_kingsroom_s_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 7 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | - | ok: hero on enabled entry spawn _prim_EntryPoint_from_Crypts2 (d=0) |
| GOTHICUS_CRYPT_02 | `_prim_ExitLevelZone_levelstart` | crypt2_deadend_w_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 7 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | a11_DARKWOOD_CRYPT_02_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_Crypts2 (d=0) |
| ICY_CAVERN_01 | `_prim_ExitLevelZone_001` | IC01_entrance_icycavern_w_00_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 1 | - | a27_ICY_CAVERN_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_FromIcyCave01 (d=0) |
| ICY_CAVERN_01 | `_prim_ExitLevelZone` | ic01_bossroom_icycavern_w_00_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 1 | - | a27_ICY_CAVERN_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_FromIcyCave01 (d=0) |
| ICY_CAVERN_02 | `_prim_ExitLevelZone` | ic02_entrance_icycavern_e_00_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 3 | - | a28_ICY_CAVERN_02_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_FromIcyCave03 (d=0) |
| ICY_CAVERN_02 | `_prim_ExitLevelZone_bossroom` | ic02_bossroom_icycavern_w_00_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 3 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_FromIcyCave03 (d=0) |
| ICY_CAVERN_03 | `_prim_ExitLevelZone01_001` | ic03_entrance_icycavern_w_00_01.mgp | - | ICY_CAVERN_01 (`026_icy_cavern_01.rule.xml`) | 1 | **none** | - | level loads, **entry 1 does not exist in the destination (data)**, hero at (0,0) |
| ICY_CAVERN_03 | `_prim_ExitLevelZone` | ic03_objend_icycavern_w_00_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 1 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_FromIcyCave01 (d=0) |
| ICY_HUB | `_prim_ExitLevelZone_ToDarkwoods` | icyhub_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 4 | NoFollowers1, IsAfter_KillFlaminite, RENE_FOLLOW, EDWARD_FOLLOW | a26_ICY_VILLAGE | ok: hero on enabled entry spawn _prim_EntryPoint_from_IcyCliff02 (d=0) |
| ICY_HUB | `_prim_ExitLevelZone_ToIcyCave01` | icyhub_03.mgp | - | ICY_CAVERN_01 (`026_icy_cavern_01.rule.xml`) | 0 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_001 (d=0) |
| ICY_HUB | `_prim_ExitLevelZone_ToIcyCave03` | icyhub_05.mgp | - | ICY_CAVERN_02 (`027_icy_cavern_02.rule.xml`) | 0 | - | - | ok: BACKUP level loaded (random generator fails for 027, original behaviour) |
| ICY_HUB | `_prim_ExitLevelZone` | icyhub_06.mgp | - | WIND_TEMPLE_01 (`029_wind_temple.rule.xml`) | 0 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_fromIcyHub_001 (d=0) |
| INFECTED_VILLAGE_01 | `_prim_ExitLevelZone_toDW` | infected01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 9 | NoFollowers1, RENE_FOLLOW, EDWARD_FOLLOW, IsAfter_KillFlaminite | a08_DARKWOOD_INFECTED_VILLAGE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_fromInfected01 (d=0) |
| INFECTED_VILLAGE_01 | `_prim_ExitLevelZone_toBasement` | infected01.mgp | - | SECRET_BASEMENT_01 (`006_basement.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_fromVillage (d=0) |
| LIGHT_HOUSE_01 | `_prim_ExitLevelZone` | lh01_startroom_01.mgp | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 2 | - | a24_DESERT_LIGHT_HOUSE_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_fromLighthouse (d=0) |
| LIGHT_HOUSE_01 | `_prim_ExitLevelZone_toLH2` | lh01_lv06_close_02_01.mgp | `IsAfter_LighthouseAssassin` = QuestInState(Lighthouse_Assassin,PostClosed) | LIGHT_HOUSE_02 (`019_light_house_02.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint_fromLighthouse01 (d=0) |
| LIGHT_HOUSE_02 | `_prim_ExitLevelZone_toBoss` | lh01_lv02_close_01_01.mgp | - | LIGHT_HOUSE_03 (`019_light_house_03.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| LIGHT_HOUSE_02 | `_prim_ExitLevelZone` | lh01_lv07_open_02_01.mgp | - | LIGHT_HOUSE_01 (`019_light_house_01.rule.xml`) | 42 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 868 from the spawn (arrival walk/script) |
| LIGHT_HOUSE_03 | `_prim_ExitLevelZone` | lh01_startroom_01.mgp * | - | RED_DESERT_HUB (`015_red_desert_hub.mlx`) | 2 | - | a24_DESERT_LIGHT_HOUSE_ENTRANCE |  |
| LIGHT_HOUSE_03 | `_prim_ExitLevelZone_toBoss` | lh01_lv02_close_01_01.mgp * | - | LIGHT_HOUSE_03 (`019_light_house_03.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING |  |
| LIGHT_HOUSE_03 | `_prim_ExitLevelZone_toLH2` | lh01_lv06_close_02_01.mgp * | `IsAfter_LighthouseAssassin` = QuestInState(Lighthouse_Assassin,PostClosed) | LIGHT_HOUSE_02 (`019_light_house_02.rule.xml`) | 0 | - | SWAMP_BEFORE_SWAMPKING |  |
| LIGHT_HOUSE_03 | `_prim_ExitLevelZone` | lh01_lv07_open_02_01.mgp * | - | LIGHT_HOUSE_01 (`019_light_house_01.rule.xml`) | 42 | - | SWAMP_BEFORE_SWAMPKING |  |
| LIGHT_HOUSE_03 | `_prim_ExitLevelZone` | lh01_bossroom_01.mgp | - | LIGHT_HOUSE_02 (`019_light_house_02.rule.xml`) | 69 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 844 from the spawn (arrival walk/script) |
| MACHINE_ROOMS_01 | `_prim_ExitLevelZone_backtoUW` | MR01_plane_machineroom_02_01.mgp | - | UNDERWORLD_HUB (`036_underworld_hub.mlx`) | 2 | - | a32_UNDERWORLD_ENTRANCE | not exercised: hero not touching after the teleport (z) |
| RANDOMFORALEX | `_prim_ExitLevelZone_lightningstart` | el_lightning_deadend_n_01.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 5 | IsBefore_LighthouseEmissary, - | a17_ELEMENTAL_LIGHT |  |
| RANDOMFORALEX | `_prim_ExitLevelZone_fromlightning` | boss_lightning.mgp | - | ABBEY_RUINS_01 (`009a_abbey.mlx`) | 5 | IsBefore_LighthouseEmissary, - | a17_ELEMENTAL_LIGHT |  |
| RED_DESERT_HUB | `_prim_ExitLevelZone_toDW` | rd01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 5 | NoFollowers1, IsAfter_KillFlaminite, EDWARD_FOLLOW | a20_DESERT_VILLAGE | ok with Darkwoods_GoToCathedral = PostClosed: hero on entry-5 spawn (16334,-8174). With the harness default state (GoToCathedral = Locked) none of the three entry-5 copies (NoFollowers1 / IsAfter_KillFlaminite / EDWARD_FOLLOW) is enabled and the hero stays at (0,0), as in the original data |
| RED_DESERT_HUB | `_prim_ExitLevelZone_toFire` | rd02.mgp | `IsAfter_WindTemp` = QuestInState(WindTemp_FindFaery,PostClosed) | FIRE_TEMPLE_01 (`031_firetemple.mlx`) | 0 | EDWARD_FOLLOW, - | a20_DESERT_VILLAGE | ok: level and entry loaded; hero 0 from the spawn (arrival walk/script) |
| RED_DESERT_HUB | `_prim_ExitLevelZone_toCave01` | rd03.mgp | - | DESERT_CAVE_02 (`017_red_desert_cave_02.rule.xml`) | 0 | - | a20_DESERT_VILLAGE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| RED_DESERT_HUB | `_prim_ExitLevelZone_toCave2` | rd03.mgp | - | DESERT_CAVE_01 (`016_red_desert_cave_01.rule.xml`) | 0 | - | a20_DESERT_VILLAGE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| RED_DESERT_HUB | `_prim_ExitLevelZone_to_Lighthouse` | rd05.mgp | - | LIGHT_HOUSE_01 (`019_light_house_01.rule.xml`) | 0 | - | a20_DESERT_VILLAGE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| RED_DESERT_HUB | `_prim_ExitLevelZone_Cave03` | rd04.mgp | - | DESERT_CAVE_03 (`018_red_desert_cave_03.rule.xml`) | 0 | - | a20_DESERT_VILLAGE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| ROOT_DEN_01 | `_prim_ExitLevelZone` | objboss_rootden_w__01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 2 | NoFollowers1, IsAfter_KillFlaminite, RENE_FOLLOW, EDWARD_FOLLOW | a18_DARKWOOD_ROOT_DEN_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_rootDen02 (d=0) |
| ROOT_DEN_01 | `_prim_ExitLevelZone_01` | objentry_rootden_e__01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 2 | NoFollowers1, IsAfter_KillFlaminite, RENE_FOLLOW, EDWARD_FOLLOW | a18_DARKWOOD_ROOT_DEN_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_from_rootDen02 (d=0) |
| SECRET_BASEMENT_01 | `_prim_ExitLevelZone` | basement_deadend_s_01.mgp | - | INFECTED_VILLAGE_01 (`005_infectedvillage.mlx`) | 0 | - | a09_DARKWOOD_SECRET_BASEMENT_01 | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| SECRET_BASEMENT_01 | `_prim_ExitLevelZone02` | basement_deadend_w_01.mgp | - | INFECTED_VILLAGE_01 (`005_infectedvillage.mlx`) | 0 | - | SWAMP_BEFORE_SWAMPKING | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| SWAMP | `_prim_ExitLevelZone_toSwamp02` | merchantcamp_ruins_swe_00.mgp | `IsAfter_Gothicus2Survivors` = QuestStateHigher(Gothicus2_Survivors,Active) | SWAMP_02 (`022_swamp2.rule.xml`) | 0 | - | Invalid | zone enabled by its condition, panel up (`shown=1`); the button press was not exercised (the quest jump of the harness starts cut-scene scripts that cover the HUD) |
| SWAMP | `_prim_ExitLevelZone` | deadend_brdwalk_w_00.mgp | - | SWAMP_CAVE_WITCH_A (`002_swamp_witchcave.rule.xml`) | 0 | - | a01_SWAMP_CAMP | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| SWAMP | `_prim_ExitLevelZone_001` | bossroom_ruins_ns_.mgp | `IsAfter_Swamp_Escape` = QuestInState(Swamp_Escape,PostClosed) | DARKWOOD (`003_darkwood.mlx`) | 0 | IsBefore_WT_Balrog, EDWARD_FOLLOW, IsAfter_KillFlaminite | a01_SWAMP_CAMP | ok: hero on enabled entry spawn _prim_EntryPoint_from_swamp02 (d=0) |
| SWAMP_02 | `_prim_ExitLevelZone_toSwamp` | swamp2_corner_ruin_wn_00.mgp | - | SWAMP (`001_swamp.mlx`) | 3 | - | a01_SWAMP_CAMP | ok: level and entry loaded; hero 503 from the spawn (arrival walk/script) |
| SWAMP_02 | `_prim_ExitLevelZone` | swamp2_deadend_brdwalk_w_00.mgp | - | SWAMP_CAVE_TROLL_A (`022_swamp2_trollcave.rule.xml`) | 0 | - | a04_SWAMP_CAVE_TROLL_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| SWAMP_02 | `_prim_ExitLevelZone_toWT` | swamp2_straight_brdwalk_ns_01.mgp | - | WATER_TEMPLE_01 (`023_watertemple.rule.xml`) | 0 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint_01 (d=0) |
| SWAMP_CAVE_TROLL_A | `_prim_ExitLevelZone_swamp2` | trollcave_deadend_swpcave_w_00.mgp | - | SWAMP_02 (`022_swamp2.rule.xml`) | 4 | - | a04_SWAMP_CAVE_Troll2_ENTRANCE | ok: level and entry loaded; hero 533 from the spawn (arrival walk/script) |
| SWAMP_CAVE_TROLL_A | `_prim_ExitLevelZone` | trollcave_deadend_swpcave_n_00.mgp | - | SWAMP_02 (`022_swamp2.rule.xml`) | 4 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 533 from the spawn (arrival walk/script) |
| SWAMP_CAVE_TROLL_A | `_prim_ExitLevelZone` | trollcave_deadend_swpcave_merchant_n_00.mgp | - | SWAMP_02 (`022_swamp2.rule.xml`) | 4 | - | SWAMP_BEFORE_SWAMPKING | ok: level and entry loaded; hero 533 from the spawn (arrival walk/script) |
| SWAMP_CAVE_WITCH_A | `_prim_ExitLevelZone_001` | deadend_swpcave_s_00.mgp | - | SWAMP (`001_swamp.mlx`) | 4 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | a02_SWAMP_CAVE_WITCH_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_WitchCaveExit (d=0) |
| SWAMP_CAVE_WITCH_A | `_prim_ExitLevelZone_42` | bossroom_witch_.mgp | `IsAfter_Swamp_KillWitch2` = QuestInState(Swamp_KillWitch,PostClosed) | SWAMP (`001_swamp.mlx`) | 4 | RENE_FOLLOW, NoFollowers1, EDWARD_FOLLOW, IsAfter_KillFlaminite | - | ok: hero on enabled entry spawn _prim_EntryPoint_WitchCaveExit (d=0) |
| UNDERWORLD_HUB | `_prim_ExitLevelZone` | underworld_01.mgp | - | DARKWOOD (`003_darkwood.mlx`) | 10 | - | a32_UNDERWORLD_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint_fromHellgate (d=0) |
| UNDERWORLD_HUB | `_prim_ExitLevelZone_toDarkTemple` | underworld_08.mgp | `IsAfter_MachineRoom` = QuestStateHigher(MachineRoom,Closed) | DARK_DUNGEON_TEMPLE_01 (`038_dark_temple.mlx`) | 0 | - | a32_UNDERWORLD_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| VOID_MAZE_01 | `_prim_ExitLevelZone_to_underworld` | vm01_deadend_voidmaze_n_00_02.mgp | - | UNDERWORLD_HUB (`036_underworld_hub.mlx`) | 0 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| VOID_MAZE_01 | `_prim_ExitLevelZone` | vm01_deadend_voidmaze_e_00_02.mgp | - | VOID_MAZE_02 (`034_voidmaze_02.rule.xml`) | 0 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_fromMainVoid (d=0) |
| VOID_MAZE_01 | `_prim_ExitLevelZone_toVoid3` | vm01_deadend_voidmaze_w_00_03.mgp | - | VOID_MAZE_03 (`035_voidmaze_03.rule.xml`) | 0 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_from01 (d=0) |
| VOID_MAZE_01 | (block `vm011_corner_voidmaze_ne_00_01.mgp` is listed by the rule but absent from the data) | | | | | | | - |
| VOID_MAZE_02 | `_prim_ExitLevelZone_toMainn` | vm01_deadend_voidmaze_n_00_03.mgp | - | VOID_MAZE_01 (`033_voidmaze_01.rule.xml`) | 1 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint_fromVoid2 (d=0) |
| VOID_MAZE_02 | (block `vm011_corner_voidmaze_ne_00_01.mgp` is listed by the rule but absent from the data) | | | | | | | - |
| VOID_MAZE_03 | `_prim_ExitLevelZone_blah` | vm01_deadend_voidmaze_w_00_02.mgp | - | VOID_MAZE_01 (`033_voidmaze_01.rule.xml`) | 2 | - | - | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| VOID_MAZE_03 | (block `vm011_corner_voidmaze_ne_00_01.mgp` is listed by the rule but absent from the data) | | | | | | | - |
| WATER_TEMPLE_01 | `_prim_ExitLevelZone` | watertemple_deadend_objend_s_01.mgp | `IsAfter_WT_Balrog` = QuestStateHigher(WT_Balrog,Closed) | SWAMP_02 (`022_swamp2.rule.xml`) | 1 | - | Invalid | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| WATER_TEMPLE_01 | `_prim_ExitLevelZone_to_Swamp1` | watertemple_deadend_objstart_w_01.mgp | - | SWAMP_02 (`022_swamp2.rule.xml`) | 1 | - | a03_SWAMP_WATER_TEMPLE_01_ENTRANCE | ok: hero on enabled entry spawn _prim_EntryPoint (d=0) |
| WIND_TEMPLE_01 | `_prim_ExitLevelZone_toIcyHub` | entry_windtemp_n_01.mgp | - | ICY_HUB (`025_icy_hub.mlx`) | 4 | - | a31_ICY_WIND_TEMPLE_ENTRANCE | ok: level and entry loaded; hero 1164 from the spawn (arrival walk/script) |
| WIND_TEMPLE_01 | `_prim_ExitLevelZone` | objboss_windtemp_e_01.mgp | `IsAfter_WindTemp` = QuestInState(WindTemp_FindFaery,PostClosed) | ICY_HUB (`025_icy_hub.mlx`) | 4 | - | - | ok: level and entry loaded; hero 1189 from the spawn (arrival walk/script) |

## Script-driven transitions (Script_ChangeLevel)

| level script | destination | entry | trigger |
|---|---|---|---|
| `008_gothicus_castle_01` | DARKWOOD (`003_darkwood.mlx`) | 11 (`_prim_EntryPoint_from_teleport`, block Darkwood_17, no condition) | `GothicusCastle01Scripts.ExitCinematic`, `Gothicus1_Escape` OnPostClosed. Castle 01 has no exit zone at all. Runner: `runscript ExitCinematic` loads Darkwood and puts the hero on entry 11 (-3442,12019). |
| `003_darkwood` (2 commands) | UNDERWORLD_HUB | 0 | `DarkwoodScripts.Goto_Underworld`, `Underworld_Blood` OnPostAvailable (after `Darkwoods_KillDarkQueen`); the zone `_prim_ExitLevelZone_toUW` leads to entry 1 |
| `033_voidmaze` | UNDERWORLD_HUB | 0 | void maze script |
| `036_underworld_hub` (2 commands) | MACHINE_ROOMS_01 | 0 | machine-room quest scripts |
| `037_machine_rooms_01` (2 commands) | UNDERWORLD_HUB | 2 | machine-room boss defeated |

## Fast travel / world map list (Arrays::FastTravelList)

A row becomes visible in the hero-screen map when the hero touched an exit zone whose `fasttravel` property is that id. Selecting it calls `NativeGoToZone(LevelName, EntryPointId)`.

| # | id | level | entry | type | title | unlocked by zone(s) |
|---|---|---|---|---|---|---|
| 0 | a01_SWAMP_CAMP | SWAMP | 1 | Hub | The Boglands  | SWAMP:_prim_ExitLevelZone, SWAMP:_prim_ExitLevelZone_001, SWAMP_02:_prim_ExitLevelZone_toSwamp |
| 1 | a02_SWAMP_CAVE_WITCH_ENTRANCE | SWAMP_CAVE_WITCH_A | 0 | SubLocation | Bogwitch Cavern | SWAMP_CAVE_WITCH_A:_prim_ExitLevelZone_001 |
| 2 | a03_SWAMP_WATER_TEMPLE_01_ENTRANCE | WATER_TEMPLE_01 | 0 | SubLocation | Shrine of Tears | WATER_TEMPLE_01:_prim_ExitLevelZone_to_Swamp1 |
| 3 | a04_SWAMP_CAVE_TROLL_ENTRANCE | SWAMP_CAVE_TROLL_A | 0 | SubLocation | Slough Pit | SWAMP_02:_prim_ExitLevelZone |
| 4 | a05_DARKWOOD_ENTRANCE | DARKWOOD | 0 | Hub | Gothicus Darkwood | DARKWOOD:_prim_ExitLevelZone_to_swamp, DARKWOOD_V2:_prim_ExitLevelZone_to_swamp, DARKWOOD_V3:_prim_ExitLevelZone_to_swamp, PORTAL_ROOM:_prim_ExitLevelZone_to_swamp |
| 5 | a06_DARKWOOD_GOTHICUS_VILLAGE | DARKWOOD | 11 | Hub | Gothicus Village | **none** |
| 6 | a07_DARKWOOD_CATHEDRAL | ABBEY_RUINS_01 | 0 | SubLocation | Great Sanctuary | ABBEY_RUINS_01:_prim_ExitLevelZone |
| 7 | a08_DARKWOOD_INFECTED_VILLAGE_01_ENTRANCE | INFECTED_VILLAGE_01 | 0 | SubLocation | Condemned Village | INFECTED_VILLAGE_01:_prim_ExitLevelZone_toDW |
| 8 | a09_DARKWOOD_SECRET_BASEMENT_01 | SECRET_BASEMENT_01 | 0 | SubLevel | Dried Well | SECRET_BASEMENT_01:_prim_ExitLevelZone |
| 9 | a10_DARKWOOD_CRYPT_01_ENTRANCE | GOTHICUS_CRYPT_01 | 0 | SubLocation | Path of Kings | GOTHICUS_CRYPT_01:_prim_ExitLevelZone_toDW |
| 10 | a11_DARKWOOD_CRYPT_02_ENTRANCE | GOTHICUS_CRYPT_02 | 0 | SubLocation | Royal Tomb | GOTHICUS_CRYPT_02:_prim_ExitLevelZone_levelstart |
| 11 | a12_GOTHICUS_CASTLE_02 | GOTHICUS_CASTLE_02 | 0 | SubLocation | Gothicus Castle | GOTHICUS_CASTLE_02:_prim_ExitLevelZone, GOTHICUS_CASTLE_02:_prim_ExitLevelZone_toCrypt01 |
| 12 | a13_ELEMENTAL_FIRE | ELEMENTAL_FIRE | 0 | SubLocation | Trial of Fire | ELEMENTAL_FIRE:_prim_ExitLevelZone, ELEMENTAL_FIRE:_prim_ExitLevelZone_fromfiree01 |
| 13 | a14_ELEMENTAL_EARTH | ELEMENTAL_EARTH | 0 | SubLocation | Trial of Earth | ELEMENTAL_EARTH:_prim_ExitLevelZone, ELEMENTAL_EARTH:_prim_ExitLevelZone_fromearthboss |
| 14 | a15_ELEMENTAL_WATER | ELEMENTAL_WATER | 0 | SubLocation | Trial of Water | ELEMENTAL_WATER:_prim_ExitLevelZone, ELEMENTAL_WATER:_prim_ExitLevelZone_fromwaterboss |
| 15 | a16_ELEMENTAL_AIR | ELEMENTAL_AIR | 0 | SubLocation | Trial of Air | ELEMENTAL_AIR:_prim_ExitLevelZone, ELEMENTAL_AIR:_prim_ExitLevelZone_fromairboss01 |
| 16 | a17_ELEMENTAL_LIGHT | ELEMENTAL_LIGHT | 0 | SubLocation | Trial of Lightning | ELEMENTAL_LIGHT:_prim_ExitLevelZone_fromlightning, ELEMENTAL_LIGHT:_prim_ExitLevelZone_lightningstart, RANDOMFORALEX:_prim_ExitLevelZone_fromlightning, RANDOMFORALEX:_prim_ExitLevelZone_lightningstart |
| 17 | a18_DARKWOOD_ROOT_DEN_01_ENTRANCE | ROOT_DEN_01 | 0 | SubLocation | Wormroot Hollow | ROOT_DEN_01:_prim_ExitLevelZone, ROOT_DEN_01:_prim_ExitLevelZone_01 |
| 18 | a19_DARKWOOD_EARTH_TEMPLE_01_ENTRANCE | EARTH_TEMPLE_01 | 0 | SubLocation | Earthlight Temple | EARTH_TEMPLE_01:_prim_ExitLevelZone |
| 19 | a20_DESERT_VILLAGE | RED_DESERT_HUB | 0 | Hub | The Bloodsands | RED_DESERT_HUB:_prim_ExitLevelZone_Cave03, RED_DESERT_HUB:_prim_ExitLevelZone_toCave01, RED_DESERT_HUB:_prim_ExitLevelZone_toCave2, RED_DESERT_HUB:_prim_ExitLevelZone_toDW, RED_DESERT_HUB:_prim_ExitLevelZone_toFire, RED_DESERT_HUB:_prim_ExitLevelZone_to_Lighthouse |
| 20 | a21_DESERT_CAVE_01_ENTRANCE | DESERT_CAVE_01 | 0 | SubLocation | Bandit Lair | DESERT_CAVE_01:_prim_ExitLevelZone |
| 21 | a22_DESERT_CAVE_02_ENTRANCE | DESERT_CAVE_02 | 0 | SubLocation | Wormgroves | DESERT_CAVE_02:_prim_ExitLevelZone |
| 22 | a23_DESERT_CAVE_03_ENTRANCE | DESERT_CAVE_03 | 0 | SubLocation | Tar Mines | DESERT_CAVE_03:_prim_ExitLevelZone |
| 23 | a24_DESERT_LIGHT_HOUSE_ENTRANCE | LIGHT_HOUSE_01 | 0 | SubLocation | Lighthouse | LIGHT_HOUSE_01:_prim_ExitLevelZone, LIGHT_HOUSE_03:_prim_ExitLevelZone |
| 24 | a25_DESERT_FIRE_TEMPLE_ENTRANCE | FIRE_TEMPLE_01 | 0 | SubLocation | Fallen Kingdom | FIRE_TEMPLE_01:_prim_ExitLevelZone_start |
| 25 | a26_ICY_VILLAGE | ICY_HUB | 0 | Hub | Northerlands | ICY_HUB:_prim_ExitLevelZone_ToDarkwoods |
| 26 | a27_ICY_CAVERN_01_ENTRANCE | ICY_CAVERN_01 | 0 | SubLocation | Icemurk Dellion | ICY_CAVERN_01:_prim_ExitLevelZone, ICY_CAVERN_01:_prim_ExitLevelZone_001 |
| 27 | a28_ICY_CAVERN_02_ENTRANCE | ICY_CAVERN_02 | 0 | SubLocation | Frost Comb | ICY_CAVERN_02:_prim_ExitLevelZone |
| 28 | a29_ICY_CAVERN_03_ENTRANCE | ICY_CAVERN_03 | 0 | SubLocation | The Howling | **none** |
| 29 | a31_ICY_WIND_TEMPLE_ENTRANCE | WIND_TEMPLE_01 | 0 | SubLocation | Temple of Winds | WIND_TEMPLE_01:_prim_ExitLevelZone_toIcyHub |
| 30 | a32_UNDERWORLD_ENTRANCE | UNDERWORLD_HUB | 1 | Hub | World of Ruin | MACHINE_ROOMS_01:_prim_ExitLevelZone_backtoUW, UNDERWORLD_HUB:_prim_ExitLevelZone, UNDERWORLD_HUB:_prim_ExitLevelZone_toDarkTemple |
| 31 | a33_UNDERWORLD_MACHINE_ROOMS_ENTRANCE | MACHINE_ROOMS_01 | 0 | SubLocation | Faerie Domain | **none** |
| 32 | a34_UNDERWORLD_DARK_TEMPLE_01_ENTRANCE | DARK_DUNGEON_TEMPLE_01 | 0 | SubLocation | Alastor's Domain | DARK_DUNGEON_TEMPLE_01:_prim_ExitLevelZone_start, DARK_DUNGEON_TEMPLE_01:_prim_ExitLevelZone_toAlastor, DARK_DUNGEON_TEMPLE_01:_prim_ExitLevelZone_toAlastor01 |

`Arrays::WorldMap` (13 rows, Thamos_Catacombs ... Royal_Castle: Dungeon Hunter 1 leftovers) lists only level 41 (SWAMP) in every `LocationLevels`; `Arrays::WorldMapLockers` (3 rows: quest 8 on state 9, quest 14 on state 9, quest 56 on state 6) is read by `SG_IsMapLocLocked` only. The playable map is the FastTravelList.

## Conditions used by exit zones

| condition | meaning |
|---|---|
| `DarkTemple_Special` | QuestStateHigher(DarkTemple,Available) |
| `IsAfter_Abbey_Assassin` | QuestInState(Abbey_Assassin,PostClosed) |
| `IsAfter_DarkTemple` | QuestStateHigher(DarkTemple,Closed) & QuestStateLower(FinalBoss,Closed) |
| `IsAfter_EDKillTroll` | QuestInState(ED_KillTroll,PostClosed) |
| `IsAfter_FinalBoss` | QuestStateHigher(FinalBoss,Active) |
| `IsAfter_Gothicus2Survivors` | QuestStateHigher(Gothicus2_Survivors,Active) |
| `IsAfter_GothicusEscape` | QuestInState(Gothicus1_Escape,PostClosed) |
| `IsAfter_KillFlaminite` | QuestInState(FireTemp_FindHotty,PostClosed) |
| `IsAfter_Kill_DarkQueen_A` | QuestInState(Darkwoods_KillDarkQueen,PostClosed) |
| `IsAfter_LighthouseAssassin` | QuestInState(Lighthouse_Assassin,PostClosed) |
| `IsAfter_Lighthouse_to_Abbey` | QuestStateHigher(Lighthouse_to_Abbey,Available) |
| `IsAfter_MachineRoom` | QuestStateHigher(MachineRoom,Closed) |
| `IsAfter_Swamp_Escape` | QuestInState(Swamp_Escape,PostClosed) |
| `IsAfter_Swamp_KillWitch2` | QuestInState(Swamp_KillWitch,PostClosed) |
| `IsAfter_WT_Balrog` | QuestStateHigher(WT_Balrog,Closed) |
| `IsAfter_WindTemp` | QuestInState(WindTemp_FindFaery,PostClosed) |
| `IsBefore_GothicusAssassin` | QuestStateLower(Gothicus1_Escape,PostClosed) |
| `IsBefore_GothicusEscape` | QuestStateLower(Gothicus1_Escape,Active) |
| `IsDuring_FinalBoss` | QuestInState(FinalBoss,Active) |

## Story gating (quest prerequisites that decide which exit can open)

Quest, its Act field, prerequisites (PlayerInLevel conditions are "hero has entered that level"), zone or level of its objective.

| quest | act | prerequisites | objective |
|---|---|---|---|
| Abbey_Assassin | 8 | hero in ABBEY_ENTRANCE_01; Abbey_Rescue = PostClosed | - |
| Abbey_Rescue | 8 | Lighthouse_to_Abbey = PostClosed | - |
| Abbey_to_Gothicus | 8 | Abbey_Assassin = PostClosed | _prim_QuestMoveInzone_GothicusArrive (level GOTHICUS_CASTLE_02) |
| DarkTemple | 14 | hero in DARK_DUNGEON_TEMPLE_01 | - |
| Darkwoods_GatedVillage | 3 | hero in DARKWOOD; Darkwoods_GoToGothicus = PostClosed | _prim_VillageTrigger (level DARKWOOD) |
| Darkwoods_GoToCathedral | 4 | hero in DARKWOOD; Gothicus1_Escape = PostClosed | _prim_QuestMoveInzone_CathedralEnd (level ABBEY_RUINS_01) |
| Darkwoods_GoToED | 5 | hero in ABBEY_RUINS_01; Darkwoods_GoToCathedral = PostClosed | _prim_QuestMoveInzone_hoogabooga (level DARKWOOD) |
| Darkwoods_GoToGothicus | 2 | hero in DARKWOOD; Swamp_Escape = PostClosed | _prim_TriggerZone_GoToGothicus (level DARKWOOD) |
| Darkwoods_KillDarkQueen | 13 | FireTemp_GoToHellgate = PostClosed | - |
| ED_GoToDesert | 6 | ED_KillTroll = PostClosed | _prim_QuestMoveInzone_GoToDesertEnd (level RED_DESERT_HUB) |
| ED_KillTroll | 6 | hero in EARTH_TEMPLE_01; Darkwoods_GoToED = PostClosed | - |
| FinalBoss | 1 | hero in DARK_DUNGEON_TEMPLE_BOSSROOM; DarkTemple = PostClosed | - |
| FireTemp_FindHotty | 12 | WindTemp_goto_FireTemple = PostClosed | - |
| FireTemp_GoToHellgate | 12 | FireTemp_FindHotty = PostClosed | _prim_QuestMoveInzone_Hellgate (level DARKWOOD) |
| Gothicus1_Escape | 4 | hero in GOTHICUS_CASTLE_01 | - |
| Gothicus2_GotoWT | 9 | Gothicus2_Survivors = PostClosed | _prim_QuestMoveInzone_WTarrive (level WATER_TEMPLE_01) |
| Gothicus2_Survivors | 9 | hero in GOTHICUS_CASTLE_02; Abbey_to_Gothicus = PostClosed | _prim_throne (level GOTHICUS_CASTLE_02) |
| IcyHub_to_WindTemp | 10 | WT_to_IcyHub = PostClosed | _prim_QuestMoveInzone_WindArrive (level ICY_HUB) |
| Lighthouse_Assassin | 6 | hero in LIGHT_HOUSE_01 | - |
| Lighthouse_Climb | 7 | hero in LIGHT_HOUSE_01 | _prim_QuestMoveInzone_LighthouseTop (level LIGHT_HOUSE_03) |
| Lighthouse_Emissary | 7 | Lighthouse_Climb = PostClosed | - |
| Lighthouse_to_Abbey | 7 | hero in LIGHT_HOUSE_03; Lighthouse_Emissary = PostClosed | _prim_QuestMoveInzone_AbbeyArrive (level ABBEY_RUINS_01) |
| MachineRoom | 14 | hero in MACHINE_ROOMS_01 | - |
| RedDesert_GoToLighthouse | 6 | ED_GoToDesert = PostClosed | _prim_QuestMoveInzone_GoToLighthouse (level RED_DESERT_HUB) |
| Sewer_to_Gothicus | 3 | Darkwoods_GatedVillage = PostClosed | _prim_QuestMoveInzone_CastleExit (level GOTHICUS_CRYPT_01) |
| Swamp_Escape | 2 | hero in SWAMP | - |
| Swamp_KillWitch | 1 | - | - |
| Underworld_Blood | 13 | Darkwoods_KillDarkQueen = PostClosed | _prim_QuestMoveInzone_blood (level UNDERWORLD_HUB) |
| Underworld_DarkTemp | 14 | hero in UNDERWORLD_HUB; MachineRoom = PostClosed | _prim_QuestMoveInzone_DarkTempEntrance (level UNDERWORLD_HUB) |
| WT_Balrog | 10 | WT_BrotherBattle = PostClosed | - |
| WT_BrotherBattle | 9 | Gothicus2_GotoWT = PostClosed | - |
| WT_to_IcyHub | 10 | WT_Balrog = PostClosed | - |
| WindTemp_FindFaery | 11 | IcyHub_to_WindTemp = PostClosed | - |
| WindTemp_goto_FireTemple | 11 | WindTemp_FindFaery = PostClosed | _prim_QuestMoveInzone_FireTempArrive (level FIRE_TEMPLE_01) |

## Findings (owner R5)

### Royal Tomb -> Gothicus Castle

* **There is no Tomb -> Castle transition in the data.** The Royal Tomb is `GOTHICUS_CRYPT_02` (`020_crypt_02.rule.xml`, title id 0x1a003a "Royal Tomb", fast travel `a11`). Its only exit zones are `_prim_ExitLevelZone_levelstart` (start block `crypt2_deadend_w_01`; the entry spawn lies inside this zone) and `_prim_ExitLevelZone_to_Darkwood` (block `crypt2_kingsroom_s_01`, behind the boss door): both lead to `DARKWOOD` entry 7 (the Cemetery of Lords). The unused list blocks (`deadend_e/n`, `t_nse`, `t_sew`) have no exit zone.
* The Castle has three entrances, all verified in the runner:
  1. **Path of Kings** (`GOTHICUS_CRYPT_01`, `007_crypt_01.rule.xml`, title "Path of Kings", `a10`): the final room (`crypt_straight_c_ns_01/02/03`) has `_prim_ExitLevelZone_toGraveyard01` -> CASTLE_01 entry 0 (`IsBefore_GothicusAssassin` = Gothicus1_Escape < 13; variants 02/03: `IsBefore_GothicusEscape` = Gothicus1_Escape < 6) and `toGothicus2/03/04` -> CASTLE_02 entry 2 (`IsAfter_Gothicus2Survivors`). The room also holds `_prim_Door_reddoor` (`Red_Door`, closed while `IsBetween_Gothicuses` = Gothicus1_Escape == 13 and Gothicus2_Survivors < 12).
  2. **Darkwood, Gothicus Village block** (`Darkwood_17_01.mgp`): `_prim_ExitLevelZone_toGothicus02` -> CASTLE_02 entry 0, condition `IsAfter_Abbey_Assassin` (Abbey_Assassin == PostClosed); two `Red_Door`s (`IsBefore_Abbey_Rescue`) and two cultist guards stand in front of it until Abbey_Rescue is done.
  3. Castle 01 is entered only through (1); it has no exit zone and leaves by script (`ExitCinematic`, `Gothicus1_Escape` OnPostClosed) to DARKWOOD entry 11.
* **State after the first castle visit** (Gothicus1_Escape == PostClosed, Gothicus2_Survivors not started), reproduced with `setquest Gothicus1_Escape 13` + `loadlevel 007_crypt_01.rule.xml`: `_prim_ExitLevelZone_toGraveyard01` en=0, `_prim_ExitLevelZone_toGothicus04` en=0, `_prim_Door_reddoor` en=1 (closed). In that state **no crypt, tomb or cemetery exit leads to the castle**; the only way is the Darkwood gate, which needs Abbey_Rescue and Abbey_Assassin (Abbey_Rescue needs `Lighthouse_to_Abbey` PostClosed, i.e. the Earth Temple / Red Desert / Lighthouse chain). The condition comparators and the factory order were checked against the listing (`Condition_IsQuestInStateGeneric::Eval` 0x478fe8; table 0x478b5c.. = QuestInState / Lower / Higher / PlayerInLevel / LevelInState / PlayerAtLevel / EventInState) and equal the binary.
* A player who takes the **second** exit zone of the Cemetery of Lords (`_prim_ExitLevelZone`, panel text "Royal Tomb", at Darkwood (9873,10123)) instead of `_prim_ExitLevelZone_to_Crypts` ("Path of Kings", at (8427,7803)) lands in the Tomb, a side quest: accept zone `_prim_crypt02_start` in Darkwood, objective TalkToNPC (`_prim_NPC` SisterEllen behind the boss door), the door opens through event `Crypt_boss_door_open` (kill 1 template-36 enemy in level 24), `Tomb_Success` OnPreClosed. The kings-chamber exit lies behind that door; the start exit always works. Reachability test: the bot walks to the door and stops there (closed until the midboss `_prim_Monster02`, about 900 hp, dies); a level-26 hero attacked it for 7000 frames and took it from 892 to 702 hp (boss owner territory, not a transition fault).
* No fault was found in the transition path. If the phone save is in the state above, the behaviour is the original's. If Gothicus1_Escape is below PostClosed and the crypt was visited, the exit in the final crypt room exists and works (runner: Crypt_01 -> Castle_01 and Crypt_01 -> Castle_02 both load and put the hero on the entry spawn).

### Code audit of the exit path (all equal to the listing)

`TriggerZoneExitLevel::Update` 0x39c33c, `::InitPost` 0x39c8c8, `NativeGoToZone` 0x4422b8, `Script_ChangeLevel::Execute` 0x45cba0, `Application::LoadLevel` 0x32bdc8, `Level::GetSpawnPoint` 0x3ef614, `ObjectBase::TestEnableCondition/TestDisableCondition` 0x33e6d4/0x33e61c, `ConditionData::IsTrue`, `PlayerSavegame::SG_SetFastTravelIdUnlocked` 0x4663f8, `NativeGetWorldMapLocations` 0x4435e4 (FastTravelDestination: +4 description, +8 entry, +0x10 level name, +0x14 type, +0x18 string id). LevelList rows are read through the typed host record (the host stride is not 72) in every reader (`FS_LoadLevel2`, `NativeGoToZone`, `Script_ChangeLevel`, `NativeStartGame`, Level constructor); no wrong index or stride was found.

### Runner results

Method: `build/own-r5/driverA.py` loads each of the 43 production levels and lists its exit zones and spawn points; `driverB.py` loads the level again, sets the quests that satisfy the zone's condition (`setquest`), moves the hero 1200 units away and then onto the zone (a zone the hero spawned in hides the next panel when the hero jumps straight from one zone into another: its `Update` runs after and calls `DisplayFastTravel(false)`; a walking hero leaves the old zone first), presses the fast-travel panel button (1206,884) and compares the destination level and the hero position with the destination's entry spawn points. The "runner" column shows the result.

* Every transition that could be pressed arrived in the right level on the right entry spawn (distance 0), except the scripted moves below.
* **Scripted moves** (level right, hero 176-580 units from the spawn because an arrival script moves him): DARKWOOD -> SWAMP entry 13, SWAMP -> DARKWOOD entry 0, CRYPT_01 -> CASTLE_01.
* **Not travelled** (the panel was up, `shown=1 meet=1 enabled=1`, but the button press did not reach the Flash button, no `NativeGoToZone` call: a quest banner or cut scene overlay that the harness's `setquest` calls raise, or an NPC on the zone): rows marked `**not travelled** (harness)`. They are retried below.
* Arriving inside an exit zone is data-driven (Royal Tomb start, Darkwood infected village / earth temple / abbey entries, castle 01): the panel is up at arrival, as in the listing.

* Totals: 104 exit instances of 43 levels were found by `driverA.py`; 101 distinct (level, exit, destination, entry) rows. 94 loaded the right destination with the hero on or next to the destination's entry spawn, 4 boss-room / duplicate-name zones were not exercised (their level's first exit was), 2 conditional zones (Darkwood -> Red Desert, Swamp -> Swamp 2) are enabled by their condition and show the panel but the press was not exercised, 1 hits a data hole (below). No transition went to a wrong level or wrong entry. `Script_ChangeLevel` was exercised for castle 01 (`runscript ExitCinematic`: DARKWOOD entry 11, hero at (-3442,12019)).
* **Entry spawn copies.** Most Darkwood / Abbey / temple entries exist as copies with the follower conditions `RENE_FOLLOW` (Darkwoods_GoToCathedral < 13), `NoFollowers1` (GoToCathedral == 13 and WT_BrotherBattle < 13), `EDWARD_FOLLOW` (WT_Balrog > Active and FireTemp_GoToHellgate < Active), `IsAfter_KillFlaminite` (FireTemp_FindHotty == 13). The entry of the Red Desert (Darkwood entry 5) has no `RENE_FOLLOW` copy, and for any Darkwood entry other than 0 the state "GoToCathedral closed, BrotherBattle closed, Balrog not yet above Active" enables no copy at all: `Level::GetSpawnPoint` then returns no enabled spawn point and the hero stays at (0,0) (same code as the binary; the story does not enter those entries in those windows, entry 0 uses `IsBefore_WT_Balrog`).

### Data faults (original data, not port faults)

* `ICY_CAVERN_03` exit `_prim_ExitLevelZone01_001` -> ICY_CAVERN_01 **entry 1**, but cave 01 has only entry 0; the engine falls back like the binary (`GetSpawnPoint` returns the last type-13 object). `ICY_CAVERN_03` has no inbound exit zone at all (the hub's `_prim_ExitLevelZone_ToIcyCave03` leads to ICY_CAVERN_02), and its fast-travel row `a29` is never unlocked.
* The VOID_MAZE group (`033`-`035`), `PORTAL_ROOM`, `APPLETEMPLE*` and the debug levels have no inbound exit zone or script. Fast-travel rows `a06_DARKWOOD_GOTHICUS_VILLAGE`, `a29_ICY_CAVERN_03_ENTRANCE`, `a33_UNDERWORLD_MACHINE_ROOMS_ENTRANCE` have no unlocking zone: they stay hidden in the map list in the original too.
* `fasttravel` values that are not in the table (`Invalid`, `SWAMP_BEFORE_SWAMPKING`, `a04_SWAMP_CAVE_Troll2_ENTRANCE`) unlock nothing. `levelID` and `question` are never set.
* Rule files list gameplay blocks that are not in the data: `gc02_corner_ws_01.mgp` (castle 02 `path[2]`, not used by its RootRule) and `vm011_corner_voidmaze_ne_00_01.mgp` (void maze 02/03 `#path` can pick it).
* `Arrays::WorldMap` (13 DH1 rows) lists only level 41 in every location; the hero-screen map is the FastTravelList.
