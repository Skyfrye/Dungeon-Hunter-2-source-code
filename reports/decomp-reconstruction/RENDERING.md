# Rendering investigation: green René / "green marble" (owner RT, 2026-10-17)

## Root cause (fixed)
René (NPC `_prim_NPC_PriestGood`, model priest_good.bdae, atlas_skinned_characters_animdecor_gameobjects_002) was drawn with the swamp
environment atlas (env_swamp.tga, jade green) instead of his own atlas, and with a tiki-torch fragment merged into his draw.
The "green hooded companion / jade statue" of V1 and the user is René himself; V1's "statue batched with the tiki torches" was this merge.

Chain of evidence
1. Texels and upload are clean: Python PVRTC decode == game PVRTCDecompress (0x69f768) == bytes given to glTexImage2D (diff 0.0).
2. René's node (host_rtdump.cpp, `DH2_DRAWDUMP` + chardump) is visible, his material holds the correct ITexture (atlas 002, GL name 39),
   but the draw that renders his 438 triangles (cnt=1314, UV 0.13..0.59 x 0.38..0.71 = the priest region of atlas 002) binds GL texture 35 (env_swamp).
   Forcing texture 39 on that draw (`DH2_REMAP_CNT=1314 DH2_REMAP_TO=39`) gives the white tabard and red-orange skirt hem of the GT frame.
3. The draw is a merge of two scene entries: ten triangles of a tiki torch (UV -0.37, 2.3, env_swamp) sit in René's vertex stream.
   Merging is the driver batching of SceneManager::SwitchBatching (game-world g1-game-world-SceneManager-9fc3ac-2.cpp, listing 0x357780):
   neighbouring small entries with `material == material || material->getHashCode() == material->getHashCode()` are drawn as one batch with the first material.
4. CMaterial::getHashCode (0x35364c) hashed only the value buffer. Texture parameters (types 12..15) and lights (18) hold their 32-bit pointer
   in that buffer in the original; the port keeps pointers in SPointerSlots outside it, so the bytes were zero: two materials that differ only in
   their texture got the same hash, compared equal (areParametersEqual) and ordered equal (compare). René's priest material hashed like the torch material.

Fix: glitch-video/src/material.cpp: `isPointerType` / `pointerWord` (low 32 bits of the texture or light pointer in SPointerSlots) fed into
updateParametersHashCode, areParametersEqual and compare, as the original's value bytes do.
Before / after (same save, --fixed): build/own-rt/c0/s5b.png vs build/own-rt/after2/s5b.png; close-up build/own-rt-gt/rene_before_after.png.
The hero (build/own-rt-gt/hero_before_after.png) is unchanged and matches build/own-gtw/ref/mon_f3300.png (the red chest gem is in the data; there is no red face).
Zombie corpses: olive bodies in blood also appear in the GT frame (mon_f3300 top right); no divergence found, no change made.
Earlier suspicions cleared: PVR header/format, BGRA wrapper, V flip, fog uniforms (never set, no effect), envmap (hero envmapIntensity=1.0 is data, matWorldViewIT
= inverse transpose of world*view as listing 0x5b78b8 case 0x30), vertex-colour default white (V1's fix matches the listing).

## Tooling (windowed runner, env-gated, port/decomp-reconstruction/host-runner/host_window.cpp + host_rtdump.cpp)
`DH2_DRAWDUMP=<frame>` per-draw program / textures / attribute ranges / uniforms, `DH2_UVDUMP=<tex id>`, `DH2_TEXDUMP=<dir>`, `DH2_SHDUMP/DH2_SHPATCH`,
`DH2_SKIPTEX/DH2_SKIPPROG`, `DH2_REMAP_CNT/TO`; `DH2_DRAWDUMP` also runs rtCharDump (node tree, materials, texture pointers + GL names).
Build: `ninja -C build/own-rt-b dh2_win_window` (own-w libs are stale against current headers). Note: an unrelated header pulls <windows.h> into game-world TUs
(GetObject macro -> undefined ObjectHandle::GetObjectA); the own-rt-b build.ninja has -DNOGDI on the game-world objects as a local workaround (not in the tree).
Reproduce: build/own-rt/runcase.sh <outdir> (restores build/own-rt/savebase first); scripts build/own-rt/shots*.txt.
