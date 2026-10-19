// Batch g1-game-character-CharTimers-b6b849-0: the per-character timer bank (CharTimers) and its _Timer slots.
// Declarations come from dh2/CharTimers.hpp. Update reads the cut-scene flag at ScriptManager::s_inst +0x30 (the ELF
// byte at 0x9a600c) and returns early while it is set. Update keeps one PARTIAL difference: the raw slot pointer, see
// its comment. The ledger rows in game-character/ledger.d/g1-game-character-CharTimers-b6b849-0.csv repeat the notes.

#include "dh2/CharTimers.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/memory.hpp"     // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ScriptManager.hpp"       // ScriptManager::s_inst, whose m_inCutScene is the cut-scene flag
#include "dh2/global/ctrl_camera.hpp"  // ApplicationGetInstance()

namespace {

// Event raised by a timer whose m_eventId is -1 (the original's constant 41).
constexpr int kUntaggedTimerEvent = 41;

// Trace probe of Update. DebugSwitches::GetInstance() runs DebugSwitches::load() and returns &s_inst, which is the same
// pair of calls the original makes; GetSwitch("isTracingCharTimers") is then called and its bool is dropped. Both fire
// branches of the original make this call before Character::RaiseEvent. Kept as a call, as in the CharAI probes.
void ProbeTracingCharTimers() {
    (void)DebugSwitches::GetInstance()->GetSwitch("isTracingCharTimers");
}

}  // namespace

// 0x3db288 _ZNK10CharTimers6_Timer5GetIDEv
unsigned int CharTimers::_Timer::GetID() const {
    return m_id;
}

// 0x3db290 _ZNK10CharTimers6_Timer6GetRefEv
void* CharTimers::_Timer::GetRef() const {
    return m_userData;
}

// 0x3db298 _ZN10CharTimers9TMR_PauseEj
void CharTimers::TMR_Pause(unsigned int id) {
    if (id < m_timers.size()) {
        m_timers[id].m_paused = true;  // +0x15
    }
}

// 0x3db2b8 _ZN10CharTimers10TMR_ResumeEj
void CharTimers::TMR_Resume(unsigned int id) {
    if (id < m_timers.size()) {
        m_timers[id].m_paused = false;  // +0x15
    }
}

// 0x3db2d8 _ZN10CharTimers8TMR_StopEj
void CharTimers::TMR_Stop(unsigned int id) {
    if (id < m_timers.size()) {
        m_timers[id].m_active = false;  // +0x14
    }
}

// 0x3db2f8 _ZN10CharTimers11TMR_StopAllEv
void CharTimers::TMR_StopAll() {
    for (_Timer& slot : m_timers) {
        slot.m_active = false;  // +0x14, every slot; the slots themselves are kept
    }
}

// 0x3db344 _ZNK10CharTimers12TMR_TimeLeftEjRjS0_
// The original returns 0 or 1 in r0; the header declares bool.
bool CharTimers::TMR_TimeLeft(unsigned int id, unsigned int& elapsed, unsigned int& interval) const {
    if (id >= m_timers.size()) {
        return false;
    }
    const _Timer& slot = m_timers[id];
    if (!slot.m_active) {  // +0x14
        return false;
    }
    elapsed = slot.m_elapsed;    // +0x10
    interval = slot.m_interval;  // +0x0c
    return true;
}

// 0x3db3fc _ZN10CharTimersD1Ev (complete-object destructor)
// 0x3db430 _ZN10CharTimersD2Ev (base-object destructor, same body: the vptr is reset and m_timers is destroyed)
CharTimers::~CharTimers() {
    // The compiler sets the CharTimers vtable here. m_timers (the vector of _Timer) is destroyed after this body,
    // as in the original.
}

// 0x3db464 _ZN10CharTimersD0Ev (deleting destructor) is not written here: the compiler emits it for `delete` of a
// CharTimers. It calls the complete-object destructor and then CustomFree(this). Skipped.

// 0x3db480 _ZN10CharTimers12SetCharacterEP9Character
// The level-1 message goes to stderr. The original passes __sF + 0xA8, which is __sF[2] for the 0x54-byte FILE stride
// (message_log in core-platform w7_global_03 uses __sF + 0x54 for stdout), so it is the third stdio entry, stderr. The
// ASSERT text is the same one CSPreSpawn::OnEvent prints through (FILE*)&_sF + 2.
void CharTimers::SetCharacter(Character* c) {
    if (c == nullptr) {
        if (gAssertLevel == 2) {
            // The original stores the null pointer through address 0 to crash. abort() stands in for that crash.
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "c",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Timers\\CharTimers.cpp",
                         61);
        }
    }
    m_character = c;  // +0x04, stored even when c is null
}

