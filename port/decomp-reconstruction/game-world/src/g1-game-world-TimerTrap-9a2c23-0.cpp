// Batch g1-game-world-TimerTrap-9a2c23-0: the TimerTrap class (a TriggerTrap that re-arms itself: its delay comes from its
// Arrays::TimerTraps row, and while it is active it transfers victims each frame) and TimerTrap::Create. Reconstructed from
// the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the assembly where the pseudocode drops an argument
// (the constructor, GetDataId and Create). Offsets in comments are the original 32-bit ones. Partial functions name the
// blocked part in their comment; the ledger notes repeat the reason.
//

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "pydata-accessors/name_table.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TimerTrap.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Engine-wide assert level (core-platform/memory.hpp).
extern int gAssertLevel;

namespace {

const char kTimerTrapSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Traps\\TimerTrap.cpp";

// GO id of TimerTrap objects. Create accepts only an object whose ObjectBase m_goId (+0xf4) is this value.
constexpr int kTimerTrapGoId = 16;

// The original ASSERT(expression). Level 2 stops the process (the original stores to address 0); level 1 prints the
// message and carries on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kTimerTrapSource, line);
    }
}

// Arrays::TimerTraps row (stride 32 in the original). The host elements are Structs::TimerTrap, reached through a typed
// pointer, never through byte arithmetic. The pydata fields are placeholders (m_wN); the names in the comments are the
// meanings the original's loads give them (Structs::TimerTrap in w7_structs_5.hpp).
const Structs::TimerTrap& TrapRow(int dataIndex) {
    return reinterpret_cast<const Structs::TimerTrap*>(Arrays::TimerTraps::members)[dataIndex];
}

}  // namespace

// 0x39d524 TimerTrap::GetScript() const
const char* TimerTrap::GetScript() const {
    if (m_dataIndex == -1) {  // +0x3c0
        return "";
    }
    return TrapRow(m_dataIndex).Script;  // row +0x14, script name (char*)
}

// 0x39d568 TimerTrap::GetVisual() const
int TimerTrap::GetVisual() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Visual;  // row +0x1c, Visual
    }
    return m_dataIndex;
}

// 0x39d59c TimerTrap::GetDamagerId() const
// Unlike TriggerTrap, m_damagerIndex is not consulted: the result is the row's damager, or m_dataIndex (-1) without a row.
int TimerTrap::GetDamagerId() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Damage;  // row +0x04, Damage
    }
    return m_dataIndex;
}

// 0x39d5d0 TimerTrap::GetHurtChance() const
// A damager index set by Create is returned as it is (the listing returns +0x3fc without a further read). Without a
// data row the result is m_damagerIndex as well, which is -1 at that point.
int TimerTrap::GetHurtChance() const {
    if (m_damagerIndex != -1) {  // +0x3fc
        return m_damagerIndex;
    }
    if (m_dataIndex == -1) {  // +0x3c0
        return m_damagerIndex;
    }
    return TrapRow(m_dataIndex).HurtChance;  // row +0x0c, HurtChance
}

// 0x39d61c TimerTrap::GetSound() const
int TimerTrap::GetSound() const {
    if (m_dataIndex != -1) {
        return TrapRow(m_dataIndex).Sound;  // row +0x18, Sound
    }
    return m_dataIndex;
}

// 0x39d650 TimerTrap::GetDelay() const
int TimerTrap::GetDelay() const {
    if (m_dataIndex == -1) {
        return 0;
    }
    return TrapRow(m_dataIndex).Delay;  // row +0x08, Delay (ms)
}

// 0x39d688 TimerTrap::SpecificUpdate()
// Counts m_timer down by the frame time while the trap has a data row. At zero an inactive trap reloads the timer from
// GetDelay() and activates; an active trap holds the timer at 0. Then, while the trap is active, victims are transferred.
// The original re-reads m_activated after the timer step, which is what the final test does here.
void TimerTrap::SpecificUpdate() {
    if (m_dataIndex >= 0) {  // +0x3c0
        m_timer -= Singleton<Application>::s_inst.GetDt();  // +0x404, frame time in ms
        if (m_timer <= 0) {
            if (!m_activated) {  // +0x3c4
                m_timer = GetDelay();  // vtable +0xf8
                Activate();            // vtable +0xf0
            } else {
                m_timer = 0;
            }
        }
    }
    if (m_activated) {
        TransferVictims();
    }
}

