// Batch g1-game-anim-v2Controllable-ff8db6-1 (v2Controllable, part 2 of 2).
// Owner header: dh2/v2Controllable.hpp. Every declaration used here is already in it, so the header is unchanged.
// Camera helpers and constants: dh2/global/ctrl_camera.hpp.
//
// Status summary (redo pass r2a-game-anim-pack1-10a921-0):
//   reconstructed: Ctrl_Kill, Ctrl_OpenIGM, the C1/C2 constructors, the D1/D2 destructors, SetController,
//                  Ctrl_ResetZoom, Ctrl_Zoom, Ctrl_TranslateMapCam (CameraLevel fields now in dh2/CameraLevel.hpp).
//   skipped:       D0 deleting destructor (compiler-generated from the virtual destructor).

#include "dh2/v2Controllable.hpp"

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/v2Controller.hpp"

// 0x404db0 _ZN14v2Controllable9Ctrl_KillEP10GameObjectb
// The original body is a bare return (asm: BX LR).
void v2Controllable::Ctrl_Kill(GameObject* /*killer*/, bool /*silent*/) {}

// 0x404db4 _ZN14v2Controllable12Ctrl_OpenIGMEv
// The original body is a bare return (asm: BX LR).
void v2Controllable::Ctrl_OpenIGM() {}

// 0x404db8 _ZN14v2ControllableC2Ev (base-object constructor, C2)
// 0x404de4 _ZN14v2ControllableC1Ev (complete-object constructor, C1) has the same body. Defined once, here.
// Asm (verified): +0x04 is cleared, then the v2Controllable vtable is stored at +0x00.
v2Controllable::v2Controllable() : m_controller(nullptr) {
    // +0x00 vptr: stored by the compiler, as the original stores the v2Controllable vtable (_ZTV14v2Controllable+8).
}

// 0x404e10 _ZN14v2Controllable13SetControllerEP12v2Controller
// Asm (verified): when the new pointer differs from +0x04, a non-null previous controller is destroyed through its
// virtual deleting destructor (vtable slot +0x04), +0x04 is cleared, and the new pointer is stored.
void v2Controllable::SetController(v2Controller* controller) {
    if (m_controller != controller) {
        if (m_controller != nullptr) {
            delete m_controller;
            m_controller = nullptr;
        }
        m_controller = controller;
    }
}

// 0x404e50 _ZN14v2Controllable14Ctrl_ResetZoomEv
// Original order (asm 0x404e50, verified):
//   1. Application::GetCurrentLevel() on the singleton. The result is unused; the call is kept.
//   2. camera = ZoomHandler::m_camera (dword_99F77C + 0x20). A null camera returns.
//   3. When camera byte +0x86 (m_zoomLocked) is clear, camera float +0x88 (m_zoomCurrent) is set to 0.
//      The original stores the integer 0, whose bit pattern is 0.0f.
// The original returns the r0 leftover of step 1 as int (tail-call artifact). The header declares void.
void v2Controllable::Ctrl_ResetZoom() {
    (void)ApplicationGetInstance().GetCurrentLevel();
    CameraLevel* camera = ApplicationGetInstance().m_zoomHandler->m_camera;
    if (camera == nullptr) {
        return;
    }
    if (!camera->m_zoomLocked) {
        camera->m_zoomCurrent = 0.0f;
    }
}

// 0x404e98 _ZN14v2Controllable9Ctrl_ZoomEf
// Original order (asm 0x404e98, verified):
//   1. Application::GetCurrentLevel() on the singleton. The result is unused; the call is kept.
//   2. camera = ZoomHandler::m_camera (dword_99F77C + 0x20). A null camera returns.
//   3. Camera byte +0x86 (m_zoomLocked) set: return.
//   4. step = camera byte +0x85 (m_useObjectPosition) set ? kCtrlZoomStepWide : kCtrlZoomStepNarrow.
//   5. Camera float +0x88 (m_zoomCurrent) = amount * step + m_zoomCurrent.
// The float return of the original is the r0 leftover of step 1 on the early-return paths. The header
// declares void, and the vtable callers (v2Controller::Cmd_Zoom) only tail-call it.
void v2Controllable::Ctrl_Zoom(float amount) {
    (void)ApplicationGetInstance().GetCurrentLevel();
    CameraLevel* camera = ApplicationGetInstance().m_zoomHandler->m_camera;
    if (camera == nullptr || camera->m_zoomLocked) {
        return;
    }
    const float step = camera->m_useObjectPosition ? kCtrlZoomStepWide : kCtrlZoomStepNarrow;
    camera->m_zoomCurrent = amount * step + camera->m_zoomCurrent;
}

// 0x404fec _ZN14v2Controllable20Ctrl_TranslateMapCamEff
// Original order (asm 0x404fec, verified; no GetCurrentLevel call here):
//   1. camera = ZoomHandler::m_camera (dword_99F77C + 0x20). A null camera returns.
//   2. Return when camera byte +0x86 (m_zoomLocked) is set, or when camera byte +0x85 (m_useObjectPosition) is clear.
//   3. With a = dx * kCtrlMapCamRotation and b = (-dy) * kCtrlMapCamRotation (float):
//        camera +0x98 (pan x) += ((a - b) + 0.0f) * kCtrlMapCamScale
//        camera +0x9c (pan y) += ((a + b) + 0.0f) * kCtrlMapCamScale
//        camera +0xa0 (pan z) += 0.0f (the original adds +0.0f, so -0.0 becomes +0.0)
void v2Controllable::Ctrl_TranslateMapCam(float dx, float dy) {
    CameraLevel* camera = ApplicationGetInstance().m_zoomHandler->m_camera;
    if (camera == nullptr || camera->m_zoomLocked || !camera->m_useObjectPosition) {
        return;
    }
    const float a = dx * kCtrlMapCamRotation;
    const float b = (-dy) * kCtrlMapCamRotation;
    camera->m_panOffset.X = camera->m_panOffset.X + ((a - b) + 0.0f) * kCtrlMapCamScale;
    camera->m_panOffset.Y = camera->m_panOffset.Y + ((a + b) + 0.0f) * kCtrlMapCamScale;
    camera->m_panOffset.Z = camera->m_panOffset.Z + 0.0f;
}

// 0x4050e4 _ZN14v2ControllableD2Ev (base-object destructor, D2)
// 0x405138 _ZN14v2ControllableD1Ev (complete-object destructor, D1) has the same body. Defined once, here.
// Asm (verified): the v2Controllable vtable is stored at +0x00, then a non-null controller at +0x04 is destroyed
// through its virtual deleting destructor (vtable slot +0x04) and +0x04 is cleared.
v2Controllable::~v2Controllable() {
    if (m_controller != nullptr) {
        delete m_controller;
        m_controller = nullptr;
    }
}

// 0x40518c _ZN14v2ControllableD0Ev is the compiler-generated deleting destructor. The asm calls D1 (0x405138),
// then CustomFree(this). The C++ delete expression produces the same shape, so no body is written here.
