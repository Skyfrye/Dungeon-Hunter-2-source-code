// Batch g1-game-world-SceneManager-9fc3ac-0: twenty SceneManager functions (part 1 of the class). Declarations come from
// dh2/SceneManager.hpp.
//
// Reconstructed (eight): both SearchByType and both SearchByName overloads, DisableFog, DBG_PrintNode, ForceRegister and
// setSceneNodeCustomRenderPass. They use only the scene-tree API (CSceneManager, ISceneNode) and the new fog flag.
//
// Partial (twelve). The blockers, in the order they appear in this file:
//   - Engine classes this translation unit can see. The scene headers that SceneManager.hpp includes declare stand-ins for
//     glitch::video::IVideoDriver (empty), CMaterial and CMaterialRenderer (reference count only): glitch-core-io/deps/
//     glitch_core_objects.hpp and glitch-scene-collada-gui/deps/video_stand_ins.hpp. The canonical headers in glitch-video/
//     (material.hpp, material_renderer.hpp, video_driver.hpp) redefine the same classes, so they cannot be included here.
//     The members and methods the bodies need are listed as layout requests in the ledger notes.
//   - Parameter values. The typed IMaterialParameters setParameter<T> and getParameter<T> templates are declared in
//     glitch-video/material_parameters_typed.hpp but are not defined: the mixin integration is not done.
//   - AddNodeToMap calls OptimizeStatic(node), a free function with no declaration in this tree.
//   - The constructor builds m_lightSetManager (LightSetManager::LightSetManager, +0x294) as a member. The base call is reproduced from the
//     constructor's disassembly: the mesh cache argument is null.

#include "dh2/SceneManager.hpp"

#include <cmath>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "core-platform/w7_global_01.hpp"
#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/global_parameter_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_driver.hpp"

namespace {
// The text of the material's shared-string name (CMaterial +0x1c, text at +4). An unnamed material gives the empty string; the
// original passes the null pointer on to its string calls here.
const char* MaterialName(const glitch::video::CMaterial& material) {
    return material.m_hasName ? material.m_nameText.c_str() : "";
}
}  // namespace

// 0x350e5c _ZN12SceneManager12SearchByTypeEPN6glitch5scene10ISceneNodeERSt6vectorIS3_NS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEENS1_17E_SCENE_NODE_TYPEE
// Appends the nodes of the given type below root to out. The original makes a virtual call through vptr+0x20, which is
// CSceneManager::getSceneNodesFromType(type, out, root). Nothing happens without a root.
void SceneManager::SearchByType(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                                std::uint32_t type) {
    if (root) {
        getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(type), out, root);
    }
}

// 0x350e80 _ZN12SceneManager10DisableFogEPN6glitch5scene10ISceneNodeE
// Clears the fog flag at +0x432. The node argument is not read.
void SceneManager::DisableFog(glitch::scene::ISceneNode* node) {
    (void)node;
    m_lightSetManager.m_fogEnabled = false;
}

// 0x350e8c _ZN12SceneManager13DBG_PrintNodeEPN6glitch5scene10ISceneNodeEbj
// Walks the children of node, recursively, when verbose is set. The original has no print call in this build, so only the
// walk remains.
void SceneManager::DBG_PrintNode(glitch::scene::ISceneNode* node, bool verbose, std::uint32_t depth) {
    if (!node || !verbose) {
        return;
    }
    for (glitch::scene::ISceneNode* child : node->getChildren()) {
        DBG_PrintNode(child, true, depth + 1);
    }
}

// 0x350ee0 _ZN12SceneManager13ForceRegisterEv
// Sets m_forceRegister and the base class visibility-changed byte (CSceneManager +0x289).
void SceneManager::ForceRegister() {
    m_forceRegister = true;
    visibilityChanged = true;
}

// 0x350ef0 _ZN12SceneManager28setSceneNodeCustomRenderPassE31E_SCENE_NODE_CUSTOM_RENDER_PASS
// Stores the new custom render pass and returns the previous one.
std::uint32_t SceneManager::setSceneNodeCustomRenderPass(std::uint32_t pass) {
    const std::uint32_t previous = m_customRenderPass;
    m_customRenderPass = pass;
    return previous;
}

