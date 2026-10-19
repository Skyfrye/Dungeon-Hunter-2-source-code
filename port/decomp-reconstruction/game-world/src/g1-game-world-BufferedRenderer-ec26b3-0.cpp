// Batch g1-game-world-BufferedRenderer-ec26b3-0 (part 1 of 1): the BufferedRenderer constructor and destructor, the
// vertex and index buffers (ensureBufferCapacity), the blend-mode and wire materials, the mask states, and the
// queue, flush, texture and reset functions. Declarations come from dh2/BufferedRenderer.hpp. Original 32-bit size 0x110.
//
// Partial functions and what is missing:
//   - flush: the texture and colour parameters of the selected material are not set. The original calls
//     IMaterialParameters<CMaterial>::setParameter on the material (texture at m_parameterId2, index 0, value m_texture),
//     and when m_parameterId6 is not 0xffff, setParameterCvt<SColorf> with white when the texture's pixel format
//     (ITexture +0x38 bits 4-9) is 2 and black otherwise. The port keeps the parameter block as a separate object
//     (glitch-video material.hpp), so CMaterial has no setParameter to call. Also unverified: the attribute-map argument
//     of IVideoDriver::setMaterial and the binding argument of IVideoDriver::draw are folded into the .clone symbols in
//     the binary, and this file passes nullptr for both.
//   - clearTextures: setTexture(null) is written. The setParameter calls on the 17 material slots are not (same gap).
//
// Declared here, defined by other batches (not in this file):
//   glitch::video::setColorMask(material, r, g, b, a)      0x7d4f34, glitch-video queue. The binary's clone always
//                                                          passes a = true.
//   MaterialData::setMaterial                               0x7d4a08, game-world queue (dh2/MaterialData.hpp).
//   gameswf::texture_cache::unlock_all(player_context*)     0x7935ec, vendor-gameswf (static, empty body).
//   glitch::video::SRenderState::SRenderState               0x588ddc, glitch-video.
//
// Vertex and index arrays are owned by their IBuffers (IBuffer::reset with keepOwned), as in the original. The
// destructor frees neither.

#include "dh2/BufferedRenderer.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <new>

#include "dh2/MaterialData.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"  // setMaterialTexture / setMaterialColorCvt (CMaterial::parameters)
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "vendor-gameswf/texture_cache.hpp"
#include "gameswf/gameswf_log.h"

namespace glitch::video {
// 0x7d4f34 glitch::video::setColorMask(boost::intrusive_ptr<CMaterial> const&, bool, bool, bool, bool). Declared here;
// the glitch-video batch defines it. The original sets the colour mask on the driver of the material's renderer.
void setColorMask(const boost::intrusive_ptr<CMaterial>& material, bool r, bool g, bool b, bool a);
}  // namespace glitch::video

namespace {

using glitch::video::CMaterial;
using glitch::video::CMaterialRenderer;
using glitch::video::CPrimitiveStream;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;
using glitch::video::ITexture;
using glitch::video::SVertexStreamData;
using SRenderState = glitch::video::detail::renderpass::SRenderState;

constexpr std::size_t kVertexSize = sizeof(BufferedRenderer::Vertex);  // 24 bytes, as the stream layout

// Copies count vertices of the 24-byte layout (the original's memcpy of 24 * count bytes).
void copyVertices(uint8_t* dst, const uint8_t* src, std::size_t count) {
    std::memcpy(dst, src, kVertexSize * count);
}

// Applies edit to the first render pass of the material's technique. The original reaches that pass through the
// technique entry's passes pointer (technique table +0x18, entry +0x08) and edits its state words in place. Here the 32
// state bytes are read into an SRenderState, edited, and written back with CMaterialRenderer::setRenderState. That copies
// only when the bytes changed and sets the pass's flag byte (+0x30), which is the original's rule: each word edit sets
// the flag when its bit changed.
template <typename Edit>
void editFirstPass(CMaterial& material, Edit edit) {
    CMaterialRenderer& renderer = *material.m_renderer;
    const int32_t technique = material.getTechnique();
    const glitch::video::SRenderPass* pass = renderer.m_techniques[technique].passes;
    SRenderState state;
    std::memcpy(&state, pass->stateWords, sizeof(state));
    edit(state);
    renderer.setRenderState(static_cast<uint8_t>(technique), 0, state);
}

}  // namespace

