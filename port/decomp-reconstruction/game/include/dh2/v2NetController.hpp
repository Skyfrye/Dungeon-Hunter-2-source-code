// v2NetController: a v2Controller on a remote peer that applies the controller actions received as
// CMsgControllerAction network messages to its v2Controllable (attack, skill, cast and item commands).
// Original 32-bit size unknown: the ctor and Update touch only the v2Controller base (+0x00 .. +0x0f).
// The vtable (_ZTV15v2NetController, 20 bytes) has dtors and Update in slots 0 to 2.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4091f4 / 0x4092c8).
#pragma once

#include "dh2/v2Controller.hpp"

class v2Controllable;

class v2NetController : public v2Controller {
public:
    explicit v2NetController(v2Controllable* controllable);              // 0x4091f4 / 0x4092c8
    ~v2NetController() override;                                        // 0x4091d0, 0x4091d4, 0x4091d8

    void Update() override;                                             // slot 0x08: 0x40939c, dispatches CMsgControllerAction

    // No member beyond the v2Controller base is written by the ctor or read by Update.
};
