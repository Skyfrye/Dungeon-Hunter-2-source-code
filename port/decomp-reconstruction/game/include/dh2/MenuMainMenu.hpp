// MenuMainMenu: the "menu_MainMenu" page. A singleton (GetInstance) that shows the saved character of the
// selected savegame slot in a 3D preview. Its members are all statics; it adds no instance members to MenuBase.
// Original 32-bit size: 0xc4 (196), the size of MenuBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x42c2c4, Show 0x42c62c, SetupScene 0x42c510).
#pragma once

#include <cstdint>

#include "dh2/MenuBase.hpp"

namespace gameswf {
class render_state;
}  // namespace gameswf

namespace glitch {
namespace scene {
class CCameraSceneNode;
}  // namespace scene
namespace collada {
class CRootSceneNode;
}  // namespace collada
}  // namespace glitch

class Character;

class MenuMainMenu : public MenuBase {
public:
    MenuMainMenu();                                                   // 0x42c2c4 (C1) / 0x42c310 (C2)

    // Overrides in vtable slot order. Slots +0x08 .. +0x4c are MenuBase's (MenuBase occupies +0x00 .. +0xc3).
    ~MenuMainMenu() override;                                         // +0x00, +0x04: D1 0x42c240, D0 0x42c274; D2 0x42c290
    void Show() override;                                             // +0x0c 0x42c62c: menu_bg shown, MenuBase::Show, avatar camera, scene and character, error message
    void Hide() override;                                             // +0x10 0x42c128: destroys the scene and the camera, clears mSavegameSlot
    void GotFocus() override;                                         // +0x14 0x42ba98
    void LostFocus() override;                                        // +0x18 0x42bae8, empty
    void Update() override;                                           // +0x1c 0x42c1c8: while IsValidMenu, animates mCharacterToRender and updates the scene manager
    void OnEvent(RenderFX::Event& e) override;                        // +0x2c 0x42bb48: "btn_GLLive" and "btn_MENU_MORE_GAMES" open external pages

    static MenuMainMenu* GetInstance();                               // 0x42c35c, function-local static
    static void SetupScene();                                         // 0x42c510: loads data/3d/menu/main_menu_charactere_swamp.bdae once
    static void DestroyScene();                                       // 0x42bebc
    static void SetupCharacter();                                     // 0x42bd08: creates the preview character for mSavegameSlot
    static void DestroyCharacter();                                   // 0x42bcbc
    static void CreateAvatarCamera();                                 // 0x42bf3c
    static void DestroyAvatarCamera();                                // 0x42baec
    // Sets the preview slot. The original takes the slot in the first register, so there is no object.
    static void ChangeCharacterToDisplay(int savegameSlot, bool force);  // 0x42c0d0
    // Display callback for the "RenderedBG" movie. Empty in the original.
    static void RenderCharacterPane(gameswf::render_state& state, void* user);  // 0x42bb44

    // Statics (no offset).
    static glitch::scene::CCameraSceneNode* m_mainmenuPaneCam;        // the avatar camera (operator new 908)
    static glitch::collada::CRootSceneNode* m_characterPlaneSceneNode;  // the scene built from the collada database
    static int32_t mSavegameSlot;                                     // slot shown in the preview, -1 when none
    static Character* mCharacterToRender;                             // the preview character, null when none
    static bool m_isDestroyed;                                        // set by Hide, cleared by Show
};
