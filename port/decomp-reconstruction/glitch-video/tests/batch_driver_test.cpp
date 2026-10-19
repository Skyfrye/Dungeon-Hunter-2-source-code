// Host coverage for glitch::video::CBatchDriver (glitch-video/src/batch_driver.cpp): the constructor (0x5a2e20 C1 /
// 0x5a2ed8 C2), the destructor (0x5a3d50 D1) and draw (0x5a8a80).
//
// Nothing in the tree reached any of the three before this file. The only port call site of the constructor is
// CSceneManager's (glitch-scene-collada-gui/src/scene/CSceneManager_virtuals.cpp:93, makeBatchDriver), and that runs
// only when the manager is handed a non-null video driver; all seven scene test classes pass nullptr. draw and the
// destructor have no call site at all. Evidence: nm shows the constructor / destructor / draw symbols present in 15
// glitch-video and glitch-scene test executables, and gdb with breakpoints on all three reports no hit in any of them.
//
// Two seams are needed, and both are the "legitimate seam" the CMakeLists comment describes (a test definition is
// first on the link line and wins over the library's):
//
//  * glitch::video::CNullDriver::CNullDriver(IVideoDriver*) (0x5b9764) is DECLARED ONLY in the port
//    (null_driver.hpp:70): nm on build/tb-int/libdh2_glitch_video.a shows
//    `U _ZN6glitch5video11CNullDriverC2EPNS0_12IVideoDriverE` and link-stubs/link_stubs.csv carries it as an aborting
//    stub. So CBatchDriver's base subobject cannot be built at all without a definition - the constructor body as
//    written is unreachable in the current tree, and this definition is what makes it reachable. It is the library's
//    own IDevice* stand-in shape (null_driver.cpp:10) over the owning driver's device; the only difference from
//    0x5b9764 is the shader manager, which the port does not create on either path (null_driver.hpp:63).
//  * draw (0x5a8a80) and thisAppendBatch (0x5a6fe0) are covered with the real append path by batch_append_test.cpp.
#include "glitch-video/batch_driver.hpp"

#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"  // the pointee must be complete for intrusive_ptr's release
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_streams.hpp"

#include <cstdint>
#include <cstdio>

namespace {


}  // namespace

namespace glitch::video {

// ---- seam 1: the base constructor of 0x5b9764 (see the file comment) --------------------------------------------
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

}  // namespace glitch::video

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

// A glitch::IReferenceCounted that counts its own destruction: it is how the destructor's teardown of the base's
// batch state is observed.
class CountingRefCounted : public glitch::IReferenceCounted {
public:
    explicit CountingRefCounted(int* sink) : sink_(sink) {}
    ~CountingRefCounted() override { ++*sink_; }

private:
    int* sink_;
};

}  // namespace

