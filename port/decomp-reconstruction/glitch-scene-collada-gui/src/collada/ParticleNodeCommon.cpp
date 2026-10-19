// The code shared by the two particle scene nodes (collada/ParticleNodeCommon.hpp). Residue pass ob.
#include "glitch-scene-collada-gui/collada/ParticleNodeCommon.hpp"

#include "glitch-scene-collada-gui/ps/ParticleModels.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada::detail {

namespace {

// E_SHADER_PARAMETER_TYPE 6: the colour parameter of a material renderer. The state number 1 of setTransform is the world matrix.
constexpr video::E_SHADER_PARAMETER_TYPE kColorParameterType = 6;
constexpr video::E_TRANSFORMATION_STATE kWorldTransform = 1;

// E_BUFFER_TYPE 0 (vertices) and 1 (indices); E_BUFFER_USAGE 4; the map accesses (1 reads, 4 writes).
constexpr video::E_BUFFER_TYPE kVertexBuffer = 0;
constexpr video::E_BUFFER_TYPE kIndexBuffer = 1;
constexpr video::E_BUFFER_USAGE kStaticUsage = 4;
constexpr video::E_BUFFER_READ_MAP_ACCESS kReadAccess = 1;
constexpr video::E_BUFFER_MAP_ACCESS kWriteAccess = 4;

// The indices of the one quad every particle of a billboard system is drawn with (the static `indices` of initParticleSystem 0x99b85c
// and 0x99b850).
const std::uint16_t kQuadIndices[6] = {0, 1, 2, 0, 2, 3};

// The text of a material's name (CMaterial +0x1c, text at +4), null when the material is unnamed.
const char* materialName(const video::CMaterial& material) {
    return material.m_hasName ? material.m_nameText.c_str() : nullptr;
}

}  // namespace

// init, first half (0x64fd60 / 0x63f214). The streamed block's key is the database handle, the first clip (or, without a clip library,
// the whole-animation record) and the clip's start clamped into [0, end]; the block, when found, supplies the animation database.
template <typename P>
void bindMaterialAnimations(IParticleSystemSceneNode& node, ps::IParticleContext<P>& context) {
    for (const boost::intrusive_ptr<video::CMaterial>& material : node.materials) {
        const char* name = materialName(*material);
        const std::uint16_t colorId = material->m_renderer->getParameterID(kColorParameterType, 0);
        const char* colorName = nullptr;
        if (const video::detail::SParameterEntry* entry = material->m_renderer->parameters.getParameterDef(colorId)) {
            colorName = core::detail::sharedStringText(static_cast<const core::detail::SSharedStringData*>(entry->name));
        }
        const CColladaDatabase& database = node.database;
        if (database.tables().sourceName != nullptr) {
            continue;
        }
        SAnimationBlockSearchKey key;
        copyDatabase(key.database, database);
        const SDatabaseTables& tables = database.tables();
        const SAnimationClip* clip = tables.animationClipLibrary.count != 0 ? animationClipAt(tables, 0) : &tables.animationRange;
        key.clip = clip;
        const std::int32_t start = static_cast<std::int32_t>(clip->start);
        const std::int32_t nonNegative = start & ~(start >> 31);
        key.time = static_cast<std::uint32_t>(nonNegative) > clip->end ? static_cast<std::int32_t>(clip->end) : nonNegative;
        CAnimationBlock* block = nullptr;
        CAnimationStreamingManager::Instance->getAnimationBlock(key, block);
        if (block != nullptr) {
            context.template setParameter<const SAnimationOutput*>("AnimationDatabase", block->dataHolder->buffer);
        }
        SAnimation* animation = nullptr;
        if (colorId != 0xFFFF) {
            animation = database.getAnimation(name, static_cast<SChannel::Type>(86), colorName);
        }
        if (animation == nullptr) {
            animation = database.getAnimation(name, static_cast<SChannel::Type>(0x19), static_cast<std::uint8_t>(255));
            if (animation == nullptr) {
                animation = database.getAnimation(name, static_cast<SChannel::Type>(86), "__irrlicht_Diffuse_color");
            }
        }
        context.template setParameter<SAnimation*>("DiffuseColorTrack", animation);
        SAnimation* transform = database.getAnimation(name, static_cast<SChannel::Type>(0x100), static_cast<std::uint8_t>(255));
        node.hasTextureTransform = transform != nullptr;
        context.template setParameter<SAnimation*>("TextureTransformTrack", transform);
        if (block != nullptr) {
            block->drop();
        }
        dropDatabase(key.database);
    }
}

