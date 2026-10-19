// Batch g1-game-app-GSTest-c7a9f5-0 (GSTest, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Declarations are in dh2/GSTest.hpp. The vptr stores the original constructors and destructors make
// are the compiler's, so no body here writes them.
#include "dh2/GSTest.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/TestUD2.hpp"
#include "dh2/TestUD.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/Application.hpp"
#include "core-platform/memory.hpp"
#include <new>
#include <cstdio>

#include "dh2/Gamepad.hpp"
#include "dh2/InputManager.hpp"

// 0x386a5c _ZN6GSTestC2Ev
// 0x386a80 _ZN6GSTestC1Ev
// Both constructors have the same body, so one C++ constructor covers the complete-object and the
// base-object variants. The original body is only the GSTest vptr store (asm: ADD #8, STR [R0]).
// StateBase has no constructor body of its own.
GSTest::GSTest() {}

// 0x386aa4 _ZN6GSTestD2Ev
// 0x386aa8 _ZN6GSTestD1Ev
// Both destructors are empty (asm: BX LR). The StateBase destructor the implicit base call reaches is
// empty as well (0x38324c is BX LR), so the base call adds nothing. One C++ destructor covers both.
GSTest::~GSTest() {}

// 0x386aac _ZN6GSTest4CtorEPK12StateMachine
// Empty override of the StateBase Ctor slot (asm: BX LR).
void GSTest::Ctor(const StateMachine* /*machine*/) {}

// 0x386ab0 _ZN6GSTest4DtorEPK12StateMachine
// Empty override of the StateBase Dtor slot (asm: BX LR).
void GSTest::Dtor(const StateMachine* /*machine*/) {}

// 0x386adc _ZN6GSTest4DrawEPK12StateMachine
// Empty override of the StateBase Draw slot (asm: BX LR).
void GSTest::Draw(const StateMachine* /*machine*/) {}

// 0x386b4c _ZN6GSTestD0Ev
// Not rebuilt: the compiler-generated deleting destructor. It calls the complete-object destructor and
// then CustomFree(this) (asm: BL D1, BL CustomFree). A C++ delete expression on a GSTest produces it.

// 0x386f90 _ZN6GSTest6UpdateEP12StateMachined
// The test trigger: the first connected pad's channel 0 (Gamepad::m_buttons[0], the threshold group at pad +0x18 to +0x28) must
// have previous (+0x18) >= (previous_maximum (+0x24) + previous_minimum (+0x20) + 1.0) * 0.5, and the flag
// previous_above_threshold (+0x28) must be clear. Then the Lua test runs: the buffered files are flushed, a LuaScript (bindings
// on) is made, a TestUD on the stack is bound as "TestFunc"'s user, "data/scripts/test" is loaded, and "TestTestTest" is called
// with a TestUD, two TestUD2 user data (each a 4-byte block from CustomAlloc, never freed, as in the original) and the script
// pointer. The Arguments, the TestUD and the script are destroyed at the end.
void GSTest::Update(StateMachine* machine, double dt) {
    InputManager* input = InputManager::GetInstance();
    Gamepad* pad = input->GetFirstConnectedGamepad();
    (void)machine;
    (void)dt;
    if (pad == nullptr) {
        return;
    }
    const Gamepad::Channel& trigger = pad->m_buttons[0];
    const float sum = trigger.previous_maximum + trigger.previous_minimum;
    const float threshold = (sum + 1.0f) * 0.5f;
    if (!(trigger.previous >= threshold) || trigger.previous_above_threshold) {
        return;
    }
    ApplicationGetInstance().m_luaManager->FlushBufferedFiles();  // dword_99F768, Application +0x3c
    LuaScript script(false);
    TestUD testUD;
    std::puts("====================================================");
    script.m_binder.bindFunction("TestFunc", &TestUD::TestFunc, &testUD);
    script.Load("data/scripts/test");
    sfc::script::lua::Arguments arguments;
    arguments.pushUserData(new (CustomAlloc(static_cast<unsigned>(sizeof(TestUD)))) TestUD());
    arguments.pushUserData(new (CustomAlloc(static_cast<unsigned>(sizeof(TestUD2)))) TestUD2());
    arguments.pushUserData(new (CustomAlloc(static_cast<unsigned>(sizeof(TestUD2)))) TestUD2());
    arguments.pushPointer(&script);
    script.Call("TestTestTest", arguments);
}
