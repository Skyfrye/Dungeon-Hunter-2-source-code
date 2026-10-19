#include "net-session-online/multiplayer_state_machine.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
int calls[4];
std::int32_t cbA(void*) { ++calls[0]; return 2; }   // moves state 1 to 2
std::int32_t cbB(void*) { ++calls[1]; return -1; }  // returns negative: state unchanged
std::int32_t cbC(void*) { ++calls[2]; return 9; }   // skipped entry, must not run
std::int32_t cbD(void*) { ++calls[3]; return 5; }   // replacement for state 2
}  // namespace

int main() {
    MultiplayerStateMachine m;
    m.initStateMachine();
    CHECK(m.CurrentStateForTest() == -1);
    CHECK(m.EntryCountForTest() == 0);
    m.runStateMachine();  // empty list and no state: nothing runs

    m.addStateEntry(1, cbA, false);
    m.addStateEntry(2, cbB, false);
    m.addStateEntry(1, cbC, true);
    CHECK(m.EntryCountForTest() == 3);

    // Walk in order: A moves 1 to 2, B runs with state 2 and keeps it, C is skipped.
    m.SetStateForTest(1);
    m.runStateMachine();
    CHECK(m.CurrentStateForTest() == 2);
    CHECK(calls[0] == 1 && calls[1] == 1 && calls[2] == 0);

    // Skipped state: B does not run with state 2.
    m.skipState(2);
    m.runStateMachine();
    CHECK(calls[1] == 1);

    // Replacing the callback keeps the skip flag: the first id-2 entry (B) is still skipped.
    m.replaceStateEntryCallbackFunc(2, cbD);
    m.SetStateForTest(2);
    m.runStateMachine();
    CHECK(m.CurrentStateForTest() == 2);
    CHECK(calls[3] == 0);

    // A new unskipped entry with a replaced callback runs the new callback.
    m.addStateEntry(7, cbB, false);
    m.replaceStateEntryCallbackFunc(7, cbD);
    m.SetStateForTest(7);
    m.runStateMachine();
    CHECK(m.CurrentStateForTest() == 5);
    CHECK(calls[3] == 1);
    m.removeStateEntry(7);
    CHECK(m.EntryCountForTest() == 3);

    // Remove the first state-1 entry; the count drops and the others stay.
    m.removeStateEntry(1);
    CHECK(m.EntryCountForTest() == 2);
    m.removeStateEntry(42);  // unknown id: nothing changes
    CHECK(m.EntryCountForTest() == 2);
    m.removeStateEntry(1);   // entry C, the last one: the tail must move back
    CHECK(m.EntryCountForTest() == 1);
    m.addStateEntry(3, cbA, false);  // the tail is valid again after removing the last entry
    CHECK(m.EntryCountForTest() == 2);

    // Destroy frees everything. The state and count are left as they were.
    m.destroyStateMachine();
    m.SetStateForTest(1);
    m.runStateMachine();
    CHECK(m.CurrentStateForTest() == 1);
    CHECK(m.EntryCountForTest() == 2);
    m.SetStateForTest(3);

    // After destroy the list accepts new entries again. The entry added before destroy
    // (id 3, cbA) is gone, so a new id-1 entry is the only one that runs.
    m.addStateEntry(1, cbA, false);
    m.SetStateForTest(1);
    m.runStateMachine();
    CHECK(m.CurrentStateForTest() == 2);
    CHECK(calls[0] == 2);

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
