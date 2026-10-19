// Batch g1-game-world-XrayModularSkinnedMeshSceneNode-7b0f5c-0: the XrayModularSkinnedMeshSceneNode functions (two
// bounding-box forwards, UpdateXray, updateXrayMaterial, renderMesh, render, onRegisterSceneNode, regenerateXrayMaterial, the
// constructors and the destructors). Declarations come from dh2/XrayModularSkinnedMeshSceneNode.hpp.
//
// The VTT forms (C2 0x364254, D2 0x362e1c) and the deleting destructor (D0 0x36393c) are compiler-generated from the complete forms.
// The x-ray copy of a modular skin draws every buffer with an x-ray material (one per distinct material of the mesh buffers). The
// tables are the same as in ShadowModularSkinnedMeshSceneNode: m_bufferMaterialIndex maps a buffer to its distinct material,
// m_nodeMaterialIndex maps a module to its distinct material, m_meshMaterials / m_meshVertexAttributeMaps hold the originals and
// m_xrayMaterials / m_xrayVertexAttributeMaps the x-ray replacements.

#include "dh2/XrayModularSkinnedMeshSceneNode.hpp"

#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
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

// The debug switch the drawing functions test (a literal Hex-Rays drops; the asm names it).
bool XrayEnabled() {
    DebugSwitches::GetInstance();  // DebugSwitches::load on first use
    return DebugSwitches::GetInstance()->GetSwitch(std::string("RENDERING_EnableXray"));
}

// SceneManager +0x488: 10 while the scene manager draws the x-ray custom pass.
constexpr std::uint32_t kXrayCustomPass = 10;

}  // namespace

// 0x362b28 _ZNK31XrayModularSkinnedMeshSceneNode14getBoundingBoxEv
// Forwards to m_sourceNode (its vtable +0x30) and returns the reference it gets back.
const glitch::core::aabbox3d<float>& XrayModularSkinnedMeshSceneNode::getBoundingBox() const {
    return m_sourceNode->getBoundingBox();
}

// 0x362b44 _ZNK31XrayModularSkinnedMeshSceneNode25getTransformedBoundingBoxEv
// The original forwards to m_sourceNode the same way as 0x362b28: it calls vtable +0x30 (getBoundingBox), not +0x34.
const glitch::core::aabbox3d<float>& XrayModularSkinnedMeshSceneNode::getTransformedBoundingBox() const {
    return m_sourceNode->getBoundingBox();
}

// 0x362bc8 _ZN31XrayModularSkinnedMeshSceneNode10UpdateXrayEv
// Sets the identity matrix as the absolute transformation of the node (vtable +0x3c).
void XrayModularSkinnedMeshSceneNode::UpdateXray() {
    glitch::core::CMatrix4<float> identity;
    std::memset(identity.M, 0, sizeof(identity.M));
    identity.M[0] = identity.M[5] = identity.M[10] = identity.M[15] = 1.0f;
    identity.flag = true;
    setAbsoluteTransformation(identity);
}

// 0x362c38 _ZN31XrayModularSkinnedMeshSceneNode18updateXrayMaterialEv
// For every distinct material, the x-ray material takes the texture of the mesh material.
void XrayModularSkinnedMeshSceneNode::updateXrayMaterial() {
    const std::size_t count = m_meshMaterials.size();
    for (std::size_t i = 0; i < count; ++i) {
        DeviceSceneManager()->SetMaterialTexture(m_xrayMaterials[i], m_meshMaterials[i]);
    }
}

// 0x362f08 _ZN31XrayModularSkinnedMeshSceneNode10renderMeshEPvb
// `renderContext` is the 1-based buffer index (null draws nothing); the bool is never read. Draws the buffer with the x-ray
// material and vertex map of its distinct material under the transformation of this node. While the scene manager runs the x-ray
// custom pass (10) the colour mask is off for the draw, and it is switched back on afterwards. A buffer the mesh prepared for
// rendering (step 1, unless it is flagged skinned) is released after the draw. The original returns a leftover register.
void XrayModularSkinnedMeshSceneNode::renderMesh(void* renderContext, bool /*xray*/) {
    glitch::video::IVideoDriver* driver = sceneManager->driver;
    if (!mesh || driver == nullptr || renderContext == nullptr) {
        return;
    }
    const std::uint32_t index = static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(renderContext)) - 1;
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
    boost::intrusive_ptr<glitch::video::CMaterial> material = m_xrayMaterials[m_bufferMaterialIndex[index]];
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> map = m_xrayVertexAttributeMaps[m_bufferMaterialIndex[index]];
    driver->setTransform(1, getAbsoluteTransformation());
    driver->setMaterial(material, map);
    if (DeviceSceneManager()->m_customRenderPass == kXrayCustomPass) {
        driver->setColorMask(false, false, false, false);
    }
    driver->m_stateE8 = nullptr;
    driver->drawMeshBuffer(buffer);
    if (release) {
        mesh->releaseProcessBuffer(driver, index);
    }
    driver->setColorMask(true, true, true, true);
}

