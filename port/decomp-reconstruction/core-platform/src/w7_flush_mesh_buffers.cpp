// FlushMeshBuffers (0x50fe78): hands the CPU copies of the buffers of a mesh over to the driver. Split from w7_global_02.cpp so the
// body can use the canonical mesh and video headers.

#include "core-platform/w7_global_02.hpp"

#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace {

constexpr char kIrrutilsFile[] = "..\..\project_vs2005\Game/..\..\sources\Data\Collada\irrutils.cpp";

// The per-buffer step of the original, shared by the vertex streams and the index buffer. A buffer of usage 4 first loses the
// usage (unbound when it is driver-mapped, flagged as having data when it has some). Then a driver-mapped buffer is reset to its own
// size with no data (the driver copy is dropped), and any other buffer that is not of usage 4 is bound (bindImpl, vtable +0x0c).
void FlushBuffer(glitch::video::IBuffer* buffer) {
    if (buffer->m_usage == 4) {
        if ((buffer->m_flags12 & glitch::video::IBuffer::kFlagDriverMapped) != 0) {
            buffer->unbindImpl();
        }
        const uint8_t* data = buffer->m_data;
        buffer->m_usage = 0;
        if (data != nullptr) {
            buffer->m_flags12 |= glitch::video::IBuffer::kFlagHasData;
        }
    }
    if ((buffer->m_flags12 & glitch::video::IBuffer::kFlagDriverMapped) != 0) {
        buffer->reset(buffer->m_size, nullptr, true);
    } else if (buffer->m_usage != 4) {
        buffer->bindImpl(true);
    }
}

}  // namespace

// 0x50fe78 _Z16FlushMeshBuffersPN6glitch5scene5IMeshEbbb
// Every mesh buffer is visited unless it carries the flag byte (+0x34) and `force` is off. With `vertices`, every vertex stream
// buffer is flushed (a stream of type 1, the index type, trips the assertion "buffer->getType() != glitch::video::EBT_INDEX" at
// irrutils.cpp:50 and is flushed anyway); with `indices`, the index buffer of the primitive stream is flushed. The pseudocode
// returns the register of the last release; it is void here.
void FlushMeshBuffers(glitch::scene::IMesh* mesh, bool vertices, bool indices, bool force) {
    const std::uint32_t count = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < count; ++i) {
        boost::intrusive_ptr<glitch::scene::CMeshBuffer> meshBuffer = mesh->getMeshBuffer(i);
        if (!force && meshBuffer->flag_34 != 0) {
            continue;
        }
        if (vertices) {
            boost::intrusive_ptr<glitch::video::CVertexStreams> streams = meshBuffer->vertexStreams;
            const std::uint8_t streamCount = streams->m_streamCount0d;
            for (std::uint8_t k = 0; k < streamCount; ++k) {
                glitch::video::IBuffer* buffer = streams->m_streams[k].buffer.get();
                if (buffer->m_type == 1) {
                    if (gAssertLevel == 2) {
                        std::abort();
                    } else if (gAssertLevel == 1) {
                        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "buffer->getType() != glitch::video::EBT_INDEX", kIrrutilsFile, 50);
                    }
                }
                FlushBuffer(buffer);
            }
        }
        if (indices) {
            FlushBuffer(meshBuffer->primitiveStream.m_indexBuffer.get());
        }
    }
}
