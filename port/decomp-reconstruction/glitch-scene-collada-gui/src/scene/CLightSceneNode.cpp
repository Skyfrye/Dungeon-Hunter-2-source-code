// Bodies of glitch::scene::CLightSceneNode (canonical class: scene/CLightSceneNode.hpp). This file replaces
// scene_nodes.cpp (getType), tb_scene-collada-gui-glitch_scene_CLightSceneNode-0.cpp (comments only) and the light entries of
// recon/slice_05 (constructors, clone), recon/slice_31 (deserializeAttributes) and recon/slice_32 (serializeAttributes, constructors).
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-core-io/io/iattributes.hpp"

#include <cfloat>

#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

// The channel value of the specular colour: (float)(value * 0.7) + 0.3, computed in double as the original does.
float specularChannel(float value) {
    return static_cast<float>(static_cast<float>(value * 0.7) + 0.3);
}

}  // namespace

// The common tail of the constructors (0x584350, 0x5840f0, 0x583e30, 0x583fbc): the light's slot (CLight +0x50) is pointed at this
// node's absolute matrix (+0x24) and marked attached. A matrix the slot owned would go back to the pool first.
void CLightSceneNode::attachLightToNode() {
    video::STransformationSource* slot = transformationSource;
    if (!slot->attached) {
        delete slot->matrix;
    }
    slot->matrix = &absoluteTransform;
    slot->attached = true;
}

// 0x584350 _ZN6glitch5scene15CLightSceneNodeC1EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf (complete object)
// 0x584544 _ZN6glitch5scene15CLightSceneNodeC2EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf (base object)
CLightSceneNode::CLightSceneNode(int id, const core::vector3d<float>& position, const video::SColorf& color, float radius)
    : ISceneNode(id, position, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f}, core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    light = video::CLight::allocate(&transformationSource);
    lastLightType = light->m_type;
    attachLightToNode();
    light->m_radius = radius;
    light->m_diffuseColor = color;
    light->m_specularColor.r = specularChannel(color.r);
    light->m_specularColor.g = specularChannel(color.g);
    light->m_specularColor.b = specularChannel(color.b);
    light->m_specularColor.a = specularChannel(color.a);
    doLightRecalc();
}

// 0x5840f0 _ZN6glitch5scene15CLightSceneNodeC1Eb (complete object)
// 0x584238 _ZN6glitch5scene15CLightSceneNodeC2Eb (base object)
// Id -1 at the origin with a default light (the colours and radius are the light's defaults). The bool argument is not read.
CLightSceneNode::CLightSceneNode(bool /*flag*/)
    : ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    light = video::CLight::allocate(&transformationSource);
    lastLightType = light->m_type;
    attachLightToNode();
    doLightRecalc();
}

// 0x583e30 _ZN6glitch5scene15CLightSceneNodeC1ERS1_ (complete object)
// 0x583fbc _ZN6glitch5scene15CLightSceneNodeC2ERS1_ (base object)
// The light is cloned (CLight::clone) with its slot reported back to this node, the box is copied, and the base members (name,
// transforms, id, flags, children, animators) follow from ISceneNode::cloneMembers.
CLightSceneNode::CLightSceneNode(CLightSceneNode& other)
    : ISceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::quaternion{0.0f, 0.0f, 0.0f, 1.0f},
                 core::vector3d<float>{1.0f, 1.0f, 1.0f}) {
    light = other.light->clone(&transformationSource);
    lastLightType = light->m_type;
    boundingBox = other.boundingBox;
    attachLightToNode();
    cloneMembers(&other);
}

// 0x5848a4 _ZN6glitch5scene15CLightSceneNodeD1Ev
// 0x58497c _ZN6glitch5scene15CLightSceneNodeD2Ev
// 0x584960 _ZN6glitch5scene15CLightSceneNodeD0Ev (skipped)
// A light that someone else still holds (count above one) is detached from the node's matrix first, so it keeps a copy of it.
CLightSceneNode::~CLightSceneNode() {
    if (light && light->m_refCount > 1) {
        transformationSource->detach();
    }
}

