// Batch g1-game-world-ObjectSearcher-3d104b-1 (ObjectSearcher, part 2 of 3): the backup result accessor, the
// BackupObjectList cursor methods, the RoomObjectList walker, SetRefObject, _IsGameObjectValid, the TargetList search
// over all rooms and the frontal SetSortType clone. The two PlayerList getters are in the companion file
// g1-game-world-ObjectSearcher-3d104b-1_players.cpp. Declarations come from dh2/ObjectSearcher.hpp. Offsets in comments
// are the original 32-bit ones.
//
// Skipped: 0x38d764, the deleting destructor (D0) of CharacterList. The compiler emits it for `delete`; its
// complete-object body is empty (0x38d60c, part 0), then the original calls CustomFree(this).
// Partial: 0x3d015c SetSortType (the clone ignores its argument). Described at its definition.
// 0x3d0020 Search(float, float) is complete: ObjectManager +0x80 is declared as the room list (m_roomZones).
//
// RoomObjectList members are typed as std::list iterators (see dh2/ObjectSearcher.hpp). The room list holds the
// object lists of the rooms, so the walk needs no RoomZone layout.

#include <cstdio>
#include <cstdlib>
#include <deque>
#include <list>
#include <queue>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance

namespace {

// The original ASSERT in Game/Helpers/ObjectSearcher.h. Level 2 stops the process (the original writes to address 0);
// level 1 prints the message.
const char kObjectSearcherSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources/Game/Helpers/ObjectSearcher.h";

void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kObjectSearcherSource, line);
    }
}

}  // namespace

// 0x38d764 _ZN14ObjectSearcher13CharacterListD0Ev
// Skipped: the deleting destructor (D0). The compiler emits it for `delete` on a CharacterList*. See the file header.

// 0x38f72c _ZN14ObjectSearcher10TargetList16GetResultsBackupEPKc
// The named backup set, created on first use. The original asserts a non-null name first.
ObjectSearcher::BackupObjectList& ObjectSearcher::TargetList::GetResultsBackup(const char* name) {
    if (!name) {
        ReportAssert("n", 387);
    }
    return m_backups[name];   // +0x3c m_backups (std::map keyed by std::string)
}

// 0x3d0020 _ZN14ObjectSearcher10TargetList6SearchEff
// The search over every room. The original builds the RoomObjectList inline: its room list is ObjectManager +0x80
// (dword_99F764 + 128, m_roomZones, a list of the rooms' std::list<GameObject*>* object lists), its cursor starts at the
// first room and its end is the list end, and the current object is null. It then calls Search(maxRange, maxAngle,
// list). The current object is not set here: the list's value-initialised cursor stands in for the original's zero.
void ObjectSearcher::TargetList::Search(float maxRange, float maxAngle) {
    RoomObjectList rooms;
    rooms.m_list = &dword_99F764->m_roomZones;      // +0x04 room list (ObjectManager +0x80)
    rooms.m_node = dword_99F764->m_roomZones.begin();  // +0x08 first room
    rooms.m_end = dword_99F764->m_roomZones.end();     // +0x0c end of the room list
    Search(maxRange, maxAngle, rooms);
}

// 0x3d015c _ZN14ObjectSearcher10TargetList11SetSortTypeEi.clone.1
// PARTIAL: the binary holds only this compiler clone, specialised for the frontal sorter. It pops every queued hit (the
// same start/finish test as empty()) and installs _sortFrontal as the queue's comparator (TargetList +0x28). The
// argument is not read, so the closest and unsorted sort types the header describes have no body here.
void ObjectSearcher::TargetList::SetSortType(int sortType) {
    (void)sortType;
    while (!m_results.empty()) {
        m_results.pop();
    }
    // The queue is empty after the pops, so replacing it with an empty queue that carries the new comparator
    // reproduces the store of the sorter pointer at +0x28.
    m_results = std::priority_queue<TargetInfo, std::deque<TargetInfo>, TargetSorter>(
        TargetSorter(&TargetSorter::_sortFrontal));
}

// 0x4a17fc _ZN14ObjectSearcher14RoomObjectList5AtEndEv
bool ObjectSearcher::RoomObjectList::AtEnd() {
    return m_node == m_end;
}