// 0x352154 _ZN12SceneManager14DBG_DrawCircleERK7Point2DIfEffRKN6glitch5video6SColorE
// Sixteen segments of 22.5 degrees at height z, radius in the XY plane. The original keeps (cos, sin) of the previous and the
// current point. The first previous point is angle 0, and the first current point is 22.5 degrees, stored as the constants
// 0.92388 and 0.38268. After each segment the next current point is cosf and sinf of the accumulated angle plus one step.
// Each segment is drawn with the driver's draw3DLine (vptr+0x1c) with the colour packed as little-endian bytes.
void SceneManager::DBG_DrawCircle(const Point2D<float>& center, float z, float radius,
                                  const glitch::video::SColor& color) {
    glitch::video::IVideoDriver* videoDriver = driver;     // +0x14
    float prevSin = 0.0f;
    float curSin = 0.38268f;
    float curCos = 0.92388f;
    float prevCos = 1.0f;
    float angle = 0.0f;
    for (int i = 0; i < 16;) {
        const glitch::core::vector3d<float> from{center.X + radius * prevCos, center.Y + radius * prevSin, z};
        angle = angle + 0.3927f;
        const glitch::core::vector3d<float> to{center.X + radius * curCos, center.Y + radius * curSin, z};
        ++i;
        videoDriver->draw3DLine(from, to, color);
        if (i == 16) {
            break;
        }
        const float nextCos = cosf(angle + 0.3927f);
        const float nextSin = sinf(angle + 0.3927f);
        prevSin = curSin;
        prevCos = curCos;
        curSin = nextSin;
        curCos = nextCos;
    }
}

// 0x3522f8 _ZN12SceneManager9UpdateFogEffRK7Point3DIfE
// When the fog flag (+0x432) is set, stores {start, end} as a vector2d<float> at element 0 of the global parameter FogColor0 + 2
// (the id at IVideoDriver +0xfa plus two) on the driver's global parameter manager (IVideoDriver +0xe4). The position is not read.
void SceneManager::UpdateFog(float start, float end, const Point3D<float>& position) {
    (void)position;
    if (m_lightSetManager.m_fogEnabled) {
        glitch::video::IVideoDriver* videoDriver = driver;   // +0x14
        const glitch::core::vector2d<float> range{start, end};
        videoDriver->m_globalParameters->setParameter<glitch::core::vector2d<float>>(
            static_cast<std::uint16_t>(videoDriver->m_fogColorIds[0] + 2), 0u, range);
    }
}

// 0x35233c _ZN12SceneManager9EnableFogEffRK7Point3DIfEPN6glitch5scene10ISceneNodeE
// Sets the fog flag, stores {start, end} at the global parameter FogColor0 + 2 and the colour at FogColor0 (both element 0,
// through the typed global setter). The colour bytes are (uint8)(uint32) of color.X, color.Y, color.Z, and 0. The node is not read.
void SceneManager::EnableFog(float start, float end, const Point3D<float>& color,
                             glitch::scene::ISceneNode* node) {
    (void)node;
    glitch::video::IVideoDriver* videoDriver = driver;   // +0x14
    const glitch::core::vector2d<float> range{start, end};
    m_lightSetManager.m_fogEnabled = true;                // +0x432
    videoDriver->m_globalParameters->setParameter<glitch::core::vector2d<float>>(
        static_cast<std::uint16_t>(videoDriver->m_fogColorIds[0] + 2), 0u, range);
    const std::uint8_t r = static_cast<std::uint8_t>(static_cast<std::uint32_t>(color.X));
    const std::uint8_t g = static_cast<std::uint8_t>(static_cast<std::uint32_t>(color.Y));
    const std::uint8_t b = static_cast<std::uint8_t>(static_cast<std::uint32_t>(color.Z));
    glitch::video::SColor fogColor;
    fogColor.color = static_cast<std::uint32_t>(r) | (static_cast<std::uint32_t>(g) << 8) | (static_cast<std::uint32_t>(b) << 16);   // alpha byte 0
    videoDriver->m_globalParameters->setParameter<glitch::video::SColor>(videoDriver->m_fogColorIds[0], 0u, fogColor);
}

