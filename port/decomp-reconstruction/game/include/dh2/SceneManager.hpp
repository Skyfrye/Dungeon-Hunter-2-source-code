// SceneManager: the game's scene manager. It extends glitch::scene::CSceneManager with a node map root,
// the light sets, the scene list that PreloadScene fills, the batch list that _registerSceneNodes walks,
// the custom render pass, and the screenshot request. Its vtable overrides the destructor, drawAll(node),
// clear, registerSkinnedMesh, registerNodeForCustomRendering and renderCustomLists.
// Original 32-bit size at least 0x494 (1172) in the recovered members. The base glitch::scene::CSceneManager occupies +0x000 .. +0x28b
// (engine layout in glitch-scene-collada-gui/layouts/scene.hpp, partial).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x352c3c, dtor 0x356bec, drawAll 0x359338).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/layouts/scene.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "core-platform/deps/game_types.hpp"
#include "dh2/LightSetManager.hpp"

// boost::intrusive_ptr is only named by value in declarations, so a forward declaration is enough.
namespace boost {
template <typename T>
class intrusive_ptr;
}  // namespace boost

class SkinnedMeshSceneNodeEx;

namespace glitch {
class IReferenceCounted;
namespace video {
class CMaterial;
class CMaterialRenderer;
class IVideoDriver;
}  // namespace video
namespace io {
class IFileSystem;
}  // namespace io
namespace gui {
class ICursorControl;
class IGUIEnvironment;
}  // namespace gui
namespace scene {
class ISceneNode;
class CEmptySceneNode;
}  // namespace scene
}  // namespace glitch

class SceneManager : public glitch::scene::CSceneManager {
public:
    // CSceneManager occupies +0x000 .. +0x28b (not restated here).
    glitch::scene::CEmptySceneNode* m_nodeMapRoot;                  // +0x28c created by AddNodeToMap on first use, dropped and emptied by clear()
    bool m_screenshotRequested;                                     // +0x290 drawAll clears it and, when the ToggleGamepadScreenShot switch is on, writes screenshot_<time>.tga
    LightSetManager m_lightSetManager;                              // +0x294 .. +0x437 (0x1a4 bytes in the original): updated by drawAll and reset by clear(). Its last flags are the scene manager's own:
                                                                    //   m_lightSetManager.m_lightingEnabled (+0x430: lit techniques, ChangeCustomTechnique picks the Diffuse_VC / L0_ / Decal names when set, the Unlit_ names when clear),
                                                                    //   m_specularEnabled (+0x431: specular suffix) and m_fogEnabled (+0x432: fog on, EnableFog sets it, DisableFog clears it, UpdateFog reads it).
                                                                    // The LightBase* vector at SceneManager +0x424 (begin +0x424, end +0x428, cap +0x42c; appended to by LightBase::InitPost 0x40b0c0 for
                                                                    // automatic lights) is m_lightSetManager.unk_190.
    glitch::scene::ISceneNode* m_skyBox;                            // +0x438 the sky box node (SkyBoxMeshSceneNode) built by AddSkyBoxSceneNode: removed and dropped when replaced, dropped and cleared by clear()
    bool unk_43c;                                                   // +0x43c cleared by the ctor
    int m_registerCounter;                                          // +0x440 incremented by _registerSceneNodes, reset when the nodes are registered
    int m_registerInterval;                                         // +0x444 set to 4 by the ctor; _registerSceneNodes registers when the counter is a multiple of it
    bool m_forceRegister;                                           // +0x448 set by ForceRegister, cleared after a registration
    glitch::core::svector<glitch::scene::ISceneNode*> m_loadedScenes;         // +0x44c .. +0x457 (begin, end, cap) scene roots appended by PreloadScene, dropped and emptied by clear()
    float unk_458;                                                  // +0x458 cleared by the ctor; Level::_LoadProcess copies LevelConfig fog_direction_mask X here, Level::Update scales the fog distance by it
    float unk_45c;                                                  // +0x45c cleared by the ctor; fog_direction_mask Y
    float unk_460;                                                  // +0x460 set to 1.0f by the ctor
    glitch::core::svector<glitch::scene::CSceneManager::SDefaultNodeEntry> m_gameNodes464;   // +0x464 (begin, end, cap) game render list of pass 9 (registerNodeForCustomRendering); destroyed by ~SceneManager
    glitch::core::svector<glitch::scene::CSceneManager::SDefaultNodeEntry> m_gameNodes470;   // +0x470 (begin, end, cap) game render list of pass 10; destroyed by ~SceneManager
    void** m_batchBegin;                                            // +0x47c begin of a GlitchAlloc block of batch node pointers, freed by ~SceneManager
    void** m_batchEnd;                                              // +0x480 end of the batch list, walked by _registerSceneNodes
    void** m_batchCap;                                              // +0x484 end of storage of the batch list
    std::uint32_t m_customRenderPass;                               // +0x488 E_SCENE_NODE_CUSTOM_RENDER_PASS, swapped by setSceneNodeCustomRenderPass
    void* m_secondaryVptr;                                          // +0x48c vptr of the second subobject (shared with RootSceneNode +0x20c)
    std::int32_t m_secondaryRefCount;                               // +0x490 count of the second subobject, set to 1 by the ctor

