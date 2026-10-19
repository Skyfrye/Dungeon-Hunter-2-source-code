Ledger: 812 rows (369 reconstructed, 91 partial, 352 skipped). Queue total 1345, 533 still open.
Wave 7 added 231 rows (see the Wave 7 section at the end).

## Layouts inferred

- CFPSCounter (+0x00 fps=60, +0x04 primitives of last frame, +0x08 last reset time,
  +0x0c frames since reset, +0x10 primitive sum since reset, +0x14 primitive average,
  +0x18 primitive total, +0x1c draw calls, +0x20 2D draw calls, +0x24 texture bindings).
  registerFrame recomputes fps and average once `now - last > 0x5db` (1499 ms), using
  float reciprocal and f2d/d2uiz conversions (helpers at 0x30e514 / 0x30e4cc, read as
  __aeabi_f2d and __aeabi_d2uiz from the call pattern; not confirmed against the helpers).
- CVideoModeList (vtable +0x00, +0x04 = 1 unidentified, +0x08 begin, +0x0c end,
  +0x10 capacity end, +0x14 desktop dimension, +0x1c desktop depth). Elements are 12 bytes:
  resolution (w,h) then depth. Port uses std::vector and keeps the offsets as comments.
- CImage: +0x10 width, +0x14 height (only these are reconstructed).
- IReadFile: read() at vtable +0x0c. Upstream Irrlicht has read() at slot 2, so the glitch
  base class carries one extra virtual before it. The stand-in in deps/glitch_io.hpp keeps
  a placeholder slot.
- CImageLoaderBMP/TGA, CImageWriterTGA: vtable and +0x04 = 1 in the constructors.
- CNullDriver: the four 2D/colour setters are empty bodies.

## Decisions

- Mangled-name C1/C2 (and D1/D0) pairs share one C++ definition. The deleting D0 variants
  are compiler generated and are ledgered as `skipped`.
- Extension checks treat the original's "return pointer or 1" as a bool.
- CVideoModeList getVideoModeResolution/Depth: original uses `index <= count`. Port uses
  `index < count`, so it does not read one element past the end. Ledgered `partial`.
- The port adds two test helpers, not in the original: CVideoModeList(vector, ...) and
  CImage(w, h). They are marked in the headers.

## Blockers and open items (earlier waves; see Wave 5 below)

- pixel_format::detail::PFDTable (1600 bytes at 0x8e36c0 in .rodata, 40 rows of 0x28) is
  not in the repo. Wave 5 declares the row layout and a zero-filled table; see Wave 5. The table bytes are absent from recovered/native/assembly and symbols.
  getPackedType, getFormat, computePitch, computeSizeInBytes, computeMipmapSizeInBytes,
  swapBytes, convert, and every converter depend on it. Blocked until the table is dumped.
- SColor::getInterpolated, SColorHSL::toRGB/toRGB1, SColorf::equals: decompiler output is
  garbled (soft-float calls read as tail calls). Need a careful pass over the assembly
  listings before translating.
- CMaterial::getHashCode / equals / operator<, CVertexAttributeMap, CMaterialVertexAttributeMap,
  CVertexStreams, CTextureManager, shader and material parameter classes: not started. Most
  depend on boost::intrusive_ptr, GL function pointers or shared-memory block headers.
- Remaining image loaders (PNG, JPG, DDS, PVR, ATC) and writers (JPG, PNG) are not started.

## Batch 2 (this session, continuation)

- CNullDriver: full method set from the asm (126 entries). Bodies were taken from the
  listings: empty, constant returns, out-parameter writes. Nested CBuffer, CTexture and
  CFramebuffer are included. getScissor and getTransform are `partial`: they read driver
  state that is not reconstructed.
- IVideoDriver (video_driver.hpp): member offsets +0x44 (max texture size), +0x50 (CFPSCounter),
  +0xf4 (shader pointer cleared by onShaderDestroyed). Base classes are not modelled.
- CCommonGLDriverBase (ccommon_gl_driver_base.hpp): state getters. Member offsets are from
  the asm, and member names come from the accessor names.
- Texture loaders (texture_loaders.hpp): constant probes and CDataInfo getters. The base
  classes are shown as simple inheritance; the original base layout is not confirmed.
- Destructors: deleting thunks (bl operator delete) and empty destructor bodies are ledgered
  `skipped` as compiler generated, with the reason in notes.
- deps/intrusive_ptr.hpp: boost::intrusive_ptr-compatible pointer without reference counting.
- deps/gl_function_table.hpp: minimal GL function table, not yet used by reconstructed code.
- Symbols in comments were copied from queue.csv (mangled), not guessed.

## Still open

- SColor::getInterpolated, SColorHSL::toRGB/toRGB1, SColorf::equals: soft-float bodies. Helper
  mapping (0x30e70c fcmp, 0x30e3ac fsub, 0x30ed6c fmul, 0x30eba4 fadd, 0x30e2e0 ui2f,
  0x30e4cc d2uiz, 0x30e514 f2d) is inferred from call patterns and not yet verified.
- IMaterialParameters templates and setParameterAt/getParameterAt conversions: need the asm
  for the helper calls before translation.
- CProgrammableGLDriver / CCommonGLDriver<...> template instances: the template is not
  modelled; getters and shader-manager accessors are still open.
- getStringsInternal (string tables) and the pixel_format PFD table: data not in repo.

## Wave 5

Ledger after this wave: 581 rows (349 reconstructed, 70 partial, 162 skipped).

Class layouts added:

- CVertexStreams (vertex_streams.hpp): +0x04 m_attributeMask, +0x0e m_flags (bit 0 kFlagHomogeneous,
  bit 1 kFlagHasData), +0x10..+0x24 is the stream array, here a std::vector. SVertexStreamData is the
  setStream input; setStream copies +0x08 to the entry's +0x0a, and not the attribute at +0x08.
- CVertexAttributeMap (vertex_attribute_map.hpp): +0x00 word zeroed by the constructors and not copied
  by operator=; +0x04..+0x21 is a 30-byte slot-to-stream-index map, 0xff when unset.
- CCommonGLDriverBase: m_colorMask (+0x1ec), m_blendColor (+0x204) and m_clearColor (+0x208) moved here
  from CCommonGLDriver, because the getters are base methods. Blend src/dst are uint8 at +0x200/+0x201.
- CCommonGLDriver (ccommon_gl_driver.hpp): render-state setters over the GL function table; m_frontFaceFlip
  (+0x4a0), m_scissorFlag (+0x23c). flush(), presentHook() and stateHook() are virtual no-op defaults.
- CProgrammableGLDriver (programmable_gl_driver.hpp): queryMaxLightCount 8, getMaxUserClipPlanes 6,
  getShaderManager (+0xd8), getDriverType (0x78), commitShader records m_currentShader (+0xf4).
- IShader m_glProgram (+0x4c); CGLSLShader (gl_small.hpp) stores the glCreateProgram result there.
- glitch::core::vector4d and glitch::video::SColorf added to deps/glitch_core.hpp.
- IMaterialParameters<Owner, kTrackDirty> (material_parameters.hpp): dirty words at +0x0c/+0x10 only when
  kTrackDirty is true (CMaterial). Explicit instances: CGlobalMaterialParameterManager (false), CMaterial
  (true), CMaterialRenderer (false).
- Image loaders and writers: m_refCount on IImageLoader, m_unknown04 = 1 on the JPG loader and the JPG and PNG
  writers (texture_loaders.hpp, image_loaders.hpp, src/image_factories.cpp).
- pixel_format (pixel_format.hpp): SFormatEntry is the 0x28-byte PFDTable row. The table is zero-filled here,
  so the size helpers are reconstructed but partial until the table data is supplied.

Decisions:

- Thunks (4-byte `b #target`): ledgered reconstructed only when the target is already in the port and the
  body forwards to it (0x5a0e24 to updateStatesInternal). Otherwise skipped, with the target from the ARM
  listing. Every target was checked against recovered/native/assembly.
- Compiler clones (`.clone.N`) with a constant argument: only the generic body (0x7d46fc, setStream with a
  flag) is implemented. The clones are skipped and name the constant. Clones with identical bodies are
  also skipped, so no body is written twice.
- Ghidra shows some mip-level helpers as void (0x5edbcc, 0x5edbec, 0x5edc80). Their ARM tail-branches into
  computeSizeInBytes, so they return the size.
- ARM register shifts of 32 or more give 0. pixel_format uses lsrOrZero to match, since C++ shifts that
  large are undefined.
- CVertexAttributeMap::set ignores slots past the 30-byte map. The original writes without a check.
- deps/intrusive_ptr.hpp does not count references. setStream and the CVertexStreams destructor are partial
  because the original drops references there.
- Matrix overloads of IMaterialParameters (CMatrix4 is not in deps) are skipped, along with the thunks that
  forward to them.
- Destructor chains (D1/D0 with base destructor calls) are skipped as compiler generated. The port's
  implicit destructors cover them.

Still open:

- getStringsInternal (about 24 functions): the E_* types are int32 aliases, so the overloads collide, and the
  string table contents are not in the repo.
- IMaterialParameters E_SHADER_PARAMETER_VALUE_TYPE overloads (316-byte switch bodies), grabParameters and
  dropParameter (the template needs the matrix and value switches).
- CMaterial hash code, equals, init and reset: the CMaterial layout beyond the first members is not in the port.
- CGlobalMaterialParameterManager, CMaterialRendererManager, C2DDriver, CTextureManager, CGLSLShaderManager,
  CLight, CImage: most small bodies depend on classes that are only forward-declared.
- IVideoDriver: vtable slots +0x1f8 (binding), +0x0c (render buffer release) and the setMaterial overloads are
  not identified.
- Image writer encode paths and the libjpeg/libpng callbacks; IBuffer::map and copy-to-buffer paths.
  (IBuffer::map for E_BUFFER_MAP_ACCESS is done in wave 7; the read overload is still open.)

## Wave 7

Ledger after this wave: 812 rows (369 reconstructed, 91 partial, 352 skipped). Wave 7 added 231 rows: 20 reconstructed,
21 partial, 190 skipped. Of the skipped rows, 50 are queue entries outside glitch::video (see Decisions).

Source: the Hex-Rays export (recovered/native/hexrays-all, commit 9476235b) is the primary pseudocode source. Bodies
written before the switch to Hex-Rays were checked against the same addresses there. The ARM listings were used
for thunk and tail-call questions only.

Class layouts added or confirmed (offsets from the original, names from the call pattern):

- IBuffer (buffer.hpp): +0x04 m_refCount, +0x08 m_data, +0x0c m_size, +0x10 m_type, +0x11 m_usage, +0x12 m_flags12
  (bit 0 data not owned, bit 1 has data, bit 5 unmap callback), +0x13 m_mapCount13 (low 5 bits count, bits 5-6 access).
  Virtual slots used by map(): index 5 (+0x14) mapImpl, index 6 (+0x18) unmap callback, index 7 (+0x1c) getMappedData.
  The indices come from the call pattern, not from a vtable dump, so the slot names are inferred.
