// Batch g1-game-items-save-Objective_GatherLoot-974c8b-0 (owner Objective_GatherLoot, part 1 of 1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout and the method
// declarations are dh2/Objective_GatherLoot.hpp (Objective_Qty, Objective_EventReceiver and Objective are its bases).
// The row is Structs::v2QuestObjectiveStub (pydata-accessors/structs_records.hpp). The 32-bit offsets +0x20 (level
// list index), +0x24 (loot id) and +0x28 (required quantity) are the members m_w8, m_w9 and m_w10.
//
// Shared conventions in this file:
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0), level 1 prints the ASSERT line on stderr and
//    goes on, 0 is silent. The ASSERT lines name Progression/Objective.cpp.
//  * Three lookups live in helper units, because their headers cannot share a unit with the pydata record headers:
//      - Arrays::ItemTableMemberNameAt and Arrays::LevelListMemberNameAt read the name tables (member_names.hpp, which
//        defines Arrays::ItemTable and Arrays::LevelList next to w7_arrays27.hpp). See
//        g1-game-items-save-Objective_GatherLoot-974c8b-0_names.cpp. The element counts (Arrays::ItemTable::size,
//        Arrays::LevelList::size) are read here, as the original's bound checks do.
//      - LevelListIndexOfLevel reads Level::m_levelListIndex (+0x3c). dh2/Level.hpp declares IStreamBase a second time
//        next to the pydata records. See g1-game-items-save-Objective_GatherLoot-974c8b-0_level.cpp.
//  * handleEvent reads the fields of a QE_GatherLoot without checking the event id, as the original does. The original
//    also writes the event (+0x10, +0x14) through a const IEvent*, so the port casts the const away for those writes.
//  * Destructors: the original's D1 writes the two vptrs and calls Objective::~Objective. The port's implicit base
//    destructors run the same chain. D0 (0x47ce1c) is the compiler's deleting destructor and is not written.

#include "dh2/Objective_GatherLoot.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <list>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/QE_GatherLoot.hpp"
#include "pydata-accessors/structs_records.hpp"  // Structs::v2QuestObjectiveStub
#include "pydata-accessors/w7_arrays27.hpp"     // Arrays::ItemTable::size
#include "pydata-accessors/w7_arrays_00.hpp"    // Arrays::LevelList::size

class Level;

namespace Arrays {
// Defined in g1-game-items-save-Objective_GatherLoot-974c8b-0_names.cpp.
const char* ItemTableMemberNameAt(int index);
const char* LevelListMemberNameAt(int index);
}  // namespace Arrays

// Defined in g1-game-items-save-Objective_GatherLoot-974c8b-0_level.cpp.
int LevelListIndexOfLevel(const Level* level);

namespace {

const char kObjectiveSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Progression\\Objective.cpp";

// The original's ASSERT(expr) at Objective.cpp:line. Level 2 aborts, level 1 prints and the caller goes on.
void ReportObjectiveAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kObjectiveSource, line);
    }
}

}  // namespace

// 0x47a1d4 _ZNK20Objective_GatherLoot12GetPositionsER13Vector3DFList. Empty in the original.
void Objective_GatherLoot::GetPositions(Vector3DFList& /*positions*/) const {}

// 0x47a1f0 _ZN20Objective_GatherLootD1Ev (complete-object destructor). Same chain as the base destructors; the vptr
// stores are compiler generated.
Objective_GatherLoot::~Objective_GatherLoot() {}

// 0x47ce1c _ZN20Objective_GatherLootD0Ev is the scalar deleting destructor. Compiler generated: it calls the destructor
// and then frees the object (CustomFree in the original). No body is written; see the ledger.

// 0x47aba4 _ZN20Objective_GatherLoot18InitWithCurrentQtyEv
ItemInstance* Objective_GatherLoot::InitWithCurrentQty() {
    if (m_owner == nullptr) {  // +0x10
        ReportObjectiveAssert("m_owner != 0", 1058);
        // The original goes on to read the inventory at address 892 of a null owner, which is not a valid access.
        return nullptr;
    }
    // The row's loot id (+0x24) is looked up in the owner's inventory (the ItemInventory base at +0x37c).
    ItemInstance* item = static_cast<ItemInventory*>(m_owner)->FindItem(m_pyData->OID2);  // +0x0c row
    if (item != nullptr) {
        m_currentQty = item->m_qty;  // +0x20 takes the instance quantity (+0x50, signed 16-bit)
    }
    return item;
}

