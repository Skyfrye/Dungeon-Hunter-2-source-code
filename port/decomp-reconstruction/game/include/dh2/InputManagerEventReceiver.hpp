// InputManagerEventReceiver: the glitch::IEventReceiver that keeps the key and mouse state the game
// polls through InputManager. Original 32-bit size 0x118 (280), as InputManager::GetReceiver allocates it.
// Reconstructed from libDungeonHunter2.so pseudocode (onEvent 0x34d92c, IsKeyDown 0x34da90).
#pragma once

#include <cstdint>

// glitch::IEventReceiver with its onEvent slot and glitch::SEvent come from core-platform's glitch_core.hpp only.
// glitch-core-io's glitch_core_objects.hpp also defines a dtor-only glitch::IEventReceiver, so including both
// is a redefinition error. This header uses nothing else from it.
#include "core-platform/deps/glitch_core.hpp"

class InputManagerEventReceiver : public glitch::IEventReceiver {
public:
    // Vtable slots in order (_ZTV25InputManagerEventReceiver, 24 bytes).
    ~InputManagerEventReceiver() override;                              // +0x00, +0x04: 0x34dab0 (D1), 0x34dc5c (D0)
    virtual bool onEvent(const glitch::SEvent& event);                  // +0x08 0x34d92c. The base declares no slot here yet.
    virtual bool IsKeyDown(int keyCode) const;                          // +0x0c 0x34da90. The key code is glitch::EKEY_CODE in the original; the enum is not recovered.

    // +0x00 vptr is the base class's (glitch::IEventReceiver).
    // Key state indexed by key code. A key event (type 2) writes PressedDown at this index. The Shift,
    // Control and Alt keys (16, 17, 18) also mirror into the left and right modifier codes 0xa0..0xa5,
    // at +0xa4..+0xa9.
    std::uint8_t m_keyDown[0x100];                                      // +0x04
    // Last mouse position from a mouse event (type 1).
    std::int32_t m_mouseX;                                              // +0x104
    std::int32_t m_mouseY;                                              // +0x108
    // Accumulated wheel delta, added on mouse action 7.
    float m_wheelDelta;                                                 // +0x10c
    std::uint8_t pad_110[2];                                            // +0x110 .. +0x111
    // Button latches, each toggled by the mouse actions named here.
    std::uint8_t unk_112;                                               // +0x112 mouse actions 0 and 3
    std::uint8_t unk_113;                                               // +0x113 mouse actions 1 and 4
    std::uint8_t unk_114;                                               // +0x114 mouse actions 2 and 5
    std::uint8_t pad_115[3];                                            // +0x115 .. +0x117
};