int main() {
    using glitch::video::CBatchDriver;
    using glitch::video::CNullDriver;
    using glitch::video::CVertexStreams;
    using glitch::video::IVideoDriver;

    // The owning driver. Its two capability words below are chosen so that bits 25..31 differ between the two owners
    // (0xFC vs 0x02): if the constructor copied all 32 bits, the two batch drivers' high words would differ.
    CNullDriver ownerA(static_cast<glitch::IDevice*>(nullptr));
    CNullDriver ownerB(static_cast<glitch::IDevice*>(nullptr));
    CNullDriver plain(static_cast<glitch::IDevice*>(nullptr));
    ownerA.m_capabilities = 0xFC000001u;  // bits 25..31 = 0xFC, bits 0..24 = 0x0000001
    ownerB.m_capabilities = 0x02000002u;  // bits 25..31 = 0x02, bits 0..24 = 0x0000002

    // ---- constructor 0x5a2e20 -----------------------------------------------------------------------------------
    CBatchDriver a(0x00001111u, 0x00002222u, &ownerA);
    CBatchDriver b(0x00003333u, 0x00004444u, &ownerB);

    // +0x22C and +0x230 hold the two capacity arguments (asm 0x5a2e6c / 0x5a2e70).
    check(a.defaultVertexBufferCapacityBytes == 0x00001111u, "ctor stores the vertex capacity at +0x22C");
    check(a.defaultIndexBufferCapacityBytes == 0x00002222u, "ctor stores the index capacity at +0x230");
    check(b.defaultVertexBufferCapacityBytes == 0x00003333u, "the second driver gets its own vertex capacity");
    check(b.defaultIndexBufferCapacityBytes == 0x00004444u, "the second driver gets its own index capacity");

    // The cleared run: +0x234 and +0x238 (asm 0x5a2e74-0x5a2e84) and the segment state at +0x250..+0x260
    // (0x5a2e54-0x5a2e88). The listing also clears +0x23C, +0x240 and +0x248; those words are not declared on the
    // port's class at all (batch_driver.hpp:166-173, the layering decision), so they cannot be read here.
    check(a.segmentCompileCallback == nullptr, "ctor clears +0x234");
    check(a.endOfBatchCallback == nullptr, "ctor clears +0x238");
    check(a.segmentSize.X == 0.0f && a.segmentSize.Y == 0.0f && a.segmentSize.Z == 0.0f,
          "ctor clears the three words of segmentSize (+0x250)");
    check(a.segmentSizeMode == false, "the mode byte (+0x260) starts false (the ctor does not write it)");
    check(a.maxIndices == 0, "maxIndices (+0x25C) is zero");

    // setOption(0x100, true) (0x5a90b0) ORs 0x100 into this object's own option word (IVideoDriver +0x88).
    check((a.getOptionFlags() & 0x100u) != 0u, "ctor raises option bit 0x100 on itself");
    check((b.getOptionFlags() & 0x100u) != 0u, "the second driver raises it too");
    check(a.getOptionFlags() == (plain.getOptionFlags() | 0x100u), "setOption ORs and changes nothing else");

    // The 25-bit capability copy (loop at 0x5a2ea0-0x5a2ec4): bits 0..24 come from the owning driver, bits 25..31
    // are left as the base constructor made them, NOT taken from the owner.
    check((a.m_capabilities & 0x01FFFFFFu) == (ownerA.m_capabilities & 0x01FFFFFFu),
          "bits 0..24 are copied from the owning driver (owner A)");
    check((b.m_capabilities & 0x01FFFFFFu) == (ownerB.m_capabilities & 0x01FFFFFFu),
          "bits 0..24 are copied from the owning driver (owner B)");
    check((a.m_capabilities & 0x01FFFFFFu) == 0x00000001u, "owner A's low 25 bits land unchanged (1)");
    check((b.m_capabilities & 0x01FFFFFFu) == 0x00000002u, "owner B's low 25 bits land unchanged (2)");
    check((a.m_capabilities & 0xFE000000u) == (b.m_capabilities & 0xFE000000u),
          "bits 25..31 are not taken from the owner: the owners differ there (0xFC vs 0x02) and the sinks agree");
    check((a.m_capabilities & 0xFE000000u) == (plain.m_capabilities & 0xFE000000u),
          "bits 25..31 keep the value the base constructor left");
    check((ownerA.m_capabilities & 0xFE000000u) != (ownerB.m_capabilities & 0xFE000000u),
          "the two owners really do differ in bits 25..31 (the check above is discriminating)");

    // The port's named deviation: with a null owning driver the constructor returns before setOption and the copy
    // (the original dereferences the driver unconditionally). The object is still fully formed.
    CBatchDriver withNullDriver(0x0000AAAAu, 0x0000BBBBu, nullptr);
    check(withNullDriver.defaultVertexBufferCapacityBytes == 0x0000AAAAu, "null driver: capacities still stored");
    check(withNullDriver.defaultIndexBufferCapacityBytes == 0x0000BBBBu, "null driver: index capacity stored");
    check(withNullDriver.getOptionFlags() == plain.getOptionFlags(), "null driver: setOption is skipped");
    check(withNullDriver.m_capabilities == plain.m_capabilities, "null driver: the capability copy is skipped");
    check(withNullDriver.segmentCompileCallback == nullptr && withNullDriver.maxIndices == 0,
          "null driver: the other members are still cleared");

    // draw 0x5a8a80 (the tail call into thisAppendBatch) is covered with the real append path in batch_append_test.cpp.
    boost::intrusive_ptr<CVertexStreams> streams(new CVertexStreams(), true);
    (void)streams;

    // ---- destructor 0x5a3d50 ------------------------------------------------------------------------------------
    // The listing drops the word at +0x248 and releases the intrusive_ptr at +0x240 (count decrement, then
    // CVertexStreams::~CVertexStreams at 0x5a0a1c), then destroys the CNullDriver base. The port does NOT reproduce
    // those two drops and says so (batch_driver.cpp:100-105): neither word is declared on this class, the append
    // state lives in the base IVideoDriver, and the base's own destructor releases it. What is observable here is
    // therefore the whole of the defaulted destructor's work: the base teardown of the batch state the base owns.
    int refCountedDestructions = 0;
    {
        CBatchDriver d(1u, 2u, &ownerA);
        d.m_batchBuffer = boost::intrusive_ptr<glitch::IReferenceCounted>(new CountingRefCounted(&refCountedDestructions));
        d.m_batchBuffers.push_back(
            boost::intrusive_ptr<glitch::IReferenceCounted>(new CountingRefCounted(&refCountedDestructions)));
        check(refCountedDestructions == 0, "the base's batch state is alive before the destructor");
    }
    check(refCountedDestructions == 2, "~CBatchDriver releases the base's batch buffer and batch list");

    // Destroying an object whose members were never set is the common path (the scene manager's batch driver is
    // dropped right after construction in every non-batch path) and must be safe, for both the owning-driver and the
    // null-driver construction.
    {
        CBatchDriver d(0u, 0u, &ownerA);
    }
    {
        CBatchDriver d(0u, 0u, nullptr);
    }
    check(true, "destroying a default-membered CBatchDriver does not fault");

    std::printf("%s\n", failures == 0 ? "batch_driver: ok" : "batch_driver: FAILED");
    return failures == 0 ? 0 : 1;
}
