// GSKeyboard: state that opens the on-screen keyboard through QueryString and pops itself when the
// keyboard closes. The entered text lives in the static buffers; GetLastString returns the buffer
// used for the last query ("GLPassword" selects the second buffer).
// Original 32-bit size 0x8: the static GSKeyboard::s_inst is an 8-byte object in the symbol table; the member ends at +0x05.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3859ac, 0x385a18).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/StateBase.hpp"

class StateMachine;

class GSKeyboard : public StateBase {
public:
    GSKeyboard();                                                   // 0x3859ac / 0x385a18 clears both static buffers
    ~GSKeyboard() override;                                         // 0x3858ec, 0x3858f0 (D2/D1), 0x3858f8 (D0)

    // Overrides of StateBase slots, in vtable order. Slots +0x10 .. +0x28 (Pause, Resume, Draw2D,
    // Sleep, WakeUp) are inherited unchanged.
    void Ctor(const StateMachine* machine) override;                // slot 0x08: 0x3858f4 empty
    void Dtor(const StateMachine* machine) override;                // slot 0x0c: 0x385b48 clears m_querying, releases the keyboard
    void Update(StateMachine* machine, double dt) override;         // slot 0x18: 0x385a8c
    void Draw(const StateMachine* machine) override;                // slot 0x1c: 0x385a84 RecurseDraw

    static void ClearString();                                      // 0x385914 (static: MenuEnterName::GotFocus calls it with no object)
    static char* GetLastString();                                   // 0x385b54 (uses only statics)
    static void QueryString(const char* title, unsigned int maxLength,
                            const char* initialText, bool keepBuffer);  // 0x385cf0

    static GSKeyboard s_inst;                                       // GSKeyboard::s_inst, pushed by QueryString
    static char s_strBuffer1[0x64];                                 // default text buffer, 100 bytes
    static char s_strBuffer2[0x64];                                 // "GLPassword" buffer, 100 bytes
    static char* s_strBuffer;                                       // buffer in use for the current query
    static unsigned int s_tmpSize;                                  // maximum length of the current query
    static std::string s_tmpValue;                                  // initial text of the current query
    static std::string s_tmpTitle;                                  // title of the current query

    // StateBase occupies +0x00 .. +0x03 (vptr).
    bool m_querying;                                                // +0x04 set while the keyboard is open; cleared when it closes
};
