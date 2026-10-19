// glitch::video::CPrimitiveStream: what a draw call renders from a vertex-stream table: the index buffer and the
// range, the vertex range and the primitive type. Canonical definition (engine unification wave u1-video); the
// copy in glitch-core-io (tb/cprimitivestream.hpp) is replaced by this header.
//
// Layout of the original object (32-bit, 0x18 bytes; built on the stack by IVideoDriver::draw2DLine 0x5ac7bc and
// the other immediate-mode helpers, named by serializeAttributes 0x5a0524):
//   +0x00  index buffer (intrusive_ptr<IBuffer>; null for a non-indexed draw)
//   +0x04  byte offset into the index buffer ("Offset")
//   +0x08  element count ("IndexCount"; the vertex count when non-indexed)
//   +0x0c  first vertex ("VertexStart")
//   +0x10  last vertex + 1 ("VertexEnd")
//   +0x14  uint16 index type ("IndexType"; 0xff when there is no index buffer, 1 = 16-bit indices)
//   +0x16  uint16 primitive type ("PrimitiveType"), see getPrimitiveCount
// The class has no vtable and no reference count of its own (it is passed by const reference).
#pragma once

#include <cstdint>

#include "glitch-video/buffer.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class CPrimitiveStream {
public:
    // Mapped view of the index buffer (CPrimitiveStream::SMapBuffer<T> in the original). The original stores the
    // stream pointer at +0x00 (the stream's first word is its index buffer) and the mapped pointer, already offset
    // by the stream's byte offset, at +0x04.
    template <typename T>
    struct SMapBuffer {
        const CPrimitiveStream* stream = nullptr;  // +0x00
        T* data = nullptr;                          // +0x04

        // 0x5911a0 (T = unsigned short const, the compiler clone with the access fixed to 1): releases the current
        // mapping, if any, then read-maps the stream's index buffer and returns the base pointer of the mapping.
        // data becomes base + stream offset. The original adds the offset even to a null base; this port keeps data
        // null in that case.
        uint8_t* reset(const CPrimitiveStream& source, E_BUFFER_READ_MAP_ACCESS access) {
            if (data != nullptr) {
                stream->m_indexBuffer->unmap();
                data = nullptr;
                stream = nullptr;
            }
            stream = &source;
            const IBuffer* buffer = source.m_indexBuffer.get();
            uint8_t* base = buffer->map(access);
            data = base != nullptr ? reinterpret_cast<T*>(base + source.m_offset) : nullptr;
            return base;
        }
    };

    // 0x5a0300: primitives for the stream's element count, by primitive type.
    // Types 0..8: points, line strip, line loop, lines, triangle strip, triangle fan, triangles, quad strip, quads.
    uint32_t getPrimitiveCount() const;

    // 0x5a03fc / 0x5a0524: attribute (de)serializers ("PrimitiveType", then with an index buffer "IndexType",
    // "Offset", "IndexCount", "PrimitiveCount", "VertexStart", "VertexEnd", without one "VertexStart", "IndexCount",
    // "PrimitiveCount"). Not reconstructed (the IAttributes vtable is core-io's).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;

    boost::intrusive_ptr<IBuffer> m_indexBuffer;  // +0x00
    uint32_t m_offset = 0;                         // +0x04
    uint32_t m_count = 0;                          // +0x08, element count
    uint32_t m_vertexStart = 0;                    // +0x0c
    uint32_t m_vertexEnd = 0;                      // +0x10
    uint16_t m_indexType = 0xff;                   // +0x14
    uint16_t m_primitiveType = 0;                  // +0x16, E_PRIMITIVE_TYPE
};

}  // namespace glitch::video
