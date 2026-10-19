// Checks the bodies of batch g1-game-ui-pack1-48ce29-0 that run without the engine: the AnchorForward constructor, Reset and the
// disabled Update; the Dragable constructor (the dead zone, the zone copy, the identity matrix and the debug switch read); the
// Dragable destructor; SendEvent's forwarding to DragAndDrop::SendEvent; and the reachable part of ResetPosition.
// The Dragable constructor and ResetPosition do need a gameswf character, and they get one: a real gameswf::character built by
// its own constructor with a vtable of test doubles (FakeCharacter below), so the get_bound and is calls and the direct
// m_local_matrix / m_depth reads behave. AnchorForward::Update with the object enabled and the OnEvent drag path are still not
// run here: they need a live GameObject, Character or gameswf character.
//
// The engine is not linked. This file defines the link stubs for what the batch references: the AnchorBase functions, the object
// handle, the Character state machine queries, GameObject::GetLookAtVec, Point3D's angle and normalize, the Application accessor,
// the debug switches, GameSWFUtils::GetAbsoluteBoundingRect, RenderFX::RegisterDisplayCallback and DragAndDrop::SendEvent. The stubs
// that a test path reaches count or record their calls, or return fixed values. The others abort, and no test path reaches them.
#include <array>
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>
#include <string>

#include "dh2/AnchorForward.hpp"
#include "dh2/Application.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DragAndDrop.hpp"
#include "dh2/Dragable.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "gameswf/gameswf_character.h"

// Globals read by the batch.
int gAssertLevel = 0;
int Width_Screen = 800;
int Height_Screen = 600;

namespace {

int g_failures = 0;

int g_baseCtorCalls = 0;
int g_baseResetCalls = 0;
int g_registerCalls = 0;
int g_sendEventCalls = 0;
int g_lastSendEvent = 0;
MenuFX* g_lastSendMenu = nullptr;
gameswf::character* g_lastSendCharacter = nullptr;
int g_debugLoadCalls = 0;
int g_zoneQueries = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool NearlyEqual(float a, float b) {
    return std::fabs(a - b) < 1e-4f;
}

// The dummy gameswf::character the Dragable bodies are built around. It is a real character built by its own
// constructor, so every member offset is the host's: the library's Dragable constructor reads the local matrix
// pointer and m_depth directly and calls get_bound through the vtable, and only the host layout makes those reads
// land on the right members. The vtable word is then pointed at a table of test doubles, because the real
// character::get_bound reads the movie definition and the real is() reads the class list, neither of which this test
// builds. The object is never destroyed: no destructor slot is installed.
alignas(gameswf::character) unsigned char g_characterStorage[sizeof(gameswf::character)];
void* g_characterVtable[96] = {};
gameswf::character* g_character = nullptr;

// get_bound double: the assertions below expect the bounds rectangle to stay zero ("the bounds query is not declared").
void FakeGetBound(gameswf::character* self, gameswf::rect* bound) {
    (void)self;
    *bound = gameswf::rect();
}

// is() double: nothing this test builds is a sprite.
bool FakeIs(const gameswf::character* self, int classId) {
    (void)self;
    (void)classId;
    return false;
}

// The vtable slot of a virtual member function: under the Itanium C++ ABI the first word of the pointer is the
// vtable byte offset plus one.
template <typename Fn>
std::size_t VtableSlotOf(Fn fn) {
    struct Raw {
        std::ptrdiff_t ptr;
        std::ptrdiff_t adj;
    };
    static_assert(sizeof(Fn) == sizeof(Raw), "member-function pointer is not two words");
    Raw raw;
    std::memcpy(&raw, &fn, sizeof raw);
    return static_cast<std::size_t>(raw.ptr - 1) / sizeof(void*);
}

void InstallFakeCharacter() {
    if (g_character != nullptr) {
        return;
    }
    g_character = new (g_characterStorage) gameswf::character(nullptr, nullptr, 1, 0);
    using GetBoundFn = void (gameswf::character::*)(gameswf::rect*);
    using IsFn = bool (gameswf::character::*)(int) const;
    const GetBoundFn getBound = &gameswf::character::get_bound;
    const IsFn isFn = &gameswf::character::is;
    g_characterVtable[VtableSlotOf(getBound)] = reinterpret_cast<void*>(&FakeGetBound);
    g_characterVtable[VtableSlotOf(isFn)] = reinterpret_cast<void*>(&FakeIs);
    *reinterpret_cast<void***>(g_character) = g_characterVtable;
}

gameswf::character* FakeCharacter() {
    InstallFakeCharacter();
    return g_character;
}

MenuFX* FakeMenu() {
    static char storage[16];
    return reinterpret_cast<MenuFX*>(storage);
}

}  // namespace

