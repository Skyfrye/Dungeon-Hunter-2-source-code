// Batch g1-game-world-SceneManager-9fc3ac-1 (part 2 of 3): SceneManager skinned-mesh registration, the material walkers
// (wire frame, mask x-ray, light set, normal map, material effects, material lookup), the technique remapping, the custom
// render list, clear and the destructor. Declarations come from dh2/SceneManager.hpp.
//
// The material bodies use the canonical glitch-video CMaterial and CMaterialRenderer (the stand-in blocker the earlier notes
// named is gone). A material's name is CMaterial::m_nameText (the +0x1c entry's text); a technique name is the shared string at the
// renderer's technique table entry. The pure name logic of the technique remapping is dh2/global/scene_technique_names.hpp.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <limits>
#include <optional>
#include <string>
#include <vector>

#include "dh2/LightBase.hpp"
#include "dh2/SceneManager.hpp"
#include "glitch-core-io/core/memory_hint.hpp"
#include "dh2/Application.hpp"
#include "dh2/global/scene_technique_names.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-shared/shared_string_heap.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

// Engine allocator, declared by hand: core-platform/memory.hpp redefines the glitch_core types that
// glitch-shared/glitch_core.hpp already defines (the game-world sources declare these the same way).
extern int gAssertLevel;
void* GlitchAlloc(unsigned size, glitch::memory::E_MEMORY_HINT hint);
void GlitchFree(void* p);

using glitch::scene::ISceneNode;

namespace {

// SearchByType words of the three node kinds the material walkers visit, searched in this order. They are the fourcc
// words "daem", "daes" and "daeM"; scene_types.hpp does not name them.
constexpr std::uint32_t kMaterialNodeTypes[3] = {0x6d656164u, 0x73656164u, 0x4d656164u};

// Most entries the batch list can hold: the original's 0x3FFFFFFF element limit, restated for 8-byte host pointers
// (GlitchAlloc takes an unsigned byte count).
constexpr std::size_t kMaxBatchEntries = std::numeric_limits<unsigned>::max() / sizeof(void*);

// Every node the material walkers visit: the three searches of the original, appended to one list in order.
glitch::core::svector<ISceneNode*> SearchMaterialNodes(SceneManager& manager, ISceneNode* root) {
    glitch::core::svector<ISceneNode*> nodes;
    for (std::uint32_t type : kMaterialNodeTypes) {
        manager.SearchByType(root, nodes, type);
    }
    return nodes;
}

// Every material of the subtree under node (the scene root when node is null): the three searches of the original collect the
// nodes first, then each node's materials are handed to f one by one.
template <typename F>
void ForEachMaterial(SceneManager& manager, ISceneNode* node, F f) {
    for (ISceneNode* found : SearchMaterialNodes(manager, node != nullptr ? node : manager.rootNode)) {
        const std::uint32_t count = found->getMaterialCount();
        for (std::uint32_t i = 0; i != count; ++i) {
            boost::intrusive_ptr<glitch::video::CMaterial> material = found->getMaterial(i);
            f(material);
        }
    }
}

// The text of the material's shared-string name (CMaterial +0x1c, text at +4); an unnamed material reads as the empty string where
// the original passes null on to its string calls.
const char* MaterialName(const glitch::video::CMaterial& material) {
    return material.m_hasName ? material.m_nameText.c_str() : "";
}

}  // namespace

// 0x353afc SceneManager::registerSkinnedMesh(SkinnedMeshSceneNodeEx*)
// The batch list grows by doubling (1 when empty), as the original does. The count is taken in elements, not bytes.
void SceneManager::registerSkinnedMesh(SkinnedMeshSceneNodeEx* mesh) {
    if (m_batchEnd == m_batchCap) {
        const std::size_t count = static_cast<std::size_t>(m_batchEnd - m_batchBegin);
        const std::size_t capacity = count != 0 ? 2 * count : 1;
        // Past the element limit the original asks for -4 bytes (0xFFFFFFFC), which its allocator refuses.
        const unsigned bytes = capacity > kMaxBatchEntries ? 0xFFFFFFFCu
                                                           : static_cast<unsigned>(capacity * sizeof(void*));
        void** block = static_cast<void**>(GlitchAlloc(bytes, static_cast<glitch::memory::E_MEMORY_HINT>(0)));
        if (count != 0) {
            std::memmove(block, m_batchBegin, count * sizeof(void*));
        }
        block[count] = mesh;
        GlitchFree(m_batchBegin);
        m_batchBegin = block;
        m_batchEnd = block + count + 1;
        m_batchCap = block + capacity;
    } else {
        *m_batchEnd = mesh;
        ++m_batchEnd;
    }
}

