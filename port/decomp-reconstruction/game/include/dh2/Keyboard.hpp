// Keyboard: the keyboard device of InputManagerWin32 (m_keyboard at +0x18 of that object). Derives from InputDevice
// with type 1 (TYPE_KEYBOARD). One 32-byte channel per key, 97 in all, updated by UpdateFrame.
// Original 32-bit size 0xc2c (3116).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x34cc1c / 0x34cc94, UpdateFrame 0x34c91c).
#pragma once

#include <cstdint>

#include "dh2/InputDevice.hpp"

class Keyboard : public InputDevice {
public:
    // Same layout as Gamepad::Channel (32 bytes), and the same constructor defaults (maximum and previous_maximum 1.0).
    // Nested here because the original has no shared element type for the three devices. The name is ours.
    struct Channel {
        float value;                                                    // +0x00 raw value, set outside UpdateFrame, read as float
        float minimum;                                                  // +0x04 range minimum, set outside UpdateFrame
        float maximum;                                                  // +0x08 range maximum, set outside UpdateFrame
        float previous;                                                 // +0x0c value at the previous UpdateFrame (copied from value)
        int32_t unk_10;                                                 // +0x10 not read or written by UpdateFrame
        float previous_minimum;                                         // +0x14 minimum at the previous UpdateFrame
        float previous_maximum;                                         // +0x18 maximum at the previous UpdateFrame
        bool previous_above_threshold;                                  // +0x1c previous >= (previous_maximum + previous_minimum + 1) * 0.5, from before the copies
        uint8_t pad_1d[3];                                              // +0x1d
    };

    Keyboard();                                                         // 0x34cc1c (C2), 0x34cc94 (C1): InputDevice(this, 1), then the channels
    void UpdateFrame(float dt) override;                                // vtable slot 0x00: 0x34c91c, the only slot of the Keyboard vtable

    // InputDevice occupies +0x00 .. +0x0b.
    Channel unk_0c[97];                                                 // +0x0c .. +0xc2b, one channel per key (key ids not recovered)
};
