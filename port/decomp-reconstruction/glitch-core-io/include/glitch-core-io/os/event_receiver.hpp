// glitch::SEvent and glitch::IEventReceiver: the input and GUI event record and the interface that
// receives it. The one definition for every category (canonical header of the engine unification wave,
// u1-core). This is the glitch (Irrlicht-derived) interface; the game's own ::IEventReceiver (which receives
// IEvent from EventManager) is a different class, declared in game/include/dh2/IEventReceiver.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout):
//   glitch::IEventReceiver vtable (_ZTVN6glitch14IEventReceiverE, 20 bytes): +0x00 D1 (0x31d8cc), +0x04 D0
//          (0x31fd8c), +0x08 onEvent (pure). Every implementer overrides +0x08 with onEvent(SEvent const&)
//          (TouchScreenWin32 0x33d4b4, Application 0x32a9c8, InputManagerEventReceiver 0x34d92c,
//          ZoomHandler 0x382040, CGUIEnvironment 0x535710). The result means "consumed".
//   glitch::SEvent is 0x18 bytes: IDevice::postEventFromUser (0x671a00) copies six words into the device's
//          std::deque<glitch::SEvent> (node size 24).
//     +0x00 EventType (int): 0 = GUI event, 1 = mouse input, 2 = key input (CGUIEnvironment::onEvent rejects 1
//           and 2; Application::onEvent and TouchScreenWin32::onEvent test 1; InputManagerEventReceiver tests 2).
//     +0x04 not read or written by any listing seen.
//     +0x08.. the payload, by EventType:
//       GUI event:   +0x08 Caller, +0x0c Element, +0x10 GUI event type   (CGUIEnvironment::onEvent reads +0x08;
//                    CGUIWindow::onEvent 0x55fe1c reads the type at +0x10 and builds an event with type 0, itself as
//                    the caller, a null element and event type 4)
//       mouse input: +0x08 X (int), +0x0c Y (int), +0x10 Wheel (float), +0x14 Event (EMOUSE_INPUT_EVENT)
//                    (TouchScreenWin32: shorts at +8/+12 from X/Y, switch on +0x14; ZoomHandler: wheel float at
//                    +0x10 when +0x14 == 7; postMouseEventFromUser 0x671aec subtracts the window origin from
//                    +0x08 and +0x0c)
//       log text:    +0x08 Text (char*), +0x0c Level (ELOG_LEVEL)   (CLogger::vlogf 0x6a0990 builds an event with
//                    type 3, the formatted text and the level, and passes it to its receiver's onEvent)
//       key input:   +0x08 Char, +0x0c Key (int), +0x10 PressedDown (byte); Shift +0x11 and Control +0x12 are
//                    Irrlicht's next two bytes and are not read by any listing seen (InputManagerEventReceiver
//                    reads +0x0c as the key code and +0x10 as the down flag).
//   EMOUSE_INPUT_EVENT values 0..7 are the ones the listings switch on: 0 left pressed, 1 right pressed, 2 middle
//   pressed, 3 left up, 4 right up, 5 middle up, 6 moved, 7 wheel (Application::onEvent, InputManagerEventReceiver).
//
// Port notes: pointers in the GUI payload are host width. The key codes are the Windows virtual-key values
// (InputManagerEventReceiver tests 16, 17, 18 for shift, control and menu).
#pragma once

#include <cstdint>

namespace glitch {

enum EEVENT_TYPE : std::int32_t {
    EET_GUI_EVENT = 0,
    EET_MOUSE_INPUT_EVENT = 1,
    EET_KEY_INPUT_EVENT = 2,
    EET_LOG_TEXT_EVENT = 3,
};

enum EMOUSE_INPUT_EVENT : std::int32_t {
    EMIE_LMOUSE_PRESSED_DOWN = 0,
    EMIE_RMOUSE_PRESSED_DOWN = 1,
    EMIE_MMOUSE_PRESSED_DOWN = 2,
    EMIE_LMOUSE_LEFT_UP = 3,
    EMIE_RMOUSE_LEFT_UP = 4,
    EMIE_MMOUSE_LEFT_UP = 5,
    EMIE_MOUSE_MOVED = 6,
    EMIE_MOUSE_WHEEL = 7,
};

struct SEvent {
    // GUI event payload: +0x08 Caller, +0x0c Element, +0x10 event type.
    struct SGUIEvent {
        const void* Caller = nullptr;   // +0x08
        const void* Element = nullptr;  // +0x0c
        std::int32_t EventType = 0;     // +0x10
    };
    // Mouse payload: +0x08 X, +0x0c Y, +0x10 Wheel, +0x14 Event.
    struct SMouseInput {
        std::int32_t X;           // +0x08
        std::int32_t Y;           // +0x0c
        float Wheel;              // +0x10
        std::int32_t Event;       // +0x14, an EMOUSE_INPUT_EVENT
    };
    // Log payload: +0x08 Text, +0x0c Level (a glitch::ELOG_LEVEL).
    struct SLogEvent {
        const char* Text;         // +0x08
        std::int32_t Level;       // +0x0c
    };
    // Key payload: +0x08 Char, +0x0c Key, +0x10 PressedDown, +0x11 Shift, +0x12 Control.
    struct SKeyInput {
        std::uint32_t Char;       // +0x08
        std::int32_t Key;         // +0x0c, the Windows virtual-key code
        bool PressedDown;         // +0x10
        bool Shift;               // +0x11
        bool Control;             // +0x12
    };

    std::int32_t EventType = 0;   // +0x00, an EEVENT_TYPE
    std::uint32_t unk_04 = 0;     // +0x04, not accessed by any listing seen
    union {                       // +0x08
        SGUIEvent GUIEvent;
        SMouseInput MouseInput;
        SKeyInput KeyInput;
        SLogEvent LogEvent;
    };

    SEvent() : GUIEvent() {}
};

// _ZTVN6glitch14IEventReceiverE
class IEventReceiver {
public:
    virtual ~IEventReceiver() = default;                 // +0x00 D1 0x31d8cc, +0x04 D0 0x31fd8c
    virtual bool onEvent(const SEvent& event) = 0;       // +0x08
};

}  // namespace glitch
