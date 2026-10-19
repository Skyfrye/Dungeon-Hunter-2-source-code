// Bodies of glitch::collada::CGlitchNewParticleSystemSceneNode (canonical class: collada/CGlitchNewParticleSystemSceneNode.hpp). This
// file replaces the accessor class of collada_scene_accessors.hpp and the stand-in functions of recon/slice_18 and slice_19
// (0x637b3c .. 0x643ea8). The steps the node shares with CParticleSystemSceneNode are in collada/ParticleNodeCommon.cpp.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"

#include <string>

#include "glitch-scene-collada-gui/collada/CForceSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ParticleNodeCommon.hpp"
#include "glitch-scene-collada-gui/ps/PSManager.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/material_access.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada {

namespace {

// E_SHADER_PARAMETER_TYPE 6: the colour parameter of a material renderer.
constexpr video::E_SHADER_PARAMETER_TYPE kColorParameterType = 6;

}  // namespace

boost::intrusive_ptr<scene::CMeshBuffer> CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer;
boost::intrusive_ptr<video::IBuffer> CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer;
std::int32_t CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = 0;

// 0x63cb10 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_12SGNPSEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
// (C2 0x63cc0c). The emitter is stored, the four flag bytes at +0x13c are "scale over life" set (size, speed, spin, motion random), the
// uid is the emitter's name. The root is told about the node a second time (the base constructor has registered it once; the root's list
// takes both entries) and automatic culling is set again.
CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode(const CColladaDatabase& source, SGNPSEmitter& emitterRecord,
                                                                     res::vector<res::String>* forceUrls, CRootSceneNode* rootNode)
    : IParticleSystemSceneNode(source, forceUrls, rootNode) {
    emitter = &emitterRecord;
    flags13c[0] = emitterRecord.sizeScaleOverLife != 0;
    flags13c[1] = emitterRecord.speedScaleOverLife != 0;
    flags13c[2] = emitterRecord.spinScaleOverLife != 0;
    flags13c[3] = emitterRecord.motionRandomScaleOverLife != 0;
    uid = emitterRecord.name;
    root->addParticleSystem(this);
    setAutomaticCulling(2);
}

// 0x63ca28 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeD1Ev (D2 0x63cab0; D0 0x63ca94)
// Deletes the particle system through its deleting destructor; the base destructor follows.
CGlitchNewParticleSystemSceneNode::~CGlitchNewParticleSystemSceneNode() {
    delete system;
}

// 0x637b78 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CGlitchNewParticleSystemSceneNode::getType() const {
    return scene::ESNT_DAE_GNPS;
}

// 0x637b3c _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode6getUIDEv
const char* CGlitchNewParticleSystemSceneNode::getUID() const {
    return emitter->name;
}

// 0x637b84 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode25getTransformedBoundingBoxEv
const core::aabbox3d<float>& CGlitchNewParticleSystemSceneNode::getTransformedBoundingBox() const {
    return *transformedBox;
}

// 0x637b48 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode16getParticleCountEv
std::uint32_t CGlitchNewParticleSystemSceneNode::getParticleCount() const {
    return static_cast<std::uint32_t>(static_cast<const ps::IParticleContext<ps::GNPSParticle>&>(*system).particles.size());
}