// 0x3523c4 _ZN12SceneManager12SetCustomFogERN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEES9_S9_
// Looks up fogDirectionMask, fogCameraMask and fogCameraOffset on the material's renderer (CMaterialRenderer::getParameterID)
// and stores a, b and c into them (setParameter<vector3d<float>>, element 0), each when its ID is not 0xFFFF.
void SceneManager::SetCustomFog(boost::intrusive_ptr<glitch::video::CMaterial>& material,
                                glitch::core::vector3d<float> a, glitch::core::vector3d<float> b,
                                glitch::core::vector3d<float> c) {
    const std::uint16_t directionMask = material->m_renderer->getParameterID("fogDirectionMask", 0);   // +0x04 renderer
    const std::uint16_t cameraMask = material->m_renderer->getParameterID("fogCameraMask", 0);
    const std::uint16_t cameraOffset = material->m_renderer->getParameterID("fogCameraOffset", 0);
    if (directionMask != 0xFFFF) {
        material->parameters.setParameter<glitch::core::vector3d<float>>(directionMask, 0u, a);
    }
    if (cameraMask != 0xFFFF) {
        material->parameters.setParameter<glitch::core::vector3d<float>>(cameraMask, 0u, b);
    }
    if (cameraOffset != 0xFFFF) {
        material->parameters.setParameter<glitch::core::vector3d<float>>(cameraOffset, 0u, c);
    }
}

// 0x3524a0 _ZN12SceneManager12AddNodeToMapEPN6glitch5scene10ISceneNodeE
// On first use it creates the node-map root (CEmptySceneNode(-1)), adds it to the root node, drops the creator's reference, and
// hides it (setVisible(false), vptr+0x48). The node gains a reference. A node that has a parent is moved to its absolute position
// (setPosition, vptr+0xa4) and removed from its parent (remove, vptr+0x68). OptimizeStatic(node) runs, then the node is added to
// the map root (addChild, vptr+0x5c), and the reference taken above is dropped.
void SceneManager::AddNodeToMap(glitch::scene::ISceneNode* node) {
    if (!m_nodeMapRoot) {
        m_nodeMapRoot = new glitch::scene::CEmptySceneNode(-1);
        rootNode->addChild(m_nodeMapRoot);
        m_nodeMapRoot->drop();
        m_nodeMapRoot->setVisible(false);
    }
    ++node->referenceCounter;
    if (node->getParent()) {
        node->setPosition(node->getAbsolutePosition());
        node->remove();
    }
    OptimizeStatic(node);
    m_nodeMapRoot->addChild(node);
    node->drop();
}

// 0x3525b4 _ZN12SceneManager18SetMaterialTextureEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEES5_
// Looks up Diffuse on the texture material's renderer and on the target's. When neither is 0xFFFF, reads the texture material's
// Diffuse texture and, when it is non-null, stores it into the target's Diffuse.
void SceneManager::SetMaterialTexture(boost::intrusive_ptr<glitch::video::CMaterial> target,
                                      boost::intrusive_ptr<glitch::video::CMaterial> texture) {
    const std::uint16_t textureId = texture->m_renderer->getParameterID("Diffuse", 0);
    const std::uint16_t targetId = target->m_renderer->getParameterID("Diffuse", 0);
    if (targetId != 0xFFFF && textureId != 0xFFFF) {
        boost::intrusive_ptr<glitch::video::ITexture> value;
        texture->parameters.getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(textureId, 0u, value);
        if (value) {
            target->parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(targetId, 0u, value);
        }
    }
}

