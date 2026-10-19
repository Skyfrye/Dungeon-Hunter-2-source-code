// SWFAnim: one pooled gameswf character that plays a menu animation. MenuFX owns the movie, and
// SWFAnimManager hands anims out (GrabAnim) and takes them back (DropAnim). The anim character and the
// text character are both cached as DebugCachedCharacter, so each can be found again by name after its
// weak pointer dies.
// Original 32-bit size 0x6c (108, operator new(0x6c) in SWFAnimManager::ExtendBank).
// Offsets in comments are original 32-bit ARM offsets (host pointers are wider).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x497070, 0x497128).
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"

class MenuFX;
template <typename T> struct Point3D;
namespace gameswf {
class character;
}  // namespace gameswf

class SWFAnim {
public:
    SWFAnim(MenuFX* menu, gameswf::character* character);                // 0x497070 / 0x497128
    virtual ~SWFAnim();                                                  // slot +0x00: 0x496e68 / 0x496ec0 (D1/D2), +0x04: 0x496ea4 (D0, CustomFree)

    void SetVisible(bool visible);                                       // 0x496cc4 writes the visible byte of the anim character
    bool IsVisible();                                                    // 0x496cdc resolves the anim character and returns true
    bool IsAnimPlaying();                                                // 0x496cf0
    bool PlayAnim(const char* name);                                     // 0x496d14 plays a named label on the anim character
    void SetPosition(int x, int y);                                      // 0x496d68
    void SetPosition3D(const Point3D<float>& position);                  // 0x496d9c converts a world position to screen space
    void SetText(const char* text);                                      // 0x496efc formats HTML into the bound text character
    void BindText(const char* name);                                     // 0x496f7c re-finds the text character by name
    void SetTextColor(unsigned int first, unsigned int second);          // 0x496ff4 forwards both values to RenderFX::SetColorTransform (second, first)

    // vptr at +0x00 (implicit, from the virtual destructor).
    bool m_free;                                                         // +0x04 1 while the anim sits free in its bank (ctor and DropAnim set it), 0 while GrabAnim has handed it out
    uint8_t pad_05[3];                                                   // +0x05 .. +0x07
    MenuFX* m_menu;                                                      // +0x08 owning menu, passed to RenderFX calls
    DebugCachedCharacter m_anim;                                         // +0x0c anim character, refreshed from the character given to the ctor (48 bytes)
    DebugCachedCharacter m_text;                                         // +0x3c text character, refreshed by name in BindText (48 bytes); its m_characterProxy and m_character sit at +0x64 and +0x68
};
