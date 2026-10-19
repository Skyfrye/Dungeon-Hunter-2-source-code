// v2EmuController: keyboard and mouse input controller. Derives from v2Controller and from IEventReceiver, whose
// vtable sits at +0x10 and is attached to EventManager by the ctor. Mouse input and keyboard input are turned
// into Cmd_* calls; the masks at +0x14 and +0x18 accumulate key state across events.
// Original 32-bit size 0x1c (28), from operator new(28) in the class facts.
// Reconstructed from libDungeonHunter2.so: ctor 0x4065ac / 0x4066cc (attaches the receiver with ids 0 and 2),
// onEvent 0x406450, _onEvent(mouse) 0x405f48, _onEvent(keyboard) 0x4060c0, dtors 0x4064b8 / 0x406528 / 0x406544.
#pragma once

#include <cstdint>

#include "dh2/IEventReceiver.hpp"
#include "dh2/v2Controller.hpp"

class v2Controllable;
class EvMouseButton;
class EvKeyboard;

class v2EmuController : public v2Controller, public IEventReceiver {
public:
    explicit v2EmuController(v2Controllable* controllable);             // 0x4065ac (C1), 0x4066cc (C2)
    ~v2EmuController() override;                                        // 0x4064b8 (D1), 0x406528 (D0), 0x406544 (D2)

    // Forwards to _onEvent when the event's type is 0 or 2, otherwise returns false.
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // 0x406450
    bool _onEvent(const EvMouseButton* event, const EventManager* manager);   // 0x405f48
    bool _onEvent(const EvKeyboard* event, const EventManager* manager);      // 0x4060c0

    // v2Controller occupies +0x00 .. +0x0f. IEventReceiver subobject (its vptr) at +0x10.
    unsigned int unk_014;                                               // +0x14 key-state mask. Keyboard ids 135..138 set or clear bits and call Cmd_HeadTowards
    unsigned int unk_018;                                               // +0x18 key-state mask. Keyboard ids 145 and 146 set or clear bits; the mouse routing (0x405f48) reads it too
};