// 0x47af38 _ZNK20Objective_GatherLoot37DBG_TraceDetailedObjectiveInformationEP7__sFILE
int Objective_GatherLoot::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);  // the same FILE round trip as the other batches
    static_cast<void>(std::fwrite("\t  Objective_GatherLoot\n", 1, 0x18, out));

    const int lootId = m_pyData->OID2;  // +0x24
    const char* lootName = "na";
    if (lootId >= 0 && static_cast<std::uint32_t>(lootId) < Arrays::ItemTable::size) {
        lootName = Arrays::ItemTableMemberNameAt(lootId);
    }
    std::fprintf(out, "\t    Loot : %s\n", lootName);
    std::fprintf(out, "\t    Qty : %d\n", m_pyData->Value);  // +0x28

    const int levelId = m_pyData->OID1;  // +0x20
    const char* levelName = "na";
    if (levelId >= 0 && static_cast<std::uint32_t>(levelId) < Arrays::LevelList::size) {
        levelName = Arrays::LevelListMemberNameAt(levelId);
    }
    std::fprintf(out, "\t    Level : %s\n", levelName);
    return std::fprintf(out, "\t    CurrentQty : %d\n", m_currentQty);  // +0x20
}

// 0x47ba5c _ZN20Objective_GatherLoot11handleEventEPK6IEventPK12EventManager
bool Objective_GatherLoot::handleEvent(const IEvent* event, const EventManager* /*manager*/) {
    // The original writes the counted flag and the quantity into the event. The const on the parameter is not
    // kept for those writes, which is why the cast removes it.
    QE_GatherLoot* gather = const_cast<QE_GatherLoot*>(static_cast<const QE_GatherLoot*>(event));
    if (m_pyData->OID2 == gather->m_matchId && m_owner == gather->m_character) {  // +0x24 vs +0x18, +0x10 vs +0x08
        InitWithCurrentQty();
        if (gather->m_flag1 == 0) {
            // The event carries no quantity yet: this objective counts it and passes its own quantity back.
            gather->m_flag0 = 1;              // +0x10
            gather->m_value = m_currentQty;   // +0x14
        } else {
            // The event carries the quantity: it replaces the one read from the inventory.
            m_currentQty = gather->m_value;   // +0x14 into +0x20
        }
        if (m_pyData->Value <= m_currentQty) {  // +0x28 required quantity
            SetIsCompleted();
        }
    }
    return false;
}

// 0x47bae4 _ZN20Objective_GatherLoot7CompileEv
void Objective_GatherLoot::Compile() {
    const int lootId = m_pyData->OID2;  // +0x24
    if (lootId == -1) {
        ReportObjectiveAssert("objData->Loot != -1", 986);
        ReportObjectiveAssert("objData->Loot > 0", 987);
        return;
    }
    if (lootId <= 0) {
        ReportObjectiveAssert("objData->Loot > 0", 987);
    }

    if (m_pyData->Value > 0) {  // +0x28 required quantity
        Level* level = ApplicationGetInstance().GetCurrentLevel();
        if (level == nullptr) {
            ReportObjectiveAssert("lvl != 0", 995);
        }
        const int levelListId = m_pyData->OID1;  // +0x20; -1 matches any level
        // The original reads the current level's index without a null test; with no level and a row level it has
        // no defined result, so this port does nothing there.
        if (levelListId == -1 || (level != nullptr && LevelListIndexOfLevel(level) == levelListId)) {
            InitWithCurrentQty();
            m_valid = true;  // +0x08
            if (m_currentQty >= m_pyData->Value) {
                SetIsCompleted();
            }
        }
    }
}

// 0x47d6fc _ZN20Objective_GatherLoot10UnregisterEv
void Objective_GatherLoot::Unregister() {
    Objective_EventReceiver::Unregister();
    if (m_valid) {  // +0x08
        static_cast<ItemInventory*>(m_owner)->UnregisterQuestGatheringItemId(m_pyData->OID2);  // +0x24 loot id
    }
}

// 0x47eaec _ZN20Objective_GatherLoot8RegisterEv
void Objective_GatherLoot::Register() {
    Objective_EventReceiver::Register();
    if (!m_valid) {  // +0x08
        return;
    }
    // The owner's counted list of gathered item ids: the list header is the ItemInventory member at +0x30 (owner +0x3ac).
    // A loot id already in the list gains a reference; a new one is appended with a count of 1.
    const int lootId = m_pyData->OID2;  // +0x24
    std::list<ItemInventory::QuestGatheredItem>& gathered =
        static_cast<ItemInventory*>(m_owner)->m_activeQuestGatheredItemIds;
    for (ItemInventory::QuestGatheredItem& entry : gathered) {
        if (entry.m_itemId == lootId) {
            ++entry.m_refCount;
            return;
        }
    }
    gathered.push_back(ItemInventory::QuestGatheredItem{lootId, 1});
}
