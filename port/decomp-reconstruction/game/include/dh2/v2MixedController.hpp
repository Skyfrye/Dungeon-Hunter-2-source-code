// v2MixedController: a v2Controller that drives a v2Controllable from mixed input and forwards every
// command to the sub-controllers it holds in m_controllers. Its Update() runs each of them in turn.
// Original 32-bit size 0x24 (36): v2Controller at +0x00 (16 bytes), the v2Controllable interface at +0x10
// (8 bytes), and the m_controllers vector at +0x18 (12 bytes). Its vtable (_ZTV17v2MixedController, 232 bytes)
// has a primary table (dtors, Update, the 24 Ctrl_ slots) and a secondary v2Controllable table at +0x10.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x408dd8 / 0x408ecc).
#pragma once

#include <vector>

#include "core-platform/deps/game_types.hpp"

#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

class GameObject;

class v2MixedController : public v2Controller, public v2Controllable {
public:
    explicit v2MixedController(v2Controllable* controllable);           // 0x408dd8 / 0x408ecc
    ~v2MixedController() override;                                      // 0x408cfc, 0x408dbc, 0x409118

    // Overrides of v2Controller and v2Controllable slots, in primary vtable order.
    void Update() override;                                             // slot 0x08: 0x408ad8, runs every m_controllers entry
    void Ctrl_Click(const Point3D<float>& pos, bool held) override;     // slot 0x0c: 0x408c68
    void Ctrl_RotateBy(float angle) override;                           // slot 0x10: 0x408c5c
    void Ctrl_LookAt(const Point3D<float>& pos) override;               // slot 0x14: 0x408c50
    void Ctrl_LookAt(GameObject* target) override;                      // slot 0x18: 0x408c44
    void Ctrl_WarpTo(const Point3D<float>& pos) override;               // slot 0x1c: 0x408c38
    void Ctrl_HeadTowards(const Point3D<float>& pos) override;          // slot 0x20: 0x408c2c
    void Ctrl_HeadTowards(GameObject* target) override;                 // slot 0x24: 0x408c20
    void Ctrl_HeadTo(const Point3D<float>& pos) override;               // slot 0x28: 0x408c14
    void Ctrl_HeadTo(GameObject* target) override;                      // slot 0x2c: 0x408c08
    void Ctrl_MoveTo(const Point3D<float>& pos) override;               // slot 0x30: 0x408bfc
    void Ctrl_MoveTo(GameObject* target) override;                      // slot 0x34: 0x408bf0
    void Ctrl_Stop() override;                                          // slot 0x38: 0x408be4
    void Ctrl_Attack(GameObject* target) override;                      // slot 0x3c: 0x408bd8
    void Ctrl_BeginSkill(unsigned int skill) override;                  // slot 0x40: 0x408bcc
    void Ctrl_EndSkill(unsigned int skill) override;                    // slot 0x44: 0x408bc0
    void Ctrl_BeginCast(bool primary) override;                         // slot 0x48: 0x408bb0
    void Ctrl_EndCast(bool primary) override;                           // slot 0x4c: 0x408ba0
    void Ctrl_UsePotion() override;                                     // slot 0x50: 0x408b94
    void Ctrl_UseOOI(GameObject* target) override;                      // slot 0x54: 0x408b88
    void Ctrl_DropObject() override;                                    // slot 0x58: 0x408b7c
    void Ctrl_Kill(GameObject* killer, bool silent) override;           // slot 0x5c: 0x408b70
    void Ctrl_OpenIGM() override;                                       // slot 0x60: 0x408b64
    void Ctrl_Zoom(float amount) override;                              // slot 0x64: 0x408b58
    void Ctrl_ResetZoom() override;                                     // slot 0x68: 0x408b4c

    void AddController(v2Controller* controller);                       // 0x408fc0 appends to m_controllers

    // v2Controller occupies +0x00 .. +0x0f, v2Controllable occupies +0x10 .. +0x17.
    std::vector<v2Controller*> m_controllers;                           // +0x18 begin, +0x1c end, +0x20 end of storage
};