    SceneManager(glitch::video::IVideoDriver* driver, boost::intrusive_ptr<glitch::io::IFileSystem> fileSystem,
                 glitch::gui::ICursorControl* cursor, glitch::gui::IGUIEnvironment* gui);   // 0x352c3c (C1), 0x352d4c (C2)
    virtual ~SceneManager();                                        // vtable slot 0x14: 0x356bec (D1), slot 0x18: 0x356c9c (D0); D2 at 0x356878

    // Virtual overrides, in vtable order. The base in the engine layout does not declare these slots,
    // so they are not marked override.
    virtual void drawAll(glitch::scene::ISceneNode* node);          // slot 0x48: 0x359338 (updates the light set, draws, takes the screenshot)
    virtual void clear();                                           // slot 0x74: 0x354468
    virtual void registerSkinnedMesh(SkinnedMeshSceneNodeEx* mesh); // slot 0x94: 0x353afc
    // The base's pure slot (registerSkinnedMesh(void*)) is the same slot 0x94; this overload forwards to the typed one above.
    void registerSkinnedMesh(void* skinnedMeshNode) override;
    virtual int registerNodeForCustomRendering(glitch::scene::ISceneNode* node,
                                                const boost::intrusive_ptr<glitch::video::CMaterial>& material,
                                                void* userData, std::uint32_t pass,
                                                const glitch::core::vector3d<float>* position, int sortOrder);   // slot 0x98: 0x35a3d8
    virtual void renderCustomLists(glitch::video::IVideoDriver* driver);   // slot 0x9c: 0x358008

    // Scene search and debug.
    void SearchByType(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                      std::uint32_t type);                          // 0x350e5c
    void SearchByType(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                      std::uint32_t type);                          // 0x3535d0
    void DisableFog(glitch::scene::ISceneNode* node);               // 0x350e80
    void DBG_PrintNode(glitch::scene::ISceneNode* node, bool verbose, std::uint32_t depth);   // 0x350e8c
    void DBG_DrawCircle(const Point2D<float>& center, float z, float radius,
                        const glitch::video::SColor& color);       // 0x352154: sixteen segments at height z, radius in the XY plane
    void DBG_WireFrame(bool enable, glitch::scene::ISceneNode* node);   // 0x354588
    void SearchByName(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                      const std::string& name, bool flag);          // 0x352aa4
    glitch::scene::ISceneNode* SearchByName(glitch::scene::ISceneNode* root, const std::string& name,
                                            bool flag);             // 0x352b74
    void SearchByName(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                      const std::string& name, bool flag);          // 0x3586ac
    void SearchByName(glitch::scene::ISceneNode* root, glitch::core::svector<glitch::scene::ISceneNode*>& out,
                      const char* name, bool flag);                 // 0x359fac
    void SearchByName(glitch::scene::ISceneNode* root, void (*visit)(glitch::scene::ISceneNode*),
                      const char* name, bool flag);                 // 0x35a044
    glitch::scene::ISceneNode* SearchByName(glitch::scene::ISceneNode* root, const char* name,
                                            bool flag);             // 0x35a0e4

    // Fog.
    void UpdateFog(float start, float end, const Point3D<float>& position);                 // 0x3522f8
    void EnableFog(float start, float end, const Point3D<float>& position,
                   glitch::scene::ISceneNode* node);                // 0x35233c
    void SetCustomFog(boost::intrusive_ptr<glitch::video::CMaterial>& material,
                      glitch::core::vector3d<float> a, glitch::core::vector3d<float> b,
                      glitch::core::vector3d<float> c);             // 0x3523c4

