// Batch g1-game-app-StateBase-a78ab7-0 (StateBase, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Declarations are in dh2/StateBase.hpp. StateBase holds no data. Each lifecycle and frame slot is an empty
// virtual: the original body of every one is a bare return (asm: BX LR). Subclasses (GSTest, GSEndGame, ...)
// override the slots they need. The vtable is _ZTV9StateBase (52 bytes): offset-to-top, typeinfo, then 11 slots
// at +0x00 .. +0x28 in the order the header declares them.
#include "dh2/StateBase.hpp"

// 0x38324c _ZN9StateBaseD1Ev  [StateBase::~StateBase()]
// Complete-object destructor, empty (asm: BX LR). Derived destructors reach it through their implicit base call,
// and it adds nothing. The scalar deleting destructor D0 at 0x3833b0 is not written here; see below.
StateBase::~StateBase() {}

// 0x383250 _ZN9StateBase4CtorEPK12StateMachine  [StateBase::Ctor(StateMachine const*)]
// Vtable slot +0x08. Empty (asm: BX LR).
void StateBase::Ctor(const StateMachine* /*machine*/) {}

// 0x383254 _ZN9StateBase4DtorEPK12StateMachine  [StateBase::Dtor(StateMachine const*)]
// Vtable slot +0x0c. Empty (asm: BX LR).
void StateBase::Dtor(const StateMachine* /*machine*/) {}

// 0x383258 _ZN9StateBase5PauseEPK12StateMachine  [StateBase::Pause(StateMachine const*)]
// Vtable slot +0x10. Empty (asm: BX LR).
void StateBase::Pause(const StateMachine* /*machine*/) {}

// 0x38325c _ZN9StateBase6ResumeEPK12StateMachine  [StateBase::Resume(StateMachine const*)]
// Vtable slot +0x14. Empty (asm: BX LR).
void StateBase::Resume(const StateMachine* /*machine*/) {}

// 0x383260 _ZN9StateBase6UpdateEP12StateMachined  [StateBase::Update(StateMachine*, double)]
// Vtable slot +0x18. Empty (asm: BX LR). Neither the StateMachine nor dt argument is read.
void StateBase::Update(StateMachine* /*machine*/, double /*dt*/) {}

// 0x383264 _ZN9StateBase4DrawEPK12StateMachine  [StateBase::Draw(StateMachine const*)]
// Vtable slot +0x1c. Empty (asm: BX LR).
void StateBase::Draw(const StateMachine* /*machine*/) {}

// 0x383268 _ZN9StateBase6Draw2DEPK12StateMachine  [StateBase::Draw2D(StateMachine const*)]
// Vtable slot +0x20. Empty (asm: BX LR).
void StateBase::Draw2D(const StateMachine* /*machine*/) {}

// 0x38326c _ZN9StateBase5SleepEPK12StateMachine  [StateBase::Sleep(StateMachine const*)]
// Vtable slot +0x24. Empty (asm: BX LR).
void StateBase::Sleep(const StateMachine* /*machine*/) {}

// 0x383270 _ZN9StateBase6WakeUpEPK12StateMachine  [StateBase::WakeUp(StateMachine const*)]
// Vtable slot +0x28. Empty (asm: BX LR).
void StateBase::WakeUp(const StateMachine* /*machine*/) {}

// 0x3833b0 _ZN9StateBaseD0Ev  [StateBase::~StateBase(), scalar deleting destructor]
// Not written: compiler-generated from the virtual destructor. Asm: stores the vptr (_ZTV9StateBase + 8), then
// CustomFree(this), and returns this. A C++ delete expression on a StateBase produces it, the same convention as
// GSTest and GSEndGame.
