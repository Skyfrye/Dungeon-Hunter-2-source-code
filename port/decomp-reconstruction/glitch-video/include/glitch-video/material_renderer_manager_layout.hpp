// Layout of glitch::video::CMaterialRendererManager and of its creation state (glitch::video::
// CMaterialRendererManager::SCreationState, the object at manager +0x90). Offsets only: the original is
// 32-bit ARM, so every value here is a byte offset into the original object, written as a constant and
// never used for pointer arithmetic on the host. Each constant gives the function addresses that fix it.
//
// Evidence keys (all addresses are in libDungeonHunter2.so):
//   ctor    0x5d8f24  CMaterialRendererManager(IVideoDriver*)  (pseudocode and listing read)
//   sctor   0x5d7c5c  SCreationState(char*)                    (pseudocode and listing read)
//   sdtor   0x5dafe8  SCreationState::~SCreationState          (pseudocode read)
//   mkTech  0x5dc824  SCreationState::makeTechnique            (pseudocode read)
//   addRP   0x5d93e8  SCreationState::addRenderPass            (pseudocode read)
//   addPB   0x5d9788  SCreationState::addPinkBind              (pseudocode read, in material_renderer_manager.cpp)
//   findT   0x5dbac0  SCreationState::findTechnique            (pseudocode read)
//   endT    0x5dd664  endTechnique                             (pseudocode read)
//   endMR   0x5dddb4  endMaterialRenderer                      (pseudocode read, first 330 lines)
//   beginMR 0x5ddaec  beginMaterialRenderer                    (pseudocode read, first 75 lines)
//   beginT  0x5dd80c  beginTechnique                           (pseudocode read)
//   createMR 0x5d8b28 createMaterialRenderer                   (pseudocode read)
//   createMI 0x5d9af0 createMaterialInstance                   (pseudocode read)
//   getMI   0x5dd0e4  getMaterialInstance                      (pseudocode read)
//   clrUI   0x5d9db8  clearUnusedInstance                      (pseudocode read)
//   getNID  0x5dbb60  getNameID                                (pseudocode read)
//   getPID  0x5dbc04  getParameterIDInternal                   (pseudocode read)
//   getTID  0x5dbb48  getTechniqueID                           (pseudocode read)
//   addPI   0x5dcd64  addParameterInternal                     (pseudocode read)
//   coll    0x5dc548 / 0x5d98c4 / 0x5d7d40 / 0x5d7d9c          SIDedCollection<CMaterialRenderer> insert, getId,
//                                                              get, getProperties (pseudocode read)
//
// Open questions are listed in the NOTES.md section "dep-material-renderer-manager layout". Anything
// marked "unknown" here has no evidence yet and must not be coded as fact.
#pragma once

#include <cstdint>

