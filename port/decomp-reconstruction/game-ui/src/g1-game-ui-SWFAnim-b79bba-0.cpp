// SWFAnim bodies, batch g1-game-ui-SWFAnim-b79bba-0 (the whole class, 14 addresses).
// One pooled gameswf character that plays a menu animation. The anim character (m_anim) and the text character
// (m_text) are both DebugCachedCharacter, so each can be found again by name after its weak pointer dies.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the ARM assembly
// (decomp_asm.py). Offsets in comments are the original 32-bit offsets; the code never does pointer arithmetic
// on them.
//
// The C1 and C2 constructors, and the D1 and D2 destructors, have identical bodies, so each pair is one C++
// definition. The D0 deleting destructor (0x496ea4) is compiler generated and is not written.
//
// Virtual calls on gameswf::character, resolved from the binary's vtable (decomp_vtable.py):
//   +0x54 as_object::get_root() const, +0x94 character::set_play_state, +0x98 character::get_play_state() const.
// The byte at +0x9b of gameswf::character (Hex-Rays +155) is character::m_visible (the InfoHUDManager precedent).
// The weak parent of a character (+0x3c proxy, +0x40 cached pointer) is character::m_parent.

#include "dh2/global/screen_size.hpp"
#include "dh2/SWFAnim.hpp"

#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/scene_nodes.hpp"  // GetScreenPosFromWorldPos (0x50e830)
#include "gameswf/gameswf_character.h"  // gameswf::character: m_visible, m_parent, get_root, play state
#include "glitch-shared/glitch_core.hpp"  // glitch::core::vector3d<T>, glitch::core::position2d<T>
#include "vendor-gameswf/smart_ptr_proxy.hpp"  // gameswf::smart_ptr_proxy: get_proxy(), operator=(nullptr)

// 0x496cc4 _ZN7SWFAnim10SetVisibleEb SWFAnim::SetVisible(bool)
void SWFAnim::SetVisible(bool visible) {
    m_anim.GetChar()->m_visible = visible;
}

// 0x496cdc _ZN7SWFAnim9IsVisibleEv SWFAnim::IsVisible()
bool SWFAnim::IsVisible() {
    // The anim character is resolved (GetChar runs its assert) and the result is dropped. The original returns 1.
    m_anim.GetChar();
    return true;
}

// 0x496cf0 _ZN7SWFAnim13IsAnimPlayingEv SWFAnim::IsAnimPlaying()
bool SWFAnim::IsAnimPlaying() {
    gameswf::character* anim = m_anim.GetChar();
    // Slot +0x98, get_play_state(). The anim is playing unless its state is STOP (1).
    return anim->get_play_state() != gameswf::character::STOP;
}

// 0x496d14 _ZN7SWFAnim8PlayAnimEPKc SWFAnim::PlayAnim(char const*)
bool SWFAnim::PlayAnim(const char* name) {
    int result = m_menu->RenderFX::PlayAnim(m_anim.GetChar(), name, 0);
    if (result) {
        // Slot +0x94, set_play_state(PLAY), on the anim character looked up again.
        m_anim.GetChar()->set_play_state(gameswf::character::PLAY);
        return true;
    }
    // The original returns the zero result here, which is false.
    return false;
}

// 0x496d68 _ZN7SWFAnim11SetPositionEii SWFAnim::SetPosition(int, int)
void SWFAnim::SetPosition(int x, int y) {
    m_menu->RenderFX::SetPosition(m_anim.GetChar(), x, y);
}

