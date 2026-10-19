// Test for batch g1-game-world-ObjectSearcher-3d104b-0.
//
// Covers the TargetSorter comparators (alone and inside a std::priority_queue the way TargetList uses them), the
// CharacterList and PlayerList iterators, and the PlayerList count read from PlayerManager.
//
// This translation unit includes dh2/PlayerManager.hpp but not dh2/Character.hpp (the two cannot share a TU). Character
// is used only through pointers, so no Character is constructed or converted here; the GameObject base sits at offset 0
// of Character, which the Get() check relies on. PlayerManager is zero-filled storage (its constructor belongs to
// another batch) and only m_numCharacters is written, as in the GameObject test.
//
// The vtables emitted by g1-game-world-ObjectSearcher-3d104b-0.cpp refer to functions of other batches, so they are
// stubbed below: BackupObjectList (_Clear and the six virtuals) and PlayerList::Get / GetChar.

#include <cstdint>
#include <cstdio>
#include <deque>
#include <list>
#include <queue>

#include "dh2/ObjectSearcher.hpp"
#include "dh2/PlayerManager.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using Info = ObjectSearcher::TargetInfo;
using Sorter = ObjectSearcher::TargetSorter;

Info Hit(float distance, float angle, std::int32_t flags) {
    Info h{};
    h.object = nullptr;
    h.distance = distance;
    h.angle = angle;
    h.isCharacter = flags;
    h.lateral = 0.0f;
    return h;
}

// A non-null Character* that is never dereferenced.
Character* FakeCharacter(std::uintptr_t n) {
    return reinterpret_cast<Character*>(n * 0x100u);
}

bool SameObject(const GameObject* got, const Character* want) {
    return static_cast<const void*>(got) == static_cast<const void*>(want);
}

void TestSorters() {
    const Info a = Hit(1.0f, 0.2f, 0);
    const Info b = Hit(3.0f, 0.5f, 0);

    EXPECT(!Sorter::_sortNoSort(a, b));
    EXPECT(!Sorter::_sortNoSort(b, a));

    // Closest, same class: the nearer hit sorts first (a sorts before b when a is nearer).
    EXPECT(Sorter::_sortClosest(b, a));
    EXPECT(!Sorter::_sortClosest(a, b));
    EXPECT(!Sorter::_sortClosest(a, Hit(1.0f, 9.0f, 0)));  // equal distance is not "less"

    // Closest, characters before objects regardless of distance.
    const Info obj = Hit(1.0f, 0.0f, 0);
    const Info chr = Hit(9.0f, 0.0f, 1);
    EXPECT(Sorter::_sortClosest(obj, chr));
    EXPECT(!Sorter::_sortClosest(chr, obj));

    // Only bit 0 marks a character: flags 2 is an object.
    const Info notChr = Hit(9.0f, 0.0f, 2);
    EXPECT(Sorter::_sortClosest(notChr, obj));   // both objects, 9 > 1
    EXPECT(Sorter::_sortClosest(notChr, chr));   // object before character
    EXPECT(!Sorter::_sortClosest(chr, notChr));

    // Frontal, same class: the larger angle sorts first; distance is ignored.
    const Info left = Hit(5.0f, 0.1f, 0);
    const Info right = Hit(5.0f, 0.9f, 0);
    EXPECT(Sorter::_sortFrontal(right, left));
    EXPECT(!Sorter::_sortFrontal(left, right));
    EXPECT(!Sorter::_sortFrontal(Hit(0.0f, 0.5f, 0), Hit(9.0f, 0.5f, 0)));
    // Frontal, characters before objects.
    EXPECT(Sorter::_sortFrontal(obj, chr));
    EXPECT(!Sorter::_sortFrontal(chr, obj));

    // The sorter as the TargetList priority queue installs it (_sortClosest): characters first, then nearest.
    std::priority_queue<Info, std::deque<Info>, Sorter> closest(Sorter(&Sorter::_sortClosest));
    closest.push(Hit(4.0f, 0.0f, 0));
    closest.push(Hit(2.0f, 0.0f, 0));
    closest.push(Hit(7.0f, 0.0f, 1));
    closest.push(Hit(1.0f, 0.0f, 0));
    EXPECT(closest.top().isCharacter == 1);
    EXPECT(closest.top().distance == 7.0f);
    closest.pop();
    EXPECT(closest.top().distance == 1.0f);
    closest.pop();
    EXPECT(closest.top().distance == 2.0f);
    closest.pop();
    EXPECT(closest.top().distance == 4.0f);
    closest.pop();
    EXPECT(closest.empty());
}

void TestCharacterList() {
    Character* c1 = FakeCharacter(1);
    Character* c2 = FakeCharacter(2);
    Character* c3 = FakeCharacter(3);

    ObjectSearcher::CharacterList cl;

    std::list<Character*> empty;
    cl.m_list = &empty;
    cl.Reset();
    EXPECT(cl.AtEnd());
    EXPECT(cl.Size() == 0);

    std::list<Character*> three{c1, c2, c3};
    cl.m_list = &three;
    cl.Reset();
    EXPECT(!cl.AtEnd());
    EXPECT(cl.Size() == 3);
    EXPECT(cl.GetChar() == c1);
    EXPECT(SameObject(cl.Get(), c1));
    cl.Next();
    EXPECT(cl.GetChar() == c2);
    cl.Next();
    EXPECT(cl.GetChar() == c3);
    EXPECT(!cl.AtEnd());
    cl.Next();
    EXPECT(cl.AtEnd());

    // Reset starts the walk again.
    cl.Reset();
    EXPECT(!cl.AtEnd());
    EXPECT(cl.GetChar() == c1);
}

void TestPlayerList() {
    alignas(PlayerManager) unsigned char storage[sizeof(PlayerManager)] = {};
    PlayerManager* pm = reinterpret_cast<PlayerManager*>(storage);
    pm->m_numCharacters = 3;

    ObjectSearcher::PlayerList pl;
    pl.m_players = pm;
    pl.Reset();
    EXPECT(!pl.AtEnd());
    EXPECT(pl.Size() == 3);
    pl.Next();
    pl.Next();
    EXPECT(!pl.AtEnd());
    pl.Next();
    EXPECT(pl.AtEnd());

    pl.Reset();
    EXPECT(!pl.AtEnd());

    pm->m_numCharacters = 0;
    pl.Reset();
    EXPECT(pl.AtEnd());
    EXPECT(pl.Size() == 0);
}

}  // namespace

// Stubs for functions of other batches that the vtables emitted in the batch sources refer to.
// DELIBERATE STUBS, not real cursor walks: the two `Get` definitions below also replace the library's real
// ObjectSearcher list accessors for the whole executable (tests link with -Wl,--allow-multiple-definition and the
// first definition wins). The checks only read TargetSorter/CharacterList/PlayerList cursors, none of which calls a
// BackupObjectList or PlayerList Get, so nothing dereferences the null today. Any later check that walks a list
// through TargetList::Search or SearchRect would receive null from Get and fault in the candidate test; the real
// Get returns the object the cursor points at.
void ObjectSearcher::BackupObjectList::_Clear() {}
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() { return true; }
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() { return 0; }
GameObject* ObjectSearcher::BackupObjectList::Get() { return nullptr; }
Character* ObjectSearcher::BackupObjectList::GetChar() { return nullptr; }
GameObject* ObjectSearcher::PlayerList::Get() { return nullptr; }
Character* ObjectSearcher::PlayerList::GetChar() { return nullptr; }

int main() {
    TestSorters();
    TestCharacterList();
    TestPlayerList();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("ObjectSearcher batch 0: all checks passed\n");
    return 0;
}
