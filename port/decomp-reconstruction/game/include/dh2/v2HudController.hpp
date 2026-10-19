// v2HudController: a v2Controller with no members of its own. Its vtable replaces only the destructors, and
// Update is inherited from v2Controller. The class name suggests HUD input; the binary shows no more than that.
// Original 32-bit size 0x10 (16), from operator new(16) in the class facts.
// Reconstructed from libDungeonHunter2.so: ctor 0x408930 / 0x408a04, dtors 0x4088ec / 0x4088f0 / 0x408914.
#pragma once

#include "dh2/v2Controller.hpp"

class v2Controllable;

class v2HudController : public v2Controller {
public:
    explicit v2HudController(v2Controllable* controllable);             // 0x408930 (C1), 0x408a04 (C2)
    ~v2HudController() override;                                        // 0x4088ec (D2), 0x4088f0 (D1), 0x408914 (D0)
};
