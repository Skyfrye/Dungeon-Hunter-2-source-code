// BufferedRenderer: collects gameswf quads and indexed triangles into one vertex and index buffer,
// then draws the batch with flush(). Materials are kept in 17 slots: 16 blend-mode slots and one wire slot.
// Original 32-bit size 0x110 (272), the last field being at +0x10c.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x7d4768, dtor 0x7d7b8c, flush 0x7d6894).
//
// The class has no vtable. Offsets are the original 32-bit ones; the host layout differs.
#pragma once

#include <cstdint>

#include "dh2/MaterialData.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"

namespace glitch {
namespace video {
class IBuffer;
class IVideoDriver;
class ITexture;
class CMaterial;
class CMaterialRenderer;
class CVertexStreams;
// Same int32 alias as glitch-video/deps/glitch_video_types.hpp (the enum values are not recovered).
using E_PRIMITIVE_TYPE = std::int32_t;
}  // namespace video
}  // namespace glitch

namespace gameswf {
class texture_cache;
struct player_context;
}  // namespace gameswf

class BufferedRenderer {
public:
    // One material slot is the game class MaterialData (dh2/MaterialData.hpp, 12 bytes: renderer +0x00, material
    // +0x04, parameter IDs 2 and 6 at +0x08 and +0x0a). Slot 16 (at +0xfc) is the wire material. The alias keeps the
    // name BufferedRenderer::MaterialData that vendor-gameswf uses.
    using MaterialData = ::MaterialData;

    // One vertex entry of m_vertexData, 24 bytes. The three streams the constructor sets (offsets 0, 8 and 12) give
    // the layout. The field names follow vendor-gameswf Vertex (render_handler_glitch.hpp), which has the same layout.
    struct Vertex {
        float u;         // +0x00, stream at offset 0 (two floats)
        float v;         // +0x04
        uint32_t color;  // +0x08, stream at offset 8 (four bytes); not written by ensureBufferCapacity
        float x;         // +0x0c, stream at offset 12 (three floats)
        float y;         // +0x10
        float z;         // +0x14
    };

    // BufferedRenderer::BufferedRenderer(glitch::video::IVideoDriver*) 0x7d4768. Allocates the vertex
    // streams and the index buffer, sets the three default streams, and reserves 1024 vertices.
    explicit BufferedRenderer(glitch::video::IVideoDriver* driver);
    ~BufferedRenderer();                                                // 0x7d7b8c (D1 only; the class has no vtable)

    void ensureBufferCapacity(int vertexCount);                         // 0x7d4284
    void createBlendModeMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer,
                                 int index, const char* techniqueName); // 0x7d4ab0. The original returns the technique id on success; the port returns void.
    MaterialData* getWireMaterial();                                    // 0x7d673c, returns &m_materials[16]
    void flush();                                                       // 0x7d6894
    void setTexture(boost::intrusive_ptr<glitch::video::ITexture>& texture);  // 0x7d6a48
    void clearTextures();                                               // 0x7d6a98, clears the texture on all 17 slots
    void queueBuffer(const boost::intrusive_ptr<glitch::video::CVertexStreams>& streams,
                     glitch::video::E_PRIMITIVE_TYPE primitiveType);    // 0x7d6ea0
    void queueIndexedTriangles(const boost::intrusive_ptr<glitch::video::CVertexStreams>& streams,
                               const uint16_t* indices, int indexCount); // 0x7d7094
    void reset();                                                       // 0x7d72b4
    void applyMaskState(int mode);                                      // 0x7d7f28, mode 0..2 selects the mask bits of the current material

    // No vtable. Fields follow in original order.
    int unk_00;                                                         // +0x00, flush compares it with 1 to decide whether to keep the vertex offset
    bool m_wireFrame;                                                   // +0x04, set by the wireframe toggle; flush draws with the wire material
    uint8_t pad_05[3];                                                  // +0x05
    int m_vertexOffset;                                                 // +0x08 vertex base; flush and queueBuffer subtract it from the stream count
    int m_capacity;                                                     // +0x0c vertex capacity, grown by ensureBufferCapacity
    boost::intrusive_ptr<glitch::video::CVertexStreams> m_vertexStreams; // +0x10 batch vertex streams (CVertexStreams::allocate(1, 0x40000))
    // +0x14 .. +0x2c is the batch's CPrimitiveStream (glitch-video primitive_stream.hpp, 0x18 bytes): the draw call
    // takes its address. The fields are copied into one for each draw (see flush).
    boost::intrusive_ptr<glitch::video::IBuffer> m_indexBuffer;         // +0x14 CPrimitiveStream::m_indexBuffer
    int unk_18;                                                         // +0x18 CPrimitiveStream::m_offset (byte offset into the index buffer); zeroed, never set here
    int m_indexCursor;                                                  // +0x1c CPrimitiveStream::m_count; next free index slot in m_indices
    int unk_20;                                                         // +0x20 CPrimitiveStream::m_vertexStart, zeroed by queueBuffer, queueIndexedTriangles and flush
    int m_vertexCount;                                                  // +0x24 CPrimitiveStream::m_vertexEnd (last vertex + 1 of the batch)
    uint16_t unk_28;                                                    // +0x28 CPrimitiveStream::m_indexType, 1 (16-bit indices) set by the ctor
    uint16_t m_primitiveType;                                           // +0x2a CPrimitiveStream::m_primitiveType of the batch (4 by default, 6 for indexed triangles)
    uint8_t* m_vertexData;                                              // +0x2c 24-byte vertex entries, capacity m_capacity
    uint16_t* m_indices;                                                // +0x30 index entries, 2 bytes each
    glitch::video::IVideoDriver* m_driver;                              // +0x34 not owned
    gameswf::player_context* m_playerContext;                           // +0x38 player context stored by set_context; flush passes it to texture_cache::unlock_all (static)
    MaterialData m_materials[17];                                       // +0x3c .. +0x108, slot 16 at +0xfc is the wire material
    boost::intrusive_ptr<glitch::video::ITexture> m_texture;            // +0x108 current texture, zeroed by the ctor
    int m_materialIndex;                                                // +0x10c index into m_materials chosen by applyMaskState and flush
};
