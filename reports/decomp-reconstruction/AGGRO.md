# Monster aggro vs the follower (René) - owner AI2

## Original rules (binary listing)
- Faction id = word at Character +0xff8 (m_props.AIFaction, the first sheet word; m_props sits at +0xff4), `GetCharAIFactionId` 0x3a3180:
  `LDR R0,[R0,#0xFF8]; <0 or >= AIFactionTable::size -> 10`. Ours reads the same word (PROPS_Get(0)), same fallback. (Track A's "+0xffc" is not what the listing shows.)
- Relation table = ai_factions_pyarray.bin: Monsters(7) -> Players -1000, Followers -1000; Followers(4) -> Monsters -1000. René ("WanderingPriest",
  AI row "Rene") is faction 4 Followers, so by the data monsters are hostile to him. `AI_IsEnemy` 0x3d574c: both-players -> false, else relation value < 0.
  Ours matches the listing instruction for instruction.
- Monster threat scan (`_UpdateAggro` 0x3cf3f0): `TargetList(self, 0x7FFFFFFF, 2, sort 1 closest)`, Search(range, 2pi) over ObjectManager+0x60, each hit ->
  RaiseEvent 9 (enemy) / 7 / 8 through AI_IsEnemy/IsFriend/IsNeutral; Lua `monster_OnEnemySpotted` takes the FIRST enemy popped (nearest by centre distance minus
  target interaction radius minus own melee radius) when it has no target. Ours is identical (ctor args, sorter, distance formula, radii all checked in ARM).
- René's script (rene.luac) is an attacking follower: master = host player, grabs enemies from OnEnemySpotted, ranged attacks.

## The bug found
`ObjectSearcher::TargetList::_IsCharacterValid` (0x4a1ab8), first gate. Listing: `LDR R2,[searcher_char,#0x1314]; LDR R3,[candidate,#0x1310]; CMP R2,R3; BGE ok else reject`
= searcher's Special_Sneak_Detection (m_props +0x320) against the candidate's Special_Sneak (+0x31c). Our source compared
`Threat_PerDamageToFriendly` (m_props +0x33c, Character +0x1330) with `Menu_Average_Melee_To_Hit` (+0x340): words mislabelled "m_w207/m_w208" (offset
mix-up: the comment added 0x560+0x31c style offsets to the wrong base). Effect: every TargetList search (monster threat scan, player auto-target, skills)
rejected candidates on unrelated stats, so which characters a search could see (hero vs follower) differed from the binary.
Fix: `game-world/src/g1-game-world-ObjectSearcher-3d104b-2.cpp` now compares `Special_Sneak_Detection < Special_Sneak`.

## What was NOT a bug (measured, windowed/headless runner, swamp, DH2_AI2 debug prints removed afterwards)
At spawn René stands next to the hero; the two moths see René 1.8 units (squared 2916755 vs 2920133) closer than the hero, so they pick René first,
exactly what the binary's closest-first rule does with those inputs; lizards nearer the hero pick the hero. Interaction/melee radii are equal (200).
If the original really shows monsters ignoring René, the difference is an input (René's position/spawn, aggro table, his "isGlobal"/activate_cond
RENE_FOLLOW state) and is not in the relation/scan code; compare with Track A's move-attack scenario (GROUND-TRUTH.md) before changing anything else.

## Verification
check_tu.sh OK on ObjectSearcher-3d104b-2, CharAI-2ae0f1-3, -6 (debug code removed). Runs before/after in build/own-ai2-run (c_old.txt / c_new.txt).

## Round 2: input candidates (all checked against the listing; temporary env-gated prints, removed afterwards)
1. **René placement / follow / script.** He spawns on the hero's spot (-4293,-44 vs hero -4292,-44) from frame 430 (global NPC, activate RENE_FOLLOW); the `rene` Lua script is bound and
   running (events seen per frame: 9 enemy spotted, 7 friend spotted, 15 target in ranged range x460, 36-40 attack anim events, master = PlayerCharacter_0). He engages enemies and shoots them;
   he starts following only when the master leaves sight (`g_is_far`), as the script says. Nothing found that differs from rene.luac + CharAI::_UpdateMaster/_UpdateTarget.
2. **Threat weighting / exclusion flags.** F_ApplyResult adds aggro `GetEffectiveThreatPerDamage * damage/256` to the victim's table (listing 0x3bd394: property index 0xCC = 204 = Threat_PerDamage, ours the same);
   `OnEnemySpotted` adds DesignSettings+0x30 once per enemy (listing identical). Highest-aggro switch uses DesignSettings+0x08. `Character::IsInteractive` (0x3a4870) and the Search candidate gates
   (enabled byte +0x8a, zoning bytes +0x2ee/+0x2f0, IsInteractive, _IsCharacterValid) match; no follower/NPC/quest flag excludes a Followers character from the scan in the binary either.
   The sneak gate values are 0 for every swamp character, so the gate fixed in round 1 does not change this scenario.
3. **Wake-up trigger.** There is no player-specific wake in the listing: `_UpdateAggro` scans ObjectManager+0x60 (all characters, `TargetList(self,0x7FFFFFFF,2,sort 1)`), raises 9 per enemy, and the Lua takes the first (nearest). Ours is identical.
4. **Damage resolution.** F_ApplyResult has no team filter; monsters do hit René. Measured over 2400 frames (hero + René fighting in the swamp start area), hits by target:
   monsters -> hero 31, monsters -> René 9, René -> monsters 22+, hero -> monsters 11. So René absorbs about a quarter of monster attacks; his HP (16000) never drops visibly, which can look like "they only hit René".
Result: no further divergence found in OUR code. Remaining candidates are outside the AI layer: the pydata (faction table, AI rows) is read correctly (ai_factions decoded here by hand: Monsters -> Followers -1000), so the
original also has monsters hostile to Followers. If the original game differs in practice, the first thing to compare is the Track A move-attack scenario (GTW) event by event with the log above.
