// MenuMerchant: the "menu_Merchant" page. A singleton (GetInstance) with an avatar pane that renders the
// local player's character through its own camera.
// Original 32-bit size: 0xc8 (200). MenuBase is followed by one byte at +0xc4 and alignment padding.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x433688, Show 0x433554, CreateAvatarCamera 0x433318).
#pragma once

#include <cstdint>

#include "dh2/MenuBase.hpp"

namespace gameswf {
class render_state;
}  // namespace gameswf

namespace glitch {
namespace scene {
class CCameraSceneNode;
class ICameraSceneNode;
}  // namespace scene
}  // namespace glitch

class MenuMerchant : public MenuBase {
public:
    MenuMerchant();                                                   // 0x433688 (C1) / 0x4336d4 (C2)

    // Overrides in vtable slot order. Slots +0x08 .. +0x4c are MenuBase's (MenuBase occupies +0x00 .. +0xc3).
    ~MenuMerchant() override;                                         // +0x00, +0x04: D1 0x43359c, D0 0x433604; D2 0x433620
    void Show() override;                                             // +0x0c 0x433554: avatar pane callback, CreateAvatarCamera, MenuBase::Show
    void Hide() override;                                             // +0x10 0x4332b0: DestroyAvatarCamera, MenuBase::Hide, saves the local player
    void Update() override;                                           // +0x1c 0x433548: clears unk_c4, then MenuBase::Update

    static MenuMerchant* GetInstance();                               // 0x433720, function-local static
    static void CreateAvatarCamera();                                 // 0x433318
    static void DestroyAvatarCamera();                                // 0x432b38
    // Display callback for the "avatarpane" movie. The user pointer is the MenuBase* given to RegisterDisplayCallback.
    static void RenderCharacterPane(gameswf::render_state& state, void* user);  // 0x432ee8

    // Statics (no offset). The avatar camera, and the camera that was active before it.
    static glitch::scene::CCameraSceneNode* m_inventoryPaneCam;      // created by CreateAvatarCamera (operator new 908)
    static glitch::scene::ICameraSceneNode* m_oldCam;                 // the scene manager's active camera when the pane was created

    // MenuBase base (size 0xc4)                                      // +0x00
    bool unk_c4;                                                      // +0xc4 cleared by Update every frame
    uint8_t pad_c5[3];                                                // +0xc5 .. +0xc7
};