- CCommonGLDriverBase::CBufferBase: derives from IBuffer; +0x14 driver, +0x18 word not identified, +0x1c mapped pointer.
- CCommonGLDriverBase::CTextureBase: +0x54 word and +0x58 byte zeroed by the constructor (names not identified).
- CCommonGLDriverBase::CRenderTargetBase: +0x4c and +0x54 attachment handles, +0x58 colour format byte, +0x59 target
  count byte. getTargetCount reads them by attachment type (0 count, 1 and 2 handle set, 3 handles equal).
- CCommonGLDriverBase::SCommonShadowState: twelve words; word +0x18 starts at 4, the others at 0.
- CNullDriver::CTexture: constructor arguments are not stored (ITexture base not ported).
- CGLSLShaderCode: +0x2c driver pointer; +0x30 word and +0x34 byte not identified.
- CGLSLShader: +0x44 and +0x48 words and +0x50 byte not identified; +0x4c is IShader::m_glProgram.
- CMaterialRendererManager (material_renderer_manager.hpp, new): +0x90 flag word; getTechnique and getParameterDef
  take an STemporaryID (one word) and return it when the flag is set and the id is non-zero.
- ITextureDataLoading (texture_loaders.hpp): m_file +0x04, m_source +0x08, m_desc +0x0c, m_info +0x10,
  m_sourceStep +0x1c, flags +0x20 (read failed), +0x21 (set by the constructors), +0x22 (pitch known).
- STextureLoadInfo: format +0x04, layoutType +0x08, width +0x10, height +0x14, depth +0x18.
  STextureHeaderBlock: width +0x24, height +0x28. STextureDataInfo: header pointer +0x00, swapBytes +0x0d.
- SDDSSurfaceFormatHeader: 0x7c bytes; pixelFormatSize +0x48 (0x20 expected).
- CPrimitiveStream: m_count +0x08, m_primitiveType +0x16 (uint16).
- ITexture: m_refCount +0x04, m_width +0x20, m_data +0x2c, m_levelSizes +0x30 (per-mip sizes, then the dirty bitmap),
  m_flags38 +0x38, m_mipCount3e +0x3e, m_flags3f +0x3f, m_dirtyFlags40 +0x40, m_lockCount42 +0x42, m_lockFlags43 +0x43.
- CTextureManager: m_placeHolders +0x48, m_textures vector at +0x68.

Decisions:

- Compiler clones, deleting destructors and 4-byte thunks: none are left in the queue. Earlier clones and destructor
  chains keep their wave-5 policy.
- Destructor teardowns (D1/D0) that have no port body are ledgered skipped, not partial. The port's implicit
  destructors cover them; the notes say where a member is not freed (ITexture m_data).
- Partial constructors: when the base constructor is not ported (ITexture, IShader, IShaderCode base, IVideoDriver),
  the body keeps only the fields that follow the base call. Such rows are partial, not reconstructed.
- Out-of-video queue entries: 50 functions in glitch-video/queue.csv belong to glitch::collada (22), glitch::res (10),
  glitch::scene (9), glitch::gui (6) and glitch::ps (3). They are outside glitch::video. They are ledgered as skipped with
  source "(outside glitch-video)" so the queue is consistent. They should be reassigned or confirmed by the coordinator.
- Hex-Rays header sizes do not match queue.csv body_bytes (for example 5b93ec: header 496, queue 64). The queue is used
  for addresses and symbols, and the bodies follow the pseudocode.
- IBuffer::map has one overload in the port. E_BUFFER_READ_MAP_ACCESS is an int32 alias here, so 0x5a1adc would
  collide with it and is not ported.
- Data tables are still absent from the repo: the PFD table (pixel_format), ValueTypeSize (SVertexAttributeTypeInspection)
  and the string tables. Anything that needs them stays open.
- libpng and libjpeg callbacks are still skipped (wave 5).

Still open (533 queue entries, all inside glitch::video):

- CCommonGLDriver<CProgrammableGLDriver<CGLSLShaderHandler>, CProgrammableGLFunctionPointerSet> and its nested
  classes, about 98 entries. Bodies use the GL function table, driver state and vtable slots that are not identified.
- IMaterialParameters templates for CMaterial, CMaterialRenderer and CGlobalMaterialParameterManager, about 63 entries.
  The value switches and the ISharedMemoryBlockHeader layout (count +0x0e, base +0x20) are not in the port.
- CMaterialRendererManager (about 52 entries, minus the two getters written here). It has no class in the port beyond
  the lookups.
- CVertexStreams and CMaterialVertexAttributeMap, about 46 entries. setupStreams needs the GL attribute table.
- IVideoDriver, about 40 entries. Includes the constructors (956 bytes) and the draw dispatch, which needs
  CDriverBinding.
- Shader classes (IShader, IShaderManager, CGLSLShader link path, CGLSLShaderManager, CShaderCodeManager), about 38
  entries. Most use SIDedCollection; linkProgram (0x6de9f8) is 1432 bytes.
- CMaterial, about 28 entries. The heap block, hash words and parameter blocks are not in the port.
- CTextureManager, about 27 entries. Its texture collection is an SIDedCollection, which is not in the port.
- CImage, about 23 entries. Pixel access and copy paths need the PFD table.
- SColor and pixel_format, about 21 entries (needs the PFD table; SColor interpolation not rechecked against Hex-Rays).
- C2DDriver (15), CNullDriver (9), ITexture (7), IBuffer::reset (2473 bytes) and IBuffer::map for E_BUFFER_READ_MAP_ACCESS.
- Image loaders for BMP, ATC, DDS, PVR, JPG, PNG and TGA: decode paths are not reconstructed in this wave.
- Smaller groups: CLight, CBatchDriver, COpenGLES2Driver constructors, CGenericBaker, the anonymous-namespace blit and
  preprocess helpers, IMaterialTechniqueMapsReader, the clustering helpers, and the SShaderParameterDef and
  SShaderVertexAttributeDef serializers.

## glitch-video-2 slice (78 rows)

- Written: buffer map (registerBufferMap, unregisterBufferMap, clearBufferMap) and createBuffer in ccommon_gl_driver.cpp; std::map member at +0x800 with BufferInfo (field names not identified).
- beginScene/endScene written as partial: IVideoDriver base call not reachable from CCommonGLDriverBase.
- Remaining open rows (CBatchDriver, detail soft-draw helpers, genericDriverInit, particle bakers, blits, loadImage BMP) are ledgered partial, not written this pass. Each needs its class layout or template instance first.
- Existing partial bodies for setBlend*/setStencil*/setCullFace/setDepthFunc/setFrontFace left unchanged; GL enum tables are still missing.

## glitch-video-1 slice (worker findings)

- SPackedRGBtoLuminanceAlphaConverter layout from PFDTable row (0x5edca4): weights 0.3/0.59/0.11 at +0x00,
  channel masks +0x0c, channel shifts +0x18, alpha shift +0x1b, alpha mask +0x1c, alpha scale +0x20, table
  alpha max +0x24 (0 when row flags bit 0 is set). Row bytes read through SFormatEntry::unknown18.
- ITextureDataLoading::getFilePitch (0x6077c4) returns the computePitch value in the original; the port is void.
- IMaterialParameters accessors: the matrix overloads read the owner block through +0x04 (CMaterial) or self
  (CMaterialRenderer), count at +0x0e, entries at +0x20, 16-byte entries with type byte +0x06 (11 = matrix).
  Dirty words are written at +0x0c and +0x10 by the matrix setters. Helpers getMatrixParameter and
  setMatrixParameter are not recovered.
- CImageLoaderDDS::loadTextureHeader needs a real STextureDesc layout (+0 type, +4 format, +16 width, +20 height,
  +24 depth, +28 flag); FourCC map: DXT1 (0x31545844) -> 18, DXT2/DXT3 (0x32/0x33545844) -> 19, DXT4/DXT5 (0x34/0x35545844) -> 20.

## glitch-video-3 (slice: IVideoDriver, IBuffer, CGLSLShader, CGLSLShaderManager, texture loaders)

- IBuffer m_flags12 bit 0 (0x01) is kFlagOwnsData: the data is a private copy that reset frees.
  The older note above says "data not owned"; the copy() and reset() bodies and the existing
  test (flag 1 keeps the data) show the opposite. Bit 2 (0x04) is kFlagDirty (read-back pending).
- IBuffer::copy returns bool and sets kFlagOwnsData. IBuffer::reset(size, data, keepOwned) is
  reconstructed from the control flow of 0x5a1cb4.
- CGLSLShader +0x44 and +0x48 hold the two shader code references (first and second argument of
  the 6df1f0 constructor). +0x4c is m_glProgram. releaseShaderCode and releaseDriverSpecificResources
  are reconstructed; GLFunctionTable gained deleteProgram.
- 64 of 78 rows are skipped: they need core math types (CMatrix4, triangle3d, aabbox3d, vector3d),
  CMaterial or CMaterialRenderer layouts, CGLSLShaderManager, or viewport and batch state that the
  port does not have. Each skipped row names its missing dependency in the ledger notes.

## glitch-video-6 slice (worker notes)

- SColor::getInterpolated reconstructed (src/s_color.cpp). Blend is t*this + (1-t)*other with t clamped to [0,1]; channel bytes are read with shifts, not casts.
- CMaterial: m_renderer +0x04, m_dirtyParameters +0x0c, m_dirtyHashes +0x10, m_hashCodes +0x18 (array of one word per technique). Renderer technique table at renderer+0x18, 12-byte entries, parameter count byte at entry +4. getTechnique, updateHashCode and compare are declared, not defined.
- IMaterialTechniqueMapsReader: m_manager +0x04, map ids +0x08/+0x0c (-1), flags +0x12/+0x13, error +0x16. The vtable and the virtual hooks (+0x1c, +0x28) are not modelled.
- Blocked on missing infrastructure (see the ledger part notes): pixel_format PFD table, SBlitJob, CMaterial heap blocks, CGlobalMaterialParameterManager and SIDedCollection, IVideoDriver base constructors, CBuffer and IBuffer relationship, CProgrammableGLDriver template.

## glitch-video-8 (slice of 78 rows, CVertexStreams / SVertexStream / pixel_format / programmable driver)

- New: render_state.hpp/.cpp (SRenderState, partial), tests/vertex_streams_build_test.cpp.
- vertex_streams.hpp: CVertexStreams ctor, allocate overloads, clone, setStreams, setupStreams, SVertexStream::SMapBuffer<T>
  (stores the SVertexStream pointer at +0x00 and the mapped pointer at +0x04, as the original does).
