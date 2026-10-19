// Bodies of glitch::scene::CAppendMeshBuffer, SBatchConfig and SDefaultEndOfBatchCallback (canonical classes:
// scene/CAppendMeshBuffer.hpp). This file replaces the stand-in functions of recon/slice_06 (copyVertexData, copyIndexData,
// SBatchConfig::operator=, the end-of-batch destructor), recon/slice_07 (hasEnoughSpace, beginAppend, setup), recon/slice_25
// (the void* functions of the append buffer) and scene_simple_accessors.cpp (clear).
#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"

#include <cstdio>
#include <cstring>
#include <string>

#include "glitch-core-io/core/material_copy.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene_simple_accessors.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/video_driver.hpp"

extern int g_bigV;  // 0x9f688c (game-app Globals.cpp)
extern int g_bigI;  // 0x9f6890

namespace glitch::scene {

namespace {

// 0x5d5b88 IMaterialParameters<CMaterialRenderer, ISharedMemoryBlockHeader<CMaterialRenderer>>::initParametersToIdentity: walks the
// parameter entries and resets each value slot by its value type: 0 one byte, 1 a word, 2 .. 7 two to four words of zero (by type),
// 8 and 17 four words of 1.0, 16 four 0xff bytes. The pointer-like types (11 matrix pool slot, 12 .. 15 counted objects, 18 a shared
// object) are returned to their pool or dropped in the original; the port keeps those slots outside the byte buffer
// (SPointerSlots), where a renderer fresh from endMaterialRenderer has none, so they are left alone.
void initRendererParametersToIdentity(video::CMaterialRenderer& renderer) {
    const video::detail::SParameterBlockHeader& header = renderer.parameters.headerForTest();
    std::uint8_t* values = renderer.parameters.valueBuffer();
    const std::uint32_t one = 0x3f800000u;
    for (std::uint16_t i = 0; i < header.count; ++i) {
        const video::detail::SParameterEntry& entry = header.entries[i];
        std::uint8_t* slot = values + entry.valueOffset;
        auto fill = [&](int words, std::uint32_t value) {
            for (int w = 0; w < words; ++w) std::memcpy(slot + 4 * w, &value, 4);
        };
        switch (entry.type) {
            case 0: *slot = 0; break;
            case 1: fill(1, 0); break;
            case 2: fill(2, 0); break;
            case 3: fill(3, 0); break;
            case 4: fill(4, 0); break;
            case 5: fill(1, 0); break;
            case 6: fill(2, 0); break;
            case 7: fill(3, 0); break;
            case 8: fill(4, one); break;
            case 16: fill(1, 0xffffffffu); break;
            case 17: fill(4, one); break;
            default: break;
        }
    }
}

// The CPU copy a freshly created buffer gets when the driver gave it none (ctor 0x6b8cb4): the original calls the unbind slot
// (vtable +0x0c) before and after replacing the data. Returns true when a copy was made.
bool giveCpuCopy(video::IBuffer& buffer, std::uint32_t capacity) {
    std::uint8_t flags = buffer.m_flags12;
    bool copied = false;
    if ((flags & video::IBuffer::kFlagDriverMapped) == 0 || (flags & video::IBuffer::kFlagHasData) != 0) {
        if (buffer.m_usage != 4) buffer.bindImpl(false);
        flags = buffer.m_flags12;
        if ((flags & video::IBuffer::kFlagDriverMapped) == 0) {
            buffer.reset(capacity, new std::uint8_t[capacity], true);
            flags = buffer.m_flags12;
            if (((flags & video::IBuffer::kFlagDriverMapped) == 0 || (flags & video::IBuffer::kFlagHasData) != 0) &&
                buffer.m_usage != 4) {
                buffer.bindImpl(false);
            }
            copied = true;
        }
    }
    return copied;
}

video::CPrimitiveStream triangleStream() {
    video::CPrimitiveStream stream;  // no index buffer: index type 0xff
    stream.m_primitiveType = 6;      // triangles
    return stream;
}

}  // namespace

// Not part of the original: an unallocated buffer (no driver, no buffers) for tests.
CAppendMeshBuffer::CAppendMeshBuffer() = default;

// 0x6b8cb4 _ZN6glitch5scene17CAppendMeshBufferC1EjjPNS_5video12IVideoDriverENS2_14E_BUFFER_USAGEEj (complete object)
// 0x6b8fe0 _ZN6glitch5scene17CAppendMeshBufferC2EjjPNS_5video12IVideoDriverENS2_14E_BUFFER_USAGEEj (base object)
// Reconstructed. The base class is built from an empty triangle stream, then both IBuffers are created through the driver
// (vtable +0x78) with no data. A buffer that has no driver-side mapping gets a CPU copy of its capacity; `cpuCopy` (+0x60) is
// set when either did. The index buffer becomes the primitive stream's buffer, and the stream starts with no elements,
// vertices 0 .. 0 and 16-bit indices.
CAppendMeshBuffer::CAppendMeshBuffer(std::uint32_t vertexCapacity, std::uint32_t indexCapacity, video::IVideoDriver* driver,
                                     video::E_BUFFER_USAGE usage, std::uint32_t stride)
    : CMeshBuffer(stride, triangleStream(), true) {
    vertexCapacityBytes = vertexCapacity;
    indexCapacityBytes = indexCapacity;
    vertexBuffer = driver->createBuffer(0, usage, vertexCapacity, nullptr, true);
    indexBuffer = driver->createBuffer(1, usage, indexCapacity, nullptr, true);
    if (giveCpuCopy(*vertexBuffer, vertexCapacity)) cpuCopy = 1;
    if (giveCpuCopy(*indexBuffer, indexCapacity)) cpuCopy = 1;
    primitiveStream.m_indexBuffer = indexBuffer;
    primitiveStream.m_vertexEnd = 0;
    primitiveStream.m_indexType = 1;
    primitiveStream.m_count = 0;
    primitiveStream.m_vertexStart = 0;
}

// 0x6b8c2c _ZN6glitch5scene17CAppendMeshBufferD1Ev
// 0x6b8c98 _ZN6glitch5scene17CAppendMeshBufferD0Ev (skipped)
// Reconstructed: endAppend, then the stream-index vector, the index buffer and the vertex buffer go (the members), then the
// base class.
CAppendMeshBuffer::~CAppendMeshBuffer() {
    endAppend();
}

// 0x6b8878 _ZN6glitch5scene17CAppendMeshBuffer5clearEv
void CAppendMeshBuffer::clear() {
    indexUsedBytes = 0;
    vertexUsedBytes = 0;
}

// 0x5a2040 _ZNK6glitch5scene17CAppendMeshBuffer13hasEnoughSpaceEjj
bool CAppendMeshBuffer::hasEnoughSpace(std::uint32_t vertexCount, std::uint32_t indexCount) const {
    const std::uint32_t usedVertexBytes = vertexUsedBytes;
    return vertexCount <= (vertexCapacityBytes - usedVertexBytes) / vertexStride &&
           indexCount <= (indexCapacityBytes - indexUsedBytes) / indexStride &&
           vertexCount + usedVertexBytes / vertexStride < 0x10000u;
}

// 0x5a26bc _ZN6glitch5scene17CAppendMeshBuffer11beginAppendEv
void CAppendMeshBuffer::beginAppend() {
    if (mappedVertices == nullptr) {
        mappedVertices = vertexBuffer->map(4);
        mappedIndices = indexBuffer->map(4);
    }
}

// 0x6b8aa0 _ZN6glitch5scene17CAppendMeshBuffer9endAppendEv
void CAppendMeshBuffer::endAppend() {
    if (mappedVertices != nullptr) {
        vertexBuffer->unmap();
        indexBuffer->unmap();
        mappedIndices = nullptr;
        mappedVertices = nullptr;
    }
}

// 0x5a8a88 _ZN6glitch5scene17CAppendMeshBuffer5setupEv
// Publishes the appended counts: the primitive stream gets the index count, vertices 0 .. vertexCount and 16-bit indices, and
// the vertex stream table gets the vertex count in its +0x08 word.
void CAppendMeshBuffer::setup() {
    const std::uint32_t indexCount = indexUsedBytes / indexStride;
    const std::uint32_t vertexCount = vertexUsedBytes / vertexStride;
    primitiveStream.m_vertexStart = 0;
    primitiveStream.m_count = indexCount;
    primitiveStream.m_indexType = 1;
    primitiveStream.m_vertexEnd = vertexCount;
    vertexStreams->m_field08 = vertexCount;
}

// 0x6b8b74 _ZN6glitch5scene17CAppendMeshBuffer6resizeEjj
void CAppendMeshBuffer::resize(std::uint32_t vertexCapacity, std::uint32_t indexCapacity) {
    endAppend();
    vertexBuffer->reset(vertexCapacity, nullptr, true);
    indexBuffer->reset(indexCapacity, nullptr, true);
}

// 0x6b8bb4 _ZN6glitch5scene17CAppendMeshBuffer5resetEv
// The loop of the original indexes the stream table with its own counter (0 .. n-1), not with the recorded stream indices;
// that is kept: the first n entries lose their buffers.
void CAppendMeshBuffer::reset() {
    endAppend();
    clear();
    for (std::size_t i = 0; i < streamIndices.size(); ++i) {
        vertexStreams->m_streams[i].buffer.reset();
        vertexStreams->updateHomogeneityInternal(false);
    }
    streamIndices.clear();
}

// 0x6b8950 _ZN6glitch5scene17CAppendMeshBuffer15configureStreamEhiNS_5video29E_VERTEX_ATTRIBUTE_VALUE_TYPEEt
void CAppendMeshBuffer::configureStream(std::uint8_t streamIndex, std::int32_t offset, std::int32_t valueType,
                                        std::uint16_t componentCount) {
    video::SVertexStream& stream = vertexStreams->m_streams[streamIndex];
    stream.buffer = vertexBuffer;
    stream.field0e = 0;
    stream.offset = static_cast<std::uint32_t>(offset);
    stream.field0a = static_cast<std::uint16_t>(valueType);
    stream.field0c = componentCount;
    vertexStreams->updateHomogeneityInternal(false);
    streamIndices.push_back(streamIndex);
}

// 0x6b8834 _ZN6glitch5scene17CAppendMeshBuffer12adjustStrideEt
void CAppendMeshBuffer::adjustStride(std::uint16_t stride) {
    for (std::uint8_t index : streamIndices) {
        vertexStreams->m_streams[index].field0e = stride;
    }
    vertexStride = stride;
}

// 0x58c2c4 _ZNK6glitch5scene17CAppendMeshBuffer14copyVertexDataEPv
void CAppendMeshBuffer::copyVertexData(void* destination) const {
    const video::IBuffer& buffer = *vertexBuffer;
    std::memcpy(destination, buffer.map(1), vertexUsedBytes);
    buffer.unmap();
}

// 0x58c348 _ZNK6glitch5scene17CAppendMeshBuffer13copyIndexDataEPv
void CAppendMeshBuffer::copyIndexData(void* destination) const {
    const video::IBuffer& buffer = *indexBuffer;
    std::memcpy(destination, buffer.map(1), indexUsedBytes);
    buffer.unmap();
}

// 0x58cc74 _ZNK6glitch5scene17CAppendMeshBuffer31allocateConfiguredVertexStreamsERKN5boost13intrusive_ptrINS_5video7IBufferEEE
// Reconstructed. The table is allocated for the mask of the configured stream indices; each configured stream is copied (offset,
// type, component count, stride) into the table's entry for the same attribute, now reading from `buffer`; the table's count word
// is the vertex count. (The original also builds and destroys an unused vector of stream descriptions.)
boost::intrusive_ptr<video::CVertexStreams> CAppendMeshBuffer::allocateConfiguredVertexStreams(
    const boost::intrusive_ptr<video::IBuffer>& buffer) const {
    std::uint32_t mask = 0;
    for (std::uint8_t index : streamIndices) {
        mask |= 1u << index;
    }
    boost::intrusive_ptr<video::CVertexStreams> streams = video::CVertexStreams::allocate(mask);
    for (std::uint8_t index : streamIndices) {
        const video::SVertexStream& source = vertexStreams->m_streams[index];
        video::SVertexStream* target = streams->getStream(source.attribute, streams->m_streams.data(),
                                                          streams->m_streams.data() + streams->m_streams.size());
        target->buffer = buffer;
        target->offset = source.offset;
        target->field0e = source.field0e;
        target->field0a = source.field0a;
        target->field0c = source.field0c;
        streams->updateHomogeneityInternal(false);
    }
    streams->m_field08 = vertexUsedBytes / vertexStride;
    return streams;
}

// 0x58f2a8 _ZN6glitch5scene12SBatchConfigaSERKS1_
SBatchConfig& SBatchConfig::operator=(const SBatchConfig& other) {
    material = other.material;
    for (int i = 0; i < 8; ++i) {
        renderState[i] = other.renderState[i];
    }
    meshBuffer = other.meshBuffer;
    return *this;
}

// 0x58fa04 _ZN6glitch5scene26SDefaultEndOfBatchCallbackD1Ev
// 0x58fa64 _ZN6glitch5scene26SDefaultEndOfBatchCallbackD0Ev (skipped)
// Clears the map (the members release every configuration).
SDefaultEndOfBatchCallback::~SDefaultEndOfBatchCallback() = default;

// 0x59013c _ZN6glitch5scene26SDefaultEndOfBatchCallbackclERKNS0_17CAppendMeshBufferERKN5boost13intrusive_ptrINS_5video9CMaterialEEE
// Called by CBatchDriver::flush with a full append buffer. It raises the largest-buffer counters (g_bigV / g_bigI, the buffer's used byte
// counts) and prints them, copies the vertex and the index bytes into two new driver buffers (vertex usage = the callback's usage,
// index usage 4), builds the vertex stream table over the new vertex buffer and wraps both in a mesh buffer (16-bit triangle indices,
// flag byte 0). The material is cloned under a random 14 character name and the first eight render-state words of its first pass are
// copied (the ninth stays as the SBatchConfig constructor left it: the original leaves that stack word untouched too). The
// configuration is stored under the key at compileState + 0x10, which is then reset to -1.
void SDefaultEndOfBatchCallback::operator()(const CAppendMeshBuffer& buffer, const boost::intrusive_ptr<video::CMaterial>& material) {
    if (static_cast<std::int32_t>(buffer.vertexUsedBytes) > g_bigV) {  // +0x3c
        g_bigV = static_cast<std::int32_t>(buffer.vertexUsedBytes);
    }
    if (static_cast<std::int32_t>(buffer.indexUsedBytes) > g_bigI) {  // +0x44
        g_bigI = static_cast<std::int32_t>(buffer.indexUsedBytes);
    }
    std::puts("-------------------------------------------------------");
    std::printf("VERTEX: %d INDEX: %d\n", g_bigV, g_bigI);

    boost::intrusive_ptr<video::IBuffer> vertexBuffer =
        driver->createBuffer(0, usage, buffer.vertexUsedBytes, new std::uint8_t[buffer.vertexUsedBytes], true);  // vptr+0x78
    boost::intrusive_ptr<video::IBuffer> indexBuffer =
        driver->createBuffer(1, 4, buffer.indexUsedBytes, new std::uint8_t[buffer.indexUsedBytes], true);
    void* vertexData = vertexBuffer->map(4);
    void* indexData = indexBuffer->map(4);
    buffer.copyVertexData(vertexData);
    buffer.copyIndexData(indexData);
    vertexBuffer->unmap();  // the inlined unmap: one map reference less, unmapImpl() on the last one
    indexBuffer->unmap();

    boost::intrusive_ptr<video::CVertexStreams> streams = buffer.allocateConfiguredVertexStreams(vertexBuffer);
    const std::uint32_t indexCount = buffer.indexUsedBytes / buffer.indexStride;     // +0x44 / +0x4c
    const std::uint32_t vertexCount = buffer.vertexUsedBytes / buffer.vertexStride;  // +0x3c / +0x48

    // operator new(0x38): a CMeshBuffer built by hand (0x590338 .. 0x5903c0), vtable off_988098.
    boost::intrusive_ptr<CMeshBuffer> meshBuffer(new CMeshBuffer(), true);
    meshBuffer->vertexStreams = streams;                          // +0x14
    meshBuffer->primitiveStream.m_indexBuffer = indexBuffer;      // +0x18
    meshBuffer->primitiveStream.m_offset = 0;                     // +0x1c
    meshBuffer->primitiveStream.m_count = indexCount;             // +0x20
    meshBuffer->primitiveStream.m_vertexStart = 0;                // +0x24
    meshBuffer->primitiveStream.m_vertexEnd = vertexCount;        // +0x28
    meshBuffer->primitiveStream.m_indexType = 1;                  // +0x2c
    meshBuffer->primitiveStream.m_primitiveType = 6;              // +0x2e
    meshBuffer->owner = nullptr;                                  // +0x30
    meshBuffer->flag_34 = 0;                                      // +0x34

    SBatchConfig config;
    const std::string cloneName = core::randomString(14);
    config.material = material->clone(cloneName.c_str());
    // renderState words 0 .. 7 are the first pass of the original material's current technique (renderer +0x18 table, entry +8).
    const video::SRenderPass* pass = material->m_renderer->m_techniques[material->getTechnique()].passes;
    for (int i = 0; i < 8; ++i) {
        config.renderState[i] = pass->stateWords[i];
    }
    config.meshBuffer = meshBuffer;

    SBatchConfig& slot = configs[static_cast<std::uint32_t>(compileState->batchIndex)];
    slot = config;
    compileState->batchIndex = -1;
}

// 0x58d3d4 _ZN6glitch5scene26SDefaultEndOfBatchCallback8finalizeEv
// For every configuration (in key order) a new material renderer is registered with the driver's CMaterialRendererManager: a random
// 20 character name, one technique "ZeTechnique" with a single pass copied from the first pass of the old material's current
// technique (its shader, the stored render state and a material render state), the light count of the old renderer, then the new
// renderer's parameters are reset to identity, a material is made on it, the old material's parameters are copied across, and the
// finished material and the mesh buffer become a batch of the node's mesh (CBatchMesh::setBuffer, index = the key).
void SDefaultEndOfBatchCallback::finalize() {
    video::CMaterialRendererManager* manager = driver->m_materialRendererManager;  // driver +0xdc
    for (auto& entry : configs) {
        const std::uint32_t key = entry.first;
        SBatchConfig& config = entry.second;
        boost::intrusive_ptr<video::CMaterialRenderer> oldRenderer = config.material->m_renderer;  // material +0x04, a use is taken
        const video::SRenderPass* pass = oldRenderer->m_techniques[config.material->getTechnique()].passes;
        const std::string name = core::randomString(20);
        manager->beginMaterialRenderer(name.c_str(), true);
        manager->beginTechnique("ZeTechnique", true);
        boost::intrusive_ptr<const video::IShader> shader(static_cast<const video::IShader*>(pass->shader), true);  // pass +0x20
        video::detail::renderpass::SRenderState passState;
        std::memcpy(&passState, config.renderState, sizeof(config.renderState[0]) * 8);  // config +0x04 .. +0x23
        const video::detail::material::SRenderState materialState{};                    // the ninth word (config +0x24)
        manager->addRenderPass(shader, passState, materialState);
        const std::uint32_t lightCount = oldRenderer->getBindedLightCount(
            static_cast<std::uint8_t>(config.material->getTechnique()), 0);
        manager->endTechnique(true, static_cast<std::uint16_t>(lightCount));
        manager->endMaterialRenderer();
        const std::uint16_t id = manager->getId(name.c_str());
        boost::intrusive_ptr<video::CMaterialRenderer> newRenderer = manager->getMaterialRenderer(id);
        if (newRenderer != nullptr) {
            initRendererParametersToIdentity(*newRenderer);
        }
        boost::intrusive_ptr<video::CMaterial> instance = manager->getMaterialInstance(id, id != 0);
        // The listing calls getTechnique on the old material and on the new instance and drops both results.
        boost::intrusive_ptr<const video::CMaterial> source(config.material.get(), true);
        core::copyMaterialParameters(instance, source);
        node->mesh->setBuffer(key, config.meshBuffer, instance);  // node +0x130
    }
}

}  // namespace glitch::scene
