// Batch g1-game-world-ShadowSkinnedMeshSceneNode-844318-0: the functions of ShadowSkinnedMeshSceneNode (the two bounding-box
// forwards, UpdateShadow, onRegisterSceneNode, renderMesh, render, the constructors and the destructors). Declarations come from
// dh2/ShadowSkinnedMeshSceneNode.hpp.
//
// The VTT forms (C2 0x361f24, D2 0x360c7c) and the deleting destructor (D0 0x360c60) are compiler-generated from the complete forms.
// The original stores the vptrs of the object parts itself; the host emits them from the declared hierarchy.

#include "dh2/ShadowSkinnedMeshSceneNode.hpp"

#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-core-io/core/matrix4_operators.hpp"
#include "glitch-core-io/core/matrix_builders.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"

// The base constructor and destructor are explicit specializations defined in g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp.
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::BaseMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);
template <>
BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>::~BaseMeshSceneNode();

namespace {

// The debug switch both onRegisterSceneNode and render test (the string is a literal Hex-Rays drops; the asm names it).
bool ShadowProjectionEnabled() {
    DebugSwitches::GetInstance();  // DebugSwitches::load on first use
    return DebugSwitches::GetInstance()->GetSwitch(std::string("RENDERING_EnableShadowProjection"));
}

// SceneManager +0x418 = m_lightSetManager +0x184, the strength of the scene's shadows (a float stored in the word after the
// light vector; the LightSetManager header still types the four words at +0x178 as ints).
float ShadowStrength() {
    SceneManager* manager = DeviceSceneManager();
    float strength;
    std::memcpy(&strength, &manager->m_lightSetManager.unk_178[3], sizeof(strength));
    return strength;
}

}  // namespace

// 0x35dc98 _ZNK26ShadowSkinnedMeshSceneNode14getBoundingBoxEv
// Forwards to the node this shadow follows (its vtable +0x30).
const glitch::core::aabbox3d<float>& ShadowSkinnedMeshSceneNode::getBoundingBox() const {
    return unk_1a0->getBoundingBox();
}

// 0x35dcb4 _ZNK26ShadowSkinnedMeshSceneNode25getTransformedBoundingBoxEv
// Forwards to the node this shadow follows (its vtable +0x34).
const glitch::core::aabbox3d<float>& ShadowSkinnedMeshSceneNode::getTransformedBoundingBox() const {
    return unk_1a0->getTransformedBoundingBox();
}

// 0x35f780 _ZN26ShadowSkinnedMeshSceneNode12UpdateShadowEv
// The shadow plane is z = 0 (normal (0, 0, 1), D = -0.0; the original transforms it by an identity matrix, which changes nothing).
// The projection matrix S comes from the scene's light vector (SceneManager +0x400). With P the absolute position of the followed
// node, the node's transformation becomes T(P + (10, -10, 10)) * S * I * T(-P), which moves the projected shape by a fixed offset.
void ShadowSkinnedMeshSceneNode::UpdateShadow() {
    using glitch::core::CMatrix4;
    SceneManager* manager = DeviceSceneManager();

    CMatrix4<float> identity(CMatrix4<float>::EM4CONST_IDENTITY);
    glitch::core::plane3d<float> plane;
    plane.Normal.X = 0.0f;
    plane.Normal.Y = 0.0f;
    plane.Normal.Z = 1.0f;
    plane.D = -0.0f;

    glitch::core::vector3d<float> light;  // SceneManager +0x400
    light.X = manager->m_lightSetManager.unk_16c[0];
    light.Y = manager->m_lightSetManager.unk_16c[1];
    light.Z = manager->m_lightSetManager.unk_16c[2];
    CMatrix4<float> shadow = glitch::core::buildShadowMatrix<float>(light, plane, 0.0f);

    const glitch::core::vector3d<float> position = unk_1a0->getAbsolutePosition();

    CMatrix4<float> back;  // T(-P)
    std::memset(back.M, 0, sizeof(back.M));
    back.M[0] = back.M[5] = back.M[10] = back.M[15] = 1.0f;
    back.M[12] = -position.X;
    back.M[13] = -position.Y;
    back.M[14] = -position.Z;
    back.flag = false;

    CMatrix4<float> lift;  // T(P + (10, -10, 10))
    std::memset(lift.M, 0, sizeof(lift.M));
    lift.M[0] = lift.M[5] = lift.M[10] = lift.M[15] = 1.0f;
    lift.M[12] = position.X + 10.0f;
    lift.M[13] = position.Y + -10.0f;
    lift.M[14] = position.Z + 10.0f;
    lift.flag = false;

    CMatrix4<float> first = lift * shadow;
    CMatrix4<float> second = first * identity;
    CMatrix4<float> result = second * back;
    setAbsoluteTransformation(result);
}