// The base declares the same slot as the pure registerSkinnedMesh(void*). The typed overload above is what the original
// stores there, so this forwards to it. Not a ledger row.
void SceneManager::registerSkinnedMesh(void* skinnedMeshNode) {
    registerSkinnedMesh(static_cast<SkinnedMeshSceneNodeEx*>(skinnedMeshNode));
}

// 0x353bac SceneManager::_RegisterAutomacticLights(void)
// The original clears the distance list (CSceneManager +0x48, lightNodes) and appends {light->m_irrLight (LightBase +0x120),
// null user data, index as a double} for each LightBase* in LightSetManager::unk_190 (+0x424 .. +0x428 of this object).
void SceneManager::_RegisterAutomacticLights() {
    lightNodes.clear();                                                     // +0x48: the original sets end to begin
    for (std::size_t index = 0; index < m_lightSetManager.unk_190.size(); ++index) {
        LightBase* light = m_lightSetManager.unk_190[index];
        SDistanceNodeEntry entry;
        entry.node = light->m_irrLight;                                     // LightBase +0x120
        entry.userData = nullptr;
        entry.distance = static_cast<double>(index);                        // +0x08 stored as a double
        lightNodes.push_back(entry);
    }
}

// 0x353dec SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
//          E_SCENE_NODE_CUSTOM_RENDER_PASS, glitch::core::svector<SUnsortedNodeEntry>&)
// renderPass (+0x174) takes the pass clamped to 9, and m_customRenderPass (+0x488) keeps the pass. The walk is the engine's
// renderList over the list: a zeroed sentinel is appended, ISceneNode::render(userData) (vtable +0x1c) runs on each entry while
// the current and next rendered-node words (+0x9c..+0xb0) slide over the entries, and the list ends empty (resize to 0).
template <typename Entry>
void SceneManager::renderCustomList(std::uint32_t pass, glitch::core::svector<Entry>& list) {
    renderPass = static_cast<glitch::scene::E_SCENE_NODE_RENDER_PASS>(pass <= 8 ? pass : 9);
    m_customRenderPass = pass;
    renderList(renderPass, list, true, false);
}

template void SceneManager::renderCustomList<glitch::scene::CSceneManager::SUnsortedNodeEntry>(
    std::uint32_t, glitch::core::svector<glitch::scene::CSceneManager::SUnsortedNodeEntry>&);

// 0x354468 SceneManager::clear(void)
// In the original's order: the loaded scene roots are dropped and the list emptied, the base clear runs, the light set manager is
// replaced by a freshly constructed one (a temporary, operator=, destructor), the resource file manager unloads everything, the
// driver's material renderer manager drops its unused instances and all renderers, the texture manager clears its placeholders
// and all textures, the shader manager removes its unused shaders (vtable +0x0c), m_skyBox is dropped and cleared, and
// m_nodeMapRoot is cleared (the original does not drop it here).
void SceneManager::clear() {
    for (ISceneNode* root : m_loadedScenes) {
        root->drop();
    }
    m_loadedScenes.clear();
    glitch::scene::CSceneManager::clear();
    {
        LightSetManager freshLightSets;
        m_lightSetManager = freshLightSets;                                  // +0x294
    }
    glitch::video::IVideoDriver* videoDriver = driver;                       // +0x14
    glitch::collada::CResFileManager::Inst->unloadAll();
    videoDriver->m_materialRendererManager->clearUnusedInstances();           // IVideoDriver +0xdc
    videoDriver->m_materialRendererManager->removeAll();
    videoDriver->m_textureManager->clearPlaceHolders();                       // IVideoDriver +0xe0
    videoDriver->m_textureManager->removeAll(false);
    videoDriver->m_shaderManager->removeUnusedShaders();                      // IVideoDriver +0xd8, vtable +0x0c
    if (m_skyBox != nullptr) {
        m_skyBox->drop();
        m_skyBox = nullptr;
    }
    m_nodeMapRoot = nullptr;
}

