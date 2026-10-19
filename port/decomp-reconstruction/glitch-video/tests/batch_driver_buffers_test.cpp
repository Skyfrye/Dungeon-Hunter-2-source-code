// Host coverage for the three CBatchDriver bodies that were written but never entered:
//   initBuffer    0x58a920  (glitch-video/src/batch_driver.cpp)
//   releaseBuffer 0x589f40
//   flush         0x5a3a20  (vtable 0x977108 slot +0x1fc)
// plus the observability of the base batch state they use (IVideoDriver +0x110 m_batchBuffers / +0x120
// m_batchBuffer / +0x124 m_batchMaterial), which the earlier worker reported as unobservable.
//
// A previous coverage pass proved with gdb breakpoints that the constructor, the destructor and draw were
// entered by no test (the symbols are present in 15 executables because the object is linked in), and its
// batch_driver_test.cpp covers those three. These three bodies are the ones it could not cover. Breakpoints on
// all three of these symbols (see the note at the bottom of this comment) are what this file was written
// against; `gdb -ex 'break _ZN6glitch5video12CBatchDriver13releaseBufferEv' -ex run` on this executable hits
// releaseBuffer and flush (initBuffer is not called here, see the KNOWN DEFECT note).
//
// WHAT THE LISTINGS SAY (decoded from the ARM immediates; this class's Hex-Rays text prints byte offsets as
// DWORD member indices, which is what produced the older, wrong +0x23C table):
//
// releaseBuffer 0x589f40 (25 instructions, 0x589f40..0x589fa4):
//   0x589f44/0x589f50  LDR R3,[R0,#0x120]; CMP; BEQ   - the erase block runs only when the base's
//                      m_batchBuffer is set;
//   0x589f58-0x589f70  the vector at +0x110: _M_erase(begin, end) of
//                      std::vector<boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>, SAllocator<...>>
//                      (the symbol at 0x589f70 names the element type: the VECTOR owns the buffer's use);
//   0x589f74/0x589f78  MOV R3,#0; STR R3,[R4,#0x120] - a RAW store of null, with no drop;
//   0x589f7c-0x589f90  take +0x128 out of the member, store null, and drop it through the virtual
//                      IReferenceCounted::drop (0x31d584) when it was set - the port's m_batchBaker;
//   0x589f94/0x589f98  BL IVideoDriver::clearImplementationDependentData (0x5adfe0) - OUTSIDE the +0x120
//                      guard (0x589f54 branches to 0x589f7c, which falls into it), so it runs on every call.
//
// flush 0x5a3a20 (vtable slot +0x1fc):
//   0x5a3a24  LDR R5,[R0,#0x120]                    - the base's current batch buffer;
//   0x5a3a2c  LDR R3,[R5,#0x50]; CMP; BEQ 0x5a3a90  - the unmap block is gated on CAppendMeshBuffer +0x50,
//             which that class's own header names mappedVertices (its indexUsedBytes is +0x44);
//   0x5a3a38-0x5a3a7c, 0x5a3ad0-0x5a3b34: for the two IBuffers at +0x58 / +0x5c, read the map-count byte at
//             IBuffer +0x13, decrement it while its low 5 bits are > 1, and at 1 call vtable +0x18 (unmapImpl)
//             when IBuffer +0x12 has bit 0x20 (kFlagUnmapCallback), then clear the count - i.e. exactly the
//             port's IBuffer::unmap (glitch-video/src/buffer.cpp, 0x637a68);
//   0x5a3a80-0x5a3a88  store 0 into +0x54 (mappedIndices) and +0x50 (mappedVertices);
//   0x5a3a90-0x5a3abc: the builder hook, NOT WRITTEN in the port (see the note at the end);
//   0x5a3ac4-0x5a3acc  tail call CAppendMeshBuffer::clear (0x6b8878, which zeroes +0x3c and +0x44).
//
// The two seams below are the legitimate kind (a test definition is first on the link line and wins):
//   * glitch::video::CNullDriver::CNullDriver(IVideoDriver*) (0x5b9764) is declared only in the port and
//     link-stubs/link_stubs.csv carries it as an aborting stub, so a CBatchDriver cannot be built without a
//     definition (same seam as batch_driver_test.cpp);
//   * glitch::video::IVideoDriver::clearImplementationDependentData (0x5adfe0) is a `skipped` row whose only
//     definition in the tree is the aborting stub - releaseBuffer's tail call aborts on it, so this file
//     defines it as the recording stub the listing needs. That is what makes releaseBuffer runnable.
//
// KNOWN DEFECT, not covered here on purpose: initBuffer 0x58a920 FREES the buffer it stores.
//   * 0x58a96c-0x58a978 `if (v2) ++*(v2+1)` gives the new CAppendMeshBuffer its first use (CMeshBuffer's
//     constructors store 0 at IReferenceCounted +0x04);
//   * 0x58a98c-0x58a99c the fast push_back path stores the pointer and adds a SECOND use for the vector;
//   * 0x58a9b0-0x58a9b8 drops the temporary, which leaves count 1, held by the vector;
//   * 0x58a9bc-0x58a9c4 then loads m_batchBuffers[0] and stores it into +0x120 with a RAW store (no add-ref).
//   The port's body writes the temporary's drop by hand (`releaseAppendBuffer(buffer);`) although the C++
//   temporary `boost::intrusive_ptr<...>(buffer, true)` already drops itself at the end of the statement, so
//   the count reaches 0 and the object is deleted INSIDE initBuffer; the next line then add-refs freed memory
//   and both m_batchBuffers[0] and m_batchBuffer hold a dangling pointer. Measured with a throwaway probe that
//   overrides operator new/delete and calls initBuffer on a leaked driver:
//       initBuffer: batchBuffer=00000180a6d40d20 front=00000180a6d40d20 vectorSize=1
//       frees during initBuffer = 8; live-count of the stored block = 0  -> the stored block was FREED
//       process exit code 0xC0000374 (STATUS_HEAP_CORRUPTION), from the add-ref write into the freed block.
//   With `releaseAppendBuffer(buffer);` deleted the same probe reports live-count 1 with 0 frees and exits 0,
//   so the one-line deletion is the fix (verified, not applied here: this batch is a coverage batch and the
//   tree's bodies are another worker's). Until it lands, any test that calls initBuffer corrupts the heap, so
//   this file must not call it; the checks to enable afterwards are named in checkInitBufferIsNotCalled().
//
// STILL MISSING in flush (the row stays partial): the builder hook at 0x5a3a90-0x5a3abc. The listing calls the
// +0x234 word through vtable +0x08 with R1 = the append buffer and R2 = R4 + 0x124, i.e. the base's
// m_batchMaterial (video_driver.hpp:377), gated on CAppendMeshBuffer +0x3c (vertexUsedBytes) != 0. That is
// exactly glitch::scene::IEndOfBatchCallback::operator()(const CAppendMeshBuffer&, const
// boost::intrusive_ptr<CMaterial>&) (scene/CAppendMeshBuffer.hpp:112), so +0x234 is the END-OF-BATCH callback
// and +0x238 is the segment-compile callback - the port's header has the two names swapped. Evidence for the
// pairing: CSceneManager::compileInternal 0x58facc does `LDR R0,[R4,#0x1C]` (R0 = the manager's batch driver)
// at 0x58fb00, then STR SP,[R0,#0x234] at 0x58fb64 (the stack SDefaultEndOfBatchCallback, whose vptr is
// written at SP+0, 0x58fb34) and STR R2,[R3,#0x238] at 0x58fb70 with R2 = SP+var_18 = the stack
// SDefaultSegmentCompileCallback (vptr written at 0x58fb0c). Nothing in the port writes either member, so no
// test can reach the hook today.
#include "glitch-video/batch_driver.hpp"

