// Batch g1-game-app-StateMachine-4cb24d-0 (StateMachine, part 1 of 2).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Declarations are in dh2/StateMachine.hpp; the members there match the constructor and the accesses of the bodies:
// m_queue +0x04, m_stack +0x0c (begin, end, capacity), m_recurseIndex +0x18, m_updating +0x1c, m_drawing +0x1d.
//
// The queue and the stack are std::list and std::vector, as the header declares them. The STLport node and vector
// internals of the original are not reproduced; the control flow and every call into a state are.
//
// State slots used here (StateBase, dh2/StateBase.hpp): D0 +0x04 (through delete), Ctor +0x08, Dtor +0x0c,
// Pause +0x10, Resume +0x14, Update +0x18, Draw +0x1c, Draw2D +0x20, Sleep +0x24, WakeUp +0x28.
//
// The destructor ~StateMachine() (D1 0x33a890, D2 0x33a924) is defined once in
// game-app/src/g1-game-app-StateMachine-4cb24d-1.cpp (batch -1). It calls __clear(), which is in this file.
#include <cstddef>

#include "dh2/StateBase.hpp"
#include "dh2/StateMachine.hpp"

// 0x339e70 _ZN12StateMachineC2Ev  [StateMachine::StateMachine()]
// 0x339ec8 _ZN12StateMachineC1Ev  [StateMachine::StateMachine()]
// Both constructors have the same instructions, so one definition serves both addresses. The vptr is stored by the
// compiler. The original links the queue sentinel to itself (+0x04 and +0x08), zeroes the three stack pointers
// (+0x0c, +0x10, +0x14), sets m_recurseIndex to -1 (+0x18), and clears m_updating (+0x1c) and m_drawing (+0x1d).
StateMachine::StateMachine() : m_recurseIndex(-1), m_updating(false), m_drawing(false) {}

// 0x339f20 _ZN12StateMachine9_popStateEPNS_9StateInfoE  [StateMachine::_popState(StateMachine::StateInfo*)]
// Does nothing when the stack is empty. A non-null info whose state is set must name the top state; otherwise the
// call returns with no effect (asm: the compare against the top at end-8 branches to the return).
// Otherwise the order is: top->Dtor(this) (+0x0c); the stack end is read again; an owned top is deleted through its
// virtual destructor (D0, +0x04); the end moves down one entry; and the new top gets Resume(this) (+0x14) when the
// stack is still not empty.
// Rebuild note: if Dtor empties the stack, the original reads the entry below begin, which is undefined. The rebuild
// returns there instead of reading it.
void StateMachine::_popState(StateInfo* info) {
    if (m_stack.empty()) {
        return;
    }
    if (info != nullptr && info->state != nullptr && info->state != m_stack.back().state) {
        return;
    }
    m_stack.back().state->Dtor(this);
    if (m_stack.empty()) {
        return;
    }
    const StateInfo top = m_stack.back();
    if (top.owned && top.state != nullptr) {
        delete top.state;
    }
    m_stack.pop_back();
    if (!m_stack.empty()) {
        m_stack.back().state->Resume(this);
    }
}

// 0x339fe0 _ZN12StateMachine12_popAllStateEv  [StateMachine::_popAllState()]
// Pops until the stack is empty. Each step is _popState(nullptr), so the top state is the one removed each time.
void StateMachine::_popAllState() {
    while (!m_stack.empty()) {
        _popState(nullptr);
    }
}

// 0x33a010 _ZNK12StateMachine13RecurseUpdateEd  [StateMachine::RecurseUpdate(double) const]
// Works only while Update() runs the top state (m_updating, +0x1c). The walk index is m_recurseIndex (+0x18). When it
// is -1 (not started) the walk starts at size-1; the state one level below that index is then updated with
// Update(this, dt) (+0x18), and the index is decremented before the call. m_recurseIndex is restored to its entry
// value afterwards, so a state can call this more than once in one Update.
// The state's Update takes a non-const StateMachine*. The original passes the same pointer; the const_cast only
// restores the type that the const method hides.
// Rebuild note: the original tests index != 0 (asm: CMP R3,#0 / BNE). The rebuild tests index > 0 because index is -1
// only when the stack is empty, and the original would then read below begin.
void StateMachine::RecurseUpdate(double dt) const {
    if (!m_updating) {
        return;
    }
    const int saved = m_recurseIndex;
    int index = saved;
    if (saved == -1) {
        index = static_cast<int>(m_stack.size()) - 1;
        m_recurseIndex = index;
    }
    if (index > 0) {
        m_recurseIndex = index - 1;
        m_stack[static_cast<std::size_t>(index - 1)].state->Update(const_cast<StateMachine*>(this), dt);
    }
    m_recurseIndex = saved;
}