// 0x354588 SceneManager::DBG_WireFrame(bool,glitch::scene::ISceneNode*)
// Per material of each node: the renderer (CMaterial +0x04), the first pass of the current technique (technique table +0x18, entry
// +0x08), its 32-byte state block copied with word 1 edited by dh2::scene_technique::WireFrameWord1, then
// setRenderState(technique, 0, state).
void SceneManager::DBG_WireFrame(bool enable, ISceneNode* node) {
    ForEachMaterial(*this, node, [enable](const boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        const glitch::video::SRenderPass* pass = renderer->m_techniques[material->getTechnique()].passes;
        glitch::video::detail::renderpass::SRenderState state;
        static_assert(sizeof(state) == sizeof(pass->stateWords), "the render state is the first 32 bytes of the pass");
        std::memcpy(&state, pass->stateWords, sizeof state);
        state.m_word04 = dh2::scene_technique::WireFrameWord1(state.m_word04, enable);
        renderer->setRenderState(static_cast<std::uint8_t>(material->getTechnique()), 0, state);
    });
}

// 0x35477c SceneManager::SetMaskXray(glitch::scene::ISceneNode*,bool)
// Per material: the first pass of the technique selected by the raw technique byte (CMaterial +0x08) gets four edits in place, each
// setting the pass's changed byte (+0x30) when it alters the state: word 1 bit 27, word 1 low three bits, word 0 byte 1 to 0xFF,
// and word 1 bits 9-11 to 2. The enable argument is never read by the original.
void SceneManager::SetMaskXray(ISceneNode* node, bool enable) {
    (void)enable;
    ForEachMaterial(*this, node, [](const boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        auto pass = [&]() {
            return const_cast<glitch::video::SRenderPass*>(renderer->m_techniques[material->m_technique].passes);
        };
        glitch::video::SRenderPass* p = pass();
        if ((p->stateWords[1] & 0x8000000u) == 0) {
            p->flag30 = 1;
        }
        p->stateWords[1] |= 0x8000000u;
        p = pass();
        if ((p->stateWords[1] & 7u) != 7u) {
            p->flag30 = 1;
        }
        p->stateWords[1] |= 7u;
        p = pass();
        if (((p->stateWords[0] >> 8) & 0xFFu) != 0xFFu) {
            p->flag30 = 1;
        }
        p->stateWords[0] |= 0xFF00u;
        p = pass();
        const std::uint32_t before = p->stateWords[1];
        p->stateWords[1] = (before & 0xFFFFF1FFu) | 0x400u;
        if (((before >> 9) & 7u) != 2u) {
            p->flag30 = 1;
        }
    });
}

// 0x3549a0 SceneManager::UpdateLightSet(int,std::vector<bool>&,glitch::scene::ISceneNode*)
// LightSetManager::ApplySettings(lightSetId, material, filter) on the light set manager (+0x294) for every material of the subtree.
void SceneManager::UpdateLightSet(int lightSetId, std::vector<bool>& filter, ISceneNode* node) {
    ForEachMaterial(*this, node, [&](boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        m_lightSetManager.ApplySettings(lightSetId, material, filter);
    });
}

// 0x354b2c SceneManager::AutoLoadNormalMap(glitch::scene::ISceneNode*)
// Each material of the node's subtree goes through the material overload (0x352fa8).
void SceneManager::AutoLoadNormalMap(ISceneNode* node) {
    for (ISceneNode* found : SearchMaterialNodes(*this, node != nullptr ? node : rootNode)) {
        const std::uint32_t count = found->getMaterialCount();
        for (std::uint32_t i = 0; i != count; ++i) {
            AutoLoadNormalMap(found->getMaterial(i));
        }
    }
}

// 0x354cb8 SceneManager::SetMaterialEffects(glitch::scene::ISceneNode*,glitch::core::vector3d<float>,float,float)
// Each material of the node's subtree goes through the material overload (0x3527fc).
void SceneManager::SetMaterialEffects(ISceneNode* node, glitch::core::vector3d<float> color, float a, float b) {
    for (ISceneNode* found : SearchMaterialNodes(*this, node != nullptr ? node : rootNode)) {
        const std::uint32_t count = found->getMaterialCount();
        for (std::uint32_t i = 0; i != count; ++i) {
            SetMaterialEffects(found->getMaterial(i), color, a, b);
        }
    }
}

