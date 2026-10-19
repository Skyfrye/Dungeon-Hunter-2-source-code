// Test for batch r2a-game-anim-pack1-10a921-0: the three v2Controllable camera commands completed in the redo pass
// (Ctrl_Zoom, Ctrl_ResetZoom, Ctrl_TranslateMapCam). Links with game-anim/src/g1-game-anim-v2Controllable-ff8db6-1.cpp.
//
// The camera is a zero-filled CameraLevel storage. The test sets only the plain fields that the commands read and
// write (m_useObjectPosition, m_zoomLocked, m_zoomCurrent, m_panOffset); no CameraLevel constructor is called and no
// CameraLevel virtual is reached. ApplicationGetInstance, Application::GetCurrentLevel, v2Controller and the
// v2Controllable virtuals that this batch does not define are stubs, as in the g1 test.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "core-platform/deps/game_types.hpp"
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
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

alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(ZoomHandler) unsigned char g_zoomStorage[sizeof(ZoomHandler)];
alignas(CameraLevel) unsigned char g_cameraStorage[sizeof(CameraLevel)];

template <class T>
std::uint32_t Bits(T value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof bits);
    return bits;
}

bool Near(float actual, float expected, float tolerance) {
    return std::fabs(actual - expected) <= tolerance;
}

// A zero-filled camera with the fields the test needs. Returns the camera the zoom handler is bound to.
CameraLevel* ResetCamera(bool useObjectPosition, bool locked, float zoom, float x, float y, float z) {
    std::memset(g_cameraStorage, 0, sizeof g_cameraStorage);
    CameraLevel* camera = reinterpret_cast<CameraLevel*>(g_cameraStorage);
    camera->m_useObjectPosition = useObjectPosition;
    camera->m_zoomLocked = locked;
    camera->m_zoomCurrent = zoom;
    camera->m_panOffset.X = x;
    camera->m_panOffset.Y = y;
    camera->m_panOffset.Z = z;
    reinterpret_cast<ZoomHandler*>(g_zoomStorage)->m_camera = camera;
    return camera;
}

}  // namespace

// Application singleton and its level query: stubs. The zero-filled Application has m_zoomHandler set by main.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

Level* Application::GetCurrentLevel() const {
    ++g_levelCalls;
    return nullptr;
}

// v2Controller: enough of the class for the destructor of v2Controllable to link.
v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}

v2Controller::~v2Controller() {}

void v2Controller::Update() {}

