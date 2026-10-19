// SWFAnimManager: the bank of pooled SWFAnim objects, keyed by name. GrabAnim hands out a free anim from
// the named bank and grows the bank when none is free. ExtendBank creates anims from a named movie clip.
// DropAnim hides an anim and marks it free again. FlushAll deletes every anim. The global instance is
// Singleton<SWFAnimManager>::s_inst (not declared here).
// Original 32-bit size 0x18 (24): vptr plus the STLport map header (20 bytes).
// Offsets in comments are original 32-bit ARM offsets (host pointers and STL types are wider).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4971e0, 0x497228).
#pragma once

#include <map>
#include <string>

#include "dh2/VectorSet.hpp"

class MenuFX;
class SWFAnim;

class SWFAnimManager {
public:
    SWFAnimManager();                                                    // 0x4971e0 / 0x497228
    virtual ~SWFAnimManager();                                           // slot +0x00 / +0x04: 0x4975a8 (D1), 0x497628 (D2), 0x49760c (D0)

    SWFAnim* CloneAnim(const SWFAnim& anim);                             // 0x497270 stub, returns null; no direct callers (data reference only)
    void FlushBank(VectorSet<SWFAnim*>& bank);                           // 0x4973c8 deletes each anim in the bank and clears it
    void DropAnim(SWFAnim* anim);                                        // 0x497418 hides the anim and sets its free flag
    void FlushAll();                                                     // 0x4974f4 flushes every bank and empties the map
    SWFAnim* GrabAnim(const char* name, MenuFX* menu, int count);        // 0x498bcc count > 0 extends the bank when none is free
    SWFAnim* GrabAnim(const char* name);                                 // 0x498cb0 uses the HUD root of MenuManager and count 1
    SWFAnim* ExtendBank(const char* name, MenuFX* menu, int count);      // 0x498620 grows the bank to count anims, returns one of them

    // STLport std::map of bank name to anims. Header node at +0x04 .. +0x13 (color, parent, leftmost,
    // rightmost; the root is the parent word at +0x08), node count at +0x14.
    std::map<std::string, VectorSet<SWFAnim*>> m_banks;                  // +0x04 .. +0x17
};
