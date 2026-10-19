# glitch-scene-collada-gui notes

Queue: 4138 functions (all owner engine-glitch). Ledger: 1131 rows
(975 reconstructed, 152 partial, 4 skipped). The `decomp_extract --remaining` count
is 3007 unledgered. Waves 3 to 6 are described in the sections below; wave 7 is
at the end of this file.

## Classes and inferred layouts
- CVisibilityEx: visible flag is a 32-bit word at +0x11c, bit 0 = visible. Base
  track state before +0x11c is not mapped (stand-in pad in visibility_ex.hpp).
- CAnimationSet (animation_set.hpp): channels +0x0c, tracks +0x18, database refs
  (8-byte) +0x24, bindings (12-byte) +0x30, animated track count +0x3c, start
  range +0x40/+0x44, end range +0x4c/+0x50, length range +0x58/+0x5c, animation
  template +0x64. Ranges are read with a bounds check (index < count else 0).
  Destructor and remAnimationTemplate are not done (they need the full base class).
- CVector3dEx (vector3d_ex.hpp): value is 3 floats (12 bytes). Getter helpers
  only; blended/added/key-based paths need SAnimationAccessor and CApplicatorInfo.
- CRootSceneNode (root_scene_node.hpp): UID holder at +0x14c (uid at +0x20).
  Circular intrusive lists with sentinel heads at +0x158 (particle systems), +0x168
  (morphing meshes), +0x170 (cameras), +0x178 (materials), +0x188 (lights); nodes
  are {next, prev, value}. removeMaterial has an empty body in the original.
- CSkinnedMesh (skinned_mesh.hpp): per-buffer table of 0x14-byte entries at +0x5c
  holding mesh buffer (count at +0x04), material and vertex-attribute map (count at
  +0x00). Accessors write an owning reference and increment the count.
- CSceneNodeAnimator (scene_node_animator.hpp): target blocks at +0x44 with a
  16-byte stride. Track and trackEx are 32-bit ids. getBindURI and the update paths
  need the ISceneNodeAnimator base, not yet mapped.
- CModularSkinnedMesh (modular_skinned_mesh.hpp): SModularBuffer is 0x20 bytes
  (buffer +0x00, material +0x04, map +0x08, flag +0x1c set to 1 by the ctor);
  buffers vector at +0x30..+0x34, category table pointer at +0x1c (count is its
  first word), current module ids are 8-byte records at +0x24, needOutputBuffer
  flag at +0x58.
- CSceneNodeAnimatorSynchronizedBlender: only the ordering predicate and the
  elapsed-time stub are done. The rest forwards through virtual calls on segment
  objects whose vtable slots are not mapped yet.
- CTextureTransformEx (texture_transform_ex.hpp): value is 5 words (20 bytes).
  Identity is translation (0,0), rotation 0, scale (1,1).
- IAnimationTrackEx, CVirtualEx, ISceneNodeAnimator, CColladaFactory and
  CSceneNodeAnimatorSynchronizedSet: empty or constant-return defaults, in
  track_defaults.hpp and generated_stubs.hpp.

- CColladaDatabase (collada_database.hpp): the named-asset lookups reach the
  table holder through two pointers (*this + 0x24, then +0x20). The holder is
  modelled as SDatabaseTables with one std::vector of entry pointers per kind.
  Original count/base offsets are in the header comments (animation +0x24/+0x28,
  animationClip +0x34/+0x38, image +0x4c/+0x50, effect +0x54/+0x58, material
  +0x5c/+0x60, geometry +0x68/+0x6c, controller +0x70/+0x74 (name at entry+4),
  light +0x44/+0x48, camera +0x3c/+0x40, visualScene +0x98/+0x9c, force +0x88/+0x8c,
  coronas +0x90/+0x94, gnpsEmitter +0x80/+0x84, emitter +0x78/+0x7c). Entry types
  (SImage, SEffect, ...) are name-only stand-ins until the loader structs are mapped.
  Segment table (holder +0x30) is ranges [begin, end) with a 0x18 stride.
- CColladaDatabase constructors, construct* creators, getAnimation(int)/SChannel
  overloads and getDefaultValue/getBlendableAnimation are not done: they forward
  through SChannel and the ISceneNode/collada vtables.

- CColladaFactory (collada_factory.hpp): the 30 pure virtuals in vtable order
  (slots +0x08..+0x7c, see decomp_vtable.py). getExternalLightSceneNode has two
  empty base bodies; its error helper (0x62ff80) is not reconstructed.
- CColladaDatabase (wave 3): record at +0x00, factory at +0x04, record+0x20 file
  name, record+0x24 file data, data+0x20 the SDatabaseTables holder. Each table is
  a (count, base) word pair: the base is at the listed offset and the count is one
  word before it. Strides: effects 0x74 (+0x58), geometry 0x10 (+0x6c), controllers
  0x0c (+0x74), forces 0x10 (+0x8c), cameras 0x1c (+0x40), lights 0x18 (+0x48),
  images 0x14 (+0x50), materials 0x24 (+0x60).
  SGeometry notInstantiated at +0x08; SForce kind at +0x08 (0 gravity, 1 wind,
  2 deflector); SInstanceForce url at +0x04.
- CGUIEnvironment (wave 3): factory vector at +0x16c, built-in font list begin
  +0x178 and end +0x17c (the sentinel). SBuiltInFontNode keeps the font pointer at
  +0x18. IGUIElement: type index guiType at +0x154.
- CSceneManager: hierarchyChanged +0x288, visibilityChanged +0x289.
  CCameraSceneNode: input-receiver byte +0x165, bounding box +0x1d4.
  CBillboardSceneNode: size +0x134, bounding box +0x13c.
  CBatchMesh::SSegment: indexBegin +0x10, indexEnd +0x14, visible byte +0x20.
  ISceneNode::automaticCulling at +0x118 (set by setAutomaticCulling).
- ITimeController (base: update and destructor) and ITimelineController (derived:
  currentFrame +0x04, jumpTo, getLoop, setScale, and getScale fixed at 1.0).
  Collada CTimelineController keeps scale at +0x30.
- CSceneNodeAnimatorSynchronizedSet: segment array at +0x60, count +0x6c, reachedEnd
  byte +0x80. SSyncSegment is 0x20 bytes (timestamp +0x00, length +0x04).
  ISkinnedMesh: skinning-enabled byte +0x18. Collada ISceneNodeAnimator: length +0x14.
- Shape types PDPoint/PDLine/PDBox/PDCylinder return tags 3/4/0/2. They are
  stand-ins without the PDomain base, so each empty destructor (D1) is its own body.
- IParticleSystem<P>: world-matrix pointer at +0x0c (both particle types). The model
  initialisers (GNPS* and P* for size, colour, motion, forces, spin, life) are
  empty templates. Each instantiation is its own ledger row.

## Type tags and symbols
- Four-character type tags are stored as the little-endian word from the
  pseudocode and commented with the ASCII form: "emty" 0x79746d65, "cam_" 0x5f6d6163,
  "lght" 0x7468676c, "mesh" 0x6873656d, "smgr" 0x72676d73, "bill" 0x6c6c6962,
  "basn" 0x6e736162.
