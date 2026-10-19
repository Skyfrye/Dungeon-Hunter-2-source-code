// Test for batch g1-game-app-pack1-dbf367-0. Covers the channel defaults and update steps of Keyboard and Mouse, the
// receiver's key mirroring, latches, wheel and IsKeyDown, and LuaManager's FlushBufferedFiles and destructor.
// Definitions owned by other batches or categories (StreamBuffer, Buffer, the application file system and gAssertLevel)
// are test doubles here, so this test links only the batch source. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "core-platform/deps/application.hpp"
#include "dh2/InputDevice.hpp"
#include "dh2/InputManagerEventReceiver.hpp"
#include "dh2/Keyboard.hpp"
#include "dh2/LuaManager.hpp"
#include "dh2/Mouse.hpp"
#include "net-transport/stream_buffer.hpp"

// Test doubles for definitions owned by other batches or categories.
int gAssertLevel = 0;  // core-platform/src/memory.cpp; AddFile reads it only on its assert paths

namespace {
int g_streamBufferDeletes = 0;  // counts the destructor of each StreamBuffer
}  // namespace

IStreamBase* ApplicationOpenStream(const char*) { return nullptr; }
void ApplicationCloseStream(IStreamBase*) {}

// IStreamBase's destructor and vtable are emitted here because StreamBuffer's destructor below reaches them. The two
// non-pure virtuals forward as game-app/src/g1-game-app-IStreamBase-e228fc-0.cpp does.
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

Buffer::~Buffer() {}
StreamBuffer::StreamBuffer(IStreamBase*) {}
StreamBuffer::~StreamBuffer() { ++g_streamBufferDeletes; }
std::uint32_t StreamBuffer::size() const { return 0; }
std::uint32_t StreamBuffer::size(int) const { return 0; }
bool StreamBuffer::canRead() const { return false; }
bool StreamBuffer::canWrite() const { return false; }
std::uint64_t StreamBuffer::peek(void*, std::uint64_t) const { return 0; }
std::uint64_t StreamBuffer::read(void*, std::uint64_t) { return 0; }
std::uint64_t StreamBuffer::write(const void*, std::uint64_t) { return 0; }
void StreamBuffer::seek(std::uint64_t) {}
std::uint64_t StreamBuffer::tell() const { return 0; }
void StreamBuffer::skip(std::uint64_t) {}
void StreamBuffer::seekWrite(std::uint64_t) {}
std::uint64_t StreamBuffer::tellWrite() const { return 0; }

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

glitch::SEvent MakeKey(int key, bool down) {
    glitch::SEvent event{};
    event.EventType = glitch::EET_KEY_INPUT_EVENT;
    event.KeyInput.Key = key;        // +0x0c, key code
    event.KeyInput.PressedDown = down;  // +0x10, PressedDown
    return event;
}

glitch::SEvent MakeMouse(int x, int y, int action) {
    glitch::SEvent event{};
    event.EventType = glitch::EET_MOUSE_INPUT_EVENT;
    event.MouseInput.X = x;
    event.MouseInput.Y = y;
    event.MouseInput.Event = action;
    return event;
}

glitch::SEvent MakeWheel(float delta) {
    glitch::SEvent event = MakeMouse(0, 0, glitch::EMIE_MOUSE_WHEEL);
    event.MouseInput.Wheel = delta;  // +0x10 holds the float
    return event;
}

void TestKeyboardDefaults() {
    Keyboard keyboard;
    CHECK(keyboard.m_type == InputDevice::TYPE_KEYBOARD);
    for (const Keyboard::Channel& c : keyboard.unk_0c) {
        CHECK(c.value == 0.0f && c.minimum == 0.0f && c.maximum == 1.0f && c.previous == 0.0f);
        CHECK(c.previous_minimum == 0.0f && c.previous_maximum == 1.0f && !c.previous_above_threshold);
    }
}