// 0x35ffb8 _ZN26ShadowSkinnedMeshSceneNode19onRegisterSceneNodeEv
// With a mesh, the projection switch on and a positive strength, every buffer the mesh prepares for rendering (step 0) with the
// results 4 and 16 registers this node in the shadow-mesh pass (6) under the 1-based buffer index; result 5 makes the mesh refresh
// its box. The node always reports 1.
int ShadowSkinnedMeshSceneNode::onRegisterSceneNode() {
    const float strength = ShadowStrength();
    if (mesh) {
        if (ShadowProjectionEnabled() && strength > 0.0f) {
            glitch::video::IVideoDriver* driver = sceneManager->driver;
            if (driver != nullptr) {
                const std::uint32_t count = mesh->getMeshBufferCount();
                for (std::uint32_t i = 0; i != count; ++i) {
                    auto buffer = mesh->getMeshBuffer(i);
                    if (buffer) {
                        buffer.reset();
                        const std::int32_t result = mesh->onPrepareBufferForRendering(0, driver, i);
                        if (result == 4 || result == 16) {
                            sceneManager->registerNodeForRendering(this, m_shadowMaterial, reinterpret_cast<void*>(static_cast<std::uintptr_t>(i + 1)),
                                                                   glitch::scene::ESNRP_SHADOW_MESH, nullptr, 0x7fffffff);
                        } else if (result == 5) {
                            (void)mesh->getBoundingBox();  // mesh vtable +0x24, the same call CMeshSceneNode::onRegisterSceneNode makes for result 5
                        }
                    }
                }
            }
        }
    }
    return 1;
}

// 0x3607a0 _ZN26ShadowSkinnedMeshSceneNode10renderMeshEPv
// `context` is the 1-based buffer index. Draws the buffer with the shadow material and its vertex map under this node's
// transformation; a buffer the mesh prepared for rendering (step 1, or already flagged skinned) is released again afterwards.
// The original returns the buffer pointer left in its first register; nobody reads it.
void ShadowSkinnedMeshSceneNode::renderMesh(void* context) {
    glitch::video::IVideoDriver* driver = sceneManager->driver;
    if (!mesh || driver == nullptr || context == nullptr) {
        return;
    }
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(context)) - 1;
    auto buffer = mesh->getMeshBuffer(index);
    if (!buffer) {
        return;
    }
    bool release;
    if ((mesh->bufferFlags & (1u << (index & 0x1f))) != 0) {
        release = false;
    } else {
        release = (mesh->onPrepareBufferForRendering(1, driver, index) & 4) != 0;
    }
    boost::intrusive_ptr<glitch::video::CMaterial> material = m_shadowMaterial;
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> map = unk_19c;
    driver->setTransform(1, getAbsoluteTransformation());
    driver->setMaterial(material, map);
    driver->m_stateE8 = nullptr;
    driver->drawMeshBuffer(buffer);
    if (release) {
        mesh->releaseProcessBuffer(driver, index);
    }
}

// 0x360948 _ZN26ShadowSkinnedMeshSceneNode6renderEPv
// With the projection switch on and a strength of at least 0.0001: the shadow transformation is refreshed, the mesh's first
// material is replaced by the shadow material, the buffer is drawn and the first material of the mesh is put back.
void ShadowSkinnedMeshSceneNode::render(void* context) {
    if (ShadowProjectionEnabled()) {
        if (ShadowStrength() >= 0.0001f) {
            UpdateShadow();
            mesh->setMaterial(0, m_shadowMaterial, unk_19c);
            renderMesh(context);
            mesh->setMaterial(0, unk_180[0], unk_18c[0]);
        }
    }
}

// 0x361b54 _ZN26ShadowSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
// 0x361f24 (C2, VTT form) is compiler-generated from this one. The followed node is stored first. The effect "GL_ShadowProjection-fx"
// comes from the database "gl_shadowprojection.bdae" (default factory) built on the device's video driver; the shadow material
// "SH_SHADOW_SKINNED" is allocated on it (technique byte cleared) with a vertex map over the material's renderer. The two vectors
// copy the material and the vertex map of every mesh buffer, so render can put them back.
ShadowSkinnedMeshSceneNode::ShadowSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> meshArg,
                                                       const glitch::scene::ISceneNode* node)
    : BaseMeshSceneNode<glitch::collada::CSkinnedMeshSceneNode>(meshArg), unk_1a0(node) {
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::collada::CColladaDatabase database("gl_shadowprojection.bdae", &glitch::collada::CColladaDatabase::DefaultFactory);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer(database.constructEffect(driver, "GL_ShadowProjection-fx", nullptr));

    const std::uint32_t count = mesh->getMeshBufferCount();
    m_shadowMaterial = glitch::video::CMaterial::allocate(renderer, "SH_SHADOW_SKINNED", 0);
    m_shadowMaterial->m_technique = 0;
    unk_19c = glitch::video::CMaterialVertexAttributeMap::allocate(m_shadowMaterial->m_renderer);

    unk_180.resize(count);
    for (std::uint32_t i = 0; i < count; ++i) {
        unk_180[i] = mesh->getMaterial(i);
    }
    unk_18c.resize(count);
    for (std::uint32_t i = 0; i < count; ++i) {
        unk_18c[i] = mesh->getMaterialVertexAttributeMap(i);
    }
}

// 0x360b7c _ZN26ShadowSkinnedMeshSceneNodeD1Ev
// 0x360c60 (D0, deleting) and 0x360c7c (D2, VTT form) are compiler-generated from this one. The members drop the shadow vertex map,
// the shadow material and the two vectors; the base destructor follows.
ShadowSkinnedMeshSceneNode::~ShadowSkinnedMeshSceneNode() {}