- Every `// 0xADDR _Z...` comment was checked against queue.csv. Hand-typed mangled
  names had 118 length-prefix errors, which were corrected to the queue name. Keep
  the check: the queue is the source of truth for the name, not the header text.
- Int-index helpers (effectAt, geometryAt, forceAt, lightAt, cameraAt and the
  constructX(int) overloads) index the table without a bounds check, as the original
  getEffect(int) does (param * stride + base).

## Partial status
generated_stubs.hpp holds 80 empty or constant-return bodies from the collada queue.
Each is a free function template named by its original address, not yet attached
to its owning class, so those ledger rows are `partial`.

## Partial rows added in wave 3
- IGUIElement::getTypeName (0x5350a4): returns guiElementTypeNames[guiType]. The name
  table (glitch::gui::GUIElementTypeNames, 92 bytes of .data.rel.ro) is not mapped, so
  the hook stays null and the function returns null.
- CGUIEnvironment::getBuiltInFont (0x535bf8): the sentinel comparison and the font
  pointer at +0x18 are reconstructed. The list links are a pad.

## Decisions
- Refcounts: boost::intrusive_ptr out-parameters are modelled as `T*&` plus a
  count increment, matching the original's assignment behaviour.
- Destructors and deleting destructors: the D1 body is kept where it is empty;
  D0 (delete this) is `skipped` as a compiler-generated thunk. Wave 3 added no D0
  rows (the 4 skipped rows are from earlier waves).
- Empty bodies are reconstructed, not partial. A body that returns a constant or
  reads one field is reconstructed. Only a stubbed or unmapped table is partial.
- Pointer-chasing through offsets is replaced by typed fields; no raw offset
  arithmetic is used.

## Deferred (dependencies not mapped or claimed elsewhere)
- constructController(SController*) 0x60fa24: claimed by another category.
- constructNode, constructGNPSEmitter, constructCoronas, constructEmitter pointer
  overloads: not in this queue.
- CRootSceneNode::attachSkin 0x65b434: needs the list head at +0x160, which conflicts
  with the SIntrusiveList size.
- constructImage and the CImage constructor; constructMaterial(SMaterial*) (584 bytes).
- CResFileManager load/unload; CColladaDatabase constructors and destructor.
- getAnimation with SChannel; the CVirtualEx family (704 bytes); CDynamicAnimationSet
  small functions (need getDatabaseIndex and SChannel).
- IGUIElement::setName 0x539ec8: the string layout conflicts with getName.
- CGUIEnvironment::getDefaultGUIElementFactory needs a pure virtual
  getGUIElementFactory, which would break the existing test construction.
- CGUIEnvironment::getRootGUIElement: embedded object, layout not mapped.
- CTweakable (glitch::debugger): in the queue but out of scope for these classes.
- Deleting destructors (D0, about 306 queued): left unledgered. The category uses
  `skipped` for them, so add those rows only when the target calls for them.

## Remaining
- CColladaDatabase constructors and remaining construct* creators, CRootSceneNode
  construct paths, CSkinnedMesh/CModularSkinnedMesh virtual paths,
  CSkinnedMeshSceneNode and CModularSkinnedMeshSceneNode destructors and
  getAbsoluteTransformation, CSceneManager node-entry operator< (STransparentNodeEntry,
  SDefaultNodeEntry), SViewFrustum::intersects, CSceneNodeAnimatorSynchronizedBlender
  (segment vtable slots), animation_track::CVisibilityEx/CVector3dEx/CTextureTransformEx
  blend and key-based paths (need SAnimationAccessor and CApplicatorInfo),
  CParticleSystemSceneNode.
- glitch::ps: PDomain, PDCone and PDBlob bases, the copy, transform, within and
  generate members of the shapes, IParticleSystem beyond getWorldMatrixPtr.
- Attach generated_stubs entries to their owning classes, which also makes those
  rows reconstructed.
- Intrusive_ptr add_ref/release (0x60bbd4, 0x60c598) and onUnbindAll need the
  CAnimationBlock layout.

## Wave 4: particle emitters, affectors, mesh and animated-mesh emitters
Files: include/glitch-scene-collada-gui/particle_emitters.hpp, particle_affectors.hpp,
src/particle_emitters.cpp, src/particle_affectors.cpp, tests/particle_emitters_test.cpp,
tests/particle_affectors_test.cpp. Classes: CParticleCylinderEmitter, CParticlePointEmitter,
CParticleBoxEmitter, CParticleRingEmitter, CParticleSphereEmitter, CParticleMeshEmitter,
CParticleAnimatedMeshSceneNodeEmitter, CParticleAttractionAffector, CParticleGravityAffector,
CParticleRotationAffector, CParticleSizeAffector, CParticleSpinAffector, CParticleFadeOutAffector.

- Emitter layout: vptr at +0x00. Cylinder, Point, Box, Ring and Sphere keep a particle
  buffer (begin, end, capacity) at +0x04. Mesh and AnimatedMesh keep an IMesh or
  IAnimatedMeshSceneNode reference at +0x04 instead. The accumulated time is +0x58 (Cylinder,
  Mesh), +0x70 (Point), +0x4c (Box), +0x48 (Ring) and +0x44 (Sphere), with the emitted
  count in the next word. Settings are at the offsets in the header comments.
- Mesh emitter: the buffer loop in setMesh and the constructor calls IMesh vtable slot
  +0x10 (buffer count) and slot +0x14 (buffer getter). It reads the buffer's vertex stream
  at +0x14 and that stream's count at +0x08, sums the counts into +0x08, and appends each
  count to the int vector at +0x14. The loop is not reconstructed because IMesh and
  CVertexStreams are not mapped. The reference counts are on the pointee at +0x04.
- AnimatedMesh emitter: +0x18 mesh buffer number, +0x28 everyMeshVertex, +0x29
  useNormalDirection, +0x2c normalDirectionModifier, +0x3c direction, +0x48/+0x4c
  particles per second, +0x50/+0x54 colours, +0x58/+0x5c lifetimes, +0x68 max angle. The
  constructor code after the colour copies, the D1 (112 bytes) and setAnimatedMeshSceneNode
  (532 bytes) are not done.
- Affector layout: the IParticleAffector flag at +0x04 is set to 1 by every constructor and
  tested by affect(); it is named `enabled`. Attraction: point +0x08, speed +0x14, flags
  +0x18 (affectX), +0x19 (affectY), +0x1a (affectZ), +0x1b (attract), lastTime +0x1c.
  Gravity: timeForceLost +0x08 (float), gravity +0x0c. Rotation: pivot +0x08, speed +0x14,
  lastTime +0x20. Size: targetSize +0x08, variation +0x0c, growForTime +0x10 and fadeForTime
  +0x14 (both floats, converted from uint in the constructor). Spin: spinTime +0x08 (uint),
  variation +0x0c. FadeOut: targetColor at +0x05 (unaligned in the original), fadeOutTime
  +0x0c.
- Constructors: C2 and C1 store the same members. C1 also writes the virtual-base vtable
  slots, for example +0x78/+0x7c in Point and +0x50/+0x54 in Sphere, and the VTT in r1 is
  not a C++ parameter. The constructors are `partial` for that reason.
