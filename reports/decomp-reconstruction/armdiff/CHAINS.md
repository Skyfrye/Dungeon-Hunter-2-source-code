# armdiff function chains (owner C, 2026-10-16)

`tools/trackb/armdiff/chain.py` runs whole call sequences of the game logic on real data in Unicorn, once on the original
`libDungeonHunter2.so` and once on the ARM32 build of the reconstruction, and compares the results.

## Harness design

- **Image.** Every ARM32 object of the game, pydata, core, net and glitch-core-io categories (`build_arm.py` output) plus the NDK
  `libc++_static.a` is linked into one shared object (`_chain/chain.so`). Machine mode `callee="chain"`: a symbol the reconstruction
  defines stays in the reconstruction, anything else binds to the original (Thumb bit preserved). Run with
  `DH2_ARMDIFF_OUT=<dir>` to keep the build out of `build/tb-arm32`.
- **Real state.** `boot` (original only) runs the original's `.init_array` (539 initialisers) and reads all 70 real pydata files
  (142 `Arrays::X::read/readNames/skipNames`) through a `StreamBuffer`; the heap/arena/data snapshot is cached. For the
  reconstruction side the same snapshot is restored, every pointer into the original image whose symbol the reconstruction also
  defines (vtables, functions, globals) is re-pointed at the reconstruction's copy, shared-by-name globals are copied in, and the
  member-name tables (`pydata::NameTable`) are filled from the original's.
- **Services per side** (`chains/services.py`): fake `FileSystem` (vtable slots found per side) serving the game data folder,
  `PyDataConstants` loaded with the original `Load()` loop, `StringManager` with the English pack, `SavegameManager`,
  `ObjectManager`; the original `Character::Character` constructor builds real Characters. Engine services without a model are
  `neuter`ed (`DebugSwitches::load`, `SG_Save`, `GrabAnimFX`).
- **Comparison.** Return values (with optional captured out-structs), non-allocation library calls (file names asked for), named
  scenario values, and the reachable object graph: heap blocks are matched by following pointers through both sides, words are
  compared at the original's offsets (STLport/libc++ containers are skipped with the size deltas of `run.stl_expected_delta`),
  differences are reported with block, class (vptr/tag) and member from the reconstruction's clang record layout, and the pointer path
  from the root. Only words that changed during the chain are compared.
- **Controls.** `control_flipped_byte` (one input byte flipped on the reconstruction side) and `control_mutated_function`
  (`RecalcProperty` replaced by `return 0` in the reconstruction only) must be reported. They are, and are `WILL_FAIL` ctests.
- ctest: `cmake -S tools/trackb/armdiff/chains -B build/own-chain/ctest && ctest --test-dir build/own-chain/ctest`
  (standalone project; the port CMakeLists was being edited by others).
- Small machine/tool changes: `machine.py` (`callee="chain"`, Thumb bit, `track_writes` flag), `build_arm.py` (tinyxml include
  and `-DTIXML_USE_STL`, which fixed 13 units that did not compile for ARM32).

## Chains

| chain | what runs |
|---|---|
| pydata_ai_factions, pydata_read_all | all 70 real pydata files through all 142 Arrays readers; whole object graph + 8,863 member names in 71 tables |
| charprops_load_base, charprops_all_rows | CharProperties ctor, `LoadBaseProperties` + `RecalcProperties` for all 447 CharacterTable rows, every ClassTable row applied, property getters |
| combat_cf | `CF_SetCombatants`, `CalcMissOrDodge`, `CalcCrit`, `CalcBlock`, `CalcDamage` (4 modes), `CalcDotDamage`, Slow/Fear/Push/Hurt/Stun, `GetLevelScaledXP` on 24 x 24 real sheets (seeded `Random`) |
| char_stats | real Character: stat points, `ResetStats`, mana/HP regeneration, `HasMana/UseMana` |
| char_buffs | `PROPS_AddBuff`, `AddDot`, `HandleDots`, `RemoveAllBuffs` for ClassTable rows |
| char_skills | real Character + PlayerSavegame: skill availability, `IncSkill`, skill rows, saved bytes |
| ai_aggro | CharAI aggro table, friend/enemy/attack relations (AIFactions) between real Characters registered in an ObjectManager |
| item_instances, loot_tables, loot_deep | ItemInstance names/stats/requirements from the real text pack; `AddLoot` over every LootTable row (3 seeds/levels/flags in loot_deep) |
| equip_gear | AddLoot + `EquipItemAuto` + `UpdateGearsProperties` on real Characters |
| savegame_sections | PlayerSavegame `__Save*`/`__Load*` sections: bytes, and save-load-save round trip |
| quest_savegame | `QuestSavegame::InitQuests/CompileQuests/PackQuests` on the real v2Quests table (942 bytes per difficulty) |

