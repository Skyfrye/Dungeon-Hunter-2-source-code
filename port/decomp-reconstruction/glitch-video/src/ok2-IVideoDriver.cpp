// Owner K2: IVideoDriver bodies that were skipped for lack of the classes they forward through: the immediate-mode line and quad
// drawing, the batch append, the process buffer allocation, the render target resize and capture, and the creation / release of
// the implementation dependent streams and buffers.
#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material_parameters_part_1b.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/s_new_buffer_allocator.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

// The statements the original repeats after every IBuffer::reset on an immediate buffer: a buffer that is not a driver-only usage
// (usage 4) and now has data is flagged (bit 1 of the flag byte).
void markBufferHasData(IBuffer* buffer) {
    if (buffer->m_usage != 4 && buffer->m_data != nullptr) buffer->m_flags12 |= 2u;  // +0x11, +0x08, +0x12
}

// One immediate-mode vertex: colour first, then the position (16 bytes).
struct SImmediateVertex {
    SColor color;
    float x, y, z;
};

// The primitive stream of an immediate draw without an index buffer.
CPrimitiveStream immediateStream(uint32_t count, uint16_t primitiveType) {
    CPrimitiveStream stream;
    stream.m_offset = 0;
    stream.m_count = count;
    stream.m_vertexStart = 0;
    stream.m_vertexEnd = count;
    stream.m_indexType = 255;
    stream.m_primitiveType = primitiveType;
    return stream;
}
}  // namespace

// 0x5a8cd0 _ZN6glitch5video12IVideoDriver8onResizeERKNS_4core11dimension2dIiEE
// The screen framebuffer follows the new device size (swapped for an odd orientation). A framebuffer with margins keeps its screen
// rectangle inside the new device area (the margins are what is left of it); the framebuffer then gets the device size minus the
// margins. Its viewport becomes the whole framebuffer when it covered the old one entirely, otherwise it is set again unchanged.
void IVideoDriver::onResize(const core::dimension2d<int32_t>& size) {
    IFramebuffer* framebuffer = static_cast<IFramebuffer*>(m_renderTargets.front().get());  // +0xc8
    // Track B addition (nothing in the original called onResize, the surface never changed size): the device keeps the size it was
    // created with at +0x60/+0x64 and ReinitDriver (after a lost GL context) sets glViewport and the driver size from it, so a later
    // resume would bring the old viewport back. The device follows the new size.
    if (m_device != nullptr) {
        const int32_t width = size.Width;
        const int32_t height = size.Height;
        std::memcpy(m_device->creationParameters.bytes + 4, &width, sizeof width);
        std::memcpy(m_device->creationParameters.bytes + 8, &height, sizeof height);
    }
    int32_t deviceWidth;
    int32_t deviceHeight;
    if ((m_orientation & 1) != 0) {  // +0x13c
        deviceWidth = size.Height;
        deviceHeight = size.Width;
    } else {
        deviceWidth = size.Width;
        deviceHeight = size.Height;
    }
    int32_t marginX = framebuffer->m_screenMarginX;  // +0x2c
    int32_t marginY;
    int32_t oldWidth;
    if (framebuffer->m_screenMarginX != 0 || (marginY = framebuffer->m_screenMarginY) != 0) {  // +0x30
        const int32_t screenX = framebuffer->m_screenX;  // +0x24
        const int32_t screenY = framebuffer->m_screenY;  // +0x28
        oldWidth = framebuffer->m_width;
        int32_t left = screenX & ~(screenX >> 31);  // max(screenX, 0)
        int32_t right = screenX + oldWidth;
        int32_t bottom = screenY + framebuffer->m_height;
        if (deviceWidth < right) right = deviceWidth;
        if (deviceHeight < bottom) bottom = deviceHeight;
        int32_t top = screenY & ~(screenY >> 31);  // max(screenY, 0)
        if (bottom < top) top = bottom;
        if (right < left) left = right;
        marginX = deviceWidth - (right - left);
        marginY = deviceHeight - (bottom - top);
        framebuffer->m_screenX = left;
        framebuffer->m_screenY = top;
        framebuffer->m_screenMarginY = marginY;
        framebuffer->m_screenMarginX = marginX;
    } else {
        oldWidth = framebuffer->m_width;
        marginX = 0;
        marginY = 0;
    }
    const core::rect<int32_t> oldViewport = framebuffer->m_viewport;  // +0x14..+0x23
    const int32_t newWidth = deviceWidth - marginX;
    const int32_t newHeight = deviceHeight - marginY;
    if (oldViewport.LowerRightCorner.X - oldViewport.UpperLeftCorner.X == oldWidth &&
        oldViewport.LowerRightCorner.Y - oldViewport.UpperLeftCorner.Y == framebuffer->m_height) {
        framebuffer->m_width = newWidth;
        framebuffer->m_height = newHeight;
        core::rect<int32_t> whole;
        whole.UpperLeftCorner.X = 0;
        whole.UpperLeftCorner.Y = 0;
        whole.LowerRightCorner.X = framebuffer->m_width;
        whole.LowerRightCorner.Y = framebuffer->m_height;
        framebuffer->setViewport(whole);  // vtable +0x0c
    } else {
        framebuffer->m_width = newWidth;
        framebuffer->m_height = newHeight;
        framebuffer->setViewport(oldViewport);
    }
}