template void bindMaterialAnimations<ps::SParticle>(IParticleSystemSceneNode&, ps::IParticleContext<ps::SParticle>&);
template void bindMaterialAnimations<ps::GNPSParticle>(IParticleSystemSceneNode&, ps::IParticleContext<ps::GNPSParticle>&);

// 0x656450 / 0x642e58, the `if (!BillboardMeshBuffer)` block. The vertex buffer's storage comes from new[] here (the original's
// operator new[] with the memory hint; the port's IBuffer::reset releases with delete[]).
void ensureBillboardMeshBuffer(video::IVideoDriver* driver, boost::intrusive_ptr<scene::CMeshBuffer>& shared) {
    if (shared) {
        return;
    }
    boost::intrusive_ptr<video::IBuffer> indices =
        driver->createBuffer(kIndexBuffer, kStaticUsage, sizeof(kQuadIndices), const_cast<std::uint16_t*>(kQuadIndices), false);
    video::CPrimitiveStream stream;
    stream.m_indexBuffer = indices;
    stream.m_offset = 0;
    stream.m_count = 6;
    stream.m_vertexStart = 0;
    stream.m_vertexEnd = 4;
    stream.m_indexType = 1;
    stream.m_primitiveType = 6;
    shared = boost::intrusive_ptr<scene::CMeshBuffer>(new scene::CMeshBuffer(0x60003u, stream, false), true);
    video::CVertexStreams* streams = shared->vertexStreams.get();
    boost::intrusive_ptr<video::IBuffer> vertices = driver->createBuffer(kVertexBuffer, kStaticUsage, 0, nullptr, true);
    const std::uint32_t bytes = 4u * streams->setupStreams(vertices, 0xFFFFFFFFu);
    vertices->reset(bytes, new std::uint8_t[bytes], true);
    // The second stream holds the texture coordinates: (0, 0), (0, 1), (1, 1), (1, 0).
    video::SVertexStream& textureStream = streams->m_streams[1];
    std::uint8_t* base = textureStream.buffer->map(kWriteAccess) + textureStream.offset;
    const std::uint16_t stride = textureStream.field0e;
    const float corners[4][2] = {{0.0f, 0.0f}, {0.0f, 1.0f}, {1.0f, 1.0f}, {1.0f, 0.0f}};
    for (int corner = 0; corner < 4; ++corner) {
        float* uv = reinterpret_cast<float*>(base + corner * stride);
        uv[0] = corners[corner][0];
        uv[1] = corners[corner][1];
    }
    streams->m_field08 = 4;
    textureStream.buffer->unmap();
}

// 0x656450 / 0x642e58, the `if (maxParticles > BillboardMaxParticles)` block. The copy for particle p adds 4 * p to each of the quad's
// indices. Deviation: the original takes the storage from PS_NEW, the port's IBuffer::reset frees with delete[].
void ensureBillboardIndexBuffer(video::IVideoDriver* driver, boost::intrusive_ptr<video::IBuffer>& shared, std::int32_t& builtFor,
                                std::int32_t requested, scene::CMeshBuffer& quad) {
    if (requested <= builtFor) {
        return;
    }
    if (!shared) {
        shared = driver->createBuffer(kIndexBuffer, kStaticUsage, 0, nullptr, true);
    }
    builtFor = requested;
    const video::IBuffer* quadIndices = quad.primitiveStream.m_indexBuffer.get();
    const std::uint8_t* quadBase = quadIndices->map(kReadAccess);
    const std::uint16_t* in = reinterpret_cast<const std::uint16_t*>(quadBase + quad.primitiveStream.m_offset);
    boost::intrusive_ptr<video::IBuffer> out = shared;
    const std::uint32_t bytes = static_cast<std::uint32_t>(builtFor) * 2u * quad.primitiveStream.m_count;
    if (bytes > out->m_size) {
        out->reset(bytes, new std::uint8_t[bytes], true);
    }
    std::uint8_t* mapped = out->map(kWriteAccess);
    std::uint16_t* outIndices = reinterpret_cast<std::uint16_t*>(mapped);
    if (builtFor > 0) {
        std::uint32_t outIndex = 0;
        std::uint16_t vertexBase = 0;
        for (std::int32_t p = 0; p < builtFor; ++p) {
            for (int k = 0; k < 6; ++k) {
                outIndices[outIndex + k] = static_cast<std::uint16_t>(vertexBase + in[k]);
            }
            outIndex += 6;
            vertexBase = static_cast<std::uint16_t>(vertexBase + 4);
        }
    }
    if (mapped != nullptr) {
        out->unmap();
    }
    if (quadBase != nullptr) {
        quadIndices->unmap();
    }
}

