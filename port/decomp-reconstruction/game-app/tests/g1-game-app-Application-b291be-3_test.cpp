// Test for batch g1-game-app-Application-b291be-3. Covers the logic that runs without the engine: the receiver list
// (RegisterForIrrlichtEvents: a null receiver is ignored, others are appended in order) and the destructor, which
// must release the receiver list and the two strings. Exit status 0 means every check passed.
//
// Link: check_tu.sh --test <this file> g1-game-app-Application-b291be-3.cpp
// PostInit and InitWin32 reference constructors and calls that belong to other classes. This file defines them with
// C linkage under their Itanium names, as no-op stubs, so the batch source links alone. They are never called here.
#include <cstdint>
#include <cstdio>
#include <list>
#include <new>
#include <string>

#include "dh2/Application.hpp"

extern "C" {
// Constructors of the managers that PostInit creates. The test never calls PostInit, so these bodies do not run.
void _ZN10LuaManagerC1Ev(void*) {}
void _ZN11MenuManagerC1Ev(void*) {}
void _ZN12EventManagerC1Ev(void*) {}
void _ZN12StateMachineC1Ev(void*) {}
void _ZN13ObjectManagerC1Ev(void*) {}
void _ZN13PhysicalWorldC1Ev(void*) {}
void _ZN13PlayerManagerC1Ev(void*) {}
void _ZN13StringManagerC1Ev(void*) {}
void _ZN15SavegameManagerC1Ev(void*) {}
// Calls made by PostInit and InitWin32.
void _ZN12StateMachine11SwitchStateEP9StateBaseb(void*, void*, bool) {}
void* _Z9GetOnlinev() { return nullptr; }
int _ZN11COnlineImpl10InitializeEv(void*) { return 0; }
void _ZN11Application4InitEPN6glitch7IDeviceE(void*, void*) {}
// Referenced by the vtable that this batch's destructor emits. The test never dispatches it.
bool _ZN11Application7onEventERKN6glitch6SEventE(void*, const void*) { return false; }
// GSInit::s_inst, whose address PostInit takes. The test never reads it.
alignas(16) unsigned char _ZN6GSInit6s_instE[64];
}  // extern "C"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Application storage. Application has no constructor in this batch, so the members that the functions under test
// use are constructed in place: the receiver list and the two strings the destructor frees.
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

Application* MakeApplication() {
    auto* app = reinterpret_cast<Application*>(g_appStorage);
    new (&app->m_eventReceivers) std::list<glitch::IEventReceiver*>();
    new (&app->m_uncompiledData) std::string();
    new (&app->unk_d4) std::string();
    return app;
}

// Distinct addresses to register. They are only compared, never dereferenced.
int g_receiverA = 0;
int g_receiverB = 0;
int g_receiverC = 0;

glitch::IEventReceiver* AsReceiver(const int* tag) {
    return reinterpret_cast<glitch::IEventReceiver*>(const_cast<int*>(tag));
}

void TestRegisterIgnoresNull(Application* app) {
    app->RegisterForIrrlichtEvents(nullptr);
    Check(app->m_eventReceivers.empty(), "a null receiver is not appended");
}

void TestRegisterAppendsInOrder(Application* app) {
    app->RegisterForIrrlichtEvents(AsReceiver(&g_receiverA));
    app->RegisterForIrrlichtEvents(AsReceiver(&g_receiverB));
    app->RegisterForIrrlichtEvents(AsReceiver(&g_receiverC));
    Check(app->m_eventReceivers.size() == 3, "three receivers are appended");

    auto it = app->m_eventReceivers.begin();
    Check(it != app->m_eventReceivers.end() && *it == AsReceiver(&g_receiverA), "first receiver is A");
    if (it != app->m_eventReceivers.end()) ++it;
    Check(it != app->m_eventReceivers.end() && *it == AsReceiver(&g_receiverB), "second receiver is B");
    if (it != app->m_eventReceivers.end()) ++it;
    Check(it != app->m_eventReceivers.end() && *it == AsReceiver(&g_receiverC), "third receiver is C");
}

// The destructor clears the receiver list and destroys the two strings. Running it on a populated list is the
// observable check: it must not fault, and it is the last use of the object. The call is qualified because the
// destructor is virtual and the storage has no vtable pointer (no constructor ran), so a plain call would dispatch
// through a null vptr.
void TestDestructorReleasesMembers(Application* app) {
    app->Application::~Application();
    Check(true, "destructor runs on a populated receiver list");
}

}  // namespace

int main() {
    Application* app = MakeApplication();
    TestRegisterIgnoresNull(app);
    TestRegisterAppendsInOrder(app);
    TestDestructorReleasesMembers(app);

    if (g_failures == 0) {
        std::printf("g1-game-app-Application-b291be-3_test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-Application-b291be-3_test: %d failure(s)\n", g_failures);
    return 1;
}
