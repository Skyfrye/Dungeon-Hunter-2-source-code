// glitch::scene::CAnimatedMeshSceneNode and IAnimatedMeshSceneNode (scene/CAnimatedMeshSceneNode.hpp).
#include "glitch-scene-collada-gui/scene/CAnimatedMeshSceneNode.hpp"

#include <cmath>
#include <cstring>
#include <string>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/IMeshCache.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

constexpr std::uint32_t kTagAnimatedMesh = 0x68736d61;  // "amsh"
constexpr video::E_TRANSFORMATION_STATE kWorldTransform = 1;  // setTransform(1, ...): the world matrix

float bitsToFloat(std::uint32_t bits) {
    float f;
    std::memcpy(&f, &bits, sizeof f);
    return f;
}

}  // namespace

// 0x6f65ac _ZN6glitch5scene22IAnimatedMeshSceneNodeD1Ev (D0 0x6f72bc)
IAnimatedMeshSceneNode::~IAnimatedMeshSceneNode() = default;

// 0x6f6b7c _ZN6glitch5scene22CAnimatedMeshSceneNodeC1ERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEEiRKNS_4core8vector3dIfEERKNS_4core10quaternionES9_
// 0x6f6ca0 (C2) is the same body.
CAnimatedMeshSceneNode::CAnimatedMeshSceneNode(const boost::intrusive_ptr<IAnimatedMesh>& meshValue, int idValue,
                                               const core::vector3d<float>& positionValue, const core::quaternion& rotationValue,
                                               const core::vector3d<float>& scaleValue)
    : IAnimatedMeshSceneNode(idValue, positionValue, rotationValue, scaleValue) {
    framesPerSecond = bitsToFloat(0x3a83126fu);  // 0.001 (+0x140)
    loopMode = true;                             // +0x154
    beginFrameTime = os::Timer::getTime();       // +0x134
    setMesh(meshValue);
}

// 0x6f6618 _ZN6glitch5scene22CAnimatedMeshSceneNodeD1Ev (D2 0x6f66f8, D0 0x6f66dc)
// The shadow node, the callback, the joint matrices and the mesh are released by the member destructors.
CAnimatedMeshSceneNode::~CAnimatedMeshSceneNode() = default;

// 0x6f5fc4 _ZNK6glitch5scene22CAnimatedMeshSceneNode7getTypeEv
E_SCENE_NODE_TYPE CAnimatedMeshSceneNode::getType() const { return static_cast<E_SCENE_NODE_TYPE>(kTagAnimatedMesh); }

// 0x6f630c _ZNK6glitch5scene22CAnimatedMeshSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CAnimatedMeshSceneNode::getBoundingBox() const { return mesh->getBoundingBox(); }

// 0x6f6328 _ZNK6glitch5scene22CAnimatedMeshSceneNode11getMaterialEj
boost::intrusive_ptr<video::CMaterial> CAnimatedMeshSceneNode::getMaterial(std::uint32_t index) const {
    if (getMaterialCount() > index) {
        return mesh->getMaterial(index);
    }
    return boost::intrusive_ptr<video::CMaterial>();
}

// 0x6f6384 _ZNK6glitch5scene22CAnimatedMeshSceneNode16getMaterialCountEv
std::uint32_t CAnimatedMeshSceneNode::getMaterialCount() const { return mesh ? mesh->getMeshBufferCount() : 0; }

// 0x6f6564 _ZN6glitch5scene22CAnimatedMeshSceneNode11removeChildEPNS0_10ISceneNodeE
bool CAnimatedMeshSceneNode::removeChild(ISceneNode* child) {
    if (child == nullptr || child != shadow.get()) {
        return ISceneNode::removeChild(child);
    }
    shadow = nullptr;
    return true;
}

// 0x6f6540 _ZN6glitch5scene22CAnimatedMeshSceneNode9onAnimateEj
void CAnimatedMeshSceneNode::onAnimate(std::uint32_t timeMs) {
    currentFrame = buildFrameNr(timeMs);  // +0x144
    ISceneNode::onAnimate(timeMs);
}

// 0x6f5fd0 _ZNK6glitch5scene22CAnimatedMeshSceneNode10getFrameNrEv
float CAnimatedMeshSceneNode::getFrameNr() const { return currentFrame; }

// 0x6f61d0 _ZNK6glitch5scene22CAnimatedMeshSceneNode13getStartFrameEv
std::int32_t CAnimatedMeshSceneNode::getStartFrame() const { return startFrame; }