#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_attribute_map.hpp"  // the intrusive_ptr hooks of CVertexAttributeMap
#include "glitch-video/vertex_streams.hpp"

#include <cstdint>
#include <cstdio>

namespace {
int failures = 0;
int clearImplementationDependentDataCalls = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}
}  // namespace

namespace glitch::video {

// ---- seam 1: the base constructor of 0x5b9764 (see the file comment) -----------------------------------------
CNullDriver::CNullDriver(IVideoDriver* other)
    : IVideoDriver(other != nullptr ? other->m_device : nullptr, nullptr, nullptr, nullptr, nullptr,
                   boost::intrusive_ptr<CLight>()) {
    for (core::CMatrix4<float>& matrix : m_transforms) {
        matrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    unk_08 = "NullDriver";
    unk_20 = "Not available on this driver.";
    initDriver();
    init(1, 1, 0);
}

// ---- seam 2: the tail call of 0x589f98 (see the file comment) ------------------------------------------------
void IVideoDriver::clearImplementationDependentData() { ++clearImplementationDependentDataCalls; }

// The append path of 0x5a6fe0 is still not written (link_stubs.csv carries an aborting stub for it, and the
// class vtable / draw reference it). Nothing in this file calls draw, but the definition keeps the executable
// independent of the stub and records what a later body would see.
void CBatchDriver::thisAppendBatch(const boost::intrusive_ptr<const CVertexStreams>& /*streams*/,
                                   const CPrimitiveStream& /*primitives*/,
                                   const boost::intrusive_ptr<const scene::CMeshBuffer>& /*meshBuffer*/) {}

}  // namespace glitch::video

namespace {

// A glitch::IReferenceCounted that counts its own destruction (born with referenceCounter 1, as every
// IReferenceCounted is: core/reference_counted.hpp).
class CountingRefCounted : public glitch::IReferenceCounted {
public:
    explicit CountingRefCounted(int* sink) : sink_(sink) {}
    ~CountingRefCounted() override { ++*sink_; }

private:
    int* sink_;
};

// A glitch::video::IBatchBaker that counts its own destruction: it is how releaseBuffer's +0x128 drop
// (0x589f8c-0x589f90) is observed.
class CountingBaker : public glitch::video::IBatchBaker {
public:
    explicit CountingBaker(int* sink) : sink_(sink) {}
    ~CountingBaker() override { ++*sink_; }

