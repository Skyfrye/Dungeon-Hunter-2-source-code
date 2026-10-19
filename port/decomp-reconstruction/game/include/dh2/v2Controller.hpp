// v2Controller: command layer between an input source (v2EmuController, v2GamepadController, v2HudController)
// and the v2Controllable it drives. Each Cmd_* forwards to the matching Ctrl_* slot of m_controllable, unless
// the controller is blocked: every Cmd_* except Cmd_Kill and Cmd_OpenIGM first tests m_blocked (+0x08) and the
// global s_blocked, and the flag at +0x09 overrides both. Cmd_Kill and Cmd_OpenIGM forward unconditionally (asm verified).
// Original 32-bit size 0x10 (16), the size of the v2HudController allocation, which adds no members.
// Reconstructed from libDungeonHunter2.so: the derived ctors write these fields inline (no standalone base ctor
// symbol), Cmd_* at 0x4051a8..0x405b04, the empty Update at 0x3a2f44, destructors at 0x3a2f40 / 0x3a393c.
#pragma once

#include <cstdint>

#include "core-platform/deps/game_types.hpp"

class v2Controllable;
class Character;
class GameObject;

class v2Controller {
public:
    // No standalone symbol: each derived ctor writes these fields inline.
    explicit v2Controller(v2Controllable* controllable);

    virtual ~v2Controller();                                            // 0x3a2f40 (D1), 0x3a393c (D0)
    virtual void Update();                                              // 0x3a2f44 empty in the original

    // Commands. Each one is a thin forward to the controllable, gated by the block flags above.
    void Cmd_Click(const Point3D<float>& pos, bool held);               // 0x4051a8, forwards to Ctrl_Click
    void Cmd_RotateBy(float angle);                                     // 0x405204
    void Cmd_LookAt(const Point3D<float>& pos);                         // 0x405260
    void Cmd_LookAt(GameObject* target);                                // 0x4052bc
    void Cmd_WarpTo(const Point3D<float>& pos);                         // 0x405318
    void Cmd_HeadTowards(const Point3D<float>& pos);                    // 0x405374
    void Cmd_HeadTowards(GameObject* target);                           // 0x4053d0
    void Cmd_HeadTo(const Point3D<float>& pos);                         // 0x40542c
    void Cmd_HeadTo(GameObject* target);                                // 0x405488
    void Cmd_MoveTo(const Point3D<float>& pos);                         // 0x4054e4
    void Cmd_MoveTo(GameObject* target);                                // 0x405540
    void Cmd_Stop();                                                    // 0x40559c, forwards to Ctrl_Stop (slot +0x34)
    void Cmd_BeginCast(bool primary);                                   // 0x4055f8
    void Cmd_EndCast(bool primary);                                     // 0x405654
    void Cmd_UsePotion();                                               // 0x4056b0
    void Cmd_Kill(GameObject* killer, bool silent);                     // 0x40570c
    void Cmd_OpenIGM();                                                 // 0x405728
    void Cmd_Zoom(float amount);                                        // 0x405744
    void Cmd_ResetZoom();                                               // 0x405760
    void Cmd_TranslateMapCam(float dx, float dy);                       // 0x40577c
    void Cmd_DropObject();                                              // 0x405798
    void Cmd_UseOOI(GameObject* target);                                // 0x4057fc
    void Cmd_EndSkill(unsigned int skill);                              // 0x405954
    void Cmd_BeginSkill(unsigned int skill);                            // 0x405a20
    void Cmd_Attack(GameObject* target);                                // 0x405b04

    // Global block flag shared by every controller. Not part of the 16-byte object.
    static bool s_blocked;

    // Object occupies +0x00 .. +0x0f (16 bytes); the vptr is at +0x00.
    v2Controllable* m_controllable;                                     // +0x04 the object the Cmd_* methods drive
    bool m_blocked;                                                     // +0x08 per-controller block, read by every Cmd_*
    bool unk_009;                                                       // +0x09 when set, Cmd_* run even while blocked (name: m_bypassBlock;
                                                                        //       gate is unk_009 || (!s_blocked && !m_blocked), as in game-anim v2Controller-227be4-1)
    bool unk_00a;                                                       // +0x0a written 0 by every ctor; read by the online branches of Cmd_BeginSkill, Cmd_EndSkill, Cmd_UseOOI, Cmd_Attack
    uint8_t pad_00b[1];                                                 // +0x0b
    Character* m_character;                                             // +0x0c Character that skill and potion input acts on
};