// 0x6f61d8 _ZNK6glitch5scene22CAnimatedMeshSceneNode11getEndFrameEv
std::int32_t CAnimatedMeshSceneNode::getEndFrame() const { return endFrame; }

// 0x6f63b0 _ZN6glitch5scene22CAnimatedMeshSceneNode11setLoopModeEb
void CAnimatedMeshSceneNode::setLoopMode(bool playAnimationLooped) { loopMode = playAnimationLooped; }

// 0x6f6450 _ZN6glitch5scene22CAnimatedMeshSceneNode21setRenderFromIdentityEb
void CAnimatedMeshSceneNode::setRenderFromIdentity(bool value) { renderFromIdentity = value; }

// 0x6f62ec _ZN6glitch5scene22CAnimatedMeshSceneNode17setAnimationSpeedEf
// Stores framesPerSecond scaled by 0.001 (the original multiplies by 0x3a83126f).
void CAnimatedMeshSceneNode::setAnimationSpeed(float fps) { framesPerSecond = fps * bitsToFloat(0x3a83126fu); }

// 0x6f5fa8 _ZNK6glitch5scene22CAnimatedMeshSceneNode7getMeshEv
boost::intrusive_ptr<IAnimatedMesh> CAnimatedMeshSceneNode::getMesh() const { return mesh; }

// 0x6f63b8 _ZN6glitch5scene22CAnimatedMeshSceneNode23setAnimationEndCallbackEPNS0_21IAnimationEndCallBackE
// Drops the old callback and takes a use of the new one.
void CAnimatedMeshSceneNode::setAnimationEndCallback(IAnimationEndCallBack* callback) {
    loopCallBack = boost::intrusive_ptr<IAnimationEndCallBack>(callback, true);
}

// 0x6f63ec _ZN6glitch5scene22CAnimatedMeshSceneNode7setMeshERKN5boost13intrusive_ptrINS0_13IAnimatedMeshEEE
// A null mesh is ignored. Otherwise the mesh is replaced and the whole animation becomes the frame loop.
void CAnimatedMeshSceneNode::setMesh(const boost::intrusive_ptr<IAnimatedMesh>& newMesh) {
    if (!newMesh) {
        return;
    }
    mesh = newMesh;
    setFrameLoop(0, static_cast<std::int32_t>(mesh->getFrameCount()));  // vptr+0xf8
}

// 0x6f61e0 _ZN6glitch5scene22CAnimatedMeshSceneNode12setFrameLoopEii
// Both ends are clamped to the mesh's frames; an end before the begin makes the loop run backwards (start = end clamped, end = begin
// clamped, never before the start). The current frame becomes the start of the loop.
bool CAnimatedMeshSceneNode::setFrameLoop(std::int32_t begin, std::int32_t end) {
    const std::int32_t frameCount = static_cast<std::int32_t>(mesh->getFrameCount());  // vptr+0x30
    const std::int32_t last = frameCount - 1;
    // The earlier of the two arguments is clamped to 0..last and becomes the start; the later one is raised to at least the start and
    // clamped to last.
    const std::int32_t first = end < begin ? end : begin;
    const std::int32_t second = end < begin ? begin : end;
    const std::int32_t lowerBound = first < 0 ? 0 : first;
    const std::int32_t start = lowerBound >= last ? last : lowerBound;
    const std::int32_t raised = second < start ? start : second;
    const std::int32_t stop = raised < last ? raised : last;
    endFrame = stop;                             // +0x13c
    startFrame = start;                          // +0x138
    setCurrentFrame(static_cast<float>(start));  // vptr+0xf4
    return true;
}

// 0x6f6af8 _ZN6glitch5scene22CAnimatedMeshSceneNode15setCurrentFrameEf
// The frame is held inside the loop and the clock is moved so that buildFrameNr yields it now.
void CAnimatedMeshSceneNode::setCurrentFrame(float frame) {
    float lower = static_cast<float>(startFrame);
    const float upper = static_cast<float>(endFrame);
    if (lower <= frame) lower = frame;
    if (upper <= lower) lower = upper;
    currentFrame = lower;  // +0x144
    const float elapsed = (currentFrame - static_cast<float>(startFrame)) / framesPerSecond;
    beginFrameTime = os::Timer::getTime() - static_cast<std::uint32_t>(static_cast<std::int32_t>(elapsed));  // +0x134
}

