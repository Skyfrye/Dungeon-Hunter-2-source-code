// glitch::video::CBatchDriver: the second driver a CSceneManager owns. CSceneManager (+0x1c) allocates it
// (operator new(0x264)) over the video driver's screen size and uses it to compile the static level geometry into
// CBatchMesh batches; Level::_LoadBatching (0x3f2ae4) then writes the two append-buffer capacities into it.
//
// Layout of the original object (libDungeonHunter2.so, ARM, 32-bit). Every offset below was decoded from the ARM
// load/store immediates; the Hex-Rays text for this class is not usable on its own, because for this class it prints a
// byte offset as a DWORD member index (so byte +0x240 comes out as "this + 144" and hex 0x120 as the decimal "this +
// 72"), and that mislabelling is what produced the earlier, wrong offset table here.
//
//   Base: glitch::video::CNullDriver, 0x22C bytes (its own base IVideoDriver is 0x160, then three CMatrix4<float> of
//   68 bytes). Evidence: CBatchDriver::CBatchDriver 0x5a2e20 calls CNullDriver::CNullDriver(this, driver) (0x5b9764)
//   as its first statement, and CNullDriver::CNullDriver fills exactly +0x160 .. +0x22B: the FALL-THROUGH of its
//   three-iteration matrix loop, `STRB R8,[R6,#0x40]; MEMSET(R6,0,0x40); ...; STRB R5,[R6,#0x40]; ADD R6,R6,#0x44;
//   CMP R6,R10; BNE` (0x5b97ec-0x5b980c, R6 = this + 0x160 after the `STR R3,[R6],#0x160` at 0x5b97e4), writes
//   R6+0x00 .. R6+0x43 for R6 = this + 0x160, +0x1A4, +0x1E8 and leaves the cursor at this + 0x22C. So the base is
//   +0x000 .. +0x22B and the derived object's own storage starts at +0x22C, with a 0x10-byte alignment hole between
//   the base's last byte and this class's second four-word run at +0x23C.
//   Total size 0x264 (original): the CSceneManager constructor 0x58d908 does `MOV R0,#0x264; BL operator new` before
//   calling 0x5a2e20 (asm 0x58d994-0x58d9bc). The four words are +0x23C (callback), +0x240, +0x244, +0x248, then
//   segmentSize +0x250 (three words), segmentSizeMode +0x25C (one byte) and maxIndices +0x260 (one word), so the
//   declared range ends at +0x264 and +0x24C is the one word left unclaimed.
//   HOST SIZE: the port's class is NOT 0x264 bytes and cannot be - CNullDriver is already 0x2F8 on this 64-bit host
//   (its IVideoDriver subobject alone is 0x228 against the original's 0x160), and a boost::intrusive_ptr is 8 bytes
//   here against the original's 4. The declarations below are therefore ordered for the ORIGINAL layout and named by
//   the ORIGINAL offsets, and the port does not attempt to reproduce them: as before this change the derived members
//   start at host offset 0x2F4 (after CNullDriver's 0x2F8, with the same kind of 4-byte hole), and declaring the four
//   words moves them +0x20. No correct 64-bit translation of the 32-bit offsets exists, and nothing in the tree reads
//   a CBatchDriver member by hard-coded byte offset (the one reader that had to consume such offsets,
//   CSceneManager::compileInternal, is unwritten and keeps typed member access), so only the ORDER and the TYPES are
//   reproduced here. The 0x264-byte claim belongs to the original and is kept only as the historical note above.
//
// The APPEND-BUFFER state is NOT declared on this class: it lives in the driver object, and video_driver.hpp already
// declares and types all of it (see the +0x10c .. +0x140 rows of that header): +0x10c m_maxBatchIndices, +0x110
// m_batchBuffers (std::vector<intrusive_ptr<IReferenceCounted>>, the CAppendMeshBuffers built for this driver),
// +0x120 m_batchBuffer (the current one), +0x124 m_batchMaterial, +0x128 m_batchBaker, +0x12c / +0x130
// m_batchMaterialHeap / m_batchSourceMaterial and +0x134 m_batchTechnique. Decoding initBuffer 0x58a920 settles that
// that buffer is not a member of CBatchDriver: initBuffer is a member function whose `this` is R0/R4 - the same
// register its two capacities at +0x22C / +0x230 come from, which the constructor's own stores prove is the complete
// object - and it reads and writes +0x110 / +0x114 / +0x118 / +0x120 only, i.e. inside the base. flush 0x5a3a20
// agrees: it reads a member of this class (+0x234, the callback) and +0x120 (the current batch buffer) from the same
// `this`. So the base stores the buffer as an opaque reference-counted handle and `drop()` is virtual, which is why
// the concrete CAppendMeshBuffer needs no declaration here and dies correctly.
//
// The +0x23C .. +0x248 run IS this class's own state, a SECOND and different batch state from the base's
// +0x110 / +0x120 / +0x124 / +0x128 (settled by the coverage batch; the earlier "these are the base's, read through
// a biased `this`" reading was wrong, and so was the one before it that declared them at the wrong offsets):
//   * thisAppendBatch 0x5a6fe0 reads +0x23C, +0x240, +0x244 and +0x248 from its own `this` - the register that also
//     never reaches the base's +0x110 run - while initBuffer and flush read the base's +0x120 from the same class;
//   * the constructor clears +0x23C / +0x240 / +0x248 in the same instruction run that stores +0x22C / +0x230
//     (0x5a2e7c / 0x5a2e80 / 0x5a2e84; it writes +0x244 not at all);
//   * the destructor releases +0x248 through the virtual drop (0x5a3d64 / 0x5a3d7c) and +0x240 inline with
//     CVertexStreams::~CVertexStreams (0x5a0a1c) plus free (0x5a3d80-0x5a3dbc);
//   * CSceneManager::compileInternal 0x58facc writes +0x23C from its FIFTH argument (that function is
//     compileInternal(ISceneNode*, CBatchSceneNode*, bool, ISegmentCompileCallback*, ISplitSegmentChoiceCallback*),
//     so r0..r3 take `this` and the first three; the first stack word arg_0 is the ISegmentCompileCallback and
//     `LDR R2,[SP,#0x44+arg_4]` - the second stack word - is the ISplitSegmentChoiceCallback. Hex-Rays reads the
//     same store as `*(_DWORD *)(driver + 572) = a6` with a6 the last parameter).
// There is no second base and no bias: the offsets are literal. The concrete types are declared below.
//
// MEMBERS OF THIS CLASS (only these groups belong to it):
//   +0x22C u32 defaultVertexBufferCapacityBytes   ctor 0x5a2e6c stores argument 1; initBuffer 0x58a950 reads it
//   +0x230 u32 defaultIndexBufferCapacityBytes    ctor 0x5a2e70 stores argument 2; initBuffer 0x58a954 reads it
//           Both arguments come from CSceneManager::CSceneManager, which passes the two words of the block at
//           IVideoDriver +0xd4 (= IDevice* m_device; IDevice::creationParameters is at +0x5c), so they are
//           device->creationParameters.bytes + 0x40 and + 0x44 (asm 0x58d994-0x58d9a0). Level::_LoadBatching writes
//           (unsigned)((double)size * 1.02) into them at 0x3f2c0c (vertex) and 0x3f2cd4 (index).
//   +0x234 scene::IEndOfBatchCallback*  the callback flush invokes through vtable +0x08 (0x5a3a90-0x5a3abc).
//           PROVEN TWICE against compileInternal 0x58facc, register by register and in its own Hex-Rays text:
//           (a) IDA names the two stack objects - `_DWORD v14[5]; // [sp+0h]` and `_DWORD v20[6]; // [sp+2Ch]`;
//           (b) `v14[0] = off_9762B8` (0x58fb34) and off_9762B8 = _ZTVN6glitch5scene26SDefaultEndOfBatchCallbackE+8
//           (that symbol is at 0x9762b0), while `v20[0] = off_9762A0` (0x58fb0c) and off_9762A0 =
//           _ZTVN6glitch5scene30SDefaultSegmentCompileCallbackE+8 (0x976298);
//           (c) `*(_DWORD *)(driver + 564) = v14` (0x58fb64) and `*(_DWORD *)(driver + 568) = v20` (0x58fb70),
//           i.e. +0x234 = the SDefaultEndOfBatchCallback object and +0x238 = the SDefaultSegmentCompileCallback one;
//           (d) `SDefaultEndOfBatchCallback::finalize(v14)` is called on the v14 object (hexrays line 4182; asm
//           0x58fbfc `MOV R0,SP` + 0x58fc00 BL ...finalize), and v14 IS the +0x234 value.
//           So +0x234 is the END-OF-BATCH slot and +0x238 the segment-compile one. A later note here flipped the
//           two and called it a correction; it is wrong, and the four register-level facts above are the check.
//           The constructor clears both (0x5a2e74 / 0x5a2e78).
//   +0x238 scene::ISegmentCompileCallback*  see (b), (c) above: the stack SDefaultSegmentCompileCallback object.
//           thisAppendBatch calls this slot once per emitted record through vtable +0x08.
//   +0x23C scene::ISplitSegmentChoiceCallback*  thisAppendBatch null-tests it (0x5a6fec `LDR R12,[R0,#0x23C]`) and
//           branches to 0x5a83e0 while it is null (0x5a7034), then calls it through vtable +0x08 with the arguments
//           (0, 0, &this->m_currentVertices) - 0x5a70b4 `MOV R1,#0`; 0x5a70b8 `MOV R2,R1`; 0x5a70bc
//           `LDR R3,[LR,#0x23C]`; 0x5a70c0 `MOV R0,R3`; 0x5a70c8 `ADD R3,LR,#0x240`; 0x5a70d0 `LDR PC,[R12,#8]` -
//           and the return value gates the clustering block (0x5a70d4 `CMP R0,#0`). The Hex-Rays text is the same
//           call: `(**(vtable+8))(this+0x23C, 0, 0, (int*)this + 144)`. compileInternal stores its FIFTH argument
//           here (0x58fb7c). The constructor clears it (0x5a2e7c); the destructor never touches it.
//   +0x240 intrusive_ptr<const CVertexStreams>  the streams thisAppendBatch is appending, and the argument it hands
//           the choice callback as `&this->m_currentVertices` (0x5a70c8). Rebound twice (0x5a7050-0x5a7068,
//           0x5a7cb8-0x5a7ce8) and released inline by the destructor (0x5a3d80-0x5a3dbc: decrement the count word at
//           the pointee's +0x00, CVertexStreams::~CVertexStreams 0x5a0a1c at zero, then free). ctor clears it.
//   +0x244 const CPrimitiveStream*  non-owning, and the constructor does NOT write it. thisAppendBatch stores its
//           second parameter here on the entry path (`STR R0,[R1,#0x244]` with R0 = the spilled argument 2, asm
//           0x5a707c) and stores a decimation-helper pointer here on the other path (asm 0x5a7ec4 region). It is a
//           raw pointer, not a counted one.
//   +0x248 intrusive_ptr<const scene::CMeshBuffer>  the batch buffers being compiled. thisAppendBatch add-refs the
//           pointee's +0x04 count, stores it here and drops the previous value (0x5a7098-0x5a70ac, 0x5a7cxx); the
//           destructor loads it and calls the virtual drop (0x5a3d64 / 0x5a3d7c). ctor clears it.
//   +0x24C u32  the only word of the class the object's 0x264 bytes leave unaccounted for (see the arithmetic
//           below): no listing read in this batch names it. Not declared, so the port does not invent a field.
//   +0x250 vector3d<float> segmentSize          ctor clears the three words at 0x5a2e60 / 0x5a2e64 / 0x5a2e54
//   +0x25C bool segmentSizeMode   ctor clears the byte at 0x5a2e88 (a full STR, the zeroing idiom); thisAppendBatch
//           loads it into r1 at 0x5a8874 and branches on it - non-zero selects the kdTreeClustering path, zero the
//           spatialGridClustering path (asm 0x5a8858-0x5a88a8).
//   +0x260 u32 maxIndices   the constructor does NOT write it; thisAppendBatch reads it as a byte at 0x5a83fc
//           (`LDRB R3,[R12,#0x260]`) while the mode byte is set, and divides by the word `v149 * v180 /
//           *((_DWORD *)a1 + 152)` at 0x5a8880. The CSceneManager compile entry points write it.
#pragma once

