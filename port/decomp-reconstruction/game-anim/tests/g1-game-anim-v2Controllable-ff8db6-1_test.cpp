// Test for batch g1-game-anim-v2Controllable-ff8db6-1: constructor, SetController, destructor, the bare
// Ctrl_Kill and Ctrl_OpenIGM, and the early-return paths of the camera commands.
//
// The v2Controllable vtable is emitted in the batch source (its key function is the destructor), so every
// virtual that the vtable names must be defined here. Those definitions are stubs for other batches.
// v2Controller is real enough to be deleted: its constructor, destructor and Update are defined here and count
// the destructor calls. ApplicationGetInstance and Application::GetCurrentLevel are stubbed; the camera
// commands only reach a zero-filled ZoomHandler whose camera is null, so no CameraLevel is needed.

#include <cstdint>
#include <cstdio>
#include <cstring>

#include "core-platform/deps/game_types.hpp"
#include "dh2/Application.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_levelCalls = 0;
int g_controllerDtorCalls = 0;

alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(ZoomHandler) unsigned char g_zoomStorage[sizeof(ZoomHandler)];

template <class T>
std::uint32_t Bits(T value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

}  // namespace

// Application singleton and its level query: stubs. The zero-filled Application has m_zoomHandler set by the test.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

Level* Application::GetCurrentLevel() const {
    ++g_levelCalls;
    return nullptr;
}

// v2Controller: enough of the class for the test to create and delete controllers.
v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}

v2Controller::~v2Controller() {
    ++g_controllerDtorCalls;
}

void v2Controller::Update() {}

// Virtuals of v2Controllable that this batch does not define (vtable slots +0x08..+0x64 except the batch's own).
void v2Controllable::Ctrl_Click(const Point3D<float>&, bool) {}
void v2Controllable::Ctrl_RotateBy(float) {}
void v2Controllable::Ctrl_LookAt(const Point3D<float>&) {}
void v2Controllable::Ctrl_LookAt(GameObject*) {}
void v2Controllable::Ctrl_WarpTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTowards(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTowards(GameObject*) {}
void v2Controllable::Ctrl_HeadTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTo(GameObject*) {}
void v2Controllable::Ctrl_MoveTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_MoveTo(GameObject*) {}
void v2Controllable::Ctrl_Stop() {}
void v2Controllable::Ctrl_Attack(GameObject*) {}
void v2Controllable::Ctrl_BeginSkill(unsigned int) {}
void v2Controllable::Ctrl_EndSkill(unsigned int) {}
void v2Controllable::Ctrl_BeginCast(bool) {}
void v2Controllable::Ctrl_EndCast(bool) {}
void v2Controllable::Ctrl_UsePotion() {}
void v2Controllable::Ctrl_UseOOI(GameObject*) {}
void v2Controllable::Ctrl_DropObject() {}

int main() {
    // Float constants by bit pattern (asm: MOVNE/ADDNE, MOVW/MOVT, the fmul constants of 0x404e98 and 0x404fec).
    EXPECT(Bits(kCtrlZoomStepWide) == 0xBE800000u);
    EXPECT(Bits(kCtrlZoomStepNarrow) == 0xBCF5C28Fu);
    EXPECT(Bits(kCtrlMapCamRotation) == 0x3F3504F3u);
    EXPECT(Bits(kCtrlMapCamScale) == 0x437A0000u);

    // Constructor and SetController: a replaced controller is destroyed, the same pointer is a no-op.
    {
        v2Controllable obj;
        EXPECT(obj.m_controller == nullptr);

        v2Controller* first = new v2Controller(&obj);
        obj.SetController(first);
        EXPECT(obj.m_controller == first);
        EXPECT(g_controllerDtorCalls == 0);

        obj.SetController(first);
        EXPECT(obj.m_controller == first);
        EXPECT(g_controllerDtorCalls == 0);

        v2Controller* second = new v2Controller(&obj);
        obj.SetController(second);
        EXPECT(obj.m_controller == second);
        EXPECT(g_controllerDtorCalls == 1);

        obj.SetController(nullptr);
        EXPECT(obj.m_controller == nullptr);
        EXPECT(g_controllerDtorCalls == 2);

        v2Controller* third = new v2Controller(&obj);
        obj.SetController(third);
        EXPECT(obj.m_controller == third);
    }
    // The destructor of obj destroyed the controller it still owned.
    EXPECT(g_controllerDtorCalls == 3);

    // Ctrl_Kill and Ctrl_OpenIGM: bare returns.
    {
        v2Controllable obj;
        obj.Ctrl_Kill(nullptr, true);
        obj.Ctrl_OpenIGM();
        EXPECT(obj.m_controller == nullptr);
    }

    // Camera commands with a bound zoom handler whose camera is unset. Ctrl_Zoom and Ctrl_ResetZoom call
    // GetCurrentLevel once each and return; Ctrl_TranslateMapCam returns without that call.
    ApplicationGetInstance().m_zoomHandler = reinterpret_cast<ZoomHandler*>(g_zoomStorage);
    {
        v2Controllable obj;
        g_levelCalls = 0;
        obj.Ctrl_TranslateMapCam(1.0f, 2.0f);
        EXPECT(g_levelCalls == 0);
        obj.Ctrl_Zoom(1.0f);
        EXPECT(g_levelCalls == 1);
        obj.Ctrl_ResetZoom();
        EXPECT(g_levelCalls == 2);
    }

    if (g_failures == 0) {
        std::printf("v2Controllable batch test: all checks passed\n");
    } else {
        std::printf("v2Controllable batch test: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