- New fields m_field08 (+0x08), m_count0c (+0x0c), m_streamCount0d (+0x0d) are named by offset only.
- Blockers for the remaining skipped rows: ValueTypeSize and Defaults tables of SVertexAttributeTypeInspection (not in repo);
  PFD table (pixel_format); GL function table lacks glCreateShader, glShaderSource, compile and info-log calls and
  glGetIntegerv/glHint; CProgrammableGLDriver layout past +0x284; CMaterialTechniqueMapLoadState not in port;
  IVideoDriver texture manager slot; IBuffer unmap callback (vtable +0x18) not modelled.
- All new vertex-stream bodies stay partial: buffer reference counts are not modelled in deps/intrusive_ptr.hpp.

## Slice glitch-video-4 (CLight, IShader, shader code, material renderer manager, SColorHSL)

- CLight (light.hpp): +0x00 count, +0x04..+0x0c words, +0x10..+0x34 ten floats (default 1.0), +0x40 FLT_MAX,
  +0x48 40.0, +0x4c 2.0, +0x50 STransformationSource slot, +0x54 flag, +0x58 halfword, +0x5a flag. Size 0x5c.
- IShader (shader_attributes.hpp): stage parameter records at +0x28 and +0x30 (pointer, halfword, halfword count);
  +0x24 vertex attribute defs; +0x38 vertex attribute mask; +0x3c count byte; +0x40 shader id halfword.
  Stage 2 has no record in the original reads; getParameterID returns 0xffff for it.
- CMaterialRendererManager: +0x28 driver, +0x90 open creation-state pointer (getTechnique tests it). The
  technique, render-pass and parameter tables are SIDedCollection and SSharedString trees; their bodies are
  ledgered skipped with the note blocked.
- ICodeShaderManager: +0x7c additional config text, +0x80 its length (-1 until loaded).
- Converter SAlphaIndexedPackedConverter (alpha_indexed_converter.hpp): masks at +0x00..+0x08 and +0x1c..+0x30,
  shifts in two groups, LUT pointer +0x3c, LUT mask +0x40; the constructor needs PFDTable (blocked).

## PFDTable data (integrator decision, 2026-10-12)

- The table bytes are in the original ELF: `ida.zip` contains `libDungeonHunter2.so` (15.9 MB). The
  earlier note that the bytes were absent was wrong; they were only missing from the repo's listings.
- `PFDTable` is at file vaddr 0x8e36c0, 1600 bytes, 40 rows of 0x28. The generated source is
  `src/pixel_format_table.cpp`. Fields follow the layout in `include/glitch-video/pixel_format.hpp`.
- Decision: the row layout is taken from the header as written. Bytes +0x18..+0x23 are kept as
  `unknown18` and are not read by the helpers.
- The pixel_format rows that were blocked on the table (getPackedType, getFormat, computePitch,
  computeSizeInBytes, computeMipmapSizeInBytes, swapBytes, convert, converters) can now be rerun.

## GL function table (dependency worker)

Evidence: `libDungeonHunter2.so` is ARM32 (EABI5), not stripped. Method: parse `.rel.plt` and the `.plt`
stubs (ARM PLT, 12-byte entries after PLT0, `add ip,pc / add ip,ip / ldr pc,[ip,#]!`), verify each stub's
GOT address against its relocation, then scan every `.text` function (from `.symtab`) for BL/BLX/B into the stubs.

- The original does not use a GL function table. `.dynsym` has no `dlsym` or `eglGetProcAddress`; GL is
  linked directly (92 `gl*` imports). The GOT slot filled by the dynamic linker is the "slot" the original reads.
  The port's `GLFunctionTable` is a test seam, not a copy of the original structure.
- No `R_ARM_ABS32` or `GLOB_DAT` relocation points at a GL symbol, so there is no static GL pointer table.
- glFinish is not imported by the original: the `finish` entry has no address.
- Confirmed slots (PLT stub / GOT slot, verified against .rel.plt):
  glCreateShader 0x30e538 / 0x994d34; glShaderSource 0x30ed84 / 0x994ff8 (called only as a tail branch from
  CGLSLShaderCode::createShader at 0x6df5a0); glCompileShader 0x30e46c / 0x994cf0; glDeleteShader 0x30e628 / 0x994d84;
  glGetShaderiv 0x30ed54 / 0x994fe8; glGetShaderInfoLog 0x30dfbc / 0x994b60; glAttachShader 0x30ebf8 / 0x994f74;
  glLinkProgram 0x30ed78 / 0x994ff4; glGetProgramiv 0x30e28c / 0x994c50; glGetProgramInfoLog 0x30e214 / 0x994c28;
  glGetUniformLocation 0x30e13c / 0x994be0; glGetAttribLocation 0x30e73c / 0x994de0; glGetActiveUniform 0x30e6d0 /
  0x994dbc; glGetActiveAttrib 0x30e01c / 0x994b80; glGetIntegerv 0x30e568 / 0x994d44; glGetFloatv 0x30ec10 / 0x994f7c;
  glHint 0x30e5a4 / 0x994d58; glGetString 0x30e280 / 0x994c4c; glGetError 0x30e1a8 / 0x994c04; glPixelStorei 0x30e16c /
  0x994bf0.
- Existing entries also confirmed by a stub: enable, disable, blendFunc, blendEquation, blendColor, clearColor,
  createProgram, deleteProgram, useProgram, cullFace, depthFunc, depthMask, depthRangef, clearDepthf, frontFace,
  lineWidth, polygonOffset, sampleCoverage, stencilFunc, stencilMask, stencilOp, clearStencil, colorMask, scissor,
  flush, clear.
- Caller addresses (function containing the call, from the BL/B scan):
  glCreateShader at 0x6df584 (CGLSLShaderCode::createShader); glCompileShader at 0x6df3e8 (compileShader);
  glGetShaderiv at 0x6df3fc/0x6df410/0x6df454/0x6df4e4 (compileShader); glGetShaderInfoLog at 0x6df4d4 (compileShader);
  glDeleteShader at 0x6df608/0x6df674 (~CGLSLShaderCode); glGetIntegerv at 0x5b1ad4 (driverInit), 0x5b1c14, 0x5b3be8,
  0x5b3c30; glHint at 0x5b1af8 (driverInit); glGetProgramiv/glGetProgramInfoLog/glLinkProgram/glGetUniformLocation/
  glGetAttribLocation/glGetActiveUniform/glGetActiveAttrib in CGLSLShader::linkProgram (0x6de9f8 range, 0x6dea08-0x6ded84);
  glGetString at 0x5b3b28, 0x5b3bbc, 0x5b469c, 0x5b47a4, 0x5b47b0, 0x5b4b70, 0x6dfa4c (doVersionCheck).
- Signatures: GL ES 2.0 prototypes for the names above. Argument counts were not checked register by register;
  open question for the Hex-Rays pass. Pointer parameters use the GL types as `uint32_t`/`int32_t`/`char`.
- Ledger rows whose GL-entry blocker is now removed (the rows still need their other blockers):
  0x6df3c0 compileShader (info-log path also needs os::Printer), 0x6df560 createShader, 0x6df9f8 doVersionCheck
  (GL side only), 0x5b1ab4 driverInit (also needs initShaderHandler, which is reconstructed at 0x6df9d0),
  0x6de9f8 linkProgram (still needs os::Printer), 0x6def9c compileAndLink, 0x6df5a4 rmRecompileShader (also needs
  createShader and compileShader ported), 0x6df18c rmRegenerateShader (also needs linkProgram).
- Open: CProgrammableGLDriver layout past +0x284 is not addressed here. It is a layout fact, not a GL entry.

## Rerun glitch-video-3 (IShaderManager, CTextureManager, GL texture, render target, pixel_format conversions)

- Reconstructed: SNewBufferAllocator<IVideoDriver>::allocate (include/glitch-video/s_new_buffer_allocator.hpp) and
  CTextureManager::markTextureAsUnloadable (appends to m_textures when absent). Host test: tests/s_new_buffer_allocator_test.cpp.
- Still blocked. The rerun note says SIDedCollection is available, but it lives only in glitch-core-io/include. glitch-video
  deps have no SIDedCollection, IReferenceCounted, os::Printer, or glitch::core process buffer. Most of the 62 rows need one of these.
- Also blocked: no IShaderManager class in the port; no CTexture nested class under CCommonGLDriver<CProgrammableGLDriver>;
  STextureDesc in deps is an empty placeholder (ATC loadTextureHeader and loadImage write its fields); CRenderTargetBase has no
  attachment layout.
- Deferred (no external blocker found): convertPackedImpl specialisations and convertPacked (47 to 129 KB of pseudocode each).

## Slice rerun-glitch-video-4 (61 rows: 1 reconstructed, 2 partial, 58 skipped)

- SVertexAttributeTypeInspection::ValueTypeSize is in the ELF at 0x8e4ca4 (7 bytes: 1 1 2 2 4 4 4). It is now
  defined in src/vertex_streams.cpp, which unblocks copyVertex (partial) and isVertexStreamHomolaced (still blocked).
- isVertexStreamHomolaced and copyVertex whole-vertex branch read CVertexStreams word +0x22 (vertex stride). It is not in
  the port layout; add it to CVertexStreams before those rows can be finished.
- pixel_format convert (0x5f95ac): Hex-Rays header says 115097 bytes against the queue's 13320. Needs its own pass.
- unpackPalettized (0x5ee104): the pseudocode steps the bit position with a right shift by bpp. Check the ARM before use.
- CMaterialVertexAttributeMap (15 rows): all depend on totalMapCount, which reads a CMaterialRenderer technique table.

## rerun-glitch-video-1 (IMaterialParameters matrix accessors, IRenderTarget::setViewport)

- glitch_core.hpp gained glitch::core::CMatrix4<float> (M[16] then flag at +0x40; 68 bytes, the original stride).
- material_parameters.hpp: SParameterEntry (type +0x06, count +0x08, valueOffset +0x0c) and SParameterBlockHeader
  (count +0x0e, entries +0x20). CMaterial reaches its header through the block pointer at +0x04; CMaterialRenderer
  holds it inline. Matrix slots are kept in m_matrixSlots, keyed by the original byte offset of the 4-byte slot.
- 16 matrix rows reconstructed (getParameterDef, getParameter, setParameter and the Cvt forms for CMaterial and
  CMaterialRenderer). Test: tests/material_matrix_parameters_test.cpp.
- detail::getMatrixParameter (0x5ba62c) and setMatrixParameter (0x5badb8) are defined in material_parameters.cpp
  without ledger rows of this slice. Pool is a free list with new in place of boost::pool growth (not recovered).
- IRenderTarget (render_target.hpp, src/render_target.cpp): setViewport clamp reconstructed, partial. Driver hand-off
  (vtable +0x1e8 and driver +0xcc current-target check) not identified.
