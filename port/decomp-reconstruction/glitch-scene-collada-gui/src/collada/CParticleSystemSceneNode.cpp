// Bodies of glitch::collada::CParticleSystemSceneNode (canonical class: collada/CParticleSystemSceneNode.hpp). This file replaces the
// accessor class of collada_scene_accessors.hpp and the stand-in functions of recon/slice_20 and slice_21 (0x64bb78 .. 0x6572b8).
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"

#include <algorithm>

#include "glitch-scene-collada-gui/collada/CForceSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ParticleNodeCommon.hpp"
#include "glitch-scene-collada-gui/collada/ResString.hpp"
#include "glitch-scene-collada-gui/ps/PSManager.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

// E_SHADER_PARAMETER_TYPE 6: the colour parameter of a material renderer. E_BUFFER_TYPE 1 / E_BUFFER_USAGE 4 / the map accesses the
// code uses (1 reads, 4 writes).
constexpr video::E_SHADER_PARAMETER_TYPE kColorParameterType = 6;
constexpr video::E_BUFFER_TYPE kIndexBuffer = 1;
constexpr video::E_BUFFER_USAGE kStaticUsage = 4;
constexpr video::E_BUFFER_READ_MAP_ACCESS kReadAccess = 1;
constexpr video::E_BUFFER_MAP_ACCESS kWriteAccess = 4;

}  // namespace

boost::intrusive_ptr<scene::CMeshBuffer> CParticleSystemSceneNode::BillboardMeshBuffer;
boost::intrusive_ptr<video::IBuffer> CParticleSystemSceneNode::OutBillboardIndexBuffer;
std::int32_t CParticleSystemSceneNode::BillboardMaxParticles = 0;

// 0x64ed94 _ZN6glitch7collada24CParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_8SEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
// (C2 0x64ee44). The base constructor, the emitter record stored (+0x18c), the uid set to the record's first word (its name) and automatic
// culling 2 (the base constructor already set it).
CParticleSystemSceneNode::CParticleSystemSceneNode(const CColladaDatabase& source, SEmitter& emitterRecord,
                                                   res::vector<res::String>* forceUrls, CRootSceneNode* rootNode)
    : IParticleSystemSceneNode(source, forceUrls, rootNode) {
    emitter = &emitterRecord;
    uid = emitterRecord.name;
    setAutomaticCulling(2);
}

// 0x64ecac _ZN6glitch7collada24CParticleSystemSceneNodeD1Ev (D2 0x64ed34; D0 0x64ed18 skipped)
// Deletes the particle system through its deleting destructor (vptr+8); the base destructor follows.
CParticleSystemSceneNode::~CParticleSystemSceneNode() {
    delete system;
}

// 0x64bb84 _ZNK6glitch7collada24CParticleSystemSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CParticleSystemSceneNode::getType() const {
    return scene::ESNT_DAE_PARTICLE;
}

// 0x64bb78 _ZNK6glitch7collada24CParticleSystemSceneNode6getUIDEv
const char* CParticleSystemSceneNode::getUID() const {
    return emitter->name;
}

// 0x64bbc0 _ZNK6glitch7collada24CParticleSystemSceneNode25getTransformedBoundingBoxEv
const core::aabbox3d<float>& CParticleSystemSceneNode::getTransformedBoundingBox() const {
    return *transformedBox;
}

// 0x64bb90 _ZNK6glitch7collada24CParticleSystemSceneNode16getParticleCountEv
std::uint32_t CParticleSystemSceneNode::getParticleCount() const {
    return static_cast<std::uint32_t>(static_cast<const ps::IParticleContext<ps::SParticle>&>(*system).particles.size());
}

