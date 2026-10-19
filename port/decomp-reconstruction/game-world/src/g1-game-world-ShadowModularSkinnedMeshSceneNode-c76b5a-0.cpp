// Batch g1-game-world-ShadowModularSkinnedMeshSceneNode-c76b5a-0: the ShadowModularSkinnedMeshSceneNode functions (two
// bounding-box forwards, UpdateShadow, onRegisterSceneNode, renderMesh, render, regenerateShadowMaterial, the constructors and
// the destructors). Declarations come from dh2/ShadowModularSkinnedMeshSceneNode.hpp.
//
// The VTT forms (C2 0x361ab0, D2 0x360aa8) and the deleting destructor (D0 0x3602cc) are compiler-generated from the complete forms.
// The shadow of a modular skin is drawn with one shadow material per distinct material of the mesh buffers: unk_198 / unk_1a4 hold
// the distinct materials and their vertex maps, unk_180 maps a buffer to its entry, unk_18c maps a module to its entry, and
// unk_1b0 / unk_1bc hold the shadow replacements.

#include "dh2/ShadowModularSkinnedMeshSceneNode.hpp"

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
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"

// The base constructor and destructor are explicit specializations defined in
// g1-game-world-BaseMeshSceneNode-fb9ec3-0.cpp. They are declared here so this file refers to them as specializations.
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::BaseMeshSceneNode(
        const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);
template <>
BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>::~BaseMeshSceneNode();

namespace {

// The debug switch the three drawing functions test (a literal Hex-Rays drops; the asm names it).
bool ShadowProjectionEnabled() {
    DebugSwitches::GetInstance();  // DebugSwitches::load on first use
    return DebugSwitches::GetInstance()->GetSwitch(std::string("RENDERING_EnableShadowProjection"));
}

// SceneManager +0x418 = m_lightSetManager +0x184: the strength of the shadows of the scene, a float in the word after the light vector.
float ShadowStrength() {
    SceneManager* manager = DeviceSceneManager();
    float strength;
    std::memcpy(&strength, &manager->m_lightSetManager.unk_178[3], sizeof(strength));
    return strength;
}

}  // namespace

// 0x35dcd0 _ZNK33ShadowModularSkinnedMeshSceneNode14getBoundingBoxEv
// Forwards to node1 (its vtable +0x30).
const glitch::core::aabbox3d<float>& ShadowModularSkinnedMeshSceneNode::getBoundingBox() const {
    return unk_1c8->getBoundingBox();
}

// 0x35dcec _ZNK33ShadowModularSkinnedMeshSceneNode25getTransformedBoundingBoxEv
// Forwards to node1 (its vtable +0x34).
const glitch::core::aabbox3d<float>& ShadowModularSkinnedMeshSceneNode::getTransformedBoundingBox() const {
    return unk_1c8->getTransformedBoundingBox();
}

