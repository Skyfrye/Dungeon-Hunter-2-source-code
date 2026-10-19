// SWFAnimToolTip bodies, batch g1-game-ui-SWFAnimToolTip-7285c8-0 (the whole class, 11 addresses).
// The item tooltip: one SWFAnim grabbed from SWFAnimManager ("anim_item_info") that fades in, shows for a timed
// delay, then fades out and is given back to the manager. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so and checked against the ARM assembly (decomp_asm.py). Offsets in comments are the original
// 32-bit offsets; the code never does pointer arithmetic on them.
//
// The C1 and C2 constructors, and the D1 and D2 destructors, have identical bodies, so each pair is one C++
// definition. Singleton<SWFAnimManager>::s_inst is referenced here but not instantiated in game-app/src/Globals.cpp
// yet (SWFAnimManager has no constructor in the tree). Layout: the three members are declared in the owner header.

#include <cstdio>
#include <cstdlib>

#include "dh2/Application.hpp"
#include "dh2/SWFAnim.hpp"
#include "dh2/SWFAnimManager.hpp"
#include "dh2/SWFAnimToolTip.hpp"
#include "dh2/Singleton.hpp"

// gAssertLevel (libDungeonHunter2.so 0x99f914). core-platform/memory.hpp declares it too, but that header pulls in a
// glitch_core stand-in that clashes with the shared one, so it is declared here as FlashAnimManager does.
extern int gAssertLevel;

// 0x498f30 _ZN14SWFAnimToolTipC1Ev SWFAnimToolTip::SWFAnimToolTip()  (C1)
// 0x498ff4 _ZN14SWFAnimToolTipC2Ev SWFAnimToolTip::SWFAnimToolTip()  (C2, the same body)
SWFAnimToolTip::SWFAnimToolTip() {
    m_fadeTimer = 0;  // +0x00
    m_state = 0;      // +0x04 idle
    m_swfAnim = Singleton<SWFAnimManager>::s_inst.GrabAnim("anim_item_info");  // +0x08
    if (m_swfAnim == nullptr) {
        // ASSERT(m_swfAnim != 0). gAssertLevel 2 stops the program (the original stores to address 0, as
        // AnimatorBlender does with std::abort); 1 prints the message to stderr (stderr is _sF + 2 in the original).
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_swfAnim != 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SWFAnim\\SWFAnimTooltip.cpp", 13);
        }
    }
}

// 0x498dec _ZN14SWFAnimToolTipD1Ev SWFAnimToolTip::~SWFAnimToolTip()  (D1)
// 0x498e24 _ZN14SWFAnimToolTipD2Ev SWFAnimToolTip::~SWFAnimToolTip()  (D2, the same body)
SWFAnimToolTip::~SWFAnimToolTip() {
    // DropAnim is called even when no anim is held (the original has no null check here).
    Singleton<SWFAnimManager>::s_inst.DropAnim(m_swfAnim);
    m_swfAnim = nullptr;  // +0x08
}

// 0x498cdc _ZNK14SWFAnimToolTip9IsVisibleEv SWFAnimToolTip::IsVisible() const
bool SWFAnimToolTip::IsVisible() const {
    // The state is tested, not the anim: idle reports false even while an anim is still held.
    if (m_state != 0 && m_swfAnim != nullptr) {
        return m_swfAnim->IsVisible();
    }
    return false;
}

// 0x498d00 _ZN14SWFAnimToolTip10IsAnimOverEv SWFAnimToolTip::IsAnimOver()
bool SWFAnimToolTip::IsAnimOver() {
    // No null check, as in the original. The state machine only asks while an anim is held.
    return !m_swfAnim->IsAnimPlaying();
}

// 0x498d18 _ZN14SWFAnimToolTip8PlayAnimEPKc SWFAnimToolTip::PlayAnim(char const*)
bool SWFAnimToolTip::PlayAnim(const char* name) {
    return m_swfAnim->PlayAnim(name);
}

// 0x498d20 _ZN14SWFAnimToolTip9DoFadeOutEv SWFAnimToolTip::DoFadeOut()
// The Hex-Rays int return is the r0 value left by the PlayAnim tail call; the hook is void and nothing reads it.
void SWFAnimToolTip::DoFadeOut() {
    m_state = 3;
    PlayAnim("fade_out");
}

// 0x498d38 _ZN14SWFAnimToolTip7FadeOutEi SWFAnimToolTip::FadeOut(int)
void SWFAnimToolTip::FadeOut(int delay) {
    // Only while fading in (1) or shown (2), and only when the timer is not already running (it is 0 or less).
    if (static_cast<unsigned int>(m_state - 1) <= 1u && m_fadeTimer <= 0) {
        m_fadeTimer = delay;
        if (delay < 0) {
            DoFadeOut();
        }
    }
}

// 0x498d64 _ZN14SWFAnimToolTip6FadeInEv SWFAnimToolTip::FadeIn()
void SWFAnimToolTip::FadeIn() {
    // Starts from idle (0) or from fading out (3). A held anim is reused; otherwise one is grabbed.
    if (m_state == 0 || m_state == 3) {
        if (m_swfAnim == nullptr) {
            m_swfAnim = Singleton<SWFAnimManager>::s_inst.GrabAnim("anim_item_info");
        }
        m_state = 1;
        PlayAnim("fade_in");
        m_swfAnim->SetVisible(true);
    }
    m_fadeTimer = 0;  // always, even when the state was not idle or fading out
}

// 0x498e5c _ZN14SWFAnimToolTip6UpdateEv SWFAnimToolTip::Update()
void SWFAnimToolTip::Update() {
    switch (m_state) {
    case 0:  // idle: give a still-held anim back to the manager
        if (m_swfAnim != nullptr) {
            Singleton<SWFAnimManager>::s_inst.DropAnim(m_swfAnim);
            m_swfAnim = nullptr;
        }
        break;
    case 1:  // fading in: once the anim stops playing, show it for the timed delay
        if (IsAnimOver()) {
            PlayAnim("show");
            m_state = 2;
        }
        break;
    case 2:  // shown: count the timer down by the frame time, then fade out when it runs out
        if (m_fadeTimer > 0) {
            m_fadeTimer -= Singleton<Application>::s_inst.GetDt();
            if (m_fadeTimer <= 0) {
                DoFadeOut();
            }
        }
        break;
    case 3:  // fading out: once the anim stops playing, go idle
        if (IsAnimOver()) {
            m_state = 0;
        }
        break;
    default:
        break;
    }
}
