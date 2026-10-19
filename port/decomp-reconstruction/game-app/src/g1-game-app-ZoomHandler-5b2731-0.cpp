// Batch g1-game-app-ZoomHandler-5b2731-0 (ZoomHandler, game-app, 10 addresses): the map camera's zoom and pan from
// mouse, wheel and touch input. Declarations: dh2/ZoomHandler.hpp. Touch record: dh2/TouchData.hpp.
//
// Facts shared by the bodies:
//   - The bound camera is m_camera (+0x20). The touch paths return 0 at once unless the camera's m_useObjectPosition
//     flag (CameraLevel +0x85) is set. The mouse path checks that flag per press. The map camera is the one that sets it.
//   - MapAcceptsTouch: MenuCharMenu_Map::GetInstance() takes a point when its unk_1e4 (+0x1e4) is clear and
//     IsPointInsideRenderZone holds. Both headers now use the one Point3D of dh2/Point3D.hpp, so the test is written.
//   - Mouse events are glitch::SEvent with EventType 1 (mouse input). EMOUSE_INPUT_EVENT: 0 left down, 3 left up,
//     6 moved, 7 wheel. Touch events are IEvent with id 4 (EvTouchScreenPress) or 5 (EvTouchScreenMove).
//   - The finger map is std::map<long, TouchData> keyed by the touch id. The pinch uses the first two entries in key
//     order. The original steps the rb-tree once from its leftmost node, which is std::next(begin()).
//   - The sensitivity (+0x28) is 1 / max(width, height) of the render target reached from dword_99F73C by the chain
//     +0x1c (the device's scene manager), +0x14 (CSceneManager::driver), +0xcc (the driver's m_renderTargets), last
//     entry. Every step is declared now; the ctor and setCamera write it.

#include "dh2/ZoomHandler.hpp"

#include <cmath>
#include <cstdint>
#include <iterator>

#include "dh2/CameraLevel.hpp"
#include "dh2/Application.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/render_target.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/MenuCharMenu_Map.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"  // dword_99F740, the EventManager instance

namespace {

// The render target the sensitivity is taken from. The original's chain is: device +0x1c (the scene manager) -> its
// video driver (+0x14, CSceneManager::driver) -> the last entry of the driver's target stack (asm: the vector end
// word at driver +0xcc minus 4 is the pointer). Every step is declared now (glitch-core-io/os/device.hpp,
// CSceneManager.hpp, video_driver.hpp, render_target.hpp), so the port uses the members. The null/empty guard is a
// host-necessitated deviation: the original dereferences unconditionally, and the batch test builds a ZoomHandler
// with no Application device (g1-game-app-ZoomHandler-5b2731-0_test.cpp), so the port returns null there and the
// caller keeps the previous value instead of faulting. With a device the value is the original's.
glitch::video::IRenderTarget* SensitivityRenderTarget() {
    glitch::IDevice* device = ApplicationGetInstance().m_device;
    if (device == nullptr || device->sceneManager == nullptr) {
        return nullptr;
    }
    glitch::scene::CSceneManager* scene = reinterpret_cast<glitch::scene::CSceneManager*>(device->sceneManager);
    glitch::video::IVideoDriver* driver = scene->driver;  // scene +0x14
    if (driver == nullptr || driver->m_renderTargets.empty()) {  // +0xc8, the entry before the end word
        return nullptr;
    }
    return driver->m_renderTargets.back().get();
}

// The map test of the touch and mouse paths: MenuCharMenu_Map::GetInstance() with unk_1e4 (+0x1e4) clear, and
// IsPointInsideRenderZone(x, y). The original's other alternative, a clear camera flag, is tested by the callers
// (the touch paths return first; the mouse path tests the flag before it calls this).
bool MapAcceptsTouch(int x, int y) {
    MenuCharMenu_Map* map = MenuCharMenu_Map::GetInstance();
    return !map->unk_1e4 && map->IsPointInsideRenderZone(x, y);
}

}  // namespace