// 0x5a9638 _ZN6glitch5video12IVideoDriver18captureFramebufferERKN5boost13intrusive_ptrINS0_8ITextureEEERKNS_4core10position2dIiEERKNS8_4rectIiEEhNS0_23E_TEXTURE_CUBE_MAP_FACEEb
// Checks that the texture exists, has the mip level (a texture with the "only level 0 on the client" flag only level 0) and the cube
// face, that the destination is inside it, then clips the source area to the current render target's viewport (an area with a
// negative destination loses that part at its near edge) and hands it to captureFramebufferImpl (vtable +0x9c).
bool IVideoDriver::captureFramebuffer(const boost::intrusive_ptr<ITexture>& texture, const core::position2d<int32_t>& position,
                                      const core::rect<int32_t>& area, uint8_t level, E_TEXTURE_CUBE_MAP_FACE face, bool flag) {
    const ITexture* target = texture.get();
    if (target == nullptr || target->m_mipCount3e <= level || ((target->m_flags3f & 2) != 0 && level != 0)) return false;
    const int32_t faces = (target->m_flags38 & 3) == 2 ? 6 : 1;
    if (face >= faces) return false;
    if (position.X >= static_cast<int32_t>(target->m_width)) return false;   // +0x20
    if (position.Y >= static_cast<int32_t>(target->m_height)) return false;  // +0x24
    core::rect<int32_t> source = area;
    core::position2d<int32_t> destination = position;
    if (position.X < 0) {
        source.UpperLeftCorner.X = area.UpperLeftCorner.X - position.X;
        destination.X = 0;
    }
    int32_t top = source.UpperLeftCorner.Y;
    if (position.Y < 0) {
        top = source.UpperLeftCorner.Y - position.Y;
        source.UpperLeftCorner.Y = top;
        destination.Y = 0;
    }
    int32_t right = source.LowerRightCorner.X;
    const IRenderTarget* current = m_renderTargets.back().get();  // +0xcc, the last entry
    const core::rect<int32_t>& viewport = current->m_viewport;
    bool clipped = viewport.LowerRightCorner.X < source.LowerRightCorner.X;
    if (clipped) source.LowerRightCorner.X = viewport.LowerRightCorner.X;
    int32_t bottom = source.LowerRightCorner.Y;
    if (clipped) right = viewport.LowerRightCorner.X;
    clipped = viewport.LowerRightCorner.Y < source.LowerRightCorner.Y;
    if (clipped) source.LowerRightCorner.Y = viewport.LowerRightCorner.Y;
    int32_t left = source.UpperLeftCorner.X;
    if (clipped) bottom = viewport.LowerRightCorner.Y;
    const bool leftInside = viewport.UpperLeftCorner.X <= source.UpperLeftCorner.X;
    if (!leftInside) source.UpperLeftCorner.X = viewport.UpperLeftCorner.X;
    int32_t topLimit = viewport.UpperLeftCorner.Y;
    if (!leftInside) left = viewport.UpperLeftCorner.X;
    if (topLimit > top) {
        source.UpperLeftCorner.Y = topLimit;
    } else {
        topLimit = top;
    }
    if (bottom < topLimit) source.UpperLeftCorner.Y = bottom;
    if (left > right) source.UpperLeftCorner.X = right;
    if (bottom < source.UpperLeftCorner.Y) return false;
    return captureFramebufferImpl(texture, destination, source, level, face, flag);  // vtable +0x9c
}

// 0x5ac430 _ZN6glitch5video12IVideoDriver10draw3DLineERKNS_4core8vector3dIfEES6_NS0_6SColorE
// Two vertices (colour, x, y, z) go to the immediate vertex buffer (+0xb0, 0x20 bytes, not owned); the immediate stream table
// (+0xa4) draws them as one line.
void IVideoDriver::draw3DLine(const core::vector3d<float>& start, const core::vector3d<float>& end, SColor color) {
    SImmediateVertex vertices[2];
    vertices[0].color = color;
    vertices[0].x = start.X;
    vertices[0].y = start.Y;
    vertices[0].z = start.Z;
    vertices[1].color = color;
    vertices[1].x = end.X;
    vertices[1].y = end.Y;
    vertices[1].z = end.Z;
    m_immediateVertices->reset(0x20, vertices, false);
    markBufferHasData(m_immediateVertices.get());
    m_immediateStreams->m_field08 = 2;
    {
        boost::intrusive_ptr<const CVertexStreams> streams(m_immediateStreams.get(), true);
        const CPrimitiveStream primitives = immediateStream(2, 3);  // lines
        draw(streams, primitives, nullptr);
    }
}

