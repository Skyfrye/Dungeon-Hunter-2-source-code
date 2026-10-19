// Test for the ZoomHandler batch g1-game-app-ZoomHandler-5b2731-0. Returns non-zero on failure.
//
// Covers the paths that do not reach MenuCharMenu_Map (the map test is a PARTIAL stub in the source): the wheel zoom,
// the mouse pan with the camera's object-position flag clear, the one-finger touch pan, the two-finger pinch, the
// release, ResetZoom, ResetFingerMap, and the attach and detach of events 4 and 5.
//
// CameraLevel's constructor is not reconstructed in this tree, so the camera is a zeroed buffer of its size. The
// ZoomHandler code only reads and writes data members of the camera, and the test sets each one it uses.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/CameraLevel.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/ZoomHandler.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"

// The EventManager instance that ZoomHandler attaches to (dword_99F740). The test owns it.
static EventManager* g_test_dword_99F740 = nullptr;
EventManager*& dword_99F740 = g_test_dword_99F740;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// The map test (MapAcceptsTouch) runs only for a press on a camera with the object-position flag, and no check here makes
// that press. These stubs abort, so a check that reaches the map test stops the test instead of passing silently.
MenuCharMenu_Map* MenuCharMenu_Map::GetInstance() {
    std::abort();
}

