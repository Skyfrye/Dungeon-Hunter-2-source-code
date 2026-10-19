// v2Controllable: interface of an object that a v2Controller can command (Character derives from it at +0x374).
// MINIMAL header written by the Character agent because no other header existed: it lists only what the
// Character constructor and the vtable show. Original 32-bit size 8 (vptr + m_controller).
// Vtable (_ZTV14v2Controllable, 116 bytes): slots 0/1 destructors, then the 26 virtuals below in slot order.
#pragma once

#include "core-platform/deps/game_types.hpp"

class GameObject;
class v2Controller;

class v2Controllable {
public:
    v2Controllable();                                                   // 0x404db8 / 0x404de4
    virtual ~v2Controllable();                                          // slots 0/1

    virtual void Ctrl_Click(const Point3D<float>& pos, bool held);      // +0x08
    virtual void Ctrl_RotateBy(float angle);                            // +0x0c
    virtual void Ctrl_LookAt(const Point3D<float>& pos);                // +0x10
    virtual void Ctrl_LookAt(GameObject* target);                       // +0x14
    virtual void Ctrl_WarpTo(const Point3D<float>& pos);                // +0x18
    virtual void Ctrl_HeadTowards(const Point3D<float>& pos);           // +0x1c
    virtual void Ctrl_HeadTowards(GameObject* target);                  // +0x20
    virtual void Ctrl_HeadTo(const Point3D<float>& pos);                // +0x24
    virtual void Ctrl_HeadTo(GameObject* target);                       // +0x28
    virtual void Ctrl_MoveTo(const Point3D<float>& pos);                // +0x2c
    virtual void Ctrl_MoveTo(GameObject* target);                       // +0x30
    virtual void Ctrl_Stop();                                           // +0x34
    virtual void Ctrl_Attack(GameObject* target);                       // +0x38
    virtual void Ctrl_BeginSkill(unsigned int skill);                   // +0x3c
    virtual void Ctrl_EndSkill(unsigned int skill);                     // +0x40
    virtual void Ctrl_BeginCast(bool primary);                          // +0x44
    virtual void Ctrl_EndCast(bool primary);                            // +0x48
    virtual void Ctrl_UsePotion();                                      // +0x4c
    virtual void Ctrl_UseOOI(GameObject* target);                       // +0x50
    virtual void Ctrl_DropObject();                                     // +0x54
    virtual void Ctrl_Kill(GameObject* killer, bool silent);            // +0x58
    virtual void Ctrl_OpenIGM();                                        // +0x5c
    virtual void Ctrl_Zoom(float amount);                               // +0x60
    virtual void Ctrl_ResetZoom();                                      // +0x64
    virtual void Ctrl_TranslateMapCam(float dx, float dy);              // +0x68

    void SetController(v2Controller* controller);                       // v2Controllable::SetController

    // _vptr                                                            // +0x00
    v2Controller* m_controller;                                         // +0x04 Character allocates a 16-byte v2Controller in its ctor
};
