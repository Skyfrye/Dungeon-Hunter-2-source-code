# Remaster: upscaled textures and normal maps (branch `track-b/remaster`)

Goal: sharper textures and surface detail without touching gameplay, animation, meshes or the original data files.
The original game stays playable as it is; the remaster is an optional layer.

## What the engine and the target phones give us (measured 2026-10-18)

| Item | Finding |
|---|---|
| Original textures | 242 in `data/3d/textures`: 217 PVRTC 4 bpp, 17 PVRTC 2 bpp, 8 plain TGA; 98 MB on disk, 97 M texels |
| Stored mipmaps | none in any original file |
| Sizes | mostly 1024², 512², 256², 128², 64² |
| Galaxy Z Fold 7 GPU | Adreno 830, GLES 3.2, max texture 16384; ASTC LDR/HDR, ETC1/ETC2, S3TC, ATC; **no PVRTC** |
| Consequence today | every PVRTC texture is decoded to RGBA on the CPU at load (the `pixel_format::convert` frames in the phone profiler) |
| Engine compressed formats | DXT1/3/5, ATC, PVRTC (`E_PIXEL_FORMAT` 17..27); no ETC2, no ASTC yet |
| Compressed upload | generic: `CCommonGLDriver::CTexture::updateData` uploads any compressed format through the per-format GL table; mip chains are generated on the GPU only for uncompressed formats |

## Integration findings (runner tests with a 2x Lanczos stand-in of every texture)

1. **3D world and characters take larger textures as they are.** Meshes address textures in 0..1, so the existing
   `tools/trackb/textures.py pack` output (RGBA8888 PVR under the original names) renders correctly at 2x.
2. **Flash menus and the HUD did not.** `bitmap_info_ogl::set_texture` copies the texture size over the size the SWF
   declares, and gameswf divides pixel rectangles by that size, so a 2x atlas showed the wrong regions (scrambled HUD,
   stats, inventory, faeries, pause frame). Fixed on this branch: `gameswf::bitmap_info::dh2_keep_declared_size` (appended
   virtual, no-op by default) is called by `substitute_bitmap_character`; `bitmap_info_ogl` keeps the SWF size when the
   texture is an exact integer scale of it. Original textures have equal sizes, so nothing changes for them.
   `RenderFX::ReplaceTexture` (render targets) is not affected. Verified: the 19-page menu walk at 1920x1080 is identical
   with the 2x pack; gameswf tests 57/57.
3. **Raw RGBA is not viable on phones.** The 2x stand-in pack is 1.7 GB on disk. Memory with mips:

| Format | 2x | 4x |
|---|---|---|
| RGBA8888 | 1972 MB | 7888 MB |
| ASTC 4x4 (8 bpp) | 493 MB | 1972 MB |
| ASTC 6x6 (3.56 bpp) | 219 MB | 878 MB |
| ASTC 8x8 (2 bpp) | 123 MB | 493 MB |