// 0x6f5fd8 _ZN6glitch5scene22CAnimatedMeshSceneNode12buildFrameNrEj
float CAnimatedMeshSceneNode::buildFrameNr(std::uint32_t timeMs) {
    if (transiting != 0.0f) {
        transitingBlend = transiting * static_cast<float>(timeMs - beginFrameTime);  // +0x150
        if (transitingBlend > 1.0f) {
            transitingBlend = 0.0f;
            transiting = 0.0f;
        }
    }
    if (startFrame == endFrame) {
        return static_cast<float>(startFrame);
    }
    const float speed = framesPerSecond;
    if (speed == 0.0f) {
        return static_cast<float>(startFrame);
    }
    if (!loopMode) {
        float frame;
        float limit;
        if (speed <= 0.0f) {
            frame = static_cast<float>(endFrame) - static_cast<float>(timeMs - beginFrameTime) * -speed;
            limit = static_cast<float>(startFrame);
            if (!(limit > frame)) {
                return frame;
            }
        } else {
            frame = static_cast<float>(startFrame) + speed * static_cast<float>(timeMs - beginFrameTime);
            limit = static_cast<float>(endFrame);
            if (!(limit < frame)) {
                return frame;
            }
        }
        if (loopCallBack) {
            loopCallBack->onAnimationEnd(this);  // vptr+0x0c
        }
        return limit;
    }
    const std::int32_t length = std::abs(static_cast<std::int32_t>(static_cast<float>(endFrame - startFrame) / speed));
    const std::int32_t base = speed <= 0.0f ? endFrame : startFrame;
    const std::uint32_t phase = length == 0 ? 0u : (timeMs - beginFrameTime) % static_cast<std::uint32_t>(length);
    return static_cast<float>(base) + speed * static_cast<float>(phase);
}

// 0x6f6818 _ZN6glitch5scene22CAnimatedMeshSceneNode24addShadowVolumeSceneNodeERKN5boost13intrusive_ptrIKNS0_5IMeshEEEibf
// Needs the driver's stencil capability (bit 3). A node that already has a shadow logs a warning and returns null. Without a mesh the
// node's own mesh is used. The new shadow node becomes a child.
IShadowVolumeSceneNode* CAnimatedMeshSceneNode::addShadowVolumeSceneNode(const boost::intrusive_ptr<const IMesh>& shadowMesh,
                                                                         std::int32_t shadowId, bool zfailMethod, float infinity) {
    boost::intrusive_ptr<const IMesh> volumeMesh = shadowMesh;
    video::IVideoDriver* driver = sceneManager->driver;
    if ((driver->m_capabilities & 8u) == 0) {
        return nullptr;
    }
    if (shadow) {
        os::Printer::log("This node already has a shadow.", ELL_WARNING);
        return nullptr;
    }
    if (!volumeMesh) {
        volumeMesh = boost::intrusive_ptr<const IMesh>(mesh.get(), true);
    }
    shadow = boost::intrusive_ptr<CShadowVolumeSceneNode>(
        new CShadowVolumeSceneNode(driver, volumeMesh, shadowId, zfailMethod ? ESVT_ZFAIL : ESVT_STANDARD, infinity));
    addChild(shadow.get());  // vptr+0x5c
    return shadow.get();
}