// 0x7d4284 _ZN16BufferedRenderer20ensureBufferCapacityEi
// Grows the vertex and index arrays to vertexCount vertices. Vertices are 24 bytes each. The original zeroes words 0, 1,
// 3, 4 and 5 of each new vertex and leaves word 2 (the colour) unwritten; queueBuffer and queueIndexedTriangles write it
// before any draw. The index array is allocated as 4 * vertexCount bytes but handed to the index buffer as 2 * vertexCount
// bytes, as the original does.
void BufferedRenderer::ensureBufferCapacity(int vertexCount) {
    if (m_capacity >= vertexCount) {
        return;
    }
    const std::size_t vertexBytes = kVertexSize * static_cast<std::size_t>(vertexCount);
    uint8_t* vertices = new uint8_t[vertexBytes];
    for (int i = 0; i < vertexCount; ++i) {
        // Default-initialised: the colour word keeps its indeterminate value, as in the original.
        Vertex* entry = new (vertices + kVertexSize * static_cast<std::size_t>(i)) Vertex;
        entry->u = 0.0f;
        entry->v = 0.0f;
        entry->x = 0.0f;
        entry->y = 0.0f;
        entry->z = 0.0f;
    }
    m_vertexData = vertices;                                                  // +0x2c
    m_vertexStreams->m_streams[0].buffer->reset(static_cast<uint32_t>(vertexBytes), vertices, true);

    uint8_t* indexBytes = new uint8_t[4 * static_cast<std::size_t>(vertexCount)];
    m_indices = reinterpret_cast<uint16_t*>(indexBytes);                      // +0x30
    m_indexBuffer->reset(static_cast<uint32_t>(2 * vertexCount), indexBytes, true);
    m_capacity = vertexCount;                                                 // +0x0c
}

// 0x7d4768 _ZN16BufferedRendererC1EPN6glitch5video12IVideoDriverE
// Builds the vertex streams (three streams over one vertex buffer: offset 12 of three floats, offset 0 of two floats,
// and offset 8 of four bytes, stride 24), the index buffer, and reserves 1024 vertices. The material slots start empty
// with both parameter IDs at 0xffff.
BufferedRenderer::BufferedRenderer(glitch::video::IVideoDriver* driver) {
    unk_00 = 0;
    m_wireFrame = false;
    m_vertexOffset = 0;
    m_capacity = 0;
    m_vertexStreams = CVertexStreams::allocate(1, 0x40000u);

    if (driver != nullptr) {
        m_indexBuffer = driver->createBuffer(1, 4, 0, nullptr, true);         // E_BUFFER_TYPE 1 (index), usage 4
    } else {
        m_indexBuffer = nullptr;
    }
    m_vertexData = nullptr;                                                   // +0x2c
    m_indices = nullptr;                                                      // +0x30
    m_driver = driver;                                                        // +0x34, not owned
    m_playerContext = nullptr;                                                // +0x38
    for (MaterialData& slot : m_materials) {
        slot.m_renderer = nullptr;
        slot.m_material = nullptr;
        slot.m_parameterId2 = 0xffff;
        slot.m_parameterId6 = 0xffff;
    }
    m_texture = nullptr;                                                      // +0x108
    m_materialIndex = 0;                                                      // +0x10c

    boost::intrusive_ptr<IBuffer> vertexBuffer;
    if (driver != nullptr) {
        vertexBuffer = driver->createBuffer(0, 4, 0, nullptr, true);          // E_BUFFER_TYPE 0 (vertex), usage 4
    }

    unk_18 = 0;
    m_indexCursor = 0;
    unk_20 = 0;
    m_vertexCount = 0;
    unk_28 = 1;                                                               // CPrimitiveStream::m_indexType, 16-bit
    m_primitiveType = 4;

    CVertexStreams& streams = *m_vertexStreams;
    SVertexStreamData data;
    data.buffer = vertexBuffer;
    data.offset = 12;
    data.field08 = 6;
    data.field0c = 3;
    data.field0e = 24;
    streams.setStream(&streams.m_streams[0], data, true);

    data.buffer = vertexBuffer;
    data.offset = 0;
    data.field08 = 6;
    data.field0c = 2;
    data.field0e = 24;
    streams.setStream(&streams.m_streams[1], data, true);

    data.buffer = vertexBuffer;
    data.offset = 8;
    data.field08 = 1;
    data.field0c = 4;
    data.field0e = 24;
    streams.setStream(&streams.m_streams[2], data, false);

    ensureBufferCapacity(1024);
}