// Link stubs for the functions this batch calls but does not define.
AnchorBase::AnchorBase(GameObject* go, AnchorType type) : m_type(type), m_go(go), m_enabled(true) {
    ++g_baseCtorCalls;
}
AnchorBase::~AnchorBase() {}
void AnchorBase::Reset() { ++g_baseResetCalls; }
void AnchorBase::Update() {}  // the AnchorBase vtable, emitted with the stubs above, refers to it

ObjectHandle ObjectBase::GetHandle() { std::abort(); }
ObjectHandle::operator Character*() { std::abort(); }

bool CharStateMachine::SM_IsMoving(bool) const { std::abort(); }
bool CharStateMachine::SM_IsAttacking() const { std::abort(); }
void GameObject::GetLookAtVec(Point3D<float>&) const { std::abort(); }

template <>
float Point3D<float>::angle(const Point3D<float>&) const { std::abort(); }
template <>
Point3D<float>& Point3D<float>::normalize() { std::abort(); }

Application& ApplicationGetInstance() { std::abort(); }
int Application::GetDt() { std::abort(); }

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() { ++g_debugLoadCalls; }
bool DebugSwitches::GetSwitch(const std::string&) { return false; }

// Returns a fixed zone rectangle (xmin, xmax, ymin, ymax) and counts the query.
std::array<float, 4> GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character*) {
    ++g_zoneQueries;
    return {1.0f, 2.0f, 3.0f, 4.0f};
}

int RenderFX::RegisterDisplayCallback(gameswf::character*, void (*)(gameswf::render_state&, void*), void*) {
    ++g_registerCalls;
    return 0;  // the header returns int (link-1)
}

int DragAndDrop::SendEvent(int event, MenuFX* menu, gameswf::character* character) {
    ++g_sendEventCalls;
    g_lastSendEvent = event;
    g_lastSendMenu = menu;
    g_lastSendCharacter = character;
    return 42;
}