    void bake(const boost::intrusive_ptr<const glitch::video::CVertexStreams>&,
              const glitch::video::CPrimitiveStream&, const glitch::video::CMaterial*, std::uint8_t,
              const std::uint8_t*, const boost::intrusive_ptr<glitch::video::CVertexStreams>&,
              glitch::video::CPrimitiveStream&, const glitch::video::CMaterial*, const std::uint8_t*,
              const glitch::video::IVideoDriver*, std::uint32_t, std::uint32_t, std::uint32_t, std::uint32_t,
              std::uint32_t, std::uint32_t, std::uint32_t) const override {}
    boost::intrusive_ptr<glitch::video::CMaterial> getBatchMaterial(
        const boost::intrusive_ptr<const glitch::video::CMaterial>&, std::uint8_t) const override {
        return boost::intrusive_ptr<glitch::video::CMaterial>();
    }
    const boost::intrusive_ptr<glitch::video::CVertexAttributeMap>& getVertexAttributeMap() const override {
        static const boost::intrusive_ptr<glitch::video::CVertexAttributeMap> empty;
        return empty;
    }
    void configureAppendBuffer(
        const boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>&) const override {}
    bool isCompatible(const boost::intrusive_ptr<const glitch::video::CMaterial>&, std::uint8_t) const override {
        return false;
    }

private:
    int* sink_;
};

// The buffer initBuffer/releaseBuffer/flush work with, as the listing's post-initBuffer state has it: the
// vector at +0x110 owns one use and the handle at +0x120 owns another (the port types +0x120 as an
// intrusive_ptr; the original's raw store at 0x58a9c4 adds no use - see the file comment on initBuffer).
boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer> makeAppendBuffer(glitch::video::CBatchDriver& driver,
                                                                      std::uint32_t vertexCapacity,
                                                                      std::uint32_t indexCapacity) {
    auto* buffer = new glitch::scene::CAppendMeshBuffer(
        vertexCapacity, indexCapacity, &driver, glitch::video::E_BUFFER_USAGE(1), 0xffffffffu);
    return boost::intrusive_ptr<glitch::scene::CAppendMeshBuffer>(buffer, true);
}

}  // namespace

int main() {
    using glitch::IReferenceCounted;
    using glitch::scene::CAppendMeshBuffer;
    using glitch::video::CBatchDriver;
    using glitch::video::CNullDriver;
    using glitch::video::IBatchBaker;

    CNullDriver owner(static_cast<glitch::IDevice*>(nullptr));

    // ---- what the constructor leaves in the base state (the words these bodies read) ---------------------------
    {
        CBatchDriver d(64u, 32u, &owner);
        check(d.m_batchBuffer == nullptr, "the base's +0x120 starts null (ctor 0x5a2e80 clears +0x240, which is "
                                         "this class's own member, not the base's m_batchBuffer)");
        check(d.m_batchBuffers.empty(), "the base's +0x110 vector starts empty");
        check(d.m_batchBaker == nullptr, "the base's +0x128 starts null");
        check(d.m_batchMaterial == nullptr, "the base's +0x124 starts null");
    }

    // ---- releaseBuffer 0x589f40, guard side: a null +0x120 skips the whole erase block -------------------------
    {
        CBatchDriver d(0u, 0u, &owner);
        int destroyed = 0;
        d.m_batchBuffers.push_back(
            boost::intrusive_ptr<IReferenceCounted>(new CountingRefCounted(&destroyed)));
        const int clearCallsBefore = clearImplementationDependentDataCalls;
        d.releaseBuffer();
        check(destroyed == 0, "0x589f50: with a null m_batchBuffer the +0x110 erase block is skipped");
        check(d.m_batchBuffers.size() == 1, "0x589f50: the vector keeps its element (the erase is inside the guard)");
        check(clearImplementationDependentDataCalls == clearCallsBefore + 1,
              "0x589f94: the tail call to clearImplementationDependentData is OUTSIDE the guard and runs anyway");
    }

    // ---- releaseBuffer 0x589f40, both drops: the vector's use and the handle's, and the baker -------------------
    {
        CBatchDriver d(0u, 0u, &owner);
        int destroyed = 0;
        int bakersDestroyed = 0;
        // The post-initBuffer state: the vector at +0x110 and the handle at +0x120 hold one use each.
        {
            boost::intrusive_ptr<IReferenceCounted> handle(new CountingRefCounted(&destroyed));
            d.m_batchBuffers.push_back(handle);
            d.m_batchBuffer = d.m_batchBuffers.front();
        }
        {
            boost::intrusive_ptr<IBatchBaker> baker(new CountingBaker(&bakersDestroyed));
            d.m_batchBaker = baker;
        }
        check(destroyed == 0 && bakersDestroyed == 0, "the state is alive before releaseBuffer");
        const int clearCallsBefore = clearImplementationDependentDataCalls;
        d.releaseBuffer();
        check(destroyed == 1, "the erase (0x589f70) and the +0x120 store (0x589f78) release the buffer exactly once "
                              "between them");
        check(bakersDestroyed == 1, "0x589f88: the +0x128 word is dropped through the virtual drop");
        check(d.m_batchBuffers.empty(), "the base's batch-buffer vector is empty afterwards");
        check(d.m_batchBuffer == nullptr, "+0x120 is null afterwards");
        check(d.m_batchBaker == nullptr, "+0x128 is null afterwards");
        check(clearImplementationDependentDataCalls == clearCallsBefore + 1, "the tail call runs once");
        // A second call has no buffer to erase and no baker to drop, but still tail-calls.
        d.releaseBuffer();
        check(destroyed == 1 && bakersDestroyed == 1, "the second call frees nothing more");
        check(clearImplementationDependentDataCalls == clearCallsBefore + 2,
              "the tail call is not gated on any of the state it just cleared");
    }

    // ---- flush 0x5a3a20, no current buffer: the whole body is inside the +0x120 test ---------------------------
    {
        CBatchDriver d(0u, 0u, &owner);
        d.flush();
        check(true, "flush with a null m_batchBuffer does not fault and touches nothing");
    }

    // ---- flush 0x5a3a20, a real append buffer that was never mapped --------------------------------------------
    {
        CBatchDriver d(64u, 32u, &owner);
        boost::intrusive_ptr<CAppendMeshBuffer> handle = makeAppendBuffer(d, 64u, 32u);
        d.m_batchBuffer = handle;  // the driver's opaque handle (base +0x120)
        CAppendMeshBuffer* buffer = handle.get();
        buffer->vertexUsedBytes = 24;
        buffer->indexUsedBytes = 12;
        check(buffer->mappedVertices == nullptr && buffer->mappedIndices == nullptr, "the buffer was never mapped");
        d.flush();
        check(buffer->vertexUsedBytes == 0 && buffer->indexUsedBytes == 0,
              "0x5a3ac4: the tail call to CAppendMeshBuffer::clear zeroes both used counts");
        check(buffer->mappedVertices == nullptr && buffer->mappedIndices == nullptr,
              "0x5a3a80-0x5a3a88: the two map pointers are null (a body that skipped the block would leave them)");
        d.m_batchBuffer = nullptr;
    }

    // ---- flush 0x5a3a20, a mapped buffer with data: the unmap block runs ---------------------------------------
    {
        CBatchDriver d(64u, 32u, &owner);
        boost::intrusive_ptr<CAppendMeshBuffer> handle = makeAppendBuffer(d, 64u, 32u);
        d.m_batchBuffer = handle;
        CAppendMeshBuffer* buffer = handle.get();

        // The usage argument initBuffer passes (1) reaches both IBuffers, and the stride argument
        // (0xFFFFFFFF, the all-attributes mask) reaches the vertex stream table through CMeshBuffer's
        // attributeMask argument: CVertexStreams::allocate(0xffffffff) sets every one of the 32 bits.
        check(buffer->vertexBuffer->m_usage == 1u && buffer->indexBuffer->m_usage == 1u,
              "CAppendMeshBuffer's usage argument reaches both IBuffers (video::E_BUFFER_USAGE(1))");
        check(buffer->vertexStreams->m_attributeMask == 0xffffffffu,
              "the stride argument 0xFFFFFFFF is the all-attributes stream mask (CMeshBuffer's attributeMask)");
        check(buffer->vertexStreams->m_streamCount0d == 32, "the table has one entry per set bit");

        buffer->beginAppend();  // maps both buffers (access 4) through the driver's own createBuffer
        check(buffer->mappedVertices != nullptr && buffer->mappedIndices != nullptr,
              "beginAppend mapped both buffers, so 0x5a3a2c's +0x50 gate is true");
        check(buffer->vertexBuffer->m_mapCount13 != 0 && buffer->indexBuffer->m_mapCount13 != 0,
              "both IBuffers carry a count of the mapping (IBuffer +0x13)");
        buffer->vertexUsedBytes = 24;
        buffer->indexUsedBytes = 12;

        d.flush();
        check(buffer->mappedVertices == nullptr && buffer->mappedIndices == nullptr,
              "flush zeroes the buffer's two map pointers");
        check(buffer->vertexBuffer->m_mapCount13 == 0 && buffer->indexBuffer->m_mapCount13 == 0,
              "0x5a3a38-0x5a3a7c: BOTH IBuffers were unmapped (the count 1 path, IBuffer::unmap 0x637a68)");
        check(buffer->vertexUsedBytes == 0 && buffer->indexUsedBytes == 0, "clear ran as well");
        d.m_batchBuffer = nullptr;
        // NOT asserted, because the body does not match the listing: 0x5a3a2c tests CAppendMeshBuffer +0x50,
        // which that class's header names mappedVertices, while the body tests indexUsedBytes (+0x44). With
        // mappedVertices set and indexUsedBytes 0 the listing unmaps and this body skips the block. Both cases
        // checked above hold under either reading (the buffers are mapped AND have used bytes).
    }

    // ---- the base's batch state is observable through the base's own members (item 2 of the batch) -------------
    // m_batchBuffers (+0x110) and m_batchBuffer (+0x120) are IVideoDriver's and this file has just read and
    // written them directly. The class's +0x23C / +0x240 / +0x244 / +0x248 are NOT these words: they are
    // CBatchDriver's own members (the base ends at +0x22C - CNullDriver's constructor fills +0x160..+0x22B,
    // its two loop bounds are `this + 352` and `this + 556` - so +0x23C is 16 bytes into the derived class),
    // the same ctor register that stores +0x22C / +0x230 stores them (0x5a2e7c-0x5a2e84), the destructor drops
    // +0x248 and +0x240 (0x5a3d64-0x5a3dbc), and CSceneManager::compileInternal writes +0x23C (0x58fb7c).
    // They are undeclared in the port, so no test can observe them; see the report for the declarations.
    {
        CBatchDriver d(0u, 0u, &owner);
        const std::uint8_t* batchBuffers = reinterpret_cast<const std::uint8_t*>(&d.m_batchBuffers);
        const std::uint8_t* batchBuffer = reinterpret_cast<const std::uint8_t*>(&d.m_batchBuffer);
        const std::uint8_t* batchMaterial = reinterpret_cast<const std::uint8_t*>(&d.m_batchMaterial);
        const std::uint8_t* batchBaker = reinterpret_cast<const std::uint8_t*>(&d.m_batchBaker);
        const std::uint8_t* derived = reinterpret_cast<const std::uint8_t*>(&d.defaultVertexBufferCapacityBytes);
        check(batchBuffers < batchBuffer && batchBuffer < batchMaterial && batchMaterial < batchBaker,
              "the base's batch words keep the +0x110 / +0x120 / +0x124 / +0x128 order");
        check(batchBaker < derived,
              "all of the base's batch state is laid out before this class's first own member (the base is the "
              "first subobject, so +0x110 .. +0x140 cannot be CBatchDriver's +0x23C run)");
    }

    // initBuffer 0x58a920. ENABLED 2026-10-15: the body used to be a use-after-free (it dropped the append
    // buffer twice, so the object was deleted inside initBuffer and this handle then add-ref'd freed memory;
    // measured as 8 frees and exit 0xC0000374 STATUS_HEAP_CORRUPTION). The extra drop has been removed, so
    // these checks can run. They are the reason they were written: 0 of 112 executables had ever entered it.
    {
        CBatchDriver* d = new CBatchDriver(64u, 32u, &owner);  // leaked on purpose: destroying it drops the handle
        d->initBuffer();
        check(d->m_batchBuffers.size() == 1, "initBuffer pushes exactly one buffer on the base's +0x110 vector");
        check(d->m_batchBuffer.get() == d->m_batchBuffers.front().get(),
              "m_batchBuffer is m_batchBuffers.front()");
        check(d->m_batchBuffer->referenceCounter == 2, "the vector and the +0x120 handle each hold one use");
        auto* append = static_cast<CAppendMeshBuffer*>(d->m_batchBuffer.get());
        check(append->vertexCapacityBytes == 64u && append->indexCapacityBytes == 32u,
              "the ctor's +0x22C / +0x230 capacities are CAppendMeshBuffer's two capacity arguments");
        check(append->vertexBuffer->m_usage == 1u, "the injected usage argument");
        check(append->vertexStreams->m_attributeMask == 0xffffffffu, "the injected stride argument");
        d->initBuffer();  // second call: early return
        check(d->m_batchBuffers.size() == 1, "a set +0x120 makes initBuffer return at 0x58a934");
        d->releaseBuffer();
        check(d->m_batchBuffers.empty() && d->m_batchBuffer == nullptr, "releaseBuffer clears the state");
    }

    std::printf("%s\n", failures == 0 ? "batch_driver_buffers: ok" : "batch_driver_buffers: FAILED");
    return failures == 0 ? 0 : 1;
}

// checkInitBufferIsNotCalled(): the checks to enable once initBuffer's one-line fix lands (see the file
// comment). Kept out of main() because the current body corrupts the heap on every call.
//
//   CBatchDriver* d = new CBatchDriver(64u, 32u, &owner);   // leaked: destroying it drops the freed handle
//   d->initBuffer();
//   check(d->m_batchBuffers.size() == 1, "initBuffer pushes exactly one buffer on the base's +0x110 vector");
//   check(d->m_batchBuffer.get() == d->m_batchBuffers.front().get(), "m_batchBuffer is m_batchBuffers.front()");
//   check(d->m_batchBuffer->referenceCounter == 2, "the vector and the +0x120 handle each hold one use");
//   auto* append = static_cast<CAppendMeshBuffer*>(d->m_batchBuffer.get());
//   check(append->vertexCapacityBytes == 64u && append->indexCapacityBytes == 32u,
//         "the ctor's +0x22C / +0x230 capacities are CAppendMeshBuffer's two capacity arguments");
//   check(append->vertexBuffer->m_usage == 1u, "the injected usage argument");
//   check(append->vertexStreams->m_attributeMask == 0xffffffffu, "the injected stride argument");
//   d->initBuffer();                                        // second call: early return
//   check(d->m_batchBuffers.size() == 1, "a set +0x120 makes initBuffer return at 0x58a934");
//   d->releaseBuffer();                                     // and then it is released exactly once
//   check(d->m_batchBuffers.empty() && d->m_batchBuffer == nullptr, "releaseBuffer clears the state");
