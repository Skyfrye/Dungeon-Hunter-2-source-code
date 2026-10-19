// Test for batch g1-game-world-ObjectSearcher-3d104b-1.
//
// Covers the logic that runs without the engine: the BackupObjectList cursors, the RoomObjectList walk over room lists
// (empty rooms are skipped, the walk ends at the room list's end), the named backup sets of GetResultsBackup, the filter
// modes of _IsGameObjectValid that never reach a GameObject, and the queue reset of SetSortType. Fake object addresses
// are never dereferenced.
//
// The batch source refers to definitions owned by other batches or that need the engine. This test defines them as
// link stubs: gAssertLevel, the two TargetSorter comparators, the TargetList constructor and destructor, the
// BackupObjectList destructor, and the GetChar methods of BackupObjectList and RoomObjectList. None of them is reached
// by the tested paths except the TargetList constructor and the default comparator, which the tests use to build
// TargetList objects.

#include <cstdint>
#include <cstdio>
#include <list>

#include "dh2/ObjectSearcher.hpp"

// Engine assert level (core-platform/memory.hpp). The tests never trigger an assert.
int gAssertLevel = 0;

bool ObjectSearcher::TargetSorter::_sortNoSort(const TargetInfo&, const TargetInfo&) {
    return false;
}

bool ObjectSearcher::TargetSorter::_sortFrontal(const TargetInfo&, const TargetInfo&) {
    return false;
}

ObjectSearcher::TargetList::TargetList(GameObject* refObject, int filterMask, int arg3, int sortType)
    : m_refObject(refObject), m_refCharacter(nullptr), m_filterMask(filterMask), m_arg3(arg3) {
    (void)sortType;
}

ObjectSearcher::TargetList::~TargetList() {}

ObjectSearcher::IObjectList::~IObjectList() {}

ObjectSearcher::BackupObjectList::~BackupObjectList() {}

Character* ObjectSearcher::BackupObjectList::GetChar() {
    return nullptr;
}

Character* ObjectSearcher::RoomObjectList::GetChar() {
    return nullptr;
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

GameObject* Fake(std::uintptr_t address) {
    return reinterpret_cast<GameObject*>(address);
}

void TestBackupCursors() {
    ObjectSearcher::BackupObjectList backup;
    backup.m_objects = {Fake(0x10), Fake(0x20), Fake(0x30)};
    backup.Reset();
    EXPECT(backup.Size() == 3);
    EXPECT(!backup.AtEnd());
    EXPECT(backup.Get() == Fake(0x10));
    backup.Next();
    EXPECT(backup.Get() == Fake(0x20));
    backup.Next();
    EXPECT(backup.Get() == Fake(0x30));
    backup.Next();
    EXPECT(backup.AtEnd());

    ObjectSearcher::BackupObjectList empty;
    empty.Reset();
    EXPECT(empty.Size() == 0);
    EXPECT(empty.AtEnd());
}

void TestRoomWalk() {
    std::list<GameObject*> roomA;  // empty room
    std::list<GameObject*> roomB{Fake(0x100), Fake(0x200)};
    std::list<GameObject*> roomC{Fake(0x300)};
    std::list<std::list<GameObject*>*> rooms{&roomA, &roomB, &roomC};

    ObjectSearcher::RoomObjectList walk;
    walk.m_list = &rooms;
    walk.Reset();
    EXPECT(walk.Size() == 3);   // counts the rooms, as the original loop does
    EXPECT(!walk.AtEnd());
    EXPECT(walk.Get() == Fake(0x100));  // skips the empty first room
    walk.Next();
    EXPECT(walk.Get() == Fake(0x200));
    walk.Next();
    EXPECT(walk.Get() == Fake(0x300));  // crosses into the third room
    walk.Next();
    EXPECT(walk.AtEnd());

    std::list<std::list<GameObject*>*> onlyEmpty{&roomA};
    ObjectSearcher::RoomObjectList none;
    none.m_list = &onlyEmpty;
    none.Reset();
    EXPECT(none.AtEnd());

    std::list<std::list<GameObject*>*> noRooms;
    ObjectSearcher::RoomObjectList zero;
    zero.m_list = &noRooms;
    zero.Reset();
    EXPECT(zero.AtEnd());
    EXPECT(zero.Size() == 0);
}

void TestBackupSets() {
    ObjectSearcher::TargetList targets(nullptr, 0x7fffffff, 0, 1);
    ObjectSearcher::BackupObjectList& first = targets.GetResultsBackup("first");
    first.m_objects.push_back(Fake(0x10));
    EXPECT(&targets.GetResultsBackup("first") == &first);
    EXPECT(targets.GetResultsBackup("first").Size() == 1);
    EXPECT(targets.GetResultsBackup("second").Size() == 0);
}

void TestFilters() {
    // Modes 2 and 3 never call through the object: mode 3 accepts, mode 2 rejects.
    ObjectSearcher::TargetList modeThree(nullptr, 0, 3, 1);
    EXPECT(modeThree._IsGameObjectValid(nullptr));
    ObjectSearcher::TargetList modeTwo(nullptr, 0, 2, 1);
    EXPECT(!modeTwo._IsGameObjectValid(nullptr));

    // A null reference object leaves the reference fields unchanged.
    modeThree.SetRefObject(nullptr);
    EXPECT(modeThree.m_refObject == nullptr);
}

void TestSortTypeResetsQueue() {
    ObjectSearcher::TargetList targets(nullptr, 0x7fffffff, 0, 1);
    ObjectSearcher::TargetInfo hit{};
    targets.m_results.push(hit);
    targets.m_results.push(hit);
    targets.SetSortType(2);
    EXPECT(targets.m_results.empty());
    targets.m_results.push(hit);
    EXPECT(targets.m_results.size() == 1);
}

}  // namespace

int main() {
    TestBackupCursors();
    TestRoomWalk();
    TestBackupSets();
    TestFilters();
    TestSortTypeResetsQueue();
    if (g_failures == 0) {
        std::printf("g1-game-world-ObjectSearcher-3d104b-1 tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