// 0x5ac2a8 _ZN6glitch5video12IVideoDriver11draw3DLinesEPNS_4core8vector3dIfEEPtPNS0_6SColorEjj
// Indexed lines: the positions (12 bytes each), the colours (4 bytes each) and the 16-bit indices (4 bytes per line) are put into
// the three immediate buffers, not owned, and drawn with the separate-stream table (+0xa8), whose vertex count word is the
// number of positions.
void IVideoDriver::draw3DLines(core::vector3d<float>* positions, uint16_t* indices, SColor* colors, uint32_t count,
                               uint32_t indexCount) {
    m_immediateVertices->reset(12 * count, positions, false);  // +0xb0
    markBufferHasData(m_immediateVertices.get());
    m_immediateColors->reset(4 * count, colors, false);  // +0xb4
    markBufferHasData(m_immediateColors.get());
    m_immediateIndices->reset(4 * indexCount, indices, false);  // +0xb8
    markBufferHasData(m_immediateIndices.get());
    m_lineStreams->m_field08 = count;
    {
        boost::intrusive_ptr<const CVertexStreams> streams(m_lineStreams.get(), true);
        CPrimitiveStream primitives;
        primitives.m_indexBuffer = m_immediateIndices;
        primitives.m_offset = 0;
        primitives.m_count = 2 * indexCount;
        primitives.m_vertexStart = 0;
        primitives.m_vertexEnd = count;
        primitives.m_indexType = 1;
        primitives.m_primitiveType = 3;
        draw(streams, primitives, nullptr);
    }
}

// 0x5ac7bc _ZN6glitch5video12IVideoDriver10draw2DLineERKNS_4core10position2dIiEES6_NS0_6SColorE
// As draw3DLine with the integer positions converted to float and z = 0.
void IVideoDriver::draw2DLine(const core::position2d<int32_t>& start, const core::position2d<int32_t>& end, SColor color) {
    SImmediateVertex vertices[2];
    vertices[0].color = color;
    vertices[0].x = static_cast<float>(start.X);
    vertices[0].y = static_cast<float>(start.Y);
    vertices[0].z = 0.0f;
    vertices[1].color = color;
    vertices[1].x = static_cast<float>(end.X);
    vertices[1].y = static_cast<float>(end.Y);
    vertices[1].z = 0.0f;
    m_immediateVertices->reset(0x20, vertices, false);
    markBufferHasData(m_immediateVertices.get());
    m_immediateStreams->m_field08 = 2;
    {
        boost::intrusive_ptr<const CVertexStreams> streams(m_immediateStreams.get(), true);
        const CPrimitiveStream primitives = immediateStream(2, 3);
        draw(streams, primitives, nullptr);
    }
}

// 0x5ac5b8 _ZN6glitch5video12IVideoDriver11draw2DLinesEPNS_4core10position2dIiEEPtPNS0_6SColorEjj
// As draw3DLines with the positions converted to float (z = 0) in a process buffer block that is given back afterwards. The
// stream table's vertex count word and the primitive stream's counts are twice the index count here.
void IVideoDriver::draw2DLines(core::position2d<int32_t>* positions, uint16_t* indices, SColor* colors, uint32_t count,
                               uint32_t indexCount) {
    float* converted = reinterpret_cast<float*>(glitch::core::allocProcessBuffer(static_cast<int>(12 * count)));
    for (uint32_t i = 0; i < count; ++i) {
        converted[3 * i] = static_cast<float>(positions[i].X);
        converted[3 * i + 1] = static_cast<float>(positions[i].Y);
        converted[3 * i + 2] = 0.0f;
    }
    m_immediateVertices->reset(12 * count, converted, false);
    markBufferHasData(m_immediateVertices.get());
    m_immediateColors->reset(4 * count, colors, false);
    markBufferHasData(m_immediateColors.get());
    m_immediateIndices->reset(4 * indexCount, indices, false);
    markBufferHasData(m_immediateIndices.get());
    m_lineStreams->m_field08 = 2 * indexCount;
    {
        boost::intrusive_ptr<const CVertexStreams> streams(m_lineStreams.get(), true);
        CPrimitiveStream primitives;
        primitives.m_indexBuffer = m_immediateIndices;
        primitives.m_offset = 0;
        primitives.m_count = 2 * indexCount;
        primitives.m_vertexStart = 0;
        primitives.m_vertexEnd = 2 * indexCount;
        primitives.m_indexType = 1;
        primitives.m_primitiveType = 3;
        draw(streams, primitives, nullptr);
    }
    glitch::core::releaseProcessBuffer(converted);
}

// 0x5ac950 _ZN6glitch5video12IVideoDriver18drawFullScreenQuadEPKNS0_6SColorE
// Draws a triangle strip over the whole screen: the world, view and projection transforms (1, 0, 2) are replaced by the identity
// for the draw and restored. The four vertices are (-1,-1), (-1,1), (1,-1), (1,1) with the four given colours.
void IVideoDriver::drawFullScreenQuad(const SColor* colors) {
    const core::CMatrix4<float> saved1(getTransform(1));  // vtable +0x70
    const core::CMatrix4<float> saved0(getTransform(0));
    const core::CMatrix4<float> saved2(getTransform(2));
    core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
    setTransform(1, identity);  // vtable +0x6c
    setTransform(0, identity);
    setTransform(2, identity);
    SImmediateVertex vertices[4];
    const float corners[4][2] = {{-1.0f, -1.0f}, {-1.0f, 1.0f}, {1.0f, -1.0f}, {1.0f, 1.0f}};
    for (int i = 0; i < 4; ++i) {
        vertices[i].color = colors[i];
        vertices[i].x = corners[i][0];
        vertices[i].y = corners[i][1];
        vertices[i].z = 0.0f;
    }
    m_immediateVertices->reset(0x40, vertices, false);
    markBufferHasData(m_immediateVertices.get());
    m_immediateStreams->m_field08 = 4;
    {
        boost::intrusive_ptr<const CVertexStreams> streams(m_immediateStreams.get(), true);
        const CPrimitiveStream primitives = immediateStream(4, 4);  // triangle strip
        draw(streams, primitives, nullptr);
    }
    setTransform(1, saved1);
    setTransform(0, saved0);
    setTransform(2, saved2);
}