// 0x382204 ZoomHandler::ZoomHandler()
// 0x3822e4 ZoomHandler::ZoomHandler()   (C2, the same body; see the ledger)
// Reconstructed from the listing: camera, pan flags and the zeroed pan baseline are cleared (m_mousePanEnabled +0x24,
// m_mousePanActive +0x34, m_mousePanBaseline +0x38..+0x40), m_sensitivity (+0x28) gets 1 / max(width, height) of the
// last render target (asm: v3 = width +0x0c, height +0x10 replaces it when it is not smaller), the finger map at
// +0x08 is default-constructed empty, and events 4 and 5 are attached on dword_99F740 (the EventManager instance).
// The null/empty guard of SensitivityRenderTarget is the deviation named above.
ZoomHandler::ZoomHandler() {
    m_camera = nullptr;                 // +0x20
    m_mousePanEnabled = false;          // +0x24
    m_mousePanActive = false;           // +0x34
    m_mousePanBaseline[0] = 0.0f;       // +0x38
    m_mousePanBaseline[1] = 0.0f;       // +0x3c
    m_mousePanBaseline[2] = 0.0f;       // +0x40
    m_sensitivity = 0.0f;               // +0x28
    if (const glitch::video::IRenderTarget* target = SensitivityRenderTarget()) {
        const int maxDimension = target->m_height >= target->m_width ? target->m_height : target->m_width;
        m_sensitivity = 1.0f / static_cast<float>(maxDimension);
    }
    // +0x08 the finger map is empty (std::map default construction in the original's rb-tree header layout).

    dword_99F740->Attach(EvTouchScreenPress::kEventId, this, 0);   // event 4
    dword_99F740->Attach(EvTouchScreenMove::kEventId, this, 0);    // event 5
}

// 0x381fb0 ZoomHandler::setCamera(CameraLevel*)
// Reconstructed from the listing: the camera is stored (+0x20), the pan flags are cleared (+0x24, +0x34), then
// m_sensitivity (+0x28) is set to 1 / max(width, height) of the last render target (asm: v4 = height +0x10, width
// +0x0c replaces it when it is smaller) and that value is returned. The null/empty guard of SensitivityRenderTarget
// is the deviation named above: with no device the previous sensitivity is kept and returned (the batch test sets
// m_sensitivity and expects setCamera to give it back).
float ZoomHandler::setCamera(CameraLevel* camera) {
    m_camera = camera;                  // +0x20
    m_mousePanEnabled = false;          // +0x24
    m_mousePanActive = false;           // +0x34
    if (const glitch::video::IRenderTarget* target = SensitivityRenderTarget()) {
        int dimension = target->m_height;   // +0x10
        if (dimension < target->m_width) {  // +0x0c
            dimension = target->m_width;
        }
        m_sensitivity = 1.0f / static_cast<float>(dimension);  // +0x28
    }
    return m_sensitivity;
}

// 0x38201c ZoomHandler::ResetZoom()
// No null check, as in the original: the camera must be bound.
void ZoomHandler::ResetZoom() {
    m_camera->m_zoomTarget = 1.0f;      // CameraLevel +0x8c (140)
    m_camera->m_zoomCurrent = 0.0f;     // CameraLevel +0x88 (136)
}

