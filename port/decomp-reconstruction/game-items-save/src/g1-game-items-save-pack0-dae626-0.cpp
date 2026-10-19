// Batch g1-game-items-save-pack0-dae626-0 (owners Condition, ConditionList and Condition_IsEventInState).
// Layouts: dh2/Condition.hpp, dh2/ConditionList.hpp and dh2/Condition_IsEventInState.hpp. The Application singleton
// (dh2/Singleton.hpp, Application.hpp) and the level and event classes are used through their own headers.
//
// Every row of the batch is reconstructed. Condition_IsEventInState::Eval aborts where the original stores to address 0
// (gAssertLevel 2), and its trace prints the Event line from Arrays::v2Events.
//
// Notes:
//  * __sFILE is the libc FILE on the target. Stream arguments are converted with reinterpret_cast before the stdio
//    calls, as in the other batches.
//  * The deleting destructors (0x478e90 for Condition, 0x4791f4 for Condition_IsEventInState) are compiler generated.
//    The original releases the object with CustomFree, not operator delete, and the factories allocate with
//    CustomAlloc. ConditionList's destructor therefore releases each Condition the original way: the virtual
//    destructor call (vtable slot 0x00), then CustomFree. No body is written for the deleting destructors.
//  * AssignPyData walks the stub array by index. The original steps 16 bytes per row; the host rows are decoded at the
//    file stride into host-sized elements (TRACK-B.md decision 3).
//  * The factory table s_conditionImplDataMap is a file-static array in the original (ELF _ZL22s_conditionImplDataMap,
//    .data.rel.ro, 28 bytes at 0x969258). Its seven words are R_ARM_RELATIVE relocations to the factories, in
//    this order: index 0 0x478b5c, 1 0x478b14, 2 0x478acc, 3 0x478a80, 4 0x478a34, 5 0x4789e8, 6 0x47899c.

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Condition.hpp"
#include "dh2/ConditionList.hpp"
#include "dh2/Condition_IsEventInState.hpp"
#include "dh2/GameEvent.hpp"
#include "dh2/GameEventManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/condition_objective_factory.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// Source file of Condition.cpp as the original's assert message prints it.
constexpr const char* kConditionSourceFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Condition.cpp";

using ConditionFactory = Condition* (*)();

// ELF s_conditionImplDataMap: one factory per pydata condition type. The stub's type (v2Condition m_w1, +0x4 of the
// row) is the index, with no offset and no bound check in the original.
const ConditionFactory s_conditionImplDataMap[7] = {
    &GetConditionImplInstance<Condition_IsQuestInState>,      // index 0, 0x478b5c
    &GetConditionImplInstance<Condition_IsQuestStateLower>,   // index 1, 0x478b14
    &GetConditionImplInstance<Condition_IsQuestStateHigher>,  // index 2, 0x478acc
    &GetConditionImplInstance<Condition_IsPlayerInLevel>,     // index 3, 0x478a80
    &GetConditionImplInstance<Condition_IsLevelInState>,      // index 4, 0x478a34
    &GetConditionImplInstance<Condition_IsPlayerAtLevel>,     // index 5, 0x4789e8
    &GetConditionImplInstance<Condition_IsEventInState>,      // index 6, 0x47899c
};

}  // namespace

// 0x478634 Condition::Compile()
void Condition::Compile() {}

// 0x478648 Condition::Condition() (C2) and 0x478674 Condition::Condition() (C1): the same body. The original stores
// m_stub (+0x4) as 0 and the vptr (the Condition vtable); the vptr store is the compiler's.
Condition::Condition() : m_stub(nullptr) {}

// 0x4786a0 Condition::~Condition() (D2) and 0x4786d8 Condition::~Condition() (D1): both empty bodies.
Condition::~Condition() {}

// 0x478fcc Condition::DBG_TraceDetailedConditionInformation(__sFILE*)
// The base class has no trace of its own: it writes one fixed line of 0x25 bytes and returns the fwrite count.
std::size_t Condition::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    return std::fwrite("\t  Unimplemented Trace for Condition\n", 1, 0x25, reinterpret_cast<std::FILE*>(stream));
}

// 0x4786dc ConditionList::ConditionList() (C2) and 0x4786f0 ConditionList::ConditionList() (C1): the same body. The
// original stores 0 in m_count (+0x00), m_conditions (+0x04) and m_stubs (+0x08).
ConditionList::ConditionList() : m_count(0), m_conditions(nullptr), m_stubs(nullptr) {}

// 0x478704 ConditionList::Eval()
// An empty list is true. Otherwise each Condition is evaluated in order through its Eval (vtable slot 0x08), and the
// first false one ends the walk with false. The list is true when every Condition was true.
bool ConditionList::Eval() {
    if (m_count <= 0) {
        return true;
    }
    int i = 0;
    while (true) {
        Condition* cond = m_conditions[i++];
        if (!cond->Eval()) {
            return false;
        }
        if (m_count <= i) {
            return true;
        }
    }
}