// 0x33a090 _ZNK12StateMachine11RecurseDrawEv  [StateMachine::RecurseDraw() const]
// The same walk as RecurseUpdate, but only while Draw() runs the top state (m_drawing, +0x1d). The state one level
// below the walk index gets Draw(this) (+0x1c). The index is restored afterwards.
// Rebuild note: as in RecurseUpdate, index > 0 replaces the original's index != 0 for the empty-stack case.
void StateMachine::RecurseDraw() const {
    if (!m_drawing) {
        return;
    }
    const int saved = m_recurseIndex;
    int index = saved;
    if (saved == -1) {
        index = static_cast<int>(m_stack.size()) - 1;
        m_recurseIndex = index;
    }
    if (index > 0) {
        m_recurseIndex = index - 1;
        m_stack[static_cast<std::size_t>(index - 1)].state->Draw(this);
    }
    m_recurseIndex = saved;
}

// 0x33a100 _ZNK12StateMachine4DrawEv  [StateMachine::Draw() const]
// Draws the top state only. m_drawing (+0x1d) is set for the duration of the call, so RecurseDraw can act.
void StateMachine::Draw() const {
    if (m_stack.empty()) {
        return;
    }
    m_drawing = true;
    m_stack.back().state->Draw(this);
    m_drawing = false;
}

// 0x33a148 _ZNK12StateMachine6Draw2DEv  [StateMachine::Draw2D() const]
// Calls Draw2D(this) (+0x20) on the top state only. No flag is set.
void StateMachine::Draw2D() const {
    if (!m_stack.empty()) {
        m_stack.back().state->Draw2D(this);
    }
}

// 0x33a17c _ZN12StateMachine5SleepEv  [StateMachine::Sleep()]
// Calls Sleep(this) (+0x24) on every state, top first.
void StateMachine::Sleep() {
    for (std::size_t i = m_stack.size(); i != 0; --i) {
        m_stack[i - 1].state->Sleep(this);
    }
}

// 0x33a1b4 _ZN12StateMachine6WakeUpEv  [StateMachine::WakeUp()]
// Calls WakeUp(this) (+0x28) on every state, bottom first. The end is read again on each step, as the original does.
void StateMachine::WakeUp() {
    for (std::size_t i = 0; i < m_stack.size(); ++i) {
        m_stack[i].state->WakeUp(this);
    }
}

// 0x33a344 _ZN12StateMachine9PushStateEP9StateBaseb  [StateMachine::PushState(StateBase*, bool)]
// Queues a push at the tail of the queue. Nothing runs until Update() drains the queue. The node holds op 1 (PUSH)
// at node +0x10 and the StateInfo (state at +0x08, owned byte at +0x0c) in its payload.
void StateMachine::PushState(StateBase* state, bool owned) {
    m_queue.push_back(QueuedOp{StateInfo{state, owned}, QueuedOp::PUSH});
}

// 0x33a388 _ZN12StateMachine11SwitchStateEP9StateBaseb  [StateMachine::SwitchState(StateBase*, bool)]
// Queues a switch (op 0, SWITCH) at the tail of the queue. It runs at the next Update().
void StateMachine::SwitchState(StateBase* state, bool owned) {
    m_queue.push_back(QueuedOp{StateInfo{state, owned}, QueuedOp::SWITCH});
}

// 0x33a3cc _ZN12StateMachine8PopStateEP9StateBase  [StateMachine::PopState(StateBase*)]
// Queues a pop (op 2, POP) at the tail of the queue, with owned = 0. A null state pops the top at run time.
void StateMachine::PopState(StateBase* state) {
    m_queue.push_back(QueuedOp{StateInfo{state, false}, QueuedOp::POP});
}