- Ghidra marks the memcpy and float-helper tails as noreturn, which cuts the pseudocode of
  constructors, emitt and affect short. Example: CParticleCylinderEmitter::emitt is 124
  bytes in queue.csv but 1340 bytes of ARM. For these bodies read the ARM listing
  (`recovered/native/assembly/libDungeonHunter2.so/`): the header line gives declared_size.
  Helper addresses: 0x30e868 memcpy, 0x30e2e0 __aeabi_ui2f, 0x30ec94 __aeabi_fdiv,
  0x8be2a0 __fixunssfsi (libgcc semantics: negative input gives 0, overflow gives UINT_MAX).
- emitt() and affect(): the time accumulation (emitters) and the enabled/count guard
  (affectors) are reconstructed. The particle generation, array growth and per-particle
  updates are not, so every such row is `partial`. The mesh and animated-mesh emitt() return 0
  in the original and are `reconstructed`.
- Virtual methods: the emitter and affector interface bases are not reconstructed, so the
  methods are plain members and the classes have no vtables here.
- Destructors: D1 with owned storage calls std::free for GlitchFree (core-platform owns
  GlitchFree and categories do not link to each other). Point's D1 is empty in the original
  and stays empty. D0 (deleting) rows are not added, following the wave-3 decision; the four
  skipped rows are from earlier waves.
- Not taken this wave: the CVirtualEx<CApplyValueEx<...>> family (704 queued, 575 of them 120
  bytes or less). Its small bodies forward through virtual slots (+0x98 to +0xa4) on
  CApplicatorInfo or SAnimationAccessor pointers whose dynamic class is not identified. The
  CApplicatorInfo vtable in vtables-001.json has only its destructors, so the slots cannot be
  named. Map the derived applicator vtables before taking this family.

## Remaining after wave 4
- The CVirtualEx family above, and the other animation_track templates (CWeightEx 17,
  CTextureTransformEx 16, CVector3dEx 14, CFloatEx 13, CVisibilityEx 21).
- glitch::scene particle systems: CParticleSystemSceneNode (36 small bodies), PSManager,
  IParticleContext, PRenderDataBillboardModel and the PD shape bases (PDomain, PDCone, PDBlob).
- Mesh emitter setMesh and constructor loop; AnimatedMesh emitter D1, setAnimatedMeshSceneNode
  and constructor tail; the emitt() and affect() particle paths for all emitters and affectors.
- Large unfinished classes with many small bodies: CSceneManager, CColladaDatabase,
  CGUIEnvironment, CGUITable, ISceneNode, CTerrainSceneNode, CGUITTFont, IGUIElement and
  CSceneNodeAnimatorSynchronizedBlender.

