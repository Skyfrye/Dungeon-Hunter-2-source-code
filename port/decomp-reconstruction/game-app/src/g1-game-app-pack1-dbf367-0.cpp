// Batch g1-game-app-pack1-dbf367-0 (InputDevice, InputManagerEventReceiver, Keyboard, LuaManager, Mouse).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
//
// Input channels: Keyboard and Mouse keep 32-byte channels (dh2/Keyboard.hpp, dh2/Mouse.hpp). UpdateFrame steps every
// channel the same way (StepChannel), and the constructors reset them (ResetChannel).
//
// glitch::SEvent: the canonical record (glitch-core-io/os/event_receiver.hpp). A key event keeps its key code at +0x0c
// (KeyInput.Key) and PressedDown in the byte at +0x10. A wheel delta is a float at +0x10 (MouseInput.Wheel). These are
// the original's a2[3], byte a2+16 and float a2+4.
//
// LuaManager: the buffered files are std::map<std::string, StreamBuffer*> (dh2/LuaManager.hpp). This translation unit
// includes net-transport/stream_buffer.hpp, whose IStreamBase is the one ApplicationOpenStream returns, and does not
// include dh2/IStreamBase.hpp. The two IStreamBase declarations cannot share a translation unit (see game-app ledger,
// ScriptManager::LoadScriptFileNames).
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <set>
#include <string>

#include "dh2/InputDevice.hpp"
#include "dh2/InputManagerEventReceiver.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/Mouse.hpp"
#include "dh2/sfc/script/lua/Error.hpp"
#include "dh2/sfc/script/lua/Instance.hpp"
#include "core-platform/deps/application.hpp"
#include "net-transport/stream_buffer.hpp"

// Global assert level. core-platform/memory.hpp declares it too (defined in core-platform/src/memory.cpp).
extern int gAssertLevel;

namespace {

// Resets one channel as the Keyboard and Mouse constructors do: value and minimum 0, maximum 1, previous 0, the word at
// +0x10 0, previous minimum 0, previous maximum 1 and the threshold flag false. The three pad bytes after the flag are
// not written, as in the original.
template <typename ChannelT>
void ResetChannel(ChannelT& channel) {
    channel.value = 0.0f;                       // +0x00
    channel.minimum = 0.0f;                     // +0x04
    channel.maximum = 1.0f;                     // +0x08
    channel.previous = 0.0f;                    // +0x0c
    channel.unk_10 = 0;                         // +0x10
    channel.previous_minimum = 0.0f;            // +0x14
    channel.previous_maximum = 1.0f;            // +0x18
    channel.previous_above_threshold = false;   // +0x1c
}

// One UpdateFrame step for a channel. The threshold flag uses the previous value and range from before this step:
// previous >= (previous_maximum + previous_minimum + 1) * 0.5. The original does the same single-precision arithmetic.
// Then the previous fields take the current value and range.
template <typename ChannelT>
void StepChannel(ChannelT& channel) {
    channel.previous_above_threshold =
        channel.previous >= ((channel.previous_maximum + channel.previous_minimum) + 1.0f) * 0.5f;
    channel.previous = channel.value;
    channel.previous_minimum = channel.minimum;
    channel.previous_maximum = channel.maximum;
}

// Modifier and button latch of onEvent (unk_112, unk_113, unk_114). The set action ORs bit 0 into the latch. Then the
// byte becomes (latch != (action == toggleAction)), so the set action leaves the latch at 1 and the toggle action flips
// it. The result is 0 or 1.
std::uint8_t UpdateLatch(std::uint8_t latch, int action, int setAction, int toggleAction) {
    if (action == setAction) {
        latch = static_cast<std::uint8_t>(latch | 1u);
    }
    return static_cast<std::uint8_t>(latch != (action == toggleAction) ? 1 : 0);
}

}  // namespace

// 0x34ca64 InputDevice::InputDevice(InputDevice::Type) (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the C1 at 0x34ca94.

// 0x34ca94 InputDevice::InputDevice(InputDevice::Type) (C1, complete-object constructor)
// Stores the device type at +0x04 and clears the word at +0x08. The vptr at +0x00 is set by the compiler.
InputDevice::InputDevice(Type type) : m_type(type), unk_08(0) {}