bool MenuCharMenu_Map::IsPointInsideRenderZone(int /*x*/, int /*y*/) {
    std::abort();
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                      \
    do {                                                                                  \
        if (!(cond)) {                                                                    \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                 \
        }                                                                                 \
    } while (0)

bool Near(float a, float b) {
    return std::fabs(a - b) < 1e-3f;
}

alignas(CameraLevel) unsigned char g_cameraStorage[sizeof(CameraLevel)];

CameraLevel* Camera() {
    return reinterpret_cast<CameraLevel*>(g_cameraStorage);
}

// A mouse input event: EventType 1, the payload at +0x08 (X, Y), +0x10 (Wheel), +0x14 (Event).
glitch::SEvent Mouse(int x, int y, float wheel, std::int32_t kind) {
    glitch::SEvent e;
    e.EventType = glitch::EET_MOUSE_INPUT_EVENT;
    e.MouseInput.X = x;
    e.MouseInput.Y = y;
    e.MouseInput.Wheel = wheel;
    e.MouseInput.Event = kind;
    return e;
}

void ResetCamera(float panX, float panY, float panZ) {
    std::memset(g_cameraStorage, 0, sizeof g_cameraStorage);
    CameraLevel* c = Camera();
    c->m_zoomCurrent = 0.0f;
    c->m_zoomTarget = 1.0f;
    c->m_useObjectPosition = false;
    c->m_panOffset.X = panX;
    c->m_panOffset.Y = panY;
    c->m_panOffset.Z = panZ;
}

void TestSetCameraAndReset(ZoomHandler& zoom) {
    ResetCamera(0.0f, 0.0f, 0.0f);
    zoom.m_mousePanEnabled = true;
    zoom.m_mousePanActive = true;
    // setCamera returns the current sensitivity (the test sets it; the constructor's value is PARTIAL).
    zoom.m_sensitivity = 0.5f;
    EXPECT(Near(zoom.setCamera(Camera()), 0.5f));
    EXPECT(zoom.m_camera == Camera());
    EXPECT(!zoom.m_mousePanEnabled);
    EXPECT(!zoom.m_mousePanActive);

    CameraLevel* c = Camera();
    c->m_zoomCurrent = 5.0f;
    c->m_zoomTarget = 3.0f;
    zoom.ResetZoom();
    EXPECT(Near(c->m_zoomCurrent, 0.0f));
    EXPECT(Near(c->m_zoomTarget, 1.0f));
}

void TestWheelZoom(ZoomHandler& zoom) {
    ResetCamera(0.0f, 0.0f, 0.0f);
    zoom.setCamera(Camera());
    zoom.m_sensitivity = 0.5f;
    // zoom += (0.5 * 5) * 2 = 5. The wheel works without the pan being enabled.
    glitch::SEvent wheel = Mouse(0, 0, 2.0f, glitch::EMIE_MOUSE_WHEEL);
    EXPECT(zoom.onEvent(wheel));
    EXPECT(Near(Camera()->m_zoomCurrent, 5.0f));
}

void TestMousePan(ZoomHandler& zoom) {
    ResetCamera(1.0f, 2.0f, 3.0f);
    zoom.setCamera(Camera());
    zoom.m_mousePanEnabled = true;

    // Left down at (100, 200): the flag is clear, so the pan starts and the baseline is the camera pan.
    glitch::SEvent down = Mouse(100, 200, 0.0f, glitch::EMIE_LMOUSE_PRESSED_DOWN);
    EXPECT(zoom.onEvent(down));
    EXPECT(zoom.m_mousePanActive);
    EXPECT(Near(zoom.m_mousePanBaseline[0], 1.0f));
    EXPECT(Near(zoom.m_mousePanBaseline[1], 2.0f));
    EXPECT(Near(zoom.m_mousePanBaseline[2], 3.0f));

    // Move to (110, 205): X = -(10) * 50 + 1 = -499, Y = 5 * 50 + 2 = 252, Z = 3.
    glitch::SEvent move = Mouse(110, 205, 0.0f, glitch::EMIE_MOUSE_MOVED);
    EXPECT(zoom.onEvent(move));
    EXPECT(Near(Camera()->m_panOffset.X, -499.0f));
    EXPECT(Near(Camera()->m_panOffset.Y, 252.0f));
    EXPECT(Near(Camera()->m_panOffset.Z, 3.0f));

    // Left up ends the pan. A later move is not consumed.
    glitch::SEvent up = Mouse(110, 205, 0.0f, glitch::EMIE_LMOUSE_LEFT_UP);
    EXPECT(zoom.onEvent(up));
    EXPECT(!zoom.m_mousePanActive);
    EXPECT(!zoom.onEvent(Mouse(120, 210, 0.0f, glitch::EMIE_MOUSE_MOVED)));
}

void TestTouchPanAndPinch(ZoomHandler& zoom) {
    ResetCamera(0.0f, 0.0f, 0.0f);
    zoom.setCamera(Camera());
    Camera()->m_useObjectPosition = true;  // the touch paths need the object-position flag
    zoom.m_sensitivity = 0.5f;
    zoom.ResetFingerMap();

    // One finger, id 1. The first move sets the first contact at (100, 100) and pans by nothing.
    EvTouchScreenMove first(100, 100, 1);
    EXPECT(!zoom.onEvent(&first, nullptr));
    EXPECT(Near(Camera()->m_panOffset.X, 0.0f));
    EXPECT(Near(Camera()->m_panOffset.Y, 0.0f));

    // Move to (104, 98): X = 0 - (4) * 50 = -200, Y = 0 - (-(-2)) * 50 = -100.
    EvTouchScreenMove second(104, 98, 1);
    EXPECT(!zoom.onEvent(&second, nullptr));
    EXPECT(Near(Camera()->m_panOffset.X, -200.0f));
    EXPECT(Near(Camera()->m_panOffset.Y, -100.0f));
    EXPECT(zoom.m_fingerMap.size() == 1);

    // Two fingers. Finger 2 first contacts at (200, 100), so the start distance is 100.
    zoom.ResetFingerMap();
    Camera()->m_zoomCurrent = 0.0f;
    EvTouchScreenMove a1(100, 100, 1);
    EXPECT(!zoom.onEvent(&a1, nullptr));
    EvTouchScreenMove b1(200, 100, 2);
    EXPECT(zoom.onEvent(&b1, nullptr));           // the pinch consumes the move
    EXPECT(Near(Camera()->m_zoomCurrent, 0.0f));  // same distance, no zoom change

    // Finger 2 moves to (250, 100): the distance goes from 100 to 150, so zoom += 50 * 0.5 = 25.
    EvTouchScreenMove b2(250, 100, 2);
    EXPECT(zoom.onEvent(&b2, nullptr));
    EXPECT(Near(Camera()->m_zoomCurrent, 25.0f));

    // Release of finger 2 erases it. One finger is left, which is not more than one.
    EvTouchScreenPress up2(250, 100, 2, false);
    EXPECT(!zoom.onEvent(&up2, nullptr));
    EXPECT(zoom.m_fingerMap.size() == 1);
    EvTouchScreenPress up1(100, 100, 1, false);
    EXPECT(!zoom.onEvent(&up1, nullptr));
    EXPECT(zoom.m_fingerMap.empty());
}

void TestAttachAndDetach(EventManager& manager) {
    {
        ZoomHandler inner;  // the constructor attaches events 4 and 5 to dword_99F740
        auto it = manager.m_receivers.find(4);
        EXPECT(it != manager.m_receivers.end() && !it->second.empty());
        auto it5 = manager.m_receivers.find(5);
        EXPECT(it5 != manager.m_receivers.end() && !it5->second.empty());
    }  // the destructor detaches both
    auto it = manager.m_receivers.find(4);
    EXPECT(it == manager.m_receivers.end() || it->second.empty());
}

}  // namespace

int main() {
    EventManager manager;
    dword_99F740 = &manager;
    {
        ZoomHandler zoom;
        zoom.m_sensitivity = 0.5f;
        TestSetCameraAndReset(zoom);
        TestWheelZoom(zoom);
        TestMousePan(zoom);
        TestTouchPanAndPinch(zoom);
    }
    TestAttachAndDetach(manager);
    dword_99F740 = nullptr;

    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("ZoomHandler test passed\n");
    return 0;
}