#include <cstdint>
#include <map>
#include <utility>
#include <vector>

#include "core-platform/stlport_alloc.hpp"
#include "glitch-video/compile_callbacks.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch {
class IReferenceCounted;
}  // namespace glitch

namespace glitch::video {

class IVideoDriver;

}  // namespace glitch::video

namespace glitch::scene {
class CBatchSceneNode;  // the node the compile call comes from
// IEndOfBatchCallback, ISegmentCompileCallback and ISplitSegmentChoiceCallback are declared in
// glitch-scene-collada-gui headers (CAppendMeshBuffer.hpp and scene_simple_accessors.hpp), which this header must not
// include - the scene classes include glitch-video, not the other way round. They are only used through pointers
// below, so they are re-declared here (a repeated class declaration is legal). The append buffer itself needs no
// declaration at all: the base IVideoDriver holds it as an intrusive_ptr<glitch::IReferenceCounted>.
class IEndOfBatchCallback;
// ISegmentCompileCallback, ISplitSegmentChoiceCallback and SCompileInfo: glitch-video/compile_callbacks.hpp.
}  // namespace glitch::scene

namespace glitch::video {

// The batch driver of CSceneManager. It derives from CNullDriver: most of its work is the append path (thisAppendBatch
// + flush) that turns draw calls into the growable CAppendMeshBuffer, and the compile call the CBatchSceneNode issues
// for every batch of a CBatchMesh.
class CBatchDriver : public CNullDriver {
public:
    // 0x5a2e20 (_ZN6glitch5video12CBatchDriverC1EjjPNS0_12IVideoDriverE) and 0x5a2ed8 (C2, same body).
    // Reconstructed in glitch-video/src/batch_driver.cpp: the base constructor runs with the owning driver, the
    // +0x22C / +0x230 capacities and the cleared members above are stored, IVideoDriver::setOption(0x100, true)
    // (0x5a90b0) is called on this object, and the 25 low capability bits (IVideoDriver +0x9c) of the owning driver
    // are copied into this object's own capability word.
    CBatchDriver(uint32_t vertexBufferCapacityBytes, uint32_t indexBufferCapacityBytes, IVideoDriver* driver);
    // 0x5a3d50 (D1); 0x5a3dd8 is the compiler's deleting thunk (D0). Reconstructed: the vtable is reset, the word at
    // +0x248 is dropped, the count of the object at +0x240 is released inline (and CVertexStreams::~CVertexStreams
    // runs at zero), then the CNullDriver base is destroyed. Both words ARE declared here now (see the members
    // below), so the compiler's own reverse-order member teardown performs exactly those two drops, in that order
    // (+0x248 before +0x240), ahead of the base's destructor.
    ~CBatchDriver() override;

