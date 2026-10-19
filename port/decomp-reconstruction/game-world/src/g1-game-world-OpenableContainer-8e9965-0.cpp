// Batch g1-game-world-OpenableContainer-8e9965-0: the OpenableContainer methods of libDungeonHunter2.so (the lock
// accessors, the key lookups, Unlock and TryUnlocking, Interact, InitPost, DeclareProperties, and the constructors and
// destructors). Declarations come from dh2/OpenableContainer.hpp, which needs no change for this batch. Offsets in
// comments are the original 32-bit ones.
//
// Pydata row fields (Structs::OpenableContainer, pydata-accessors/w7_structs_5.hpp; the element is 40 bytes in the
// original, and the field m_wN sits at +4*N). The names here are the uses in these bodies:
//   m_w2  (+0x08) int32  sound id       GetSound
//   m_w3  (+0x0c) bool   keep physics   KeepPhysics
//   m_w4  (+0x10) int32  loot table id  GetLoot
//   m_w6  (+0x18) char*  script name    GetScript (the listing zeroes it, see w7_arrays27.cpp)
//   m_w9  (+0x24) int32  visual index   GetVisual
// A row is reached through the typed element pointer, never by byte offset (Track B decision 3).
//
// Include constraints: pydata-accessors/member_names.hpp is not included here (it clashes with w7_arrays27.hpp on
// Arrays::ItemTable, see game/include/dh2/global/reward_trace.hpp). The Arrays lookups are declared by hand, as the
// sibling batches do, and the explicit instantiations are in pydata-accessors/src/member_ids.cpp (OpenableContainers)
// and pydata-accessors/src/tb_accessors-Arrays-0.cpp (ItemTable, TrophyTable).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/OpenableContainer.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/QE_OpenGameObject.hpp"
#include "dh2/TrophyManager.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// Engine-wide assert level (core-platform/memory.hpp, not included: see the note above).
extern int gAssertLevel;

namespace Arrays {
struct TrophyTable;  // defined in pydata-accessors/w7_arrays_00.hpp
// The explicit instantiations: OpenableContainers in pydata-accessors/src/member_ids.cpp, ItemTable and TrophyTable in
// pydata-accessors/src/tb_accessors-Arrays-0.cpp.
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

const char kOpenableContainerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Containers\\OpenableContainer.cpp";

// The original ASSERT(expression) at OpenableContainer.cpp:line. Level 2 stops the process (the original stores to
// address 0); level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kOpenableContainerSource, line);
    }
}

// Row `index` of Arrays::OpenableContainers as the host element type. The caller has checked index != -1.
const Structs::OpenableContainer& TableRow(int index) {
    return reinterpret_cast<const Structs::OpenableContainer*>(Arrays::OpenableContainers::members)[index];
}

}  // namespace

// 0x3a1634 _ZNK17OpenableContainer9GetScriptEv
// The script name is the row's m_w6 string buffer (+0x18). Returns null when m_dataId is -1, as the original does.
const char* OpenableContainer::GetScript() const {
    if (m_dataId == -1) {  // +0x374
        return nullptr;
    }
    return TableRow(m_dataId).Script;
}

// 0x3a1670 _ZNK17OpenableContainer9GetVisualEv
// The visual index is the row's m_w9 (+0x24). Without a row the original returns m_dataId itself, which is -1.
int OpenableContainer::GetVisual() const {
    if (m_dataId != -1) {  // +0x374
        return TableRow(m_dataId).Visual;
    }
    return m_dataId;
}

// 0x3a16a8 _ZNK17OpenableContainer8IsLockedEv
// Locked when the state is not ACTIVATE or OPENED, that is PRESPAWN, SPAWN or IDLE (the original's unsigned
// (state - 3) > 1), and a key item is set (m_keyItemIndex is not -1).
bool OpenableContainer::IsLocked() const {
    const bool activatedOrOpened = m_state == STATE_ACTIVATE || m_state == STATE_OPENED;  // +0x394
    return !activatedOrOpened && m_keyItemIndex != -1;  // +0x710
}