## Results

Full run (one process, `py -3 tools/trackb/armdiff/chain.py`):

```
[chain] charprops_load_base: MATCH  (3.3s/4.7s; calls 449)
[chain] combat_cf: MATCH  (2.9s/4.5s; calls 18432)
[chain] equip_gear: MATCH  (65.6s/35.1s; calls 199)
[chain] charprops_all_rows: MATCH  (360.8s/346.1s; calls 45712)
[chain] char_stats: MATCH  (31.4s/17.9s; calls 293)
[chain] char_buffs: MATCH  (26.4s/14.6s; calls 90)
[chain] ai_aggro: MATCH  (32.2s/18.1s; calls 645)
[chain] control_mutated_function: MISMATCH 4  (0.1s/0.4s; calls 21)
[chain] item_instances: MATCH  (33.2s/18.6s; calls 237)
[chain] loot_tables: MATCH  (54.7s/29.7s; calls 446)
[chain] loot_deep: MATCH  (1060.1s/664.7s; calls 13264)
[chain] inventory_ops: MATCH  (34.7s/15.0s; calls 272)
[chain] pydata_ai_factions: MATCH  (0.0s/0.6s; calls 6)
[chain] pydata_read_all: MATCH  (12.1s/12.5s; calls 282)
[chain] control_flipped_byte: MISMATCH 2  (0.0s/0.1s; calls 3)
[chain] savegame_sections: MATCH  (17.4s/10.2s; calls 250)
[chain] quest_savegame: MATCH  (21.7s/10.7s; calls 51)
```

