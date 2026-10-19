// GamepadTweaker: a CTweakable that exposes the raw gamepad button bindings (13 buttons) to the debug tweaker.
// The raw values are registered by name ("btn_cross" ... "btn_power") and loaded from
// data/tweaker/player_light.tweaker_xml; onSetValue copies them into the mapped array, and
// TranslateButton maps a Gamepad::Button through that array.
// Original 32-bit size 0xe8 (232): operator new(0xe8) for Application::m_gamepadTweaker (+0x68).
// The base glitch::debugger::CTweakable occupies +0x00 .. +0x7b, so the first member sits at +0x7c.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x32f074, dtor 0x404b4c / 0x404b80).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/debugger/CTweakable.hpp"  // glitch::debugger::CTweakable (canonical, glitch-scene-collada-gui)

class GamepadTweaker : public glitch::debugger::CTweakable {
public:
    // Index order of the raw and mapped button arrays. The same order is used by the registered names.
    enum ButtonSlot {
        BUTTON_CROSS = 0,
        BUTTON_CIRCLE = 1,
        BUTTON_SQUARE = 2,
        BUTTON_TRIANGLE = 3,
        BUTTON_L1 = 4,
        BUTTON_L2 = 5,
        BUTTON_L3 = 6,
        BUTTON_R1 = 7,
        BUTTON_R2 = 8,
        BUTTON_R3 = 9,
        BUTTON_START = 10,
        BUTTON_SELECT = 11,
        BUTTON_POWER = 12,
        BUTTON_COUNT = 13,
    };

    GamepadTweaker();                                                   // 0x32f074
    ~GamepadTweaker() override;                                         // 0x404b4c (D1), 0x404b80 (D0)

    // Overrides of CTweakable slots, in vtable order. Slots +0x08 .. +0x10 come from CTweakable.
    void onSetValue(const std::string& name) override;                  // slot 0x14: 0x40470c, forwards to UpdateButtonMappings

    void UpdateButtonMappings();                                        // 0x404698 copies every raw value into m_mappedButtons
    // Maps a Gamepad::Button id to its mapped value in m_mappedButtons. The first argument selects one of two
    // id tables (0 and 1); the decompile shows the tables differ only in which ids they list. An id that is
    // not listed is returned unchanged. The direction meaning is not recovered (open question). 0x404710.
    int TranslateButton(int direction, int button);                     // Gamepad::Button in the original

    // Raw values, registered with CTweakable::registerVariable in this order (zeroed in the ctor).
    int m_btn_cross;                                                    // +0x7c "btn_cross"
    int m_btn_circle;                                                   // +0x80 "btn_circle"
    int m_btn_square;                                                   // +0x84 "btn_square"
    int m_btn_triangle;                                                 // +0x88 "btn_triangle"
    int m_btn_l_1;                                                      // +0x8c "btn_l_1"
    int m_btn_l_2;                                                      // +0x90 "btn_l_2"
    int m_btn_l_3;                                                      // +0x94 "btn_l_3"
    int m_btn_r_1;                                                      // +0x98 "btn_r_1"
    int m_btn_r_2;                                                      // +0x9c "btn_r_2"
    int m_btn_r_3;                                                      // +0xa0 "btn_r_3"
    int m_btn_start;                                                    // +0xa4 "btn_start"
    int m_btn_select;                                                   // +0xa8 "btn_select"
    int m_btn_power;                                                    // +0xac "btn_power"
    uint8_t pad_b0[4];                                                  // +0xb0 the dword at original index 44: the ctor leaves it untouched

    // Mapped values: m_mappedButtons[i] = raw value of the same slot, written by UpdateButtonMappings.
    // Zeroed in the ctor. Element i sits at +0xb4 + 4 * i.
    int m_mappedButtons[BUTTON_COUNT];                                  // +0xb4 .. +0xe7
};
