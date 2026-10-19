// Batch g1-game-items-save-pack6-e1e5d0-0 (owners QuestMoveInZone, Reward_CharacterProps and Reward_ConsumeLoot, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layouts and method declarations
// are in dh2/QuestMoveInZone.hpp, dh2/Reward_CharacterProps.hpp and dh2/Reward_ConsumeLoot.hpp. The ItemTable name lookup of
// the consume trace is dh2/global/reward_trace.hpp, defined in g1-game-items-save-pack6-e1e5d0-0_names.cpp.
//
// Notes:
//  * The vptr stores and the base-destructor calls are compiler generated. Each D1 body is therefore empty here: the C++
//    destructor runs the base destructor after its own body. The scalar deleting destructors (D0: 0x3962d4, 0x483884 and
//    0x48380c) are compiler generated (the original is ~X then CustomFree, which delete produces). No body is written.
//  * Constructors and destructors at two addresses (C1/C2, D1/D2) are the same code, so one definition covers each pair.
//  * Asserts: gAssertLevel 1 prints the ASSERT line. A null GameObject faults in the original at every assert level (level 2
//    writes to address 0; levels 0 and 1 read the vtable of null). This port aborts there too.
//  * OnCollisionBegins is partial: the QE_MoveInZone it raises needs its event id stored (see the function and the ledger).
//  * Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation passes the quantity row's name pointer to a "%d" conversion
//    (assembly of 0x482f4c: the name word is loaded from the names table and passed to fprintf with "\t\t  Qty=%d\n").
//    This port passes the same pointer, truncated to int, so the number printed is a host address, not the original's
//    32-bit address. The trace is a debug listing and no other behaviour depends on it.

#include "dh2/QuestMoveInZone.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/QE_MoveInZone.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Reward_CharacterProps.hpp"
#include "dh2/Reward_ConsumeLoot.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/reward_trace.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// core-platform/memory.hpp is not included: its glitch_core deps clash with the glitch-shared header that Zone.hpp
// pulls in. The game-anim sources declare the global the same way.
extern int gAssertLevel;

namespace {

// The original's ASSERT(go) at QuestMoveInZone.cpp:38, as the listing prints it (the path is the build machine's).
const char kQuestMoveInZoneSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\QuestMoveInZone.cpp";

}  // namespace

// 0x396330 QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS) (C1). 0x396378 (C2) is the same code.
// The original calls Zone(id, hasPhysics = true, playerOnly = false). The vptr stores are compiler generated.
QuestMoveInZone::QuestMoveInZone(ObjectBase::GO_IDS id) : Zone(id, true, false) {}

// 0x39628c QuestMoveInZone::~QuestMoveInZone() (D1). 0x3962f0 (D2) is the same code. ~Zone runs after this body.
// The deleting destructor (D0, 0x3962d4) is compiler generated.
QuestMoveInZone::~QuestMoveInZone() {}

// 0x396120 QuestMoveInZone::OnCollisionBegins(GameObject*)
// A null GameObject asserts (QuestMoveInZone.cpp:38; the original faults on the vtable read, so the port aborts). A character
// that enters while a level exists raises a QE_MoveInZone on the level (EventManager::RaiseAsync): the PyData
// "v2QuestObjectiveType"/"MoveInZone" id, the character, the zone's unk_64 (+0x64) as the target id, value -1, and the zone.
void QuestMoveInZone::OnCollisionBegins(GameObject* other) {
    if (other == nullptr) {
        // ASSERT(go) at QuestMoveInZone.cpp:38. Level 2 faults at once; level 1 prints the line and then faults on the
        // vtable read. Both fault in the original, so the port aborts.
        if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "go", kQuestMoveInZoneSource, 38);
        }
        std::abort();
    }
    if (!other->IsCharacter()) {  // vtable slot +0x24
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    const std::int32_t moveInZoneId = ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "MoveInZone");
    QE_MoveInZone event(moveInZoneId, other, unk_64, -1, this);
    level->RaiseAsync(event);
}

