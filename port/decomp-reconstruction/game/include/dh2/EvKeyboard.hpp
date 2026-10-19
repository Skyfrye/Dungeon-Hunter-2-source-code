// EvKeyboard: a key went down or up. Raised by Application::onEvent (0x32a9c8, for glitch key events) and by
// Application::_CheckGamepad (0x321164, which turns gamepad sticks and buttons into key events). Consumed by
// v2EmuController::_onEvent(EvKeyboard const*, ...) (0x4060c0), which switches on the key code at +0x0c and tests the
// pressed byte at +0x10, and by OnScreenKeyboard. _ZTV10EvKeyboard (0x95b438) is 20 bytes: D1 (0x31d8e4), D0 (0x31fc54)
// and the inherited IEvent::getEventID.
// Layout (32-bit offsets, from the stack objects of onEvent): +0x00 vptr, +0x04 event id 0, +0x08 the character
// (glitch SEvent +0x08), +0x0c the key code (SEvent +0x0c), +0x10 pressed (SEvent +0x10), +0x11 shift (SEvent +0x11),
// +0x12 control (SEvent +0x12), +0x13 a byte both raisers set to 0. The object is 0x14 bytes.
#pragma once

#include <cstdint>

#include "dh2/IEvent.hpp"

class EvKeyboard : public IEvent {
public:
    static constexpr std::uint32_t kEventId = 0;

    EvKeyboard(std::int32_t character, std::int32_t key, bool pressed, bool shift, bool control)
        : IEvent(kEventId), character(character), key(key), pressed(pressed), shift(shift), control(control) {}
    ~EvKeyboard() override = default;  // 0x31d8e4 (D1), 0x31fc54 (D0)

    std::int32_t character;      // +0x08
    std::int32_t key;            // +0x0c
    bool pressed;                // +0x10
    bool shift;                  // +0x11
    bool control;                // +0x12
    std::uint8_t unk_13 = 0;     // +0x13
};