- Still blocked: CGlobalMaterialParameterManager rows (SIDedCollection), IAttributes serializers, grab/drop/init,
  and the E_SHADER_PARAMETER_VALUE_TYPE dispatchers (need typed getParameter<T>/setParameter<T> in glitch-video).

## Dependency: SIDedCollection (dep-sided)

- Header: include/glitch-video/deps/sid_collection.hpp. It includes the shared layout
  (../shared/include/glitch-shared/sid_collection.hpp, copied from glitch-core-io core/sid_collection.hpp)
  by a relative path, so no -I flag is needed. It exposes glitch::core::detail::SIDedCollection<T, IdType, Flag, Props, Traits>
  (alias) and glitch::core::detail::sidedcollection::SValueTraits. Test: scratch only, $SP/dep-build/sid_deps_test.cpp (passes).
- Confirmed by binary (ARM, symbols and disassembly):
  - ITexture, STextureProperties: size 0x5e83a4, get 0x5e83ac (LSL #3, ASR #3 bound, invalid entry), getProperties 0x5e83e4 / 0x5e83f8 (entry+4, +0x18), ctor 0x5e840c.
  - IShader, SShaderProperties: size 0x5e53d4, get 0x5e539c, getProperties 0x5e53f0, ctor 0x5e5404. Same shape as ITexture.
  - CMaterialRenderer, materialrenderermanager::SProperties: size 0x5d7d78, get 0x5d7d40, getProperties 0x5d7d9c, ctor 0x5d7db0. Same shape.
  - IShaderCode, SEmptyProperties: size 0x6e07c0, get 0x6e0788, getProperties 0x6e0860, ctor 0x6e07d0. Same shape.
  - Global, SShaderParameterDef value entries, globalmaterialparametermanager::SPropeties: size 0x5b9d8c (ldrh +0x26),
    get 0x5b9da0 (bound count = (end-begin)/20 by multiply with 0xCCCCCCCD, element = begin + id*0x14 via MLA),
    getProperties 0x5b9f04 (iterator at +0x10, record at node +0x18), SEntry() 0x5b9fb8, ctor 0x5b9e1c.
- Not confirmed as the shared template: the global instance stores values (SShaderParameterDef), not pointers, so
  SEntry::set/reset (0x5b9fb8 family) and the release path differ from the pointer template. Only its header
  (+0x18 begin, +0x1c end, +0x26 count, iterator +0x10) is confirmed. Needs its own template or a value-traits variant.
- Open questions: the Flag bool (false in every symbol) is not modelled; IdType is fixed to uint16 in the shared template;
  the shared template's namespace is glitch::core::detail::sid_layout, the original name is glitch::core::detail::SIDedCollection
  (the alias above provides the original name); SIdValue+0x18 (int 39) meaning unknown.
- Rows that depended only on the collection shape (still need their owning class, so not fully unblocked):
  CTextureManager 0x3849a0 / 0x384eb4 (partial), CMaterialRendererManager C1 0x5d8f24 (partial),
  CShaderCodeManager C1/C2 0x6e0804 / 0x6e0818 (stand-in), CNullShaderManager::createShader 0x5b9bf4 (stand-in).

## dep-gl-stride: CVertexStreams layout (dependency worker)

- Layout confirmed from pseudocode: refcount +0x00 (allocate 0x5a1270, `++*obj`), attribute mask +0x04, field08 +0x08,
  count0c +0x0c (ctor 0x5a113c arg a4), streamCount +0x0d (ctor a5), flags +0x0e (ctor stores 3), end pointer +0x10
  (= this + 20 + 16 * streamCount), entries from +0x14 at 16 bytes each, trailing block 24 * count0c + 24 bytes after them.
  Allocation size is 20 + 16 * streamCount + 24 * count0c + 24 (0x5a1270 `operator new[]`).
- Entry fields, confirmed by copyVertex 0x5a2b18 and setStream 0x7d46fc: +0x00 buffer, +0x04 offset, +0x08 attribute,
  +0x0a value type (index into ValueTypeSize), +0x0c component count, +0x0e per-vertex stride.
- Stride word +0x22 is entry 0 field0e (entry 0 at +0x14). Read by copyVertex (LDRH r4,[r2,#0x22] at 0x5a2c00) and
  isVertexStreamHomolaced (LDRH [r2,#0xe] at 0x5a2410 after ADD r2,#0x14). The constructor writes it as entry 0 field0e.
  isVertexStreamHomolaced compares only entries 1 and later against it.
- Open: empty table. Constructor with streamCount 0 leaves +0x22 inside the trailing block, and isVertexStreamHomolaced
  dereferences entry 0 with v6 = 0 (null read at 12) when the table is empty. The port's getVertexStride returns 0.
- Open: the port keeps entries in std::vector, so the +0x22 word is not a real memory word here; getVertexStride reads
  entry 0 instead.
- Unblocked (layout only, not implemented here): 0x5a23f4 isVertexStreamHomolaced; 0x5a2b18 copyVertex whole-vertex
  branch (memcpy of stride bytes from base + stride * vertex). Candidate in glitch-core-io: 0x6b58a8 getVertexStreamsStride.

## Dependency pass: IReferenceCounted and CCommonGLDriver template instance (dep worker)

Headers: `shared/include/glitch-shared/reference_counted.hpp` (shared copy, IReferenceCounted),
`include/glitch-video/ccommon_gl_driver_template.hpp` (offsets of the template instance only).
Test: `tests/reference_counted_shared_test.cpp`. Not registered in CMake.

IReferenceCounted (confirmed from pseudocode):
- Vtable (`_ZTVN6glitch17IReferenceCountedE`, 20 bytes): +0x00 D1 (0x31d580, empty), +0x04 D0 deleting dtor
  (0x31fd58: sets base vptr, CustomFree), +0x08 onDelete (0x31d5cc, empty).
- Object: +0x00 vptr, +0x04 counter.
- drop (0x31d584): `if (count-- != 1) return 0;` then onDelete (+0x08), then D0 (+0x04), return 1.
- No constructor symbol. Derived constructors inline the base: store vptr, set +0x04 to 1
  (CMemoryWriteFile C1 0x6b4d04, CPakReader C1 0x57002c). Initial count 1 is confirmed.

CCommonGLDriver template instance (offsets, each from the instance method shown):
- Driver: +0x4c unit count (0x5b28dc, 0x5b5610, 0x5b280c); +0x9c caps word (0x5afd40, 0x5afff0, 0x5b1244,
  0x5b1bd8); +0xf0 last-material pointer (0x5b73e0, type open); +0x1dc frontFace (0x5b1244); +0x254 bound
  buffer per target, index = buffer target byte (0x5b051c, 0x5b2468, 0x5b3a1c, 0x5b6374, 0x5b67b0: array at
  +596 + 4*target); +0x268 active unit (0x5b280c, 0x5b5610); +0x26c unpack alignment (0x5afff0);
  +0x420 texture table, 32-byte rows per type, 4 bytes per unit (0x5b28dc, 0x5b5610); +0x4a0 frontFaceFlip
  (0x5b1244); +0x4a8 float max anisotropy (0x5afd40); +0x4b0 format table, 20-byte rows: +0 internal format,
  +4 format, +8 type (0x5afff0); +0x7ec caps word, bit 0x80000 max level (0x5afd40).
- CBuffer (IBuffer subobject, 0x20 bytes per 0x5b1480): +0x08 data, +0x0c size, +0x10 target, +0x11 usage,
  +0x12 flags, +0x13 map state (count low 5 bits, access bits 5-6; 0x5b3a1c), +0x14 driver, +0x18 GL name,
  +0x1c mapped pointer (0x5b2468 writes 0). Flag bits: 0x02 dirty (mapImpl sets when usage != 4; update clears),
  0x08 bind pending (bindImpl sets, unbind clears with & 0xe7), 0x10 upload failed, 0x20 unmap callback (unmap
  clears with & 0xdf).
- CTexture (ITexture subobject): +0x1c name (log text in 0x5afd40, 0x5afff0), +0x20 width, +0x24 height,
  +0x2c data, +0x30 level sizes (mipCount+1 words, dirty bitmap after them), +0x34 driver, +0x38 packed state
  (type bits 0-1, pixel format bits 4-9, min filter 12-14, mag filter 15-17, wrap S 18-20, wrap T 21-23),
  +0x3e mip count byte, +0x3f flag byte, +0x40 dirty uint16, +0x44 float max aniso, +0x50 float max level
  (GL 0x813d), +0x54 GL name, +0x58 byte passed as updateData's a2 (TexImage2D vs TexSubImage2D).
  Dirty bits: 0x001 data, 0x002 mipmaps, 0x004 min, 0x008 mag, 0x010 wrap S, 0x020 wrap T, 0x040 wrap R,
  0x080 aniso, 0x400 max level. update() calls updateParameters when dirty & 0x1ffc, updateData when dirty & 1.
- CRenderBuffer: +0x18 GL name. CFramebuffer: +0x08 driver (bind), +0x14 attachment block, +0x34 saved
  GL_FRAMEBUFFER_BINDING (ctor, 0x8ca6).

Open questions (not coded):
1. CFramebuffer ctor 0x5b1bd8 reads driver +0x9c but does not store the driver; bind 0x5b1244 reads driver
   from this+0x08. Base CFramebufferBase ctor not read; the store may be in it.
2. CBuffer base ctor signature (driver, target, usage, size, data, flag) is inferred from the cloneImpl call
   site (0x5b1480). Its pseudocode was not read.
3. mapImpl 0x5b3a1c indexes a table named BlendFactorMap at a2+73. Hex-Rays label is suspect; the real
   map-access table is not identified.
4. updateParameters 0x5afd40: the 0x40 (wrap R) branch calls glTexParameteri with 0x2803 (WRAP_T), not 0x8072.
   Left as seen in the pseudocode.
5. Dirty bits 0x100, 0x200, 0x800, 0x1000 are in the 0x1ffc mask but no branch handles them.
6. Max unit count (+0x4c) and the 32-byte row width (8 units?) are not confirmed.
7. Format-table rows: bytes 0x0c..0x13 of each row are not read by these methods; table data is not in the repo.
8. Texture flag byte +0x3f: bits 0x02, 0x08, 0x10 seen, 0x20 unknown; +0x3e meaning (count vs max level) open.
9. Driver vtable slots +0x6c, +0x70, +0xa8, +0x1e8 not named. +0x48 (buffer data) and +0x50 (delete buffer) are
   called with the argument lists shown in 0x5b67b0 and 0x5b051c.
10. DRV::setTexture (used by 0x5b28dc and 0x5b280c) has no address here. ITexture::setData, IBuffer::reset and
    the CBufferBase constructor are also needed by 0x5b5610 and 0x5b67b0.
11. applyRenderStates 0x5b73e0: driver +0xf0 type, the 12-byte technique entry and the 52-byte render-state
    block are not modelled.

Ledger rows that the layout may unblock (the pseudocode they need is read; each still needs its named helper):
- CBuffer: 0x5b051c, 0x5b1480, 0x5b2468, 0x5b3a1c, 0x5b6374, 0x5b67b0 (open: 2 and the IBuffer helpers).
- CTexture: 0x5afd40, 0x5afff0, 0x5b044c (open: question 4 for wrap R; question 5 for unhandled dirty bits);
  0x5b280c, 0x5b28dc (open: DRV::setTexture); 0x5b5610 (open: ITexture::setData).
- CRenderBuffer: 0x5b11ec, 0x5b130c (GL calls only). CFramebuffer: 0x5b1244 and 0x5b1bd8 (open: question 1).
Still blocked: 0x5b73e0 (open: question 11).

## wave2-glitch-video-1 (rerun slice: IMaterialParameters, CFramebuffer, SDrawSetup, ITexture, DDS, CPerFaceLoading)

- ITexture::setData (0x5fdf74) reconstructed in src/texture.cpp. Its a3 sets bit 0 of +0x3f and the body frees the
  old pointer when that bit is set, so bit 0 means "owned". ITexture::map passes 1 for its own new[] buffer, which
  agrees. ITexture::copy (0x5ff26c) reads the same bit as "not owned" (ownsData = (flags & 1) == 0), which looks
  inverted against setData. Not changed here; the copy owner should re-check it.
- Test: tests/texture_setdata_test.cpp (ASan and UBSan clean).
- Still blocked in this slice: the Global and CMaterial/CMaterialRenderer typed dispatchers (need typed templates),
  IAttributes serializers, the type-0x12 release path (Matrix4Pool), the ITexture ctor and map (unnamed vtable slots),
  the DDS loader (STextureDesc placeholder, logf) and CPerFaceLoading.

## wave2-glitch-video-4 (worker findings)

- CMaterialVertexAttributeMap (new: include/glitch-video/material_vertex_attribute_map.hpp, src/material_vertex_attribute_map.cpp):
  +0x00 count, +0x04 renderer (count at renderer +0x00), +0x08 slot array (totalMapCount slots). totalMapCount reads the renderer
  (passed as this): entry = techniques[(byte +0x10) - 1], result = entry count byte (+4) + (entry block list (+8) - renderer block base
  (+0x1c)) / 52. set() uses technique index without the minus one, slot = (block - base) / 52. Both divisions are exact; the
  constants in the binary (991146299 = inverse of -13, 330382100 = 4 * inverse of 13) are these divisions.
- CMaterialRenderer is a stand-in in that header (only +0x00, +0x10, +0x18, +0x1c named) until the class is reconstructed.
- STextureDesc (deps/glitch_video_types.hpp) now names +0x00 type, +0x04 format, +0x08, +0x0c, +0x10 width, +0x14 height,
  +0x18 depth, +0x1c flag byte. Written by the ATC header reader only; the DDS reader uses the same offsets.
- CVertexAttributeMap(streams) one-argument constructor (0x5a0958) is skipped in its own slice. It is now possible with
  makeDefaultAttributeMap. Three CMaterialVertexAttributeMap rows (0x5df59c, 0x5df668, 0x5df624) wait for it.
- isVertexStreamHomolaced (0x5a23f4): the first entry sets the stride, later entries must match. Span check is
  running max + count * ValueTypeSize[type of widest entry] - min <= stride.
- glitch-core-io now has core/shared_string_heap.hpp and core/kd_tree.hpp (added by other workers). glitch-video deps do not
  include them; the sort, string-helper and kd-tree rows still need them brought in.
- Still open in this slice: string helpers (process buffer and ctype bit 0x04 not identified), the three convertPackedImpl
  instantiations (about 50 KB Hex-Rays each), the clustering helpers (vector3d and aabbox3d not in glitch-video deps),
  CGenericBaker (needs the CMaterial parameter layout), and the CTexture nested class under the CCommonGLDriver instance.

## ITexture +0x3f bit 0 (settled from the asm, integrator, 2026-10-12)

- Bit 0 of +0x3f means the data is owned. Evidence: setData (0x5fdf74) branches to `delete[]` when
  bit 0 is set (TST R3,#1 then BL _ZdaPv), and sets the bit from its `owned` argument.
- copy (0x5ff26c) tests bit 0 first; it returns 0 when owned data exists (non-null pointer) and
  otherwise computes the size. The port had the test inverted and was fixed in src/texture.cpp.

## dep-shader-manager: IShaderManager header (dependency worker, 2026-10-12)

Header written: include/glitch-video/shader_manager.hpp (IShaderManager, SShaderProperties). Compile check:
g++ -std=c++17 -Wall -fsyntax-only passes. No row bodies written; no other header changed.

Confirmed (binary evidence):
- Vtable 0x9781e8 (36 bytes, 2 header words + 7 slots). vptr = symbol + 8 (C1 0x5e5704, ADD #8).
  Slots: +0x08 init 0x5e78dc, +0x0c removeUnusedShaders 0x5e67b0, +0x10 clearDriverSpecificResources 0x5e5b2c,
  +0x14 pure in base (createEmptyShader in CNull 0x5b9bb4 and CGLSL 0x6dfd4c), +0x18 createBatchBaker 0x5e562c.
- Object: +0x00 vptr; +0x04 collection (0x28 bytes, entries +0x1c/+0x20/+0x24, next id +0x28, count +0x2a);
  +0x2c driver (init stores it; createShader reads a2+0x2c); +0x30 search-path vector (+0x30/+0x34/+0x38, stride 24);
  +0x3c name std::string (char* data at +0x50); end +0x54 = ICodeShaderManager::m_shaderCodes (ctor 0x6e0ca4, this+84).
  Evidence: C1 listing 0x5e5704 (STR #0x38, #0x2c, #0x30, #0x34, string at R4+#0x3C), dtor 0x5e67c4, init 0x5e78dc,
  loadShader 0x5e72bc (search-path char* at element +0x14), addShader(ptr) 0x5e7298 (name = IShader+0x20).
- Collection entries: stride 8 (value at +0, node pointer at +4), getBatchBaker 0x5e4798 and createShader 0x5b9bf4.
- Batch baker cache: SIdValue+0x00 (node+0x18) of the IShader instance, read by 0x5e4798, cleared by 0x5e4878.
- createBatchBaker 0x5e562c: the receiver (a2) is unused; the shader is a3; new 0x18-byte CGenericBaker, refcount at +4.
- ICodeShaderManager ctor 0x6e0ca4 calls IShaderManager::IShaderManager; CShaderCodeManager collection at +0x54;
  +0x7c = 0, +0x80 = -1.

Open questions (not coded as fact):
1. Node id position differs per instance. IShader getId 0x5d85d0 reads node+0x1c (LDRH [R5,#0x1c]) and the IShader
   SIdValue ctors 0x5e5490/0x5e54a0 store the id at SIdValue+0x04 (node+0x1c). IShaderCode getId 0x6e1ab4 reads
   node+0x18. ITexture getId 0x5e8ed8 reads node+0x34. deps/sid_collection.hpp hard-codes SIdValue+0x1c (ITexture),
   so the shared template does not match the shader instances. Shared owner must decide (per-instance SIdValue).
   Only node internals depend on it; the entry layout, nextId and count are the same.
2. IShader must derive from glitch::IReferenceCounted (vtable +0x08 onDelete, count at +0x04) for the
   SIDedCollection traits (addRef/release use referenceCounter and drop). The port's IShader in shader_attributes.hpp
   does not derive from it yet.
3. Pure slot +0x14 of IShaderManager: the name createEmptyShader is inferred from the two derived vtables; the
   clearDriverSpecificResources row calls IShader vtable +0x14 (null in the IShader dump; the derived class supplies it).
   CNullShader::releaseDriverSpecificResources (0x6e0554) is a candidate, not confirmed.
4. clearDriverSpecificResources returns int in the pseudocode; the value is the last virtual call's result (treated as void).
5. addShaderSearchPath(path, bool): the flag selects the insertion point; flag set inserts at the front (inferred from the
   _M_fill_insert_aux at begin). Name kept as atFront; confirm before relying on it.
6. The base return type of getBatchBaker and createBatchBaker: the pseudocode stores a plain pointer; CGenericBaker is the
   concrete type from the new call; the base type name (IBatchBaker) is not confirmed.
7. CNullShaderManager must derive from IShaderManager and return boost::intrusive_ptr<IShader> from createEmptyShader to
   override the pure slot (the current null_shader_manager.hpp stand-in returns intrusive_ptr<CNullShader>, which would
   not override). Change belongs to the owner of null_shader_manager.hpp.

Rows this header unblocks (addresses; bodies still to write):
- IShaderManager: 0x5e4798 getBatchBaker, 0x5e4878 removeBatchBaker, 0x5e562c createBatchBaker, 0x5e5704 C1,
  0x5e5770 C2, 0x5e59ac serializeShader, 0x5e5b2c clearDriverSpecificResources, 0x5e67b0 removeUnusedShaders,
  0x5e67c4 D1, 0x5e683c D2, 0x5e6820 D0, 0x5e7298 addShader(ptr), 0x5e72bc loadShader, 0x5e7510 addShader(name),
  0x5e771c addShaderSearchPath, 0x5e78dc init. Sixteen rows; twelve carry the "blocked: IShaderManager" note.
- CNullShaderManager: 0x5b9bf4 createShader (needs the base and item 7), 0x5b9b80 D1, 0x5b9cf0 D0 thunk, 0x5b9cec thunk.
- ICodeShaderManager base calls: 0x6e0ca4 / 0x6e0cf0 ctors, 0x6e176c / 0x6e17d8 dtors, 0x6e2034 removeUnusedShaders.
- CShaderCodeManager ctors 0x6e0804 / 0x6e0818 and dtors 0x6e1758 / 0x6e1828 (layout confirmed; still stand-in members).
- IShader::getBatchBaker 0x5e4998 and IShader::removeBatchBaker 0x5e49b8 (forward to the manager).

## Dependency: typed IMaterialParameters accessors (dep worker)

Header: include/glitch-video/material_parameters_typed.hpp (declarations only, no row bodies).

Confirmed (binary):
- Value-type switch in the setParameter dispatcher 0x5c57b0 and the other seven dispatchers of each owner (24 total, checked case by case against their callee names): 1 int, 2-4 vector2/3/4d<int>, 5 float, 6-8 vector2/3/4d<float>, 11 CMatrix4<float> (non-template), 12-15 intrusive_ptr<ITexture>, 16 SColor, 17 SColorf, 18 intrusive_ptr<CLight>. Codes 9, 10 and outside 1..18 return 0. ARM jump table at 0x5c57c0 indexes with type - 1.
- Each owner has exactly one instance per (family, value type, form): 4 families (get, set, getCvt, setCvt) x 12 types x 2 forms (pointer+count, index+reference). 288 addresses in total; every address in the header comments was checked against queue.csv.

Open:
- Enumerator names of E_SHADER_PARAMETER_VALUE_TYPE are port names (values are confirmed).
- Semantics of the Cvt families are not read; the header declares them only.
- IMaterialParameters must derive from IMaterialParametersTyped<Derived> and add using-declarations (see the header). Not done here.
- vector2d and vector3d were added to deps/glitch_core.hpp as layout only (no getAngle or normalize from shared/glitch_core.hpp).
- SIsValidSetMaterialParamaterOverload is a std::false_type trait with 12 true specialisations (the mangled name shows it guards both get and set).

## dep-material-renderer-manager layout (wave 3, dependency worker)

Header: include/glitch-video/material_renderer_manager_layout.hpp (constants only, each with its address).
Test: tests/material_renderer_manager_layout_test.cpp (static_asserts; built with g++ into the scratch dir, passes).
Existing material_renderer_manager.hpp/.cpp and pink_bind_test.cpp are unchanged and still pass.

Confirmed from pseudocode and listing (ctor 0x5d8f24, SCreationState ctor 0x5d7c5c, makeTechnique 0x5dc824,
addRenderPass 0x5d93e8, SCreationState dtor 0x5dafe8, endTechnique 0x5dd664, endMaterialRenderer 0x5dddb4):
- Manager: driver +0x28; uint16 id table +0x2c[17] (ctor memset 0x22 bytes); name maps A +0x50 and B +0x68 (24-byte
  headers, count +0x60 / +0x78; getNameID 0x5dbb60 indexes this + 24*a3 + 80); creation state +0x90; current renderer
  id +0x94 (-1 when none; beginMR 0x5ddaec sets it, endMR resets it).
- Instance table: entries at +0x18/+0x1c, stride 8 (renderer pointer, node iterator). Props at node +0x18: default
  CMaterial* at +0x00, material type u16 at +0x08 (createMR writes node +0x20), renderer id u16 at +0x0a (node +0x22:
  read by getId 0x5d98c4 and clearUnusedInstances 0x5d9e94).
- Creation state S (0x58 bytes): name +0x00, in-progress technique SSharedString +0x04, technique list sentinel +0x08,
  pending pass list sentinel +0x10, pass cursor +0x18, holder list sentinel +0x1c, pass count u8 +0x24, technique
  count u8 +0x25 (max 0x20), pink list +0x28 with cursor +0x30, parameter map header +0x34 (count +0x44),
  binding total +0x54.
- Technique node (0x14): next/prev, STechnique at +0x08 = name +0x00, pass count u8 +0x0c, pass array pointer +0x10.
  Pass array elements are 52-byte SRenderPass (stride 52).
- Pending pass node (0x3c): next/prev, SRenderPass at +0x08. SRenderPass: 8 words +0x00..+0x1f copied from the
  state argument, IShader* +0x20 (refcount at +4), binding table pointer +0x24 (8-byte entries), +0x28 u32, +0x2c u16,
  +0x2e u16, +0x30 u8 (1 at creation).
- Holder node (0x0c): next/prev, pass array pointer +0x08 (released by the dtor).
- Pink node (0x10): next/prev, id +0x08, flag u8 +0x0c (pass index = count - 1), value u16 +0x0e.
- Parameter map node: key SSharedString +0x10, value SParameterDef inline at +0x14 (size not recovered).

Open questions (not coded as fact):
1. Renderer id offset conflict. The shared SIDedCollection template puts the id at SIdValue +0x1c (node +0x34). For the
   CMaterialRenderer collection, getId and clearUnusedInstances read node +0x22. The write site (node construction in
   the insert path 0x5dc548) is not read yet. The shared template must not be changed for the other instances until
   this is settled. The layout header uses +0x22.
2. Refcount offset. clearUnusedInstance (0x5d9db8), createMaterialInstance (0x5d9af0) and getMaterialInstance
   (0x5dd0e4) read and write the CMaterialRenderer / CMaterial count at +0x00. addRenderPass and makeTechnique use +4
   for IShader. Which base class holds the count for CMaterial and CMaterialRenderer is not confirmed.
3. Pass cursor (+0x18): the reuse branch is read, the append branch in addRenderPass lines 126-215 is only partly read.
4. The 8 words copied into SRenderPass (+0x00..+0x1f) come from the third argument of SCreationState::addRenderPass.
   The symbol has a fourth argument (material SRenderState) that the pseudocode does not show. Which renderpass state
   type this is, and where the material state goes, is open.
5. The binding table count (pass +0x24, 8 * n bytes): n is computed from IShader fields at +44, +46, +52, +54
   (addRenderPass). Those IShader fields are in the IShader category, not confirmed here.
6. Unknown fields: manager +0x80, +0x84, +0x88, +0x8c; S +0x48, +0x4c, +0x50; S +0x0d (technique node) and the pass
   +0x28, +0x2c, +0x2e words.
7. Which name map is used for which name: getNameID with a3 = 0 (+0x50) or a3 = 1 (+0x68). Callers are not read.
8. The existing SCreationState in material_renderer_manager.hpp: m_pinkCounter24 is the pass count (addRenderPass
   increments +0x24, makeTechnique copies it), and m_inProgress04 is an SSharedString pointer, not a bool. The
   names are kept for now because pink_bind_test depends on them. A rename is a follow-up for the category owner.
9. State size 0x58 comes from the constant passed by beginMaterialRenderer (printed as dword_58). Not checked against
   the allocator's signature.

Rows the layout unblocks (addresses; bodies not written in this slice):
- Layout alone (the body names only the layout and CMaterial refcount, see question 2): 0x5d9db8 clearUnusedInstance,
  0x5d9e94 clearUnusedInstances (after 0x5d9db8).
- Layout plus SSharedString / SData get and release (not in port yet): 0x5dbac0 findTechnique, 0x5dbb48 getTechniqueID,
  0x5dbb60 getNameID, 0x5dbc04 getParameterIDInternal (also needs the SSharedString compare), 0x5dc824 makeTechnique,
  0x5dd80c beginTechnique, 0x5ddaec beginMaterialRenderer (also process-buffer helpers), 0x5dcf2c addRenderPass (the
  else branch calls createPinkWireFrameRenderPass, still blocked).
- Not in the ledger but unblocked by the layout: SCreationState::addRenderPass 0x5d93e8 (5833 bytes).
- Still blocked by other categories: 0x5d8b28 (collada), 0x5d9af0 and 0x5dd0e4 (CMaterial::allocate), 0x5d9bd8 and
  0x5dcf90 and 0x5dd088 (shader manager at driver +0xd8), 0x5dca40 (SParameterDef and the parameter map insert), 0x5dcd64
  (needs addParameter), 0x5dcdd4 and 0x5ddac0 and 0x5ddd28 (pink shader and render pass), 0x5da160 and the four other
  bind rows (0x5da5a0, 0x5da6f0, 0x5da83c, 0x631bc4) (shader parameter and global parameter tables), 0x5dd250
  (global parameter manager), 0x5dd664 and 0x5dddb4 (need autoAddAndBindParameter and bindParameter), 0x5dad20 (batch
  baker), 0x5dc71c and 0x5dc7cc (IReadFile and collada), 0x631b58 (needs getParameterIDInternal).
- Total: 33 blocked rows in the ledger with the "blocked:" note in glitch-video. 2 unblocked alone, 8 unblocked with the
  SSharedString helpers, 23 still blocked by other categories.

Shared files: none changed. The header is glitch-video only. The shared SIDedCollection template (question 1) is the one
place another category could be affected once that question is settled.

## pixel_format convert family (dep worker, table-driven)

Files: include/glitch-video/pixel_format_convert.hpp, src/pixel_format_convert.cpp, tests/pixel_format_convert_test.cpp.
Build check: g++ -std=c++17 -I include -I ../shared/include -I ../glitch-core-io/include (the shared include for
glitch-shared/glitch_core.hpp, the core one for the process_buffer.hpp that copy's in-place flip uses; the test also
needs src/pixel_format.cpp, src/pixel_format_table.cpp and ../glitch-core-io/src/process_buffer_heap.cpp).

Confirmed from the listing (addresses are the Hex-Rays and ARM listing):
- Row fields: unk18[0..3] are channel widths R,G,B,A (+0x18..+0x1b); unk18[4..7] are channel shifts (+0x1c..+0x1f);
  key words +0x04..+0x13 are the channel masks. Flag bit 0 = alpha present, bit 2 = luminance, bit 3 = compressed,
  bit 1 = the flag-2 switch, bit 6 = getPackedType returns the raw packedType.
- getPackedType(row) for the rows used: row 5, 6, 8 = 1 (flag 0x40 or field17 2); row 0, 2 = 0 (field17 1);
  row 12, 14 = 2 (field17 4). The convertPacked key is getPackedType(dst) | 4 * getPackedType(src).
- convertPacked (0x5f4fe8) arms: key 0 -> convertPackedImpl<uchar> (0x5f2fdc), key 5 -> <ushort> (0x5f0f60),
  key 0xA -> <uint> (0x5eeef4). Arms 1, 2, 4, 6, 8, 9 are inline in 0x5f4fe8 (lines 744-3424) and are not modelled.
- Converter widths and shifts per channel (ctors 0x5ee958, 0x5ee5e8, 0x5ee790, same first loop):
  reduction (src bits > dst bits): right shift = ss + sb - db, left = ds.
  expansion up to 2x (sb < db <= 2 sb): right = ss, left = ds + db - sb.
  expansion above 2x: right = ss, left = ds, lookup through the table (1/2/4-bit only; null otherwise).
- Replication (SPackedConverter<1,0>, per-pixel 0x5eeef4 near line 700): RGB term is
  ((x & K) >> ss << ls) | ((x & K2) >> (ss + t) << ds) with t = 2 sb - db and K2 = K & (K << t); alpha is the
  unmasked x >> ss << ls with no second term.
- LUT tables (bytes at 0x8e3694, 0x8e3698, 0x8e36a0): entry i = i * (0xffff / (2^bits - 1)).
- Alpha fill: dst has alpha flag and src does not -> dst alpha mask ORed in (ctor: "(dst flags & 1) == 0 || (src flags & 1)
  ? 0 : -1", then & dst key 3).
- Dispatch in convertPackedImpl (0x5eeef4): line 315 green test (gs != 0, gd != 0, gs < gd); 319 LUT when gd > 2 gs;
  448 alpha test (dst alpha, src alpha or dst alpha when src is 0, less than dst); 820 alpha test for SPackedConverter<0,2>.

Modelled and checked (four pairs, checked by hand against the listing above, not run as ARM code; no ARM emulator here):
- L8 (row 0) -> A8 (row 2), key 0: fill only. Test: convert_test check 1.
- RGB565 (row 5) -> ARGB4444 (row 6), key 5: reductions and fill. Check 2, plus flip.
- ARGB4444 (row 6) -> RGB565 (row 5), key 5: green upscale to 2x with replication. Check 3, plus in-place.
- A1R5G5B5 (row 8) -> ARGB4444 (row 6), key 5: alpha LUT (0x8e3694). Check 4.

Rows (partial; the parts not covered are listed in the header comment):
- 0x5f95ac convert: covered: the packed-to-packed branch, the srcFormat == dstFormat copy() branch (0x5ee40c,
  below) and the LUMINANCE ARM (0x5f9670..0x5f9950, see the block below). Not covered: the same-type switch of the
  packed dispatch (0x5f9778), compressed source (decompress 0x5fd894, not in this category: it needs
  PVRTCDecompress) and destination, the 0x5f9ebc arm (source 10/11 with a destination +0x17 of 2, 3 or 4), and the
  inline packed arms convertPacked refuses (keys 1, 2, 4, 6, 8, 9). The flag-2 refusal is modelled; note that it is
  reached from the 0x5f9778 path (0x5f96d4), not from the luminance side, so the earlier notes had it in the wrong
  arm.
- LUMINANCE ARM (r3b pass): the arm runs when the destination row has flag 0x4 and the source row does not
  (0x5f9654/0x5f9664). Its switch key is 4 * (destination byte +0x17) + (source byte +0x17); with the shipped table
  only rows 0 (L8) and 1 (L16) carry flag 0x4 and both have +0x17 == 1, so the keys that can occur are 0, 1, 3 and 4
  (the source +0x17). Cases 0 and 4 write one byte per pixel (the weighted sum scaled by 255, case 4 reading a
  32-bit source word); cases 1, 5 and 9 write a 16-bit value scaled by 65535; case 8 writes luminance then alpha;
  cases 2, 3, 6 and the default log "conversion to luminance from float format not implemented yet" and return 0.
  0x5edca4 (the converter ctor) was read instruction by instruction: built from the SOURCE row, the running +1 byte
  cursor at +0x18 reads the channel shifts, so +0x18..+0x1a are the R/G/B widths and +0x1b the alpha width while
  +0x1c + i are the channel shifts; the weights are 0.3/0.59/0.11 divided by (key[i] >> shift[i]), and +0x24 is
  (alphaMask >> alphaShift) when the row has no alpha flag and 0 when it has. The per-pixel destination step comes
  from the SOURCE row's alpha flag (two bytes for the luminance/alpha pairs, one otherwise). Measured with a scratch
  harness: row 12 (32-bit RGBA8888, key 4) -> row 0 gives 0xff for white and 0x00 for black, row 12 -> row 1 gives
  0xff, row 14 -> row 0 gives 0xff, row 10 (24-bit, key 3) returns 0 and leaves the destination alone.
- 0x5ee40c (anonymous namespace) copy: reconstructed from its listing (Hex-Rays chunk_032.c:20938) and called by
  convert's srcFormat == dstFormat branch. Compressed row + flip logs and returns 0; rows = height / row byte +0x25;
  pitch = computePitch(format, width); src == dst is the no-op (no flip), the different-pitch refusal, or the in-place
  row swap through one glitch::core::allocProcessBuffer row with the heap-excess flag saved/set/restored; src != dst is
  the flip (destination starts at the last row, step -dstPitch) or one memcpy of rows * pitch when the pitch equals
  both sides, else one memcpy per row. Deps now used: glitch-core-io/core/process_buffer.hpp and deps/os_logging.hpp
  (both already used by glitch-video/src/material.cpp). Deviations in the source comment: blockHeight 0 (format 39)
  copies no rows where the ARM helper's divide-by-zero gives 0, the rows == 0 flip pointer adjustment is skipped, and
  a null process-buffer block returns 0 instead of faulting. Mangled spelling as for the 13 image.cpp
  anonymous-namespace siblings: the emitted symbol is _ZN...12_GLOBAL__N_1L4copyEiPKvjPvjjjb (GCC internal-linkage
  tag, E_PIXEL_FORMAT is the int32_t alias), not the original spelling without the L.
- 0x5f4fe8 convertPacked: covered: arms 0, 5, 0xA through the generic plan. Not covered: arms 1, 2, 4, 6, 8, 9.
- 0x5eeef4 convertPackedImpl<uint,uint>: covered: the green-upscale replication path, the alpha-LUT path, the plain
  reduction path, the in-place and flip loops (lines 374-560, 1043-1060 by the listing). Not covered: alpha upscale at
  448-568 (SAlphaUpscale), 569-663 (SAlphaIndexed), the line 1158 plain branch for expansions in non-green rows, the
  line 822 sub-branch (see open question 2). The uint body was read for the formulas only; the loops were not compared line by line.
- 0x5f0f60 convertPackedImpl<ushort,ushort>: partial. Same template as 0x5eeef4, dispatch assumed identical; not read
  separately. Covered by check 2 to 4 only through the convertPacked key 5 arm.
- 0x5f2fdc convertPackedImpl<uchar,uchar>: partial. Dispatch assumed identical; covered only by check 1 (key 0 arm).

Open questions:
1. Alpha in the LUT-all converter (SRGBIndexed, 0x5ee790) is written unmasked in the listing (x >> ss << ls, then the dst
   mask). Bits above the source alpha field can enter the destination alpha for alpha widths above 2x. Mirrored as listed,
   not tested.
2. Line 822 of 0x5eeef4 tests src alpha >= 2 * dst alpha inside a branch that already requires src alpha < dst alpha. The
   sub-branch looks unreachable. Not modelled.
3. The alpha-upscale converter types (SAlphaUpscalePackedConverter 0x5edfd4, SAlphaIndexed 0x5ededc) are still blocked; see
   the ledger rows that mention them.
4. convert returns int here; the listing returns int too (r0). Printer::log is ported (deps/os_logging.hpp) and is now
   called by copy; convert itself still drops the "Compressed destination format not supported" log because the format
   name it prints comes from getStringsInternal (0x5ed944, not in port).
5. copy (0x5ee40c) was added in the r3b pass; see its row above. The CImage rows that were blocked only on convert's
   copy branch are 0x601b10 / 0x601c24 (sub-image constructor, now measured in tests/image_fill_test.cpp) and
   0x60177c / 0x600708 / 0x60090c. All three are now RECONSTRUCTED: the inverted direction in image.cpp's copyTo
   (the intrusive_ptr argument is the DESTINATION and `this` is the pixel SOURCE, proved by the const void* source /
   void* destination arguments of the convert call at 0x600880 and by 0x60177c passing target->m_data as
   copyToScaling's destination buffer) has been turned around, the clip arithmetic now follows the listing's nested
   position.X + (clipLeft - position.X) form, and 0x60090c's read rectangle comes from this image's own
   m_width/m_height (LDR LR,[R0,#0x14] / LDR R4,[R0,#0x10] at 0x600910/0x600914). New coverage:
   tests/image_copyto_test.cpp; it fails on the old inverted body on 9 of its checks.

## wave4-glitch-video-2 (C2DDriver forwarders, ITexture attribute serializers)
- IVideoDriver vtable slots (tools/decomp_vtable.py glitch::video::IVideoDriver): +0x2c draw2DLine(pos const&, pos const&, SColor),
  +0x34 draw2DRectangle(rect, rect, SColor const*, rect const*) (pure in the base), +0x58 draw, +0x1f8 createBinding, +0x214 onShaderDestroyed.
  video_driver.hpp does not declare these yet, so the C2DDriver static forwarders stay blocked.
- C2DDriver forwarders: the static overloads take IVideoDriver*; the member overloads are reached through driver+0xd4 then +0x14
  (asm: LDR R1,[R1,#0xD4]; LDR R1,[R1,#0x14]). The owner of +0xd4 is not identified.
- IAttributes slots used by ITexture serializers (confirmed by the scene recon stand-in and the decompile): push +0x30, pop +0x3c,
  addInt +0x4c, getInt +0x58, addFloat +0x64, getFloat +0x70, addString +0x7c, getString +0x84, addBool +0xd8, getBool +0xe4,
  addEnum +0xf4, getEnum +0x100 (name, literals).
- ITexture::deserializeAttributes Wrap R: the change test compares against bits 21-23 (the Wrap T field) but writes bits 24-26.
  Reproduce this as written when the body is ported; it looks like an original bug.

## Wave 4 glitch-video 1a (IMaterialParameters, CGlobalMaterialParameterManager typed rows)

Files: glitch-video/include/glitch-video/material_parameters_part_1a.hpp, glitch-video/src/material_parameters_part_1a.cpp,
glitch-video/tests/material_parameters_part_1a_test.cpp. Rows 0x5be68c..0x5c41d0 (75): 64 reconstructed, 11 skipped (blocked).

- Layout from the listings: the global table entry is 20 bytes (ref at +0, type byte at +6, count at +8, value offset at +0xc),
  stride 20 from the table at a1[6]; entry count = (a1[7]-a1[6])/20; value buffer at a1[11]. glitch-core-io's SShaderParameterDef
  is 16 bytes and does not match these listings; its global-table entries should use the 20-byte record.
- The pointer forms' 4th argument is a byte stride (the loops do `a += stride`), not a count. The typed header
  (material_parameters_typed.hpp) names it `count`; the .cpp follows the listing. Stride 0 or the element size is the memcpy path.
- Index forms of the Cvt family do not add the index to the offset (they read or write element 0). Kept as listed.
- getParameterCvt<int> (pointer form) passes the gate for a float entry and writes nothing (listing ends with "if type != 1 return 1").
- setParameterCvt<int>/<float> convert across int and float (code 1 and 5) in both directions.
- Blocked (skipped): intrusive_ptr rows 0x5bf7dc, 0x5beaa4, 0x5c2198, 0x5c24d8, 0x5c3f40 and 0x5be68c (4-byte slots and
  reference counts, CLight release through Matrix4Pool); setArrayParameter callers 0x5c0c94 and 0x5c0bd4 (helper 0x5bb7ec is
  skipped); setParameterElement 0x5beb84, 0x5becc4, 0x5c0aa8 (ValueTypeBaseType and ValueTypeArraySize tables not in port).
- The 0x5c41d0 listing prints its return type as a pointer (result is 1 or nullptr); written as int 1/0 like the rest.

## wave4-glitch-video-1b (75 rows: IMaterialParameters accessors, owners G and M)
Files: include/glitch-video/material_parameters_part_1b.hpp, src/material_parameters_part_1b.cpp,
tests/material_parameters_part_1b_test.cpp (host test passes; g++ -std=c++17 -Wall with -Iglitch-video/include -Ishared/include).
Result: 67 reconstructed, 8 partial. Partial: ITexture 0x5c48a0 and 0x5c4fa8 (need hooks textureAddRef,
textureDrop, textureStateWord at +0x38); CLight 0x5c5be0, 0x5c5a40, 0x5c58ec, 0x5c518c, 0x5c540c, 0x5c568c (need hook
destroyLight for the last-reference path: Matrix4Pool push and LC_API_FREE).
Facts confirmed from the listing: Convertions = 19 words at ELF 0x8e2c58 (read from the binary); byte to float uses
0x3B808081 (asm 0x5c7954); float to byte uses 0x437F0000 then __aeabi_f2uiz (asm 0x5c77c8).
Quirks kept as in the original: the Cvt forms store or read element 0 (index only checked against the count); the M
Cvt getters read element 0 too; the M pointer getter for int copies code 1 only (float stored: no write); the pointer
forms with stride 0 copy only when the stored type is the accessor's own type; the M setters set the dirty markers
to -1 when a value changes.
Port deviation: a stored pointer takes sizeof(void*) bytes (original 4). Owners that allocate these value buffers must
size the pointer slots accordingly. Bounds guards return 0 where the original would read past the buffer.

## wave4-glitch-video-1d (typed CMaterialRenderer accessors, 73 rows: 56 reconstructed, 1 partial, 16 blocked)

Files: include/glitch-video/material_parameters_part_d.hpp, src/material_parameters_part_d.cpp, tests/material_parameters_part_d_test.cpp (passes, ASan and UBSan clean).
The owner is IMaterialParameters<CMaterialRenderer>. Its table is count (uint16) at +0x0e, entries at +0x20 and the value buffer at +0x24. The class in material_parameters.hpp has no value buffer, so the rows are free functions over SRendererValueTable in namespace glitch::video::detail::rparams. The integrator forwards the class members to them.

Confirmed from the pseudocode (addresses in the rows):
- The 4th argument of the pointer forms is a BYTE STRIDE (0 means contiguous), not an element count as the typed header comment says. Element k goes to base + k*stride.
- Pointer Cvt forms: the memcpy path is taken only for the code the function is built for (e.g. 5d0c64 for code 8, 5d086c for code 17, 5d0a3c for code 16). Any other stored code with stride 0 writes nothing and returns 1.
- Index Cvt forms check index < entry count but read the first element (the index is not added to the offset), for 5d0078 to 5d0734.
- Element setters: uchar 5d404c writes at valueOffset + index + element (bytes); int 5d4154 and float 5d425c write at valueOffset + 4*(element + index). Kept literal.
- Type tables read from the binary (symbols.csv addresses): Convertions 0x8e2c58, ValueTypeBaseType 0x8e2bf8 (19 words), ValueTypeArraySize 0x8e2bc4 (19 bytes). BaseType for codes 12..15 is 0xc..0xf and for code 18 is 0x12, so the port helper in glitch-core-io (returns 0xFF there) differs. The uchar element setter accepts codes 0 and 16 only, so its matrix branch is unreachable.
- Byte-to-float scale is bits 0x3b808081 (1/255), as in the glitch-core-io note. Float-to-byte is (unsigned)(float)(v*255.0) truncated.

Open or deviating:
- 5d425c (partial): the type 11 matrix branch keeps the CMatrix4 in a side map keyed by valueOffset (the original stores a pointer in the 4-byte slot) and uses new in place of GlitchAlloc (0x44). Pool not recovered.
- Codes at or above 19 are refused (the original reads past the tables).
- Intrusive pointer rows (16) are blocked: CLight release is inlined with Matrix4Pool and LC_API_FREE_0; intrusive_ptr<CLight> operator= (0x5bb650) is partial; ITexture rows need IReferenceCounted::drop (0x31d584) and a decided host slot width for 4-byte ARM pointers; 5d57e4 and 5d599c call setArrayParameter (0x5bb7ec), which is skipped.

## u1-video (engine unification wave, 2026-10-13)

Map: reports/decomp-reconstruction/unification/video.json (every stand-in of the video types in every category). Ledger rows: ledger.d/u1-video.csv.

Canonical definitions now in include/glitch-video: video_types.hpp (aliases, forward declarations, STextureDesc), video_driver.hpp (IVideoDriver, 134 slots in order, with IFramebuffer), null_driver.hpp (CNullDriver, 138 slots, every one `override`), texture.hpp, buffer.hpp, vertex_streams.hpp, primitive_stream.hpp, light.hpp, material.hpp, material_renderer.hpp, shader_attributes.hpp (IShader), shader_code.hpp, render_target.hpp (IRenderTarget, IMultipleRenderTarget, IRenderBuffer), batch_baker.hpp, driver_binding.hpp, image.hpp, texture_loaders.hpp / image_loaders.hpp (IImageLoader, IImageWriter and the concrete loaders and writers derive from them), texture_manager.hpp, video_mode_list.hpp, c2d_driver.hpp, global_parameter_manager.hpp, unreconstructed.hpp.

Rules applied:
- boost::intrusive_ptr is the counting one (glitch-core-io/boost/intrusive_ptr.hpp); glitch::IReferenceCounted is glitch-core-io/core/reference_counted.hpp. deps/intrusive_ptr.hpp, deps/glitch_video_types.hpp and deps/os_logging.hpp only forward.
- IReferenceCounted-derived: ITexture, IBuffer, IShader, IShaderCode, IRenderTarget, IRenderBuffer, IImageLoader, IImageWriter, IBatchBaker, CImage, IVideoModeList, C2DDriver (the stand-in version was not; the vtable 0x9770c0 is the destructor pair and onDelete), IVideoDriver. Count at +0x00, no vtable, own ADL add_ref / release: CMaterial, CMaterialRenderer, CVertexStreams, CLight, CVertexAttributeMap, CMaterialVertexAttributeMap.
- Born with count 0, so wrapped with intrusive_ptr<T>(p, true): ITexture, IBuffer, IShader, IShaderCode, IRenderTarget, CImage (the real constructors), CVertexStreams, CMaterial, CLight (allocate adds the first use). Born with count 1 (wrap with intrusive_ptr<T>(p)): IVideoDriver, the image loaders and writers, C2DDriver, CVideoModeList.
- ITexture, IBuffer, IShaderCode, IImageWriter and ITextureDataLoading are abstract (their pure slots are named from the CNullDriver / loader overrides). tests/video_test_types.hpp holds the concrete doubles (TestTexture, TestBuffer, TestShader, TestShaderCode, TestImageWriter, TestTextureDataLoading). A stack object that a pointer wraps needs a use of its own (TestTexture and TestBuffer start at 1; wrap them with intrusive_ptr<T>(&x, true)).
- Slots whose body is not reconstructed stop in detail::unreconstructed(name, address) (src/unreconstructed.cpp) so the vtables link; they have no ledger row of their own.

Facts found while checking the listings (not in the earlier headers):
- CTextureManager (no vtable; SIDedCollection base +0x00..+0x27): driver +0x28, file system (intrusive, from the device +0x34) +0x2c, image loaders vector +0x30, writers vector +0x3c (raw pointers in the original, one explicit use each), placeholders +0x48..+0x64, textures vector +0x68, a word 67 at +0x74. addExternalImageLoader grabs the loader by hand and copies it into the vector (two uses); the destructor drops both.
- CMeshBuffer (scene): +0x14 is an intrusive_ptr<CVertexStreams>, +0x18..+0x2f is an embedded CPrimitiveStream.
- CPrimitiveStream: indexType 0xff means no index buffer; +0x0c / +0x10 are VertexStart / VertexEnd.
- IDevice::getVideoModeList() returns this + 0x3c: the device embeds a CVideoModeList by value.
- CImageLoaderJPG's libjpeg callbacks are static (cinfo is the first argument).
- IBuffer::clone with an owning source produces a clone that claims the same pointer (cloneImpl passes the owns bit, copy() then refuses): the original does the same; the test clones a non-owning buffer.

Open (see the StructuredOutput of the wave): the GL driver family (CCommonGLDriverBase / CCommonGLDriver / CProgrammableGLDriver and the nested CTextureBase, CFramebufferBase, CRenderTargetBase) is still a port-layer class tree that does not derive from IVideoDriver / ITexture / IRenderTarget; the shader manager family (IShaderManager, ICodeShaderManager, CNullShaderManager, CGLSLShaderManager) is not one hierarchy; CBatchDriver, CGLSLShaderManager and the CMaterialRendererManager queue rows have no declarations for all their functions; six tests (material_vertex_attribute_map, primitive_buffer, texture_state, vertex_attribute_map, vertex_stream_state, vertex_streams_build) link only against the video library alone until glitch-core-io drops its IBuffer / CVertexStreams stand-ins.

## u2-glitch-video (engine unification wave U2, 2026-10-13)

Map rows applied (reports/decomp-reconstruction/unification/core.json and scene.json; video.json has no row in this category). Ledger rows: ledger.d/u2-glitch-video.csv.

- deps/glitch_io.hpp (the IReadFile stand-in) is deleted. image_loaders.hpp, texture_loaders.hpp and src/tb_video-glitch_video-0.cpp include glitch-core-io/io/interfaces.hpp. Renamed: getFileNameText -> getFileName. Changed signatures: getSize and getPos return long, seek takes long (the binary's types). The placeholder slots (unidentifiedBaseSlot and the others) are gone; no code in the category called them except the ITextureDataSource slots, which are a different class.
- tests: each IReadFile fake derives from glitch::video::test::StubReadFile (tests/read_file_stub.hpp), which implements the canonical pure slots with the inert answers (size 0, position 0, empty name).
- deps/sid_collection.hpp (a forwarder to the canonical header) is deleted. shader_manager.hpp includes glitch-core-io/core/sided_collection.hpp.
- shader_code.hpp: the name-table stand-in CShaderCodeManager is replaced by ShaderCodeCollection, the canonical SIDedCollection instance (ushort ids, SEmptyProperties). getId returns 0xffff when missing; insert(name, code, false); get(id)->value. removeUnusedShaderCodes calls removeUnused() (removeAll(false)): an entry that another holder still references is kept. tests/shader_code_test.cpp checks that.
- The collection's ctor and dtor (0x6e0804 / 0x6e0818, 0x6e1758 / 0x6e1828) are the template's own members (glitch-shared/sid_collection.hpp); they have no body in this category.
- Kept as the map says (action keep): deps/intrusive_ptr.hpp and deps/os_logging.hpp (forwarders), and the scene forward declarations in batch_baker.hpp and video_driver.hpp and the video_types.hpp forward declaration of CMeshBuffer.
- Outside this category: vendor-gameswf/src/v1-vendor-gameswf-bitmap_info_ogl-434136-1.cpp:218 has a comment that names deps/glitch_io.hpp. It is a comment only.