    // 0x58a920 _ZN6glitch5video12CBatchDriver10initBufferEv
    // Reconstructed in glitch-video/src/batch_driver.cpp: when the base's +0x120 (m_batchBuffer) is null, allocates
    // operator new(0x70), runs CAppendMeshBuffer(+0x22C, +0x230, this, 1, static_cast<uint32_t>(-1)) (0x6b8cb4),
    // pushes it on the base's +0x110 vector and stores it at +0x120. Needs no glitch-scene type: the handle is
    // opaque.
    void initBuffer();
    // 0x589f40 _ZN6glitch5video12CBatchDriver13releaseBufferEv
    // Reconstructed in glitch-video/src/batch_driver.cpp: erases the base's +0x110 vector when +0x120 is set, clears
    // +0x120, drops the base's +0x128 and calls IVideoDriver::clearImplementationDependentData (0x5adfe0, itself a
    // skipped row, so this adds an undefined symbol the integrator already tracks).
    void releaseBuffer();
    // 0x5a6fe0 (0x1aa0 bytes): the append path. Reconstructed in glitch-video/src/batch_driver.cpp (choice callback, clustering by
    // spatialGridClustering 0x5a5860 or kdTreeClustering 0x5a6568 according to the mode byte at +0x260, per-cluster record
    // building, then the emit loop into the append buffer through the batch baker).
    void thisAppendBatch(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                         const boost::intrusive_ptr<const scene::CMeshBuffer>& meshBuffer);
    // 0x5a3a20 _ZN6glitch5video12CBatchDriver5flushEv (vtable 0x977108 slot +0x1fc, the IVideoDriver::flush slot)
    // Reconstructed in glitch-video/src/batch_driver.cpp: the listing's unmap half, the +0x234 END-OF-BATCH
    // callback call (0x5a3a90-0x5a3abc, vtable +0x08, gated on the append buffer's +0x3c vertexUsedBytes) and the
    // trailing clear() are all written. The +0x234 slot IS the IEndOfBatchCallback one (register-level proof in the
    // member table above); the note that called it the segment-compile slot had the two swapped. A later note in
    // that source called the call's second argument the base's batch-buffer vector, which was wrong too: it is
    // +0x124 m_batchMaterial. Declared with `override` because it is the base's slot.
    void flush() override;

