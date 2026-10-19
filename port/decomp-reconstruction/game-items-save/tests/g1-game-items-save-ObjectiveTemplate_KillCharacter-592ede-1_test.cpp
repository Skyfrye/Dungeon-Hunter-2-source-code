// Test for batch g1-game-items-save-ObjectiveTemplate_KillCharacter-592ede-1 (handleEvent, four instantiations).
//
// The batch source is included so that the anonymous-namespace helper CountKillEvent is visible. The four handleEvent
// specializations need a constructed objective, whose vtable and base constructors belong to other batches, so they are
// not run here. The counting rule they share is run on test doubles that have the members the helper uses (m_currentQty,
// m_requiredQty, SetIsCompleted, Unregister) and an event with the QE_ field names (flag0, flag1, value, matchId).
// The link stub below is the one out-of-line function the included source calls directly.
//
// Checks: a non-matching id changes nothing; a fresh kill counts, sets flag0 and the event's value and completes at the
// requirement; a re-delivered event with a count (flag1) raises the counter to its value, returns when the counter is
// already at or above it, and completes at the requirement; flag0 is written only on the fresh path; a zero requirement
// completes on the first counted kill; Unregister and SetIsCompleted run once per completion.

#include <cstdint>
#include <cstdio>

#include "../src/g1-game-items-save-ObjectiveTemplate_KillCharacter-592ede-1.cpp"

// ---- Link stub: Objective::SetIsCompleted (0x47ba10, defined in the Objective batch). Not reached through the doubles. ----

void Objective::SetIsCompleted() {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// Test double for the objective members the helper reads and writes (Objective_Qty +0x20 and +0x2c, completion, unregister).
struct FakeObjective {
    int m_currentQty = 0;   // +0x20
    int m_requiredQty = 0;  // +0x2c
    int completed = 0;
    int unregistered = 0;
    void SetIsCompleted() { ++completed; }
    void Unregister() { ++unregistered; }
};

// Test double for the QE_* event fields the helper reads and writes.
struct FakeKill {
    std::uint8_t m_flag0 = 0;     // +0x10
    std::uint8_t m_flag1 = 0;     // +0x11
    std::int32_t m_value = -1;    // +0x14
    std::int32_t m_matchId = 0;   // +0x18
};

constexpr std::int32_t kRowId = 8;  // the row word the event must match in these checks

void TestNonMatchingIdChangesNothing() {
    FakeObjective obj;
    obj.m_requiredQty = 1;
    FakeKill kill;
    kill.m_matchId = 7;  // not the row id
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 0);
    EXPECT(kill.m_flag0 == 0);
    EXPECT(kill.m_value == -1);
    EXPECT(obj.completed == 0);
    EXPECT(obj.unregistered == 0);
}

void TestFreshKillCountsAndWritesEvent() {
    FakeObjective obj;
    obj.m_requiredQty = 2;
    FakeKill kill;
    kill.m_matchId = kRowId;
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 1);
    EXPECT(kill.m_flag0 == 1);
    EXPECT(kill.m_value == 1);
    EXPECT(kill.m_flag1 == 0);
    EXPECT(obj.completed == 0);
    EXPECT(obj.unregistered == 0);
}

void TestFreshKillsCompleteAtRequirement() {
    FakeObjective obj;
    obj.m_requiredQty = 2;
    FakeKill first;
    first.m_matchId = kRowId;
    FakeKill second;
    second.m_matchId = kRowId;
    CountKillEvent(obj, &first, kRowId);
    CountKillEvent(obj, &second, kRowId);
    EXPECT(obj.m_currentQty == 2);
    EXPECT(second.m_flag0 == 1);
    EXPECT(second.m_value == 2);
    EXPECT(obj.completed == 1);
    EXPECT(obj.unregistered == 1);
}

void TestRedeliveredEventRaisesCounterToItsValue() {
    FakeObjective obj;
    obj.m_requiredQty = 3;
    FakeKill kill;
    kill.m_matchId = kRowId;
    kill.m_flag1 = 1;
    kill.m_value = 2;
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 2);
    EXPECT(kill.m_flag0 == 0);  // the fresh path only writes flag0
    EXPECT(kill.m_value == 2);
    EXPECT(obj.completed == 0);  // 2 < 3
}

void TestRedeliveredEventAtOrBelowCounterChangesNothing() {
    FakeObjective obj;
    obj.m_currentQty = 2;
    obj.m_requiredQty = 2;
    FakeKill kill;
    kill.m_matchId = kRowId;
    kill.m_flag1 = 1;
    kill.m_value = 2;  // equal to the counter: the original returns before completing
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 2);
    EXPECT(obj.completed == 0);
    EXPECT(obj.unregistered == 0);

    kill.m_value = 1;  // below the counter
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 2);
    EXPECT(obj.completed == 0);
}

void TestRedeliveredEventCompletesWhenValueReachesRequirement() {
    FakeObjective obj;
    obj.m_requiredQty = 2;
    FakeKill kill;
    kill.m_matchId = kRowId;
    kill.m_flag1 = 1;
    kill.m_value = 5;  // raises the counter to 5, which is past the requirement
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 5);
    EXPECT(obj.completed == 1);
    EXPECT(obj.unregistered == 1);
    EXPECT(kill.m_flag0 == 0);
}

void TestZeroRequirementCompletesOnFirstCountedKill() {
    FakeObjective obj;
    obj.m_requiredQty = 0;
    FakeKill kill;
    kill.m_matchId = kRowId;
    CountKillEvent(obj, &kill, kRowId);
    EXPECT(obj.m_currentQty == 1);
    EXPECT(obj.completed == 1);
    EXPECT(obj.unregistered == 1);
}

void TestRowWordSelectsMatch() {
    // The four specializations pass m_w8 or m_w9 of the row. The helper compares whichever word it is given.
    FakeObjective obj;
    obj.m_requiredQty = 1;
    FakeKill kill;
    kill.m_matchId = 9;
    CountKillEvent(obj, &kill, 8);  // row word 8: no match
    EXPECT(obj.m_currentQty == 0);
    CountKillEvent(obj, &kill, 9);  // row word 9: match
    EXPECT(obj.m_currentQty == 1);
    EXPECT(obj.completed == 1);
}

}  // namespace

int main() {
    TestNonMatchingIdChangesNothing();
    TestFreshKillCountsAndWritesEvent();
    TestFreshKillsCompleteAtRequirement();
    TestRedeliveredEventRaisesCounterToItsValue();
    TestRedeliveredEventAtOrBelowCounterChangesNothing();
    TestRedeliveredEventCompletesWhenValueReachesRequirement();
    TestZeroRequirementCompletesOnFirstCountedKill();
    TestRowWordSelectsMatch();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
