// Batch g1-game-app-GameEvent-9380de-0 (GameEvent, 12 ELF rows: 10 functions, with the constructor and the
// destructor each emitted twice). Rebuilt from the Hex-Rays pseudocode (hexrays-all/chunk_016.c) and checked against
// the assembly (tools/decomp_asm.py). Member offsets are the original 32-bit ones; the layout is in dh2/GameEvent.hpp.
#include "dh2/GameEvent.hpp"

#include <cstdint>
#include <cstdio>

#include "dh2/ObjectiveList.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/script_ids.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

// 0x47935c GameEvent::DBG_GetCurrentStateName() const
// The state is compared as unsigned, so -1 (no state yet) and any value past Completed give "unknown".
const char* GameEvent::DBG_GetCurrentStateName() const {
    if (static_cast<std::uint32_t>(m_state) <= 2u) {
        return ApplicationGetPyDataConstants()->getConstantName("v2EventState", m_state);
    }
    return "unknown";
}

// 0x4793a4 GameEvent::ExecScript(int)
// Starts script scriptId in ScriptManager::s_inst (module -1, not from the remote side). Negative ids do nothing.
void GameEvent::ExecScript(int scriptId) {
    if (scriptId >= 0) {
        ScriptManager::s_inst.StartScript(scriptId, -1, false);
    }
}

// 0x4793d0 GameEvent::SetState(int)
// Accepts 0..2 only (unsigned compare in the original). Completed also starts the script whose name is the event's
// +0x0c string (v2Event m_w3), resolved by TempHackScriptIDAreStrings.
void GameEvent::SetState(int state) {
    if (static_cast<std::uint32_t>(state) <= 2u) {
        m_state = state;
        if (state == EVENT_COMPLETED) {
            ExecScript(TempHackScriptIDAreStrings(m_pyData->Script));
        }
    }
}

// 0x479408 GameEvent::Update()
// Inactive becomes Active once the objectives are valid. Active becomes Completed once they are all complete.
// Any other state reaches the Completed constant lookup and does nothing with it: the assembly for that path is a
// tail call to PyDataConstants::getConstant whose result the void method discards.
void GameEvent::Update() {
    PyDataConstants* constants = ApplicationGetPyDataConstants();
    if (m_state == constants->getConstant("v2EventState", "Inactive")) {
        if (m_objectives.IsValid()) {
            SetState(constants->getConstant("v2EventState", "Active"));
        }
        return;
    }
    if (m_state != constants->getConstant("v2EventState", "Active")) {
        constants->getConstant("v2EventState", "Completed");
        return;
    }
    if (m_objectives.Eval()) {
        SetState(constants->getConstant("v2EventState", "Completed"));
    }
}

// 0x4794fc GameEvent::Compile()
// Recompiles the objectives every time. Registers them with the manager only the first time (m_registered at +0x18).
void GameEvent::Compile() {
    m_objectives.InvalidateCompile();
    m_objectives.Compile();
    if (!m_registered) {
        m_objectives.Register();
        m_registered = true;
    }
}

// 0x479538 GameEvent::ReInit()
void GameEvent::ReInit() {
    m_state = EVENT_INACTIVE;
    m_objectives._resetData();
}

// 0x479544 GameEvent::DBG_TraceDetailedInformation() const
// The body matches the listing: ObjectiveList::DBG_TraceDetailedObjectiveListInformation on the embedded
// m_objectives (+0x0c). The original passes (__sFILE*)&__sF + 1, which is stdout in the Android libc FILE layout
// (the same reading core-platform/src/w7_global_03.cpp uses for the first log stream); the port passes the host
// stdout through the dh2 headers' opaque __sFILE* (host-necessitated deviation: __sFILE is not the host FILE type,
// but the stream is stdout on both sides).
void GameEvent::DBG_TraceDetailedInformation() const {
    m_objectives.DBG_TraceDetailedObjectiveListInformation(reinterpret_cast<__sFILE*>(stdout));
}

// 0x479568 GameEvent::AssignPyData(Structs::v2Event*)
// Keeps the row (m_pyData, +0x1c) and gives the objective list the row's element block (v2Event +0x14, m_w5) and its count (+0x10, m_w4). The
// block is passed through the original's v2QuestObjectiveStub* type, which is how ObjectiveList::AssignPyData takes it.
void GameEvent::AssignPyData(Structs::v2Event* data) {
    m_pyData = data;
    m_objectives.AssignPyData(reinterpret_cast<Structs::v2QuestObjectiveStub*>(data->Triggers),
                              static_cast<int>(data->TriggersSize));
}

// 0x47957c GameEvent::~GameEvent() (D1), 0x479594 GameEvent::~GameEvent() (D2)
// The original body is the ObjectiveList destructor for m_objectives (+0x0c). In C++ the member is destroyed after
// this body, so the body is empty and calling the member destructor here would destroy it twice.
GameEvent::~GameEvent() {}

// 0x4795ac GameEvent::GameEvent() (C1), 0x4795e0 GameEvent::GameEvent() (C2)
// m_objectives is default-constructed before this body, which is where the original runs ObjectiveList::ObjectiveList.
GameEvent::GameEvent() {
    m_index = -1;
    m_state = -1;
    m_name = nullptr;
    m_pyData = nullptr;
    m_registered = false;
}