All 16 chains MATCH; the two negative controls MISMATCH as required. `char_skills` matched in its own run (not in this log's list order).

## Extension 2 (coordinator request: AI path, level-up)

New chains, all MATCH (orig vs reconstruction, real data):

| chain | what runs |
|---|---|
| melee_hit | `F_MeleeAttack` + `F_ApplyResult` between real Characters (damage, death) |
| ai_targets | `TargetList` searches (range/cone, 3 sort orders, filter masks) over positioned Characters; hits read back from the backup list |
| ai_update | AISMonster script loaded through the original Lua; target set; monster in the attack state; the hit events `attack_mainhand/offhand` through `CharAI::_OnAnimEvent` -> `OnAttack` -> `F_MeleeAttack` -> `F_ApplyResult`: the hero is damaged and killed identically |
| char_levelup | `_GiveXP`, `LevelUp` on player Characters (level, XP, points) |

Finding for the "enemies never damage the hero" report: from `_OnAnimEvent` down, the whole path (target selection, filters, aggro, relations,
state change, `OnAttack`, formulas, `F_ApplyResult`) is identical to the original, and the hero takes damage. Whatever stops the hit on the emulator is
therefore above this layer: the animation never raising the `attack_mainhand` event (animator/clip event delivery), `CharAI::Update` not running
(controller blocked or `CharStateMachine::m_stateFlags & 0x100` clear, the gate in `Update`), or the Lua AI script. `CharAI::Update` itself could not be
driven: with the fake environment the original recurses (`GetInteractionType` -> `AI_IsEnemy`) once a target is set by `_UpdateTarget`.
Harness fixes of this round: a Character built with GO id 0 (the id `ResolveQueryCharacter` requires; id 3 made every object a non-Character),
`setjmp/longjmp` models (the original Lua), fake FileSystem slots for `openFile/doesResourceExists`, `LuaManager`/`PlayerManager` objects.
Known deviation seen: the reconstruction declares `Character::F_MeleeAttack` a member (hidden this) where the binary has a static; callers inside the
reconstruction are consistent.

Not done in this round: pathfinding from a real level floor (needs the scene graph and meshes of a loaded level), full-file savegame load/save
(needs a write seam for `openSavefile` and the savegame job thread).

## Mismatches found

None in the reconstruction. The mismatches the first runs showed were all harness or input errors, each root-caused: wrong offsets I
had assumed for fake objects (`PlayerManager::m_numCharacters`, `Character::m_savegame` 0x14e8), calls on blank objects the original
dereferences (`PlayerSavegame` tables before `_Init*`, `AddDot` without an effect manager, out-of-range `SG_SetMapLocState`; the
reconstruction guards these, documented deviations), an `strncmp` model that demanded a NUL inside `n` bytes, STLport allocation
differences (pool allocator), and a few return values that are void/leftover registers.

## Limitations

- Pathfinding (`PFWorld`) needs scene-graph floors built from the level `.bdae`; not run. `GraphSparse` A* alone has no entry points.
- AI scripts (Lua/Update loops), Character `LevelUp/_GiveXP` (script manager, FX, menus) and `TargetList` searches (needs positioned
  objects) are not covered; `ObjectManager` and real Characters are in place for a follow-up.
- Heap blocks of classes with STL members are compared outside the containers only; allocation order is not compared (STLport pool).
- Full-file savegame load/save (`Savegame::load`, jobs thread) needs the file-system write seam; sections are covered.

## Extension 3: swamp-king ranged cycle, "the boss never burrows at range" (owner C2, 2026-10-17)

Question: where does the reconstruction's state timeline of `_prim_Boss_SwampKing_01` (intimidate -> 0.5 s -> spit, 15 s dive tick) leave the original's?
Result: **no divergence found**; every function on the path was compared against the listing and is equal. Details below so the next owner does not repeat them.

**Why no Unicorn chain for the cycle.** The cycle is driven by animation events (`CharAnimator::__Callback` from the glitch timeline -> `Update` -> events 35/34/37/39 -> `CSAnim::OnEvent`
/ `CSSkill` -> `OnEndOfAnim` in Lua). The harness Characters have no visual object (no loaded `.bdae`, no `AnimSetController`), so `_SetAnimStep` takes its `ANIM_Stop` path and no clip ever ends.
Loading the original's collada database + animation set in Unicorn was not attempted (hours; would need the whole glitch scene stack in the chain image). The timers/AI/Lua part is runnable but
adds nothing: it is the same code (below).

**Listing vs port, instruction-level reads (IDA), all equal:** `CharTimers::Update` (0x3db640: `m_active` cleared *before* `RaiseEvent` for a one-shot, slot pointer re-derived from the vector begin, count fixed on entry),
`_findTimerSlot` (0x3dbd70, lowest inactive slot), `TMR_Start` (0x3dbe24), `Character::_StartTimer` (0x3b7590, repeat -1 only for a true `args[1]`), `_StopTimer`, `Value::getBool` (0x31bc80),
`AISDefault::OnScriptTimer` (0x3dcc80, integer id), `Character::RaiseEvent` (0x3a4d5c), `CharAI::OnInit/AI_ScriptInit` (0x3d12b0/0x3cfde4: stop old, start new, same slots 0/1),
`Character::_PlayAnim` (0x3ba388: rows 15..20/21..25 patched, loop = bool arg 3), `_GetState` (0x3b6d78) / `SM_GetState`, `CSAnim::OnInit/OnEvent/OnUpdate`, `CSSkill::OnInit/OnFocus`, `CSIdle`,
`CharAnimator::Update` (0x3caf3c), `_SetAnimStep` (0x3ca79c, incl. PlayClip/SetScale arguments and the swoosh/sound logic), `ANIM_AddSetToRenderObject`, `AnimApplicator::CheckCallback`,
`BlendedAnimSetController::PlayClip`, `AnimatorBlender::Blend`, `CharAI::_UpdateTarget` + `AI_IsInRange/AI_IsInCloseRange/AI_IsInSight`, `Character::CanRangeAttack` (both overloads),
`AISDefault::OnUpdate`. `CharAnimator::CalculateExtraTime` (0x3c90f8) has no caller in the binary either (only a dynsym entry), so `m_extraTime` stays 0 in both.

**Data checked (animations_pyarray.bin parsed by hand, .bdae clip ranges):** AnimTable rows 15..19 = {step0 anim -1 (patched by `PlayAnim`), step1 `Redir` to rows 20..24}; rows 20..24 = {loop -1, type 0, step0 anim -1 (patched with the
2nd Lua argument, nil -> -1 -> `ANIM_Stop` -> event 34)}. Spit skill row 667 = pre_attack_03 (clip 0..1200 ms) + attack_03 (1200..1600) + post_attack_03 (1600..2333) = 1.3 / 0.46 / 0.77 s as measured
(`attack_spit.bdae`, 2133 ms, is not on this path). `swampking_intimidate` clip 0..2400 ms (+100 ms blend = the 2.5 s seen); `swampking_idle` 5333 ms in 3 segments.

**Lua/timer finding (agrees with Q3, and the original does the same).** A one-shot retry started from inside its own one-shot callback gets the firing slot back (it was cleared before the event), so `_commons.OnTimer`'s
`TimerEvents[id] = nil` after the callback removes the new callback; the retry chain has two attempts per 15 s tick (tick + first retry) in the binary too. Q3's looping-retry override (build/own-q3-run/instr_ovr.py, not in
port/lua-scripts) hides this, it is not an engine fix.