// 0x355000 SceneManager::GetMaterial(glitch::scene::ISceneNode*,std::string const&,bool)
// Returns the first material of the node's subtree whose name equals the argument (flag clear) or whose first name.size()
// characters match it (flag set), and null when none does or the node is null (the node is not defaulted to the root here).
boost::intrusive_ptr<glitch::video::CMaterial> SceneManager::GetMaterial(ISceneNode* node, const std::string& name,
                                                                         bool flag) {
    if (node == nullptr) {
        return boost::intrusive_ptr<glitch::video::CMaterial>();
    }
    for (ISceneNode* found : SearchMaterialNodes(*this, node)) {
        const std::uint32_t count = found->getMaterialCount();
        for (std::uint32_t i = 0; i != count; ++i) {
            boost::intrusive_ptr<glitch::video::CMaterial> material = found->getMaterial(i);
            const char* materialName = MaterialName(*material);
            const bool matched = flag ? std::strncmp(materialName, name.c_str(), name.size()) == 0
                                      : std::strcmp(materialName, name.c_str()) == 0;
            if (matched) {
                return material;
            }
        }
    }
    return boost::intrusive_ptr<glitch::video::CMaterial>();
}

// 0x3551e4 SceneManager::ChangeCommonTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,bool)
// The name of the material's current technique (renderer technique table +0x18, entry name) selects the remap in
// dh2::scene_technique::CommonTechniqueName, gated by the second flag and SceneManager +0x432 (fog). The first and third flags
// are not read.
void SceneManager::ChangeCommonTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, bool a, bool b,
                                         bool c) {
    (void)a;
    (void)c;
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    const char* current = glitch::core::detail::sharedStringText(
        static_cast<const glitch::core::detail::SSharedStringData*>(renderer->m_techniques[material->getTechnique()].name));
    const std::optional<std::string> name =
        dh2::scene_technique::CommonTechniqueName(current, b && m_lightSetManager.m_fogEnabled);
    if (name) {
        ChangeTechnique(material, name->c_str());
    }
}

// 0x355484 SceneManager::ResetCommonTechniqueToDefault(glitch::scene::ISceneNode*,bool,bool,bool)
// Materials whose renderer name does not start with GL_Diffuse, GL_Blend3Map, GL_ColorEffects or GL_Decal get
// ChangeCommonTechnique. The callee reads only the second flag.
void SceneManager::ResetCommonTechniqueToDefault(ISceneNode* node, bool a, bool b, bool c) {
    ForEachMaterial(*this, node, [&](boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        const char* rendererName = renderer->m_name;
        if (std::strncmp(rendererName, "GL_Diffuse", 10) && std::strncmp(rendererName, "GL_Blend3Map", 12) &&
            std::strncmp(rendererName, "GL_ColorEffects", 15) && std::strncmp(rendererName, "GL_Decal", 8)) {
            ChangeCommonTechnique(material, a, b, c);
        }
    });
}

// 0x355704 SceneManager::ChangeCustomXrayTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,bool)
// Only XR_ materials are touched. An XR_XRAY material takes XR_mask_xray_alpha (first flag) or XR_draw_xray_alpha with the _fog
// suffix (second flag and the fog byte); other XR_ materials call ChangeTechnique with the empty name. The third flag is never
// read.
void SceneManager::ChangeCustomXrayTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, bool a, bool b,
                                             bool c) {
    (void)c;
    const std::optional<std::string> name =
        dh2::scene_technique::CustomXrayTechniqueName(MaterialName(*material), a, b && m_lightSetManager.m_fogEnabled);
    if (name) {
        ChangeTechnique(material, name->c_str());
    }
}

// 0x355890 SceneManager::ChangeCustomShadowProjectionTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool)
// Only SH_ materials are touched. An SH_SHADOW material takes SH_Draw_Shadow with the _Fg suffix (first flag and the fog byte);
// other SH_ materials call ChangeTechnique with the empty name. The second flag is never read.
void SceneManager::ChangeCustomShadowProjectionTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, bool a,
                                                         bool b) {
    (void)b;
    const std::optional<std::string> name =
        dh2::scene_technique::ShadowProjectionTechniqueName(MaterialName(*material), a && m_lightSetManager.m_fogEnabled);
    if (name) {
        ChangeTechnique(material, name->c_str());
    }
}

// 0x3559e8 SceneManager::ResetCustomShadowProjectionTechniqueToDefault(glitch::scene::ISceneNode*,bool,bool)
// Materials whose renderer name does not start with GL_ShadowProjection get ChangeCustomShadowProjectionTechnique with the first
// flag (the original does not pass the second).
void SceneManager::ResetCustomShadowProjectionTechniqueToDefault(ISceneNode* node, bool a, bool b) {
    ForEachMaterial(*this, node, [&](boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        if (std::strncmp(renderer->m_name, "GL_ShadowProjection", 19)) {
            ChangeCustomShadowProjectionTechnique(material, a, b);
        }
    });
}