void TestKeyboardUpdate() {
    Keyboard keyboard;
    Keyboard::Channel& a = keyboard.unk_0c[0];
    a.value = 0.25f;
    a.minimum = 0.125f;
    a.maximum = 0.875f;
    a.previous = 0.0f;
    a.previous_minimum = 0.0f;
    a.previous_maximum = 1.0f;  // threshold (1 + 0 + 1) * 0.5 = 1, and 0 >= 1 is false

    Keyboard::Channel& b = keyboard.unk_0c[96];
    b.value = 0.5f;
    b.minimum = 0.0f;
    b.maximum = 0.5f;
    b.previous = 0.875f;
    b.previous_minimum = 0.0f;
    b.previous_maximum = 0.5f;  // threshold (0.5 + 0 + 1) * 0.5 = 0.75, and 0.875 >= 0.75 is true

    keyboard.UpdateFrame(0.016f);
    CHECK(!a.previous_above_threshold);
    CHECK(a.previous == 0.25f && a.previous_minimum == 0.125f && a.previous_maximum == 0.875f);
    CHECK(a.value == 0.25f && a.minimum == 0.125f && a.maximum == 0.875f);
    CHECK(b.previous_above_threshold);
    CHECK(b.previous == 0.5f && b.previous_minimum == 0.0f && b.previous_maximum == 0.5f);

    // Second step: b's previous is now 0.5, and 0.5 >= 0.75 is false.
    keyboard.UpdateFrame(0.016f);
    CHECK(!b.previous_above_threshold);
}

void TestMouse() {
    Mouse mouse;
    CHECK(mouse.m_type == static_cast<InputDevice::Type>(1));
    for (const Mouse::Channel& c : mouse.unk_0c) {
        CHECK(c.value == 0.0f && c.maximum == 1.0f && c.previous_maximum == 1.0f && !c.previous_above_threshold);
    }
    for (const Mouse::Channel& c : mouse.unk_10c) {
        CHECK(c.value == 0.0f && c.maximum == 1.0f && c.previous_maximum == 1.0f && !c.previous_above_threshold);
    }

    mouse.unk_0c[0].value = 0.5f;
    mouse.unk_10c[7].value = 0.75f;
    mouse.unk_10c[7].maximum = 0.75f;
    mouse.unk_10c[7].previous = 0.9375f;
    mouse.unk_10c[7].previous_minimum = 0.0f;
    mouse.unk_10c[7].previous_maximum = 0.5f;  // threshold (0.5 + 0 + 1) * 0.5 = 0.75, and 0.9375 >= 0.75 is true
    mouse.UpdateFrame(0.016f);
    CHECK(mouse.unk_0c[0].previous == 0.5f);
    CHECK(mouse.unk_0c[0].previous_maximum == 1.0f);
    CHECK(mouse.unk_10c[7].previous == 0.75f);
    CHECK(mouse.unk_10c[7].previous_maximum == 0.75f);
    CHECK(mouse.unk_10c[7].previous_above_threshold);
    CHECK(!mouse.unk_0c[0].previous_above_threshold);
}

void TestReceiverKeys() {
    InputManagerEventReceiver rx{};
    CHECK(!rx.IsKeyDown(65));
    CHECK(!rx.onEvent(MakeKey(65, true)));
    CHECK(rx.IsKeyDown(65));
    CHECK(rx.m_keyDown[65] == 1);
    rx.onEvent(MakeKey(65, false));
    CHECK(!rx.IsKeyDown(65));

    // Shift (16) also sets the left and right shift codes 0xa0 and 0xa1.
    rx.onEvent(MakeKey(16, true));
    CHECK(rx.IsKeyDown(16) && rx.IsKeyDown(0xa0) && rx.IsKeyDown(0xa1));
    CHECK(!rx.IsKeyDown(0xa2));
    rx.onEvent(MakeKey(16, false));
    CHECK(!rx.IsKeyDown(0xa0) && !rx.IsKeyDown(0xa1));

    // Control (17) sets 0xa2 and 0xa3. Alt (18) sets 0xa4 and 0xa5.
    rx.onEvent(MakeKey(17, true));
    CHECK(rx.IsKeyDown(0xa2) && rx.IsKeyDown(0xa3) && !rx.IsKeyDown(0xa4));
    rx.onEvent(MakeKey(18, true));
    CHECK(rx.IsKeyDown(0xa4) && rx.IsKeyDown(0xa5));

    // Key events leave the mouse position and the wheel alone.
    CHECK(rx.m_mouseX == 0 && rx.m_mouseY == 0);
    CHECK(rx.m_wheelDelta == 0.0f);
}