    // ---- vtable slots this class overrides -------------------------------------------------------------------
    // 0x5a8a80, slot +0x58 of the vtable at 0x977108: a two-instruction thunk (`LDR R3,[SP,#arg_0]; B 0x5a6fe0`) into
    // thisAppendBatch, i.e. IVideoDriver::draw with an extra mesh-buffer argument. Written (it forwards to thisAppendBatch). `flush` above
    // is the other overridden slot.
    void draw(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
              CDriverBinding** binding, const boost::intrusive_ptr<const scene::CMeshBuffer>& meshBuffer) override;

    // THERE IS NO CBatchDriver COMPILE ENTRY POINT - the declaration that used to stand here was a misreading of
    // the object whose vtable the two call sites dispatch through, and it was removed rather than given a body
    // (emitting it would be a rule-10 violation: no such symbol exists in the original, and glitch-video/queue.csv
    // has no row for it). The call sites and what they really call:
    //   registerSolidBatches 0x57e800: 0x57e894 `LDR R9,[R7,#0x110]` - node+0x110 is ISceneNode::sceneManager
    //   (ISceneNode.hpp:259), NOT the batch driver; 0x57e8a0 `LDR LR,[R9]`; 0x57e8ac `LDR R6,[LR,#0x24]`;
    //   0x57e8e4 `BLX R6` with R0 = the manager, R1 = the node, R2 = the batch material, R3 = the batch index and
    //   the stack words 4 / 0 / 0x7fffffff.
    //   registerTransparentBatches 0x57ea70: 0x57eb40 `LDR R11,[R12,#0x24]` and 0x57eb84 `BLX R11` with the stack
    //   words 8 / the segment centre / the segment's +0x22 word.
    // The manager's primary vptr is `_ZTVN6glitch5scene13CSceneManagerE (0x9766d8) + 0x1C` = 0x9766f4 (stored by
    // its own constructor at 0x58d974-0x58d984), and the word at 0x9766f4 + 0x24 is
    // _ZN6glitch5scene13CSceneManager24registerNodeForRenderingEPNS0_10ISceneNodeERKN5boost13intrusive_ptrINS_5video9CMaterialEEEPvNS0_24E_SCENE_NODE_RENDER_PASSEPKNS_4core8vector3dIfEEi
    // (0x58f348, ledgered `reconstructed`). Six arguments after `this` - node, material, userData, the render pass
    // (4 = ESNRP_SOLID, 8 = ESNRP_TRANSPARENT), the camera position and the max index count - which is exactly the
    // shape both call sites build. CBatchDriver's own word at 0x97712c is +0x24 of ITS vtable
    // (_ZTVN6glitch5video12CBatchDriverE = 0x977100, vptr 0x977108) and holds IVideoDriver::draw3DTriangle
    // (0x5a8bdc), an inherited slot - which is what the earlier note saw and mistook for a compile hook.

