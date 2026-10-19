// Gamepad: one controller slot of InputManagerWin32 (four, in place at +0xe50 of that object, stride 0x75c).
// Derives from InputDevice with type 2 (TYPE_GAMEPAD). UpdateFrame copies each channel's value and calibration
// into its previous_* fields, sets the threshold flag, and runs the stick logic over axes 0..7.
// Original 32-bit size 0x75c (1884).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x34cd0c / 0x34ce88, UpdateFrame 0x34d124).
#pragma once

#include <cstdint>

#include "dh2/InputDevice.hpp"
#include "dh2/Point3D.hpp"

class Gamepad : public InputDevice {
public:
    // One input channel, 32 bytes. The constructor sets value, minimum, previous and previous_minimum to 0,
    // maximum and previous_maximum to 1.0, and everything else to 0. Keyboard::Channel and Mouse::Channel have the
    // same layout. The name is ours: the original has no symbol for the element type.
    struct Channel {
        float value;                                                    // +0x00 raw value, set outside UpdateFrame, read as float by the stick code
        float minimum;                                                  // +0x04 range minimum, set outside UpdateFrame
        float maximum;                                                  // +0x08 range maximum, set outside UpdateFrame (the stick code divides by maximum - minimum)
        float previous;                                                 // +0x0c value at the previous UpdateFrame (copied from value)
        int32_t unk_10;                                                 // +0x10 not read or written by UpdateFrame
        float previous_minimum;                                         // +0x14 minimum at the previous UpdateFrame
        float previous_maximum;                                         // +0x18 maximum at the previous UpdateFrame
        bool previous_above_threshold;                                  // +0x1c previous >= (previous_maximum + previous_minimum + 1) * 0.5, from before the copies
        uint8_t pad_1d[3];                                              // +0x1d
    };

    // Gamepad::Button, the id type that GamepadTweaker::TranslateButton takes. Its values are not recovered.
    enum Button : int;

    Gamepad();                                                          // 0x34cd0c (C2), 0x34ce88 (C1): InputDevice(this, 2), then the channels, vectors and flags
    void UpdateFrame(float dt) override;                                // vtable slot 0x00: 0x34d124, the only slot of the Gamepad vtable
    void ToggleVibration();                                             // 0x34d004 flips the static s_vibration
    bool IsVibrationEnabled();                                          // 0x34d02c returns s_vibration

    // Static, not part of the object. The byte is read and written by the two functions above (LDRB / STRB).
    // Its initial value is 1: the .data byte at 0x999744 is 1, so IsVibrationEnabled is true until the first toggle.
    // The definition (= 1) is in game-app/src/g1-game-app-pack0-8e4185-0.cpp.
    static uint8_t s_vibration;                                         // Gamepad::s_vibration

    // InputDevice occupies +0x00 .. +0x0b.
    // The threshold groups. Control k's value, lo, hi and pressed flag are at original +0x18+0x20k, +0x20+0x20k,
    // +0x24+0x20k and +0x28+0x20k, which are m_buttons[k].previous, previous_minimum, previous_maximum and
    // previous_above_threshold. GSTest reads k=0 (+0x18..+0x28). Control 182 is k=22 (+0x2d8..+0x2e8). The 26
    // flagged groups are k = 0..6, 8, 10..15, 19, 22..24, 37..44.
    Channel m_buttons[45];                                              // +0x0c .. +0x5ab, the threshold channels (ids not recovered)
    Channel m_axes[9];                                                  // +0x5ac .. +0x6cb; axes 0..7 form four (x, y) stick pairs
    Point3D<float> m_firstVectors[4];                                   // +0x6cc .. +0x6fb stick direction of the current press, zeroed once the press is over 200 clock ticks old
    int32_t m_firstStamps[4];                                           // +0x6fc .. +0x70b clock() when the press began, 0 while the stick is at rest
    Point3D<float> m_repeatVectors[4];                                  // +0x70c .. +0x73b direction kept after the stick returns to rest, zeroed when its window ends
    int32_t m_repeatStamps[4];                                          // +0x73c .. +0x74b clock() when the repeat window began, 0 when none is open
    uint8_t unk_74c;                                                    // +0x74c not read or written by UpdateFrame, zeroed by the constructor
    uint8_t pad_74d[3];                                                 // +0x74d
    int32_t unk_750;                                                    // +0x750 zeroed by the constructor
    int32_t unk_754;                                                    // +0x754 set to 128 by the constructor
    bool m_connected;                                                   // +0x758 "connected": read by InputManager::GetConnectedGamepadCount and GetFirstConnectedGamepad
    uint8_t pad_759[3];                                                 // +0x759
};