// 0x5acfd0 _ZN6glitch5video12IVideoDriver18forceCommitTextureERKN5boost13intrusive_ptrINS0_8ITextureEEE
// Renders nothing, only makes the driver bind the texture: with option 0x2000 set, the "Force Commit Texture" material (renderer
// type 16, created on first use) gets the texture in the parameter of its type (the texture's type bits), is made the current
// material, and loses the texture again; the previous material and the batching option (0x100) are restored.
void IVideoDriver::forceCommitTexture(const boost::intrusive_ptr<ITexture>& texture) {
    if ((m_options & 0x2000) == 0) return;  // +0x88
    bool batching = (m_options & 0x100) != 0;
    if (batching) setOption(0x100, false);  // vtable +0xa0
    CMaterialRendererManager* manager = m_materialRendererManager;  // +0xdc
    uint16_t rendererId = manager->m_materialTypeIds[16];  // +0x4c
    if (rendererId == 0xffff) rendererId = manager->createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(16));
    boost::intrusive_ptr<CMaterial> material = manager->getMaterialInstance(rendererId, true);
    const uint16_t parameter = static_cast<uint16_t>(texture->m_flags38 & 3);
    material->parameters.setParameter<boost::intrusive_ptr<ITexture>>(parameter, 0, texture);
    CMaterial* previous = m_materialEc;           // +0xec
    const auto* previousAttributes = m_stateE8;   // +0xe8
    const uint8_t previousTechnique = m_flagF8;   // +0xf8
    setMaterialInternal(material.get(), static_cast<uint8_t>(texture->m_flags38 & 3), &unk_144[0]);
    {
        const boost::intrusive_ptr<ITexture> none;
        material->parameters.setParameter<boost::intrusive_ptr<ITexture>>(parameter, 0, none);
    }
    if (previous != nullptr) {
        setMaterialInternal(previous, previousTechnique, previousAttributes);
    } else {
        m_materialEc = nullptr;
        m_flagF8 = previousTechnique;
        m_stateE8 = previousAttributes;
    }
    material.reset();
    if (batching != ((m_options & 0x100) != 0)) setOption(0x100, batching);
}

// 0x5adfa8 _ZN6glitch5video12IVideoDriver4drawERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingERKNS1_IKNS_5scene11CMeshBufferEEE
// Nothing is drawn for an empty primitive stream. With option 0x100 the draw is collected into the batch, otherwise it goes to the
// driver's drawImpl (vtable +0x200).
void IVideoDriver::draw(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                        CDriverBinding** binding, const boost::intrusive_ptr<const scene::CMeshBuffer>& /*meshBuffer*/) {
    if (primitives.m_count == 0) return;
    if ((m_options & 0x100) != 0) {  // +0x88
        appendBatch(streams, primitives, binding);
    } else {
        drawImpl(streams, primitives, binding);
    }
}

// 0x35ebd0 _ZN6glitch5video12IVideoDriver14drawMeshBufferERKN5boost13intrusive_ptrIKNS_5scene11CMeshBufferEEE
// Draws a mesh buffer through the four-argument draw slot (+0x58) with its stream table (+0x14), primitive stream (+0x18) and the
// driver binding word (+0x30).
void IVideoDriver::drawMeshBuffer(const boost::intrusive_ptr<const scene::CMeshBuffer>& meshBuffer) {
    const scene::CMeshBuffer* buffer = meshBuffer.get();
    if (buffer == nullptr) return;
    boost::intrusive_ptr<const CVertexStreams> streams(buffer->vertexStreams.get(), true);
    draw(streams, buffer->primitiveStream, const_cast<CDriverBinding**>(&buffer->owner), meshBuffer);  // vtable +0x58
}