    // Node map, registration and rendering.
    void AddNodeToMap(glitch::scene::ISceneNode* node);             // 0x3524a0
    void SetMaskXray(glitch::scene::ISceneNode* node, bool enable); // 0x35477c
    void ForceRegister();                                           // 0x350ee0: sets m_forceRegister and the base visibility flag
    std::uint32_t setSceneNodeCustomRenderPass(std::uint32_t pass); // 0x350ef0: returns the previous pass
    void _RegisterAutomacticLights();                               // 0x353bac
    void _registerSceneNodes(glitch::scene::ISceneNode* node);      // 0x357ea4
    void _renderLists(glitch::video::IVideoDriver* driver);         // 0x3587a0
    void _drawAll(glitch::scene::ISceneNode* node);                 // 0x3592b0
    void clearRenderLists();                                        // 0x357dc0
    template <typename Entry>
    void renderCustomList(std::uint32_t pass, glitch::core::svector<Entry>& list);   // 0x353dec (unsorted entries), 0x357780 (default entries)

    // Materials and techniques. Return types of the material helpers are not recovered and are void here.
    void SetMaterialTexture(boost::intrusive_ptr<glitch::video::CMaterial> target,
                            boost::intrusive_ptr<glitch::video::CMaterial> texture);   // 0x3525b4
    void SetShadowProjectionMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial> material,
                                            glitch::core::vector3d<float> color, float a, float b);   // 0x352668
    void SetMaterialEffects(boost::intrusive_ptr<glitch::video::CMaterial> material,
                            glitch::core::vector3d<float> color, float a, float b);   // 0x3527fc
    void SetMaterialEffects(glitch::scene::ISceneNode* node, glitch::core::vector3d<float> color,
                            float a, float b);                      // 0x354cb8
    void SetMaterialRimLightEffects(boost::intrusive_ptr<glitch::video::CMaterial> material, float power,
                                    std::string tag);               // 0x359d08
    void SetMaterialRimLightEffects(glitch::scene::ISceneNode* node, float power, std::string tag);   // 0x35a188
    bool ChangeTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, const char* technique);   // 0x352a2c: true when the technique changed
    bool ChangeTechnique(glitch::scene::ISceneNode* node, const char* techniqueA, const char* techniqueB,
                         int pass);                                 // 0x3566ec: true when the technique was set
    void ChangeCommonTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material,
                               bool a, bool b, bool c);             // 0x3551e4
    void ResetCommonTechniqueToDefault(glitch::scene::ISceneNode* node, bool a, bool b, bool c);   // 0x355484
    void ChangeCustomXrayTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material,
                                   bool a, bool b, bool c);         // 0x355704
    void ChangeCustomShadowProjectionTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material,
                                               bool a, bool b);     // 0x355890
    void ResetCustomShadowProjectionTechniqueToDefault(glitch::scene::ISceneNode* node, bool a, bool b);   // 0x3559e8
    // The EForceBool argument is a nested enum of SceneManager whose values are not recovered; it is carried as int.
    void ChangeCustomTechnique(boost::intrusive_ptr<glitch::video::CMaterial> material, bool a, bool b,
                               std::int32_t forceBool, bool c, bool d, bool e);   // 0x355bf0
    void ResetCustomTechniqueToDefault(glitch::scene::ISceneNode* node, bool a, bool b,
                                       std::int32_t forceBool, bool c, bool d, bool e);   // 0x356434
    void AutoLoadNormalMap(boost::intrusive_ptr<glitch::video::CMaterial> material);   // 0x352fa8
    void AutoLoadNormalMap(glitch::scene::ISceneNode* node);        // 0x354b2c
    void UpdateLightSet(int lightSetId, std::vector<bool>& filter, glitch::scene::ISceneNode* node);   // 0x3549a0
    boost::intrusive_ptr<glitch::video::CMaterial> GetMaterial(glitch::scene::ISceneNode* node, const std::string& name, bool flag);   // 0x355000: the first material whose name matches, null when none
    boost::intrusive_ptr<glitch::video::CMaterial> GetMaterial(glitch::scene::ISceneNode* node, const char* name, bool flag);   // 0x359c60: null when the node or the name is null, else the string overload

    // Loading. LoadScene returns the loaded root (null when it fails).
    boost::intrusive_ptr<glitch::video::CMaterialRenderer> LoadFXLib(const char* file, const char* effectName);   // 0x3594a4: the effect's renderer, counted
    glitch::scene::ISceneNode* LoadScene(const char* file, const char* nodeName, bool flagA, bool flagB);   // 0x3596f8
    void AddSkyBoxSceneNode(const char* fileA, const char* fileB);  // 0x359a38
    void PreloadScene(const char* fileA, const char* fileB);        // 0x359b68: loads a scene and appends its root to m_loadedScenes
};