// 0x4a1814 _ZN14ObjectSearcher14RoomObjectList4SizeEv
// Counts the nodes of the room list, not the objects: the original's loop walks the room list only.
int ObjectSearcher::RoomObjectList::Size() {
    int count = 0;
    for (auto it = m_list->begin(); it != m_list->end(); ++it) {
        ++count;
    }
    return count;
}

// 0x4a1840 _ZN14ObjectSearcher14RoomObjectList3GetEv
// The object at the cursor. Callers test AtEnd first.
GameObject* ObjectSearcher::RoomObjectList::Get() {
    return *m_current;
}

// 0x4a184c _ZN14ObjectSearcher16BackupObjectList5ResetEv
void ObjectSearcher::BackupObjectList::Reset() {
    m_current = m_objects.data();                    // +0x10 first element
    m_end = m_objects.data() + m_objects.size();     // +0x14 end of the vector
}

// 0x4a185c _ZN14ObjectSearcher16BackupObjectList5AtEndEv
bool ObjectSearcher::BackupObjectList::AtEnd() {
    return m_current == m_end;
}

// 0x4a1874 _ZN14ObjectSearcher16BackupObjectList4NextEv
void ObjectSearcher::BackupObjectList::Next() {
    ++m_current;
}

// 0x4a1884 _ZN14ObjectSearcher16BackupObjectList4SizeEv
int ObjectSearcher::BackupObjectList::Size() {
    return static_cast<int>(m_objects.size());
}

// 0x4a1898 _ZN14ObjectSearcher16BackupObjectList3GetEv
// The object at the cursor. Callers test AtEnd first.
GameObject* ObjectSearcher::BackupObjectList::Get() {
    return *m_current;
}

// 0x4a18a4 _ZN14ObjectSearcher14RoomObjectListD1Ev
// The original body is empty. The walker owns nothing: it holds cursors into the room list.
ObjectSearcher::RoomObjectList::~RoomObjectList() {}

// 0x4a18a8 _ZN14ObjectSearcher14RoomObjectList16_ValidateCurrentEv
// Moves past rooms whose object cursor has reached the room's end. Stops at the first room that still has objects,
// or at the end of the room list.
void ObjectSearcher::RoomObjectList::_ValidateCurrent() {
    while (m_node != m_end) {
        if (m_current != (*m_node)->cend()) {
            break;
        }
        ++m_node;
        if (m_node == m_end) {
            break;
        }
        m_current = (*m_node)->cbegin();
    }
}

// 0x4a18ec _ZN14ObjectSearcher14RoomObjectList4NextEv
void ObjectSearcher::RoomObjectList::Next() {
    ++m_current;
    _ValidateCurrent();
}

// 0x4a18fc _ZN14ObjectSearcher14RoomObjectList5ResetEv
void ObjectSearcher::RoomObjectList::Reset() {
    m_node = m_list->begin();                 // +0x08 first room
    m_end = m_list->end();                    // +0x0c end of the room list
    if (m_node != m_end) {
        m_current = (*m_node)->cbegin();      // first object of the first room
    }
    _ValidateCurrent();
}

// 0x4a191c _ZN14ObjectSearcher10TargetList12SetRefObjectEP10GameObject
// Records the reference object. When it is a Character (ObjectBase virtual +0x24, IsCharacter), it is also stored as
// the reference character.
void ObjectSearcher::TargetList::SetRefObject(GameObject* object) {
    if (object) {
        m_refObject = object;                                       // +0x2c
        if (object->IsCharacter()) {
            m_refCharacter = static_cast<Character*>(m_refObject);  // +0x30
        }
    }
}

// 0x4a1950 _ZN14ObjectSearcher10TargetList18_IsGameObjectValidEP10GameObject
// The filter selected by m_arg3 (+0x38). Mode 0 accepts interaction type 8 with the reference object, mode 1 accepts any
// interaction type other than -1. Other modes accept only mode 3, and they never touch the object.
bool ObjectSearcher::TargetList::_IsGameObjectValid(GameObject* object) {
    if (m_arg3 == 0) {
        return object->GetInteractionType(m_refObject) == 8;      // GameObject vtable +0x90
    }
    if (m_arg3 == 1) {
        return object->GetInteractionType(m_refObject) != -1;
    }
    return m_arg3 == 3;
}
