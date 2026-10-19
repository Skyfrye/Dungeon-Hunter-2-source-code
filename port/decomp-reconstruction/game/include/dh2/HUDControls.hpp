// HUDControls: singleton behind the touch HUD. It owns the joystick, action, potion, skill, spell, menu and
// iTunes buttons as DebugCachedCharacter handles into the HUD SWF, the custom layout the player can drag
// (BeginCustom, SaveHUDPos, SetHUDPos), and the touch state fed by the input events.
// Original 32-bit size at least 0x7d4 (2004): the last member recovered here ends at that offset.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x41af1c / 0x41b1a4, initCachedChars 0x419b4c,
// Update 0x41a780, SaveHUDPos 0x418360, OnEvent 0x418d28).
// Two vtable pointers: the game IEventReceiver at +0x00 and glitch::IEventReceiver at +0x04.
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/RenderFX.hpp"
#include "glitch-core-io/deps/glitch_core_objects.hpp"

class IEvent;
class EventManager;
class MenuFX;

namespace glitch {
struct SEvent;
}  // namespace glitch

class HUDControls : public ::IEventReceiver, public glitch::IEventReceiver {
public:
    HUDControls();                                                      // 0x41af1c (C1), 0x41b1a4 (C2)
    ~HUDControls() override;                                            // 0x41aa40 (D1), 0x41ac10 (D2), 0x41abf4 (D0)

    static HUDControls* GetInstance();                                  // 0x41b11c
    static bool hasInstance();                                          // 0x418238, returns true

    void Flush();                                                       // 0x418240, empty
    void Draw();                                                        // 0x418244, empty
    void BeginCustom();                                                 // 0x41832c
    void SaveHUDPos();                                                  // 0x418360
    void SetHUDPos(float (*pos)[2], bool save);                         // 0x4187a0
    void RefreshHUD();                                                  // 0x418b7c
    void Touch();                                                       // 0x418bec
    void Update();                                                      // 0x41a780
    void initCachedChars();                                             // 0x419b4c

    // Virtual overrides in vtable order. Slots +0x00 and +0x04 are the destructors (above).
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // slot +0x08: 0x418258
    virtual float OnEvent(RenderFX::Event& event);                              // slot +0x0c: 0x418d28
    // Slot +0x10 in the primary vtable, and the glitch::IEventReceiver slot in the secondary one (thunk at +0x24).
    // The glitch stand-in declares no onEvent slot yet, so this is not marked override.
    bool onEvent(const glitch::SEvent& event);                          // slot +0x10: 0x418250, returns false

    // The IEventReceiver base sub-object (vptr +0x00) and the glitch::IEventReceiver base (vptr +0x04) take
    // +0x00 and +0x04. The members below start at +0x08.
    bool m_cachesReady;                                                 // +0x08 Update fills the caches once this is clear
    bool m_attackHeld;                                                  // +0x09 Update fires Cmd_Attack or Cmd_UseOOI
    bool m_moveHeld;                                                    // +0x0a Update steers the player with Cmd_HeadTowards
    uint8_t pad_0b;                                                     // +0x0b
    std::int32_t unk_0c;                                                // +0x0c int, 0 at construction
    std::int32_t unk_10;                                                // +0x10 int, 0 at construction
    std::int32_t unk_14;                                                // +0x14 int (stick press start x / 20), 0 at construction and in Touch
    std::int32_t unk_18;                                                // +0x18 int (stick press start y / 20, read as an int by OnEvent), 0 at construction and in Touch