// 0x34d92c InputManagerEventReceiver::onEvent(glitch::SEvent const&)
// Key event (type 2): stores PressedDown at m_keyDown[key]. Shift (16), Control (17) and Alt (18) also store it at the
// left and right codes 0xa0/0xa1, 0xa2/0xa3 and 0xa4/0xa5. Mouse event (type 1): stores the position. The action
// updates the latches unk_112 (actions 0 and 3), unk_113 (1 and 4) and unk_114 (2 and 5). Action 7 adds the wheel
// delta (float at +0x10) to m_wheelDelta. Every event returns false. Key codes are expected below 0x100, the size of
// m_keyDown; the original does not check this either.
bool InputManagerEventReceiver::onEvent(const glitch::SEvent& event) {
    if (event.EventType == glitch::EET_KEY_INPUT_EVENT) {
        const int key = event.KeyInput.Key;                                              // +0x0c, key code
        const auto pressed = static_cast<std::uint8_t>(event.KeyInput.PressedDown);      // +0x10, PressedDown
        m_keyDown[key] = pressed;
        if (key == 16) {
            m_keyDown[0xa0] = pressed;
            m_keyDown[0xa1] = pressed;
        } else if (key == 17) {
            m_keyDown[0xa2] = pressed;
            m_keyDown[0xa3] = pressed;
        } else if (key == 18) {
            m_keyDown[0xa4] = pressed;
            m_keyDown[0xa5] = pressed;
        }
    }
    if (event.EventType != glitch::EET_MOUSE_INPUT_EVENT) {
        return false;
    }

    const int action = event.MouseInput.Event;  // +0x14
    m_mouseX = event.MouseInput.X;              // +0x08 read into +0x104
    m_mouseY = event.MouseInput.Y;              // +0x0c read into +0x108
    unk_112 = UpdateLatch(unk_112, action, 0, 3);
    unk_113 = UpdateLatch(unk_113, action, 1, 4);
    unk_114 = UpdateLatch(unk_114, action, 2, 5);
    if (action != glitch::EMIE_MOUSE_WHEEL) {
        return false;
    }
    m_wheelDelta += event.MouseInput.Wheel;  // +0x10 as a float
    return false;
}

// 0x34da90 InputManagerEventReceiver::IsKeyDown(glitch::EKEY_CODE) const
// Returns the key's state byte. The original returns the byte as an int. The state bytes are only written as 0 or 1
// (PressedDown), so the bool result has the same value.
bool InputManagerEventReceiver::IsKeyDown(int keyCode) const {
    return m_keyDown[keyCode] != 0;
}

// 0x34dab0 InputManagerEventReceiver::~InputManagerEventReceiver() (D1, complete-object destructor)
// Empty in the original (asm: BX LR). The compiler resets the vptr to glitch::IEventReceiver, and nothing is freed.
InputManagerEventReceiver::~InputManagerEventReceiver() {}

// 0x34dc5c InputManagerEventReceiver::~InputManagerEventReceiver() (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original sets the vptr to the base vtable (off_95C300) and frees
// the object with CustomFree. The compiler emits this from the virtual destructor above.

// 0x34c91c Keyboard::UpdateFrame(float)
// Steps all 97 channels in index order. dt is not used. The pseudocode's return value is the last 64-bit read of the
// loop; the function is void, as its declaration says.
void Keyboard::UpdateFrame(float /*dt*/) {
    for (Channel& channel : unk_0c) {
        StepChannel(channel);
    }
}

// 0x34cc1c Keyboard::Keyboard() (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the C1 at 0x34cc94.

// 0x34cc94 Keyboard::Keyboard() (C1, complete-object constructor)
// InputDevice(this, 1), which is TYPE_KEYBOARD. Then the 97 channels are reset in index order.
Keyboard::Keyboard() : InputDevice(InputDevice::TYPE_KEYBOARD) {
    for (Channel& channel : unk_0c) {
        ResetChannel(channel);
    }
}

// 0x379e68 LuaManager::LuaManager() (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the C1 at 0x379eb0.

// 0x379eb0 LuaManager::LuaManager() (C1, complete-object constructor)
// The original builds an empty STLport rb-tree in place (header colour and root null, leftmost and rightmost the header,
// count 0) and sets the vptr. std::map's default constructor gives the same empty state. pad_18 is not written, as in
// the original.
LuaManager::LuaManager() {}

// 0x379fe8 LuaManager::FlushBufferedFiles(void)
// The original walks the rb-tree in key order (its in-order increment is inlined) and deletes each StreamBuffer through
// its virtual destructor. Then, if the map was not empty, it erases the nodes and resets the header. A range-for over
// the map followed by clear() does the same.
void LuaManager::FlushBufferedFiles() {
    for (auto& entry : m_bufferedFiles) {
        delete entry.second;
    }
    m_bufferedFiles.clear();
}

