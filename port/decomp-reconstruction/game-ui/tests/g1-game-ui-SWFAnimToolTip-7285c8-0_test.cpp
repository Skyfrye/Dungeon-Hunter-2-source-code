// Test for the SWFAnimToolTip state machine (batch g1-game-ui-SWFAnimToolTip-7285c8-0).
// The anim manager, the anim and the application are link-only stubs that record their calls. The anims are fake
// addresses: the stubs never dereference them. Singleton storage is instantiated here the way game-app/src/Globals.cpp
// does for Application. Exit status 0 means every check passed.

#include <cstdio>
#include <initializer_list>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/SWFAnim.hpp"
#include "dh2/SWFAnimManager.hpp"
#include "dh2/SWFAnimToolTip.hpp"
#include "dh2/Singleton.hpp"

int gAssertLevel = 0;

namespace {

std::vector<std::string> g_log;
int g_dt = 40;                    // Application::GetDt() result, in ms
bool g_animPlaying = false;       // SWFAnim::IsAnimPlaying() result
bool g_animVisible = true;        // SWFAnim::IsVisible() result
char g_animA[16];                 // fake anim addresses, only compared
char g_animB[16];
SWFAnim* g_nextGrab = nullptr;    // what SWFAnimManager::GrabAnim returns next

SWFAnim* AnimA() { return reinterpret_cast<SWFAnim*>(g_animA); }

const char* Tag(const SWFAnim* anim) {
    if (anim == nullptr) return "null";
    if (anim == reinterpret_cast<const SWFAnim*>(g_animA)) return "A";
    if (anim == reinterpret_cast<const SWFAnim*>(g_animB)) return "B";
    return "?";
}

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

// True when the log equals the expected entries; the log is cleared either way.
bool LogIs(std::initializer_list<const char*> want) {
    bool same = g_log.size() == want.size();
    if (same) {
        size_t i = 0;
        for (const char* w : want) {
            if (g_log[i++] != w) {
                same = false;
                break;
            }
        }
    }
    if (!same) {
        std::printf("  log was:");
        for (const std::string& s : g_log) std::printf(" [%s]", s.c_str());
        std::printf("\n");
    }
    g_log.clear();
    return same;
}

void Reset() {
    g_log.clear();
    g_dt = 40;
    g_animPlaying = false;
    g_animVisible = true;
    g_nextGrab = AnimA();
}

}  // namespace

// ---- link-only stubs -----------------------------------------------------------------------------------------------

// Application: singleton storage as Globals.cpp instantiates it. The constructor, the destructor and the virtual
// onEvent are stubs (the vtable needs them).
template class Singleton<Application>;
Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) { return false; }
int Application::GetDt() { return g_dt; }

// SWFAnimManager: singleton storage, constructor and destructor stubs, and the two calls the tooltip makes.
template class Singleton<SWFAnimManager>;
SWFAnimManager::SWFAnimManager() {}
SWFAnimManager::~SWFAnimManager() {}
SWFAnim* SWFAnimManager::GrabAnim(const char* name) {
    g_log.push_back(std::string("Grab:") + name);
    return g_nextGrab;
}
void SWFAnimManager::DropAnim(SWFAnim* anim) {
    g_log.push_back(std::string("Drop:") + Tag(anim));
}

// SWFAnim: the calls the tooltip makes on its anim.
bool SWFAnim::PlayAnim(const char* name) {
    g_log.push_back(std::string("Play:") + Tag(this) + ":" + name);
    return true;
}
bool SWFAnim::IsAnimPlaying() { return g_animPlaying; }
bool SWFAnim::IsVisible() { return g_animVisible; }
void SWFAnim::SetVisible(bool visible) {
    g_log.push_back(std::string("Visible:") + Tag(this) + (visible ? ":1" : ":0"));
}

// ---- tests ---------------------------------------------------------------------------------------------------------