## Wave 5: collada, scene, gui and PD accessors
Files: include/glitch-scene-collada-gui/collada_scene_accessors.hpp, collada_empty_dtors.hpp,
scene_simple_accessors.hpp, gui_simple_accessors.hpp, ps_types.hpp (extended), and the
matching src/*.cpp (collada_scene_accessors.cpp, scene_simple_accessors.cpp,
gui_simple_accessors.cpp, ps_types.cpp). Tests: tests/collada_scene_accessors_test.cpp,
scene_simple_accessors_test.cpp, gui_simple_accessors_test.cpp, ps_types_test.cpp (extended).
Changed: modular_skinned_mesh.hpp/.cpp, collada_misc.hpp/.cpp, visibility_ex.hpp,
texture_transform_ex.hpp, collada_factory.hpp.
Ledger: 228 rows (222 reconstructed, 6 partial). Queue remaining 3319 of 4138.

- Layouts (offsets are comments; members are typed):
  - SCategoryEntry {reserved[2], moduleCount +0x08, reserved2}; SCategoryTable.entries at +0x04.
    getCategoryModuleCount indexes entries[category].moduleCount.
  - STimelineClip and STimelineClipTable; CTimelineController clipTable +0x34, currentClipIndex
    +0x38. getClipCount returns 0 when there is no table.
  - CDynamicAnimationSet channels at +0x74, stride 16 (getChannel).
  - CCoronasSceneNode box at +0x150; CMesh box at +0x24; CSceneNodeAnimatorSet animationSet at
    +0x24; CSceneNode::getUserProperty is in collada_scene_accessors.cpp.
  - CModularSkinnedMeshSceneNode mesh pointer at +0x134.
  - CMeshSceneNode: holder at +0x130, else the named mesh at +0x134 with its uid at +8.
  - CTextureTransformEx, CVisibilityEx and CAnimatedMeshSceneNode members are named per the
    header comments; the glitch::scene nodes keep their stand-in layouts from wave 4.
- Thunk forwarding: the CSceneNodeAnimatorSet getAnimationLength/Start/End bodies take one
  index that the ARM passes through r1 untouched. The index is forwarded to the collada helper
  (checked against the listing for each). The CModularSkinnedMeshSceneNode getters follow the
  same rule.
- Partial rows (6): the uid words of CParticleSystemSceneNode, CGlitchNewParticleSystemSceneNode,
  CCameraSceneNode and CMeshSceneNode are typed as const char*, and the transformed-box word
  at +0x14c of the two particle systems is typed as a pointer. The string and box types are
  inferred from use and each body reads one stored word; they stay partial until the holder
  types are mapped.
- CTerrainSceneNode getScale, getRotation and getPosition are const and return const
  references (the queue names them _ZNK). CMorphingMesh::clone returns a null intrusive_ptr.
- CFloatEx and CWeightEx getIdentityValue write 0.0f; their defaulted dtors are in
  collada_scene_accessors.hpp. CVisibilityEx and CTextureTransformEx dtors are defaulted.
- Destructors: D1 empties use `= default` (no vtables in the stand-ins, same as wave 4). D0
  deleting rows are not ledgered. CColladaFactory D1 and D2 are the defaulted virtual dtor at
  +0x00/+0x04 of collada_factory.hpp.
- Empty-body families ledgered as `reconstructed`: IEventsManager, CEventsManager,
  IAnimationTrackEx, IColladaSceneNodeSynchronizedAnimatorInterface, CResFileReader, CResFactory
  (D2 and D1), CAnimationTrackEx, animation_track::CApplicatorInfo, CMaterialApplicatorInfo.
- glitch::scene simple accessors: type tags are the four-character words (amsh, text, dmmy,
  sky_, terr, shdw, ptcl). Particle interfaces (IParticle*) return the getType constants.
  CAnimatedMeshSceneNode::setAnimationSpeed scales by 0.001f. CDefaultSceneNodeAnimatorFactory
  reports 9 creatable types and maps indices above 8 to 10.
- glitch::gui simple accessors: CGUITable flags are bool at +0x188/+0x189 and int at
  +0x198..+0x1b0. CGUITTFont kerning setters are empty and the getters return 0. The
  IGUIEnvironment D1 row is attributed to the header (its .cpp holds only a comment).
  CDefaultGUIElementFactory reports 0x16 creatable types.
- PD shapes: getType constants are PDCone 5, PDSphere 1, PDBlob 6 (PDPoint 3, PDLine 4, PDBox 0,
  PDCylinder 2 from wave 4). size() returns a float: the loaded word is returned as-is, and
  the float type is inferred from the 1.0f constant that PDPoint and PDBlob return. The
  transformed-box and uid word types are inferred, as noted in the partial list above.

- Not taken this wave, with the reason:
  - The CVirtualEx family and the key-based forwarders to Ex functions, as in wave 4.
  - Virtual-slot getters: CAnimationSet::getAnimationTrack (slot +0x18),
    CTimelineController::getCurrentClipLength (slot +0x28), and the mesh getters that dispatch
    through IMesh and IAnimatedMesh (slots +0x10, +0x24, +0x30).
  - CMatrix4 layout needed: CDummyTransformationSceneNode matrix accessors, and the PDPoint
    (0x69ae04), PDSphere (0x69bdec) and PDBlob (0x69bf60) transform bodies, which read matrix
    words. PDCone::transform (0x69b9c0) is empty in the original and is ledgered with only a
    forward declaration of glitch::core::CMatrix4 in ps_types.hpp.
  - CAnimatedMeshSceneNode::setCurrentFrame (0x6f6af8): the decompiled tail is truncated.
    Read its ARM listing before taking it.
  - CShadowVolumeSceneNode::load and CColladaBinaryFileLoader::createScene: return type not
    known from the index.
  - PD within(), generate() and copy() bodies: they use PSRandom and the vector stand-ins, so
    they are a separate batch. PDomain's D1 is skipped because PDomain is not a stand-in here.

## Remaining after wave 5
- The CVirtualEx family and the remaining animation_track templates (CWeightEx, CTextureTransformEx,
  CVector3dEx, CFloatEx, CVisibilityEx) beyond the accessors above.
- Virtual-slot getters listed above, and the CMatrix4 layout the matrix bodies need.
- Large classes with many small bodies still unfinished: CSceneManager, CColladaDatabase,
  CGUIEnvironment, ISceneNode, IGUIElement and CSceneNodeAnimatorSynchronizedBlender.
- PD within(), generate() and copy() bodies, and the PSRandom dependency.

## Wave 6: GUI, scene, collada accessors and platform stubs
Files: new include/glitch-scene-collada-gui/platform_stubs.hpp, src/platform_stubs.cpp and
tests/platform_stubs_test.cpp. Extended: gui_simple_accessors.hpp/.cpp (CGUISpriteBank,
factory constructor, word-wrap setters), gui_elements.hpp/.cpp (CGUIEnvironment factory lookup),
scene_simple_accessors.hpp/.cpp (CMeshCache, CMesh, CAppendMeshBuffer, CColladaBinaryFileLoader,
CShadowVolumeSceneNode::load, animator differences), collada_scene_accessors.hpp/.cpp (CSceneNode
uid and scope, CLightSceneNode, CDynamicAnimationSet::clearSet), collada_misc.hpp/.cpp (skin
attach hooks, streaming manager, transformation template, synchronized-set elapsed time),
ps_types.hpp (colour-model track tests), ps_types.cpp (PS_NEW and PS_FREE). Tests were added to
each matching tests/*_test.cpp.
Ledger: 201 rows this wave (183 reconstructed, 18 partial). Host and Windows builds pass with
24 ctest tests and no warnings.

- Layouts (offsets are comments; members are typed, pads fill the rest):
  - SListItem: text pointer +0x44, icon +0x48, four 5-byte override records from +0x4c (flag byte,
    then the packed colour). The override index is the EGUI_LISTBOX_COLOR value.
  - CGUITable: SCell (0x98 stride; text +0x44, colour +0x90, data +0x94) and SRow (cell vector +0x00).
  - CGUIComboBox SItem: stride 0x48, text +0x44. Items vector +0x164..+0x168, selected +0x170.
  - CGUIContextMenu SItem: stride 0x60. Text +0x44, enabled +0x49, checked +0x4a, width +0x4c,
    height +0x50, offset +0x54, sub-menu +0x58.
  - CGUISkin colour table: getColor is partial. Indices of 21 and above return zero, because the
    register value the original leaves is not recoverable.
  - CGUISpriteBank: sprite vector +0x08, position vector +0x14, texture vector +0x20 (only the
    texture vector is modelled; getSprites and getPositions are not written).
  - CGUITTFont tracking +0x38 (negative values stored as zero). CGUIStaticText and CGUIEditBox
    word-wrap flags at +0x171 and +0x188.
  - STerrainPatch (stride 0x38): LOD word +0x00, bounding box +0x04.
  - CMeshCache: refcount base +0x04, entries +0x08..+0x0c (stride 0x1c, name +0x14, mesh +0x18),
    driver +0x14.
  - CSceneNode property block (pointer at +0x154): uid +0x00, scope id +0x08, user property +0x48.
  - CLightSceneNode +0x160: getLightID reads the word, getUID follows it as a pointer to the uid
    word. The union in the header keeps both readings (getUID is partial for that reason).
  - CBatchMesh SBatch: mesh buffer +0x00, material +0x04, vertex attribute map +0x08, three 16-bit
    fields +0x0c/+0x0e/+0x10 zeroed by the constructor (roles unknown).
  - CModularSkinnedMesh: SModuleHolder (name +0x04), SModuleRecord (holder +0x04, 8 bytes),
    category entries 0x10 bytes.
  - CDefaultSceneNodeFactory::SCreatableType: 28 bytes, type +0x00, name +0x18. Indices out of
    range return the 'unkn' tag (0x6e6b6e75).
  - CAndroidOSDevice::CCursorControl: position words +0x08/+0x0c, owning device +0x30, visible
    flag +0x34. CAndroidOSDevice running flag +0x109 (cleared by closeDevice).
  - CSceneNodeAnimatorSynchronizedSet: elapsed time float +0x7c, reached-end flag +0x80.
  - CAppendMeshBuffer: fill counters at +0x3c and +0x44 (roles not confirmed).
  - CDynamicAnimationSet: database vector +0x24..+0x28, set-cleared flag +0x70, channels +0x74.
  - CAnimationStreamingManager: eight words at +0x00..+0x1c zeroed by the constructor, which also
    publishes the object through the static Instance pointer.
- Name tables: the GUI element type names and the scene animator names are read from the binary.
  The relocation addends (R_ARM_RELATIVE) point at string literals in strings.csv. Image, table and
  texture resolve as suffixes of longer literals. Entry 9 "tab" is inferred from the enum order,
  and that is noted in the source.
- Thunks: a 4-byte body that is a single `b` is a thunk. CGUIWindow::updateAbsolutePosition
  (0x55eb40) and ISceneNodeAnimator::onUnbindAll (0x3662c4) forward to bodies that are not yet
  in the port, so they are not written.
- Destructors: D1 and D2 bodies that only store the vtable and call a base destructor are
  defaulted. D0 deleting variants are not ledgered. CAnimationSetTransformationTemplate D1 and D2
  are partial because the base IAnimationSetTemplate is not ported.
- Constructor pairs (C1 and C2 with the same body) share one body with two address comments.
- Refcounted getters and setters (intrusive_ptr out-parameters) are skipped. There is no refcount
  model, so CMeshSceneNode::getMesh, CShadowVolumeSceneNode::setShadowMesh, CTerrainSceneNode
  ::getRenderBuffer and similar are left out. Clear-style bodies that drop references (CMeshCache,
  CMesh, CDynamicAnimationSet) are partial with a note.
- Virtual-slot dispatch is not modelled, so those rows are skipped. Examples are
  CGUIEnvironment::getDefaultGUIElementFactory, CMorphingMesh::getMeshBufferCount,
  CTimelineController::getClipLength and the synchronized-blender getters.
- Tail calls into __aeabi_fsub (CSceneNodeAnimatorCameraMaya::updateAnimationState,
  CSceneNodeAnimatorFlyStraight::recalculateImidiateValues) return the difference. The decompiled
  void signature hides the float return, so both are partial.
- CCursorControl::setVisible adds a null check on the owning device, which the original does not
  have. The row is reconstructed with that note.
- The skin techniques' needOutputBuffer bodies stay in generated_stubs.hpp (partial). Only the
  attach hooks of the three hardware techniques are attached to their classes here.
- PS_NEW is partial: GlitchAlloc with hint 0 is replaced by std::malloc.

- Not taken this wave, with the reason:
  - CColladaFactory getVertexBufferConfig and getIndexBufferConfig: the sret struct return conflicts
    with the uint32 virtual signature. Not written until the signature is confirmed.
  - CGUISkin::getFont (0x54aac4): reads a font table that overlaps the colour table.
  - os::Timer is not in the port, so the fader, button and fader-ready time bodies wait for it.
  - CMatrix4 has no layout here, so CDummyTransformationSceneNode matrix accessors wait.
  - recalculateScrollBar, breakText and addTransformationTargets are not ported, so the tab
    control's width and height setters and the word-wrap re-break are partial or skipped.
  - CAnimationSet::getAnimationCount is not in the queue, so CSceneNodeAnimatorSet::getAnimationCount
    cannot forward to it yet.
  - CDynamicAnimationSet::remAnimationLibrary and remAnimationLibraryBindings need getDatabaseIndex.
  - CSkinnedMesh::getBoundingBox needs computeBoundingBox.
  - CGUIFont::getSpriteNoFromChar is a tree lookup that needs the node stand-in.

## Remaining after wave 6
- The CVirtualEx family and the remaining animation_track templates (see wave 5).
- Virtual-slot getters, Timer-based GUI bodies and the CMatrix4 layout (see above).
- CAnimationStreamingManager release, cache, checkMemoryUsage and the block registry (large).
- CColladaHardware and CColladaSoftware skin technique constructors, skin, init and prepareCache.
- CSceneManager compile and CBatchSceneNode accessors that dispatch through segment objects.
- PD within(), generate() and copy() bodies, and the PSRandom dependency.

## Wave 7: small bodies, the CVirtualEx family and the irr layer
Files: new include/glitch-scene-collada-gui/irr_factory.hpp, irr_alloc.hpp, animation_track_virtual_ex.hpp;
new src/irr_factory.cpp, irr_alloc.cpp; new tests/irr_factory_test.cpp, animation_track_virtual_ex_test.cpp,
wave7_accessors_test.cpp. Changed: scene_nodes.hpp/.cpp (IMesh D1, CBatchSceneNode::setMesh),
gui_simple_accessors.hpp/.cpp (CGUISpriteBank getSprites/getPositions), gui_elements.hpp/.cpp
(IGUIElement absoluteRect and isPointInside), ps_types.hpp/.cpp (PDPoint vector constructor, within, generate, PSRandom
forward declaration), collada_misc.hpp/.cpp (CColladaSoftwareSkinTechnique::attach), scene_simple_accessors.hpp/.cpp
(CMesh default ctor, glitch::operator== for pair<unsigned, aabbox3d>).
Ledger: 111 rows this wave (109 reconstructed, 2 partial). Host and Windows builds: 27 ctest tests pass.

- Layouts: IGUIElement absolute rectangle is core::rect<int> at +0x48 (upper-left x, y) and +0x50 (lower-right
  x, y). CGUISpriteBank: sprite list at +0x08, position list at +0x14, texture list at +0x20. PDPoint: point at
  +0x04. CMesh (scene): default box (-1,-1,-1) to (1,1,1) at +0x14. CColladaSoftwareSkinTechnique: attached node
  at +0x14, as in the hardware techniques.
- CVirtualEx family (animation_track_virtual_ex.hpp): the 48 empty D1 destructors are one defaulted template
  destructor. The 43 getIdentityValue bodies are CIdentityValueWriter<Words, UnitW>: zero Words 32-bit words,
  and for quaternion instantiations word 3 is 1.0f. Word counts and unit flags were taken from the pseudocode
  stores: 26 instantiations write 12 words, 6 quaternions write 4 words with unit w, 6 write 4 words, 3 write
  8 words and 2 write 3 words.
  The instantiation for each address is in the header comments. The rows are reconstructed because the
  bodies are fully determined by their stores; they do not depend on the applicator layouts.
- irr_malloc and irr_free (C wrappers) are partial: GlitchAlloc (hint 0) and GlitchFree are replaced by
  malloc and free, as in PS_NEW.
- CIrrFactory: the constructor publishes s_instance and getInstance uses a function-local static. Not done:
  createGUIEnvironment (0x533f28, needs the CGUIEnvironment constructor) and createFileSystem (0x533fb0, needs
  CFileSystem and the intrusive count).
- Refcount out-parameter getters were not written. The intrusive_ptr stand-in does not count references, so
  getters such as CMeshSceneNode::getMesh, CBatchMesh::getMeshBuffer, CMorphingMesh::getMaterial,
  CGUIMeshViewer::getMesh/getMaterial and CMeshCache::getMeshByIndex stay unledgered until a count model exists
  (the CModularSkinnedMesh rows show the pattern: SCountedRef with the count at +0x00).
- Destructors: D0 (deleting) rows remain unledgered, as in earlier waves. D1 and D2 bodies that are empty are
  reconstructed; those that release members are not.

## Remaining after wave 7
- Virtual-slot dispatch (not modelled, so the rows stay unledgered): CModularSkinnedMesh::onAnimate, updateTechnique
  and setIsSkinningEnabled (slots 0x34, 0x48, 0x54 on the module ISkinnedMesh objects), CSkinnedMesh getters
  (slots 0x10, 0x30, 0x34), CSkinnedMeshSceneNode::setIsSkinningEnabled (slot 0x54 on the mesh), CMeshSceneNode
  onAnimate and getMaterial (slots 0x34, 0x18), CMorphingMesh getMeshBufferCount and getBoundingBox (slots 0x10,
  0x24), and the synchronized-blender getters.
- Refcount out-parameter getters and setters (see the decision above). These need a reference-count model in
  boost::intrusive_ptr: the count word is at +0x00 for materials and +0x04 for meshes and buffers.
- Layouts not mapped: CMatrix4 (PDPoint/PDSphere/PDBlob/PDCylinder/PDLine/PDBox transform, CDummyTransformation
  matrix accessors), PSRandom (PD generate bodies other than PDPoint), SAnimationAccessor and CApplicatorInfo
  (the CVirtualEx key-based and value-blend bodies, about 610 rows still queued in the family).
- CColladaFactory create* bodies: each is a `new` of a node class (CRootSceneNode, CLightSceneNode, CCameraSceneNode,
  particle-system forces) whose constructor is not ported. createScene, createLight, createAnimator, createCameraNode
  and the force creators stay open until those constructors exist. getVertexBufferConfig and getIndexBufferConfig
  return an sret struct and need the signature confirmed.
- CColladaDatabase lookups that forward to SChannel (getBlendableAnimation, getDefaultValue, getMaterial by name
  with a temporary database): the forwarding targets are not ported, so the thunk rule needs them first.
- CSceneManager::STransparentNodeEntry and SDefaultNodeEntry operator<, SViewFrustum::intersects (tail calls
  into __aeabi_fmul are noreturn in the pseudocode; read the ARM listing before writing it).
- CTweakable (13 queued): in the queue, but the debugger accessors need the IWriteFile and CAttributes stand-ins.
- CGUI bodies that need string, refresh or event layout that is not mapped: CGUITable selection and column drag,
  CGUIListBox, CGUIContextMenu, CGUIComboBox, CGUIButton::setSprite (the sprite table at +0x168 is only partly
  known), CGUIEditBox, CGUIFileOpenDialog getFileName (word at +0x1a4) and sendSelectedEvent (needs SEvent).


## Hex-Rays re-run (partial rows)
Source: IDA Hex-Rays (`recovered/native/hexrays-all/`). Where a body was ambiguous, the IDA
listing was checked with `tools/decomp_asm.py --address` (getBuiltInFont, one getType tag).
Partial rows at the start of the re-run: 152. Now: 83 reconstructed, 69 partial.

- Reconstructed (83):
  - 80 stubs in generated_stubs.hpp: each constant or empty body was checked against the
    Hex-Rays pseudocode (script check, now also in tests/generated_stubs_test.cpp). They stay
    address-named free function templates until each is attached to its owning class.
  - ISceneNode::getUserProperty and getUserPropertyStr: return null, as the original's 0.
    The pointer return type is the port's stand-in for the property word, which is not mapped.
  - CGUIEnvironment::getBuiltInFont: list begin at +0x178, end at +0x17c, font at +0x18
    (checked in the IDA listing).
- IGUIElement::getTypeName stays partial. The name table (GUIElementTypeNames, 23 words, the
  last one null) is now shared from gui_simple_accessors.cpp. The lookup is exact for guiType
  0 to 0x16. Values from 0x17 up read past the table in the original and return null here.
- Still partial, with the blocker:
  - Helpers not ported: os::Timer::TickCount (CBatchMesh::setBoundingBox and getBoundingBox),
    updateBoundingBox, breakText (CGUIStaticText and CGUIEditBox::setWordWrap),
    computeBoundingBox (CModularSkinnedMesh::getBoundingBox), vector3d::normalize,
    vector2d::getAngle and vector3d::rotateXZBy (CSceneNodeAnimatorFlyStraight and
    CSceneNodeAnimatorCameraMaya).
  - Refcount release: the vector erase in CMesh::clear, CMeshCache::clear and
    CDynamicAnimationSet::clearSet drops references without a count model.
  - getUID and the transformed-box getters: the 32-bit word read through the holder is
    returned unchanged; its string or box type is inferred.
  - getExternalLightSceneNode (both overloads) tail-calls the anonymous-namespace
    getExternalLightSceneNodeDefault (0x62ff80, 1049 bytes, file lookup through
    CResFileManager::Inst). Not reconstructed.
  - getAnimationSegment: the count < 0 branch needs a corrupt table, not reproduced.
  - CGUISkin::getColor: an index above 0x14 leaves the colour bytes unset in the original.
  - PS_NEW, irr_malloc and irr_free: the allocator is core-platform's (GlitchAlloc and
    GlitchFree). std::malloc and std::free are used.
  - CAnimationSetTransformationTemplate C1, C2, D1 and D2: the base IAnimationSetTemplate is
    not ported.
  - Particle emitters and affectors: emitt() and affect() need the per-particle loop
    (normalize, the Randomizer and SParticle buffer growth, all not ported). The mesh emitter's
    buffer loop uses IMesh vtable slots. Constructors: the member stores are as in the existing
    body (only the cylinder C2 position, normal, radius and length stores were compared with the pseudocode); the vptr and VTT stores
    are not reproduced because the interface bases are not ported. Decision for the
    coordinator: if the no-vtable simplification is accepted, the constructor rows can
    become reconstructed after a member-by-member check.
- Ledger format: the file was rewritten with the csv module and LF line endings. The 111
  rows added in wave 7 had CRLF endings, and 7 legacy rows had unquoted commas in notes. Those
  notes are quoted now, with the text unchanged.

## Integration pass: slices 00 to 19 (glitch-scene-collada-gui)
Files: src/recon/slice_NN.cpp, include/glitch-scene-collada-gui/recon/slice_NN.hpp,
tests/recon_slice_NN_test.cpp, ledger_parts/slice_NN.csv (merged into ledger.csv, one row per address).
Layout notes that are confirmed by the pseudocode: include/glitch-scene-collada-gui/layouts.hpp
(CBatchMesh and IGUIElement only; the rest is still unmapped).

- Decision: slices 20 to 30 are held. Their rows are the same unmapped-layout family as the
  partial rows above, so they would add stubs without runnable bodies. Start them after the
  layout header covers the classes they touch.
- Fix: slice 10's keyed interpreter wrote uint32 words into float buffers and read them back as
  float (strict-aliasing violation). Optimised builds then returned stale values, which is why
  the Release build failed the quaternion assertion while the -O0 test passed. storeKeyedValue
  now writes its words with memcpy. Verified at -O0, -O2 and -O3.
- Slice 13's test needed definitions for the externs its partial rows call. Test doubles were
  added to the test file, not to src. The test never calls them.
- Ledger: 3131 rows, one per address. Status counts: 1277 reconstructed, 1299 partial, 555 skipped.

## Rerouted rows: slices 31 to 33
The integrator moved 216 rows into this queue (feature/decomp-reconstruction 21297a2d). They were
split into three slices of 72. Results: 2 reconstructed, 188 partial and 26 skipped (rows in
new_31/32/33.tsv). Every partial is an unattached free function with a stub note.
- Data issue: the body_bytes column in the rerouted queue does not match the Hex-Rays body size
  for many rows (for example 0x6c42a8: 76 in the queue, 14228 in the decompiled body). Trust the
  decompiler size, not the queue column.
- Camera and light nodes (0x582160, 0x582948, 0x583d88) were reconstructed by slice 31. The brief
  assigns camera to the other session, so review that split.
- The ledger now has 3347 rows.

## Scene camera and light nodes
glitch::scene camera and light nodes (0x582160, 0x582948, 0x583d88) are engine scene-graph classes,
not the game's camera logic. They stay in this category.

## Layout wave
Four layout workers write header-only member declarations from the Hex-Rays offsets, one family
each: layouts/animation_track.hpp, layouts/scene.hpp, layouts/collada_db.hpp, layouts/gui.hpp.
Each header compiles alone. Partial rows (1487 of them, from the ledger) are rerun against these
headers in a later wave.

## Layout headers (layouts/)
- animation_track.hpp: partial. Covers SAnimationAccessor, the applicator and CAnimationTrackEx
  bases. The CVirtualEx, CInterpreter and CApplyValueEx classes are not declared.
- scene.hpp: ISceneNode, IMesh, CMesh, CMeshBuffer, CBatchMesh, CBatchSceneNode, CSceneManager
  (flags only), with about 45 offsets confirmed by static_assert. Defines the same class names as
  scene_node.hpp and scene_nodes.hpp, so it cannot share a translation unit with them.
- gui.hpp: IGUIElement (complete for the fields the category touches), CGUIComboBox, CGUIContextMenu.
  Corrections to gui_elements.hpp: absoluteRect is at +0x38 (+0x48 is the clipping rect), and the
  children list is an intrusive sentinel at +0x04/+0x08, not a std::vector. Also defines IGUIElement,
  so it cannot share a translation unit with gui_elements.hpp.
- collada_db.hpp: about 85 offsets confirmed. The segment table at +0x30 is a pointer to a {count, base}
  record, not an inline vector. The streaming manager is 8 words (registry +0x00, cache +0x0c, byte limit
  +0x18, usage +0x1c). Defines the same glitch::collada names as collada_database.hpp, so the two sets can't be
  included together.
- Float constants in layouts.hpp corrected: -1082130432 is 0xBF800000, which is -1.0f.
- Open: the IGUIComboBox destructor writes vtable words at +0x158/+0x15c, which conflicts with those
  slots being element pointers.

## Rerun wave (partial rows, waves 00 to 14)
- The 1487 partial rows were rerun against the layout headers. Result: 1347 reconstructed, 1189 partial,
  811 skipped across the whole ledger (3347 rows).
- Downgraded two wave 07 rows, getVertexBufferConfig and getIndexBufferConfig: they return a placeholder
  config struct, not the original sret layout, so they are partial.
- Layout-header findings for the integrator: ISceneNode +0xf4/+0xfc/+0x104 are list sentinels per the
  decompile, but scene.hpp describes them as container words. The animation getters read getOutput()+4,
  one past the slot getOutput returns. Both are unresolved.
- The shared math header (port/decomp-reconstruction/shared/) is still absent, so the wave code uses
  core_stand_ins.hpp.

## Integration: integrator merge and shared header (2026-10-12)
- Merged origin/feature/decomp-reconstruction. ledger.csv conflict resolved by keeping our side: it already carries the wave reruns (waves 00–14 override partial rows; 3347 rows, one per address). Status counts: 1345 reconstructed / 1191 partial / 811 skipped. Theirs differs on 296 rows (older view); not taken.
- core_stand_ins.hpp now includes shared/include/glitch-shared/glitch_layouts.hpp (glitch::core value types, glitch::video SColor/SColorf). The category's 20 includers need `-I../shared/include` (CMake root adds it).
- glitch_core.hpp, sid_collection.hpp and gl_function_table.hpp exist only on feature/decomp-glitch-core-video (shared/include). Not pulled in here: glitch_core.hpp defines the same glitch::core names with different members, so including both in one TU clashes. Left for the integrator to reconcile.
- ISceneNode decision (decompile wins): getAnimators returns this+0xfc and getBindedAnimators returns this+0x104, i.e. the objects are embedded at those offsets, not begin/end word pairs. animators and bindedAnimators are now two-word ListSentinel objects. getChildren returns this+0xf0; kept as a 3-word container. Whether +0xf4 is a sentinel is not confirmed by any accessor body; still open.

## Camera layout (Track B integrator decisions, ledger.d/decisions-1.csv)
- ICameraSceneNode derives from ISceneNode and glitch::IEventReceiver (the +0x130 sub-object, vptr word
  off_95FC28; its onEvent slot is a thunk to the primary onEvent, here ICameraSceneNode::forwardEvent). Its 24 slots
  (listing +0x100..+0x15c) are declared in slot order; ICameraSceneNode is abstract. orthogonal is the byte at +0x134.
  A Hex-Rays call offset is the vtable listing offset minus 0x0c (the three header words), which settled the old doubt
  about the vptr+0x158 call in setNearValue and the other setters: it is recalculateProjectionMatrix (listing +0x164).
- CCameraSceneNode derives from ICameraSceneNode: target +0x138, upVector +0x144, mag +0x150, fov +0x154,
  aspectRatio +0x158, nearValue +0x15c, farValue +0x160, farToInfinity +0x164, inputReceiverEnabled +0x165, then the
  SViewFrustum member at +0x168 (0x21c bytes, up to +0x384). The IReferenceCounted virtual base follows at +0x384
  and is not modelled. The camera owns no box or matrices of its own: getBoundingBox is frustum.box (+0x1d4),
  getViewMatrix is frustum.viewMatrix (+0x1ec), getProjectionMatrix is frustum.projectionMatrix (+0x274), and the
  CMatrix4 at +0x2b8 that recalculateViewArea reads is frustum.viewProjectionMatrix (frustum +0x150).
- SViewFrustum (tb/glitch_scene_SViewFrustum.hpp): cameraPosition (apex, +0x00), planes[6] (+0x0c), box (+0x6c),
  viewMatrix (+0x84, transform state 0), worldMatrix (+0xc8, state 1), projectionMatrix (+0x10c, state 2),
  viewProjectionMatrix (+0x150), inverseViewMatrix (+0x194), worldViewProjectionMatrix (+0x1d8). setTransformState
  does nothing for state 2. The constructor (0x582bd8), intersects (0x35bec8), intersects3 (0x58aa8c) and
  intersectsWithoutBoxTest3 (0x50cacc) are members now (the recon_00::ViewFrustum stand-in stays for its test).
- ISceneNode has a host constructor ISceneNode(id, position, rotation, scale) shared by 0x5990c0 and 0x599268
  (still partial: IObject base, name string, list sentinels, vtable words) and a sceneManager member at +0x110.
  ISceneNode itself has no vptr, so CCameraSceneNode's overrides of ISceneNode slots (getType, getBoundingBox, render,
  onRegisterSceneNode) are plain members; make them overrides when ISceneNode gets its vtable.
- Still partial: render (driver interface), remove, onChangedSceneManager, setActiveCamera, setSceneManager
  (stubs in recon/slice_05.cpp), serializeAttributes and deserializeAttributes (recon_31 stand-ins), the complete-object
  constructor (virtual base words), CSceneManager::isCulled (node box is a virtual call).
- glitch-core-io matrix builders used by the camera are redeclared in core_matrix_builders.hpp, as setbyproduct is in
  the SViewFrustum header.
- collada_empty_dtors.hpp now includes layouts/animation_track.hpp for animation_track::CApplicatorInfo and
  CMaterialApplicatorInfo (their empty D1 destructors are declared there), so one TU can hold both.

## Engine unification wave u1-scene (scene domain: one definition each)

The map of every stand-in of a scene-domain type in every category is `reports/decomp-reconstruction/unification/scene.json`
(`done`: removed or forwarded in this wave; `replace with #include`: a stand-in that should switch to the canonical header;
`keep`: sole definition, matching forward declaration, or another domain's class). The ledger rows that changed are in
`ledger.d/u1-scene.csv` (every row whose body moved into a canonical file, or whose source file was deleted).

Canonical headers (include root `glitch-scene-collada-gui/`):
- `scene/`: scene_types (vocabulary, node and animator type tags, intrusive list links), ISceneNode, ISceneNodeAnimator, ITimelineController
  (ITimeController, ITimelineController), ICameraSceneNode, CCameraSceneNode, SViewFrustum, CEmptySceneNode (with CSceneManagerRootNode),
  CMeshSceneNode (with IMeshSceneNode), IMesh (with IAnimatedMesh), CMesh, SAnimatedMesh, CMeshBuffer, CAppendMeshBuffer (with SBatchConfig,
  IEndOfBatchCallback, SDefaultEndOfBatchCallback), CBatchMesh, CBatchSceneNode, ITriangleSelector, CTriangleSelector, COctTreeTriangleSelector,
  CSceneManager, SceneFactories (ISceneNodeFactory, ISceneNodeAnimatorFactory, IMeshLoader, IShadowReceiverTarget).
- `collada/`: ISceneNodeAnimator, CSceneNodeAnimator, CSceneNodeAnimatorSet, CSceneNodeAnimatorBlender, CSceneNodeAnimatorSynchronizedSet,
  CSceneNodeAnimatorSynchronizedBlender, CAnimationSet (with the animation-set templates), CDynamicAnimationSet, CTimelineController,
  CEventsManager, CApplicatorInfo, IAnimationTrackEx, SAnimation (records), SAnimationAccessor, SLibraryAnimationClips, CColladaDatabase (the
  database, its tables, the streaming manager), IMesh (collada::IMesh, CMesh, CMorphingMesh).
- Forwarders kept so existing includes work: scene_node.hpp, collada_database.hpp, animation_set.hpp, scene_node_animator.hpp,
  synchronized_blender.hpp, layouts/scene.hpp, layouts/collada_db.hpp, layouts/animation_track.hpp, tb/scene_node_animator_blender.hpp (the game
  AnimatorBlender includes it), tb/glitch_scene_{CMesh_SBuffer,COctTreeTriangleSelector,CTriangleSelector,ITriangleSelector,SViewFrustum}.hpp.

Decisions:
- There is no ISceneManager in the binary (no symbol, no vtable): CSceneManager is the interface and the class; the game SceneManager derives from it
  and fills the one pure slot (registerSkinnedMesh).
- Animator hierarchy: collada::ISceneNodeAnimator derives from scene::ISceneNodeAnimator; CSceneNodeAnimator, CSceneNodeAnimatorSet and CSceneNodeAnimatorBlender
  derive from it; CSceneNodeAnimatorSynchronizedSet is CSceneNodeAnimatorSet plus the synchronized interface at +0x58 (owner pointer +0x5c); the synchronized
  blender is NOT derived from the blender: it is collada::ISceneNodeAnimator plus the interface at +0x24, and its children are interface pointers whose `owner` is
  the child animator. The virtual IReferenceCounted base sits after the members (0x58 / 0x70 / 0xb4 / 0x84).
- SAnimationAccessor is host-width {animation, outputs, key-search cache}; the animation record and the track classes follow collada/SAnimation.hpp. The animation
  data path stays partial: CAnimationStreamingManager's block registry, the CAnimationBlock constructors and CResFileManager::load are not reconstructed, so
  getAnimationData returns null and the animators carry PARTIAL guards.
- CColladaDatabase is the plain {record, factory} pair; copyDatabase / dropDatabase are the original's inline count updates (the auto-unload is not modelled).
- CMeshBuffer embeds the canonical glitch-video CPrimitiveStream at +0x18 and holds an intrusive_ptr<CVertexStreams> at +0x14 (constructor 0x6b88a8); CAppendMeshBuffer
  derives from it with the full 0x70-byte layout and uses glitch-video's IBuffer and CVertexStreams (map, unmap, reset, updateHomogeneityInternal).
- layouts/scene_members.hpp is gone: the extra members it mapped (animator start/end/radius/speed, texture vector, period, loop, factory cursor control,
  billboard-text font and colour, mesh holder, dummy-node matrix) are on the classes of scene_simple_accessors.hpp. The CTerrainSceneNode patch container at
  +0x178 of that layout conflicted with the accessor bodies and was not taken.

Declaration coverage: every queue.csv function of a canonical class (994 of them) has its address as a `// 0xADDR` comment next to a declaration in a canonical
header; the ones without a body are declared only and say so (D0 deleting destructors are named in the comment of their D1, not declared). The CColladaDatabase
family follows the binary's signatures: the loading constructors are static `create` creators (the class is a plain pair), the file-loading constructScene /
constructNode / constructAnimator overloads are static (a null factory means CColladaDatabase::DefaultFactory), and the index getters (getLight(int) ...) are the
free helpers lightAt / effectAt / geometryAt / materialAt ... because a member named getX would hide the free getX(tables, name) lookups that the construct members
call. The overloads that take SAnimation* beside SChannel* (getBlendableAnimation, getDefaultValue) and `const char*` beside `uint8_t` (getAnimation) are ambiguous with
a literal 0 or nullptr, so callers spell the type.

Tests: the category's 88 tests build and pass from a private copy of the root CMakeLists that leaves dh2_game, vendor-gameswf and net-session-online out of the
link group (the real configuration cannot link tests while those categories do not compile) and puts glitch-video before glitch-core-io in the group.

Open:
- Canonical CLightSceneNode, IBillboard, IBillboardSceneNode and CBillboardSceneNode are written and parked in `deferred/` (not globbed by CMake). They need the
  canonical glitch-video classes (CLight, CMaterial, CVertexStreams, IBuffer) in the same translation unit as ISceneNode, but glitch-core-io's
  `deps/glitch_core_objects.hpp` (reached through `io/interfaces.hpp` from every ISceneNode user) still declares stand-ins for exactly those classes, so the two
  redefine each other. When the stand-ins are replaced (the actions in video.json and core.json), move the four files into include/.../scene and src/scene, then
  retire scene_nodes.hpp's two classes, recon/slice_31's ISceneNode / light / billboard stand-ins, recon/slice_05 and slice_32 light entries, layouts/scene_evidence.hpp.
- The same stand-ins make every test that uses the canonical CVertexStreams or IBuffer fail to link with MinGW when glitch-core-io precedes glitch-video in the link
  group (duplicate definitions of ~IBuffer / ~CVertexStreams between core-io's glitch_io object and the video library): scene_append_mesh_buffer_test,
  recon_slice_27_test and recon_slice_29_test here, and glitch-video's own vertex_streams tests.
- Not canonical yet (sole partial definitions): the Collada node classes (CSceneNode, CRootSceneNode, CMeshSceneNode, CCameraSceneNode, CLightSceneNode, CSkinnedMeshSceneNode,
  CModularSkinnedMeshSceneNode and the game classes that derive from them), the concrete animators and factories of scene_simple_accessors.hpp, the skin technique family
  (collada_misc.hpp, layouts/collada_members.hpp, recon_23, recon_33), CTerrainSceneNode, CShadowVolumeSceneNode, CAnimatedMeshSceneNode, CSkyBoxSceneNode, text nodes.
- recon_08 .. recon_14 keep reduced SAnimationAccessor / SAnimationOutput views; the map names the replacement for each.
- game-anim: AnimatorBlender::getType returns int, the canonical slot returns scene::E_SCENE_NODE_ANIMATOR_TYPE (compile error in game-anim); Animator, AnimatorSet,
  AnimatorSynchronizedBlender and AnimatorSynchronizedSet still hold pad bases and a secondary IReferenceCounted member (see the map).