// 0x64ce44 _ZNK6glitch7collada24CParticleSystemSceneNode14getBoundingBoxEv
// A function-local static box, (-1, -1, -1) .. (1, 1, 1) at first, then the system's box (the "BBox" slot) moved by minus the node's
// translation. The translation is spelled the way the listing does, each of the three rows' first elements multiplied by zero and
// summed with the translation (a NaN or infinity in those elements reaches the result). Deviation: the original reads the slot
// unconditionally; a node whose system was never initialised (no "BBox" slot) answers the initial box.
const core::aabbox3d<float>& CParticleSystemSceneNode::getBoundingBox() const {
    static core::aabbox3d<float> bbox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    if (transformedBox == nullptr) {
        return bbox;
    }
    const float* m = absoluteTransform.M;
    const float tx = ((m[0] * 0.0f + m[4] * 0.0f) + m[8] * 0.0f) + m[12];
    const float ty = ((m[1] * 0.0f + m[5] * 0.0f) + m[9] * 0.0f) + m[13];
    const float tz = ((m[2] * 0.0f + m[6] * 0.0f) + m[10] * 0.0f) + m[14];
    bbox.MinEdge.X = transformedBox->MinEdge.X;
    bbox.MinEdge.Y = transformedBox->MinEdge.Y;
    bbox.MinEdge.Z = transformedBox->MinEdge.Z;
    bbox.MaxEdge.X = transformedBox->MaxEdge.X;
    bbox.MaxEdge.Y = transformedBox->MaxEdge.Y;
    const float maxZ = transformedBox->MaxEdge.Z;
    bbox.MaxEdge.X -= tx;
    bbox.MaxEdge.Y -= ty;
    bbox.MaxEdge.Z = maxZ - tz;
    bbox.MinEdge.X -= tx;
    bbox.MinEdge.Y -= ty;
    bbox.MinEdge.Z -= tz;
    return bbox;
}

