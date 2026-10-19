// Primitive counts by type, the default attribute map, and the IBuffer constructor flags.
#include "glitch-video/buffer.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    using namespace glitch::video;

    auto count = [](uint16_t type, uint32_t n) {
        CPrimitiveStream stream;
        stream.m_primitiveType = type;
        stream.m_count = n;
        return stream.getPrimitiveCount();
    };
    CHECK(count(0, 10) == 10);   // points
    CHECK(count(1, 10) == 9);    // line strip
    CHECK(count(1, 0) == 0);     // clamped
    CHECK(count(2, 10) == 10);   // line loop
    CHECK(count(3, 10) == 5);    // lines
    CHECK(count(4, 10) == 8);    // triangle strip
    CHECK(count(5, 1) == 0);     // triangle fan clamped
    CHECK(count(6, 10) == 3);    // triangles
    CHECK(count(7, 10) == 4);    // quad strip
    CHECK(count(7, 1) == 0);
    CHECK(count(8, 10) == 2);    // quads
    CHECK(count(9, 10) == 0);    // unknown type

    // Default attribute map: 0xff unless a stream's attribute slot is set to its index.
    CVertexStreams streams;
    SVertexStream a;
    a.attribute = 3;
    SVertexStream b;
    b.attribute = 0;
    streams.m_streams = {a, b};
    uint8_t map[0x1e] = {};
    CHECK(makeDefaultAttributeMap(&streams, map) == map);
    CHECK(map[3] == 0);
    CHECK(map[0] == 1);
    CHECK(map[1] == 0xff);
    CHECK(map[0x1d] == 0xff);

    // IBuffer: flag bit 1 is added for a sized, data-backed buffer whose usage is not 4.
    int payload = 0;
    test::TestBuffer withData(1, 2, 16, &payload, 0);
    CHECK(withData.m_flags12 == 2);
    CHECK(withData.m_type == 1 && withData.m_usage == 2);
    test::TestBuffer usageFour(1, 4, 16, &payload, 1);
    CHECK(usageFour.m_flags12 == 1);
    usageFour.m_flags12 = 0;  // the data is a stack int: drop the owns bit so the destructor leaves it alone
    test::TestBuffer noData(1, 2, 16, nullptr, 1);
    CHECK(noData.m_flags12 == 1);
    test::TestBuffer empty(1, 2, 0, &payload, 0);
    CHECK(empty.m_flags12 == 0);

    std::printf("%s\n", failures ? "primitive_buffer: FAILED" : "primitive_buffer: ok");
    return failures != 0;
}
