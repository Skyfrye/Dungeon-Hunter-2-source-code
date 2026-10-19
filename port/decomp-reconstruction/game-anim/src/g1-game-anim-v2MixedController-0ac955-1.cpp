// Batch g1-game-anim-v2MixedController-0ac955-1 (v2MixedController, part 2 of 2).
// Covers the five Ctrl_* forward thunks (0x408c38..0x408c68), the destructors D1, D0 and D2 (0x408cfc, 0x408dbc,
// 0x409118), the constructors C1 and C2 (0x408dd8, 0x408ecc) and AddController (0x408fc0).
// Part 1 (Update and the other forward thunks, 0x408ad8..0x408c2c) is in its own batch file.

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "dh2/v2MixedController.hpp"

// Engine assert level, defined in core-platform/src/memory.cpp. Declared here as AnimController.cpp does,
// because core-platform/memory.hpp redefines glitch::core types that the game headers already provide.
extern int gAssertLevel;

// 0x408c38 _ZN17v2MixedController11Ctrl_WarpToERK7Point3DIfE
// Forward thunk: the original is one tail branch to v2Controller::Cmd_WarpTo (0x405318). The v2Controller base
// sits at +0x00, so `this` and the argument pass through unchanged.
void v2MixedController::Ctrl_WarpTo(const Point3D<float>& pos)
{
    v2Controller::Cmd_WarpTo(pos);
}

// 0x408c44 _ZN17v2MixedController11Ctrl_LookAtEP10GameObject
// Forward thunk: one tail branch to v2Controller::Cmd_LookAt(GameObject*) (0x4052bc).
void v2MixedController::Ctrl_LookAt(GameObject* target)
{
    v2Controller::Cmd_LookAt(target);
}

// 0x408c50 _ZN17v2MixedController11Ctrl_LookAtERK7Point3DIfE
// Forward thunk: one tail branch to v2Controller::Cmd_LookAt(Point3D<float> const&) (0x405260).
void v2MixedController::Ctrl_LookAt(const Point3D<float>& pos)
{
    v2Controller::Cmd_LookAt(pos);
}

// 0x408c5c _ZN17v2MixedController13Ctrl_RotateByEf
// Forward thunk: one tail branch to v2Controller::Cmd_RotateBy(float) (0x405204).
void v2MixedController::Ctrl_RotateBy(float angle)
{
    v2Controller::Cmd_RotateBy(angle);
}

// 0x408c68 _ZN17v2MixedController10Ctrl_ClickERK7Point3DIfEb
// Forward thunk: one tail branch to v2Controller::Cmd_Click(Point3D<float> const&, bool) (0x4051a8).
void v2MixedController::Ctrl_Click(const Point3D<float>& pos, bool held)
{
    v2Controller::Cmd_Click(pos, held);
}

// 0x408cfc _ZN17v2MixedControllerD1Ev (v2MixedController::~v2MixedController(), complete object)
// 0x409118 _ZN17v2MixedControllerD2Ev has the same body (base-object destructor). C++ emits one destructor body
// for both, so it is defined once here.
v2MixedController::~v2MixedController()
{
    // The count is taken on entry. Each owned sub-controller is deleted through its virtual deleting destructor,
    // the vptr+0x04 slot (asm: LDR PC,[R3,#4]). The original re-reads the list head after every call; the
    // indexed access below does the same. A null entry is skipped.
    const std::size_t count = m_controllers.size();
    for (std::size_t i = 0; i != count; ++i) {
        v2Controller* controller = m_controllers[i];
        if (controller) {
            delete controller;
        }
    }

    // The original sets end to begin (clear) and then frees the storage at +0x18..+0x20. Here clear() does the
    // first step. The member destructor of m_controllers, which runs next, frees the storage, before the
    // v2Controllable base at +0x10 is destroyed (BL _ZN14v2ControllableD2Ev, asm verified). The implicit call of
    // the v2Controller base destructor has no counterpart in the original D1 body; its ELF symbol 0x3a2f40 is
    // 4 bytes long, so it does no work.
    m_controllers.clear();
}

// 0x408dbc _ZN17v2MixedControllerD0Ev (deleting destructor)
// skipped: compiler-generated deleting destructor. The original is two calls: the complete-object destructor D1
// at 0x408cfc (BL _ZN17v2MixedControllerD1Ev) and CustomFree(this) (BL _Z10CustomFreePv), asm verified.
// `delete` on a v2MixedController runs the destructor and then the deallocation, so no body is written here.

// 0x408dd8 _ZN17v2MixedControllerC1EP14v2Controllable (complete-object constructor)
// 0x408ecc _ZN17v2MixedControllerC2EP14v2Controllable (base-object constructor), same body as C1, defined once here.
// The v2Controller base (field stores and ASSERT(controllable)) runs first, in v2Controller::v2Controller, then the
// v2Controllable base at +0x10 (v2Controllable::v2Controllable, BL _ZN14v2ControllableC2Ev). The vector m_controllers at
// +0x18 is default-constructed, which leaves it empty: +0x18 begin, +0x1c end, +0x20 end of storage, as the original
// stores. The vptr writes are compiler-managed.
v2MixedController::v2MixedController(v2Controllable* controllable)
    : v2Controller(controllable), v2Controllable()
{
}

// 0x408fc0 _ZN17v2MixedController13AddControllerEP12v2Controller
void v2MixedController::AddController(v2Controller* controller)
{
    if (controller) {
        // +0x0c m_character: the new sub-controller takes this controller's Character (v2Controller +0x0c).
        controller->m_character = m_character;
        // The original grows its storage by hand (capacity 1 when empty, else doubled, then copies and frees the old
        // block). std::vector::push_back uses the same capacity policy; the storage itself is not observable.
        m_controllers.push_back(controller);
    } else if (gAssertLevel == 2) {
        // The original stores 0 to address 0 to force a crash.
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "ctrl",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Controllers\\v2MixedController.cpp", 46);
    }
}