// 0x63b1d0 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode14getBoundingBoxEv
// As CParticleSystemSceneNode::getBoundingBox, in this class's own function-local static.
const core::aabbox3d<float>& CGlitchNewParticleSystemSceneNode::getBoundingBox() const {
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

// 0x63b620 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode19onRegisterSceneNodeEv
int CGlitchNewParticleSystemSceneNode::onRegisterSceneNode() {
    if (!static_cast<const ps::IParticleContext<ps::GNPSParticle>&>(*system).particles.empty()) {
        const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
        sceneManager->registerNodeForRendering(this, material, nullptr, scene::ESNRP_TRANSPARENT, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x63fed4 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode9onAnimateEj
// The "ViewRotMatrix" slot is refreshed with the active camera's view matrix (the identity without a camera). The colour handed to the
// system is the material's colour parameter (the original leaves the colour unset when the parameter is not there; the port starts it
// white). The step is the time in seconds.
void CGlitchNewParticleSystemSceneNode::onAnimate(std::uint32_t timeMs) {
    ISceneNode::onAnimate(timeMs);
    lastAnimateTime = timeMs;
    detail::copyCameraViewMatrix(*this, viewRotMatrixParameter);
    video::SColor color{0xFFFFFFFFu};
    const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
    scene::getMaterialColor(*material, particleParameterId, 0, color);
    system->update(static_cast<float>(static_cast<double>(static_cast<float>(lastAnimateTime)) / 1000.0), color);
}

// 0x63dcc0 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode18deleteSharedBufferEv
void CGlitchNewParticleSystemSceneNode::deleteSharedBuffer() {
    OutBillboardIndexBuffer = nullptr;
    BillboardMeshBuffer = nullptr;
    BillboardMaxParticles = 0;
}

// 0x63db4c _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
// As CParticleSystemSceneNode::attach, binding through the second binder (vptr+0xf8).
void CGlitchNewParticleSystemSceneNode::attach(scene::ISceneNode* sceneRoot) {
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

// 0x63f07c _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode26getParticleSystemParameterEPKc
void* CGlitchNewParticleSystemSceneNode::getParticleSystemParameter(const char* name) {
    ps::IParticleContext<ps::GNPSParticle>& context = *system;
    return context.parameters[context.hashString(name)];
}

// 0x63f1c8 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode15setParticleMeshEN5boost13intrusive_ptrINS_5scene11CMeshBufferEEE
// The mesh buffer is stored and published as the system's "RenderMesh".
void CGlitchNewParticleSystemSceneNode::setParticleMesh(boost::intrusive_ptr<scene::CMeshBuffer> mesh) {
    meshBuffer = mesh;
    static_cast<ps::IParticleContext<ps::GNPSParticle>&>(*system).setParameter<scene::CMeshBuffer*>("RenderMesh", meshBuffer.get());
}

// 0x63f214 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode4initEv
// The material animations as CParticleSystemSceneNode::init, then the file's animations named after the emitter, "<name>_particle_size_scale",
// "<name>_particle_speed_scale", "<name>_spin_scale" and "<name>_motion_random_scale", become the "SizeScale", "SpeedScale", "SpinScale" and
// "MotionRandomScale" tracks when they exist. Then the colour parameter id, the "RenderMaterial" and the system's own init.
void CGlitchNewParticleSystemSceneNode::init() {
    ps::IParticleContext<ps::GNPSParticle>& context = *system;
    detail::bindMaterialAnimations(*this, context);
    const std::string name(emitter->name);
    const SDatabaseTables& tables = database.tables();
    if (SAnimation* animation = getAnimation(tables, (name + "_particle_size_scale").c_str())) {
        context.setParameter<SAnimation*>("SizeScale", animation);
    }
    if (SAnimation* animation = getAnimation(tables, (name + "_particle_speed_scale").c_str())) {
        context.setParameter<SAnimation*>("SpeedScale", animation);
    }
    if (SAnimation* animation = getAnimation(tables, (name + "_spin_scale").c_str())) {
        context.setParameter<SAnimation*>("SpinScale", animation);
    }
    if (SAnimation* animation = getAnimation(tables, (name + "_motion_random_scale").c_str())) {
        context.setParameter<SAnimation*>("MotionRandomScale", animation);
    }
    const boost::intrusive_ptr<video::CMaterial> material = getMaterial(0);
    particleParameterId = material->m_renderer->getParameterID(kColorParameterType, 0);
    context.setParameter<boost::intrusive_ptr<video::CMaterial>>("RenderMaterial", getMaterial(0));
    system->init();
}

// 0x643ea8 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode6renderEPv
// As CParticleSystemSceneNode::render, with the view matrix in the "ViewMatrix" slot (+0x148).
void CGlitchNewParticleSystemSceneNode::render(void*) {
    detail::renderParticles<ps::GNPSParticle>(*this, *system, sceneManager->driver, attributeMask, particleParameterId, viewMatrixParameter);
}

// 0x642e58 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode18initParticleSystemEPNS_5video12IVideoDriverEb
// Creates the system (with the billboard colour baker when `flag`) and writes the emitter record's values into the parameters the models
// registered; the "scale over life" bytes are written as bytes, and the constant scales only when the track is not used. A billboard
// system draws quads from the shared mesh buffer and index buffer (this class's own statics). The system's world matrix is the node's
// absolute transformation, and the slots of "ViewMatrix", "ViewRotMatrix" and "BBox" are kept.
void CGlitchNewParticleSystemSceneNode::initParticleSystem(video::IVideoDriver* videoDriver, bool flag) {
    system = ps::PSManager::getInstance().createGNPSSystem(flag);
    ps::IParticleContext<ps::GNPSParticle>& context = *system;
    const SGNPSEmitter& record = *emitter;
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
    context.setParameter<float>("BirthRate", record.birthRate);
    context.setParameter<float>("BirthRateVariation", record.birthRateVariation);
    context.setParameter<int>("MaxParticles", record.maxParticles);
    context.setParameter<int>("MaxParticlesVariation", record.maxParticlesVariation);
    context.setParameter<float>("Life", record.life);
    context.setParameter<float>("LifeVariation", record.lifeVariation);
    context.setParameter<float>("TargetSize", record.targetSize);
    context.setParameter<float>("SizeVariation", record.sizeVariation);
    context.setParameter<std::uint8_t>("SizeScaleOverLife", record.sizeScaleOverLife);
    if (record.sizeScaleOverLife == 0) {
        context.setParameter<float>("SizeScale", record.sizeScale);
    }
    context.setParameter<float>("Speed", record.speed);
    context.setParameter<float>("SpeedVariation", record.speedVariation);
    context.setParameter<std::uint8_t>("SpeedScaleOverLife", record.speedScaleOverLife);
    if (record.speedScaleOverLife == 0) {
        context.setParameter<float>("SpeedScale", record.speedScale);
    }
    context.setParameter<core::vector3d<float>>("Direction",
                                                core::vector3d<float>{record.direction[0], record.direction[1], record.direction[2]});
    context.setParameter<core::vector3d<float>>(
        "DirectionVariation", core::vector3d<float>{record.directionVariation[0], record.directionVariation[1], record.directionVariation[2]});
    context.setParameter<std::uint8_t>("StartAngleType", record.startAngleType);
    context.setParameter<float>("SpinPhase", record.spinPhase);
    context.setParameter<float>("SpinPhaseVariation", record.spinPhaseVariation);
    context.setParameter<std::uint8_t>("SpinKeepAlignedToMotion", record.spinKeepAlignedToMotion);
    context.setParameter<float>("SpinTime", record.spinTime);
    context.setParameter<float>("SpinVariation", record.spinVariation);
    context.setParameter<std::uint8_t>("SpinScaleOverLife", record.spinScaleOverLife);
    if (record.spinScaleOverLife == 0) {
        context.setParameter<float>("SpinScale", record.spinScale);
    }
    context.setParameter<core::vector3d<float>>(
        "SpinPivotPoint", core::vector3d<float>{record.spinPivotPoint[0], record.spinPivotPoint[1], record.spinPivotPoint[2]});
    context.setParameter<std::uint8_t>("SpinAxisType", record.spinAxisType);
    context.setParameter<core::vector3d<float>>("SpinAxis", core::vector3d<float>{record.spinAxis[0], record.spinAxis[1], record.spinAxis[2]});
    context.setParameter<core::vector3d<float>>(
        "SpinAxisVariation", core::vector3d<float>{record.spinAxisVariation[0], record.spinAxisVariation[1], record.spinAxisVariation[2]});
    context.setParameter<float>("MotionRandom", record.motionRandom);
    context.setParameter<float>("MotionRandomVariation", record.motionRandomVariation);
    context.setParameter<std::uint8_t>("MotionRandomScaleOverLife", record.motionRandomScaleOverLife);
    if (record.motionRandomScaleOverLife == 0) {
        context.setParameter<float>("MotionRandomScale", record.motionRandomScale);
    }
    // The original reads the one byte at +0xc4 for both the horizontal and the vertical division (0x643364, 0x64338c).
    context.setParameter<std::uint8_t>("TextureSubDiviseH", record.textureSubDivise);
    context.setParameter<std::uint8_t>("TextureSubDiviseV", record.textureSubDivise);
    context.setParameter<std::uint8_t>("TextureSubDiviseRandomPick", record.textureSubDiviseRandomPick);
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
    viewRotMatrixParameter = getParticleSystemParameter("ViewRotMatrix");
    transformedBox = static_cast<const core::aabbox3d<float>*>(getParticleSystemParameter("BBox"));
    system->worldMatrixPtr = absoluteTransform.M;
}

}  // namespace glitch::collada