// 0x37a0ac LuaManager::~LuaManager() (D1, complete-object destructor)
// Same body as the D2 at 0x37a12c: the vptr is reset, FlushBufferedFiles runs, and the header is reset if the map was not
// empty. After FlushBufferedFiles the map is empty, so that reset does nothing. The compiler destroys the members after
// this body.
LuaManager::~LuaManager() {
    FlushBufferedFiles();
}

// 0x37a110 LuaManager::~LuaManager() (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original calls the D1 at 0x37a0ac and then CustomFree(this)
// (asm: BL D1, BL CustomFree). The compiler emits this from the virtual destructor above.

// 0x37a12c LuaManager::~LuaManager() (D2, base-object destructor)
// Skipped: compiler-generated base-object destructor. Same body as the D1 at 0x37a0ac, which covers both.

// 0x37b23c LuaManager::AddFile(LuaScript*, char const*)
// A null script fails ASSERT(script) (LuaManager.cpp:35; abort at level 2, the original stores through null) and the call goes on to the
// script's members, which faults in the original; here it returns false. An empty or null file name returns false. The buffered name is the
// script's directory plus the file name, with ".lua" becoming ".luac" (a name with ".lua" gets "c" appended unless ".luac" follows; a name
// without ".lua" gets ".luac"). A name already in the script's loaded set (+0x80) returns true without loading. Otherwise the file's bytes are
// buffered in m_bufferedFiles (opened through the application file system, copied into a StreamBuffer and closed; an existing buffer is rewound),
// a file that does not open returns false, a null buffer fails ASSERT(sbuffer) (LuaManager.cpp:97), the buffer is loaded and run on the script's
// Lua instance (+0x04, Instance::loadFile(StreamBuffer&)), a load error returns false, and on success the name joins the loaded set and
// true is returned.
bool LuaManager::AddFile(LuaScript* script, const char* file) {
    if (script == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "script",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ScriptManager\\LuaManager.cpp", 35);
        }
        return false;
    }
    if (file == nullptr || *file == '\0') {
        return false;
    }

    // Buffered name: the script's directory, then the file name. A name with ".lua" gets "c" appended unless ".luac"
    // follows it. A name without ".lua" gets ".luac" appended.
    std::string path = script->m_scriptDirectory + file;
    if (const char* lua = std::strstr(file, ".lua"); lua != nullptr) {
        if (std::strncmp(lua, ".luac", 5) != 0) {
            path += "c";
        }
    } else {
        path += ".luac";
    }

    if (script->unk_80.find(path) != script->unk_80.end()) {
        return true;  // already loaded by this script: the original's result is 1 with no load
    }

    StreamBuffer* buffer = nullptr;
    const auto found = m_bufferedFiles.find(path);
    if (found == m_bufferedFiles.end()) {
        IStreamBase* stream = ApplicationOpenStream(path.c_str());
        if (stream == nullptr) {
            return false;
        }
        buffer = new StreamBuffer(stream);  // copies the stream's bytes
        m_bufferedFiles[path] = buffer;
        // The original passes the address of the stream variable to the close slot (IStreamBase*&). The declaration in
        // application.hpp takes the pointer, which closes the same stream.
        ApplicationCloseStream(stream);
    } else {
        buffer = found->second;
        buffer->seek(0);  // asm: the seek slot (+0x20) with the 64-bit argument 0 in r2:r3
    }
    if (buffer == nullptr) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "sbuffer",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ScriptManager\\LuaManager.cpp", 97);
        }
        return false;
    }

    sfc::script::lua::Error error = script->m_instance.loadFile(*buffer);
    if (error.m_status != 0) {
        return false;
    }
    script->unk_80.insert(path);
    return true;
}

// 0x34c98c Mouse::UpdateFrame(float)
// Steps the two groups of eight channels, at +0x0c and +0x10c. dt is not used.
void Mouse::UpdateFrame(float /*dt*/) {
    for (Channel& channel : unk_0c) {
        StepChannel(channel);
    }
    for (Channel& channel : unk_10c) {
        StepChannel(channel);
    }
}

// 0x34cac4 Mouse::Mouse() (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the C1 at 0x34cb70.

// 0x34cb70 Mouse::Mouse() (C1, complete-object constructor)
// InputDevice(this, 1). The original passes 1 here, as the Keyboard constructor does, and not the value 0 that
// InputDevice.hpp gives TYPE_MOUSE (open question in Mouse.hpp). The value is kept as it is in the binary. Then the
// sixteen channels are reset: the first group of eight, then the second.
Mouse::Mouse() : InputDevice(static_cast<InputDevice::Type>(1)) {
    for (Channel& channel : unk_0c) {
        ResetChannel(channel);
    }
    for (Channel& channel : unk_10c) {
        ResetChannel(channel);
    }
}