// 0x482a70 Reward_CharacterProps::~Reward_CharacterProps() (D1). 0x483884 is the deleting destructor (D0): compiler generated.
Reward_CharacterProps::~Reward_CharacterProps() {}

// 0x4828a8 Reward_CharacterProps::Compile(void)
Reward* Reward_CharacterProps::Compile() {
    m_compiled = true;          // +0x08
    m_compiledStub = m_pyData;  // +0x14 copy of the stub at +0x0c
    return this;
}

// 0x4833e8 Reward_CharacterProps::Give(void)
bool Reward_CharacterProps::Give() {
    if (!m_compiled) {
        return m_compiled;  // the original returns the flag itself, which is false here
    }
    const std::int32_t property = m_compiledStub->Param2;  // +0x0c of the stub
    const std::uint32_t shifted = static_cast<std::uint32_t>(m_compiledStub->Param1) << 8;  // amount << 8, as the original
    m_character->ModifyCharProps(property, static_cast<std::int32_t>(shifted));
    return true;
}

// 0x483330 Reward_CharacterProps::DBG_TraceDetailedRewardInformation(__sFILE*)
int Reward_CharacterProps::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    const Structs::v2QuestRewardStub* record = m_pyData;  // +0x0c
    static_cast<void>(std::fwrite("\t  v2QuestRewardGiveCharProps\n", 1, 30, out));
    const char* typeName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestRewardType", record->Type);  // stub +0x04
    std::fprintf(out, "\t    Type        : %s\n", typeName);
    std::fprintf(out, "\t    Amount      : %d \n", record->Param1);  // stub +0x08
    // The property name comes from the owner's CharProperties base (Character +0x560).
    const char* propName = m_character->CharProperties::DBG_PROPS_GetName(record->Param2);  // stub +0x0c
    return std::fprintf(out, "\t\t Property    : %s \n\n", propName);
}

// 0x482a08 Reward_ConsumeLoot::~Reward_ConsumeLoot() (D1). 0x48380c is the deleting destructor (D0): compiler generated.
Reward_ConsumeLoot::~Reward_ConsumeLoot() {}

// 0x4828d0 Reward_ConsumeLoot::Compile(void)
Reward* Reward_ConsumeLoot::Compile() {
    if (m_pyData->Param2 >= 0) {  // stub +0x0c: the item row
        m_compiled = true;
    }
    return this;
}

// 0x483034 Reward_ConsumeLoot::Give(void)
bool Reward_ConsumeLoot::Give() {
    if (!m_compiled) {
        return false;
    }
    const Structs::v2QuestRewardStub* record = m_pyData;  // +0x0c
    // The owner's inventory is the ItemInventory base of Character at +0x37c. Both calls are direct in the original.
    ItemInventory* inventory = static_cast<ItemInventory*>(m_owner);
    if (inventory->ItemInventory::TryConsuming(record->Param2, record->Param1) != 0) {  // item row, then quantity
        return false;
    }
    inventory->ItemInventory::FindItem(record->Param2);
    return false;
}

// 0x482f4c Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation(__sFILE*)
int Reward_ConsumeLoot::DBG_TraceDetailedRewardInformation(__sFILE* s) {
    std::FILE* out = reinterpret_cast<std::FILE*>(s);
    const Structs::v2QuestRewardStub* record = m_pyData;  // +0x0c
    static_cast<void>(std::fwrite("\t  v2QuestRewardConsumeLoot\n", 1, 28, out));
    std::fprintf(out, "\t\t  Loot=ItemTable.%s\n", ItemTableRowName(record->Param2));  // item row, stub +0x0c
    // The original passes the quantity row's name pointer to "%d" (see the notes above).
    const char* qtyName = ItemTableRowName(record->Param1);  // stub +0x08
    return std::fprintf(out, "\t\t  Qty=%d\n",
                        static_cast<int>(reinterpret_cast<std::uintptr_t>(qtyName)));
}
