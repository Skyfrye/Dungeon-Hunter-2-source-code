// Checks CharTimers without the engine. Update reaches Character::RaiseEvent, Application::GetDt, DebugSwitches,
// ScriptManager::s_inst (the cut-scene flag) and gAssertLevel, so this test defines those as recording stubs. The timer
// bank itself is the code under test: slot ids and reuse, pause, stop, time left, the repeat counts, the catch-up loop,
// growth inside an event handler and the cut-scene gate.
#include <cstdio>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Engine global read by SetCharacter and declared in core-platform/memory.hpp.
int gAssertLevel = 0;

// ScriptManager::s_inst is read by the cut-scene gate. Only its m_inCutScene byte is used here. The constructor and destructor
// are empty stubs, as in the GameEvent test, so the ScriptManager batch is not linked.
ScriptManager ScriptManager::s_inst;
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}

namespace {

int g_dt = 0;
int g_dtCalls = 0;
int g_probes = 0;

struct Fire {
    const Character* who;
    int eventId;
    unsigned int timerId;
    void* ref;
};
std::vector<Fire> g_fires;

// Test hook: the first event raised while this is set starts ten new timers, which grows the bank inside Update.
CharTimers* g_growTarget = nullptr;

// Test hook: every event raised while this is set sets the cut-scene flag, as a handler that starts a cut-scene would.
bool g_setGateOnFire = false;

// Storage for the objects the stubs are called on. Only their addresses are used, and the stubs never read a member.
alignas(Application) unsigned char g_app[sizeof(Application)];
alignas(DebugSwitches) unsigned char g_switches[sizeof(DebugSwitches)];
alignas(Character) unsigned char g_characterA[sizeof(Character)];
alignas(Character) unsigned char g_characterB[sizeof(Character)];

Character* CharacterA() { return reinterpret_cast<Character*>(g_characterA); }
Character* CharacterB() { return reinterpret_cast<Character*>(g_characterB); }

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

void Reset() {
    g_dt = 0;
    g_dtCalls = 0;
    g_probes = 0;
    g_fires.clear();
    g_growTarget = nullptr;
    g_setGateOnFire = false;
    ScriptManager::s_inst.m_inCutScene = false;
}

}  // namespace

// Stubs for the engine and game code that CharTimers::Update reaches.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_app);
}

int Application::GetDt() {
    ++g_dtCalls;
    return g_dt;
}

DebugSwitches* DebugSwitches::GetInstance() {
    return reinterpret_cast<DebugSwitches*>(g_switches);
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    if (name == "isTracingCharTimers") {
        ++g_probes;
    }
    return false;
}

int Character::RaiseEvent(int eventId, void* data) {
    CharTimers::_Timer* slot = static_cast<CharTimers::_Timer*>(data);
    g_fires.push_back(Fire{this, eventId, slot->GetID(), slot->GetRef()});
    if (g_setGateOnFire) {
        ScriptManager::s_inst.m_inCutScene = true;
    }
    if (g_growTarget != nullptr) {
        CharTimers* target = g_growTarget;
        g_growTarget = nullptr;
        for (int k = 0; k < 10; ++k) {
            target->TMR_Start(1000, 0, 61, nullptr);
        }
    }
    return 0;
}