// 0x382040 ZoomHandler::onEvent(glitch::SEvent const&)
// Reconstructed from the listing and verified line by line: no camera or a non-mouse event returns 0; wheel (7) adds
// (m_sensitivity * 5) * wheel to the camera's m_zoomCurrent (+0x88) and returns 1; the pan switch returns 0 unless
// m_mousePanEnabled (+0x24) is set; left down (0) sets m_mousePanActive to !camera->m_useObjectPosition ||
// MapAcceptsTouch(x, y), stores the two start coordinates (+0x2c/+0x30) and the three baseline words from the camera
// pan (+0x98/+0x9c/+0xa0) and returns 1; moved (6) needs m_mousePanActive, writes the camera pan as
// baseline + (delta * 50) with the X delta negated (the original's COERCE_INT + 0x80000000 sign flip) and Z as
// baseline + 0.0; left up (3) clears m_mousePanActive. Anything else returns 0. MapAcceptsTouch is implemented in
// this file (the earlier note's "stub returning false" is stale: dh2/MenuCharMenu_Map.hpp and dh2/CameraLevel.hpp
// now share the one Point3D type).
bool ZoomHandler::onEvent(const glitch::SEvent& event) {
    CameraLevel* camera = m_camera;     // +0x20
    if (!camera || event.EventType != glitch::EET_MOUSE_INPUT_EVENT) {
        return false;
    }

    const std::int32_t mouseEvent = event.MouseInput.Event;  // +0x14
    if (mouseEvent == glitch::EMIE_MOUSE_WHEEL) {
        // +0x88 += (sensitivity * 5) * wheel (the wheel float is at SEvent +0x10)
        camera->m_zoomCurrent = (m_sensitivity * 5.0f) * event.MouseInput.Wheel + camera->m_zoomCurrent;
        return true;
    }

    if (!m_mousePanEnabled) {           // +0x24
        return false;
    }

    if (mouseEvent == glitch::EMIE_LMOUSE_PRESSED_DOWN) {
        // The pan is active when the camera does not use the object position, or when the map accepts the point.
        m_mousePanActive = !camera->m_useObjectPosition || MapAcceptsTouch(event.MouseInput.X, event.MouseInput.Y);
        m_mouseStartX = event.MouseInput.X;   // +0x2c
        m_mouseStartY = event.MouseInput.Y;   // +0x30
        m_mousePanBaseline[0] = camera->m_panOffset.X;  // camera +0x98 (152)
        m_mousePanBaseline[1] = camera->m_panOffset.Y;  // camera +0x9c (156)
        m_mousePanBaseline[2] = camera->m_panOffset.Z;  // camera +0xa0 (160)
        return true;
    }

    if (mouseEvent != glitch::EMIE_MOUSE_MOVED) {
        if (mouseEvent == glitch::EMIE_LMOUSE_LEFT_UP) {
            m_mousePanActive = false;
            return true;
        }
        return false;
    }

    if (!m_mousePanActive) {
        return false;
    }
    // X runs against the mouse (the sign flip is the original's COERCE_INT + 0x80000000); Y follows it.
    camera->m_panOffset.X =
        -(static_cast<float>(event.MouseInput.X) - static_cast<float>(m_mouseStartX)) * 50.0f + m_mousePanBaseline[0];
    camera->m_panOffset.Z = m_mousePanBaseline[2] + 0.0f;  // the original adds +0.0 (it turns -0.0 into +0.0)
    camera->m_panOffset.Y =
        (static_cast<float>(event.MouseInput.Y) - static_cast<float>(m_mouseStartY)) * 50.0f + m_mousePanBaseline[1];
    return true;
}