// 0x64da1c _ZN6glitch7collada24CParticleSystemSceneNode19onRegisterSceneNodeEv
int CParticleSystemSceneNode::onRegisterSceneNode() {
    if (!static_cast<const ps::IParticleContext<ps::SParticle>&>(*system).particles.empty()) {
        const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
        sceneManager->registerNodeForRendering(this, material, nullptr, scene::ESNRP_TRANSPARENT, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x64dac0 _ZN6glitch7collada24CParticleSystemSceneNode9onAnimateEj
// The system's world matrix pointer is the parent's absolute transformation (the original dereferences the parent; the port skips the
// store without one). The colour handed to the system is white, or the material's colour parameter when the driver type has bits 0..2
// set. The step is the time in seconds (the unsigned time converted to float, then divided in double precision).
void CParticleSystemSceneNode::onAnimate(std::uint32_t timeMs) {
    ISceneNode::onAnimate(timeMs);
    if (parent != nullptr) {
        system->worldMatrixPtr = parent->getAbsoluteTransformation().M;
    }
    lastAnimateTime = timeMs;
    video::SColor color{0xFFFFFFFFu};
    if ((static_cast<std::uint32_t>(sceneManager->driver->getDriverType()) & 7u) != 0) {
        const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
        scene::getMaterialColor(*material, particleParameterId, 0, color);
    }
    system->update(static_cast<float>(static_cast<double>(static_cast<float>(lastAnimateTime)) / 1000.0), color);
}

// 0x64f39c _ZN6glitch7collada24CParticleSystemSceneNode18deleteSharedBufferEv
void CParticleSystemSceneNode::deleteSharedBuffer() {
    OutBillboardIndexBuffer = nullptr;
    BillboardMeshBuffer = nullptr;
    BillboardMaxParticles = 0;
}

// 0x64f6f8 _ZN6glitch7collada24CParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
// The force vector (+0x164) is reserved and resized to the number of force URLs, all entries null (nothing in the class fills them). Each
// URL "#<uid>" names a node of the tree below `sceneRoot`; every child of that node with the type 'daef' binds its force to this system
// (vptr+0xf4).
void CParticleSystemSceneNode::attach(scene::ISceneNode* sceneRoot) {
    const std::int32_t count = materialNames->count;
    forces.reserve(static_cast<std::size_t>(count));
    forces.resize(static_cast<std::size_t>(count), nullptr);
    for (std::int32_t i = 0; i < count; ++i) {
        scene::ISceneNode* node = sceneRoot->getSceneNodeFromUID(materialNames->data[i].c_str() + 1);
        if (node == nullptr) {
            continue;
        }
        for (scene::ISceneNode* child : node->children) {
            if (child->getType() == scene::ESNT_DAE_FORCE) {
                static_cast<particle_system::CForceSceneNode*>(child)->bind(this);
            }
        }
    }
}

// 0x651924 _ZN6glitch7collada24CParticleSystemSceneNode26getParticleSystemParameterEPKc
// The map lookup of IParticleContext::setParameter: the slot under the name's hash, created null when it is missing.
void* CParticleSystemSceneNode::getParticleSystemParameter(const char* name) {
    ps::IParticleContext<ps::SParticle>& context = *system;
    return context.parameters[context.hashString(name)];
}

// 0x64fd60 _ZN6glitch7collada24CParticleSystemSceneNode4initEv
// For every material: the animation of the material's colour parameter (by the parameter's name, then by the diffuse colour channel, then
// by "__irrlicht_Diffuse_color") becomes the "DiffuseColorTrack" and the texture-transform animation the "TextureTransformTrack"; when the
// file has no source name, the animation block at the whole-animation clip first supplies the system's "AnimationDatabase". Then the
// colour parameter id, the "RenderMaterial" and the system's own init.
void CParticleSystemSceneNode::init() {
    ps::IParticleContext<ps::SParticle>& context = *system;
    detail::bindMaterialAnimations(*this, context);
    const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
    particleParameterId = material->m_renderer->getParameterID(kColorParameterType, 0);
    context.setParameter<boost::intrusive_ptr<video::CMaterial>>("RenderMaterial", getMaterial(0));
    system->init();
}

// 0x65615c _ZN6glitch7collada24CParticleSystemSceneNode15setParticleMeshEN5boost13intrusive_ptrINS_5scene11CMeshBufferEEE
// The mesh buffer is stored. Without a billboard its indices are repeated for every particle of the emitter into a new index buffer: the
// copy for particle p adds p times the mesh's vertex count to each index. The buffer becomes the system's "OutIndexBuffer" and the
// vertex attribute mask 0x20003. The buffer is published as the system's "RenderMesh" in every case. Deviation: the original takes the
// index storage from PS_NEW; the port's IBuffer::reset frees with delete[], so the storage is new[].
void CParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<scene::CMeshBuffer> mesh) {
    meshBuffer = mesh;
    ps::IParticleContext<ps::SParticle>& context = *system;
    if (!billboard) {
        boost::intrusive_ptr<video::IBuffer> out = driver->createBuffer(kIndexBuffer, kStaticUsage, 0, nullptr, true);
        scene::CMeshBuffer* source = meshBuffer.get();
        const std::int32_t particles = emitter->maxParticles;
        const video::IBuffer* sourceIndices = source->primitiveStream.m_indexBuffer.get();
        const std::uint8_t* sourceBase = sourceIndices->map(kReadAccess);
        const std::uint16_t* in = reinterpret_cast<const std::uint16_t*>(sourceBase + source->primitiveStream.m_offset);
        const std::uint32_t indexCount = source->primitiveStream.m_count;
        const std::uint32_t bytes = static_cast<std::uint32_t>(particles) * 2u * indexCount;
        if (bytes > out->m_size) {
            out->reset(bytes, new std::uint8_t[bytes], true);
        }
        std::uint8_t* mapped = out->map(kWriteAccess);
        std::uint16_t* outIndices = reinterpret_cast<std::uint16_t*>(mapped);
        if (particles > 0) {
            std::uint32_t outIndex = 0;
            std::uint32_t vertexBase = 0;
            for (std::int32_t p = 0; p < particles; ++p) {
                for (std::uint32_t k = 0; k < indexCount; ++k) {
                    outIndices[outIndex + k] = static_cast<std::uint16_t>(vertexBase + in[k]);
                }
                outIndex += indexCount;
                vertexBase += source->vertexStreams->m_field08;
            }
        }
        context.setParameter<boost::intrusive_ptr<video::IBuffer>>("OutIndexBuffer", out);
        attributeMask = 0x20003;
        if (mapped != nullptr) {
            out->unmap();
        }
        if (sourceBase != nullptr) {
            sourceIndices->unmap();
        }
    }
    context.setParameter<scene::CMeshBuffer*>("RenderMesh", meshBuffer.get());
}

// 0x656450 _ZN6glitch7collada24CParticleSystemSceneNode18initParticleSystemEPNS_5video12IVideoDriverEb
// Creates the system (with the billboard colour baker when `flag`), writes the emitter record's values into the parameters the models
// registered, and for a billboard sets up the shared quad mesh buffer (positions are baked per particle; the texture coordinates of the
// four corners are written once) and the shared index buffer that repeats the quad's six indices for the largest emitter built so far.
void CParticleSystemSceneNode::initParticleSystem(video::IVideoDriver* videoDriver, bool flag) {
    system = ps::PSManager::getInstance().createPCloudSystem(flag);
    ps::IParticleContext<ps::SParticle>& context = *system;
    const SEmitter& record = *emitter;
    context.setParameter<int>("EmitterType", record.shapeType);
    switch (record.shapeType) {
        case 1:
            context.setParameter<float>("RadiusLength", record.shape[0]);
            break;
        case 2:
            context.setParameter<float>("RadiusLength", record.shape[0]);
            context.setParameter<float>("Height", record.shape[1]);
            break;
        case 0:
            context.setParameter<float>("RadiusLength", record.shape[0]);
            context.setParameter<float>("Width", record.shape[1]);
            context.setParameter<float>("Height", record.shape[2]);
            break;
        default:
            break;
    }
    context.setParameter<int>("MaxParticles", record.maxParticles);
    context.setParameter<float>("BirthRate", record.birthRate);
    context.setParameter<float>("Life", record.life);
    context.setParameter<float>("LifeVariation", record.lifeVariation);
    context.setParameter<float>("TargetSize", record.targetSize);
    context.setParameter<float>("SizeVariation", record.sizeVariation);
    context.setParameter<float>("SizeGrowthTime", record.sizeGrowthTime);
    context.setParameter<float>("SizeFadeTime", record.sizeFadeTime);
    context.setParameter<float>("Speed", record.speed);
    context.setParameter<float>("SpeedVariation", record.speedVariation);
    switch (record.directionType) {
        case 1:
            context.setParameter<core::vector3d<float>>("Direction",
                                                        core::vector3d<float>{record.direction[0], record.direction[1], record.direction[2]});
            context.setParameter<float>("DirectionVariation", record.direction[3]);
            break;
        case 2:
            context.setParameter<float>("DirectionVariation", record.direction[1]);
            break;
        case 0:
            context.setParameter<core::vector3d<float>>("Direction", core::vector3d<float>{0.0f, 0.0f, 0.0f});
            break;
        default:
            break;
    }
    context.setParameter<int>("AnimKeyMappingType", record.animKeyMappingType);
    context.setParameter<float>("AnimOffset", record.animOffset);
    context.setParameter<float>("AnimOffsetVariation", record.animOffsetVariation);
    context.setParameter<float>("AnimLength", record.animLength);
    context.setParameter<float>("AnimLengthVariation", record.animLengthVariation);
    context.setParameter<float>("AnimScaleMultiplier", record.animScaleMultiplier);
    context.setParameter<float>("AnimScaleMultiplierVariation", record.animScaleMultiplierVariation);
    context.setParameter<float>("SpinTime", record.spinTime);
    context.setParameter<float>("SpinVariation", record.spinVariation);
    context.setParameter<float>("SpinPhase", record.spinPhase);
    context.setParameter<float>("SpinPhaseVariation", record.spinPhaseVariation);
    context.setParameter<int>("SpinAxisType", record.spinAxisType);
    if (record.spinAxisType == 1) {
        context.setParameter<core::vector3d<float>>("SpinAxis",
                                                    core::vector3d<float>{record.spinAxis[0], record.spinAxis[1], record.spinAxis[2]});
        context.setParameter<float>("SpinAxisVariation", record.spinAxis[3]);
    } else {
        context.setParameter<core::vector3d<float>>("SpinAxis", core::vector3d<float>{0.0f, 0.0f, 0.0f});
        context.setParameter<float>("SpinAxisVariation", 0.0f);
    }
    billboard = flag;
    driver = videoDriver;
    if (flag) {
        detail::ensureBillboardMeshBuffer(videoDriver, BillboardMeshBuffer);
        meshBuffer = BillboardMeshBuffer;
        detail::ensureBillboardIndexBuffer(driver, OutBillboardIndexBuffer, BillboardMaxParticles, record.maxParticles, *meshBuffer);
        context.setParameter<boost::intrusive_ptr<video::IBuffer>>("OutIndexBuffer", OutBillboardIndexBuffer);
        attributeMask = 0x60003;
    }
    context.setParameter<scene::CMeshBuffer*>("RenderMesh", meshBuffer.get());
    viewMatrixParameter = getParticleSystemParameter("ViewMatrix");
    transformedBox = static_cast<const core::aabbox3d<float>*>(getParticleSystemParameter("BBox"));
}

// 0x6572b8 _ZN6glitch7collada24CParticleSystemSceneNode6renderEPv
// The view matrix the render model bakes against is the active camera's, else the identity. The world transformation is a translation
// by the system's world matrix when the particles are local to the node, else the identity. The driver is asked for a process buffer for
// the particles' vertices; when it hands one out (result 4), the render data is bound (the colour parameter is set to white when the
// colour comes from a track), the material is set, the render data is drawn and the process buffer is released.
void CParticleSystemSceneNode::render(void*) {
    detail::renderParticles<ps::SParticle>(*this, *system, sceneManager->driver, attributeMask, particleParameterId, viewMatrixParameter);
}

}  // namespace glitch::collada