    // ---- members (original 32-bit offsets; the base IVideoDriver is 0x160 bytes, CNullDriver ends at +0x22C) ------
    uint32_t defaultVertexBufferCapacityBytes = 0;  // +0x22C
    uint32_t defaultIndexBufferCapacityBytes = 0;   // +0x230

    // +0x234 / +0x238, in original order: the END-OF-BATCH callback is +0x234 and the SEGMENT-COMPILE one +0x238.
    // compileInternal 0x58facc stores its stack SDefaultEndOfBatchCallback object at +0x234 (`STR SP,[R0,#0x234]`,
    // asm 0x58fb64: SP is the object whose vptr is off_9762B8 = _ZTVN6glitch5scene26SDefaultEndOfBatchCallbackE+8,
    // and SDefaultEndOfBatchCallback::finalize runs on that same object at 0x58fc00) and its stack
    // SDefaultSegmentCompileCallback object at the next word (asm 0x58fb70; that object's vptr is off_9762A0 =
    // _ZTVN6glitch5scene30SDefaultSegmentCompileCallbackE+8, built at 0x58fb0c). flush 0x5a3a20 calls the +0x234 word
    // through vtable +0x08 with (the buffer, &m_batchMaterial), i.e. exactly IEndOfBatchCallback::operator()
    // (CAppendMeshBuffer.hpp:112) - the argument shape settles the type as well as the offset. Both are cleared by
    // the constructor (0x5a2e74 / 0x5a2e78).
    scene::IEndOfBatchCallback* endOfBatchCallback = nullptr;          // +0x234, the slot flush calls
    scene::ISegmentCompileCallback* segmentCompileCallback = nullptr;  // +0x238, the slot thisAppendBatch calls