// 0x355bf0 SceneManager::ChangeCustomTechnique(boost::intrusive_ptr<glitch::video::CMaterial>,bool,bool,
//                                             SceneManager::EForceBool,bool,bool,bool)
// The technique name comes from dh2::scene_technique::CustomTechniqueName, fed with the flags and SceneManager +0x430 (lighting),
// +0x431 (specular) and +0x432 (fog). Names under three characters and the paths with no match leave the material alone; the other
// paths call ChangeTechnique, with the empty name for some prefixes. The sixth flag is never read.
void SceneManager::ChangeCustomTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, bool a, bool b,
                                         std::int32_t forceBool, bool c, bool d, bool e) {
    (void)e;
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    dh2::scene_technique::CustomTechniqueRequest request;
    request.wantLit = a;
    request.texture = b;
    request.alphaMode = forceBool;
    request.wantSpecular = c;
    request.wantFog = d;
    request.lightingOn = m_lightSetManager.m_lightingEnabled;      // +0x430
    request.specularOn = m_lightSetManager.m_specularEnabled;      // +0x431
    request.fogOn = m_lightSetManager.m_fogEnabled;                // +0x432
    const std::optional<std::string> name =
        dh2::scene_technique::CustomTechniqueName(MaterialName(*material), renderer->m_name, request);
    if (name) {
        ChangeTechnique(material, name->c_str());
    }
}

// 0x356434 SceneManager::ResetCustomTechniqueToDefault(glitch::scene::ISceneNode*,bool,bool,SceneManager::EForceBool,bool,bool,bool)
// Materials whose renderer name starts with GL_Diffuse, GL_Blend3Map, GL_ColorEffects or GL_Decal get ChangeCustomTechnique with
// the five flags.
void SceneManager::ResetCustomTechniqueToDefault(ISceneNode* node, bool a, bool b, std::int32_t forceBool, bool c,
                                                 bool d, bool e) {
    ForEachMaterial(*this, node, [&](boost::intrusive_ptr<glitch::video::CMaterial>& material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        const char* rendererName = renderer->m_name;
        if (!std::strncmp(rendererName, "GL_Diffuse", 10) || !std::strncmp(rendererName, "GL_Blend3Map", 12) ||
            !std::strncmp(rendererName, "GL_ColorEffects", 15) || !std::strncmp(rendererName, "GL_Decal", 8)) {
            ChangeCustomTechnique(material, a, b, forceBool, c, d, e);
        }
    });
}

// 0x3566ec SceneManager::ChangeTechnique(glitch::scene::ISceneNode*,char const*,char const*,int)
// Returns false when the node is null or has no materials. A material index past the count reports through gAssertLevel (2 stores
// to address 0, here abort; 1 prints the assert line and goes on). techniqueB, when given, must equal the name of the material's
// current technique. techniqueA is looked up with getTechniqueID (255 when absent) and stored in the material's technique byte.
bool SceneManager::ChangeTechnique(ISceneNode* node, const char* techniqueA, const char* techniqueB, int pass) {
    if (node == nullptr || node->getMaterialCount() == 0) {
        return false;
    }
    if (static_cast<unsigned>(pass) >= node->getMaterialCount()) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "matId < node->getMaterialCount()",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Irrlicht\\SceneManager.cpp", 212);
        }
        return false;       // the original goes on to read a material past the end; the port stops
    }
    boost::intrusive_ptr<glitch::video::CMaterial> material = node->getMaterial(static_cast<std::uint32_t>(pass));
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
    if (techniqueB != nullptr) {
        const char* current = glitch::core::detail::sharedStringText(static_cast<const glitch::core::detail::SSharedStringData*>(
            renderer->m_techniques[material->getTechnique()].name));
        if (current == nullptr || std::strcmp(current, techniqueB) != 0) {
            return false;
        }
    }
    if (techniqueA == nullptr) {
        return false;
    }
    const int id = renderer->getTechniqueID(techniqueA);
    if (id == 255) {
        return false;
    }
    material->m_technique = static_cast<std::uint8_t>(id);
    return true;
}

// 0x356bec SceneManager::~SceneManager()  (complete-object destructor; D2 at 0x356878 is the base-object variant)
// The batch list (+0x47c) is released with GlitchFree; the two SDefaultNodeEntry vectors (+0x464, +0x470), the loaded-scene vector
// (+0x44c), the light set manager (+0x294) and the base destructor run as members and base. The vptr resets are compiler-managed.
SceneManager::~SceneManager() {
    if (m_batchBegin != nullptr) {
        GlitchFree(m_batchBegin);
    }
}
