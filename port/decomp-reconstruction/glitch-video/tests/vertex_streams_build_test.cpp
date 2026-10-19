// CVertexStreams allocation helpers, setStreams, setupStreams and SVertexStream::SMapBuffer.
#include <cstdio>

#include "glitch-video/vertex_streams.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // allocate(mask): bit 0 is always set; the streams follow the mask bits in order.
    {
        auto t = CVertexStreams::allocate(0x0au);  // bits 1 and 3, plus bit 0
        CHECK(t->m_streams.size() == 3);
        CHECK(t->m_streams[0].attribute == 0);
        CHECK(t->m_streams[1].attribute == 1);
        CHECK(t->m_streams[2].attribute == 3);
        CHECK(t->m_streams[0].field0a == 0xff);
        CHECK(t->m_count0c == 2);
        CHECK(t->m_flags == 3);
    }
    // allocate(count, mask): bits 1..count are added.
    {
        auto t = CVertexStreams::allocate(uint8_t{2}, 0u);
        CHECK(t->m_attributeMask == 0x7u);
        CHECK(t->m_streams.size() == 3);
        CHECK(t->m_count0c == 2);
    }
    // setStreams copies the masked entries and adds the offset delta.
    {
        test::TestBuffer buf;
        auto src = CVertexStreams::allocate(0x3u);
        src->m_streams[0].buffer = boost::intrusive_ptr<IBuffer>(&buf, true);
        src->m_streams[0].offset = 8;
        src->m_streams[1].offset = 12;
        auto dst = CVertexStreams::allocate(0x3u);
        const uint32_t copied = dst->setStreams(src, 0x1u, 16, true);
        CHECK(copied == 0x1u);
        CHECK(dst->m_streams[0].offset == 24);
        CHECK(dst->m_streams[0].buffer.get() == &buf);
        CHECK(dst->m_streams[1].offset == 0);
    }
    // SMapBuffer maps the stream with its offset; reset releases the mapping.
    {
        uint8_t bytes[16] = {};
        test::TestBuffer buf;
        buf.m_data = bytes;
        buf.m_size = sizeof bytes;
        SVertexStream stream;
        stream.buffer = boost::intrusive_ptr<IBuffer>(&buf, true);
        stream.offset = 4;
        SVertexStream::SMapBuffer<float> mapped;
        mapped.reset(stream, 0);
        CHECK(mapped.data == reinterpret_cast<float*>(bytes + 4));
        CHECK(buf.m_mapCount13 != 0);
        mapped.reset();
        CHECK(mapped.data == nullptr);
        CHECK((buf.m_mapCount13 & 0x1f) == 0);
    }
    std::printf(failures ? "FAILED\n" : "OK\n");
    return failures ? 1 : 0;
}