// 0x382bdc ZoomHandler::onEvent(IEvent const*, EventManager const*)
// The touch path. Press (4) records the touch when MapAcceptsTouch takes the point, and release erases it. Move (5)
// pans the camera for one finger, or zooms it by the change of the distance between the first two fingers. The
// return value says the touch was used.
bool ZoomHandler::onEvent(const IEvent* event, const EventManager* manager) {
    (void)manager;
    CameraLevel* camera = m_camera;     // +0x20
    if (!camera || !camera->m_useObjectPosition) {   // camera +0x85
        return false;
    }

    const std::uint32_t eventId = event->getEventID();
    if (eventId == EvTouchScreenPress::kEventId) {
        const auto* press = static_cast<const EvTouchScreenPress*>(event);
        const long key = press->id;
        if (press->pressed) {
            // The camera flag is set (checked above), so the press is recorded when the map accepts the point.
            if (MapAcceptsTouch(press->x, press->y)) {
                TouchData& touch = m_fingerMap[key];
                touch.firstX = press->x;
                touch.firstY = press->y;
                touch.latestX = press->x;
                touch.latestY = press->y;
            }
        } else {
            auto it = m_fingerMap.find(key);
            if (it != m_fingerMap.end()) {
                m_fingerMap.erase(it);
            }
        }
        return m_fingerMap.size() > 1;  // the press or release is consumed when more than one finger is down
    }

    if (eventId != EvTouchScreenMove::kEventId) {
        return false;
    }

    const auto* move = static_cast<const EvTouchScreenMove*>(event);
    const long key = move->id;
    {
        // The first contact is set when both first fields are zero. The latest contact is always set.
        TouchData& touch = m_fingerMap[key];
        if (touch.firstX == 0 && touch.firstY == 0) {
            touch.firstX = move->x;
            touch.firstY = move->y;
        }
        touch.latestX = move->x;
        touch.latestY = move->y;
    }

    bool consumed = false;
    if (m_fingerMap.size() <= 1) {
        // One finger: pan by the move since the last move, which is kept in the first fields (set at the end below).
        // The original's leg for a clear camera flag is not reached: the flag is set (checked above) and returns 0.
        const TouchData& touch = m_fingerMap[key];
        camera->m_panOffset.X =
            camera->m_panOffset.X - (static_cast<float>(move->x) - static_cast<float>(touch.firstX)) * 50.0f;
        camera->m_panOffset.Y =
            camera->m_panOffset.Y -
            (-(static_cast<float>(move->y) - static_cast<float>(touch.firstY))) * 50.0f;
    } else {
        // Two or more fingers: the first two entries in key order. Zoom by the change of their distance, scaled by
        // the sensitivity. The start distance uses the first contacts, the current one the latest contacts.
        auto first = m_fingerMap.begin();
        auto second = std::next(first);
        const TouchData& a = first->second;
        const TouchData& b = second->second;

        const float startDx = static_cast<float>(a.firstX) - static_cast<float>(b.firstX);
        const float startDy = static_cast<float>(a.firstY) - static_cast<float>(b.firstY);
        const float startDist = static_cast<float>(std::sqrt(static_cast<double>(startDx * startDx + startDy * startDy)));

        const float curDx = static_cast<float>(a.latestX) - static_cast<float>(b.latestX);
        const float curDy = static_cast<float>(a.latestY) - static_cast<float>(b.latestY);
        const float curDist = static_cast<float>(std::sqrt(static_cast<double>(curDx * curDx + curDy * curDy)));

        const float delta = (curDist - startDist) * m_sensitivity;
        camera->m_zoomCurrent = delta + camera->m_zoomCurrent;   // +0x88
        consumed = true;
    }

    // The first contact of this touch becomes the move's position, the base of the next move.
    TouchData& touch = m_fingerMap[key];
    touch.firstX = move->x;
    touch.firstY = move->y;
    return consumed;
}

// 0x3830bc ZoomHandler::ResetFingerMap()
// The original skips the erase when the map is empty. clear() on an empty map does nothing, so this is the same.
void ZoomHandler::ResetFingerMap() {
    m_fingerMap.clear();
}

// 0x383100 ZoomHandler::~ZoomHandler()   (D1, the base-object destructor body)
ZoomHandler::~ZoomHandler() {
    dword_99F740->Detach(EvTouchScreenPress::kEventId, this);   // event 4
    dword_99F740->Detach(EvTouchScreenMove::kEventId, this);    // event 5
    m_fingerMap.clear();                                        // the original erases the nodes and resets the header
}

// 0x38319c ZoomHandler::~ZoomHandler()   (D0, deleting destructor): SKIPPED. The compiler emits it from the virtual
// destructor: it calls D1 (0x383100) and then CustomFree(this). A C++ delete expression produces the same shape.
// 0x3831b8 ZoomHandler::~ZoomHandler()   (D2, base-object destructor): SKIPPED. The same body as D1 (0x383100).
