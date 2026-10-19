# Track A ground truth (in-world models only; Track A menus/UI are NOT a reference)

## Build (Track A checkout unmodified; build dir in %TEMP%)
    SDL2_ROOT=<home>\AppData\Local\DH2-Desktop-Tooling\deps\SDL2-2.32.10-x64
    ANGLE_ROOT=<home>\AppData\Local\DH2-Desktop-Tooling\deps\ANGLE-AndroidEmulator-29.0.14206865-win-x64
    PATH += WinLibs mingw64\bin (same toolchain as tb-int)
    .\port\desktop-native\tools\build_windows.ps1 -BuildDirectory $env:TEMP\trackA-desktop -Jobs 12
    -> %TEMP%\trackA-desktop\bin\dh2_desktop_runtime.exe  (built OK, ~789 steps)
Run (no --assets needed; it uses port/android-native/app/src/main/assets, textures in assets/textures + original-cache):
    dh2_desktop_runtime.exe --level-row 41 [--scenario move-attack] --frames N --capture f.ppm --runtime-dir <tmp>
Gotchas: the SWAMP intro cutscene holds ~2320 frames (scenario "intro released" at frame 2321), so captures before ~2400 frames show only the intro
(hero + Rene beside the cages/torches). Use Start-Process under PowerShell (Git Bash TEMP short path breaks). DH2_TRACE_MONSTER_PATH=1 makes runs very slow.
DH2_DEBUG_PLACE_PLAYER_AT="-5200,-300,255@2500" works post-intro. Scenario is flaky past frame ~2800 (exit 1 "exact-target HP snapshot").

## Captures (build/own-gtw/ref/)
swamp_f60/200/400/700.png (intro: hero, Rene, cages w/ prisoners, torches, floor, wall), swamp_f2500.png (post intro, hero+Rene, ruin walls),
mon_f2900.png / mon_f3300.png (hero+Rene beside torches/wall, corpse top-right, green creature top-left), liz_f*.png (placement not applied during intro = same as intro).
Texel ground truth: tex_atlas_skinned_characters_animdecor_gameobjects_001/_002.png, tex_atlas_dh2_game_objects_001.png, tex_atlas_modular_warrior.png,
tex_env_swamp.png (+ .rgba raw, 1024x1024, produced by dh2_texture_open/dh2_texture_decode from Track A's engine-textures lib; tool: %TEMP%\trackA-desktop\bin\dh2_dec.exe).
Atlas _001: 1024x1024 grid of creature skins (zombie/lizard/hero/Bogwomp-like green swamp creatures, yeti, orc...), PVRTC4 decoded, top_origin=1, alpha=1.

## Observed colours (frames viewed)
- Hero: blond, gold/tan shoulders+chest, red-and-white pauldron, dark purple/black trousers and boots, steel sword; fully textured, not white.
- Rene (_prim_NPC_PriestGood, script rene, "WanderingPriest"): bald, white beard, dark grey/black coat with white tabard, red-orange/black patterned skirt-hem; textured.
- Prisoners in cages: flesh tone, brown wood cages with green moss. Torches: bright yellow/orange flame on dark poles.
- Floor: dark teal/blue-green stone with carved rune tiles (brown-tinted in some rooms); walls dark grey-green mossy stone; green foliage.
- Zombie/lizard-men and moth meshes were only glimpsed (dark brown corpse top-right, green creature top-left); no clear close-up captured.
  Jade statue not located in view. Bogwomps not present in the SWAMP roster (monsters: LizTemplate_*, LizManIntro1/2, Moth/FakeMoth, SwampKing).

## Aggro behaviour (run_f4500.log, DH2_TRACE_MONSTER_PATH=1, move-attack)
- "Native combat hit" log: only Rene -> LizManIntro1 (8 hits, killed it) and Eddie -> LizManIntro1/2. No hit line ever has Rene as target.
- Rene is a friendly AI type 2 and actively fights (fsm Attack, target 1, attack_mainhand) while monsters (FakeMoth/LizMan) were in Attack/Idle with
  player dist 240-950. No monster->Rene damage was logged in this run, so in Track A monsters do NOT attack Rene (he is an ally attacker). Caveat: limited sample, no explicit relations log.