// 0x352668 _ZN12SceneManager34SetShadowProjectionMaterialEffectsEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEEff
// Applies only to a material whose renderer name starts with GL_ShadowProjection (renderer +0x08) and whose material name
// (shared-string text, +0x1c) starts with SH_. Stores the colour (when X is above -0.5) into Object_Color, a into Object_Alpha
// (when above -0.5) and b into Shadow_Alpha (when above -0.5), each only when its ID is not 0xFFFF.
void SceneManager::SetShadowProjectionMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial> material,
                                                      glitch::core::vector3d<float> color, float a, float b) {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    if (!std::strncmp(renderer->m_name, "GL_ShadowProjection", 19)) {
        const char* name = MaterialName(*material);
        if (!std::strncmp(name, "SH_", 3)) {
            const std::uint16_t colorId = material->m_renderer->getParameterID("Object_Color", 0);
            const std::uint16_t alphaId = material->m_renderer->getParameterID("Object_Alpha", 0);
            const std::uint16_t shadowId = material->m_renderer->getParameterID("Shadow_Alpha", 0);
            if (colorId != 0xFFFF && color.X > -0.5) {
                material->parameters.setParameter<glitch::core::vector3d<float>>(colorId, 0u, color);
            }
            if (alphaId != 0xFFFF && a > -0.5) {
                material->parameters.setParameter<float>(alphaId, 0u, a);
            }
            if (shadowId != 0xFFFF && b > -0.5) {
                material->parameters.setParameter<float>(shadowId, 0u, b);
            }
        }
    }
}

// 0x3527fc _ZN12SceneManager18SetMaterialEffectsEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEENS2_4core8vector3dIfEEff
// Applies when the renderer name starts with GL_Diffuse, GL_ColorEffects or GL_Xray, and the material name is longer than two
// characters and starts with GL_, CE_ or XR_. Stores the colour (when X is above -0.5) into Object_Color, a into
// Object_Saturation (when above -0.5) and b into Object_Alpha (when above -0.5), each only when its ID is not 0xFFFF.
void SceneManager::SetMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial> material,
                                      glitch::core::vector3d<float> color, float a, float b) {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    const char* rendererName = renderer->m_name;
    if (!std::strncmp(rendererName, "GL_Diffuse", 10) || !std::strncmp(rendererName, "GL_ColorEffects", 15) ||
        !std::strncmp(rendererName, "GL_Xray", 7)) {
        const char* name = MaterialName(*material);
        if (std::strlen(name) > 2 &&
            (!std::strncmp(name, "GL_", 3) || !std::strncmp(name, "CE_", 3) || !std::strncmp(name, "XR_", 3))) {
            const std::uint16_t colorId = material->m_renderer->getParameterID("Object_Color", 0);
            const std::uint16_t saturationId = material->m_renderer->getParameterID("Object_Saturation", 0);
            const std::uint16_t alphaId = material->m_renderer->getParameterID("Object_Alpha", 0);
            if (colorId != 0xFFFF && color.X > -0.5) {
                material->parameters.setParameter<glitch::core::vector3d<float>>(colorId, 0u, color);
            }
            if (saturationId != 0xFFFF && a > -0.5) {
                material->parameters.setParameter<float>(saturationId, 0u, a);
            }
            if (alphaId != 0xFFFF && b > -0.5) {
                material->parameters.setParameter<float>(alphaId, 0u, b);
            }
        }
    }
}

// 0x352a2c _ZN12SceneManager15ChangeTechniqueEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEEPKc
// Takes the material's renderer. A null name, an unknown technique (getTechniqueID returns 255) or the technique that is already
// selected (CMaterial +0x08) gives false; otherwise the new ID is stored at CMaterial +0x08 and the result is true.
bool SceneManager::ChangeTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, const char* technique) {
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    if (technique) {
        const int id = renderer->getTechniqueID(technique);
        if (id != 255 && material->m_technique != id) {
            material->m_technique = static_cast<std::uint8_t>(id);
            return true;
        }
    }
    return false;
}

// 0x352aa4 _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPFvS3_ERKSsb
// Calls visit on every node below root whose name matches name: a prefix match of name's length when flag is set, and an
// exact match otherwise. Matching nodes are visited before their children. Does nothing when visit or root is null.
void SceneManager::SearchByName(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                                const std::string& name, bool flag) {
    if (!visit || !root) {
        return;
    }
    const bool matched = flag ? std::strncmp(root->getName(), name.data(), name.size()) == 0
                              : std::strcmp(root->getName(), name.c_str()) == 0;
    if (matched) {
        visit(root);
    }
    for (glitch::scene::ISceneNode* child : root->getChildren()) {
        SearchByName(child, visit, name, flag);
    }
}