// 0x3db640 _ZN10CharTimers6UpdateEv
void CharTimers::Update() {
    // Cut-scene gate. The original loads ScriptManager::s_inst and reads the byte at +0x30 (the ELF byte at 0x9a600c,
    // that is s_inst + (0x9a600c - 0x9a5fdc)). A non-zero byte leaves Update before Application::GetDt is called, so no
    // timer advances and no event is raised. Script_EnterCutSceneMode::Execute (0x45a384) sets the byte to 1 and
    // Script_ExitCutSceneMode::Execute (0x4599ac) clears it, both through the same s_inst pointer.
    if (ScriptManager::s_inst.m_inCutScene) {
        return;
    }
    const int dt = ApplicationGetInstance().GetDt();
    const std::size_t count = m_timers.size();  // the count is fixed here; slots appended later are not visited
    for (std::size_t i = 0; i < count; ++i) {
        // Every access indexes m_timers again. A handler may append slots (push_back reallocates), and the original's
        // raw slot pointer would then point at freed memory. PARTIAL: that case is not reproduced.
        if (!m_timers[i].m_active || m_timers[i].m_paused) {
            continue;
        }
        m_timers[i].m_elapsed += static_cast<unsigned int>(dt);
        while (m_timers[i].m_active) {
            if (m_timers[i].m_elapsed < m_timers[i].m_interval || m_timers[i].m_interval == 0) {
                break;
            }
            if (m_timers[i].m_repeat == 0) {
                // Last fire: the timer stops and its elapsed time is not reduced.
                m_timers[i].m_active = false;
            } else {
                m_timers[i].m_elapsed -= m_timers[i].m_interval;
                if (m_timers[i].m_repeat > 0) {
                    --m_timers[i].m_repeat;  // a negative repeat runs forever
                }
            }
            ProbeTracingCharTimers();
            const int eventId = m_timers[i].m_eventId == -1 ? kUntaggedTimerEvent : m_timers[i].m_eventId;
            m_character->RaiseEvent(eventId, &m_timers[i]);
            // The while condition reads m_active again, so a handler that stops this timer ends the catch-up loop.
        }
    }
}

// 0x3dbb0c _ZN10CharTimersC2Ev (base-object constructor)
// 0x3dbb58 _ZN10CharTimersC1Ev (complete-object constructor, same body)
CharTimers::CharTimers() : m_character(nullptr), m_timers() {
    // The original calls std::vector<_Timer>::reserve(0) on the vector at +0x08. R1 is cleared at entry, so the argument
    // is 0 and nothing is allocated.
    m_timers.reserve(0);
}

// 0x3dbd70 _ZN10CharTimers14_findTimerSlotEv
CharTimers::_Timer* CharTimers::_findTimerSlot() {
    // The first inactive slot is reused. The original checks slot 0 first and then 1 to count-1, which is the same scan.
    for (std::size_t i = 0; i < m_timers.size(); ++i) {
        if (!m_timers[i].m_active) {
            return &m_timers[i];
        }
    }
    // No free slot: append a new one whose id is its index. The original fills only the vptr, m_id and the two flags.
    // The other fields are zero here. TMR_Start sets every field it uses, so the result is the same.
    _Timer fresh{};
    fresh.m_id = static_cast<std::uint32_t>(m_timers.size());
    fresh.m_active = false;  // +0x14
    fresh.m_paused = false;  // +0x15
    m_timers.push_back(fresh);
    return &m_timers.back();
}

// 0x3dbe24 _ZN10CharTimers9TMR_StartEjiiPv
// Returns the slot id (the slot index), or -1 when no slot could be obtained.
int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    _Timer* slot = _findTimerSlot();
    if (slot == nullptr) {
        return -1;
    }
    slot->m_active = true;         // +0x14
    slot->m_repeat = repeat;       // +0x08
    slot->m_interval = durationMs; // +0x0c
    slot->m_elapsed = 0;           // +0x10
    slot->m_eventId = eventId;     // +0x18
    slot->m_paused = false;        // +0x15
    slot->m_userData = userData;   // +0x1c
    return static_cast<int>(slot->m_id);
}