int main() {
    // Constructor grabs "anim_item_info" and starts idle; the destructor gives the anim back.
    Reset();
    {
        SWFAnimToolTip tip;
        Check(tip.m_state == 0 && tip.m_fadeTimer == 0, "ctor: idle with timer 0");
        Check(tip.m_swfAnim == AnimA(), "ctor: the grabbed anim is held");
        Check(LogIs({"Grab:anim_item_info"}), "ctor: one GrabAnim call");
    }
    Check(LogIs({"Drop:A"}), "dtor: the held anim is dropped");

    // A failed grab leaves no anim, and the destructor still drops (null).
    Reset();
    g_nextGrab = nullptr;
    {
        SWFAnimToolTip tip;
        Check(tip.m_swfAnim == nullptr, "ctor: failed grab leaves no anim");
        Check(LogIs({"Grab:anim_item_info"}), "ctor (failed grab): one GrabAnim call");
    }
    Check(LogIs({"Drop:null"}), "dtor (failed grab): DropAnim still called with null");

    // FadeIn from idle: state 1, fade_in played, anim shown, timer 0. A second FadeIn while fading in does nothing.
    Reset();
    {
        SWFAnimToolTip tip;
        g_log.clear();
        tip.FadeIn();
        Check(tip.m_state == 1, "FadeIn: state becomes fading in (1)");
        Check(tip.m_swfAnim == AnimA(), "FadeIn: held anim reused, not grabbed again");
        Check(tip.m_fadeTimer == 0, "FadeIn: timer 0");
        Check(LogIs({"Play:A:fade_in", "Visible:A:1"}), "FadeIn: plays fade_in and shows the anim");
        tip.FadeIn();
        Check(tip.m_state == 1, "FadeIn again while fading in: state unchanged");
        Check(LogIs({}), "FadeIn again while fading in: nothing played");
    }
    Check(LogIs({"Drop:A"}), "dtor after FadeIn: anim dropped");

    // FadeIn from fading out (3) restarts the fade in.
    Reset();
    {
        SWFAnimToolTip tip;
        tip.FadeIn();
        tip.FadeOut(-1);  // fades out at once
        g_log.clear();
        tip.FadeIn();
        Check(tip.m_state == 1, "FadeIn from fading out: state 1");
        Check(LogIs({"Play:A:fade_in", "Visible:A:1"}), "FadeIn from fading out: plays fade_in");
    }
    LogIs({"Drop:A"});

    // FadeOut: arms the timer only while fading in or shown, and only when the timer is not running.
    Reset();
    {
        SWFAnimToolTip tip;  // idle
        tip.FadeOut(100);
        Check(tip.m_state == 0 && tip.m_fadeTimer == 0, "FadeOut while idle: nothing happens");
        Check(LogIs({"Grab:anim_item_info"}), "FadeOut while idle: only the ctor's grab in the log");
    }
    LogIs({"Drop:A"});

    Reset();
    {
        SWFAnimToolTip tip;
        tip.FadeIn();
        g_log.clear();
        tip.FadeOut(100);
        Check(tip.m_fadeTimer == 100 && tip.m_state == 1, "FadeOut while fading in: timer armed at 100");
        Check(LogIs({}), "FadeOut with a delay: nothing played");
        tip.FadeOut(50);
        Check(tip.m_fadeTimer == 100, "FadeOut while the timer runs: timer not re-armed");
    }
    LogIs({"Drop:A"});

    Reset();
    {
        SWFAnimToolTip tip;
        tip.FadeIn();
        g_log.clear();
        tip.FadeOut(-1);
        Check(tip.m_state == 3, "FadeOut with a negative delay: state 3 (fading out)");
        Check(tip.m_fadeTimer == -1, "FadeOut with a negative delay: timer holds the delay");
        Check(LogIs({"Play:A:fade_out"}), "FadeOut with a negative delay: plays fade_out");
    }
    LogIs({"Drop:A"});

    Reset();
    {
        SWFAnimToolTip tip;
        tip.FadeIn();
        tip.m_state = 2;  // shown
        tip.m_fadeTimer = 0;
        g_log.clear();
        tip.FadeOut(30);
        Check(tip.m_fadeTimer == 30 && tip.m_state == 2, "FadeOut while shown: timer armed");
        Check(LogIs({}), "FadeOut while shown: nothing played");
    }
    LogIs({"Drop:A"});

    // Full cycle: fade in, show, count down by the frame time, fade out, go idle, give the anim back.
    Reset();
    {
        SWFAnimToolTip tip;
        tip.FadeIn();
        g_log.clear();

        g_animPlaying = true;
        tip.Update();  // fading in, anim still playing
        Check(tip.m_state == 1, "cycle: still fading in while the anim plays");
        Check(LogIs({}), "cycle: no call while fading in");

        g_animPlaying = false;
        tip.Update();  // fade over: show
        Check(tip.m_state == 2, "cycle: shown after the fade in");
        Check(LogIs({"Play:A:show"}), "cycle: plays show");

        tip.FadeOut(100);
        g_log.clear();
        tip.Update();  // 100 - 40 = 60
        Check(tip.m_fadeTimer == 60 && tip.m_state == 2, "cycle: timer 60 after one frame");
        tip.Update();  // 20
        Check(tip.m_fadeTimer == 20 && tip.m_state == 2, "cycle: timer 20 after two frames");
        Check(LogIs({}), "cycle: no call while the timer runs");
        tip.Update();  // -20: fade out
        Check(tip.m_fadeTimer == -20 && tip.m_state == 3, "cycle: timer runs out into fading out");
        Check(LogIs({"Play:A:fade_out"}), "cycle: plays fade_out when the timer runs out");

        g_animPlaying = true;
        tip.Update();  // fading out, anim still playing
        Check(tip.m_state == 3, "cycle: still fading out while the anim plays");
        Check(LogIs({}), "cycle: no call while fading out");

        g_animPlaying = false;
        tip.Update();  // fade over: idle
        Check(tip.m_state == 0, "cycle: idle after the fade out");
        Check(tip.m_swfAnim == AnimA(), "cycle: anim still held in idle until the next Update");
        Check(LogIs({}), "cycle: no call on the fade over");

        tip.Update();  // idle with a held anim: give it back
        Check(tip.m_swfAnim == nullptr, "cycle: idle Update drops the held anim");
        Check(LogIs({"Drop:A"}), "cycle: DropAnim called with A");

        tip.Update();  // idle without an anim: nothing
        Check(LogIs({}), "cycle: idle Update with no anim does nothing");
    }
    Check(LogIs({"Drop:null"}), "cycle: the dtor calls DropAnim with null, as the original does");

    // Update with a state outside 0..3 does nothing.
    Reset();
    {
        SWFAnimToolTip tip;
        tip.m_state = 7;
        g_log.clear();
        tip.Update();
        Check(tip.m_state == 7, "Update with an unknown state: state unchanged");
        Check(LogIs({}), "Update with an unknown state: nothing called");
        tip.m_swfAnim = nullptr;  // no anim left, so the dtor has nothing to drop
    }
    LogIs({"Drop:null"});

    // IsVisible: false while idle; the anim's own flag while the state is not idle and an anim is held.
    Reset();
    {
        SWFAnimToolTip tip;
        Check(!tip.IsVisible(), "IsVisible while idle: false");
        tip.FadeIn();
        g_log.clear();
        Check(tip.IsVisible(), "IsVisible while fading in: follows the anim (visible)");
        g_animVisible = false;
        Check(!tip.IsVisible(), "IsVisible while fading in: follows the anim (hidden)");
        Check(LogIs({}), "IsVisible: no calls logged");
        tip.m_swfAnim = nullptr;
        g_animVisible = true;
        Check(!tip.IsVisible(), "IsVisible with no anim: false");
    }
    LogIs({"Drop:null"});

    // IsAnimOver is the inverse of IsAnimPlaying; PlayAnim forwards the name to the anim.
    Reset();
    {
        SWFAnimToolTip tip;
        g_log.clear();
        g_animPlaying = false;
        Check(tip.IsAnimOver(), "IsAnimOver: true when the anim is not playing");
        g_animPlaying = true;
        Check(!tip.IsAnimOver(), "IsAnimOver: false while the anim plays");
        Check(tip.PlayAnim("abc"), "PlayAnim: returns the anim's result");
        Check(LogIs({"Play:A:abc"}), "PlayAnim: forwards the name to the held anim");
    }
    LogIs({"Drop:A"});

    if (g_failures == 0) {
        std::printf("all SWFAnimToolTip checks passed\n");
        return 0;
    }
    std::printf("%d SWFAnimToolTip check(s) failed\n", g_failures);
    return 1;
}