// 0x352b74 _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeERKSsb
// Returns the first node below root, in depth-first order with each node before its children, whose name matches name (a
// prefix match of name's length when flag is set, an exact match otherwise). Returns null when nothing matches or root is
// null.
glitch::scene::ISceneNode* SceneManager::SearchByName(glitch::scene::ISceneNode* root, const std::string& name,
                                                      bool flag) {
    if (!root) {
        return nullptr;
    }
    const bool matched = flag ? std::strncmp(root->getName(), name.data(), name.size()) == 0
                              : std::strcmp(root->getName(), name.c_str()) == 0;
    if (matched) {
        return root;
    }
    for (glitch::scene::ISceneNode* child : root->getChildren()) {
        if (glitch::scene::ISceneNode* found = SearchByName(child, name, flag)) {
            return found;
        }
    }
    return nullptr;
}

// 0x359fac _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeERSt6vectorIS3_NS0_4core10SAllocatorIS3_LNS0_6memory13E_MEMORY_HINTE0EEEEPKcb
// The char* form of the collecting search: with a null root or a null name nothing happens, otherwise the name becomes a std::string
// and the std::string overload (0x3586ac) runs.
void SceneManager::SearchByName(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                                const char* name, bool flag) {
    if (name == nullptr || root == nullptr) {
        return;
    }
    SearchByName(root, out, std::string(name), flag);
}

// 0x35a044 _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPFvS3_EPKcb
// The char* form of the visiting search: with a null visit, root or name nothing happens, otherwise the std::string overload
// (0x352aa4) runs.
void SceneManager::SearchByName(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                                const char* name, bool flag) {
    if (visit == nullptr || root == nullptr || name == nullptr) {
        return;
    }
    SearchByName(root, visit, std::string(name), flag);
}

// 0x35a0e4 _ZN12SceneManager12SearchByNameEPN6glitch5scene10ISceneNodeEPKcb
// The char* form of the first-match search: null for a null root or a null name, otherwise the result of the std::string overload
// (0x352b74).
glitch::scene::ISceneNode* SceneManager::SearchByName(glitch::scene::ISceneNode* root, const char* name, bool flag) {
    if (name == nullptr || root == nullptr) {
        return nullptr;
    }
    return SearchByName(root, std::string(name), flag);
}

// 0x352c3c _ZN12SceneManagerC1EPN6glitch5video12IVideoDriverEN5boost13intrusive_ptrINS0_2io11IFileSystemEEEPNS0_3gui14ICursorControlEPNS9_15IGUIEnvironmentE
// The base call is reproduced from the disassembly: driver, the file system by reference, the cursor control, a null IMeshCache
// (the constant 0 is stored as the fourth argument) and the GUI environment. m_lightSetManager (+0x294) runs
// LightSetManager::LightSetManager as a member. The vptr stores are emitted by the compiler.
SceneManager::SceneManager(glitch::video::IVideoDriver* driver, boost::intrusive_ptr<glitch::io::IFileSystem> fileSystem,
                           glitch::gui::ICursorControl* cursor, glitch::gui::IGUIEnvironment* gui)
    : glitch::scene::CSceneManager(driver, fileSystem, cursor, nullptr, gui) {
    m_nodeMapRoot = nullptr;                              // +0x28c
    m_screenshotRequested = false;                        // +0x290
    m_registerInterval = 4;                               // +0x444
    unk_45c = 0;                                          // +0x45c
    unk_460 = 1.0f;                                       // +0x460
    m_skyBox = nullptr;                                    // +0x438
    unk_43c = false;                                      // +0x43c
    m_registerCounter = 0;                                // +0x440
    m_forceRegister = false;                              // +0x448
    m_loadedScenes.clear();                               // +0x44c .. +0x457
    unk_458 = 0;                                          // +0x458
    m_gameNodes464.clear();                               // +0x464 .. +0x46f
    m_gameNodes470.clear();                               // +0x470 .. +0x47b
    m_batchBegin = nullptr;                               // +0x47c
    m_batchEnd = nullptr;                                 // +0x480
    m_batchCap = nullptr;                                 // +0x484
    m_secondaryRefCount = 1;                              // +0x490
}

