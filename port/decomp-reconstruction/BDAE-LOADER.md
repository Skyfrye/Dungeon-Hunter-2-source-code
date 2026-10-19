# The .bdae loader: host layout (owner B3, 2026-10-16)

Decision 2 of `TRACK-B.md`: in-memory pointers are host width, and binary data from files is decoded field by field at its 32-bit layout, never
cast to a host struct. This note records how that rule is applied to the `.bdae` resource files (`glitch::collada::CResFile`,
`CResFileManager::postLoadProcess`) and to the 0x58-byte `SCreationParameters`.

## What the original does

A `.bdae` is a "BRES" image. `glitch::res::File::Init` (0x69a40c, with the memory form 0x657fa0 and the reader form 0x69a880) turns the offsets
stored in the file into absolute 32-bit addresses **in place**, by adding the address of the memory the image was read into, and the game then
reads every table through those addresses as the record structs of the program (`CColladaDatabase` -> `CResFile +0x24` -> header `+0x20` -> table
holder). `CResFileManager::postLoadProcess` (0x658c90) then turns the words that are indices (the effect of a material, the image of a sampler,
the geometries of a morph) into addresses, again in place.

## File layout (header 0x3c bytes)

| offset | meaning |
|---|---|
| +0x00 | "BRES" |
| +0x04 / +0x06 | u16 byte-order word (0xfffe) / u16 flags (bit 15: fixed up) |
| +0x08, +0x0c | header size (0x3c), image size |
| +0x10 | number of pointer words; +0x18 offset of the pointer table (right after the header) |
| +0x14 | image base (0, or the sign bit for a file that refers to another file; 0 in all 4771 samples) |
| +0x20 | the table holder (`SDatabaseTables`), +0x24 the name of the file this one depends on |
| +0x28 | size of the local block; +0x2c size of the range region; +0x30 number of ranges; +0x34 one block per range; +0x38 size of the on-demand tail |

The file is `[header + pointer table + local block] [range table (8 bytes per range) + range data] [on-demand tail]`. In the sample files the
tail size (`+0x38`) is the animation key data; it is what makes `postLoadProcess` keep the file name (`CResFile +0x4c`, the inline `res::File`'s
`+0x28`), because the on-demand reader opens the file again later.

## Host design

1. **A 32-bit address space for the image** (`glitch-video/tb/glitch_res_AddressSpace.hpp`, `src/res_address_space.cpp`). Every block the loader
   allocates (the image, the pointer table, the range blocks) is registered and gets a 32-bit "virtual" base address. `Init()` keeps its control
   flow and its 32-bit arithmetic, with `Addr()` / `Bytes()` / `Words()` now mapping between host pointers and these addresses, so the fix-up
   stores and compares exactly the words the original does. The addresses start above zero (a null word stays null) and blocks are given back
   with `unmap` (the test checks that no block is left after the records are dropped).
2. **A decode step** (`collada/BdaeDecode.hpp`, `src/collada/CResFileDecode.cpp`). It reads the relocated image through the address space,
   bounds-checked against the registered blocks, record by record at the 32-bit layouts written as comments in the decoder, into the host-width
   records of `collada/CColladaDatabase.hpp` (`SDatabaseTables` and everything below it). Plain data that holds no address (floats, ints, text,
   vertex and index bytes, key data) is not copied: the host record points at it inside the image. A file that does not decode (a damaged table, a
   read past a block) gives a null `CResFile::data`, and the manager drops the record.