namespace {

void TestAnchorForwardConstructor() {
    g_baseCtorCalls = 0;
    g_baseResetCalls = 0;
    AnchorForward anchor(nullptr, 10.0f, 2.0f, 0.5f, static_cast<AnchorBase::AnchorType>(0));
    Check(g_baseCtorCalls == 1, "AnchorForward runs the AnchorBase constructor once");
    Check(g_baseResetCalls == 1, "AnchorForward resets once in its constructor");
    Check(NearlyEqual(anchor.m_MAX_DISTANCE, 10.0f), "max distance stored at +0x1c");
    Check(NearlyEqual(anchor.m_DIST_PERSEC, 2.0f), "distance per second stored at +0x20");
    Check(NearlyEqual(anchor.m_THRESHOLD, 0.5f), "threshold stored at +0x24");
    Check(anchor.unk_28 == nullptr, "no character without a GameObject");
    Check(anchor.unk_3c == 5, "state 5 at construction");
    Check(!anchor.unk_38 && !anchor.unk_4c, "flags clear at construction");
    Check(anchor.unk_50 == 0 && NearlyEqual(anchor.unk_54, 0.0f), "countdown and speed zero at construction");
    Check(NearlyEqual(anchor.unk_2c.X, 0.0f) && NearlyEqual(anchor.unk_2c.Y, 0.0f) && NearlyEqual(anchor.unk_2c.Z, 0.0f),
          "unk_2c zero at construction");
    Check(NearlyEqual(anchor.unk_40.X, 0.0f) && NearlyEqual(anchor.unk_58.Z, 0.0f), "unk_40 and unk_58 zero at construction");
    Check(anchor.m_enabled, "AnchorBase leaves the anchor enabled");
}

void TestAnchorForwardReset() {
    AnchorForward anchor(nullptr, 1.0f, 1.0f, 0.5f, static_cast<AnchorBase::AnchorType>(0));
    anchor.unk_2c = Point3D<float>{1.0f, 2.0f, 3.0f};
    g_baseResetCalls = 0;
    anchor.Reset();
    Check(g_baseResetCalls == 1, "Reset runs AnchorBase::Reset once");
    Check(NearlyEqual(anchor.unk_2c.X, 0.0f) && NearlyEqual(anchor.unk_2c.Y, 0.0f) && NearlyEqual(anchor.unk_2c.Z, 0.0f),
          "Reset zeroes unk_2c");
}

void TestAnchorForwardUpdateDisabled() {
    AnchorForward anchor(nullptr, 1.0f, 1.0f, 0.5f, static_cast<AnchorBase::AnchorType>(0));
    anchor.m_enabled = false;
    anchor.unk_3c = 3;
    anchor.Update();  // returns before touching the object, which is null here
    Check(anchor.unk_3c == 3, "a disabled anchor's Update leaves the state alone");
}

void TestDragableConstructorScreenDeadZone() {
    g_debugLoadCalls = 0;
    Dragable d(FakeMenu(), FakeCharacter(), nullptr);
    Check(d.m_menu == FakeMenu(), "menu stored at +0x04");
    Check(d.m_character == FakeCharacter(), "character stored at +0x08");
    Check(NearlyEqual(d.m_deadZone[0], 0.0f), "dead zone xmin is zero without a zone");
    Check(NearlyEqual(d.m_deadZone[1], 800.0f * 20.0f), "dead zone xmax is the screen width times 20");
    Check(NearlyEqual(d.m_deadZone[2], 0.0f), "dead zone ymin is zero without a zone");
    Check(NearlyEqual(d.m_deadZone[3], 600.0f * 20.0f), "dead zone ymax is the screen height times 20");
    Check(d.unk_1c == 0, "unk_1c zero at construction");
    Check(NearlyEqual(d.m_bounds[0], 0.0f) && NearlyEqual(d.m_bounds[1], 0.0f) && NearlyEqual(d.m_bounds[2], 0.0f) &&
              NearlyEqual(d.m_bounds[3], 0.0f),
          "m_bounds is zeroed before the twips conversion (the bounds query is not declared)");
    Check(NearlyEqual(d.m_savedMatrix[0], 1.0f) && NearlyEqual(d.m_savedMatrix[1], 0.0f) &&
              NearlyEqual(d.m_savedMatrix[2], 0.0f) && NearlyEqual(d.m_savedMatrix[3], 0.0f) &&
              NearlyEqual(d.m_savedMatrix[4], 1.0f) && NearlyEqual(d.m_savedMatrix[5], 0.0f),
          "saved matrix starts as the identity");
    Check(g_debugLoadCalls == 1, "the constructor loads the debug switches once");
}

void TestDragableConstructorZoneDeadZone() {
    g_zoneQueries = 0;
    Dragable d(FakeMenu(), FakeCharacter(), FakeCharacter());
    Check(g_zoneQueries == 1, "a zone character gives one bounding-rect query");
    Check(NearlyEqual(d.m_deadZone[0], 1.0f) && NearlyEqual(d.m_deadZone[1], 2.0f) && NearlyEqual(d.m_deadZone[2], 3.0f) &&
              NearlyEqual(d.m_deadZone[3], 4.0f),
          "the dead zone is the zone's bounding rect in order");
}

void TestDragableDestructor() {
    auto d = std::make_unique<Dragable>(FakeMenu(), FakeCharacter(), nullptr);
    d.reset();
    Check(true, "Dragable destroys without side effects");
}

void TestDragableSendEventForwards() {
    Dragable d(FakeMenu(), FakeCharacter(), nullptr);
    g_sendEventCalls = 0;
    const int result = d.SendEvent(3);
    Check(g_sendEventCalls == 1, "SendEvent calls DragAndDrop::SendEvent once");
    Check(g_lastSendEvent == 3, "SendEvent passes the event");
    Check(g_lastSendMenu == FakeMenu(), "SendEvent passes the menu");
    Check(g_lastSendCharacter == FakeCharacter(), "SendEvent passes the character");
    Check(result == 42, "SendEvent returns the DragAndDrop result");
}

void TestDragableResetPositionRegisters() {
    Dragable d(FakeMenu(), FakeCharacter(), nullptr);
    g_registerCalls = 0;
    const int result = d.ResetPosition();
    // The listing (0x412984) calls RenderFX::RegisterDisplayCallback twice: 0x4129d4 with the character's parent
    // (`check_proxy(character + 60)` then `[character + 64]`, the weak parent's cached pointer) and 0x4129e4 with the
    // character itself. The parent is null for a character built with no parent, but the call is still made, so the
    // count is two and not one.
    Check(g_registerCalls == 2, "ResetPosition registers the parent's and the character's display callback");
    Check(result == 0, "ResetPosition returns 0 in place of the missing results");
}

void TestDragableOnEventOtherTarget() {
    Dragable d(FakeMenu(), FakeCharacter(), nullptr);
    RenderFX::Event e{};
    e.target = nullptr;  // not the dragged character
    Check(d.OnEvent(e) == false, "an event aimed at another target is not handled");
}

}  // namespace

int main() {
    TestAnchorForwardConstructor();
    TestAnchorForwardReset();
    TestAnchorForwardUpdateDisabled();
    TestDragableConstructorScreenDeadZone();
    TestDragableConstructorZoneDeadZone();
    TestDragableDestructor();
    TestDragableSendEventForwards();
    TestDragableResetPositionRegisters();
    TestDragableOnEventOtherTarget();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-ui-pack1-48ce29-0 tests passed\n");
    return 0;
}
