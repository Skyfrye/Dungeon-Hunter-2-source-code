// Batch g1-game-app-InputManager-dd3002-0 (InputManager, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Layout (dh2/InputManager.hpp): vptr +0x00, m_numMouses +0x04, m_numKeyboards +0x08, m_numGamepads +0x0c,
// unk_10 +0x10. The vtable slots are GetMouse +0x00, GetKeyboard +0x04, GetGamepad +0x08, UpdateFrame +0x0c,
// D1 +0x10 and D0 +0x14; the bodies call those through the C++ virtuals.
// The two statics of the original translation unit (_ZL16s_pEventReceiver and _ZL20s_pInputManagerWin32,
// both STB_LOCAL in .bss) are defined in the anonymous namespace below.
#include "dh2/InputManager.hpp"

#include <cstdio>
#include <cstdlib>
#include <new>

#include "dh2/Gamepad.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/InputManagerEventReceiver.hpp"
#include "dh2/InputManagerWin32.hpp"

// Global assert level. core-platform/memory.hpp declares it too (defined in core-platform/src/memory.cpp).
extern int gAssertLevel;

namespace {
// The key-state receiver of GetReceiver() and the manager of GetInstance(). Destroy() releases both.
glitch::IEventReceiver* s_pEventReceiver = nullptr;
// InputManagerWin32 in the original. Held as its InputManager base: the base is at offset 0 and the
// destructor is virtual, so Destroy() reaches the deleting destructor through the same vtable slot (+0x14).
InputManager* s_pInputManagerWin32 = nullptr;
}  // namespace

// 0x34d6bc InputManager::InputManager(int, int, int) (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the same as the C1 at 0x34d6fc.

// 0x34d6fc InputManager::InputManager(int, int, int) (C1, complete-object constructor)
// Sets the three device counts and the byte at +0x10 to 1. The vptr is set by the compiler.
InputManager::InputManager(int numMouses, int numKeyboards, int numGamepads)
    : m_numMouses(numMouses), m_numKeyboards(numKeyboards), m_numGamepads(numGamepads), unk_10(true) {}

// 0x34d740 InputManager::~InputManager() (D1, complete-object destructor)
// Empty in the original. The base owns no resources; the compiler resets the vptr.
InputManager::~InputManager() {}

// 0x34d73c InputManager::~InputManager() (D2, base-object destructor)
// Skipped: compiler-generated base-object destructor, the same empty body as the D1 at 0x34d740.

// 0x34d744 InputManager::GetNumMouses() const
int InputManager::GetNumMouses() const { return m_numMouses; }

// 0x34d74c InputManager::GetNumKeyboards() const
int InputManager::GetNumKeyboards() const { return m_numKeyboards; }

// 0x34d754 InputManager::GetNumGamepads() const
int InputManager::GetNumGamepads() const { return m_numGamepads; }

// 0x34d75c InputManager::GetConnectedGamepadCount()
// Counts the gamepads whose connected flag (Gamepad +0x758, read as *(v4 + 1880) in the original) is set. The
// original skips the loop when there are no gamepads and re-reads m_numGamepads on every pass; the for-loop is the
// same. GetGamepad is not null-checked, as in the original.
int InputManager::GetConnectedGamepadCount() {
    int count = 0;
    for (int i = 0; i < m_numGamepads; ++i) {
        if (GetGamepad(i)->m_connected) {
            ++count;
        }
    }
    return count;
}

// 0x34d7b4 InputManager::GetFirstConnectedGamepad()
// Returns the first gamepad whose connected flag is set, or null when none is. The original calls GetGamepad(i) a
// second time to return the pad it found; the getter only indexes the pad array, so one call per slot is kept.
Gamepad* InputManager::GetFirstConnectedGamepad() {
    for (int i = 0; i < m_numGamepads; ++i) {
        Gamepad* pad = GetGamepad(i);
        if (pad->m_connected) {
            return pad;
        }
    }
    return nullptr;
}

// 0x34d820 InputManager::UpdateFrame(float)
// Updates every mouse, then every keyboard, then every gamepad, each in index order. The original's
// return value is a loop-register artifact of its 64-bit pair; the function is void, as its declaration says.
void InputManager::UpdateFrame(float dt) {
    for (int i = 0; i < GetNumMouses(); ++i) {
        GetMouse(i)->UpdateFrame(dt);
    }
    for (int i = 0; i < GetNumKeyboards(); ++i) {
        GetKeyboard(i)->UpdateFrame(dt);
    }
    for (int i = 0; i < GetNumGamepads(); ++i) {
        GetGamepad(i)->UpdateFrame(dt);
    }
}

// 0x34d910 InputManager::~InputManager() (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original calls D1 (0x34d740) and then CustomFree(this)
// (asm: BL D1, BL CustomFree). The compiler emits it from the virtual destructor.

// 0x34dab4 InputManager::Destroy()
// Deletes the key-state receiver first, then the manager, each through its virtual deleting destructor
// (IEventReceiver vtable +0x04 and InputManager vtable +0x14 in the original). Both statics are cleared.
void InputManager::Destroy() {
    if (s_pEventReceiver != nullptr) {
        delete s_pEventReceiver;
        s_pEventReceiver = nullptr;
    }
    if (s_pInputManagerWin32 != nullptr) {
        delete s_pInputManagerWin32;
        s_pInputManagerWin32 = nullptr;
    }
}

// 0x34db1c InputManager::GetReceiver()
// Creates the 0x118-byte InputManagerEventReceiver on the first call and returns it afterwards. The original
// allocates with operator new(0x118, MemoryHintState 0) and runs the constructor inline: vptr, then the key state
// and the mouse and button latches are cleared. Value-initialization gives the same state. It also clears
// keyDown[0xff] (+0x103) and the padding bytes, which the original leaves unset (asm: the clearing loop stops at
// +0x102).
glitch::IEventReceiver* InputManager::GetReceiver() {
    if (s_pEventReceiver == nullptr) {
        s_pEventReceiver = new InputManagerEventReceiver();
    }
    return s_pEventReceiver;
}

// 0x34dda4 InputManager::GetInstance()
// Creates the InputManagerWin32 on the first call and returns the cached manager afterwards. The original calls
// operator new(0x2bc0, MemoryHintState 0), then the InputManagerWin32 constructor with no null check in between (asm:
// BL operator new, BL InputManagerWin32::C1Ev), stores the pointer, and asserts when it is null. The memory hint is
// not modelled (the build allocates through plain new). Plain C++ new throws instead of returning null, so the
// assert branch is only reached through a nothrow allocator; it is kept for the shape of the original. At
// gAssertLevel 2 the original stores through the null pointer to crash, reproduced with std::abort (as in
// DebugSwitches). At gAssertLevel 1 it prints ASSERT(s_pInputManagerWin32) FAILED for InputManagerWin32, line 654.
InputManager* InputManager::GetInstance() {
    if (s_pInputManagerWin32 == nullptr) {
        InputManagerWin32* manager = new InputManagerWin32();
        s_pInputManagerWin32 = manager;
        if (manager == nullptr) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "s_pInputManagerWin32",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\InputManager\\win32\\inputManagerWin32.cpp",
                             654);
            }
        }
    }
    return s_pInputManagerWin32;
}
