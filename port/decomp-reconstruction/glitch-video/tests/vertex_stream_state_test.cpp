// CVertexStreams flag rebuild: updateHomogeneityInternal, updateStatesInternal
// and the updateStates thunk.
#include <cstdio>

#include "glitch-video/vertex_streams.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
void addStream(CVertexStreams& s, IBuffer* buffer, uint16_t attribute) {
    SVertexStream stream;
    stream.buffer = boost::intrusive_ptr<IBuffer>(buffer, true);  // the buffers are on the stack with count 1
    stream.attribute = attribute;
    s.m_streams.push_back(stream);
}
}  // namespace

int main() {
    test::TestBuffer a, b;
    a.m_data = reinterpret_cast<uint8_t*>(&a);  // non-null data pointers
    b.m_data = reinterpret_cast<uint8_t*>(&b);

    // Homogeneity: flag == false computes the bit, flag == true clears it.
    {
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &a, 1);
        addStream(s, &a, 2);
        s.updateHomogeneityInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) != 0);
        s.updateHomogeneityInternal(true);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);
    }
    {
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &b, 1);
        s.updateHomogeneityInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);
    }
    {
        // A null buffer between two streams does not break the pairs.
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, nullptr, 1);
        addStream(s, &b, 2);
        s.updateHomogeneityInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) != 0);
    }
    {
        // One stream is always homogeneous.
        CVertexStreams s;
        addStream(s, &b, 4);
        s.updateHomogeneityInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) != 0);
    }

    // updateStatesInternal: bit 0 from flag, bit 1 set on entry.
    {
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &a, 1);
        s.updateStatesInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) != 0);
        CHECK((s.m_flags & CVertexStreams::kFlagHasData) != 0);
        s.updateStatesInternal(true);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);
        CHECK((s.m_flags & CVertexStreams::kFlagHasData) != 0);
    }

    // Two different buffers in a row clear the homogeneity bit.
    {
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &b, 1);
        s.updateStatesInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);
    }

    // A buffer with no data pointer clears the data bit.
    {
        test::TestBuffer empty;
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &empty, 1);
        s.updateStatesInternal(false);
        CHECK((s.m_flags & CVertexStreams::kFlagHasData) == 0);
    }

    // The updateStates thunk gives the same result as updateStatesInternal.
    {
        CVertexStreams direct;
        CVertexStreams thunk;
        addStream(direct, &a, 0);
        addStream(direct, &b, 1);
        addStream(thunk, &a, 0);
        addStream(thunk, &b, 1);
        direct.updateStatesInternal(false);
        thunk.updateStates(false);
        CHECK(direct.m_flags == thunk.m_flags);
        CHECK(thunk.m_flags == (CVertexStreams::kFlagHasData));
    }

    // Empty table: no pairs, so the homogeneity bit follows the flag only.
    {
        CVertexStreams s;
        s.updateStatesInternal(false);
        CHECK(s.m_flags == (CVertexStreams::kFlagHomogeneous | CVertexStreams::kFlagHasData));
    }

    // setStream copies the description and recomputes homogeneity from the flag.
    {
        CVertexStreams s;
        addStream(s, &a, 0);
        addStream(s, &a, 1);
        SVertexStreamData data;
        data.buffer = boost::intrusive_ptr<IBuffer>(&b, true);
        data.offset = 64;
        data.field08 = 7;
        data.field0c = 9;
        data.field0e = 11;
        s.setStream(&s.m_streams[1], data, false);
        CHECK(s.m_streams[1].buffer.get() == &b);
        CHECK(s.m_streams[1].offset == 64);
        CHECK(s.m_streams[1].field0a == 7 && s.m_streams[1].field0c == 9 && s.m_streams[1].field0e == 11);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);  // a and b are now adjacent
        s.setStream(&s.m_streams[1], data, true);
        CHECK((s.m_flags & CVertexStreams::kFlagHomogeneous) == 0);
    }

    std::printf("%s\n", failures ? "vertex_stream_state: FAILED" : "vertex_stream_state: ok");
    return failures != 0;
}