// 0x5adba0 _ZN6glitch5video12IVideoDriver11appendBatchERKN5boost13intrusive_ptrIKNS0_14CVertexStreamsEEERKNS0_16CPrimitiveStreamEPPNS0_14CDriverBindingE
// A draw that does not fit the current batch buffer (more vertices or indices than it can ever hold, more than the limit for one
// batch, a line or point primitive, or an index buffer that is not 16-bit) flushes the batch (restoring the baker's configuration
// when the "batch pending" flag was set) and is drawn directly with the batch material. Otherwise it is baked into the batch
// buffer (flushing it first when the space is short): the baker appends the vertices and indices, and the buffer's used sizes
// and the primitive stream's counts are updated.
bool IVideoDriver::appendBatch(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                               CDriverBinding** binding) {
    auto* batch = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());  // +0x120
    const uint32_t vertexCount = primitives.m_vertexEnd - primitives.m_vertexStart;
    auto flushBatch = [this]() {
        drawPendingBatch();
        if ((m_stateFlags & 8) != 0) {  // +0x138
            m_stateFlags &= ~8u;
            boost::intrusive_ptr<scene::CAppendMeshBuffer> held(static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get()), true);
            m_batchBaker->configureAppendBuffer(held);  // baker vtable +0x18
        }
    };
    const uint32_t triangleIndices = 3 * primitives.getPrimitiveCount();
    if (vertexCount > batch->vertexCapacityBytes / batch->vertexStride ||            // +0x38, +0x48
        triangleIndices > batch->indexCapacityBytes / batch->indexStride ||          // +0x40, +0x4c
        vertexCount > m_maxBatchIndices ||                                           // +0x10c
        primitives.m_primitiveType <= 3u ||
        (primitives.m_indexType != 1 && primitives.m_indexBuffer.get() != nullptr)) {
        if ((m_options & 0x200) == 0) flushBatch();
        setMaterialInternal(m_batchMaterialHeap, m_batchTechnique, m_stateE8);  // +0x12c, +0x134, +0xe8
        drawImpl(streams, primitives, binding);                                    // vtable +0x200
        if ((m_options & 0x200) != 0) setMaterialInternal(m_batchMaterial.get(), 0, m_stateE8);
        return true;
    }
    if (!batch->hasEnoughSpace(vertexCount, 3 * primitives.getPrimitiveCount())) flushBatch();
    batch->beginAppend();
    const uint8_t* attributeMap;
    if (m_stateE8 != nullptr) {
        attributeMap = (*m_stateE8)->m_map;  // the material's vertex attribute map, bytes at +0x04
    } else {
        makeDefaultAttributeMap(streams.get(), DefaultAttribMap);
        attributeMap = DefaultAttribMap;
    }
    batch = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    IBatchBaker* baker = m_batchBaker.get();  // +0x128
    const uint32_t verticesSoFar = batch->vertexUsedBytes / batch->vertexStride;
    const uint32_t trianglesSoFar = (batch->indexUsedBytes / batch->indexStride) / 3;
    baker->bake(streams, primitives, m_batchMaterialHeap, m_batchTechnique, attributeMap, batch->vertexStreams,
                batch->primitiveStream, m_batchMaterial.get(), baker->getVertexAttributeMap()->m_map, this,
                primitives.m_vertexStart, primitives.m_vertexEnd, 0, primitives.getPrimitiveCount(), verticesSoFar,
                trianglesSoFar, 0xffffffffu);
    batch = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    uint32_t used = batch->vertexUsedBytes;
    const uint32_t added = primitives.m_vertexEnd - primitives.m_vertexStart;
    const uint32_t before = used / batch->vertexStride;
    if (used < batch->vertexStride * static_cast<uint16_t>(static_cast<uint16_t>(added) + static_cast<uint16_t>(before))) {
        used = batch->vertexStride * static_cast<uint16_t>(static_cast<uint16_t>(added) + static_cast<uint16_t>(before));
    }
    batch->vertexUsedBytes = used;
    batch->vertexStreams->m_field08 = used;  // the stream table's count word (+0x08)
    batch = static_cast<scene::CAppendMeshBuffer*>(m_batchBuffer.get());
    const uint32_t indicesSoFar = batch->indexUsedBytes / batch->indexStride;
    uint32_t indexBytes = (primitives.getPrimitiveCount() + indicesSoFar / 3) * 3 * batch->indexStride;
    const uint32_t vertexBytes = batch->vertexUsedBytes;
    if (indexBytes < batch->indexUsedBytes) indexBytes = batch->indexUsedBytes;
    batch->primitiveStream.m_count = indexBytes;     // +0x20
    batch->primitiveStream.m_vertexEnd = vertexBytes;  // +0x28
    batch->primitiveStream.m_vertexStart = 0;        // +0x24
    batch->indexUsedBytes = indexBytes;              // +0x44
    return true;
}