// 0x363138 _ZN31XrayModularSkinnedMeshSceneNode6renderEPv
// With the x-ray switch on: the transformation is reset, the x-ray materials get their technique for the pass (in the x-ray custom
// pass (10) flags 1, 1, 1, otherwise 0, 1, 1), every buffer and the first material of every module are switched to the x-ray
// materials, the buffer is drawn, and the original materials are put back.
void XrayModularSkinnedMeshSceneNode::render(void* renderContext) {
    if (!XrayEnabled()) {
        return;
    }
    UpdateXray();
    SceneManager* manager = DeviceSceneManager();
    const bool xrayPass = manager->m_customRenderPass == kXrayCustomPass;
    for (std::size_t i = 0; i < m_xrayMaterials.size(); ++i) {
        manager = DeviceSceneManager();
        manager->ChangeCustomXrayTechnique(m_xrayMaterials[i], xrayPass, true, true);
    }
    auto* modular = static_cast<glitch::collada::CModularSkinnedMesh*>(mesh.get());
    const std::uint32_t buffers = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < buffers; ++i) {
        mesh->setMaterial(i, m_xrayMaterials[m_bufferMaterialIndex[i]], m_xrayVertexAttributeMaps[m_bufferMaterialIndex[i]]);
    }
    const std::size_t modules = modular->modules.size();
    for (std::size_t m = 0; m < modules; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            module->setMaterial(0, m_xrayMaterials[m_nodeMaterialIndex[m]], m_xrayVertexAttributeMaps[m_nodeMaterialIndex[m]]);
        }
    }
    renderMesh(renderContext, false);
    const std::uint32_t after = mesh->getMeshBufferCount();
    for (std::uint32_t i = 0; i < after; ++i) {
        mesh->setMaterial(i, m_meshMaterials[m_bufferMaterialIndex[i]], m_meshVertexAttributeMaps[m_bufferMaterialIndex[i]]);
    }
    for (std::size_t m = 0; m < modules; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            module->setMaterial(0, m_meshMaterials[m_nodeMaterialIndex[m]], m_meshVertexAttributeMaps[m_nodeMaterialIndex[m]]);
        }
    }
}

// 0x363574 _ZN31XrayModularSkinnedMeshSceneNode19onRegisterSceneNodeEv
// With the x-ray switch on: the transformation is reset and, with a mesh, every buffer the mesh prepares for rendering (step 0)
// with the results 4 and 16 is registered with the scene manager of the device in the custom passes 9 and 10 (under the 1-based
// buffer index, with the x-ray material of the buffer); result 5 makes the mesh refresh its box. Returns 1.
int XrayModularSkinnedMeshSceneNode::onRegisterSceneNode() {
    if (XrayEnabled()) {
        UpdateXray();
        if (mesh) {
            if (XrayEnabled()) {
                glitch::video::IVideoDriver* driver = sceneManager->driver;
                if (driver != nullptr) {
                    const std::uint32_t count = mesh->getMeshBufferCount();
                    for (std::uint32_t i = 0; i < count; ++i) {
                        auto buffer = mesh->getMeshBuffer(i);
                        if (buffer) {
                            buffer.reset();
                            boost::intrusive_ptr<glitch::video::CMaterial> material = m_xrayMaterials[m_bufferMaterialIndex[i]];
                            const std::int32_t result = mesh->onPrepareBufferForRendering(0, driver, i);
                            if (result == 4 || result == 16) {
                                void* userData = reinterpret_cast<void*>(static_cast<std::uintptr_t>(i + 1));
                                DeviceSceneManager()->registerNodeForCustomRendering(this, material, userData, 9, nullptr, 0x7fffffff);
                                DeviceSceneManager()->registerNodeForCustomRendering(this, material, userData, 10, nullptr, 0x7fffffff);
                            } else if (result == 5) {
                                (void)mesh->getBoundingBox();  // mesh vtable +0x24, the refresh CMeshSceneNode::onRegisterSceneNode makes for result 5
                            }
                        }
                    }
                }
            }
        }
    }
    return 1;
}