(All textures at once; a level loads a subset. Today's decoded originals are about 370 MB.)

## Recommended integration

- **Scale: 2x.** 1024² becomes 2048². At phone screen sizes 2x already exceeds the texel density the camera shows for most
  surfaces; 4x costs 4x the memory for detail mostly lost to minification.
- **Format: ASTC with a full mip chain**, encoded offline with ARM's astcenc (Apache-2.0). 4x4 for menu atlases, faces and
  hero gear (sharp edges, alpha); 6x6 for world materials. Engine work: add ASTC ids to `E_PIXEL_FORMAT`, the PFD table, the
  GL format table and `isCompressed`, and a KTX v1 loader (standard container, carries mips and the GL internal format).
  Devices without ASTC keep the original textures.
- **Delivery: an override layer, not replaced files.** The texture manager looks in `data/hd/` first (same names), so the
  original data stays intact and the pack can be shipped separately (it does not fit sensibly in the bundled APK) and
  switched off with a port setting (`hdtextures`, "!" dialog).
- **Mipmaps.** The originals have none; at 2x, minified surfaces shimmer without them, so world textures ship a mip chain.
  Menu atlases are drawn near 1:1 and need none.

## Upscaling the textures (the user's step)

Hand back `DH2-textures/upscaled/` with the same names (README in that folder). Points that matter for these textures:
- Sources are decoded PVRTC: block artifacts are in the input. Prefer a model trained on compressed input, or denoise first.
- Alpha is cut-out and blend data: upscale it separately (or with a model that handles RGBA) and keep hard edges hard.
- Tiling textures (walls, floors, water, grass): pad by wrapping before upscaling and crop after, or the seams show.
- Menu atlases: the regions sit next to each other; keep the transparent gutters, check region edges for bleeding.
- Tools: chaiNNer with OpenModelDB models (batch, tiling, alpha handling), Real-ESRGAN as the baseline, SwinIR/HAT-class
  models for sharper results; compare on a contact sheet of six sample textures before the batch run.

## Normal maps

**Engine side.** The world is mostly unlit-and-lightmapped (`Unlit*` shaders, `GL_Diffuse_L1_iPhone` with `LM`); objects and
characters use `GL_Diffuse_L1_iPhone` with one light (`Light0`) lit per vertex. That shader already carries an unused
`ENABLE_TANGENT_SPACE` path (tangent/binormal attributes, light vector in tangent space), so it was written with bump
mapping in mind, but its fragment shader never samples a normal map. Plan:
1. A normal-mapped variant of `GL_Diffuse_L1` (per-pixel `dot(N, L)` from the tangent-space light vector the VS already
   builds), shipped as a port shader next to `shaders.pak`.
2. Tangents computed at mesh load from positions, normals and UVs (the BDAE meshes do not store them).
3. Lightmapped world surfaces: "detail lighting" — the lightmap stays the light, the normal map modulates it against one
   dominant direction per level, so walls and floors gain relief without new lights.
4. Binding by name: a texture `X` gets `X_n` from the HD layer when present; no material files change. Port setting to
   switch it off.

**Generating the maps.** One convention end to end: tangent space, OpenGL green-up, matching the tangents computed at load.
- Default bulk pass: DeepBump (open source, ONNX, batch-friendly; good on stone, wood, cloth, metal).
- Large architectural surfaces: a monocular normal estimator (Marigold-Normals / StableNormal / DSINE class) handles big
  shapes better; heavier to run.
- Hero gear and faces: hand-checked or authored.
- The 2011 diffuse maps have lighting painted in, which estimators read as grooves: run a delight / high-pass step first.
- Before any batch: one texture through the whole chain in the runner, then a contact sheet of six samples per tool
  (DeepBump, a monocular estimator, ArmorLab, a commercial tool if wanted) and pick per texture class.

## Status (2026-10-18)

- **Textures:** all 361 upscaled by the user (6x); `tools/trackb/remaster_prep.py downscale` makes the exact 2x set
  (`Documents/DH2-remaster/hd2x`), `textures.py pack --upscaled` packs it. Menus and world render correctly at 2x in the
  runner. To review: effect textures (the water caustics turned into hard cells).
- **Normal-map relief (done, runner-verified):** `tools/trackb/remaster_shaders.py` writes `data/port/remaster_shaders.zip`
  from the user's shaders.pak (GL_Diffuse_L1 and the lit, textured ProfileCOMMON variants: world, props, characters,
  skinned meshes); `Application` mounts it before shaders.pak; `game-app/src/remaster_normal_maps.cpp` binds
  `<diffuse>_n.tga` to every material whose shader has NormalSampler. No mesh tangents: the tangent frame comes from
  screen-space derivatives. The relief light is Light0 tipped towards a fixed oblique direction (a light from straight above
  shows almost no relief). Port settings `normalmaps`, `normalstrength` (percent), `normalgreen`. Stand-in maps (height from
  brightness) prove the chain; CHORD maps (`tools/trackb/remaster_normals.py`) replace them once the model is unlocked.
- **Next:** ASTC (new pixel-format ids above the engine's "unknown" id 39, GL table rows, a KTX loader that recognises the
  file by content so HD files keep their .tga names, a software decode fallback for GPUs without ASTC, e.g. the Windows
  runner's ANGLE/D3D11) using ARM's astc-encoder; an HD override folder and switch; then the phone build.