// 0x352d4c _ZN12SceneManagerC2EPN6glitch5video12IVideoDriverEN5boost13intrusive_ptrINS0_2io11IFileSystemEEEPNS0_3gui14ICursorControlEPNS9_15IGUIEnvironmentE
// Base-object constructor: same body as C1 (0x352c3c). It takes the VTT of the virtual base and stores the vptrs from it, which the compiler
// emits; one definition serves both.

// 0x352fa8 _ZN12SceneManager17AutoLoadNormalMapEN5boost13intrusive_ptrIN6glitch5video9CMaterialEEE
// Only a material whose name starts with GL_, or which is longer than five characters and starts with DV, is handled.
// It looks up Diffuse and Normal. When both exist, the original returns if the material already has a Normal texture, and
// returns if it has no Diffuse texture. It then takes the Diffuse texture's name and replaces its suffix. The first of
// _diffuse.tga, _dif.tga and .tga found becomes _autonm.tga (an unmatched name throws out_of_range, as the std::string
// replace does at npos). It looks the new name up in the device's texture manager (device +0x10 driver, +0xe0). When the
// texture is found, the material name gets an N (byte +7 for GL_, byte +4 for DV) and the texture is stored at Normal.
void SceneManager::AutoLoadNormalMap(boost::intrusive_ptr<glitch::video::CMaterial> material) {
    glitch::video::CMaterial& mat = *material;
    const char* name = MaterialName(mat);                       // shared-string text, +0x1c
    const bool glName = !std::strncmp(name, "GL_", 3);
    if (!glName && !(std::strlen(name) > 5 && name[0] == 'D' && name[1] == 'V')) {
        return;
    }
    const std::uint16_t diffuseId = mat.m_renderer->getParameterID("Diffuse", 0);
    const std::uint16_t normalId = mat.m_renderer->getParameterID("Normal", 0);
    if (normalId == 0xFFFF || diffuseId == 0xFFFF) {
        return;
    }
    boost::intrusive_ptr<glitch::video::ITexture> normal;
    mat.parameters.getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(normalId, 0u, normal);
    if (normal) {
        return;
    }
    boost::intrusive_ptr<glitch::video::ITexture> diffuse;
    mat.parameters.getParameter<boost::intrusive_ptr<glitch::video::ITexture>>(diffuseId, 0u, diffuse);
    if (!diffuse) {
        return;
    }
    std::string textureName = diffuse->m_name;                   // ITexture +0x08
    std::size_t position = textureName.find("_diffuse.tga");
    std::size_t length = 12;
    if (position == std::string::npos) {
        position = textureName.find("_dif.tga");
        length = 8;
        if (position == std::string::npos) {
            position = textureName.find(".tga");
            length = 4;
        }
    }
    textureName.replace(position, length, "_autonm.tga");         // throws std::out_of_range at npos, as the original does
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    normal = device->videoDriver->m_textureManager->getTexture(textureName.c_str(), nullptr);   // IVideoDriver +0xe0
    if (normal) {
        if (glName) {
            if (mat.m_nameText.size() > 7) {
                mat.m_nameText[7] = 'N';
            }
        } else if (std::strlen(name) > 5 && name[0] == 'D' && name[1] == 'V') {
            mat.m_nameText[4] = 'N';
        }
        mat.parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(normalId, 0u, normal);
    }
}

// 0x3535d0 _ZN12SceneManager12SearchByTypeEPN6glitch5scene10ISceneNodeEPFvS3_ENS1_17E_SCENE_NODE_TYPEE
// Calls visit on every node of the given type below root. The original collects the nodes into a temporary vector with
// getSceneNodesFromType (vptr+0x20) and visits them in order. Does nothing when visit or root is null.
void SceneManager::SearchByType(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                                std::uint32_t type) {
    if (!visit || !root) {
        return;
    }
    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    getSceneNodesFromType(static_cast<glitch::scene::E_SCENE_NODE_TYPE>(type), nodes, root);
    for (glitch::scene::ISceneNode* node : nodes) {
        visit(node);
    }
}