    // +0x23C .. +0x248: this class's OWN batch state, a different state from the base's +0x110 / +0x120 / +0x124 /
    // +0x128 (the evidence is in the file comment and in the member table). Recovered types, in original order:
    //
    //   +0x23C  the split-segment choice callback. thisAppendBatch returns at once while it is null (0x5a6fec) and
    //           otherwise calls it through vtable +0x08 as `(*cb)(streams, &m_currentVertices)` - R0 = the callback,
    //           R1 = the streams argument, R2 = 0, R3 = this + 0x240 (0x5a70b0-0x5a70d4). compileInternal stores its
    //           fourth argument here (0x58fb7c). The constructor clears it (0x5a2e7c).
    //   +0x240  the vertex streams being appended, handed to that callback by address. The constructor clears it
    //           (0x5a2e80) and the destructor releases it inline through CVertexStreams::~CVertexStreams (0x5a3d80-
    //           0x5a3dbc, i.e. the count word at the pointee's +0x00 and a free), so it is a counted handle and the
    //           pointee type is proven. thisAppendBatch rebinds it (0x5a7050-0x5a7068, 0x5a7cb8-0x5a7ce8).
    //   +0x244  a raw, NON-owning pointer; the constructor does not write it at all (the run 0x5a2e7c-0x5a2e84 clears
    //           +0x23C, +0x240 and +0x248 and skips this word). thisAppendBatch stores its own primitives parameter
    //           there on the entry path (`STR R0,[R1,#0x244]`, R0 = the spilled argument 2, asm 0x5a707c) and a
    //           computed pointer on the other path (asm 0x5a7ec4); a stream VIEW is also taken by address
    //           (`ADD R0, this, #0x240` at 0x5a773c). Declared with no initialiser, exactly as the listing leaves it.
    //   +0x248  the batch buffers being compiled. thisAppendBatch add-refs the pointee's +0x04 count, stores it here
    //           and drops the previous value (0x5a7098-0x5a70ac, 0x5a7cxx); the destructor loads it and calls the
    //           virtual drop (0x5a3d64 / 0x5a3d7c), so it is a counted handle.
    //   +0x24C  no listing read in this batch names it, so no field is invented for it. (In the original the four
    //           words above end at +0x24B, making +0x24C the one word of the 0x264-byte object left unclaimed.)
    scene::ISplitSegmentChoiceCallback* m_choiceCallback = nullptr;  // +0x23C
    // +0x240 .. +0x24B: the three-word SCompileInfo block thisAppendBatch rebinds and hands to both callbacks by address
    // (vertices +0x240 counted, primitives +0x244 raw and never cleared by the constructor, meshBuffer +0x248 counted).
    scene::SCompileInfo m_compileInfo;                               // +0x240

