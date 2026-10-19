// Batch g1-game-ui-OnScreenKeyboard-836bdc-0 (OnScreenKeyboard, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
//
// Layout and declarations: game/include/dh2/OnScreenKeyboard.hpp. The object is the vptr only (4 bytes in the original);
// every other member is static. The receiver s_inst is attached to dword_99F740 (the EventManager, Application +0x14) while
// a query is open.
//
// Calling convention: the methods are static, so the original's hidden `this` (r0 in the Hex-Rays pseudocode) is never
// used. Parameters below are the real ones: in GetString the Hex-Rays a2 is the output buffer, a3 the maximum length and
// a4 the initial text, and the title (r0 in the assembly) is not read.
//
// Status: onEvent is partial. Its gate on the event id is written and its return value is exact, but the typing,
// backspace and release steps read the EvKeyboard fields (+0x08 character, +0x0c key id, +0x10 pressed flag) and
// dh2/EvKeyboard.hpp does not exist yet.

#include "dh2/OnScreenKeyboard.hpp"

#include <cstdio>
#include <cstdlib>

#include "core-platform/lc_api.hpp"
#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/EvKeyboard.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"  // dword_99F740, the EventManager instance

// Static storage. The values are the ELF symbols' (.bss unless noted).
OnScreenKeyboard OnScreenKeyboard::s_inst;                       // 0x9f62b0, 4 bytes (the vptr)
char* OnScreenKeyboard::s_outBuffer = nullptr;                   // 0x9f62b8
unsigned int OnScreenKeyboard::s_outBufLen = 0;                  // 0x9f62bc
unsigned int OnScreenKeyboard::s_bufIdx = 0;                     // 0x9f62b4
bool OnScreenKeyboard::s_isOver = true;                          // 0x99b0fc, .data, initial byte 1 (read from the binary)
bool OnScreenKeyboard::s_isQuerying = false;                     // 0x9f62ac, .bss

namespace {

// The source path that the original passes to its ASSERT macro.
constexpr const char* kOnScreenKeyboardSource =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\OnScreenKeyboard.cpp";

}  // namespace

// 0x51b3a4 OnScreenKeyboard::ClearString(void)
// Empties the buffer while a query has a buffer (s_outBufLen != 0): the index goes to 0 and the first byte to NUL.
// The original's return value (Hex-Rays int *) is r0 leftover: `this` on the early return and &s_outBuffer otherwise.
// Its only caller, GSKeyboard::ClearString (0x385914), ignores it, so the declaration returns void.
void OnScreenKeyboard::ClearString() {
    if (s_outBufLen != 0) {
        s_bufIdx = 0;
        *s_outBuffer = '\0';
    }
}

// 0x51b3f4 OnScreenKeyboard::OnScreenKeyboard(void)  (C2 variant)
// 0x51b418 OnScreenKeyboard::OnScreenKeyboard(void)  (C1 variant)
// Both store the vptr (_ZTV16OnScreenKeyboard + 8) and nothing else. The compiler writes the vptr, and the base
// IEventReceiver has no constructor body, so the two variants share this empty definition.
OnScreenKeyboard::OnScreenKeyboard() {}

// 0x51b43c OnScreenKeyboard::~OnScreenKeyboard()  (D2 variant)
// 0x51b440 OnScreenKeyboard::~OnScreenKeyboard()  (D1 variant)
// Both are a bare return (asm: BX LR). The base IEventReceiver destructor is empty as well.
OnScreenKeyboard::~OnScreenKeyboard() {}

// 0x51b5d4 OnScreenKeyboard::~OnScreenKeyboard()  (D0 variant, deleting destructor) is compiler-generated and is not
// written. Its body is D1 followed by CustomFree(this), which is what `delete` on an OnScreenKeyboard does.

// 0x51b444 OnScreenKeyboard::onEvent(IEvent const*, EventManager const*)
// For an event with id 0 (EvKeyboard), the result is 1 on every path. Enter (key 13) with the pressed flag clear detaches
// the receiver from event 0 and sets s_isOver. Backspace (key 8) with the flag set and s_bufIdx nonzero moves the index back
// and writes NUL. Otherwise a character with the flag set and room left (s_outBufLen - 1 > s_bufIdx) is appended. Any other
// id returns 0 before the event is read.
bool OnScreenKeyboard::onEvent(const IEvent* event, const EventManager* manager) {
    (void)manager;
    if (event->getEventID() != 0) {
        return false;
    }
    const EvKeyboard* key = static_cast<const EvKeyboard*>(event);
    if (key->key == 13) {  // enter
        if (!key->pressed) {
            dword_99F740->Detach(0, &s_inst);
            s_isOver = true;
        }
        return true;
    }
    if (key->key == 8) {  // backspace
        if (key->pressed && s_bufIdx != 0) {
            --s_bufIdx;
            s_outBuffer[s_bufIdx] = 0;
        }
        return true;
    }
    if (key->character != 0 && key->pressed && s_outBufLen - 1 > s_bufIdx) {
        s_outBuffer[s_bufIdx++] = static_cast<char>(key->character);
    }
    return true;
}

// 0x51b588 OnScreenKeyboard::ReleaseKeyboard(void)
// Detaches the receiver from event 0 on the EventManager and marks the query over. The original returns the Detach result
// in r0. The declaration returns void, and the known callers do not read it: GSKeyboard::Dtor tail-calls this and
// NativeCloseKeyboard ignores it.
void OnScreenKeyboard::ReleaseKeyboard() {
    dword_99F740->Detach(0, &s_inst);
    s_isOver = true;
}

// 0x51b5f0 OnScreenKeyboard::GetString(char const*, char*, unsigned int, char const*)
// Starts a query. Does nothing and returns false while a query is open or s_isOver is clear. Otherwise it records the
// buffer and its capacity, copies the initial text when there is one (the index becomes its length, and the copy does
// not write a terminator, as the original's strncpy), attaches the receiver to event 0 with priority 0x7fffffff and
// returns true. The title (r0 in the assembly) is not read.
bool OnScreenKeyboard::GetString(const char* title, char* outBuffer, unsigned int maxLength, const char* initialText) {
    (void)title;
    if (s_isQuerying || !s_isOver) {
        return false;
    }
    if (outBuffer == nullptr) {
        // The original ASSERT(outbuffer). gAssertLevel 2 stops the program (the original stores to address 0 to crash);
        // gAssertLevel 1 prints the message to stderr and execution continues.
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "outbuffer", kOnScreenKeyboardSource, 98);
        }
    }
    s_isQuerying = true;
    s_isOver = false;
    s_bufIdx = 0;
    if (initialText != nullptr) {
        s_bufIdx = static_cast<unsigned int>(LC_API_STRLEN(initialText));
        s_outBuffer = outBuffer;
        s_outBufLen = maxLength;
        LC_API_STRNCPY(outBuffer, initialText, s_bufIdx);
    } else {
        s_outBuffer = outBuffer;
        s_outBufLen = maxLength;
    }
    dword_99F740->Attach(0, &s_inst, 0x7FFFFFFF);
    s_isQuerying = false;
    return true;
}
