// SWFAnimToolTip: an item tooltip drawn as one SWFAnim grabbed from SWFAnimManager ("anim_item_info").
// It fades in, shows for a timed delay, then fades out and gives its anim back. It has no vtable.
// Original 32-bit size 0xc (12, operator new(12)).
// Offsets in comments are original 32-bit ARM offsets.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x498f30, 0x498ff4).
#pragma once

class SWFAnim;

class SWFAnimToolTip {
public:
    SWFAnimToolTip();                                                    // 0x498f30 / 0x498ff4 grabs the "anim_item_info" anim
    ~SWFAnimToolTip();                                                   // 0x498dec / 0x498e24 drops the anim back to the manager

    bool IsVisible() const;                                              // 0x498cdc
    bool IsAnimOver();                                                   // 0x498d00 true when the anim is no longer playing
    bool PlayAnim(const char* name);                                     // 0x498d18 forwards to SWFAnim::PlayAnim
    void DoFadeOut();                                                    // 0x498d20 sets state 3 and plays "fade_out"
    void FadeOut(int delay);                                             // 0x498d38 arms the timer when fading in (1) or shown (2) and the timer is not running; delay < 0 fades out at once
    void FadeIn();                                                       // 0x498d64 sets state 1 and plays "fade_in"
    void Update();                                                       // 0x498e5c advances the state machine

    int m_fadeTimer;                                                     // +0x00 time left before the fade out starts, set by FadeOut, reduced by Application::GetDt in Update
    int m_state;                                                         // +0x04 0 idle, 1 fading in, 2 shown (counting down), 3 fading out
    SWFAnim* m_swfAnim;                                                  // +0x08 anim grabbed from SWFAnimManager, null when none is held
};