// 0x5acc34 _ZN6glitch5video12IVideoDriver16getProcessBufferENS0_21E_PROCESS_BUFFER_TYPEEjjjRKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEPPNS0_14CDriverBindingEb
// Type 0 (the process buffer heap): refuses (16) a binding that already holds data or has a batch-mesh source, otherwise takes the
// last buffer of the heap (making one when the heap is empty), lets allocateProcessBuffer point the streams of the mask at a block
// of the process heap in it, and removes that buffer from the heap on success (4); 8 when nothing could be allocated.
// Type 1 (a buffer owned by the binding): a binding without a batch-mesh source (+0x18) goes to CDriverBinding::getProcessBuffer.
// A binding of a batch mesh segment instead points the streams at the vertex buffers of the mesh buffer the segment lives in
// (the stream table's own streams for masks 1 and 0x20001, setStreams otherwise), moved by the stride times the difference of the
// segment's first vertex and vertexCount; the result is 5.
E_DRIVER_ALLOCATION_RESULT IVideoDriver::getProcessBuffer(E_PROCESS_BUFFER_TYPE type, uint32_t vertexCount, uint32_t indexCount,
                                                          uint32_t mask, const boost::intrusive_ptr<CVertexStreams>& streams,
                                                          CDriverBinding** binding, bool create) {
    if (type == 0) {
        if (binding != nullptr && *binding != nullptr) {
            CDriverBinding* existing = *binding;
            IBuffer* held = existing->m_processBuffer.get();  // +0x04
            if (held != nullptr && held->m_data != nullptr) return 16;
            if (existing->unk_18 != nullptr) return 16;
        }
        uint16_t stride = 0;
        if (m_processBufferHeap.empty()) {  // +0xbc
            m_processBufferHeap.push_back(createBuffer(0, 4, 0, nullptr, true));  // vtable +0x78
        }
        detail::SProcessBufferHeapBufferAllocator allocator;
        allocator.m_buffer = m_processBufferHeap.back();
        boost::intrusive_ptr<IBuffer> result =
            glitch::video::allocateProcessBuffer<detail::SProcessBufferHeapBufferAllocator>(vertexCount, indexCount, mask, streams, allocator, stride);
        allocator.m_buffer.reset();
        if (result.get() == nullptr) return 8;
        m_processBufferHeap.pop_back();
        return 4;
    }
    if (type != 1) return 4;

    CDriverBinding* driverBinding = ensureBinding(binding);
    const auto* mesh = static_cast<const scene::CBatchMesh*>(driverBinding->unk_18);  // +0x18
    if (mesh == nullptr) {
        return driverBinding->getProcessBuffer<IVideoDriver>(this, vertexCount, indexCount, mask, streams, create);
    }
    if (driverBinding->m_processBuffer.get() != nullptr) driverBinding->m_processBuffer.reset();
    driverBinding->m_lastAttributes = 0;
    driverBinding->m_lastVertexCount = 0;
    driverBinding->m_lastIndexCount = 0;
    driverBinding->m_lastStreams = nullptr;
    // The record of the segment this binding stands for, and the batch (mesh buffer) its content lives in.
    const scene::CBatchMesh::SSegmentInfo& info = mesh->segmentInfos[driverBinding->unk_1c];  // +0x1c
    const scene::CBatchMesh::SBatch& ownBatch = mesh->batches[info.batch];
    const scene::CBatchMesh::SSegment* record = mesh->segmentAt(ownBatch.firstSegmentInfo + info.index);
    const int32_t sourceBatch = (*record->infos)[record->infoIndex].batch;
    scene::CMeshBuffer* sourceBuffer = mesh->batches[sourceBatch].meshBuffer.get();
    boost::intrusive_ptr<scene::CMeshBuffer> sourceHold(sourceBuffer, true);
    const uint16_t firstVertex = record->vertexBegin;  // +0x24
    boost::intrusive_ptr<CVertexStreams> source(sourceBuffer->vertexStreams.get(), true);  // +0x14
    const int32_t delta = static_cast<int32_t>(source->getVertexStride()) * (static_cast<int32_t>(firstVertex) - static_cast<int32_t>(vertexCount));
    CVertexStreams* target = streams.get();
    if (mask != 1) {
        if (mask != 0x20001) {
            target->setStreams(source, mask, delta, true);
            return 5;
        }
        // Position and normal: the second stream of each table (index count0c + 1) first.
        target->setStream(&target->m_streams[static_cast<uint8_t>(target->m_count0c) + 1u],
                          source->m_streams[static_cast<uint8_t>(source->m_count0c) + 1u], delta, true);
    }
    target->setStream(&target->m_streams[0], source->m_streams[0], delta, true);
    return 5;
}

// 0x5d8624 _ZN6glitch5video12IVideoDriver16removeBatchBakerEv
// Drops the baker and the batch material, then destroys the heap copy of the batched material (if any), releases its
// storage and clears the copy and its source.
void IVideoDriver::removeBatchBaker() {
    m_batchBaker = nullptr;    // +0x128
    m_batchMaterial = nullptr; // +0x124
    if (m_batchMaterialHeap != nullptr) {  // +0x12c
        m_batchMaterialHeap->~CMaterial();
        glitch::core::releaseProcessBuffer(m_batchMaterialHeap);
        m_batchSourceMaterial = nullptr;   // +0x130
        m_batchMaterialHeap = nullptr;
    }
}

// 0x6498a0 _ZN6glitch5video12IVideoDriver16getProcessBufferENS0_21E_PROCESS_BUFFER_TYPEEjRKN5boost13intrusive_ptrINS_5scene11CMeshBufferEEEb
// The mesh buffer's own stream table, first and last vertex and driver binding word go to the general slot (vtable +0x1f0).
E_DRIVER_ALLOCATION_RESULT IVideoDriver::getProcessBuffer(E_PROCESS_BUFFER_TYPE type, uint32_t flags,
                                                          const boost::intrusive_ptr<scene::CMeshBuffer>& meshBuffer,
                                                          bool create) {
    boost::intrusive_ptr<scene::CMeshBuffer> held(meshBuffer);  // one use taken for the call
    scene::CMeshBuffer* buffer = meshBuffer.get();
    return getProcessBuffer(type, buffer->primitiveStream.m_vertexStart, buffer->primitiveStream.m_vertexEnd, flags,
                            buffer->vertexStreams, &buffer->owner, create);
}