int main() {
    // 1. Slot ids are indices. A stopped slot is reused before a new one is appended.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        int ud = 0;
        CHECK(t.TMR_Start(100, 0, 7, &ud) == 0);
        CHECK(t.TMR_Start(200, 0, 8, &ud) == 1);
        t.TMR_StopAll();
        CHECK(t.TMR_Start(300, 0, 9, &ud) == 0);
        CHECK(t.TMR_Start(300, 0, 9, &ud) == 1);
        CHECK(t.TMR_Start(300, 0, 9, &ud) == 2);  // no free slot: appended
        t.TMR_Stop(2);
        CHECK(t.TMR_Start(10, 0, 9, &ud) == 2);   // the stopped slot is reused
        CHECK(t.TMR_Start(10, 0, 9, &ud) == 3);   // appended again
    }

    // 2. TMR_TimeLeft reports elapsed and interval for an active timer only. A one-shot timer stops when it fires.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        const int id = t.TMR_Start(100, 0, 7, nullptr);
        unsigned int elapsed = 0;
        unsigned int interval = 0;
        g_dt = 30;
        t.Update();
        CHECK(t.TMR_TimeLeft(static_cast<unsigned int>(id), elapsed, interval));
        CHECK(elapsed == 30 && interval == 100);
        CHECK(g_fires.empty());
        g_dt = 80;
        t.Update();  // 110 >= 100: the one-shot fires and stops
        CHECK(g_fires.size() == 1 && g_fires[0].eventId == 7 && g_fires[0].timerId == 0u);
        CHECK(!t.TMR_TimeLeft(static_cast<unsigned int>(id), elapsed, interval));
        CHECK(!t.TMR_TimeLeft(99u, elapsed, interval));
    }

    // 3. A timer with repeat N fires N+1 times when it catches up inside one update. Each fire probes the trace switch.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        t.TMR_Start(100, 2, 9, nullptr);
        g_dt = 350;
        t.Update();
        CHECK(g_fires.size() == 3);
        CHECK(g_probes == 3);
        for (const Fire& f : g_fires) {
            CHECK(f.eventId == 9);
        }
        unsigned int elapsed = 0;
        unsigned int interval = 0;
        CHECK(!t.TMR_TimeLeft(0u, elapsed, interval));
    }

    // 4. A negative repeat runs forever and carries the remainder into the next update.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        const int id = t.TMR_Start(100, -1, 51, nullptr);
        g_dt = 250;
        t.Update();  // 250 -> two fires, 50 carried
        CHECK(g_fires.size() == 2);
        g_dt = 50;
        t.Update();  // 50 + 50 = 100 -> one fire, nothing carried
        CHECK(g_fires.size() == 3);
        unsigned int elapsed = 99;
        unsigned int interval = 0;
        CHECK(t.TMR_TimeLeft(static_cast<unsigned int>(id), elapsed, interval));
        CHECK(elapsed == 0 && interval == 100);
        t.TMR_Stop(static_cast<unsigned int>(id));
        g_dt = 1000;
        t.Update();
        CHECK(g_fires.size() == 3);
    }

    // 5. A paused timer neither accumulates nor fires. Resume restarts the accumulation. Event -1 raises event 41.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        const int id = t.TMR_Start(100, -1, -1, nullptr);
        t.TMR_Pause(static_cast<unsigned int>(id));
        g_dt = 500;
        t.Update();
        CHECK(g_fires.empty());
        unsigned int elapsed = 99;
        unsigned int interval = 0;
        CHECK(t.TMR_TimeLeft(static_cast<unsigned int>(id), elapsed, interval));
        CHECK(elapsed == 0);
        t.TMR_Resume(static_cast<unsigned int>(id));
        g_dt = 100;
        t.Update();
        CHECK(g_fires.size() == 1 && g_fires[0].eventId == 41);
    }

    // 6. GetID and GetRef on the slot passed to the event report the timer id and the user data.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterB());
        int ud = 0;
        const int id = t.TMR_Start(10, 0, 3, &ud);
        g_dt = 10;
        t.Update();
        CHECK(g_fires.size() == 1);
        if (g_fires.size() == 1) {
            CHECK(g_fires[0].ref == &ud);
            CHECK(g_fires[0].timerId == static_cast<unsigned int>(id));
            CHECK(g_fires[0].who == CharacterB());
        }
    }

    // 7. An event handler that starts timers grows the bank during Update. The running timer keeps firing afterwards.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        const int id = t.TMR_Start(100, -1, 60, nullptr);
        g_growTarget = &t;
        g_dt = 100;
        t.Update();
        CHECK(g_fires.size() == 1);
        g_dt = 100;
        t.Update();
        CHECK(g_fires.size() == 2);
        if (g_fires.size() == 2) {
            CHECK(g_fires[1].timerId == static_cast<unsigned int>(id));
            CHECK(g_fires[1].eventId == 60);
        }
        // The ten new slots were appended during the first update, so the second update visits them: 100 ms each.
        for (unsigned int k = 1; k <= 10; ++k) {
            unsigned int elapsed = 99;
            unsigned int interval = 0;
            CHECK(t.TMR_TimeLeft(k, elapsed, interval));
            CHECK(interval == 1000 && elapsed == 100);
        }
    }

    // 8. SetCharacter replaces the owner that events are raised on.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        t.SetCharacter(CharacterB());
        t.TMR_Start(10, 0, 5, nullptr);
        g_dt = 10;
        t.Update();
        CHECK(g_fires.size() == 1);
        if (g_fires.size() == 1) {
            CHECK(g_fires[0].who == CharacterB());
        }
    }

    // 9. TMR_StopAll stops every timer, and an empty bank updates without events.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        t.Update();
        CHECK(g_fires.empty());
        t.TMR_Start(10, -1, 4, nullptr);
        t.TMR_Start(10, -1, 4, nullptr);
        t.TMR_StopAll();
        g_dt = 100;
        t.Update();
        CHECK(g_fires.empty());
    }

    // 10. The cut-scene gate. While ScriptManager::s_inst.m_inCutScene is set, Update returns before Application::GetDt, so
    // no timer advances and no event is raised. Clearing the flag resumes the same timer from its accumulated time.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        const int id = t.TMR_Start(100, 0, 12, nullptr);
        g_dt = 50;
        t.Update();  // ungated: 50 ms accumulated, no fire
        CHECK(g_dtCalls == 1);
        CHECK(g_fires.empty());

        ScriptManager::s_inst.m_inCutScene = true;  // Script_EnterCutSceneMode::Execute sets this byte
        g_dt = 500;
        t.Update();  // gated: GetDt is not called and nothing advances
        t.Update();
        CHECK(g_dtCalls == 1);
        CHECK(g_fires.empty());
        CHECK(g_probes == 0);
        unsigned int elapsed = 99;
        unsigned int interval = 0;
        CHECK(t.TMR_TimeLeft(static_cast<unsigned int>(id), elapsed, interval));
        CHECK(elapsed == 50 && interval == 100);

        ScriptManager::s_inst.m_inCutScene = false;  // Script_ExitCutSceneMode::Execute clears it
        g_dt = 50;
        t.Update();  // 50 + 50 = 100: the one-shot fires
        CHECK(g_dtCalls == 2);
        CHECK(g_fires.size() == 1 && g_fires[0].eventId == 12);
        CHECK(g_probes == 1);
    }

    // 11. The flag is read once, when Update starts. A handler that sets it during a catch-up does not cut that catch-up
    // short, because the original never re-reads it inside the loop. The next Update is gated.
    {
        Reset();
        CharTimers t;
        t.SetCharacter(CharacterA());
        t.TMR_Start(100, -1, 13, nullptr);
        g_setGateOnFire = true;
        g_dt = 300;
        t.Update();  // 300 ms: three fires, all delivered; the first one sets the flag
        CHECK(g_dtCalls == 1);
        CHECK(g_fires.size() == 3);
        CHECK(ScriptManager::s_inst.m_inCutScene);
        g_dt = 100;
        t.Update();  // gated: no GetDt, no fire
        CHECK(g_dtCalls == 1);
        CHECK(g_fires.size() == 3);
    }

    if (g_failures == 0) {
        std::printf("CharTimers test: ok\n");
        return 0;
    }
    std::printf("CharTimers test: %d failure(s)\n", g_failures);
    return 1;
}