// 0x7d4ab0 _ZN16BufferedRenderer23createBlendModeMaterialEN5boost13intrusive_ptrIN6glitch5video17CMaterialRendererEEEiPKc
// Creates the material of blend slot index from renderer and records the technique the name selects. The original
// returns the technique id on success; this port returns void.
void BufferedRenderer::createBlendModeMaterial(boost::intrusive_ptr<CMaterialRenderer> renderer, int index,
                                               const char* techniqueName) {
    boost::intrusive_ptr<CMaterial> material = CMaterial::allocate(renderer, nullptr, 0);
    MaterialData& slot = m_materials[index];
    slot.setMaterial(material);
    const uint8_t technique = renderer->getTechniqueID(techniqueName);
    if (technique == 0xff) {
        gameswf::log_msg("unsupported blend mode technique: %s\n", techniqueName);
        return;
    }
    slot.m_material->m_technique = technique;                                 // CMaterial +0x08
}

// 0x7d673c _ZN16BufferedRenderer15getWireMaterialEv
// Sets up material slot 16 for wireframe drawing: the first pass gets width 1.0, the colour mask is set, and the state
// bits 16 and 19 are cleared, bits 12-13 are set to 1 and bits 14-15 to 1.
BufferedRenderer::MaterialData* BufferedRenderer::getWireMaterial() {
    MaterialData& wire = m_materials[16];
    editFirstPass(*wire.m_material, [](SRenderState& s) { s.m_float0c = 1.0f; });
    glitch::video::setColorMask(wire.m_material, true, true, true, true);
    editFirstPass(*wire.m_material, [](SRenderState& s) {
        s.m_word04 &= ~0x00010000u;                          // bit 16 off
        s.m_word04 &= ~0x00080000u;                          // bit 19 off
        s.m_word04 = (s.m_word04 & 0xFFFFCFFFu) | 0x00001000u;  // bits 12-13 = 1
        s.m_word04 = (s.m_word04 & 0xFFFF3FFFu) | 0x00004000u;  // bits 14-15 = 1
    });
    return &wire;
}