// 0x47875c ConditionList::DBG_TraceDetailedConditionListInformation(__sFILE*) const
// Calls the trace of every Condition in order (vtable slot 0x10). Nothing is written for an empty list.
void ConditionList::DBG_TraceDetailedConditionListInformation(__sFILE* stream) const {
    if (m_count > 0) {
        int i = 0;
        do {
            Condition* cond = m_conditions[i++];
            cond->DBG_TraceDetailedConditionInformation(stream);
        } while (m_count > i);
    }
}

// 0x478914 ConditionList::AssignPyData(Structs::v2ConditionStub*, int)
// Stores the stub array and the count. For a positive count it allocates the pointer array (operator new[](4 * count,
// 0) in the original, which forwards to CustomAlloc, as ConditionData::Init does for the list). Each stub gets a
// Condition from the factory table, indexed by the stub's type (m_w1), and the Condition keeps the stub in m_stub.
void ConditionList::AssignPyData(Structs::v2ConditionStub* stubs, int count) {
    m_stubs = stubs;  // +0x08
    m_count = count;  // +0x00
    if (count > 0) {
        const std::size_t bytes = sizeof(Condition*) * static_cast<std::size_t>(count);  // host pointers, not 4 * count
        m_conditions = static_cast<Condition**>(CustomAlloc(static_cast<unsigned int>(bytes)));  // +0x04
        for (int i = 0; i < count; ++i) {
            Structs::v2ConditionStub* stub = &stubs[i];
            Condition* cond = s_conditionImplDataMap[stub->Op]();
            m_conditions[i] = cond;
            cond->m_stub = stub;
        }
    }
}

// 0x478eac ConditionList::~ConditionList() (D1) and 0x478f20 ConditionList::~ConditionList() (D2): the same body.
// Each non-null Condition is destroyed through the vptr and released with CustomFree (the original calls the
// deleting destructor, slot 0x04, which does the same). The array is then released with CustomFree. m_count is not
// changed by the destructor, as in the original.
ConditionList::~ConditionList() {
    if (m_count > 0) {
        int i = 0;
        do {
            Condition* cond = m_conditions[i];
            if (cond != nullptr) {
                cond->~Condition();
                CustomFree(cond);
                m_conditions[i] = nullptr;
            }
            ++i;
        } while (m_count > i);
    }
    if (m_conditions != nullptr) {
        CustomFree(m_conditions);
        m_conditions = nullptr;
    }
}

// 0x4787a8 Condition_IsEventInState::~Condition_IsEventInState() (D1), and 0x4791f4 is the deleting destructor
// (compiler generated, see the notes at the top). The original body sets the vptr to this class's vtable and calls
// Condition::~Condition, which is what the implicit destructor does here.
Condition_IsEventInState::~Condition_IsEventInState() {}

// 0x478db4 Condition_IsEventInState::Eval()
// True when the event row named by m_stub (+0x8, m_w2) is in the state named by m_stub (+0xc, m_w3), looked up in the
// current level's GameEventManager (Level +0x194). The state is the first word of the GameEvent, as the original reads it.
// At gAssertLevel 2 the original stores 0 to address 0 (dword_0 = 0), a deliberate crash; here it aborts.
bool Condition_IsEventInState::Eval() {
    Structs::v2ConditionStub* stub = m_stub;
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr) {
        return false;
    }
    GameEventManager* manager = level->m_gameEventManager;  // +0x194
    if (manager != nullptr) {
        // The original dereferences the result without a null test, so an id outside the table crashes there too.
        GameEvent* ev = manager->GetEventByID(stub->Op1);
        return stub->Op2 == ev->m_state;
    }
    if (gAssertLevel == 2) {
        std::abort();  // the original stores 0 to address 0 here
    }
    if (gAssertLevel != 1) {
        return false;
    }
    std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "gEvtMgr != 0", kConditionSourceFile, 147);
    return false;
}

// 0x478c10 Condition_IsEventInState::DBG_TraceDetailedConditionInformation(__sFILE*)
// Prints "\t    Event       : %s\n" with the event name from Arrays::v2Events::m_memberNames ("na" when the id is outside
// Arrays::v2Events::size), then the State line as the original writes it. The return value is the count of that second fprintf (the
// original returns fprintf's int).
std::size_t Condition_IsEventInState::DBG_TraceDetailedConditionInformation(__sFILE* stream) {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    const std::int32_t eventId = m_stub->Op1;
    const char* eventName = (eventId < 0 || static_cast<std::uint32_t>(eventId) >= Arrays::v2Events::size)
                                ? "na"
                                : Arrays::v2Events::m_memberNames.names[eventId];
    std::fprintf(out, "\t    Event       : %s\n", eventName);
    PyDataConstants* constants = Singleton<Application>::s_inst.m_pyDataConstants;  // dword_99F758, Application +0x2c
    const char* stateName = constants->getConstantName("v2EventState", m_stub->Op2);
    return static_cast<std::size_t>(std::fprintf(out, "\t    State       : %s\n\n", stateName));
}
