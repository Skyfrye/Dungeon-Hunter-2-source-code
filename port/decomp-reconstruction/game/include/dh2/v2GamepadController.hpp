// v2GamepadController: gamepad input controller. Update() reads the pad selected by m_padIndex each frame,
// applies the camera-relative transform and sends the result through v2Controller's Cmd_* methods.
// Original 32-bit size 0x20 (32), from operator new(32) in the class facts.
// Reconstructed from libDungeonHunter2.so: ctor 0x406978 / 0x406a64 (zeroes +0x14..+0x1c), Update 0x406c2c,
// dtors 0x406920 / 0x406924 / 0x40695c.
#pragma once

#include "core-platform/deps/game_types.hpp"
#include "dh2/v2Controller.hpp"

class v2Controllable;

class v2GamepadController : public v2Controller {
public:
    v2GamepadController(v2Controllable* controllable, int padIndex);    // 0x406978 (C1), 0x406a64 (C2)
    ~v2GamepadController() override;                                    // 0x406920 (D2), 0x406924 (D1), 0x40695c (D0)

    void Update() override;                                             // 0x406c2c

    // v2Controller occupies +0x00 .. +0x0f.
    int m_padIndex;                                                     // +0x10 gamepad index from the ctor. Below zero selects the first connected pad
    Point3D<float> unk_014;                                             // +0x14 point zeroed by the ctor. Update compares it with the new point (squared distance > 0.0001) and clears it in one branch
};
