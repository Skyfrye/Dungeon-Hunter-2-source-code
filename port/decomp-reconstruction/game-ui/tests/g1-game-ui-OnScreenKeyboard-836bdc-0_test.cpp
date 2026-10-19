// Test for batch g1-game-ui-OnScreenKeyboard-836bdc-0.
//
// Covers the logic that runs without the EvKeyboard header: ClearString, GetString (the start conditions, the buffer
// state, the initial text and the Attach call), ReleaseKeyboard (the Detach call and s_isOver) and the event-id gate of
// onEvent (its return value). The test-only definitions below stand in for other batches: gAssertLevel (core-platform),
// the LC_API string calls (core-platform), EventManager::Attach and Detach (game-app), and the EventManager instance.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/OnScreenKeyboard.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"

// ----- Test-only definitions -----

int gAssertLevel = 0;

std::size_t LC_API_STRLEN(const char* s) { return std::strlen(s); }

char* LC_API_STRNCPY(char* dest, const char* src, std::size_t n) { return std::strncpy(dest, src, n); }

EventManager::EventManager() {}
EventManager::~EventManager() {}

namespace {

struct AttachCall {
    int eventId;
    IEventReceiver* receiver;
    int priority;
};

struct DetachCall {
    int eventId;
    IEventReceiver* receiver;
};

std::vector<AttachCall> g_attach;
std::vector<DetachCall> g_detach;
EventManager g_manager;

}  // namespace

bool EventManager::Attach(int eventId, IEventReceiver* receiver, int priority) {
    g_attach.push_back(AttachCall{eventId, receiver, priority});
    return true;
}

bool EventManager::Detach(int eventId, IEventReceiver* receiver) {
    g_detach.push_back(DetachCall{eventId, receiver});
    return true;
}

static EventManager* g_test_dword_99F740 = &g_manager;
EventManager*& dword_99F740 = g_test_dword_99F740;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

// ----- Checks -----

namespace {

int g_failures = 0;

#define CHECK(cond)                                                          \
    do {                                                                     \
        if (!(cond)) {                                                       \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                    \
        }                                                                    \
    } while (0)

void ResetState() {
    g_attach.clear();
    g_detach.clear();
    OnScreenKeyboard::s_outBuffer = nullptr;
    OnScreenKeyboard::s_outBufLen = 0;
    OnScreenKeyboard::s_bufIdx = 0;
    OnScreenKeyboard::s_isOver = true;
    OnScreenKeyboard::s_isQuerying = false;
}

void TestClearString() {
    ResetState();
    char buf[8] = "abc";
    OnScreenKeyboard::s_outBuffer = buf;
    OnScreenKeyboard::s_outBufLen = 8;
    OnScreenKeyboard::s_bufIdx = 3;
    OnScreenKeyboard::ClearString();
    CHECK(OnScreenKeyboard::s_bufIdx == 0);
    CHECK(buf[0] == '\0');

    // With no capacity (s_outBufLen == 0) nothing changes.
    char buf2[8] = "xyz";
    OnScreenKeyboard::s_outBuffer = buf2;
    OnScreenKeyboard::s_outBufLen = 0;
    OnScreenKeyboard::s_bufIdx = 2;
    OnScreenKeyboard::ClearString();
    CHECK(OnScreenKeyboard::s_bufIdx == 2);
    CHECK(buf2[0] == 'x');
}

void TestGetStringStartsQuery() {
    ResetState();
    char out[16] = "junk";
    const bool started = OnScreenKeyboard::GetString("Title", out, 16, nullptr);
    CHECK(started);
    CHECK(OnScreenKeyboard::s_outBuffer == out);
    CHECK(OnScreenKeyboard::s_outBufLen == 16);
    CHECK(OnScreenKeyboard::s_bufIdx == 0);
    CHECK(!OnScreenKeyboard::s_isOver);
    CHECK(!OnScreenKeyboard::s_isQuerying);
    CHECK(out[0] == 'j');  // no initial text: the buffer is not written
    CHECK(g_attach.size() == 1);
    if (g_attach.size() == 1) {
        CHECK(g_attach[0].eventId == 0);
        CHECK(g_attach[0].receiver == &OnScreenKeyboard::s_inst);
        CHECK(g_attach[0].priority == 0x7FFFFFFF);
    }
}

void TestGetStringInitialText() {
    ResetState();
    char out[16] = {};
    const bool started = OnScreenKeyboard::GetString("Title", out, 16, "hi");
    CHECK(started);
    CHECK(OnScreenKeyboard::s_bufIdx == 2);
    CHECK(out[0] == 'h' && out[1] == 'i');
    CHECK(OnScreenKeyboard::s_outBufLen == 16);
    CHECK(g_attach.size() == 1);
}

void TestGetStringRefusesWhileOpen() {
    ResetState();
    char out[16] = {};
    OnScreenKeyboard::s_isQuerying = true;
    CHECK(!OnScreenKeyboard::GetString("Title", out, 16, nullptr));
    CHECK(g_attach.empty());

    ResetState();
    OnScreenKeyboard::s_isOver = false;
    CHECK(!OnScreenKeyboard::GetString("Title", out, 16, nullptr));
    CHECK(g_attach.empty());
}

void TestGetStringNullBufferWithoutAssert() {
    // gAssertLevel 0: the null buffer is recorded as it is and the query starts (the original does not stop).
    ResetState();
    gAssertLevel = 0;
    const bool started = OnScreenKeyboard::GetString("Title", nullptr, 4, nullptr);
    CHECK(started);
    CHECK(OnScreenKeyboard::s_outBuffer == nullptr);
    CHECK(OnScreenKeyboard::s_outBufLen == 4);
}

void TestReleaseKeyboard() {
    ResetState();
    OnScreenKeyboard::s_isOver = false;
    OnScreenKeyboard::ReleaseKeyboard();
    CHECK(OnScreenKeyboard::s_isOver);
    CHECK(g_detach.size() == 1);
    if (g_detach.size() == 1) {
        CHECK(g_detach[0].eventId == 0);
        CHECK(g_detach[0].receiver == &OnScreenKeyboard::s_inst);
    }
}

void TestOnEventGate() {
    ResetState();
    EvKeyboard keyboardEvent(0, 65, true, false, false);   // id 0, 'A' pressed: handled
    EvTouchScreenPress otherEvent(1, 2, 3, true);          // id 4: not handled, before any field is read
    // Event id 0 is handled (the original returns 1 on every path for it).
    CHECK(OnScreenKeyboard::s_inst.onEvent(&keyboardEvent, nullptr) == true);
    // Any other id is not handled, before the event fields are read.
    CHECK(OnScreenKeyboard::s_inst.onEvent(&otherEvent, nullptr) == false);
}

}  // namespace

int main() {
    TestClearString();
    TestGetStringStartsQuery();
    TestGetStringInitialText();
    TestGetStringRefusesWhileOpen();
    TestGetStringNullBufferWithoutAssert();
    TestReleaseKeyboard();
    TestOnEventGate();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("OnScreenKeyboard tests passed\n");
    return 0;
}