// 0x583ddc _ZNK6glitch5scene15CLightSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Verified against Hex-Rays 0x583ddc: ISceneNode::serializeAttributes, IAttributes::push (slot +0x30) with "Light" (the
// literal sits in the tail of "EnablePlayerHeadLight" at 0x8bf9d7), CLight::serializeAttributes(this->light, options),
// pop (slot +0x3c). The blocker recorded earlier is gone: glitch::video::CLight::serializeAttributes (0x59ffa8) is now
// reconstructed in glitch-video/src/light.cpp with a matching signature, so the call is emitted.
void CLightSceneNode::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    ISceneNode::serializeAttributes(attributes, options);
    attributes->push("Light");
    if (light) {
        light->serializeAttributes(attributes, options);
    }
    attributes->pop();
}

// 0x583d88 _ZN6glitch5scene15CLightSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// As the serializer above, with ISceneNode::deserializeAttributes and CLight::deserializeAttributes (0x5a015c, now
// reconstructed in glitch-video/src/light.cpp) in place of the writer.
void CLightSceneNode::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    ISceneNode::deserializeAttributes(attributes, options);
    attributes->push("Light");
    if (light) {
        light->deserializeAttributes(attributes, options);
    }
    attributes->pop();
}

// 0x583d34 _ZN6glitch5scene15CLightSceneNode19onRegisterSceneNodeEv
// Registers the node (no material, no user data, pass 1, no position, sort order 0x7FFFFFFF). The original dereferences the scene
// manager without a test; a node that is not attached to a manager skips the registration here.
int CLightSceneNode::onRegisterSceneNode() {
    if (sceneManager != nullptr) {
        const boost::intrusive_ptr<video::CMaterial> noMaterial;
        sceneManager->registerNodeForRendering(this, noMaterial, nullptr, 1, nullptr, 0x7FFFFFFF);
    }
    return 1;
}

// 0x583d18 _ZN6glitch5scene15CLightSceneNode6renderEPv
// Hands the light to the scene manager's video driver (+0x14) when there is one.
void CLightSceneNode::render(void* /*renderContext*/) {
    if (sceneManager != nullptr && sceneManager->driver != nullptr) {
        sceneManager->driver->addDynamicLight(light);
    }
}

// 0x583cf0 _ZNK6glitch5scene15CLightSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& CLightSceneNode::getBoundingBox() const {
    if (lastLightType != light->m_type) {
        const_cast<CLightSceneNode*>(this)->doLightRecalc();
    }
    return boundingBox;
}

// 0x583bec _ZNK6glitch5scene15CLightSceneNode7getTypeEv
E_SCENE_NODE_TYPE CLightSceneNode::getType() const {
    return ESNT_LIGHT;
}

// 0x583f94 _ZN6glitch5scene15CLightSceneNode5cloneEv
ISceneNode* CLightSceneNode::clone() {
    return new CLightSceneNode(*this);
}

// 0x583c18 _ZN6glitch5scene15CLightSceneNode13doLightRecalcEv
void CLightSceneNode::doLightRecalc() {
    std::uint32_t type = light->m_type;
    if (type > 1) {
        if (type == 2) {
            boundingBox.MinEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
            boundingBox.MaxEdge = core::vector3d<float>{0.0f, 0.0f, 0.0f};
            setAutomaticCulling(ECULL_OFF);
            type = light->m_type;
        }
        lastLightType = type;
    } else {
        if (light->m_radius == FLT_MAX) {
            setAutomaticCulling(ECULL_OFF);
        } else {
            const float half = (light->m_radius * light->m_radius) * 0.5f;
            boundingBox.MinEdge = core::vector3d<float>{-half, -half, -half};
            boundingBox.MaxEdge = core::vector3d<float>{half, half, half};
            setAutomaticCulling(ECULL_BOX);
        }
        lastLightType = light->m_type;
    }
}

}  // namespace glitch::scene