**Timeline arithmetic (unmodified script, ours).** Timers 2 (1.5 s attack-ready) and 3 (15 s dive tick) start together, so the tick always coincides with attack-ready grid 10. The cycle is 4 grid steps (6.0 s: intimidate 2.5 + gap 0.5 +
spit 2.47, spit ends 0.44 s before the next grid). With the hero in range at grid 1 the ticks fall alternately 1.5 s (intimidate) and 4.5 s (spit) into a cycle, and the first retry (+0.5 s) is in the same state: never Idle.
Anything that moves a tick by more than ~0.4 s relative to the cycle (a different activation phase, a cycle longer than 6.0 s, an Idle gap) dives at the first tick. Runs (host runner, `timers SwampKing` every 15 frames; a dive shows
as the 500/1000/3000 ms slots 4..6): 4 arrival phases x 6 ticks, dt 16/22/41/50 ms x 6..20 ticks, gap timer 0.7 s and 1.0 s: no dive. With Q3's looping retry: dive at the first tick.

**Open (needs the original's timeline, which only an emulator or the glitch-in-Unicorn chain can give):** whether the original's cycle is longer than 6.0 s or its boss starts timers at another phase. Candidates not ruled out by listing reads because they live in the
reconstructed glitch timeline (`CTimelineController` end-of-range callback timing, segment handling: idle has 3 segments, intimidate 2, the port raises one end event per clip), or in the encounter script (when the boss first reports Idle / when the cut scene releases it).

### Extension 3b: attempt to run the original's swamp-king cycle with a real visual object (owner C2, same day)

Probe chain `swk_probe` (`tools/trackb/armdiff/chains/swk.py`, run `py -3 tools/trackb/armdiff/chain.py swk_probe -v`; ~25 s; a probe, not a MATCH test, it is not in the ctest list). It builds the boss (CharacterTable row 358 "SwampKing") with the original `Character` constructor and then asks the original `GameObject::SetVisualObject(model, null, true)` for its visual. Hops cleared so far, each an environment piece the original normally gets from `createDeviceEx` / `CAndroidOSDevice`:
1. `CResFileManager::Inst` was null -> `CResFileManager(IDevice*)` on a fake device block (+0x34 = glitch file system from `glitch::io::createFileSystem`, +0x10 = video driver; the same fake device is the `Application::m_device`).
2. `fopen/fread/fseek/ftell/rewind` models over the real data folder (the glitch `CReadFile` is stdio): `data/3D/characters/swampking/swampking.bdae` is found and opened by the original loader.
3. `SharedStringHeap` null -> call `glitch::core::detail::(anon)::initSharedStringHeap(true)`.
4. `glitch::video::createNullDriver(device)` then runs to the end (driver, `CNullShaderManager`, `CMaterialRendererManager` all constructed; `CNullShaderManager::createShader` returns a shader when called alone).
5. The original now loads the swamp king model and starts building its materials (`GL_Diffuse_L1_VC_iPhone.bdae` is opened).
**Blocked at:** `createMaterialRendererForProfile<SProfileNullTraits>` (0x6357a0) calls `IShader::getParameterID` on a null shader from a technique's render-pass table (read@0x4 at +0x814 of that function), i.e. `CMaterialRendererManager::addRenderPass`/`endTechnique` state that I could not reproduce with the pieces above; I stopped there because the remaining road is long and each hop is an unmodelled engine service, not game logic: material/technique state, textures through the null driver, the skeleton/skin (`VisualObject`), `AnimSetManager` + `CharAnimator::_CompileAnimSet` (anim set from ~40 bdae), `ScriptManager`/`LuaManager` with the boss script and `PlayerManager`/hero for the target, then 600 frames of `Character::Update` with a per-frame log. None of it is a conceptual obstacle (nested emulation is not needed; the Lua VM is the original's own and `ai_update` already runs it), the cost is engineering time: I estimate another day for the visual and one more for the cycle.
Side finding of the probe: on the reconstruction side `CharProperties::RecalcProperties` faults for the boss row in the chain (`null_access read@0xffffffff` in `RecalcProperty+0x47c`; the original side runs it). The host runner builds the same boss without a fault, so this is probably a chain-environment difference (an index of -1 into a table the chain has not filled), but it is unexplained and should be looked at before a recon-side cycle is attempted.
Alternative for the native-timeline comparison without a visual: drive `CharAnimator` with fake clip-end events (set `m_animFinished` and call `Update` at the clip lengths read from the .bdae files: intimidate 2400 ms, pre/attack/post_03 1200/400/733 ms) on both sides. That compares the transition logic but, by construction, not the clip timing that is the open question.