// 0x3a16cc _ZNK17OpenableContainer18GetInteractionTypeEP10GameObject
// Constant 0 (the other argument is unused).
int OpenableContainer::GetInteractionType(GameObject* other) const {
    (void)other;
    return 0;
}

// 0x3a177c _ZNK17OpenableContainer11KeepPhysicsEv
// The row is found by the data_desc string (m_dataDesc, +0x378; its data pointer is at +0x38c). The keep-physics flag is
// the row's m_w3 (+0x0c). Returns false when no row matches.
bool OpenableContainer::KeepPhysics() const {
    const int row = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(m_dataDesc.c_str());
    if (row == -1) {
        return false;
    }
    return TableRow(row).KeepSolid;
}

// 0x3a17c4 _ZNK17OpenableContainer8GetSoundEv
// The sound id is the row's m_w2 (+0x08). Returns -1 when no row matches.
int OpenableContainer::GetSound() const {
    const int row = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(m_dataDesc.c_str());
    if (row != -1) {
        return TableRow(row).InteractSound;  // +0x08
    }
    return row;
}

// 0x3a1804 _ZNK17OpenableContainer7GetLootEv
// The loot table id is the row's m_w4 (+0x10). Returns -1 when no row matches.
int OpenableContainer::GetLoot() const {
    const int row = Arrays::GetMemberIDByString<Arrays::OpenableContainers>(m_dataDesc.c_str());
    if (row != -1) {
        return TableRow(row).Loot;  // +0x10
    }
    return row;
}

// 0x3a1844 _ZNK17OpenableContainer9GetDataIdEv
// -1 when the data_desc string is empty, otherwise the row found by that string. The original compares the string's
// two pointer words at +0x388 and +0x38c, which is the empty test of its std::string (the same layout as
// DestructibleContainer::GetDataId).
int OpenableContainer::GetDataId() const {
    if (m_dataDesc.empty()) {
        return -1;
    }
    return Arrays::GetMemberIDByString<Arrays::OpenableContainers>(m_dataDesc.c_str());
}

// 0x3a1860 _ZN17OpenableContainer6UnlockEP9Character
// Returns 0 unless the character is given, holds an item of the key row (m_keyItemIndex), that item has at least
// m_keyQty in its quantity, and m_keyConsume is set. Then it consumes m_keyQty of the key through
// ItemInventory::TryConsuming and returns its result. The item lookup and the quantity test run in the original's order.
int OpenableContainer::Unlock(Character* character) {
    if (character == nullptr) {
        return 0;
    }
    // ItemInventory is the base at +0x37c of Character. The original calls it non-virtually, so the qualified name is used.
    ItemInstance* item = character->ItemInventory::FindItem(m_keyItemIndex);  // +0x710
    if (item == nullptr) {
        return 0;
    }
    const int qty = m_keyQty;  // +0x708
    if (qty > item->m_qty) {  // the original's (qty <= m_qty) test, the quantity at ItemInstance +0x50
        return 0;
    }
    if (!m_keyConsume) {  // +0x70c
        return 0;
    }
    return character->ItemInventory::TryConsuming(m_keyItemIndex, qty);
}

// 0x3a18bc _ZN17OpenableContainer12TryUnlockingEP10GameObject
// 1 when the container is not locked. Otherwise the object is passed to Unlock as a Character when its IsCharacter()
// (vtable +0x24) is true, and as null when it is not.
int OpenableContainer::TryUnlocking(GameObject* other) {
    if (!IsLocked()) {
        return 1;
    }
    Character* character = nullptr;
    if (other->IsCharacter()) {  // ObjectBase vtable +0x24
        character = static_cast<Character*>(other);
    }
    return Unlock(character);
}

