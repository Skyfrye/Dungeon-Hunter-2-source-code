// StateMachine: stack of StateBase objects with a queue of deferred push/pop/switch operations.
// Original size 0x20 (operator new(0x20) in Application::PostInit). Vtable: slots +0x00/+0x04 are the
// destructors (D1/D0), no other virtuals. Container layouts are STLport 32-bit (list = 8-byte sentinel,
// vector = three pointers); the offsets below are the original ones.
#pragma once

#include <list>
#include <vector>

class StateBase;

class StateMachine {
public:
    // One entry of the state stack (8 bytes in the original: pointer, then a byte).
    struct StateInfo {
        StateBase* state;  // +0x00
        bool owned;        // +0x04 when set the machine deletes the state through its virtual destructor
    };

    // Deferred operation. Node payload of the queue list: StateInfo at +0x00, op at +0x08 (node +0x10).
    struct QueuedOp {
        enum Op : int { SWITCH = 0, PUSH = 1, POP = 2 };  // _handleQueuedOp switch cases 0, 1, 2
        StateInfo info;  // +0x00
        int op;          // +0x08
    };

    StateMachine();                                    // 0x339e70 / 0x339ec8
    virtual ~StateMachine();                           // +0x00 0x33a890 (D1), +0x04 0x33a908 (D0), 0x33a924

    // Queue a push / pop / switch; they run at the next Update() (_handleQueuedOp).
    void PushState(StateBase* state, bool owned);      // 0x33a344
    void SwitchState(StateBase* state, bool owned);    // 0x33a388
    void PopState(StateBase* state);                   // 0x33a3cc (null/zero state pops the top)

    void Update(double dt);                            // 0x33a7f4
    void Draw() const;                                 // 0x33a100
    void Draw2D() const;                               // 0x33a148
    void RecurseUpdate(double dt) const;               // 0x33a010 (lets a state update the one below it)
    void RecurseDraw() const;                          // 0x33a090
    void Sleep();                                      // 0x33a17c (calls slot +0x24 of every state, top first)
    void WakeUp();                                     // 0x33a1b4 (calls slot +0x28 of every state, bottom first)

public:
    void _pushState(StateInfo& info);                  // 0x33a590
    void _popState(StateInfo* info);                   // 0x339f20
    void _popAllState();                               // 0x339fe0
    void _switchState(StateInfo& info);                // 0x33a720
    void _handleQueuedOp();                            // 0x33a740
    void __clear();                                    // 0x33a410

    // +0x00 vptr
    std::list<QueuedOp> m_queue;                       // +0x04 (sentinel node at +0x04/+0x08)
    std::vector<StateInfo> m_stack;                    // +0x0c begin, +0x10 end, +0x14 capacity
    mutable int m_recurseIndex;                        // +0x18 -1 outside Recurse*; stack index being processed
    bool m_updating;                                   // +0x1c set while Update() runs the top state
    mutable bool m_drawing;                            // +0x1d set while Draw() runs the top state
};