// 0x7d6894 _ZN16BufferedRenderer5flushEv
// Reconstructed (r3b-w2) from the disassembly 0x7d6894..0x7d6a3c; the SET-UP the earlier note left out is now
// written through the accessors the scene classes use (scene/material_access.hpp). Loads the streams field at +8
// and returns when it is zero (0x7d68a4); gameswf::texture_cache::unlock_all(m_playerContext) (0x7d68bc); the batch
// count is moved into streams +8 and addOffset(m_vertexOffset) runs (0x7d68c0..0x7d68dc). The selected slot is
// m_materials[m_materialIndex] when its material pointer (+0x40 of the slot) is set, else slot 0 (0x7d68ec..0x7d690c;
// the wire-frame path calls getWireMaterial at 0x7d6a30). Then, on the selected slot:
//   * setParameter(slot.m_parameterId2 (+0x08), 0, m_texture) (0x7d691c, LDRH R1,[R5,#8]);
//   * when slot.m_parameterId6 (+0x0A) is not 0xFFFF and m_texture is set (0x7d6924..0x7d693c), setParameterCvt(
//     slot.m_parameterId6, 0, colour) (0x7d6988) where colour is white SColorf(1,1,1,0) when the texture pixel-format
//     bits (ITexture +0x38, UBFX #4 width 6) equal 2, black SColorf(0,0,0,0) otherwise (0x7d6940..0x7d6980).
// Then setMaterial(slot.m_material, nullptr) and draw (0x7d6994/0x7d69bc), the batch offset is undone and the
// counters are cleared: with unk_00 (+0x00) equal to 1 the vertex base becomes the batch count and the streams keep
// it, otherwise both drop to 0 (0x7d69f0..0x7d6a18). The attribute-map and binding arguments stay nullptr: the
// original's .clone symbols fold them.
void BufferedRenderer::flush() {
    if (m_vertexStreams->m_field08 == 0) {
        return;
    }
    gameswf::texture_cache::unlock_all(m_playerContext);
    CVertexStreams& streams = *m_vertexStreams;
    const uint32_t count = streams.m_field08;                                 // the batch's vertex count (old)
    streams.m_field08 = count - static_cast<uint32_t>(m_vertexOffset);
    streams.addOffset(m_vertexOffset);

    MaterialData* selected = nullptr;
    if (m_wireFrame) {
        selected = getWireMaterial();
    } else {
        selected = m_materials[m_materialIndex].m_material ? &m_materials[m_materialIndex] : &m_materials[0];
    }

    glitch::scene::setMaterialTexture(*selected->m_material, selected->m_parameterId2, 0, m_texture);
    if (selected->m_parameterId6 != 0xffff && m_texture) {
        glitch::video::SColorf colour;
        if (((m_texture->m_flags38 >> 4) & 0x3fu) == 2) {
            colour = glitch::video::SColorf{1.0f, 1.0f, 1.0f, 0.0f};  // the original writes 1,1,1,0 at 0x7d6948
        } else {
            colour = glitch::video::SColorf{0.0f, 0.0f, 0.0f, 0.0f};  // and 0,0,0,0 otherwise
        }
        selected->m_material->parameters.setParameterCvt(selected->m_parameterId6, 0u, colour);
    }

    m_driver->setMaterial(selected->m_material,
                          static_cast<const boost::intrusive_ptr<glitch::video::CVertexAttributeMap>*>(nullptr));
    {
        boost::intrusive_ptr<const CVertexStreams> batch = m_vertexStreams;
        CPrimitiveStream primitives;
        primitives.m_indexBuffer = m_indexBuffer;                             // +0x14
        primitives.m_offset = static_cast<uint32_t>(unk_18);                  // +0x18
        primitives.m_count = static_cast<uint32_t>(m_indexCursor);            // +0x1c
        primitives.m_vertexStart = static_cast<uint32_t>(unk_20);             // +0x20
        primitives.m_vertexEnd = static_cast<uint32_t>(m_vertexCount);        // +0x24
        primitives.m_indexType = unk_28;                                      // +0x28
        primitives.m_primitiveType = m_primitiveType;                         // +0x2a
        m_driver->draw(batch, primitives, nullptr);
    }

    streams.addOffset(-m_vertexOffset);
    uint32_t kept = count;
    if (unk_00 == 1) {
        m_vertexOffset = static_cast<int32_t>(count);
    } else {
        kept = 0;
    }
    streams.m_field08 = kept;
    m_vertexCount = 0;
    m_indexCursor = 0;
    unk_20 = 0;
}

// 0x7d6a48 _ZN16BufferedRenderer10setTextureERN5boost13intrusive_ptrIN6glitch5video8ITextureEEE
// Makes texture the current texture. The batch is flushed first when the texture changes.
void BufferedRenderer::setTexture(boost::intrusive_ptr<ITexture>& texture) {
    if (m_texture.get() != texture.get()) {
        flush();
    }
    m_texture = texture;
}

// 0x7d6a98 _ZN16BufferedRenderer13clearTexturesEv
// Reconstructed (r3b-w2) from the disassembly 0x7d6a98..0x7d6b40: the current texture is cleared through
// setTexture(nullptr) (which flushes first when it changes), and then every one of the 17 material slots gets
// setParameter(slot.m_parameterId2, 0, null texture) - the same accessor flush() uses - so no slot keeps the
// released texture. (The earlier note left the per-slot clears out because CMaterial had no parameter block to
// call; the parameter block is CMaterial::parameters, as in scene/material_access.hpp.)
void BufferedRenderer::clearTextures() {
    boost::intrusive_ptr<ITexture> none;
    setTexture(none);
    for (MaterialData& slot : m_materials) {
        if (slot.m_material) {
            glitch::scene::setMaterialTexture(*slot.m_material, slot.m_parameterId2, 0, none);
        }
    }
}