    DebugCachedCharacter m_joystickStick;                               // +0x1c "HUDelements.controls.controls.Joystick.stick"
    DebugCachedCharacter m_joystick;                                    // +0x4c "HUDelements.controls.controls.Joystick"
    // Pointer position in screen pixels, -1 when none. Set from the mouse and touch events, read by Update.
    std::int32_t m_pointerX;                                            // +0x7c
    std::int32_t m_pointerY;                                            // +0x80
    bool unk_84;                                                        // +0x84 set by OnEvent, cleared by Update, blocks onEvent(IEvent)
    uint8_t pad_85[3];                                                  // +0x85 .. +0x87
    DebugCachedCharacter m_btnInteract;                                 // +0x88 "HUDelements.controls.controls.btn_interact"
    DebugCachedCharacter m_pinch;                                       // +0xb8 "pinch"
    DebugCachedCharacter m_btnPotion;                                   // +0xe8 "HUDelements.HealthBars.btn_potion"
    DebugCachedCharacter m_btnSkill1;                                   // +0x118 "HUDelements.controls.controls.btn_skill1"
    DebugCachedCharacter m_btnSkill2;                                   // +0x148 "HUDelements.controls.controls.btn_skill2"
    DebugCachedCharacter m_btnSkill3;                                   // +0x178 "HUDelements.controls.controls.btn_skill3"
    DebugCachedCharacter m_btnSpell;                                    // +0x1a8 "HUDelements.controls.controls.btn_spell"
    DebugCachedCharacter m_btnCharacterMenu;                            // +0x1d8 "HUDelements.btn_charactermenu"
    DebugCachedCharacter m_btnMainMenu;                                 // +0x208 "HUDelements.btn_mainmenu"
    DebugCachedCharacter m_btnItunes;                                   // +0x238 "HUDelements.itunes_controls.btn_itunes"
    DebugCachedCharacter m_btnItunesPlay;                               // +0x268 "HUDelements.itunes_controls.itunes_bar.btn_play"
    DebugCachedCharacter m_btnItunesPause;                              // +0x298 "HUDelements.itunes_controls.itunes_bar.btn_pause"
    DebugCachedCharacter m_btnItunesNext;                               // +0x2c8 "HUDelements.itunes_controls.itunes_bar.btn_next"
    DebugCachedCharacter m_btnItunesPrevious;                           // +0x2f8 "HUDelements.itunes_controls.itunes_bar.btn_previous"
    DebugCachedCharacter m_btnItunesPlaylist;                           // +0x328 "HUDelements.itunes_controls.itunes_bar.btn_playlist"
    DebugCachedCharacter m_btnFastTravelMenu;                           // +0x358 "LocationsMenu.btn_FastTravel"
    DebugCachedCharacter m_currentRoot;                                 // +0x388 the root that the other RefreshCache calls search under
    // Second copy of the layout elements. SetHUDPos and SaveHUDPos place the m_pos* ones (+0x3b8 .. +0x568);
    // the custom and travel buttons that follow are refreshed alongside them.
    DebugCachedCharacter m_posBtnSpell;                                // +0x3b8 "HUDelements.controls.controls.btn_spell"
    DebugCachedCharacter m_posBtnSkill1;                                // +0x3e8 "HUDelements.controls.controls.btn_skill1"
    DebugCachedCharacter m_posBtnSkill2;                                // +0x418 "HUDelements.controls.controls.btn_skill2"
    DebugCachedCharacter m_posBtnSkill3;                                // +0x448 "HUDelements.controls.controls.btn_skill3"
    DebugCachedCharacter m_posBtnCharacterMenu;                         // +0x478 "HUDelements.btn_charactermenu"
    DebugCachedCharacter m_posBtnMainMenu;                              // +0x4a8 "HUDelements.btn_mainmenu"
    DebugCachedCharacter m_posHealthBar;                                // +0x4d8 "HUDelements.HealthBars.player"
    DebugCachedCharacter m_posBtnPotion;                                // +0x508 "HUDelements.HealthBars.btn_potion"
    DebugCachedCharacter m_posBtnItunes;                                // +0x538 "HUDelements.itunes_controls.btn_itunes"
    DebugCachedCharacter m_posItunesControls;                           // +0x568 "HUDelements.itunes_controls"
    DebugCachedCharacter m_btnCustomReset;                              // +0x598 "btn_MENU_CUSTOM_RESET"
    DebugCachedCharacter m_btnCustomSave;                               // +0x5c8 "btn_MENU_CUSTOM_SAVE"
    DebugCachedCharacter m_btnFastTravel;                               // +0x5f8 "btn_FastTravel"
    DebugCachedCharacter m_btnLocTravel;                                // +0x628 "btn_LocTravel"

    // The HUD MenuFX. The cached elements are looked up in it, and the ctor leaves it null.
    MenuFX* m_menu;                                                     // +0x658
    // Direction of the joystick head-towards command, normalized by OnEvent, scaled by m_moveScale in Update.
    float m_direction[3];                                               // +0x65c x, y, z
    float m_moveScale;                                                  // +0x668
    bool m_customizing;                                                 // +0x66c set by BeginCustom, cleared by RefreshHUD
    bool m_defaultsCaptured;                                            // +0x66d the first m_defaultWorldA block is filled
    bool m_altDefaultsCaptured;                                         // +0x66e the second m_defaultWorldB block is filled
    bool m_hasClassicPos;                                               // +0x66f m_classicPos holds a saved layout
    bool m_hasStylePos;                                                 // +0x670 m_stylePos holds a saved layout
    uint8_t pad_671[3];                                                 // +0x671 .. +0x673
    // Raw 32-bit words copied from the world matrices of the cached elements (x at +8, y at +20), 22 each.
    std::uint32_t m_defaultWorldA[22];                                  // +0x674
    std::uint32_t m_defaultWorldB[22];                                  // +0x6cc
    // Saved layouts of 11 buttons, (x, y) each, in the order SetHUDPos reads them. SaveHUDPos fills m_classicPos
    // when HUDStyle is unset and m_stylePos when it is set.
    float m_classicPos[11][2];                                          // +0x724
    float m_stylePos[11][2];                                            // +0x77c
};