// The first block of 0x6572b8 / 0x643ea8 and of 0x63fed4: memcpy(slot, camera->getViewFrustum()->viewMatrix, 0x41), or the identity
// matrix with its flag set.
void copyCameraViewMatrix(IParticleSystemSceneNode& node, void* viewMatrixSlot) {
    core::CMatrix4<float>* viewMatrix = static_cast<core::CMatrix4<float>*>(viewMatrixSlot);
    if (scene::ICameraSceneNode* camera = node.sceneManager->activeCamera) {
        *viewMatrix = camera->getViewFrustum()->viewMatrix;
    } else {
        *viewMatrix = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
}

// 0x6572b8 (old system) / 0x643ea8 (new system). The view matrix the render model bakes against is refreshed, the world transformation
// is a translation by the system's world matrix when the particles are local to the node, else the identity. The driver is asked for a
// process buffer for the particles' vertices (the mesh buffer's vertex count times the particle count); when it hands one out (result
// 4), the render data is bound (the colour parameter is set to white when the colour comes from a track), the material is set, the
// render data is drawn and the process buffer is released.
template <typename P>
void renderParticles(IParticleSystemSceneNode& node, ps::IParticleSystem<P>& system, video::IVideoDriver* driver,
                     std::uint32_t attributeMask, std::uint16_t colorParameterId, void* viewMatrixSlot) {
    if (driver == nullptr) {
        return;
    }
    ps::IParticleContext<P>& context = system;
    copyCameraViewMatrix(node, viewMatrixSlot);
    if (context.localSpace) {
        core::CMatrix4<float> world(core::CMatrix4<float>::EM4CONST_IDENTITY);
        const float* worldMatrix = system.getWorldMatrixPtr();
        world.flag = false;
        world.M[12] = worldMatrix[12];
        world.M[13] = worldMatrix[13];
        world.M[14] = worldMatrix[14];
        driver->setTransform(kWorldTransform, world);
    } else {
        const core::CMatrix4<float> identity(core::CMatrix4<float>::EM4CONST_IDENTITY);
        driver->setTransform(kWorldTransform, identity);
    }
    const std::uint32_t verticesPerParticle = node.meshBuffer->vertexStreams->m_field08;
    const std::uint32_t particleCount = static_cast<std::uint32_t>(context.particles.size());
    video::E_DRIVER_ALLOCATION_RESULT result = 0;
    {
        const boost::intrusive_ptr<video::CVertexStreams> streams = context.getRenderVertexStreams();
        result = driver->getProcessBuffer(0, 0, verticesPerParticle * particleCount, attributeMask, streams, nullptr, false);
    }
    if (result != 4) {
        return;
    }
    context.getRenderVertexStreams()->updateStates(false);
    ps::PRenderData* renderData = context.getRenderData();
    if (context.hasColorAnimationTrack()) {
        const boost::intrusive_ptr<video::CMaterial> colorMaterial = node.getMaterial(0);
        scene::setMaterialColorCvt(*colorMaterial, colorParameterId, 0, video::SColor{0xFFFFFFFFu});
    }
    const boost::intrusive_ptr<video::CMaterial> material = node.getMaterial(0);
    const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
    driver->setMaterial(material, technique, nullptr);
    const boost::intrusive_ptr<const video::CVertexStreams> drawStreams = renderData->streams;
    const boost::intrusive_ptr<const scene::CMeshBuffer> noMesh;
    driver->draw(drawStreams, renderData->primitives, nullptr, noMesh);
    const boost::intrusive_ptr<video::CVertexStreams> releasedStreams = context.getRenderVertexStreams();
    driver->releaseProcessBuffer(0, releasedStreams, 0, attributeMask, nullptr);
}

template void renderParticles<ps::SParticle>(IParticleSystemSceneNode&, ps::IParticleSystem<ps::SParticle>&, video::IVideoDriver*,
                                             std::uint32_t, std::uint16_t, void*);
template void renderParticles<ps::GNPSParticle>(IParticleSystemSceneNode&, ps::IParticleSystem<ps::GNPSParticle>&, video::IVideoDriver*,
                                                std::uint32_t, std::uint16_t, void*);

}  // namespace glitch::collada::detail
