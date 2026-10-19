// Batch g1-game-app-GSKeyboard-b78115-0 (GSKeyboard, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The C1/C2 constructor pair and the D1/D2 destructor pair have identical bodies, so each pair has one
// definition here. The scalar deleting destructor (D0) is compiler-generated and is not written.
#include "dh2/GSKeyboard.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/OnScreenKeyboard.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Static storage: the query state. The two text buffers, the title and initial text of the current query (std::string
// here; the original keeps each string's start and finish pointers inline) and the maximum length.
GSKeyboard GSKeyboard::s_inst;
char GSKeyboard::s_strBuffer1[0x64];
char GSKeyboard::s_strBuffer2[0x64];
char* GSKeyboard::s_strBuffer = nullptr;
unsigned int GSKeyboard::s_tmpSize = 0;
std::string GSKeyboard::s_tmpValue;
std::string GSKeyboard::s_tmpTitle;

// 0x3858ec GSKeyboard::~GSKeyboard()  (D2 variant)
// 0x3858f0 GSKeyboard::~GSKeyboard()  (D1 variant, same body)
// Both are a bare return (asm: BX LR). The base StateBase::~StateBase is also a bare return, so the base destructor
// call that the compiler inserts changes nothing.
GSKeyboard::~GSKeyboard() {}

// 0x3858f4 GSKeyboard::Ctor(StateMachine const*)
// Asm: BX LR. The state has nothing to set up when it is pushed.
void GSKeyboard::Ctor(const StateMachine* /*machine*/) {}

// 0x3858f8 GSKeyboard::~GSKeyboard()  (D0 variant, deleting destructor) is compiler-generated and is not written.

// 0x385914 GSKeyboard::ClearString()
// Empties the keyboard's text: both static buffers and the title and initial-text strings. The original clears each
// std::string inline (it writes NUL at the start and sets the finish to the start, only when the string is not already
// empty). Host std::string::clear() does the same. The pseudocode's return value (the memset result left in r0) is a
// register leftover and is not part of the function.
void GSKeyboard::ClearString() {
    OnScreenKeyboard::ClearString();
    std::memset(s_strBuffer1, 0, 0x64);
    std::memset(s_strBuffer2, 0, 0x64);
    s_tmpTitle.clear();
    s_tmpValue.clear();
}

// 0x3859ac GSKeyboard::GSKeyboard()  (C1 variant)
// 0x385a18 GSKeyboard::GSKeyboard()  (C2 variant, same body)
// The compiler writes the vptr (StateBase has no constructor body). Clears m_querying (+0x04) and both buffers.
GSKeyboard::GSKeyboard() : m_querying(false) {
    std::memset(s_strBuffer1, 0, 0x64);
    std::memset(s_strBuffer2, 0, 0x64);
}

// 0x385a84 GSKeyboard::Draw(StateMachine const*)
// Asm: MOV R0,R1; B StateMachine::RecurseDraw. The state draws the states below it through the machine it runs on.
void GSKeyboard::Draw(const StateMachine* machine) {
    machine->RecurseDraw();
}

// 0x385a8c GSKeyboard::Update(StateMachine*, double)
// Asm: m_querying (+0x04) selects the branch. Clear: the first update opens the keyboard. Set: the keyboard is being
// typed into and the state waits for s_isOver. The pseudocode's return values are dropped because the slot is void.
void GSKeyboard::Update(StateMachine* machine, double /*dt*/) {
    if (m_querying) {
        // s_isOver is read before the menus are updated (asm keeps it in r6 across the GetInstance call).
        const bool isOver = OnScreenKeyboard::s_isOver;
        if (!isOver) {
            // Keyboard still open: the menus keep running. The asm passes the bool it just read (false).
            MenuManager::GetInstance()->Update(isOver);
            return;
        }
        // Keyboard closed: clear the flag and pop this state (PopState with a null state pops the top).
        m_querying = false;
        machine->PopState(nullptr);
        return;
    }

    m_querying = true;
    const bool started = OnScreenKeyboard::GetString(s_tmpTitle.c_str(), s_strBuffer, s_tmpSize + 1, s_tmpValue.c_str());
    if (!started) {
        // The keyboard could not be opened: clear the flag and pop straight away.
        m_querying = false;
        machine->PopState(nullptr);
    }
}

// 0x385b48 GSKeyboard::Dtor(StateMachine const*)
// Asm: clears m_querying (+0x04), then tail-calls OnScreenKeyboard::ReleaseKeyboard. That is static, so the r0 this
// value the asm leaves in place is ignored.
void GSKeyboard::Dtor(const StateMachine* /*machine*/) {
    m_querying = false;
    OnScreenKeyboard::ReleaseKeyboard();
}

// 0x385b54 GSKeyboard::GetLastString()
// Returns the buffer of the last query. The title (the start and finish of s_tmpTitle in the original) is compared with
// "GLPassword": the second buffer when it matches, the first otherwise. The pseudocode's this argument is unused.
char* GSKeyboard::GetLastString() {
    if (s_tmpTitle.size() == 10 && std::memcmp(s_tmpTitle.data(), "GLPassword", 10) == 0) {
        return s_strBuffer2;
    }
    return s_strBuffer1;
}

// 0x385cf0 GSKeyboard::QueryString(char const*, unsigned int, char const*, bool)
// Selects the buffer for the title, resets it unless keepBuffer is set, clamps the maximum length to 0x64 and stores the
// title, the current text and the length in the statics. Then pushes &s_inst on the application's state machine
// (Application::m_stateMachine at +0x18, the asm's dword_99F744). The pseudocode's fifth argument is a stack register
// leftover that the body never reads, so it is not part of the signature.
void GSKeyboard::QueryString(const char* title, unsigned int maxLength, const char* initialText, bool keepBuffer) {
    if (std::strcmp(title, "GLPassword") != 0) {
        s_strBuffer = s_strBuffer1;
    } else {
        s_strBuffer = s_strBuffer2;
    }

    // The original asserts IsOpened() == false (byte_9A24D4 is s_inst.m_querying). Level 2 forces a crash: the original
    // writes to address 0 there, and std::abort does the same job (the same choice as core-platform's GCSingleton).
    if (s_inst.m_querying) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "IsOpened() == false",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\States\\GSKeyboard.cpp", 39);
        }
    }

    if (!keepBuffer) {
        std::memset(s_strBuffer, 0, 0x64);
        if (initialText != nullptr) {
            // Unbounded copy, as in the original. Callers pass short initial text.
            std::strcpy(s_strBuffer, initialText);
        }
    }

    if (maxLength >= 0x64) {
        maxLength = 0x64;
    }

    const char* value = s_strBuffer;
    s_tmpValue.assign(value, value + std::strlen(value));
    s_tmpTitle.assign(title, title + std::strlen(title));
    s_tmpSize = maxLength;

    ApplicationGetInstance().m_stateMachine->PushState(&s_inst, false);
}