// 0x39d724 TimerTrap::Create(GameObject*, int, int)
// Spawns a TimerTrap object, owned by owner, with trapIndex into Arrays::TimerTraps and damagerIndex.
// The data name (Arrays::TimerTraps::m_memberNames[trapIndex]) is copied into m_data (+0x3a8).
GameObject* TimerTrap::Create(GameObject* owner, int trapIndex, int damagerIndex) {
    if (owner == nullptr) {
        ReportAssert("owner", 116);
        return nullptr;
    }
    static unsigned int counter = 0;  // TimerTrap::Create(...)::counter, a 32-bit word in the original
    char name[20];
    std::snprintf(name, sizeof name, "TimerTrap_%04u", ++counter);
    ObjectHandle handle = dword_99F764->Spawn("TimerTrap", name, true, true);
    ObjectBase* object = handle.GetObject(false);
    if (object == nullptr || static_cast<int>(object->m_goId) != kTimerTrapGoId) {  // ObjectBase +0xf4
        return nullptr;
    }
    TimerTrap* trap = static_cast<TimerTrap*>(object);
    trap->m_owner = owner;          // +0x3f8
    trap->m_dataIndex = trapIndex;  // +0x3c0
    trap->m_data = Arrays::TimerTraps::m_memberNames.names[trapIndex];    // +0x3a8, the 24-byte std::string
    trap->m_damagerIndex = damagerIndex;   // +0x3fc
    trap->m_position = owner->m_position;  // +0x160..+0x168, copied word by word in the original
    trap->InitPost();                      // vtable +0x1c
    trap->InitFinal();                     // vtable +0x58
    if (owner->m_roomZone != nullptr) {    // +0x2f4
        owner->m_roomZone->AddInitialObject(trap);
    }
    return trap;
}

// 0x39d904 TimerTrap::GetDataId() const
// The first index in Arrays::TimerTraps::m_memberNames (scanned up to Arrays::TimerTraps::size) whose name equals m_data (the word the listing reads at +0x3bc is its data pointer), or -1.
int TimerTrap::GetDataId() const {
    return pydata::FindMemberName(Arrays::TimerTraps::m_memberNames, static_cast<int>(Arrays::TimerTraps::size), m_data.c_str());
}

// 0x39d978 TimerTrap::InitPost()
void TimerTrap::InitPost() {
    TriggerTrap::InitPost();
    m_timer = GetDelay();  // vtable +0xf8
}

// 0x39d9a4 TimerTrap::DeclareProperties()
// Thunk: forwards to TriggerTrap::DeclareProperties, not reimplemented (TRACK-B decision 4).
void TimerTrap::DeclareProperties() {
    TriggerTrap::DeclareProperties();
}

// 0x39d9b0 TimerTrap::~TimerTrap() (D1) and 0x39da14 TimerTrap::~TimerTrap() (D2): the same body. The vptr writes and the
// TriggerTrap base destructor are the compiler's.
TimerTrap::~TimerTrap() {
}

// 0x39d9f8 TimerTrap::~TimerTrap() (D0)
// skipped: the compiler generates the deleting destructor from the virtual ~TimerTrap() declared in dh2/TimerTrap.hpp.
// The original body is the D1 body followed by CustomFree(this), which is delete this here.

// 0x39da54 TimerTrap::TimerTrap(ObjectBase::GO_IDS) (C1) and 0x39da9c TimerTrap::TimerTrap(ObjectBase::GO_IDS) (C2): the
// same body. TriggerTrap(id) is the base constructor, and the id is passed on unchanged (r1 in the listing). The vptr
// writes are the compiler's. m_timer starts at 0.
TimerTrap::TimerTrap(ObjectBase::GO_IDS id) : TriggerTrap(id) {
    m_timer = 0;  // +0x404
}
