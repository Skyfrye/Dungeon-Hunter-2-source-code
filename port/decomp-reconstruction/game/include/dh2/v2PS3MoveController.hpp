// v2PS3MoveController: a v2Controller that reads a PlayStation 3 Move (or gamepad) for the controllable.
// Its Update() maps the analog stick and buttons to the v2Controller Cmd_ methods (head to, attack, use
// OOI, skills, potion, cast, open IGM).
// Original 32-bit size unknown: the ctor writes up to +0x1c, so the object is at least 0x20 bytes.
// The vtable (_ZTV19v2PS3MoveController, 20 bytes) has dtors and Update in slots 0 to 2.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4098d0 / 0x4099bc).
#pragma once

#include <cstdint>

#include "dh2/v2Controller.hpp"

class v2Controllable;

class v2PS3MoveController : public v2Controller {
public:
    v2PS3MoveController(v2Controllable* controllable, int gamepadIndex); // 0x4098d0 / 0x4099bc
    ~v2PS3MoveController() override;                                    // 0x4098ac, 0x4098b0, 0x4098b4

    void Update() override;                                             // slot 0x08: 0x409bd8

    // v2Controller occupies +0x00 .. +0x0f.
    int m_gamepadIndex;                                                 // +0x10 gamepad index, Update uses -1 for the first connected pad
    uint32_t unk_14;                                                    // +0x14 zeroed by the ctor, not read in Update
    uint32_t unk_18;                                                    // +0x18 zeroed by the ctor, not read in Update
    uint32_t unk_1c;                                                    // +0x1c zeroed by the ctor, not read in Update
};