// 0x496d9c _ZN7SWFAnim13SetPosition3DERK7Point3DIfE SWFAnim::SetPosition3D(Point3D<float> const&)
void SWFAnim::SetPosition3D(const Point3D<float>& position) {
    // The three floats are passed to the projection as a vector3d<float> (the bits are unchanged). The projection
    // writes the screen position as a position2d<int> (x at +0x00, y at +0x04). The result is ignored.
    glitch::core::vector3d<float> worldPos{position.X, position.Y, position.Z};
    glitch::core::position2d<int> screenPos{};
    GetScreenPosFromWorldPos(worldPos, screenPos);

    // Each screen coordinate is scaled by the inverse pixel scale of the anim character's root (slot +0x54, get_root),
    // read once per axis as in the original. The float product is truncated to int.
    float invScaleX = GameSWFUtils::GetInvPixelScaleX(m_anim.GetChar()->get_root());
    float invScaleY = GameSWFUtils::GetInvPixelScaleY(m_anim.GetChar()->get_root());
    SetPosition(static_cast<int>(invScaleX * static_cast<float>(screenPos.X - FlashBoxOffsetX(m_anim.GetChar()->get_root()))),
                static_cast<int>(invScaleY * static_cast<float>(screenPos.Y - FlashBoxOffsetY(m_anim.GetChar()->get_root()))));
}

// 0x496e68 _ZN7SWFAnimD1Ev SWFAnim::~SWFAnim()  (D1)
// 0x496ec0 _ZN7SWFAnimD2Ev SWFAnim::~SWFAnim()  (D2, the same body)
SWFAnim::~SWFAnim() {
    // The vptr is reset implicitly. The members are destroyed in reverse declaration order, so m_text is released
    // before m_anim, as the original calls ~DebugCachedCharacter on +0x3c and then +0x0c.
}

// 0x496efc _ZN7SWFAnim7SetTextEPKc SWFAnim::SetText(char const*)
void SWFAnim::SetText(const char* text) {
    if (m_text.m_character == nullptr) {
        return;
    }
    if (m_text.m_characterProxy.get_proxy()->is_alive()) {
        m_menu->RenderFX::FormatHTML(m_text.GetChar(), "%s", text);
    } else {
        // The proxy is dropped (smart_ptr_proxy::operator= frees it when its count reaches zero) and the cache is cleared.
        m_text.m_characterProxy = nullptr;
        m_text.m_character = nullptr;
    }
}

// 0x496f7c _ZN7SWFAnim8BindTextEPKc SWFAnim::BindText(char const*)
void SWFAnim::BindText(const char* name) {
    if (m_text.m_character != nullptr) {
        if (m_text.m_characterProxy.get_proxy()->is_alive()) {
            // A live text character is kept; nothing is re-bound.
            return;
        }
        m_text.m_characterProxy = nullptr;
        m_text.m_character = nullptr;
    }
    m_text.RefreshCache(name, m_menu, m_anim.GetChar());
}

// 0x496ff4 _ZN7SWFAnim12SetTextColorEjj SWFAnim::SetTextColor(unsigned int, unsigned int)
void SWFAnim::SetTextColor(unsigned int first, unsigned int second) {
    if (m_text.m_character == nullptr) {
        return;
    }
    if (m_text.m_characterProxy.get_proxy()->is_alive()) {
        // The original passes the second value before the first (RenderFX::SetColorTransform(character, second, first)).
        m_menu->RenderFX::SetColorTransform(m_text.GetChar(), second, first);
    } else {
        m_text.m_characterProxy = nullptr;
        m_text.m_character = nullptr;
    }
}

// 0x497070 _ZN7SWFAnimC1EP6MenuFXPN7gameswf9characterE SWFAnim::SWFAnim(MenuFX*, gameswf::character*)  (C1)
// 0x497128 _ZN7SWFAnimC2EP6MenuFXPN7gameswf9characterE SWFAnim::SWFAnim(MenuFX*, gameswf::character*)  (C2, the same body)
SWFAnim::SWFAnim(MenuFX* menu, gameswf::character* character) : m_menu(menu) {
    // The members m_anim and m_text are default constructed first (DebugCachedCharacter 0x41aeec), as in the original.
    m_free = true;  // +0x04: the anim starts out free in its bank
    // The weak parent of the source character is read through weak_ptr::get_ptr. A dead parent is dropped there and
    // comes back null, which is the original's clear of the weak proxy at +0x3c and the cached pointer at +0x40.
    gameswf::character* parent = character->m_parent.get_ptr();
    m_anim.RefreshCache(character, m_menu, parent);
}