// 0x5ac158 _ZN6glitch5video12IVideoDriver20releaseProcessBufferENS0_21E_PROCESS_BUFFER_TYPEERKN5boost13intrusive_ptrINS0_14CVertexStreamsEEEjjPNS0_14CDriverBindingE
// Type 0: the buffer is taken off the streams and its block given back to the process heap, and the buffer goes back to the
// heap of spare buffers (+0xbc). Type 1: the binding's buffer is emptied (through the streams when there are any).
void IVideoDriver::releaseProcessBuffer(E_PROCESS_BUFFER_TYPE type, const boost::intrusive_ptr<CVertexStreams>& streams,
                                        uint32_t vertexCount, uint32_t mask, CDriverBinding* binding) {
    if (type == 0) {
        detail::SProcessBufferHeapBufferAllocator allocator;
        boost::intrusive_ptr<IBuffer> buffer =
            glitch::video::releaseProcessBuffer<detail::SProcessBufferHeapBufferAllocator>(vertexCount, mask, streams, allocator);
        m_processBufferHeap.push_back(buffer);
    } else if (type == 1) {
        if (streams.get() != nullptr) {
            detail::SNewBufferAllocator<IVideoDriver> allocator(this, binding->m_processBuffer);  // binding +0x04
            glitch::video::releaseProcessBuffer<detail::SNewBufferAllocator<IVideoDriver>>(vertexCount, mask, streams, allocator);
        } else {
            detail::SNewBufferAllocator<IVideoDriver> allocator(this, binding->m_processBuffer);
            binding->m_processBuffer->reset(0, nullptr, true);
        }
    }
}

// 0x5adfe0 _ZN6glitch5video12IVideoDriver32clearImplementationDependentDataEv
// Drops everything initImplementationDependentData made: the full-screen quad stream table and attribute maps, the immediate stream
// tables and buffers, the batch buffers and the batch material (the heap copy is destroyed and its block given back). A driver that
// owns its global parameter manager (state flag 0x20) also releases the dynamic light, ambient light and fog parameters it
// registered and clears the parameters; the texture manager and the shader manager then drop their driver specific resources.
void IVideoDriver::clearImplementationDependentData() {
    unk_140.reset();  // +0x140
    for (int i = 0; i < 4; ++i) unk_144[i].reset();  // +0x144
    m_immediateStreams.reset();   // +0xa4
    m_lineStreams.reset();        // +0xa8
    unk_ac.reset();               // +0xac
    m_immediateVertices.reset();  // +0xb0
    m_immediateColors.reset();    // +0xb4
    m_immediateIndices.reset();   // +0xb8
    if (!m_batchBuffers.empty()) m_batchBuffers.clear();  // +0x110
    m_batchMaterial.reset();  // +0x124
    if (m_batchMaterialHeap != nullptr) {  // +0x12c
        CMaterial* heapMaterial = m_batchMaterialHeap;
        heapMaterial->~CMaterial();
        glitch::core::releaseProcessBuffer(heapMaterial);
        m_batchSourceMaterial = nullptr;  // +0x130
        m_batchMaterialHeap = nullptr;
    }
    if ((m_stateFlags & 0x20) != 0) {  // +0x138
        bool skipToTextures = false;
        uint32_t id = m_dynamicLightBase;  // +0x38
        if (id == 0xffff) {
            skipToTextures = true;
        } else {
            const uint32_t end = static_cast<uint16_t>(id + m_dynamicLightLimit);  // +0x3c
            while (end > id) {
                const uint16_t current = static_cast<uint16_t>(id);
                id = static_cast<uint16_t>(id + 1);
                m_globalParameters->dropInternal(current);  // +0xe4
            }
            m_dynamicLightBase = 0xffff;
            m_globalParameters->dropInternal(m_ambientLightId);  // +0x136
            m_ambientLightId = 0xffff;
            for (int i = 0; i < 4; ++i) {  // +0xfa .. +0x101
                m_globalParameters->dropInternal(m_fogColorIds[i]);
                m_globalParameters->dropInternal(static_cast<uint16_t>(m_fogColorIds[i] + 1));
                m_globalParameters->dropInternal(static_cast<uint16_t>(m_fogColorIds[i] + 2));
                m_fogColorIds[i] = 0xffff;
            }
            m_globalParameters->clearParameters();
        }
        if (skipToTextures || (m_stateFlags & 0x20) != 0) m_textureManager->clearDriverSpecificResources();  // +0xe0
    }
    m_shaderManager->clearDriverSpecificResources();  // +0xd8, vtable +0x10
}