// 0x33a410 _ZN12StateMachine7__clearEv  [StateMachine::__clear()]
// Empties both containers without running any transition. Stack entries are handled top first: each gets
// Dtor(this) (+0x0c), and an owned state is deleted through its virtual destructor. The stack is then emptied.
// Queued owned states are deleted too, but they get no Dtor because they were never started. The queue is emptied.
// Called by the destructor (see the note in the header of this file).
void StateMachine::__clear() {
    for (std::size_t i = m_stack.size(); i != 0; --i) {
        const StateInfo entry = m_stack[i - 1];
        entry.state->Dtor(this);
        if (entry.owned && entry.state != nullptr) {
            delete entry.state;
        }
    }
    m_stack.clear();
    while (!m_queue.empty()) {
        const QueuedOp& pending = m_queue.front();
        if (pending.info.owned && pending.info.state != nullptr) {
            delete pending.info.state;
        }
        m_queue.pop_front();
    }
}

// 0x33a590 _ZN12StateMachine10_pushStateERNS_9StateInfoE  [StateMachine::_pushState(StateMachine::StateInfo&)]
// When the stack is not empty, the current top gets Pause(this) (+0x10). The entry is then appended, and the new top
// gets Ctor(this) (+0x08).
// Rebuild note: the original grows the stack storage by hand (new capacity 2*size, or 1 when empty, clamped to
// 0x1fffffff) and copies the entries. std::vector::push_back does the same job. The capacity is not observable from
// the game, so the growth policy is not copied.
void StateMachine::_pushState(StateInfo& info) {
    if (!m_stack.empty()) {
        m_stack.back().state->Pause(this);
    }
    m_stack.push_back(info);
    m_stack.back().state->Ctor(this);
}

// 0x33a720 _ZN12StateMachine12_switchStateERNS_9StateInfoE  [StateMachine::_switchState(StateMachine::StateInfo&)]
// Pops every state (_popAllState, top first) and then pushes info. The stack is empty by then, so no Pause runs.
void StateMachine::_switchState(StateInfo& info) {
    _popAllState();
    _pushState(info);
}

// 0x33a740 _ZN12StateMachine15_handleQueuedOpEv  [StateMachine::_handleQueuedOp()]
// Runs the queued operations from the head until the queue is empty. Operations queued while this runs are run too.
// The op value selects the action: 1 PUSH (_pushState), 2 POP (_popState with the node's StateInfo as the argument),
// 0 SWITCH (_switchState). Each node is unlinked and freed after its action, so the head is removed each time.
// The original's two loops over the list that walk to the sentinel without using their result are not reproduced.
void StateMachine::_handleQueuedOp() {
    while (!m_queue.empty()) {
        QueuedOp pending = m_queue.front();
        switch (pending.op) {
            case QueuedOp::PUSH:
                _pushState(pending.info);
                break;
            case QueuedOp::POP:
                _popState(&pending.info);
                break;
            case QueuedOp::SWITCH:
                _switchState(pending.info);
                break;
            default:
                break;
        }
        m_queue.pop_front();
    }
}

// 0x33a7f4 _ZN12StateMachine6UpdateEd  [StateMachine::Update(double)]
// Drains the queue with _handleQueuedOp, then updates the top state with Update(this, dt) (+0x18). m_updating (+0x1c)
// is set for the duration of that call, so RecurseUpdate can act.
void StateMachine::Update(double dt) {
    _handleQueuedOp();
    if (m_stack.empty()) {
        return;
    }
    m_updating = true;
    m_stack.back().state->Update(this, dt);
    m_updating = false;
}

// 0x33a908 _ZN12StateMachineD0Ev  [StateMachine::~StateMachine(), scalar deleting destructor]
// Not written: compiler-generated. It runs the complete-object destructor and then frees the storage, which is what
// a C++ delete expression on a StateMachine produces from the virtual destructor. The complete-object destructor
// (D1 0x33a890, shared with D2 0x33a924) is defined in game-app/src/g1-game-app-StateMachine-4cb24d-1.cpp.
