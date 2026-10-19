// OnScreenKeyboard: the device on-screen keyboard. While a query is open it is attached to EventManager as
// an IEventReceiver (its static instance s_inst) and types characters into the caller's buffer. Only the
// vptr is per-object. Every other member is static, and the state lives in the statics.
// Original 32-bit size 0x4 (vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x51b3f4, 0x51b418; onEvent 0x51b444).
#pragma once

#include <cstdint>

#include "dh2/IEventReceiver.hpp"

class IEvent;
class EventManager;

class OnScreenKeyboard : public IEventReceiver {
public:
    OnScreenKeyboard();                                                  // 0x51b3f4 / 0x51b418 sets the vptr only
    ~OnScreenKeyboard() override;                                        // 0x51b43c / 0x51b440 (D2/D1), 0x51b5d4 (D0)

    // Overrides of IEventReceiver slots. Slots +0x00 and +0x04 are the destructors above.
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // slot +0x08: 0x51b444 appends typed characters, event type 8 removes one, type 13 detaches and sets s_isOver

    // Static helpers. The original methods ignore their `this` argument, so the callers pass no object.
    static void ClearString();                                           // 0x51b3a4 empties the buffer while a query is open
    static void ReleaseKeyboard();                                       // 0x51b588 detaches the receiver and sets s_isOver
    static bool GetString(const char* title, char* outBuffer, unsigned int maxLength, const char* initialText);  // 0x51b5f0 starts a query; the title is not read by the body

    static OnScreenKeyboard s_inst;                                      // OnScreenKeyboard::s_inst, the receiver that EventManager::Attach gets
    static char* s_outBuffer;                                            // caller buffer the typed characters go into
    static unsigned int s_outBufLen;                                     // capacity of s_outBuffer
    static unsigned int s_bufIdx;                                        // characters typed so far, also the write index
    static bool s_isOver;                                                // set when the keyboard is released; GetString needs it set
    static bool s_isQuerying;                                            // set while GetString attaches the receiver
};
