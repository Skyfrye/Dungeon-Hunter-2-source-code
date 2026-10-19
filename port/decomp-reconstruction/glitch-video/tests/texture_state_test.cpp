#include "glitch-video/buffer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

int main() {
    // ITexture::getSizeInBytes: plain 2D, one level: 100 rounded up to 128 times 0 plus 100.
    int32_t sizes2d[] = {100, 25, 6};
    test::TestTexture tex2d;
    tex2d.m_levelSizes = sizes2d;
    tex2d.m_mipCount3e = 0;
    CHECK(tex2d.getSizeInBytes() == 100);
    tex2d.m_mipCount3e = 1;
    CHECK(tex2d.getSizeInBytes() == 25);

    // Range form (flag 0x2): size is sizes[1] - sizes[0].
    test::TestTexture ranged;
    ranged.m_levelSizes = sizes2d;
    ranged.m_flags3f = 0x2;
    CHECK(ranged.getSizeInBytes() == static_cast<uint32_t>(25 - 100));

    // Cube (type bits 2): 128-aligned face size times 5, plus the size.
    test::TestTexture cube;
    int32_t cubeSizes[] = {200, 200};
    cube.m_levelSizes = cubeSizes;
    cube.m_flags38 = 2;
    CHECK(cube.getSizeInBytes() == 256 * 5 + 200);

    // unlock: lock count 3 -> 2 keeps upper bits; at 1 the state is cleared.
    test::TestTexture locked;
    locked.m_lockCount42 = 0x20 | 3;
    locked.unlock();
    CHECK(locked.m_lockCount42 == (0x20 | 2));
    locked.m_flags3f = 0x40;
    locked.m_lockCount42 = 1;
    locked.m_lockFlags43 = 7;
    locked.unlock();
    CHECK(locked.m_lockCount42 == 0 && locked.m_lockFlags43 == 0 && (locked.m_flags3f & 0x40) == 0);

    // setWrap: S field (bits 18..20) and T field (bits 21..23) are written and flagged.
    test::TestTexture wrap;
    wrap.m_flags38 = 0;
    wrap.setWrap(2);
    CHECK(((wrap.m_flags38 >> 18) & 7) == 2);
    CHECK(((wrap.m_flags38 >> 21) & 7) == 2);
    CHECK((wrap.m_dirtyFlags40 & 0x30) == 0x30);

    // setWrapClamp: same effect on a clean texture, and no change when already clamped.
    test::TestTexture clamp;
    clamp.setWrapClamp();
    CHECK(((clamp.m_flags38 >> 18) & 7) == 2 && ((clamp.m_flags38 >> 21) & 7) == 2);
    uint16_t before = clamp.m_dirtyFlags40;
    clamp.setWrapClamp();
    CHECK(clamp.m_dirtyFlags40 == before);

    // IShader::getVertexAttributeDefIndex: index of the first match, 0xff otherwise.
    test::TestShader shader;
    SShaderVertexAttributeDef defs[3];
    defs[0].attribute = 4;
    defs[1].attribute = 7;
    defs[2].attribute = 9;
    shader.m_vertexAttributeDefs = defs;
    shader.m_vertexAttributeDefCount = 3;
    CHECK(shader.getVertexAttributeDefIndex(4) == 0);
    CHECK(shader.getVertexAttributeDefIndex(9) == 2);
    CHECK(shader.getVertexAttributeDefIndex(5) == 0xff);

    // IBuffer::copy: unowned data with a size gets a private copy.
    uint8_t src[4] = {1, 2, 3, 4};
    test::TestBuffer buf;
    buf.m_data = src;
    buf.m_size = 4;
    buf.m_flags12 = 0;
    buf.copy();
    CHECK(buf.m_data != src && buf.m_data[0] == 1 && buf.m_data[3] == 4);
    delete[] buf.m_data;
    buf.m_data = nullptr;
    test::TestBuffer owned;
    owned.m_data = src;
    owned.m_size = 4;
    owned.m_flags12 = 1;
    owned.copy();
    CHECK(owned.m_data == src);   // owned data is kept
    owned.m_data = nullptr;       // the data is the stack array: keep the destructor from freeing it
    owned.m_flags12 = 0;

    // IBuffer::unmap: map count 2 -> 1 keeps upper bits; 1 -> 0.
    test::TestBuffer mapped;
    mapped.m_mapCount13 = 0x20 | 2;
    mapped.unmap();
    CHECK(mapped.m_mapCount13 == (0x20 | 1));
    mapped.unmap();
    CHECK(mapped.m_mapCount13 == 0);

    // CVertexStreams: active mask, getStream, addOffset, isHomogeneous.
    test::TestBuffer b1, b2;  // on the stack with count 1: the stream entries add and drop their own uses
    CVertexStreams streams;
    streams.m_streams.resize(3);
    streams.m_streams[0].buffer = boost::intrusive_ptr<IBuffer>(&b1, true);
    streams.m_streams[0].attribute = 1;
    streams.m_streams[0].offset = 8;
    streams.m_streams[1].buffer = boost::intrusive_ptr<IBuffer>(&b1, true);
    streams.m_streams[1].attribute = 3;
    streams.m_streams[2].buffer = boost::intrusive_ptr<IBuffer>(&b2, true);
    streams.m_streams[2].attribute = 5;
    CHECK(streams.getActiveAttributeMask() == ((1u << 1) | (1u << 3) | (1u << 5)));
    CHECK(streams.getStream(3, streams.m_streams.data(), streams.m_streams.data() + 3)->attribute == 3);
    CHECK(streams.getStream(4, streams.m_streams.data(), streams.m_streams.data() + 3) == streams.m_streams.data() + 3);
    streams.addOffset(4);
    CHECK(streams.m_streams[0].offset == 12);
    streams.m_attributeMask = (1u << 1) | (1u << 3);
    CHECK(streams.isHomogeneous((1u << 1) | (1u << 3)));
    streams.m_attributeMask = (1u << 1) | (1u << 5);
    CHECK(!streams.isHomogeneous((1u << 1) | (1u << 5)));

    std::printf("%s\n", failures ? "texture_state: FAILED" : "texture_state: ok");
    return failures != 0;
}
