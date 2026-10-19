// Mouse: the mouse device of InputManagerWin32 (m_mouse at +0xc44 of that object). Derives from InputDevice.
// Two groups of eight 32-byte channels, +0x0c and +0x10c; UpdateFrame runs the same step over both groups.
// Original 32-bit size 0x20c (524).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x34cac4 / 0x34cb70, UpdateFrame 0x34c98c).
#pragma once

#include <cstdint>

#include "dh2/InputDevice.hpp"

class Mouse : public InputDevice {
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

    Mouse();                                                            // 0x34cac4 (C2), 0x34cb70 (C1): InputDevice(this, 1), then the channels
    void UpdateFrame(float dt) override;                                // vtable slot 0x00: 0x34c98c, the only slot of the Mouse vtable

    // InputDevice occupies +0x00 .. +0x0b. The constructor passes 1 to InputDevice, the value the Keyboard
    // constructor passes too, not the 0 that InputDevice.hpp infers for TYPE_MOUSE (open question).
    Channel unk_0c[8];                                                  // +0x0c .. +0x10b, first group of eight (not yet named)
    Channel unk_10c[8];                                                 // +0x10c .. +0x20b, second group of eight (not yet named)
};