// 0x35f348 _ZN33ShadowModularSkinnedMeshSceneNode12UpdateShadowEv
// As ShadowSkinnedMeshSceneNode::UpdateShadow, but it follows node2: the shadow plane is z = 0, S is the projection matrix of the
// light vector of the scene (SceneManager +0x400) and the transformation of the node becomes T(P + (10, -10, 10)) * S * I * T(-P).
void ShadowModularSkinnedMeshSceneNode::UpdateShadow() {
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

    const glitch::core::vector3d<float> position = unk_1cc->getAbsolutePosition();

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

// 0x35f530 _ZN33ShadowModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
// The shadow transformation is refreshed first. With a mesh, the projection switch on and a positive strength, every buffer the mesh
// prepares for rendering (step 0) with the results 4 and 16 registers this node in the shadow-mesh pass (6) under the 1-based
// buffer index, with the shadow material of the distinct material of the buffer; result 5 makes the mesh refresh its box. Returns 1.
int ShadowModularSkinnedMeshSceneNode::onRegisterSceneNode() {
    UpdateShadow();
    const float strength = ShadowStrength();
    if (mesh) {
        if (ShadowProjectionEnabled() && strength > 0.0f) {
            glitch::video::IVideoDriver* driver = sceneManager->driver;
            if (driver != nullptr) {
                const std::uint32_t count = mesh->getMeshBufferCount();
                for (std::uint32_t i = 0; i < count; ++i) {
                    auto buffer = mesh->getMeshBuffer(i);
                    if (buffer) {
                        buffer.reset();
                        boost::intrusive_ptr<glitch::video::CMaterial> material = unk_1b0[unk_180[i]];
                        const std::int32_t result = mesh->onPrepareBufferForRendering(0, driver, i);
                        if (result == 4 || result == 16) {
                            sceneManager->registerNodeForRendering(this, material, reinterpret_cast<void*>(static_cast<std::uintptr_t>(i + 1)),
                                                                   glitch::scene::ESNRP_SHADOW_MESH, nullptr, 0x7fffffff);
                        } else if (result == 5) {
                            (void)mesh->getBoundingBox();  // mesh vtable +0x24, the refresh CMeshSceneNode::onRegisterSceneNode makes for result 5
                        }
                    }
                }
            }
        }
    }
    return 1;
}

// 0x3602e8 _ZN33ShadowModularSkinnedMeshSceneNode10renderMeshEPv
// `context` is the 1-based buffer index. Draws the buffer with the shadow material and vertex map of its distinct material under
// the transformation of this node; a buffer the mesh prepared for rendering (step 1, unless it is flagged skinned) is released after.
// The original returns the buffer pointer left in its first register; nobody reads it.
void ShadowModularSkinnedMeshSceneNode::renderMesh(void* context) {
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
    boost::intrusive_ptr<glitch::video::CMaterial> material = unk_1b0[unk_180[index]];
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> map = unk_1bc[unk_180[index]];
    driver->setTransform(1, getAbsoluteTransformation());
    driver->setMaterial(material, map);
    driver->m_stateE8 = nullptr;
    driver->drawMeshBuffer(buffer);
    if (release) {
        mesh->releaseProcessBuffer(driver, index);
    }
}

// 0x3604a8 _ZN33ShadowModularSkinnedMeshSceneNode6renderEPv
// With the projection switch on and a strength of at least 0.0001: the shadow transformation is refreshed, every buffer of the mesh
// and the first material of every module get their shadow material, the buffer is drawn, and the original materials are put back.
void ShadowModularSkinnedMeshSceneNode::render(void* context) {
    if (!ShadowProjectionEnabled()) {
        return;
    }
    if (!(ShadowStrength() >= 0.0001f)) {
        return;
    }
    UpdateShadow();
    auto* modular = static_cast<glitch::collada::CModularSkinnedMesh*>(mesh.get());
    const std::uint32_t buffers = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < buffers; ++i) {
        mesh->setMaterial(i, unk_1b0[unk_180[i]], unk_1bc[unk_180[i]]);
    }
    const std::size_t modules = modular->modules.size();
    for (std::size_t m = 0; m < modules; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            module->setMaterial(0, unk_1b0[unk_18c[m]], unk_1bc[unk_18c[m]]);
        }
    }
    renderMesh(context);
    const std::uint32_t after = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < after; ++i) {
        mesh->setMaterial(i, unk_198[unk_180[i]], unk_1a4[unk_180[i]]);
    }
    for (std::size_t m = 0; m < modules; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            module->setMaterial(0, unk_198[unk_18c[m]], unk_1a4[unk_18c[m]]);
        }
    }
}