// Virtuals of v2Controllable that the batch source does not define (vtable slots +0x08..+0x58 except Ctrl_Kill).
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
    // Float constants by bit pattern (asm: the fmul and MOVW/MOVT constants of 0x404e98 and 0x404fec).
    EXPECT(Bits(kCtrlZoomStepWide) == 0xBE800000u);
    EXPECT(Bits(kCtrlZoomStepNarrow) == 0xBCF5C28Fu);
    EXPECT(Bits(kCtrlMapCamRotation) == 0x3F3504F3u);
    EXPECT(Bits(kCtrlMapCamScale) == 0x437A0000u);

    ApplicationGetInstance().m_zoomHandler = reinterpret_cast<ZoomHandler*>(g_zoomStorage);

    // Ctrl_Zoom with no camera: one GetCurrentLevel call, then a null return.
    {
        reinterpret_cast<ZoomHandler*>(g_zoomStorage)->m_camera = nullptr;
        v2Controllable obj;
        g_levelCalls = 0;
        obj.Ctrl_Zoom(1.0f);
        EXPECT(g_levelCalls == 1);
    }

    // Ctrl_Zoom, narrow step (m_useObjectPosition clear): zoom = amount * -0.03 + zoom = 2 * -0.03 + 0.5 = 0.44.
    {
        CameraLevel* camera = ResetCamera(false, false, 0.5f, 0.0f, 0.0f, 0.0f);
        v2Controllable obj;
        obj.Ctrl_Zoom(2.0f);
        EXPECT(Near(camera->m_zoomCurrent, 0.44f, 1e-5f));
    }

    // Ctrl_Zoom, wide step (m_useObjectPosition set): zoom = 4 * -0.25 + 1 = 0.
    {
        CameraLevel* camera = ResetCamera(true, false, 1.0f, 0.0f, 0.0f, 0.0f);
        v2Controllable obj;
        obj.Ctrl_Zoom(4.0f);
        EXPECT(Near(camera->m_zoomCurrent, 0.0f, 1e-6f));
    }

    // Ctrl_Zoom while the zoom is locked (m_zoomLocked set): zoom unchanged, GetCurrentLevel still called.
    {
        CameraLevel* camera = ResetCamera(true, true, 1.0f, 0.0f, 0.0f, 0.0f);
        v2Controllable obj;
        g_levelCalls = 0;
        obj.Ctrl_Zoom(4.0f);
        EXPECT(Bits(camera->m_zoomCurrent) == Bits(1.0f));
        EXPECT(g_levelCalls == 1);
    }

    // Ctrl_ResetZoom, unlocked: zoom becomes the integer 0 (bit pattern of 0.0f).
    {
        CameraLevel* camera = ResetCamera(false, false, 3.0f, 0.0f, 0.0f, 0.0f);
        v2Controllable obj;
        obj.Ctrl_ResetZoom();
        EXPECT(Bits(camera->m_zoomCurrent) == 0u);
    }

    // Ctrl_ResetZoom, locked: zoom unchanged.
    {
        CameraLevel* camera = ResetCamera(false, true, 3.0f, 0.0f, 0.0f, 0.0f);
        v2Controllable obj;
        obj.Ctrl_ResetZoom();
        EXPECT(Bits(camera->m_zoomCurrent) == Bits(3.0f));
    }

    // Ctrl_ResetZoom with no camera: GetCurrentLevel is called and nothing else happens.
    {
        reinterpret_cast<ZoomHandler*>(g_zoomStorage)->m_camera = nullptr;
        v2Controllable obj;
        g_levelCalls = 0;
        obj.Ctrl_ResetZoom();
        EXPECT(g_levelCalls == 1);
    }

    // Ctrl_TranslateMapCam with the map flag clear (m_useObjectPosition): pan unchanged, no GetCurrentLevel call.
    {
        CameraLevel* camera = ResetCamera(false, false, 0.0f, 1.0f, 2.0f, 3.0f);
        v2Controllable obj;
        g_levelCalls = 0;
        obj.Ctrl_TranslateMapCam(5.0f, 6.0f);
        EXPECT(Bits(camera->m_panOffset.X) == Bits(1.0f));
        EXPECT(Bits(camera->m_panOffset.Y) == Bits(2.0f));
        EXPECT(Bits(camera->m_panOffset.Z) == Bits(3.0f));
        EXPECT(g_levelCalls == 0);
    }

    // Ctrl_TranslateMapCam with the map flag set but the zoom locked: pan unchanged.
    {
        CameraLevel* camera = ResetCamera(true, true, 0.0f, 1.0f, 2.0f, 3.0f);
        v2Controllable obj;
        obj.Ctrl_TranslateMapCam(5.0f, 6.0f);
        EXPECT(Bits(camera->m_panOffset.X) == Bits(1.0f));
        EXPECT(Bits(camera->m_panOffset.Y) == Bits(2.0f));
    }

    // Ctrl_TranslateMapCam, dx = 2, dy = 4: a = 2r, b = -4r with r = 1/sqrt(2).
    // x += (a - b) * 250 = 6r * 250 = 1060.66; y += (a + b) * 250 = -2r * 250 = -353.55; z += 0.
    {
        CameraLevel* camera = ResetCamera(true, false, 0.0f, 1.0f, 2.0f, 3.0f);
        v2Controllable obj;
        obj.Ctrl_TranslateMapCam(2.0f, 4.0f);
        EXPECT(Near(camera->m_panOffset.X, 1061.66f, 0.01f));
        EXPECT(Near(camera->m_panOffset.Y, -351.55f, 0.01f));
        EXPECT(Bits(camera->m_panOffset.Z) == Bits(3.0f));
    }

    // Ctrl_TranslateMapCam, dx = 0, dy = 4: a = 0, b = -4r. x += 4r * 250 = 707.11; y += -4r * 250 = -707.11.
    // This checks the sign of the -dy term: a positive dy moves x up and y down.
    {
        CameraLevel* camera = ResetCamera(true, false, 0.0f, 1.0f, 2.0f, 3.0f);
        v2Controllable obj;
        obj.Ctrl_TranslateMapCam(0.0f, 4.0f);
        EXPECT(Near(camera->m_panOffset.X, 708.11f, 0.01f));
        EXPECT(Near(camera->m_panOffset.Y, -705.11f, 0.01f));
    }

    if (g_failures == 0) {
        std::printf("r2a-game-anim-pack1-10a921-0 camera test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-anim-pack1-10a921-0 camera test: %d failure(s)\n", g_failures);
    return 1;
}
