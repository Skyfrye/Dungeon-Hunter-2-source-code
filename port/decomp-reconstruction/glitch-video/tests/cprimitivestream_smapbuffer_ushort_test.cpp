// CPrimitiveStream::SMapBuffer<unsigned short const>::reset: mapping, offset, and the release of the
// previous mapping (count 1 clears the count, count above 1 decrements it, keeping the access bits).
#include "glitch-video/tb/cprimitivestream_smapbuffer_ushort.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    using glitch::video::CPrimitiveStream;
    using glitch::video::tb::CPrimitiveStreamSMapBufferU16;
    using glitch::video::test::TestBuffer;
    using Slot = boost::intrusive_ptr<glitch::video::IBuffer>;

    alignas(4) uint8_t bytesA[16] = {};
    alignas(4) uint8_t bytesB[16] = {};
    TestBuffer bufA(0, 0, 16, bytesA, 0);
    TestBuffer bufB(0, 0, 16, bytesB, 0);
    // The buffers live on the stack: the extra use each stream adds keeps the release from freeing them.
    CPrimitiveStream streamA;
    streamA.m_indexBuffer = Slot(&bufA, true);
    streamA.m_offset = 4;
    CPrimitiveStream streamB;
    streamB.m_indexBuffer = Slot(&bufB, true);

    // First reset: maps A with access 1 (count 1 | access 1 << 5 = 33) and offsets data by 4.
    CPrimitiveStreamSMapBufferU16 view;
    uint8_t* base = view.reset(streamA, 1);
    CHECK(base == bytesA);
    CHECK(view.stream == &streamA);
    CHECK(view.data == reinterpret_cast<const uint16_t*>(bytesA + 4));
    CHECK(bufA.m_mapCount13 == 33);

    // Reset to B: A's count is 1, so it is cleared; B is mapped.
    base = view.reset(streamB, 1);
    CHECK(base == bytesB);
    CHECK(view.stream == &streamB);
    CHECK(view.data == reinterpret_cast<const uint16_t*>(bytesB));
    CHECK(bufA.m_mapCount13 == 0);
    CHECK(bufB.m_mapCount13 == 33);

    // A buffer mapped twice (count 2) is decremented, not cleared, and keeps its access bits.
    bufB.m_mapCount13 = 34;  // count 2, access 1
    view.reset(streamA, 1);
    CHECK(bufB.m_mapCount13 == 33);  // (2 - 1) | access bits (32)
    CHECK(bufA.m_mapCount13 == 33);

    // A buffer with the unmap-callback flag (0x20) gets its unmapImpl called when the last map is released.
    TestBuffer bufC(0, 0, 16, bytesA, 0x20);
    CPrimitiveStream streamC;
    streamC.m_indexBuffer = Slot(&bufC, true);
    view.reset(streamC, 1);
    CHECK(bufC.m_mapCount13 == 33);
    view.reset(streamB, 1);
    CHECK(bufC.unmapImplCalls == 1);
    CHECK(bufC.m_mapCount13 == 0);

    if (failures == 0) std::printf("cprimitivestream_smapbuffer_ushort_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