namespace glitch::video::materialrenderermanager_layout {

// ---------------------------------------------------------------------------------------------
// CMaterialRendererManager (the manager object, this)
// ---------------------------------------------------------------------------------------------

// +0x00..+0x27: the SIDedCollection<intrusive_ptr<CMaterialRenderer>, ushort, ...> base.
//   +0x00 name map header (rb header), +0x10 map count, +0x18 entry vector begin, +0x1c end,
//   +0x20 storage end, +0x24 next free id (u16, ctor 0x5d8f24 and insert 0x5dc548 at this+36),
//   +0x26 live count (u16, insert 0x5dc548 at this+38).
inline constexpr std::uint32_t kCollectionBase = 0x00;
inline constexpr std::uint32_t kCollectionEntryBegin = 0x18;  // createMI 0x5d9af0 reads a2+24
inline constexpr std::uint32_t kCollectionEntryEnd = 0x1c;    // createMI 0x5d9af0 reads a2+28
inline constexpr std::uint32_t kCollectionNextId = 0x24;      // insert 0x5dc548: this+36 (u16)
inline constexpr std::uint32_t kCollectionCount = 0x26;       // insert 0x5dc548: this+38 (u16)

// +0x28: IVideoDriver* (ctor 0x5d8f24 "STR R6,[R4,#0x28]"; createMR 0x5d8b28 reads a1+40 as the driver).
inline constexpr std::uint32_t kDriver = 0x28;

// +0x2c: uint16 renderer-id table, 17 entries (one per E_MATERIAL_TYPE, index = type value). The ctor
// fills 0x22 bytes with 0xff (memset at 0x5d8f24, 0x2c..0x4d). createMR 0x5d8b28 reads entry
// (a2 = type) at this + 0x2c + 2*type and writes the new renderer id there after creating the default effect.
inline constexpr std::uint32_t kMaterialTypeIdTable = 0x2c;
inline constexpr std::uint32_t kMaterialTypeCount = 17;   // 0x22 bytes / 2, loop bound in createMR
inline constexpr std::uint16_t kNoId = 0xffff;            // empty slot, ctor fill value

// +0x50 and +0x68: two SSharedString -> uint32 red-black maps (getNameID 0x5dbb60 uses
// this + 24*a3 + 80, so a3 = 0 selects +0x50 and a3 = 1 selects +0x68). Each header is 24 bytes:
//   header +0x00 color byte, +0x04 parent (0), +0x08 leftmost (self when empty), +0x0c rightmost (self),
//   +0x10 node count. Ctor writes: +0x50/+0x58/+0x5c/+0x60 and +0x68/+0x70/+0x74/+0x78.
// A node is 0x18 bytes: rb base +0x00..+0x0f, key SSharedString at node +0x10, value uint32 at node +0x14
// (getNameID returns node[5] = node+0x14; a missing name gives -1).
inline constexpr std::uint32_t kNameMapA = 0x50;   // getNameID with a3 = 0
inline constexpr std::uint32_t kNameMapB = 0x68;   // getNameID with a3 = 1
inline constexpr std::uint32_t kNameMapStride = 0x18;
inline constexpr std::uint32_t kNameMapCountOffset = 0x10;  // inside the header (+0x60 and +0x78 for A and B)
inline constexpr std::uint32_t kNameMapKeyOffset = 0x10;    // node
inline constexpr std::uint32_t kNameMapValueOffset = 0x14;  // node

// +0x80, +0x84, +0x88, +0x8c: zeroed by the ctor (0x5d8f24). Use not recovered. Unknown.
inline constexpr std::uint32_t kUnknown80 = 0x80;
inline constexpr std::uint32_t kUnknown84 = 0x84;
inline constexpr std::uint32_t kUnknown88 = 0x88;
inline constexpr std::uint32_t kUnknown8c = 0x8c;

// +0x90: SCreationState* (open renderer under construction, null when none). Read by getTechnique 0x5d7cf4,
// beginTechnique 0x5dd80c, endTechnique 0x5dd664, beginMR 0x5ddaec, endMR 0x5dddb4 and addPI 0x5dcd64
// (reads a1+144 = +0x90). Set by beginMR, cleared by clearCreationState 0x5db15c.
inline constexpr std::uint32_t kCreationState = 0x90;

// +0x94: uint16 id of the renderer being built (0xffff when none). The ctor sets -1. beginMR 0x5ddaec sets
// it from the collection getId (0x5d98c4) and fails when it is not 0xffff. endMR 0x5dddb4 resets it to -1.
inline constexpr std::uint32_t kCurrentRendererId = 0x94;

// ---------------------------------------------------------------------------------------------
// Instance table: the SIDedCollection<CMaterialRenderer> entries (stride 8, indexed by renderer id)
// ---------------------------------------------------------------------------------------------

// Entry i at (entryBegin + 8*i): +0x00 CMaterialRenderer* (refcount at +0x00, see the unknowns), +0x04 the
// name-map node iterator. Evidence: createMI 0x5d9af0, getMI 0x5dd0e4, clrUI 0x5d9db8, get 0x5d7d40,
// getProperties 0x5d7e20 (node + 24).
inline constexpr std::uint32_t kInstanceEntryStride = 8;
inline constexpr std::uint32_t kInstanceEntryNode = 0x04;

// Name-map node of this collection (rb base 0x00..0x0f, key SName char* at +0x10, managed byte at +0x14;
// insert 0x5dc548 writes node +0x14 = 1 when managed). The mapped SProperties record starts at node +0x18
// (getProperties 0x5d7e20 returns node + 24).
inline constexpr std::uint32_t kNodeName = 0x10;
inline constexpr std::uint32_t kNodeManaged = 0x14;
inline constexpr std::uint32_t kNodeProps = 0x18;

// SProperties of the renderer collection, offsets from the record start (node +0x18):
//   +0x00 CMaterial* default instance (getMI 0x5dd0e4 stores at node+0x18; clrUI 0x5d9db8 clears it).
//   +0x08 uint16 E_MATERIAL_TYPE index of the renderer (createMR 0x5d8b28 writes node+0x20).
//   +0x0a uint16 renderer id (getId 0x5d98c4 reads node+0x22; clrUI and clrUIs 0x5d9e94 read node+0x22).
// NOTE: this differs from the shared SIDedCollection template, which puts the id at SIdValue+0x1c (node+0x34).
// The write site of the id (node constructor) is not read yet. See NOTES.md, open question 1.
inline constexpr std::uint32_t kPropsMaterial = 0x00;
inline constexpr std::uint32_t kPropsMaterialType = 0x08;
inline constexpr std::uint32_t kPropsId = 0x0a;
inline constexpr std::uint32_t kNodeId = kNodeProps + kPropsId;  // node +0x22

// ---------------------------------------------------------------------------------------------
// SCreationState (object at manager +0x90). Size 0x58: the ctor (0x5d7c5c) writes up to +0x54, and
// beginMR (0x5ddaec) allocates it with the constant 0x58 (printed by Hex-Rays as dword_58).
// The list heads follow the list pattern: a sentinel node whose next is at +0x00 and prev at +0x04.
// ---------------------------------------------------------------------------------------------
inline constexpr std::uint32_t kStateSize = 0x58;

// +0x00 char* name (sctor 0x5d7c5c; the dtor releases it at 0x5dafe8).
inline constexpr std::uint32_t kStateName = 0x00;
// +0x04 SSharedString of the technique being defined (SData* as u32). Null when no technique is open.
// beginT 0x5dd80c tests it ("already creating one"), makeTechnique 0x5dc824 clears it.
inline constexpr std::uint32_t kStateTechName = 0x04;
// +0x08 / +0x0c: sentinel and tail of the STechnique list (sctor, dtor 0x5dafe8 at this+8, makeTechnique at +12).
inline constexpr std::uint32_t kStateTechniqueList = 0x08;
inline constexpr std::uint32_t kStateTechniqueTail = 0x0c;
// +0x10 / +0x14: sentinel and tail of the pending SRenderPass list (addRenderPass 0x5d93e8 at +0x10, dtor
// clear at this+16). Pending passes are the passes of the technique being built, before makeTechnique.
inline constexpr std::uint32_t kStatePassList = 0x10;
inline constexpr std::uint32_t kStatePassTail = 0x14;
// +0x18: pass-list cursor, a node pointer (0 when none). addRenderPass 0x5d93e8 reuses the node under the
// cursor when one exists; otherwise it appends. The cursor is set from the value at +0x10 (first node or the
// sentinel) and then advanced with **cursor (pseudocode lines 126, 134, 139, 211). makeTechnique sets it to 0.
// The reuse pattern matches the pink cursor at +0x30. The exact append branch is partly read (open question 6).
inline constexpr std::uint32_t kStatePassCursor = 0x18;
// +0x1c / +0x20: sentinel and tail of the pass-array holder list (makeTechnique 0x5dc824, dtor 0x5dafe8).
inline constexpr std::uint32_t kStateHolderList = 0x1c;
inline constexpr std::uint32_t kStateHolderTail = 0x20;
// +0x24: u8 pass count of the technique being built. addRenderPass increments it (0x5d93e8 line 215),
// makeTechnique copies it to the STechnique record and clears it, endMR and endT read it back as the
// number of passes. The ctor clears it. (The existing header calls it the pink counter; the evidence
// says it is the pass count. addPinkBind uses count-1 as the pass index.)
inline constexpr std::uint32_t kStatePassCount = 0x24;
// +0x25: u8 technique count of the renderer under construction. beginT refuses when it is > 0x1f (max 32).
// makeTechnique increments it (0x5dc824). The ctor clears it.
inline constexpr std::uint32_t kStateTechniqueCount = 0x25;
inline constexpr std::uint32_t kMaxTechniques = 0x20;
// +0x28 / +0x2c: sentinel of the pink-bind list (16-byte nodes). +0x30: pink cursor (endT 0x5dd664 reads
// +0x28 as the begin and +0x30 as the end, then resets +0x30 to +0x28). Matches the existing SCreationState.
inline constexpr std::uint32_t kStatePinkList = 0x28;
inline constexpr std::uint32_t kStatePinkTail = 0x2c;
inline constexpr std::uint32_t kStatePinkCursor = 0x30;
// +0x34: header of the parameter-definition map (SSharedString -> SParameterDef, inline value). Same
// header shape as the name maps: +0x34 color, +0x38 root, +0x3c leftmost, +0x40 rightmost, +0x44 count.
// getParameterIDInternal 0x5dbc04 searches S+0x34 and returns node+0x14. The dtor 0x5dafe8 erases this map.
inline constexpr std::uint32_t kStateParamMap = 0x34;
inline constexpr std::uint32_t kStateParamCount = 0x44;
// +0x48, +0x4c, +0x50: zeroed by the ctor. Use not recovered. Unknown.
inline constexpr std::uint32_t kStateUnknown48 = 0x48;
inline constexpr std::uint32_t kStateUnknown4c = 0x4c;
inline constexpr std::uint32_t kStateUnknown50 = 0x50;
// +0x54: u32 running total of 8-byte binding entries of the open technique (addRenderPass 0x5d93e8 line 84,
// "+= entries of the new pass"). Zeroed by the ctor.
inline constexpr std::uint32_t kStateBindingTotal = 0x54;

// ---------------------------------------------------------------------------------------------
// STechnique list node (0x14 bytes, allocated in makeTechnique 0x5dc824 with the constant 0x14).
//   +0x00 next, +0x04 prev, +0x08 STechnique payload:
//     payload +0x00 SSharedString name (SData*: refcount at +0, text at +4; findT 0x5dbac0 compares text)
//     payload +0x04 u8 pass count (node +0x0c; endMR and endT read it as "passes")
//     payload +0x05 u8, zero at creation (node +0x0d); meaning unknown
//     payload +0x08 pointer to the SRenderPass array (node +0x10; 52 * count bytes)
// endT 0x5dd664 takes the payload pointer (node +8) as "Technique".
// ---------------------------------------------------------------------------------------------
inline constexpr std::uint32_t kTechniqueNodeSize = 0x14;
inline constexpr std::uint32_t kTechniquePayload = 0x08;
inline constexpr std::uint32_t kTechniqueName = 0x00;   // payload
inline constexpr std::uint32_t kTechniqueCount = 0x04;  // payload (node +0x0c)
inline constexpr std::uint32_t kTechniquePasses = 0x08; // payload (node +0x10)

// Holder list node (0x0c bytes, makeTechnique). +0x00 next, +0x04 prev, +0x08 the owned pass array (released
// by the dtor 0x5dafe8, one drop per pass). The pass array is the same pointer as STechnique +0x08.
inline constexpr std::uint32_t kHolderNodeSize = 0x0c;
inline constexpr std::uint32_t kHolderArray = 0x08;

// ---------------------------------------------------------------------------------------------
// SRenderPass: a 52-byte record. It is the payload of a pending pass node (+0x08, node size 0x3c) and the
// element of a technique's pass array (stride 52, endMR 0x5dddb4 "52 * i").
//   +0x00..+0x1f: eight 32-bit words copied from the state block passed to addRenderPass (0x5d93e8, the
//                 third argument; the first 32 bytes). Which SRenderState type this is: open question 4.
//   +0x20 IShader* (refcounted; refcount at +4, addRef in addRenderPass, drop in dtor 0x5dafe8)
//   +0x24 int* binding table, 8 bytes per entry (+0 u8 flag, +4 pointer), 8*n bytes, endMR reads it as
//         entries (block +36). The count n comes from the shader's counts (see open question 5).
//   +0x28 u32, zero at creation; meaning unknown
//   +0x2c u16, zero at creation; meaning unknown
//   +0x2e u16, zero at creation; meaning unknown
//   +0x30 u8, one at creation (addRenderPass writes 1, makeTechnique copies it); meaning unknown
// ---------------------------------------------------------------------------------------------
inline constexpr std::uint32_t kPassSize = 52;
inline constexpr std::uint32_t kPassState = 0x00;     // eight words
inline constexpr std::uint32_t kPassShader = 0x20;
inline constexpr std::uint32_t kPassBindings = 0x24;
inline constexpr std::uint32_t kPassUnknown28 = 0x28;
inline constexpr std::uint32_t kPassUnknown2c = 0x2c;
inline constexpr std::uint32_t kPassUnknown2e = 0x2e;
inline constexpr std::uint32_t kPassFlag30 = 0x30;
inline constexpr std::uint32_t kBindingEntryStride = 8;

// Pending pass list node (0x3c = 8 + 52 bytes). +0x00 next, +0x04 prev, +0x08 SRenderPass payload.
inline constexpr std::uint32_t kPassNodeSize = 0x3c;
inline constexpr std::uint32_t kPassNodePayload = 0x08;

// Pink-bind node (0x10 bytes, released as 0x10 in the dtor 0x5dafe8). +0x00 next, +0x04 prev, +0x08 STemporaryID
// (u32), +0x0c u8 flag (pass index, count - 1), +0x0e u16 value. endT 0x5dd664 reads +0x08, +0x0c, +0x0e.
inline constexpr std::uint32_t kPinkNodeSize = 0x10;
inline constexpr std::uint32_t kPinkId = 0x08;
inline constexpr std::uint32_t kPinkFlag = 0x0c;
inline constexpr std::uint32_t kPinkValue = 0x0e;

// Parameter-definition map node: rb base +0x00..+0x0f, key SSharedString at +0x10, mapped SParameterDef at
// +0x14 (inline; getParameterIDInternal returns node+0x14). The size of SParameterDef is not recovered.
inline constexpr std::uint32_t kParamNodeKey = 0x10;
inline constexpr std::uint32_t kParamNodeValue = 0x14;

// Creation-state sizes used by the allocators (values read from the pseudocode, not from a host struct).
inline constexpr std::uint32_t kHolderAllocSize = 0x0c;  // makeTechnique: allocProcessBuffer(&byte_9[3]) = 12
inline constexpr std::uint32_t kTechniqueAllocSize = 0x14;  // makeTechnique: allocProcessBuffer(&dword_14)

}  // namespace glitch::video::materialrenderermanager_layout
