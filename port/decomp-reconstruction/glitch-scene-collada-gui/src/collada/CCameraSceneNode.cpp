// Bodies of glitch::collada::CCameraSceneNode and glitch::collada::CLightSceneNode (canonical classes: collada/CCameraSceneNode.hpp and
// collada/CLightSceneNode.hpp). This file replaces the camera / light accessors of src/collada_scene_accessors.cpp and the
// generated_stubs entries of both classes.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"

#include <cmath>

namespace glitch::collada {

// ---------------------------------------------------------------------------------------------------------------------
// CCameraSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x6e5550 _ZN6glitch7collada16CCameraSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_7SCameraE (C2 0x6e57b0)
// The base camera at the origin looking at (0, 0, 100) with the far plane finite, the database copied, no target node, the record's name
// as uid; the up vector from the file's up axis; the projection from the record (see the header); then the near and far values.
CCameraSceneNode::CCameraSceneNode(const CColladaDatabase& source, SCamera& record)
    : scene::CCameraSceneNode(-1, core::vector3d<float>{0.0f, 0.0f, 0.0f}, core::vector3d<float>{0.0f, 0.0f, 100.0f}, false) {
    copyDatabase(database, source);
    targetNode = nullptr;
    uid = "";
    camera = &record;
    uid = record.name;
    switch (source.record->data->tables->upAxis) {
        case 1:
            setUpVector(core::vector3d<float>{0.0f, 1.0f, 0.0f});
            break;
        case 0:
            setUpVector(core::vector3d<float>{1.0f, 0.0f, 0.0f});
            break;
        case 2:
            setUpVector(core::vector3d<float>{0.0f, 0.0f, 1.0f});
            break;
        default:
            break;
    }
    if (camera->orthographic != 0) {
        orthogonal = true;
        setAspectRatio(camera->aspectRatio);
        setMAG(camera->fieldOfView / camera->aspectRatio);
    } else {
        const float half = std::tan(camera->fieldOfView * 0.017453292f * 0.5f) / camera->aspectRatio;
        const float angle = std::atan(half);
        setFOV(angle + angle);
    }
    setNearValue(camera->nearValue);
    setFarValue(camera->farValue);
}

// 0x6e5418 _ZN6glitch7collada16CCameraSceneNodeD1Ev (0x6e54c0 is the D2 form; D0 0x6e54a4 skipped)
// Drops the target node, then the database handle; the scene::CCameraSceneNode destructor follows.
CCameraSceneNode::~CCameraSceneNode() {
    targetNode.reset();
    dropDatabase(database);
}

// 0x6e5174 _ZNK6glitch7collada16CCameraSceneNode6getUIDEv
const char* CCameraSceneNode::getUID() const {
    return camera->name;
}

// 0x6e5168 _ZNK6glitch7collada16CCameraSceneNode7getTypeEv
scene::E_SCENE_NODE_TYPE CCameraSceneNode::getType() const {
    return scene::ESNT_DAE_CAMERA;
}

// 0x6e5160 _ZNK6glitch7collada16CCameraSceneNode13getTargetNodeEv
scene::ISceneNode* CCameraSceneNode::getTargetNode() const {
    return targetNode.get();
}

// 0x65b2e0 _ZN6glitch7collada16CCameraSceneNode6attachEPNS_5scene10ISceneNodeE
// When the record names a target (a non-empty "#<uid>" string), the node with that uid below `root` becomes the target node (a use on
// it, a drop on the previous one).
void CCameraSceneNode::attach(scene::ISceneNode* root) {
    const char* url = camera->targetUrl;
    if (url != nullptr && *url != '\0') {
        scene::ISceneNode* found = root->getSceneNodeFromUID(url + 1);
        targetNode = boost::intrusive_ptr<scene::ISceneNode>(found, true);
    }
}

// 0x6e5238 _ZN6glitch7collada16CCameraSceneNode19onRegisterSceneNodeEv
// With a target node: the camera's target becomes the node's absolute position, the camera updates its absolute position (K 0xb8,
// without children) and its rotation is rebuilt from (target - camera position) through quaternion::set. Without one the target is the
// point 100 units along the camera's -Z axis (the absolute matrix applied to (0, 0, -100)). Then scene::CCameraSceneNode's version runs.
int CCameraSceneNode::onRegisterSceneNode() {
    if (targetNode) {
        target = targetNode->getAbsolutePosition();
        updateAbsolutePosition(false);
        const core::vector3d<float> position = getAbsolutePosition();
        core::quaternion q;
        q.set(target.X - position.X, target.Y - position.Y, target.Z - position.Z);
        rotation = q;
    } else {
        const core::CMatrix4<float>& m = getAbsoluteTransformation();
        target.X = ((m.M[0] * 0.0f + m.M[4] * 0.0f) + m.M[8] * -100.0f) + m.M[12];
        target.Y = ((m.M[1] * 0.0f + m.M[5] * 0.0f) + m.M[9] * -100.0f) + m.M[13];
        target.Z = ((m.M[2] * 0.0f + m.M[6] * 0.0f) + m.M[10] * -100.0f) + m.M[14];
    }
    return scene::CCameraSceneNode::onRegisterSceneNode();
}

// ---------------------------------------------------------------------------------------------------------------------
// CLightSceneNode
// ---------------------------------------------------------------------------------------------------------------------

// 0x6444ec _ZN6glitch7collada15CLightSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_6SLightE (C2 0x6447ac)
CLightSceneNode::CLightSceneNode(const CColladaDatabase& source, SLight& lightRecord) : scene::CLightSceneNode(false) {
    copyDatabase(database, source);
    record = &lightRecord;
    uid = "";
    const float scale = lightRecord.intensity / 255.0f;
    const float r = static_cast<float>(lightRecord.color[0]) * scale;
    const float g = static_cast<float>(lightRecord.color[1]) * scale;
    const float b = static_cast<float>(lightRecord.color[2]) * scale;
    const float a = static_cast<float>(lightRecord.color[3]) * scale;
    video::CLight* l = light.get();
    l->m_specularColor.r = r;
    l->m_specularColor.a = a;
    l->m_specularColor.b = b;
    l->m_specularColor.g = g;
    switch (lightRecord.kind) {
        case 0:  // ambient
            l->m_type = 3;
            l->m_ambientColor.r = r;
            l->m_ambientColor.a = a;
            l->m_ambientColor.b = b;
            l->m_ambientColor.g = g;
            l->m_diffuseColor.r = 0.0f;
            l->m_diffuseColor.a = 0.0f;
            l->m_diffuseColor.b = 0.0f;
            l->m_diffuseColor.g = 0.0f;
            l->m_specularColor.r = 0.0f;
            l->m_specularColor.a = 0.0f;
            l->m_specularColor.b = 0.0f;
            l->m_specularColor.g = 0.0f;
            doLightRecalc();
            break;
        case 1:  // point
            l->m_type = 0;
            l->m_diffuseColor.r = r;
            l->m_diffuseColor.a = a;
            l->m_diffuseColor.b = b;
            l->m_diffuseColor.g = g;
            l->m_attenuation.X = lightRecord.parameters[0];
            l->m_attenuation.Y = lightRecord.parameters[1];
            l->m_attenuation.Z = lightRecord.parameters[2];
            doLightRecalc();
            break;
        case 2:  // spot
            l->m_type = 1;
            l->m_diffuseColor.r = r;
            l->m_diffuseColor.a = a;
            l->m_diffuseColor.b = b;
            l->m_diffuseColor.g = g;
            l->m_attenuation.X = lightRecord.parameters[0];
            l->m_attenuation.Y = lightRecord.parameters[1];
            l->m_attenuation.Z = lightRecord.parameters[2];
            l->m_outerConeAngle = lightRecord.parameters[3];
            l->m_falloff = lightRecord.parameters[4];
            doLightRecalc();
            break;
        case 3:  // directional
            l->m_type = 2;
            l->m_diffuseColor.a = a;
            l->m_diffuseColor.r = r;
            l->m_diffuseColor.b = b;
            l->m_diffuseColor.g = g;
            doLightRecalc();
            break;
        default:
            doLightRecalc();
            break;
    }
}

// 0x644438 _ZN6glitch7collada15CLightSceneNodeD1Ev (D0 0x6444b0 skipped)
// Destroys the database handle, then scene::CLightSceneNode's destructor runs.
CLightSceneNode::~CLightSceneNode() {
    dropDatabase(database);
}

// 0x64440c _ZNK6glitch7collada15CLightSceneNode6getUIDEv
const char* CLightSceneNode::getUID() const {
    return record->name;
}

// 0x644404 _ZNK6glitch7collada15CLightSceneNode10getLightIDEv
std::uint32_t CLightSceneNode::getLightID() const {
    return static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(record));
}

}  // namespace glitch::collada