    // +0x250, +0x25C and +0x260. thisAppendBatch reads the mode as a BYTE at +0x260 (LDRB R3,[R12,#0x260], asm 0x5a83fc
    // and 0x5a8858) and maxIndices as the WORD at +0x25C (`LDR R3,[LR,#0x25C]` 0x5a840c, `LDR R1,[R0,#0x25C]` 0x5a8874);
    // the constructor clears +0x250/+0x254/+0x258 and +0x25C (`STR R6,[R4,#0x25C]`, 0x5a2e88) and does not write +0x260.
    // (The earlier version of this header had the two swapped.)
    core::vector3d<float> segmentSize;  // +0x250, cleared by the constructor
    uint32_t maxIndices = 0;            // +0x25C, cleared by the constructor
    bool segmentSizeMode = false;       // +0x260, byte; non-zero selects the kd-tree clustering path
};


// 0x5a5860 / 0x5a6568 (src/batch_clustering.cpp): the two primitive clusterings thisAppendBatch picks between.
void spatialGridClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                           const std::vector<std::pair<unsigned int, core::aabbox3d<float>>,
                                             core::SAllocator<std::pair<unsigned int, core::aabbox3d<float>>>>& boxes,
                           const core::vector3d<float>& cellSize);
void kdTreeClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                      const std::vector<std::pair<unsigned int, core::aabbox3d<float>>,
                                        core::SAllocator<std::pair<unsigned int, core::aabbox3d<float>>>>& boxes,
                      unsigned int perCluster, const core::aabbox3d<float>& bounds);
// 0x5a5bd4 (src/ok2-Clustering.cpp): k-means over the box centres with k rounded up to a power of two; the initial means come
// from distributeMeans (0x5a33a8), which splits the box `depth` times, cycling the axis, and puts a random point into each
// leaf box until `remaining` points have been made.
void kMeansClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                      const std::vector<std::pair<unsigned int, core::aabbox3d<float>>,
                                        core::SAllocator<std::pair<unsigned int, core::aabbox3d<float>>>>& boxes,
                      unsigned int clusterCount, const core::aabbox3d<float>& bounds);
void distributeMeans(unsigned int depth, const core::aabbox3d<float>& box,
                     std::vector<core::vector3d<float>, core::SAllocator<core::vector3d<float>>>& means, unsigned int axis,
                     unsigned int& remaining);

}  // namespace glitch::video
