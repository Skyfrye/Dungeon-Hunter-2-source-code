// InputManager: abstract owner of the input devices; InputManagerWin32 (operator new(0x2bc0),
// created by GetInstance) is the only implementation. Original size of the base: 0x14.
// Vtable (8 bytes header + 6 slots): slots 0-2 are pure virtual device getters, slot 3 UpdateFrame,
// slots 4/5 the destructors (declared after UpdateFrame in the original).
// The two statics the functions use (s_pInputManagerWin32, s_pEventReceiver) are file-scope globals
// in the original, not class members.
#pragma once

class InputDevice;
class Gamepad;
namespace glitch { class IEventReceiver; }

class InputManager {
public:
    InputManager(int numMouses, int numKeyboards, int numGamepads);  // 0x34d6bc / 0x34d6fc
    virtual InputDevice* GetMouse(int index) = 0;      // +0x00 pure
    virtual InputDevice* GetKeyboard(int index) = 0;   // +0x04 pure
    virtual Gamepad* GetGamepad(int index) = 0;        // +0x08 pure (Gamepad holds the "connected" byte at +0x758)
    virtual void UpdateFrame(float dt);                // +0x0c 0x34d820 updates every mouse, keyboard, gamepad
    virtual ~InputManager();                           // +0x10 0x34d740 (D1), 0x34d73c (D2), +0x14 0x34d910 (D0)

    int GetNumMouses() const;                          // 0x34d744
    int GetNumKeyboards() const;                       // 0x34d74c
    int GetNumGamepads() const;                        // 0x34d754
    int GetConnectedGamepadCount();                    // 0x34d75c
    Gamepad* GetFirstConnectedGamepad();               // 0x34d7b4 null when none is connected

    static void Destroy();                             // 0x34dab4 deletes the event receiver and the manager singleton
    static glitch::IEventReceiver* GetReceiver();      // 0x34db1c lazily creates the 0x118-byte key-state receiver
    static InputManager* GetInstance();                // 0x34dda4 lazily creates the InputManagerWin32

public:
    // +0x00 vptr
    int m_numMouses;                                   // +0x04
    int m_numKeyboards;                                // +0x08
    int m_numGamepads;                                 // +0x0c
    bool unk_10;                                       // +0x10 1 (constructor)
};