void TestReceiverMouse() {
    InputManagerEventReceiver rx{};
    CHECK(!rx.onEvent(MakeMouse(10, 20, 0)));
    CHECK(rx.m_mouseX == 10 && rx.m_mouseY == 20);
    CHECK(rx.unk_112 == 1);  // action 0 sets the latch
    rx.onEvent(MakeMouse(10, 20, 3));
    CHECK(rx.unk_112 == 0);  // action 3 toggles it
    rx.onEvent(MakeMouse(10, 20, 3));
    CHECK(rx.unk_112 == 1);

    rx.onEvent(MakeMouse(0, 0, 1));  // action 1 sets unk_113
    CHECK(rx.unk_113 == 1);
    rx.onEvent(MakeMouse(0, 0, 4));  // action 4 toggles unk_113
    CHECK(rx.unk_113 == 0);

    rx.onEvent(MakeMouse(0, 0, 2));  // action 2 sets unk_114
    CHECK(rx.unk_114 == 1);
    rx.onEvent(MakeMouse(0, 0, 5));  // action 5 toggles unk_114
    CHECK(rx.unk_114 == 0);

    // Action 6 changes no latch.
    rx.onEvent(MakeMouse(0, 0, 6));
    CHECK(rx.unk_112 == 1 && rx.unk_113 == 0 && rx.unk_114 == 0);

    // Action 7 adds the wheel delta.
    CHECK(rx.m_wheelDelta == 0.0f);
    rx.onEvent(MakeWheel(0.5f));
    rx.onEvent(MakeWheel(0.25f));
    CHECK(rx.m_wheelDelta == 0.75f);
    CHECK(rx.unk_112 == 1 && rx.unk_113 == 0 && rx.unk_114 == 0);
}

void TestLuaManagerFlush() {
    g_streamBufferDeletes = 0;
    {
        LuaManager manager;
        CHECK(manager.m_bufferedFiles.empty());
        manager.m_bufferedFiles["data/scripts/a.luac"] = new StreamBuffer(nullptr);
        manager.m_bufferedFiles["data/scripts/b.luac"] = new StreamBuffer(nullptr);
        manager.m_bufferedFiles["data/scripts/c.luac"] = new StreamBuffer(nullptr);
        manager.FlushBufferedFiles();
        CHECK(g_streamBufferDeletes == 3);
        CHECK(manager.m_bufferedFiles.empty());
        manager.FlushBufferedFiles();  // an empty map deletes nothing
        CHECK(g_streamBufferDeletes == 3);
    }
    CHECK(g_streamBufferDeletes == 3);  // the stack manager's destructor found the map empty
}

void TestLuaManagerDestructor() {
    g_streamBufferDeletes = 0;
    LuaManager* manager = new LuaManager();
    manager->m_bufferedFiles["x.luac"] = new StreamBuffer(nullptr);
    manager->m_bufferedFiles["y.luac"] = new StreamBuffer(nullptr);
    delete manager;  // the virtual deleting destructor runs D1, which flushes the buffers
    CHECK(g_streamBufferDeletes == 2);
}

}  // namespace

int main() {
    TestKeyboardDefaults();
    TestKeyboardUpdate();
    TestMouse();
    TestReceiverKeys();
    TestReceiverMouse();
    TestLuaManagerFlush();
    TestLuaManagerDestructor();
    if (g_failures == 0) {
        std::printf("g1-game-app-pack1-dbf367-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-pack1-dbf367-0 test: %d check(s) failed\n", g_failures);
    return 1;
}