// 0x6f6958 _ZN6glitch5scene22CAnimatedMeshSceneNode19onRegisterSceneNodeEv
int CAnimatedMeshSceneNode::onRegisterSceneNode() {
    renderCount = 0;
    const std::uint32_t count = getMaterialCount();
    std::uint32_t solid = 0;
    std::uint32_t transparent = 0;
    for (std::uint32_t i = 0; i < count; ++i) {
        const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(i);
        const std::uint32_t passState = material->m_renderer->m_techniques[material->getTechnique()].passes[0].stateWords[1];
        if ((passState & 0x10000u) != 0) {
            ++transparent;
        } else {
            ++solid;
        }
        if (solid != 0 && transparent != 0) {
            break;
        }
    }
    if (count != 0) {
        const boost::intrusive_ptr<video::CMaterial> none;
        if (solid != 0) {
            sceneManager->registerNodeForRendering(this, none, nullptr, ESNRP_SOLID, nullptr, 0x7FFFFFFF);
        }
        if (transparent != 0) {
            sceneManager->registerNodeForRendering(this, none, nullptr, ESNRP_TRANSPARENT, nullptr, 0x7FFFFFFF);
        }
    }
    if (mesh && (flags & ESNF_SHADOW_CASTER) != 0) {
        const boost::intrusive_ptr<video::CMaterial> none;
        sceneManager->registerNodeForRendering(this, none, nullptr, ESNRP_SHADOW_RECEIVER, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x6f7330 _ZN6glitch5scene22CAnimatedMeshSceneNode6renderEPv
void CAnimatedMeshSceneNode::render(void*) {
    video::IVideoDriver* driver = sceneManager->driver;
    if (!mesh || !driver) {
        return;
    }
    const E_SCENE_NODE_RENDER_PASS pass = sceneManager->renderPass;  // +0x174
    ++renderCount;                                                    // +0x15c
    const boost::intrusive_ptr<IMesh> frameMesh = mesh->getMesh(static_cast<std::int32_t>(getFrameNr()), 255, startFrame, endFrame);
    driver->setTransform(kWorldTransform, absoluteTransform);  // vptr+0x6c
    if (shadow && renderCount == 1) {
        shadow->updateShadowVolumes();
    }
    const bool transparentPass = pass == ESNRP_TRANSPARENT;
    for (std::uint32_t i = 0; i < frameMesh->getMeshBufferCount(); ++i) {
        const boost::intrusive_ptr<video::CMaterial> material = mesh->getMaterial(i);
        const std::uint32_t passState = material->m_renderer->m_techniques[material->getTechnique()].passes[0].stateWords[1];
        if (transparentPass != (((passState >> 16) & 1u) != 0)) {
            continue;
        }
        const boost::intrusive_ptr<CMeshBuffer> buffer = frameMesh->getMeshBuffer(i);
        if (renderFromIdentity) {
            driver->setTransform(kWorldTransform, core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY));
        }
        const boost::intrusive_ptr<video::CMaterial> drawMaterial = mesh->getMaterial(i);
        const boost::intrusive_ptr<const video::CMaterialVertexAttributeMap> attributes(mesh->getMaterialVertexAttributeMap(i).get(), true);
        driver->setMaterial(drawMaterial, attributes);
        driver->drawMeshBuffer(boost::intrusive_ptr<const CMeshBuffer>(buffer.get(), true));
    }
}

// 0x6f6478 _ZNK6glitch5scene22CAnimatedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CAnimatedMeshSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    const boost::intrusive_ptr<const IAnimatedMesh> meshHandle(mesh.get(), true);
    const char* name = sceneManager->meshCache->getMeshFilename(meshHandle);  // meshCache vptr+0x30
    attributes->addString("Mesh", name ? name : "", false);                    // vptr+0x7c
    attributes->addBool("Looping", loopMode, false);                           // vptr+0xd8
    attributes->addFloat("FramesPerSecond", framesPerSecond, false);           // vptr+0x64
}

// 0x6f6d98 _ZN6glitch5scene22CAnimatedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Loads the named mesh when it differs from the current one.
void CAnimatedMeshSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    const boost::intrusive_ptr<const IAnimatedMesh> meshHandle(mesh.get(), true);
    const char* current = sceneManager->meshCache->getMeshFilename(meshHandle);
    const std::string currentName = current ? current : "";
    const std::string newName = attributes->getString("Mesh");  // vptr+0x84
    loopMode = attributes->getBool("Looping");                  // vptr+0xe4
    framesPerSecond = attributes->getFloat("FramesPerSecond");  // vptr+0x70
    if (newName != currentName) {
        const boost::intrusive_ptr<IAnimatedMesh> loaded = sceneManager->getMesh(newName.c_str());
        if (loaded) {
            setMesh(loaded);
        }
    }
}

// 0x6f71cc _ZN6glitch5scene22CAnimatedMeshSceneNode5cloneEv
// The animation state is copied word for word. The original copies the callback, the render counter and the shadow pointers without taking
// uses of them, so the clone releases references it never took; the port copies the pointers the same way.
ISceneNode* CAnimatedMeshSceneNode::clone() {
    auto* node = new CAnimatedMeshSceneNode(mesh, id, position, rotation, scale);
    node->cloneMembers(this);
    node->mesh = mesh;
    node->beginFrameTime = beginFrameTime;
    node->startFrame = startFrame;
    node->endFrame = endFrame;
    node->framesPerSecond = framesPerSecond;
    node->currentFrame = currentFrame;
    node->unk_148 = unk_148;
    node->transiting = transiting;
    node->transitingBlend = transitingBlend;
    node->loopMode = loopMode;
    node->loopCallBack = boost::intrusive_ptr<IAnimationEndCallBack>(loopCallBack.get(), false);
    node->renderCount = renderCount;
    node->shadow = boost::intrusive_ptr<CShadowVolumeSceneNode>(shadow.get(), false);
    node->jointMatrices = jointMatrices;
    node->renderFromIdentity = renderFromIdentity;
    return node;
}

}  // namespace glitch::scene