// 0x3a1904 _ZN17OpenableContainer8InteractEP10GameObject
// Returns at once when the lock stays shut (TryUnlocking returns 0). Otherwise: the level assert (line 249); a peer that hosts the local player (IsLocalPlayerHosting) raises the OpenGameObject
// quest event on the level (v2QuestObjectiveType, the interacting object as the character, unk_64 as the target id, GetDataId() as the match id); Container::Interact. When the interacting
// object is a Character that IsPlayer(), its property 218 is incremented, and when the value passes 99 for a local player, the trophy "open_100_chests" is unlocked (UnlockTrophy with -1 when
// the name is not found). The original's int return is not part of the void declaration.
void OpenableContainer::Interact(GameObject* other) {
    if (TryUnlocking(other) == 0) {
        return;
    }

    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("level", 249);
    }
    if (ApplicationGetInstance().m_playerManager->IsLocalPlayerHosting()) {  // Application +0x40
            QE_OpenGameObject event;
            event.eventId_ = static_cast<std::uint32_t>(
                ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "OpenGameObject"));
            event.m_character = other;
            event.m_targetId = unk_64;
            event.m_flag0 = 0;
            event.m_flag1 = 0;
            event.m_value = -1;
            event.m_matchId = GetDataId();
            level->RaiseAsync(event);
    }

    Container::Interact(other);

    // ObjectBase::GetHandle of the interacting object (the second argument of the original call), then the
    // ObjectHandle::operator Character*.
    ObjectHandle handle = other->GetHandle();
    Character* character = handle;
    if (character == nullptr || !character->IsPlayer()) {  // vtable +0x28 IsPlayer
        return;
    }
    // Character +0x560 is its CharProperties base. Property 218 counts the openings.
    character->PROPS_AddInt(218, 1);
    if (character->PROPS_GetInt(218, false) <= 99) {
        return;
    }
    if (!ApplicationGetInstance().m_playerManager->IsLocalPlayer(character)) {
        return;
    }
    // The original walks Arrays::TrophyTable::m_memberNames with strcmp; the lookup is the same search (-1 when no name
    // matches or the table is empty).
    const int trophy = Arrays::GetMemberIDByString<Arrays::TrophyTable>("open_100_chests");
    TrophyManager::s_instance->UnlockTrophy(trophy);
}

// 0x3a1b64 _ZN17OpenableContainer8InitPostEv
// Container::InitPost first. When the key_name string is not empty, its ItemTable row is stored in m_keyItemIndex
// (+0x710), or -1 when no row name matches. An empty key name leaves m_keyItemIndex as it was.
void OpenableContainer::InitPost() {
    Container::InitPost();
    if (!m_keyName.empty()) {  // +0x6f0
        m_keyItemIndex = Arrays::GetMemberIDByString<Arrays::ItemTable>(m_keyName.c_str());  // +0x710
    }
}

// 0x3a1bf4 _ZN17OpenableContainerD1Ev (complete-object destructor)
// 0x3a1c64 _ZN17OpenableContainerD2Ev (base-object destructor, same body)
// The pseudocode resets the vtable pointers, releases the key_name string buffer (+0x6f0) and calls Container::~Container.
// In C++ those are the implicit steps of the destructor chain, so the body is empty.
OpenableContainer::~OpenableContainer() {}

// 0x3a1cb0 _ZN17OpenableContainerC1EN10ObjectBase6GO_IDSE
// 0x3a1d2c _ZN17OpenableContainerC2EN10ObjectBase6GO_IDSE
// The two bodies are identical in the binary: Container(id), then key_consume (+0x70c) is 1, the key item index (+0x710) is -1 and key_qty (+0x708) is 1.
OpenableContainer::OpenableContainer(ObjectBase::GO_IDS id) : Container(id) {
    m_keyQty = 1;             // +0x708
    m_keyConsume = true;      // +0x70c
    m_keyItemIndex = -1;      // +0x710
}

// 0x3a1e8c _ZN17OpenableContainer17DeclarePropertiesEv
// Container::DeclareProperties first (the GameObject and Container properties). Then "key_name" (string, default "",
// m_keyName), "key_qty" (int, default 1, m_keyQty) and "key_consume" (bool, default true, m_keyConsume), in the original
// order. The typed AddProperty templates are the ones the original's inline Property objects match (as in Container).
void OpenableContainer::DeclareProperties() {
    Container::DeclareProperties();
    AddProperty("key_name", m_keyName);
    AddProperty("key_qty", m_keyQty, 1);
    AddProperty("key_consume", m_keyConsume, true);
}
