// ZoomHandler: turns mouse, touch and pinch input into the zoom and pan of the bound CameraLevel
// (CameraLevel +136 zoom, +152/+156/+160 pan). It is an IEventReceiver on the EventManager (events 4 and 5
// are attached in the ctor) and a glitch::IEventReceiver for SEvent input. Its touch path keeps a map of
// active fingers, keyed by pointer id.
// Two vptrs: IEventReceiver at +0x00 (primary), glitch::IEventReceiver at +0x04 (secondary, thunks at vtable
// +0x18..+0x20). Original 32-bit size 0x44 (68), the size Application allocates for m_zoomHandler.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x382204 / 0x3822e4, dtor 0x383100 / 0x38319c / 0x3831b8).
#pragma once

#include <cstdint>
#include <map>

#include "dh2/IEventReceiver.hpp"
#include "dh2/TouchData.hpp"
#include "glitch-scene-collada-gui/deps/event_stand_ins.hpp"

class CameraLevel;
class IEvent;
class EventManager;

class ZoomHandler : public IEventReceiver, public glitch::IEventReceiver {
public:
    ZoomHandler();                                                      // 0x382204 (C1), 0x3822e4 (C2)
    ~ZoomHandler() override;                                            // 0x383100 (D1), 0x3831b8 (D2), 0x38319c (D0)

    // Overrides in vtable order. Primary vtable first, then the glitch::IEventReceiver thunks.
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // slot 0x08: 0x382bdc
    // slot 0x0c: 0x382040. Also reached through the secondary vptr (vtable +0x20) as the glitch::IEventReceiver
    // slot +0x08 (the pure onEvent of glitch::IEventReceiver).
    bool onEvent(const glitch::SEvent& event) override;                 // 0x382040

    float setCamera(CameraLevel* camera);                               // 0x381fb0, returns m_sensitivity (PARTIAL: see the .cpp)
    void ResetZoom();                                                   // 0x38201c, sets CameraLevel +140 to 1 and +136 to 0
    void ResetFingerMap();                                              // 0x3830bc, erases the finger map

    // Original 32-bit offsets. The vptrs are implicit, at +0x00 and +0x04.
    // +0x08 is an STLport rb-tree header (color, parent, left, right, node_count) for std::map<long, TouchData>.
    // It is empty after the ctor, with the root at +0x0c and both leftmost and rightmost pointing back to +0x08.
    std::map<long, TouchData> m_fingerMap;                              // +0x08 .. +0x1b (20 bytes on 32-bit)
    uint8_t pad_1c[4];                                                  // +0x1c, not touched by the ctor or dtor
    CameraLevel* m_camera;                                              // +0x20 bound camera, null until setCamera
    bool m_mousePanEnabled;                                             // +0x24 cleared by setCamera
    uint8_t pad_25[3];                                                  // +0x25
    float m_sensitivity;                                                // +0x28 1 / max(width, height) of the render target
    int32_t m_mouseStartX;                                              // +0x2c mouse pan start, from the event
    int32_t m_mouseStartY;                                              // +0x30 mouse pan start, from the event
    bool m_mousePanActive;                                              // +0x34 set while a mouse pan is in progress
    uint8_t pad_35[3];                                                  // +0x35
    float m_mousePanBaseline[3];                                        // +0x38 camera pan (CameraLevel +152/+156/+160) at pan start
};