// 0x7d6ea0 _ZN16BufferedRenderer11queueBufferERKN5boost13intrusive_ptrIN6glitch5video14CVertexStreamsEEENS3_16E_PRIMITIVE_TYPEE
// Appends the vertices of streams to the batch as one primitive run. For a type-4 batch (triangle strip) the first
// source vertex is repeated before the run and the last one after it, with the indices that join them.
void BufferedRenderer::queueBuffer(const boost::intrusive_ptr<CVertexStreams>& streams,
                                   glitch::video::E_PRIMITIVE_TYPE primitiveType) {
    CVertexStreams& batch = *m_vertexStreams;
    uint32_t base = batch.m_field08;
    uint32_t needed = base + streams->m_field08 + 2;
    if (needed >= static_cast<uint32_t>(m_capacity) || primitiveType != m_primitiveType) {
        flush();
        m_primitiveType = static_cast<uint16_t>(primitiveType);
        base = batch.m_field08;
        needed = base + streams->m_field08 + 2;
    }
    uint32_t cursor = static_cast<uint32_t>(m_indexCursor);
    ensureBufferCapacity(static_cast<int>(needed));

    const uint8_t* source = streams->m_streams[0].buffer->m_data;
    uint8_t* dst = m_vertexData;
    uint16_t* idx = m_indices;
    uint32_t v5 = base;
    if (v5 > 0 && m_primitiveType == 4) {
        copyVertices(dst + kVertexSize * v5, source, 1);
        idx[cursor] = static_cast<uint16_t>(v5 - static_cast<uint32_t>(m_vertexOffset));
        ++cursor;
        ++v5;
    }

    const uint32_t count = streams->m_field08;
    if (count > 0) {
        for (uint32_t k = 0; k < count; ++k) {
            idx[cursor + k] = static_cast<uint16_t>(v5 + k - static_cast<uint32_t>(m_vertexOffset));
        }
        cursor += count;
    }
    copyVertices(dst + kVertexSize * v5, source, count);

    uint32_t end = v5 + streams->m_field08;
    if (m_primitiveType == 4) {
        // The original reads source vertex (count - 1) here; for an empty source that is the vertex before the buffer.
        copyVertices(dst + kVertexSize * end, source + kVertexSize * (streams->m_field08 - 1), 1);
        ++cursor;
        // The original indexes this slot by the vertex index, not by the cursor. Kept as it is.
        idx[end] = static_cast<uint16_t>(end - static_cast<uint32_t>(m_vertexOffset));
        ++end;
    }

    m_indexCursor = static_cast<int32_t>(cursor);
    unk_20 = 0;
    m_vertexCount = static_cast<int32_t>(end - static_cast<uint32_t>(m_vertexOffset));
    batch.m_field08 = end;
}

// 0x7d7094 _ZN16BufferedRenderer21queueIndexedTrianglesERKN5boost13intrusive_ptrIN6glitch5video14CVertexStreamsEEEPKti
// Appends an indexed triangle list: the indices are rebased to the batch's vertex base, and the vertices are appended.
void BufferedRenderer::queueIndexedTriangles(const boost::intrusive_ptr<CVertexStreams>& streams,
                                             const uint16_t* indices, int indexCount) {
    CVertexStreams& batch = *m_vertexStreams;
    int32_t base = static_cast<int32_t>(batch.m_field08);
    int32_t needed = base + static_cast<int32_t>(streams->m_field08);
    int32_t cursor = m_indexCursor;
    int32_t indexEnd = cursor + indexCount;
    if (static_cast<uint32_t>(needed) >= static_cast<uint32_t>(m_capacity) || m_capacity < indexEnd ||
        m_primitiveType != 6) {
        flush();
        m_primitiveType = 6;
        cursor = m_indexCursor;
        base = static_cast<int32_t>(batch.m_field08);
        indexEnd = cursor + indexCount;
        needed = base + static_cast<int32_t>(streams->m_field08);
    }
    if (needed < indexEnd) {
        needed = indexEnd;
    }
    ensureBufferCapacity(needed);

    if (indexCount > 0) {
        const uint16_t offset16 = static_cast<uint16_t>(base - m_vertexOffset);
        for (int i = 0; i < indexCount; ++i) {
            m_indices[cursor + i] = static_cast<uint16_t>(offset16 + indices[i]);
        }
        cursor = indexEnd;
    }
    copyVertices(m_vertexData + kVertexSize * static_cast<std::size_t>(base),
                 streams->m_streams[0].buffer->m_data, streams->m_field08);

    const int32_t end = base + static_cast<int32_t>(streams->m_field08);
    batch.m_field08 = static_cast<uint32_t>(end);
    m_indexCursor = cursor;
    unk_20 = 0;
    m_vertexCount = end - m_vertexOffset;
}