// 0x5ae5f0 _ZN6glitch5video12IVideoDriver31initImplementationDependentDataEv
// Makes what the immediate-mode drawing and the batching need: one spare process buffer, the three immediate buffers (vertices,
// colours: type 0; indices: type 1), the three immediate stream tables over them and, when capability 0x1000000 is set, the
// full-screen quad stream table (+0x140) with its attribute map (+0x144, shared by the four slots) and option 0x2000; then two
// batch buffers sized from the device's creation parameters, the first of which becomes the current one.
void IVideoDriver::initImplementationDependentData() {
    m_processBufferHeap.push_back(createBuffer(0, 4, 0, nullptr, true));  // vtable +0x78
    m_immediateVertices = createBuffer(0, 4, 0, nullptr, true);  // +0xb0
    m_immediateColors = createBuffer(0, 4, 0, nullptr, true);    // +0xb4
    m_immediateIndices = createBuffer(1, 4, 0, nullptr, true);   // +0xb8
    if ((m_capabilities & 0x1000000) != 0) {  // +0x9c
        uint8_t* quad = new uint8_t[12]();
        boost::intrusive_ptr<IBuffer> buffer = createBuffer(0, 0, 12, quad, true);
        if (((buffer->m_flags12 & 8) == 0 || (buffer->m_flags12 & 2) != 0) && buffer->m_usage != 4) buffer->bindImpl(true);
        unk_140 = CVertexStreams::allocate(0u);  // +0x140
        unk_140->setupStreams(buffer, 0xffffffffu);
        unk_140->m_field08 = 1;
        const uint8_t slots[4] = {0, 0, 1, 0};
        unk_144[0] = boost::intrusive_ptr<CVertexAttributeMap>(
            new CVertexAttributeMap(boost::intrusive_ptr<const CVertexStreams>(unk_140.get(), true), 2, slots, true), true);  // +0x144; the map is born with count 0 (like every other new CVertexAttributeMap), the wrap takes the use
        for (int i = 1; i < 4; ++i) unk_144[i] = unk_144[0];
        setOption(0x2000, true);  // vtable +0xa0
    }
    // The line / quad stream table: position at offset 4 and colour at offset 0 of 16-byte vertices.
    m_immediateStreams = CVertexStreams::allocate(static_cast<uint8_t>(0), 0x40000u);  // +0xa4
    {
        SVertexStreamData position;
        position.buffer = m_immediateVertices;
        position.offset = 4;
        position.field08 = 6;
        position.field0c = 3;
        position.field0e = 16;
        m_immediateStreams->setStream(&m_immediateStreams->m_streams[0], position, false);
        SVertexStreamData colour;
        colour.buffer = m_immediateVertices;
        colour.offset = 0;
        colour.field08 = 1;
        colour.field0c = 4;
        colour.field0e = 16;
        m_immediateStreams->setStream(&m_immediateStreams->m_streams[1], colour, false);
    }
    // The indexed line stream table: positions (12 bytes) and colours (4 bytes) in separate buffers.
    m_lineStreams = CVertexStreams::allocate(static_cast<uint8_t>(0), 0x40000u);  // +0xa8
    {
        SVertexStreamData position;
        position.buffer = m_immediateVertices;
        position.offset = 0;
        position.field08 = 6;
        position.field0c = 3;
        position.field0e = 12;
        m_lineStreams->setStream(&m_lineStreams->m_streams[0], position, false);
        SVertexStreamData colour;
        colour.buffer = m_immediateColors;
        colour.offset = 0;
        colour.field08 = 1;
        colour.field0c = 4;
        colour.field0e = 4;
        m_lineStreams->setStream(&m_lineStreams->m_streams[1], colour, false);
    }
    // The textured stream table (+0xac): 24-byte vertices of texture coordinates (0), colour (8) and position (12).
    unk_ac = CVertexStreams::allocate(static_cast<uint8_t>(1), 0x40000u);
    {
        SVertexStreamData position;
        position.buffer = m_immediateVertices;
        position.offset = 12;
        position.field08 = 6;
        position.field0c = 3;
        position.field0e = 24;
        unk_ac->setStream(&unk_ac->m_streams[0], position, false);
        SVertexStreamData texture;
        texture.buffer = m_immediateVertices;
        texture.offset = 0;
        texture.field08 = 6;
        texture.field0c = 2;
        texture.field0e = 24;
        unk_ac->setStream(&unk_ac->m_streams[1], texture, false);
        SVertexStreamData colour;
        colour.buffer = m_immediateVertices;
        colour.offset = 8;
        colour.field08 = 1;
        colour.field0c = 4;
        colour.field0e = 24;
        unk_ac->setStream(&unk_ac->m_streams[2], colour, false);
    }
    // Two batch buffers with the device's batch vertex / index capacities (creation parameters +0x48 and +0x4c).
    uint32_t vertexCapacity = 0;
    uint32_t indexCapacity = 0;
    std::memcpy(&vertexCapacity, m_device->creationParameters.bytes + 0x48, 4);  // device +0xa4
    std::memcpy(&indexCapacity, m_device->creationParameters.bytes + 0x4c, 4);   // device +0xa8
    for (int i = 0; i < 2; ++i) {
        boost::intrusive_ptr<glitch::IReferenceCounted> appendBuffer(
            new scene::CAppendMeshBuffer(vertexCapacity, indexCapacity, this, 4, 0xffffffffu), true);  // born with count 0
        m_batchBuffers.push_back(appendBuffer);  // +0x110
    }
    m_batchBufferIndex = 0;               // +0x11c
    m_batchBuffer = m_batchBuffers[0];    // +0x120 (the original stores the pointer without taking a use)
}

}  // namespace glitch::video