// 0x361298 _ZN33ShadowModularSkinnedMeshSceneNode22regenerateShadowMaterialEv
// Rebuilds the tables from the mesh. unk_198 / unk_1a4 receive the distinct materials of the mesh buffers (and their vertex maps)
// in buffer order, unk_180[i] names the entry of buffer i, and the list is trimmed to the entries in use. unk_18c[m] names the entry
// whose material equals the first material of module m. For each entry a shadow material "SH_SHADOW_SKINNED_MODULAR" of the effect
// "GL_ShadowProjection-fx" (technique 3) is allocated, with a vertex map over its renderer when the entry has a vertex map.
void ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial() {
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::collada::CColladaDatabase database("gl_shadowprojection.bdae", &glitch::collada::CColladaDatabase::DefaultFactory);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer(database.constructEffect(driver, "GL_ShadowProjection-fx", nullptr));

    auto* modular = static_cast<glitch::collada::CModularSkinnedMesh*>(mesh.get());
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    const std::size_t moduleCount = modular->modules.size();

    unk_198.resize(bufferCount);
    unk_1a4.resize(bufferCount);
    unk_180.resize(bufferCount, 0);
    for (auto& material : unk_198) {
        material.reset();
    }
    for (auto& map : unk_1a4) {
        map.reset();
    }

    const std::size_t slots = unk_198.size();
    for (std::uint32_t i = 0; i < bufferCount; ++i) {
        for (std::size_t j = 0; j < slots; ++j) {
            if (!unk_198[j]) {
                unk_198[j] = mesh->getMaterial(i);
                unk_1a4[j] = mesh->getMaterialVertexAttributeMap(i);
                unk_180[i] = static_cast<std::uint32_t>(j);
            }
            if (mesh->getMaterial(i).get() == unk_198[j].get()) {
                unk_180[i] = static_cast<std::uint32_t>(j);
                break;
            }
        }
    }

    // Trim to the entries in use: up to the first empty one.
    if (bufferCount != 0) {
        std::size_t used = 0;
        while (used < unk_198.size() && unk_198[used]) {
            ++used;
        }
        if (used != unk_198.size()) {
            unk_198.resize(used);
        }
    }

    const std::size_t distinct = unk_198.size();
    unk_1b0.resize(distinct);
    unk_1bc.resize(distinct);
    unk_18c.resize(moduleCount, 0);
    for (std::size_t m = 0; m < moduleCount; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            for (std::size_t i = 0; i < distinct; ++i) {
                if (module->getMaterial(0).get() == unk_198[i].get()) {
                    unk_18c[m] = static_cast<std::uint32_t>(i);
                }
            }
        }
    }

    for (std::size_t i = 0; i < distinct; ++i) {
        unk_1b0[i].reset();
        unk_1bc[i].reset();
        if (unk_198[i]) {
            unk_1b0[i] = glitch::video::CMaterial::allocate(renderer, "SH_SHADOW_SKINNED_MODULAR", 0);
            unk_1b0[i]->m_technique = 3;
            if (unk_1a4[i]) {
                unk_1bc[i] = glitch::video::CMaterialVertexAttributeMap::allocate(unk_1b0[i]->m_renderer);
            }
        }
    }
}

// 0x3619c8 _ZN33ShadowModularSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeES9_
// 0x361ab0 (C2, VTT form) is compiler-generated from this one. The two nodes are stored, the six tables start empty and
// regenerateShadowMaterial fills them.
ShadowModularSkinnedMeshSceneNode::ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> meshArg,
                                                                     const glitch::scene::ISceneNode* node1,
                                                                     const glitch::scene::ISceneNode* node2)
    : BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>(meshArg), unk_1c8(node1), unk_1cc(node2) {
    regenerateShadowMaterial();
}

// 0x3601fc _ZN33ShadowModularSkinnedMeshSceneNodeD1Ev
// 0x3602cc (D0, deleting) and 0x360aa8 (D2, VTT form) are compiler-generated from this one. The members drop the six tables; the base
// destructor follows.
ShadowModularSkinnedMeshSceneNode::~ShadowModularSkinnedMeshSceneNode() {}