// 0x7d72b4 _ZN16BufferedRenderer5resetEv
// Starts a new batch: the counters are cleared, the colour mask is set on material slot 0, and slot 0's first pass
// gets bit 16 set, bit 19 cleared, and bits 12-15 cleared. The original returns the technique of slot 0; this port
// returns void.
void BufferedRenderer::reset() {
    m_vertexStreams->m_field08 = 0;
    m_vertexOffset = 0;
    m_indexCursor = 0;
    unk_20 = 0;
    m_vertexCount = 0;
    glitch::video::setColorMask(m_materials[0].m_material, true, true, true, true);
    editFirstPass(*m_materials[0].m_material, [](SRenderState& s) {
        s.m_word04 |= 0x00010000u;   // bit 16 on
        s.m_word04 &= ~0x00080000u;  // bit 19 off
        s.m_word04 &= ~0x00003000u;  // bits 12-13 off
        s.m_word04 &= ~0x0000C000u;  // bits 14-15 off
    });
}

// 0x7d7b8c _ZN16BufferedRendererD1Ev
// The original releases, in order: the texture (+0x108), material slots 16 down to 0 (material, then renderer), the
// index buffer (+0x14), and the vertex streams (+0x10). The members are declared in the same order, so their destructors
// run in the same order. Neither the vertex nor the index array is freed here; their IBuffers own them.
BufferedRenderer::~BufferedRenderer() = default;

// 0x7d7f28 _ZN16BufferedRenderer14applyMaskStateEi
// Sets the first pass of the selected material for one mask step. Mode 0 is the mask read (colour mask on, bits 19 and
// 20 cleared). Mode 1 is the mask write (bit 19 and 20 set, bit 16 cleared, word 0 bits 27-29 set to 3, colour mask off).
// Mode 2 is the mask-as-stencil step (bit 19 set, word 0 bits 27-29 set to 2, bit 20 cleared, bit 16 set). Other modes do
// nothing.
void BufferedRenderer::applyMaskState(int mode) {
    MaterialData& slot = m_materials[m_materialIndex].m_material ? m_materials[m_materialIndex] : m_materials[0];
    switch (mode) {
    case 0:
        editFirstPass(*slot.m_material, [](SRenderState& s) {
            s.m_word04 &= ~0x00080000u;
            s.m_word04 &= ~0x00100000u;
        });
        glitch::video::setColorMask(slot.m_material, true, true, true, true);
        break;
    case 1:
        editFirstPass(*slot.m_material, [](SRenderState& s) {
            s.m_word04 |= 0x00080000u;
            s.m_word00 = (s.m_word00 & 0xC7FFFFFFu) | 0x18000000u;
            s.m_word04 |= 0x00100000u;
            s.m_word04 &= ~0x00010000u;
        });
        glitch::video::setColorMask(slot.m_material, false, false, false, true);
        break;
    case 2:
        editFirstPass(*slot.m_material, [](SRenderState& s) {
            s.m_word04 |= 0x00080000u;
            s.m_word00 = (s.m_word00 & 0xC7FFFFFFu) | 0x10000000u;
            s.m_word04 &= ~0x00100000u;
            s.m_word04 |= 0x00010000u;
        });
        glitch::video::setColorMask(slot.m_material, true, true, true, true);
        break;
    default:
        break;
    }
}
