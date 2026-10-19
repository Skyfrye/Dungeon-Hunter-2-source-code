# Data versions in Downloads (owner FD2, 2026-10-17)

Method: every archive extracted into its own folder under `build/own-fd2/x/<name>/` (untrusted, never executed; Python run with -I), then compared by name, size, md5 and string search. Reference = 1.0.2 cache (`com.gameloft.android.GAND.GloftD2SS/files/data`, 6690 files).

## Q1: where are the missing names?  Nowhere.
Searched the 9 module `charpropsname` values our table lacks (`RD_Bandit1`, `RD_Bandit2`, `Dragon`, `Multiplayer_LizadMan_Type1`, `Seba_PerformanceTest`, `Swamp_ActorTroll2`, `SwimKing`, `Thamos_Catacombs_Skeleton_A/B`) in every set: Android 1.0.0 (David-Rice), 1.0.4 (both zips), 1.0.5 (zip), plus iOS 3.1.2 and iPad 3.2 (`data/fileNNNNNN.dat`, names resolved through `file00000-plantext.dat`; `character_properties_pyarraynames.bin` = file000346 / file000343).
* `character_properties_pyarraynames.bin` is byte-identical in all five Android sets; the two iOS ones lack the names too (they have `RD_MeleeBandit`, like us). The only other hits are module XML plus script/animation tables that merely mention SwimKing etc.
* The 43 missing `q:/data/iphone/3d/textures/*` names (list: atlas_characters_02, char_shadow, env_*_alpha x9, spell_* x17, streak_02/03, tex_prince*, tex_faerie_001, ...) are in no Android set's `3d/textures` and in neither iOS index. They are authoring leftovers, as HOST-RUNNER Owner FD already concluded.
* `v2conditions_pyarraynames.bin` contains the string `RD_Bandit` (4x) - a condition-name prefix (`RD_Tar`, `RD_Worm`, `RD_FOLLOW` are siblings), not a character key. No fix.

## Q2: diff vs 1.0.2 (file count / differing)
| set | files | missing vs 1.0.2 | extra | differ | notes |
|---|---|---|---|---|---|
| 1.0.0 (David-Rice 7z) | 6941 | 4 tga | 255 | 354 size + 192 hash | extra = sfx wavs, `dqmenus_all.swf`, "copy of common_text*" backups; has `scons/pydata/*.h` ground-truth headers; differences are textures/sounds/text only |
| 1.0.4 (androidgamegratisan) | 7434 | 16 | 760 | ~3260 | extra = .ogg music, *5.swf menus; 2232 character .bdae differ by 4 bytes (header only) |
| 1.0.4 Universal | 7343 | 103 (fonts, jp/ko textures) | 756 | ~3300 | + scons headers; Xperia Play build |
| 1.0.5 (zip) | 6688 | 2 | 0 | 108 size + 21 hash | closest to 1.0.2: text, 6 swf menus, splash/menu tga, 4 pydata |
* Pydata: 219 `.bin` compared. Character tables, animations, all level scripts are identical across 1.0.0/1.0.2/1.0.4u/1.0.5. Differences: 1.0.5 `common_pyarray` / `engine_core_pycst` / `specs_pycst` (same byte length; only 2-byte fields change - screen-size constants such as 320 -> 720), `common_text_pycst` (text lengths); 1.0.4a `trophies_*`, `design_pyarray`, 4 scripts. Record layouts are identical (same sizes, same headers), so the 1.0.2 readers work on every set.
* Most complete: 1.0.4 Universal has the most files (music .ogg, extra fonts) but nothing our 1.0.2 build reads; no set adds a pydata row, character or texture we lack.

## Q3: native libraries
| lib | size | .text | dynsyms | note |
|---|---|---|---|---|
| 1.0.2 (ours) | 15938284 | 5961032 | 32572 | package `GloftD2SS` |
| 1.0.0 (3 apks, identical md5 71ee69d0) | 15942841 | 5961008 | 32566 | |
| 1.0.5 (1920x1080 apk) | 15936165 | 5957616 | 32573 | no libStormGLOFT |
| 1.0.4 Universal | 16269220 | 6044920 | 32716 | package `GloftD2HP`; +206/-62 exports: Xperia Play touchpad/key hooks (`inTouchPadLeftCircle`, `Set_Key_*`), `ALicenseCheck_GetIMEI`, `USE_NATIVE_DRM` |
All are 1.0.x builds of the same code base; 1.0.2 and 1.0.5 differ by ~3 KB of text. No strong reason to retarget: keep 1.0.2.

## Unreadable / skipped
* `.sis` is a 416-byte stub; `.sisx` (320 MB, Symbian) is not an archive 7-Zip can open and no parser is installed - it is the Symbian build (different engine) and not needed.
* `Dungeon Hunter 2 IOS Version_opt.apk` is a touchHLE wrapper around `assets/game.ipa` (iOS data, no new Android data).

## Decision / change
No data set contains the missing entries, so no data set is chosen over 1.0.2 and no runner or DataSetup code was changed. Any set whose `data/` folder is dropped in place of the 1.0.2 one would load (same formats), but gives nothing extra; 1.0.5 is the only drop-in differing slightly (screen constants), so keep 1.0.2.