// 0x363958 _ZN31XrayModularSkinnedMeshSceneNode21regenerateXrayMaterialEv
// Empties the four material tables and the buffer index table, then rebuilds them from the mesh exactly as
// ShadowModularSkinnedMeshSceneNode::regenerateShadowMaterial does, with the effect "GL_Xray-fx" of "gl_xray.bdae" and the material
// name "XR_XRAY_SKINNED_MODULAR". Each new x-ray material gets the x-ray technique (ChangeCustomXrayTechnique with all flags set) and,
// when the distinct material has a vertex map, a vertex map over its renderer.
void XrayModularSkinnedMeshSceneNode::regenerateXrayMaterial() {
    m_meshMaterials.clear();
    m_meshVertexAttributeMaps.clear();
    m_bufferMaterialIndex.clear();
    m_xrayMaterials.clear();
    m_xrayVertexAttributeMaps.clear();

    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::collada::CColladaDatabase database("gl_xray.bdae", &glitch::collada::CColladaDatabase::DefaultFactory);
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer(database.constructEffect(driver, "GL_Xray-fx", nullptr));

    auto* modular = static_cast<glitch::collada::CModularSkinnedMesh*>(mesh.get());
    const std::uint32_t bufferCount = mesh->getMeshBufferCount();
    const std::size_t moduleCount = modular->modules.size();

    m_meshMaterials.resize(bufferCount);
    m_meshVertexAttributeMaps.resize(bufferCount);
    m_bufferMaterialIndex.resize(bufferCount, 0);
    for (auto& material : m_meshMaterials) {
        material.reset();
    }
    for (auto& map : m_meshVertexAttributeMaps) {
        map.reset();
    }

    const std::size_t slots = m_meshMaterials.size();
    for (std::uint32_t i = 0; i < bufferCount; ++i) {
        for (std::size_t j = 0; j < slots; ++j) {
            if (!m_meshMaterials[j]) {
                m_meshMaterials[j] = mesh->getMaterial(i);
                m_meshVertexAttributeMaps[j] = mesh->getMaterialVertexAttributeMap(i);
                m_bufferMaterialIndex[i] = static_cast<int>(j);
            }
            if (mesh->getMaterial(i).get() == m_meshMaterials[j].get()) {
                m_bufferMaterialIndex[i] = static_cast<int>(j);
                break;
            }
        }
    }

    // Trim to the entries in use: up to the first empty one.
    if (bufferCount != 0) {
        std::size_t used = 0;
        while (used < m_meshMaterials.size() && m_meshMaterials[used]) {
            ++used;
        }
        if (used != m_meshMaterials.size()) {
            m_meshMaterials.resize(used);
        }
    }

    const std::size_t distinct = m_meshMaterials.size();
    m_xrayMaterials.resize(distinct);
    m_xrayVertexAttributeMaps.resize(distinct);
    m_nodeMaterialIndex.resize(moduleCount, 0);
    for (std::size_t m = 0; m < moduleCount; ++m) {
        boost::intrusive_ptr<glitch::collada::ISkinnedMesh> module = modular->modules[m].mesh;
        if (module) {
            for (std::size_t i = 0; i < distinct; ++i) {
                if (module->getMaterial(0).get() == m_meshMaterials[i].get()) {
                    m_nodeMaterialIndex[m] = static_cast<int>(i);
                }
            }
        }
    }

    for (std::size_t i = 0; i < distinct; ++i) {
        m_xrayMaterials[i].reset();
        m_xrayVertexAttributeMaps[i].reset();
        if (m_meshMaterials[i]) {
            m_xrayMaterials[i] = glitch::video::CMaterial::allocate(renderer, "XR_XRAY_SKINNED_MODULAR", 0);
            DeviceSceneManager()->ChangeCustomXrayTechnique(m_xrayMaterials[i], true, true, true);
            if (m_meshVertexAttributeMaps[i]) {
                m_xrayVertexAttributeMaps[i] = glitch::video::CMaterialVertexAttributeMap::allocate(m_xrayMaterials[i]->m_renderer);
            }
        }
    }
}

// 0x364174 _ZN31XrayModularSkinnedMeshSceneNodeC1EN5boost13intrusive_ptrIN6glitch7collada5IMeshEEEPKNS2_5scene10ISceneNodeE
// 0x364254 (C2, VTT form) is compiler-generated from this one. The source node is stored, the tables start empty and
// regenerateXrayMaterial fills them.
XrayModularSkinnedMeshSceneNode::XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> meshArg,
                                                                 const glitch::scene::ISceneNode* sourceNode)
    : BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode>(meshArg), m_sourceNode(sourceNode) {
    regenerateXrayMaterial();
}

// 0x363848 _ZN31XrayModularSkinnedMeshSceneNodeD1Ev
// 0x36393c (D0, deleting) and 0x362e1c (D2, VTT form) are compiler-generated from this one. The members drop the six tables; the
// base destructor follows.
XrayModularSkinnedMeshSceneNode::~XrayModularSkinnedMeshSceneNode() {}