3. **`CResFile`** (0x658048 / 0x65815c) runs `res::File::Init` (memory form for a reader that holds the whole file, reader form otherwise), copies
   the inline `res::File` state into its members (`arrayCount_0x38` = number of range blocks, `array_0x44` = host pointers of the range blocks,
   `buffer_0x40` = the range table, `flag_0x48`, `keepSourceName` = size of the on-demand tail), keeps the fixed-up image in the new member
   `image`, and decodes into `hostModel`. The destructor (0x658a2c) frees the range blocks, the array, the table and the image (not when the
   reader's own memory holds it) and gives the blocks back to the address space.
4. **Indices stay indices until `postLoadProcess`** (as in the original). The decoded records carry the file's word beside the pointer the original
   puts in its place: `SMaterial::effectIndex`, `SParamSampler::index` (a sampler parameter's `values` is an array of pointers to these cells; the
   original fixes up the first one), `SMorph::targetIndices`. `postLoadProcess` fills `effect`, `SParamSampler::image` and `SMorph::targetNames`.

## Decoded records (file layout -> host)

Offsets are file offsets. Strides: image 0x14, effect 0x74, material 0x24, geometry 0x10, controller 0x0c, light 0x18, camera 0x1c, force 0x10,
coronas 0x24, new-particle emitter 0xe8, emitter 0x90, visual scene 0x10, node 0x50, animation 0x20, channel 0x10, clip 0x0c, segment 0x18, mesh
buffer 0x38, instance material 0x3c. Table holder offsets: version text +0x00, up axis +0x0c, external-resources flag +0x10, animation range
+0x18..+0x20, animations +0x24/+0x28, events +0x2c, segments +0x30 (pointer to `{count, base}`), clips +0x34/+0x38, cameras +0x3c/+0x40, lights
+0x44/+0x48, images +0x4c/+0x50, effects +0x54/+0x58, materials +0x5c/+0x60, skin count +0x64, geometries +0x68/+0x6c, controllers +0x70/+0x74,
emitters +0x78/+0x7c, new emitters +0x80/+0x84, forces +0x88/+0x8c, coronas +0x90/+0x94, visual scenes +0x98/+0x9c, scene +0xb8/+0xbc.

* **Effect** (0x74): name, id, then four sections `{technique count, techniques, new-param count, new-params, count, array}` at +0x08, +0x20,
  +0x3c, +0x58 (0x18 bytes for the first, 0x1c for the others; the trailing word of sections 2 and 3 is uninitialised in the files). Section 0
  holds the fixed-function passes (`SPass<SRenderStatesGLES>`), section 1 the GLES2 passes (`SPass<SRenderStatesProgrammable>`); sections 2 and 3
  are empty in nearly all sample files (3 of the 1590 sampled have them) and only their new-params are decoded.
* **Passes.** Programmable: 0x74 bytes, shader strings at +0x04..+0x18, the 0x4c-byte `video::SRenderState` at +0x1c, a word at +0x68, binding
  count +0x6c, bindings +0x70. Fixed function: 0xa0 bytes, 0x4c bytes of state, the render state at +0x4c, binding count +0x98, bindings +0x9c.
  **Discrepancy, recorded:** the null template (0x6357a0) reads the render state at pass +0x8c, the binding count at +0xd8 and steps passes by
  0xe0; the sample files have the render state at +0x4c and the count at +0x98 (every fixed-function technique of the sampled files has exactly one pass,
  and their binding table follows the pass directly). The decoder follows the data; the template reads the decoded host members, so the
  difference does not reach it. For a technique with more than one fixed-function pass the file stride is unknown (none exists in the samples).
* **Bindings** (12 bytes): programmable = name +0x00, global flag byte +0x04, stage byte +0x05; fixed function = symbol u16 +0x00, global flag byte
  +0x02, stage byte +0x03; +0x08 the new-param index, or the name of the global parameter.
* **Parameters** (`SNewParam` / `SParam`, 0x18): the values by type: numbers stay in the image, samplers are arrays of pointers to index cells,
  lights and urls arrays of text, a technique parameter a record with the name at +0x04.
* **Mesh data.** When the file has skins (`skinCount > 0`) the vertex bytes, the index bytes and the skin data are on-demand blocks
  (`res::SOnDemandBlock`, `{count, file offset, size, data}`), decoded into host blocks; otherwise the same words are pointers to the data. A
  geometry flagged "not instantiated" (a spline) has a record of another kind in its mesh word and is not decoded.
* **Instances.** Kinds 1 (camera), 2 (controller), 3 (geometry), 4 (light), 6 (visual scene), 9 / 10 (emitters), 11 (coronas), 12 (force) and 13
  (modular skin) are decoded; the others give a null record.

## `postLoadProcess` (0x658c90)

Same stages and order as the original: external resources when already resolved; the version text against "0,0,0,777" (seven log lines on a
mismatch); the kept source name; the animation tracks; the textures of the images that are not external; the material effects and sampler cells;
the sampler cells of the four new-param lists of every effect; the morph targets; the mesh nodes of the type-2 emitters; the resolved flag.
Named host deviations: a material whose effect index equals the effect count gets none (the original takes the address one past the table); an
image index outside the table leaves a sampler cell without an image; an emitter of mesh type 2 gets the node's first instance record in
`SEmitterMesh::instance` and, for a geometry instance, its url in `geometryUrl` (no sample file has such an emitter).

## The profile templates (0x6357a0, 0x6361e8, `SProfileGLES2Traits::createShader` 0x634b30)

One template over a traits class (`SProfileNullTraits`, `SProfileGLES2Traits` in `src/collada/CColladaMaterial.cpp`): the effect's section, the
shader of a pass, the lookup of a binding's shader parameter. The process-buffer id arrays are `std::vector<uintptr_t>` (the ids are host
pointers). `addParameterInternal(char const*, ...)` (0x631c50, a compiler clone) is `addParameterByName`. The fixed-function instance is
exercised by the loader test on a real effect; the GLES2 instance needs a GL driver and is compile-checked and symbol-checked only.
`glitch-video/src/ok1-CMaterialRenderer.cpp`: `CMaterialRenderer::allocate` returned `intrusive_ptr(p)`, which takes over a use that a fresh
renderer (count 0) does not have; it is now `(p, true)` (found by this work, one line, outside the category).

## `SCreationParameters` (0x58 bytes) and `createDevice` (0x5340ac)

The block keeps every plain field at its original 32-bit offset, so the code that reads a number at an original offset is unchanged (driver type
+0x00, size +0x04/+0x08, colour bits +0x0c, z-buffer bits +0x0d, fullscreen +0x0e, stencil +0x0f, vsync +0x10, batch buffer sizes +0x40/+0x44,
+0x48/+0x4c, 1.0 at +0x50). The two address words of the original are host-width members after the block: `eventReceiver` (original +0x28) and
`version` (original +0x3c, "0.1.0.2"); the block holds zero there. `IDevice::IDevice` copies them. The `IDevice` constructor stays partial for
its other parts (managers, timer, logger); the receiver and the version text are now available to it.

## Tests

`glitch-scene-collada-gui/tests/bdae_loader_test.cpp` (about 12 s): finds the sample files (`port/android-native/.../assets`, 4771 `.bdae`),
loads every one through the memory path and every tenth also through the reader path, checks the table counts and the names of every named table
against a plain parse of the raw file words, and compares the content of the two paths. It then checks one mesh file (`actors/assassin.bdae`:
geometries, the interleaved vertex data, the mesh buffer, a skin, an effect with both profiles and its passes and bindings), one animation file
(`assassindemon_attack_01.bdae`: 24 animations, the segment and its on-demand block, the events), runs `CResFileManager::get` +
`postLoadProcess` on the 4467 files whose materials all have their effect in the file and checks the effects and the 18,792 sampler cells, builds
material renderers from real effects (fixed-function profile), and checks that no block is left in the address space.
`create_device_test.cpp` checks the creation parameters `createDevice` fills.
