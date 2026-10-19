// Batch g1-game-app-GameEventManager-6d1529-0 (GameEventManager, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode. ReInit was checked against the assembly (tools/decomp_asm.py).
// The event list is std::vector<GameEvent*> at +0x00 (begin, end, capacity). The original's begin/end loops
// become index loops over m_events that re-read size() on every pass, as the original re-reads its end.
// The member-function-pointer call uses the host's pointer-to-member call. The original's ARM adjustments
// (adj >> 1 for this, adj & 1 for a virtual slot) are therefore not needed.
#include "dh2/GameEventManager.hpp"

#include <cstddef>
#include <cstdint>
#include <cstring>

#include "dh2/GameEvent.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "dh2/global/runtime_support.hpp"

// 0x4796f0 GameEventManager::GetEventByID(int) const
// Null when the id is negative or not below the number of events; otherwise the event at that index.
GameEvent* GameEventManager::GetEventByID(int id) const {
    if (id < 0 || static_cast<std::size_t>(id) >= m_events.size()) {
        return nullptr;
    }
    return m_events[static_cast<std::size_t>(id)];
}

// 0x479718 GameEventManager::LoopOnAllEvents(void (GameEvent::*)())
// Calls the method on every event in order. Does nothing when the list is empty. The end is re-read after
// each call, as in the original.
void GameEventManager::LoopOnAllEvents(void (GameEvent::*method)()) {
    if (m_events.empty()) {
        return;
    }
    std::size_t i = 0;
    do {
        (m_events[i]->*method)();
        ++i;
    } while (i != m_events.size());
}

// 0x47977c GameEventManager::Compile()
void GameEventManager::Compile() {
    LoopOnAllEvents(&GameEvent::Compile);
}

// 0x4797b0 GameEventManager::LoopOnAllEvents(void (GameEvent::*)() const) const
// Const overload of 0x479718 with the same loop. The method is called on each event through a pointer to a
// const member function.
void GameEventManager::LoopOnAllEvents(void (GameEvent::*method)() const) const {
    if (m_events.empty()) {
        return;
    }
    std::size_t i = 0;
    do {
        (m_events[i]->*method)();
        ++i;
    } while (i != m_events.size());
}

// 0x479814 GameEventManager::DBG_TraceDetailedInformation() const
void GameEventManager::DBG_TraceDetailedInformation() const {
    LoopOnAllEvents(&GameEvent::DBG_TraceDetailedInformation);
}

// 0x479848 GameEventManager::GetEventByName(char const*) const
// Searches the name table Arrays::v2Events::m_memberNames, over the first Arrays::v2Events::size names, for the first one equal to the name (strcmp),
// and returns GetEventByID of that row; -1 when there is none (GetEventByID answers null for it).
GameEvent* GameEventManager::GetEventByName(const char* name) const {
    return GetEventByID(pydata::FindMemberName(Arrays::v2Events::m_memberNames, static_cast<int>(Arrays::v2Events::size), name));
}

// 0x4798c8 GameEventManager::Update()
// The update runs inside a profiling context named after the manager.
void GameEventManager::Update() {
    PushProfilingContext("GameEventManager::Update");
    LoopOnAllEvents(&GameEvent::Update);
    PopProfilingContext("GameEventManager::Update");
}

// 0x47992c GameEventManager::ReInit()
// For each event in turn: GameEvent::ReInit, then GameEvent::Compile on the same event. The assembly
// (0x479944..0x479964) confirms the pair. Does nothing when the list is empty. The original's function is
// typed to return the manager pointer, but the return value is the last call's register and is not used.
void GameEventManager::ReInit() {
    if (m_events.empty()) {
        return;
    }
    std::size_t i = 0;
    do {
        GameEvent* ev = m_events[i];
        ++i;
        ev->ReInit();
        ev->Compile();
    } while (i != m_events.size());
}

// 0x479968 GameEventManager::Unload()
// Each non-null event is destroyed in place and released with CustomFree. The original does not use delete,
// so the two steps are separate calls here too. After the loop the list is emptied and keeps its capacity
// (the original sets end = begin).
void GameEventManager::Unload() {
    if (m_events.empty()) {
        return;
    }
    std::size_t i = 0;
    do {
        GameEvent* ev = m_events[i];
        ++i;
        if (ev) {
            ev->~GameEvent();
            CustomFree(ev);
        }
    } while (i != m_events.size());
    m_events.clear();
}

// 0x479bec GameEventManager::~GameEventManager() (D1, complete-object destructor)
// Unload, then the vector member releases its storage. The original calls deallocate on the begin pointer
// with capacity end-begin; the vector destructor does the same.
GameEventManager::~GameEventManager() {
    Unload();
}

// 0x479cf4 GameEventManager::GameEventManager() (C1, complete-object constructor)
// The vector member starts empty, as std::vector<GameEvent*>::vector(this) does.

// 0x479d08 GameEventManager::GameEventManager() (C2, base-object constructor)
// Skipped: compiler-generated duplicate with the same body as 0x479cf4. The C++ constructor above covers both.
GameEventManager::GameEventManager() {}

// 0x479e5c GameEventManager::Load()
// With events already loaded nothing happens. Otherwise the list is sized to one entry per row of Arrays::v2Events, and for each row a GameEvent is
// built: index i, the row's name from the member name table, AssignPyData with the row (host-sized Structs::v2Event elements), then ReInit;
// the event is stored at slot i.
void GameEventManager::Load() {
    if (!m_events.empty()) {
        return;
    }
    const std::uint32_t count = Arrays::v2Events::size;
    m_events.resize(count);
    Structs::v2Event* rows = reinterpret_cast<Structs::v2Event*>(Arrays::v2Events::members);
    for (std::uint32_t i = 0; i < count; ++i) {
        GameEvent* event = new GameEvent();
        event->m_index = static_cast<int32_t>(i);
        event->m_name = Arrays::v2Events::m_memberNames.names[i];
        event->AssignPyData(&rows[i]);
        event->ReInit();
        m_events[i] = event;
    }
}

// 0x479f34 GameEventManager::~GameEventManager() (D2, base-object destructor)
// Skipped: compiler-generated duplicate with the same body as 0x479bec.
