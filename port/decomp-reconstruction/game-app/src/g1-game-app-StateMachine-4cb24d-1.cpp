// Batch g1-game-app-StateMachine-4cb24d-1 (StateMachine, part 2 of 2).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Declarations are in dh2/StateMachine.hpp. The other StateMachine functions are in batch
// g1-game-app-StateMachine-4cb24d-0, including StateMachine::__clear() (0x33a410), which this destructor calls.
#include "dh2/StateMachine.hpp"

// 0x33a924 _ZN12StateMachineD2Ev  [StateMachine::~StateMachine(), base-object destructor D2]
// Asm (verified): the vptr store at +0x00 (STR R2, [R4],#0xC, so R4 = this+0x0c, the stack vector) is done by
// the compiler for this polymorphic class. The body then calls __clear(), calls ~vector on the stack at +0x0c,
// walks the queue list at +0x04 freeing its nodes, and resets the list sentinel.
// The complete-object destructor D1 at 0x33a890 has the same instructions (asm checked), so this one definition
// covers D2 and D1. The scalar deleting destructor D0 at 0x33a908 is compiler-generated and is not written here.
//
// Why the explicit node-freeing loop is not written: __clear() already unlinks and frees every queue node (its
// second loop runs until the list sentinel is reached) and sets the stack end back to its begin. After __clear()
// both containers are empty, so the original loop frees nothing. The member destructors release the storage:
// m_stack (+0x0c, a std::vector) is destroyed first and then m_queue (+0x04, a std::list), which is the same
// order as the original.
StateMachine::~StateMachine()
{
    __clear();
}
