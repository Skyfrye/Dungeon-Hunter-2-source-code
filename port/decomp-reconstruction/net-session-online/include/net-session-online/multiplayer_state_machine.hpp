// MultiplayerStateMachine: a list of state entries. Each entry maps a state id to a
// callback. runStateMachine walks the list in order and runs every entry whose id
// matches the current state and that is not skipped. A callback that returns a value
// of 0 or more becomes the new state.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x00 current state (-1 when none)  +0x04 entry count  +0x08 head entry
//   +0x0c tail link (the link slot that the next added entry is stored in)
// Entry (malloc'd 0x14 bytes in the original):
//   +0x00 skip flag  +0x04 state id  +0x08 callback  +0x0c next  +0x10 link to this entry
#pragma once

#include <cstdint>

class MultiplayerStateMachine {
public:
    using StateCallback = std::int32_t (*)(void*);

    MultiplayerStateMachine() = default;
    // Not in the original (the original has no such symbol): deliberately empty. The entries are freed by
    // the owner OnlineGameState::Destroy (0x4a0388), which is the only path the binary frees them on;
    // OnlineGameState's own D1 (0x43f9c4) does not touch them. An implicit destructor here would call
    // destroyStateMachine() on the owner's destruction, i.e. before the D1 body runs, which the binary
    // never does.
    ~MultiplayerStateMachine() {}
    MultiplayerStateMachine(const MultiplayerStateMachine&) = delete;
    MultiplayerStateMachine& operator=(const MultiplayerStateMachine&) = delete;

    // 0x4a00d8 _ZN23MultiplayerStateMachine16initStateMachineEv
    void initStateMachine();
    // 0x4a00f8 _ZN23MultiplayerStateMachine29replaceStateEntryCallbackFuncEiPFiPvE
    // Replaces the callback of the first entry with this id.
    void replaceStateEntryCallbackFunc(std::int32_t stateId, StateCallback callback);
    // 0x4a012c _ZN23MultiplayerStateMachine9skipStateEi
    // Marks the first entry with this id as skipped.
    void skipState(std::int32_t stateId);
    // 0x4a0164 _ZN23MultiplayerStateMachine15runStateMachineEv
    // The callback is called with a null argument: the original passes the skip flag
    // byte, which is 0 when the callback runs.
    void runStateMachine();
    // 0x4a01dc _ZN23MultiplayerStateMachine16removeStateEntryEi
    // Removes the first entry with this id.
    void removeStateEntry(std::int32_t stateId);
    // 0x4a0254 _ZN23MultiplayerStateMachine19destroyStateMachineEv
    void destroyStateMachine();
    // 0x4a02a0 _ZN23MultiplayerStateMachine13addStateEntryEiPFiPvEb
    void addStateEntry(std::int32_t stateId, StateCallback callback, bool skip);

    // Not in the original: test seams.
    // The current state (+0x00; -1 when none). Read inline by the callers that test OnlineGameState's state.
    std::int32_t CurrentState() const { return state_; }
    // Not in the original: the inline store of the callers (NativeStartMultiplayerGame writes 300 to the word at +0x00).
    void SetState(std::int32_t state) { state_ = state; }
    std::int32_t CurrentStateForTest() const { return state_; }
    void SetStateForTest(std::int32_t state) { state_ = state; }
    std::int32_t EntryCountForTest() const { return count_; }

private:
    struct Entry {
        bool skip;                 // +0x00
        std::int32_t stateId;      // +0x04
        StateCallback callback;    // +0x08
        Entry* next;               // +0x0c
        Entry** link;              // +0x10, the slot that holds this entry
    };

    std::int32_t state_ = -1;      // +0x00
    std::int32_t count_ = 0;       // +0x04
    Entry* head_ = nullptr;        // +0x08
    Entry** tail_ = &head_;        // +0x0c
};
