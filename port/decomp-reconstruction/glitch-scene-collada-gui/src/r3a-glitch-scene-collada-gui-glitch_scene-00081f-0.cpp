// Track B wave r3a, batch r3a-glitch-scene-collada-gui-glitch_scene-00081f-0 (owner glitch::scene), part 1 of 2.
// Redo of the partial rows: the reconstructed bodies move here with their original symbols. The partial bodies
// (flipSurfaces, createMeshCopy, the vertex-colour and tangent helpers, the stream scalers) stay in their recon
// slices until their vertex-stream layout questions are settled (see the ledger notes).

#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"

#include <cstring>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::scene {

// 0x578d9c _ZN6glitch5scene30getNbVertexAttributeMapsDataSizeERKN5boost13intrusive_ptrINS_5video27CMaterialVertexAttributeMapEEE
// The original reads the renderer of the map (+0x04), its technique count (+0x10) and the 12-byte technique entries
// (+0x18); each entry's pass count is at +0x04. The 16-bit sum is returned.
std::uint32_t getNbVertexAttributeMapsDataSize(const boost::intrusive_ptr<video::CMaterialVertexAttributeMap>& map) {
    const video::CMaterialRenderer* renderer = map->m_renderer.get();  // +0x04 of the map
    const std::uint8_t techniqueCount = renderer->m_techniqueCount;    // +0x10 of the renderer
    std::uint16_t total = 0;
    for (std::uint8_t i = 0; i < techniqueCount; ++i) {
        // STechniqueEntry is 12 bytes; passCount is at +0x04 of each entry.
        const video::STechniqueEntry& entry = renderer->m_techniques[i];
        total = static_cast<std::uint16_t>(total + entry.passCount);
    }
    return total;
}

// 0x59af20 _ZN6glitch5scene12getPolyCountERKN5boost13intrusive_ptrINS0_5IMeshEEE
// Each mesh buffer's CPrimitiveStream (+0x18 of the buffer) gives its primitive count.
std::int32_t getPolyCount(const boost::intrusive_ptr<IMesh>& mesh) {
    IMesh* m = mesh.get();
    if (m == nullptr) {
        return 0;
    }
    std::int32_t total = 0;
    for (std::uint32_t i = 0; i < m->getMeshBufferCount(); ++i) {
        boost::intrusive_ptr<CMeshBuffer> buffer = m->getMeshBuffer(i);  // vtable +0x14
        total += static_cast<std::int32_t>(buffer->primitiveStream.getPrimitiveCount());
    }
    return total;
}

// 0x59afb8 _ZN6glitch5scene12getPolyCountERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
// The original asks the animated mesh for its frame count (vtable +0x30); a non-empty mesh gives frame 0 at detail
// level 255 with no loop limits (vtable +0x34, getMesh(0, 255, -1, -1)), and the count of that mesh is returned.
std::int32_t getPolyCount(const boost::intrusive_ptr<IAnimatedMesh>& mesh) {
    IAnimatedMesh* m = mesh.get();
    if (m == nullptr || m->getFrameCount() == 0) {
        return 0;
    }
    boost::intrusive_ptr<IMesh> frame = m->getMesh(0, 255, -1, -1);
    return getPolyCount(frame);
}

namespace {

// Element access at a byte position of a mapped vertex stream (the original reads and writes floats in place;
// memcpy keeps the access valid at any alignment).
float loadFloat(const std::uint8_t* p) {
    float v;
    std::memcpy(&v, p, sizeof(float));
    return v;
}

void storeFloat(std::uint8_t* p, float v) {
    std::memcpy(p, &v, sizeof(float));
}

}  // namespace

// 0x59c7a4 _ZN6glitch5scene11scaleTCoordsERKN5boost13intrusive_ptrINS0_11CMeshBufferEEERKNS_4core8vector2dIfEEj
// The buffer's vertex-stream table (+0x14) must carry the channel's bit in its attribute mask (+0x04). The stream
// at index channel + 1 is scaled when it is a float stream of two components (value type 6, component count 2):
// every vertex of the table's count (+0x08) gets its x and y multiplied by scale.x and scale.y. The stream is mapped
// for writing (access 5) and released with IBuffer::unmap. Other formats print a message (ELL_INFORMATION).
// Open: the index channel + 1 is not checked against the table size (the original reads the entry without a test).
void scaleTCoords(const boost::intrusive_ptr<CMeshBuffer>& buffer, const core::vector2d<float>& scale,
                  std::uint32_t channel) {
    video::CVertexStreams* streams = buffer->vertexStreams.get();  // +0x14 of the buffer
    if ((streams->m_attributeMask & (1u << channel)) == 0) {       // +0x04 of the table
        return;
    }
    video::SVertexStream& stream = streams->m_streams[channel + 1];  // entry at +0x14 + 16 * (channel + 1)
    if (stream.field0a != 6 || stream.field0c != 2) {               // +0x0a and +0x0c of the entry
        glitch::os::Printer::log("scaleTCoords", "supports only floating-point streams of array size 2",
                                 glitch::ELL_INFORMATION);
        return;
    }
    std::uint8_t* base = stream.buffer->map(static_cast<video::E_BUFFER_MAP_ACCESS>(5));
    std::uint8_t* data = base != nullptr ? base + stream.offset : nullptr;  // +0x04 of the entry
    const std::uint32_t count = streams->m_field08;                       // +0x08 of the table: the vertex count
    if (data != nullptr) {
        for (std::uint32_t i = 0; i < count; ++i) {
            std::uint8_t* vertex = data + static_cast<std::size_t>(i) * stream.field0e;  // stride at +0x0e of the entry
            storeFloat(vertex, loadFloat(vertex) * scale.X);
            storeFloat(vertex + 4, loadFloat(vertex + 4) * scale.Y);
        }
        stream.buffer->unmap();
    }
}

// 0x59c8e0 _ZN6glitch5scene11scaleTCoordsERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS_4core8vector2dIfEEj
// Calls the buffer overload for each mesh buffer, in order; a null mesh does nothing.
void scaleTCoords(const boost::intrusive_ptr<IMesh>& mesh, const core::vector2d<float>& scale, std::uint32_t channel) {
    IMesh* m = mesh.get();
    if (m == nullptr) {
        return;
    }
    const std::uint32_t count = m->getMeshBufferCount();
    for (std::uint32_t i = 0; i < count; ++i) {
        boost::intrusive_ptr<CMeshBuffer> buffer = m->getMeshBuffer(i);
        scaleTCoords(buffer, scale, channel);
    }
}

}  // namespace glitch::scene
