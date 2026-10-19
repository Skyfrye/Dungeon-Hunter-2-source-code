// VisualObject: the scene-graph side of a GameObject (scene node, collision box, shadow and x-ray
// copies, modular skin). Not a GameObject itself; GameObject::m_visual points at one.
// Original 32-bit size 0xac (172), allocated with operator new(172).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x472c5c, dtor 0x473884).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-shared/glitch_core.hpp"

class GameObject;
class AnimController;
class RootSceneNode;
class ShadowSkinnedMeshSceneNode;
class ShadowModularSkinnedMeshSceneNode;
class XrayModularSkinnedMeshSceneNode;
template <typename T> struct Point3D;

namespace glitch {
namespace scene {
class ISceneNode;
class ITimelineController;
}  // namespace scene
namespace collada {
class CModularSkinnedMeshSceneNode;
}  // namespace collada
}  // namespace glitch

class VisualObject {
public:
    // Vtable (_ZTV12VisualObject, 24 bytes): slots 0/1 destructors, 2 Update, 3 Draw.
    VisualObject(GameObject* owner, const std::string& model, const std::string& variant);  // 0x472a0c / 0x472c5c
    virtual ~VisualObject();                                    // slot 0/1: 0x473884, 0x473aa0, 0x473abc
    virtual void Update();                                      // slot 2: 0x470cf0 (empty)
    virtual void Draw() const;                                  // slot 3: 0x470cf4 (empty)

    // Node lookup. Both search below m_node through the SceneManager.
    glitch::scene::ISceneNode* GetSpecificNode(int typeTag) const;          // 0x4709dc
    glitch::scene::ISceneNode* GetSpecificNode(const char* name) const;     // 0x470a18

    void ApplyMeshBox();                                        // 0x470a54 owner->SetRelativeAABB(m_meshBox, m_hasColBox)
    void SetAnimController(AnimController* controller);         // 0x470a84 deletes the previous one
    bool IsVisible() const;                                     // 0x470ac4
    void SetShadowSkinnedMeshVisible(bool visible);             // 0x470ad8
    void SetXraySkinnedMeshVisible(bool visible);               // 0x470b78
    void ForceUpdatePosition();                                 // 0x470bd0
    void GetPosition(Point3D<float>& out);                      // 0x470be4
    void SetPosition(const Point3D<float>& position);           // 0x470c24
    void GetRotation(Point3D<float>& out);                      // 0x470c84
    void SyncPosition();                                        // 0x470cb8
    void Sync();                                                // 0x38ba74 position, rotation, scaling

    // Empty hooks (4 bytes each in the original, not virtual).
    void ApplyRotation();                                       // 0x470ccc
    void ApplyScaling();                                        // 0x470cd0
    void ApplyMaterial();                                       // 0x470cd4
    void StartFadeOut(float seconds);                           // 0x470cd8
    void StopFadeOut();                                         // 0x470cdc
    void UpdateFadeOut();                                       // 0x470ce0
    void StartFadeIn(float seconds);                            // 0x470ce4
    void StopFadeIn();                                          // 0x470ce8
    void UpdateFadeIn();                                        // 0x470cec

    // Modular skin (CModularSkinnedMeshSceneNode at m_modularNode).
    int GetModularCategoryId(const char* category) const;       // 0x470e5c, -1 without a modular node
    int GetModularModuleCount(int categoryId) const;            // 0x470e94
    int GetModularCategoryCount() const;                        // 0x470ea4
    void SetModularSkin(int categoryId, int moduleId);          // 0x470e18
    const char* GetModularModuleName(int categoryId, int moduleId) const;   // 0x470e74, "???" without a node
    int GetModularModuleId(int categoryId, const char* module) const;       // 0x474568 looks up "#<module>-mesh-skin"
    int GetModularModuleId(const char* category, const char* module) const; // 0x474654
    void ResetSkinning();                                       // 0x471a0c

