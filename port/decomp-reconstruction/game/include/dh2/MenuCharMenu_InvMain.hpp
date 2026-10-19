// MenuCharMenu_InvMain: the main page of the inventory sheet in the character menu ("menu_InventorySheetMain"),
// a MenuBase singleton. Its avatar camera (m_inventoryPaneCam) and the "avatarpane" display callback are static,
// so the instance has no members of its own.
// Original 32-bit size 0xc4 (196): the same as MenuBase.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x452e20 / 0x452e68, Init 0x452e00, GetInstance 0x452eb0,
// Show 0x452b1c, Hide 0x4528a0, CreateAvatarCamera 0x4528d0, DestroyAvatarCamera 0x452810,
// RenderCharacterPane 0x452468, dtor 0x452b64 / 0x452bcc / 0x452be8).
#pragma once

#include "dh2/MenuBase.hpp"

namespace gameswf {
class render_state;
}  // namespace gameswf

namespace glitch {
namespace scene {
class ICameraSceneNode;
}  // namespace scene
}  // namespace glitch

class MenuCharMenu_InvMain : public MenuBase {
public:
    MenuCharMenu_InvMain();                                             // 0x452e20 (C1), 0x452e68 (C2)
    ~MenuCharMenu_InvMain() override;                                   // +0x00, +0x04: 0x452b64 (D1), 0x452bcc (D0), 0x452be8 (D2)

    static MenuCharMenu_InvMain* GetInstance();                         // 0x452eb0 static local, constructed on first use

    void Init();                                                        // 0x452e00 registers with MenuManager, then initialises the details page

    // Overrides of MenuBase slots, in vtable order. MenuBase's other slots are inherited.
    void Show() override;                                               // +0x0c 0x452b1c
    void Hide() override;                                               // +0x10 0x4528a0

    // Avatar camera for the "avatarpane" clip. Static: they work on m_inventoryPaneCam.
    static void CreateAvatarCamera();                                   // 0x4528d0
    static void DestroyAvatarCamera();                                  // 0x452810
    // Display callback registered as "avatarpane"; the user pointer is the MenuCharMenu_InvMain or the details menu.
    static void RenderCharacterPane(gameswf::render_state& render, void* menu);  // 0x452468

    // Static state, not part of the instance layout. Created by CreateAvatarCamera (a 908-byte camera scene node).
    static glitch::scene::ICameraSceneNode* m_inventoryPaneCam;         // static, nulled by DestroyAvatarCamera and the dtor
};