    void ApplyShadowProjectionMaterialEffect(glitch::core::vector3d<float> color, float a, float b);  // 0x470eb4
    void ApplyMaterialEffect(glitch::core::vector3d<float> color, float a, float b);                  // 0x471b7c
    void ApplyShadowMaterial();                                 // 0x4710f0
    void ApplyLightSet();                                       // 0x471214
    void ApplyPosition();                                       // 0x47124c scene node position to the owner
    void ExternalNodeSync(RootSceneNode* node);                 // 0x471298
    void SetVisible(bool visible);                              // 0x471368
    void SyncVisibility();                                      // 0x4713d0
    void _FindModularSkinnedMeshNode();                         // 0x4718f0
    void ApplyUnlitColorMaterial();                             // 0x471dc4
    void SetMeshVisible(bool visible);                          // 0x471f1c
    void CalcMeshBox();                                         // 0x47211c
    void SetScaling(float uniform);                             // 0x472708
    void SetScaling(const Point3D<float>& scale);               // 0x4727ac
    void SyncScaling();                                         // 0x472860
    void SetRotation(const Point3D<float>& rotation);           // 0x472874
    void SyncRotation();                                        // 0x472948
    void SetParent(GameObject* owner);                          // 0x47295c
    void CreateShadowMesh();                                    // 0x4732ac
    void CreateXrayMesh();                                      // 0x4736e4
    void ApplyXrayMaterial();                                   // 0x473ea0
    std::string FlushMeshes();                                  // 0x474140 returns the model file name
    void ApplyMaterialBaseParam();                              // 0x474318
    // Attaches a weapon model; slot picks the mount node from s_slotMapping. kind 1 = main hand.
    glitch::scene::ISceneNode* SetWeaponSkin(const char* weapon, int kind, int slot);  // 0x473cd8

    // _vptr                                                    // +0x00
    GameObject* m_owner;                                        // +0x04
    RootSceneNode* m_node;                                      // +0x08 loaded model root, reference counted, dropped in the dtor
    glitch::scene::ISceneNode* m_colBoxNode;                    // +0x0c mesh node found under "_colbox_"
    glitch::core::aabbox3d<float> m_meshBox;                    // +0x10 bounds, centred by CalcMeshBox
    bool m_hasColBox;                                           // +0x28
    uint8_t pad_29[3];                                          // +0x29
    glitch::collada::CModularSkinnedMeshSceneNode* m_modularNode;  // +0x2c
    glitch::scene::ISceneNode* m_weaponNodeMain;                // +0x30 SetWeaponSkin kind 1
    glitch::scene::ISceneNode* m_weaponNodeOff;                 // +0x34 SetWeaponSkin other kinds
    AnimController* m_animController;                           // +0x38
    bool unk_3c;                                                // +0x3c cleared in the ctor
    uint8_t pad_3d[3];                                          // +0x3d
    std::int32_t unk_40;                                        // +0x40 light set id (InitLightSetAndMaterial stores LightSetManager::GetLightSetIdFromName, an int). Name candidate: m_lightSetId. Cleared in the ctor
    // +0x44 .. +0x57: the light filter, a std::vector<bool> (20 bytes in the original: the start and finish bit iterators and the end of storage;
    // ApplyLightSet passes it to SceneManager::UpdateLightSet). The destructor frees its block.
    std::vector<bool> m_lightFilter;
    float m_effectColor[3];                                     // +0x58 ApplyMaterialEffect colour, -1 = unset
    float m_effectParamB;                                       // +0x64 -1 = unset
    float m_effectParamA;                                       // +0x68 -1 = unset
    bool unk_6c;                                                // +0x6c
    uint8_t pad_6d[3];                                          // +0x6d
    uint32_t unk_70;                                            // +0x70 not set by the ctor
    float unk_74;                                               // +0x74 ctor sets -1.0
    uint32_t unk_78;                                            // +0x78 not set by the ctor
    bool unk_7c;                                                // +0x7c
    bool unk_7d;                                                // +0x7d
    bool m_rimLight;                                            // +0x7e ApplyMaterialBaseParam adds the level rim light
    bool m_hasModularNode;                                      // +0x7f set by _FindModularSkinnedMeshNode
    std::vector<ShadowSkinnedMeshSceneNode*> m_shadowSkinned;   // +0x80 (12 bytes in the original)
    std::vector<ShadowModularSkinnedMeshSceneNode*> m_shadowModular;  // +0x8c
    bool m_shadowCreated;                                       // +0x98 set by CreateShadowMesh
    uint8_t pad_99[3];                                          // +0x99
    std::vector<XrayModularSkinnedMeshSceneNode*> m_xrayModular;  // +0x9c
    bool m_xrayCreated;                                         // +0xa8 set by CreateXrayMesh
    bool m_xrayMask;                                            // +0xa9 SetMaskXray when the RENDERING_EnableXray switch is on
    uint8_t pad_aa[2];                                          // +0xaa
};
