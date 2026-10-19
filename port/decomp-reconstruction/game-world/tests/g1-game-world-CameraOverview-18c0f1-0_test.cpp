// Test for batch g1-game-world-CameraOverview-18c0f1-0.
//
// The CameraOverview translation unit is linked with stubs for the engine code it calls: the CameraBase constructor,
// destructor and virtual hooks, EventManager::Attach and Detach (Detach records its arguments), the InputManager and
// PlayerManager lookups, and ISceneNode::setPosition(x, y, z). The globals the unit reads (dword_99F740, dword_99F76C and
// Vec3f_Origin) and the PFWorld singleton storage are defined here. The checks cover the key state machine (ApplyKey),
// the stick direction (StickDirection), the constructor's zeroing, onEvent's event id test and key consumption, and
// Deactivated's Detach call. Activated and Update need a live player record and scene nodes, so they are not run here.
// onEvent is fed real EvKeyboard objects: dh2/EvKeyboard.hpp is in the tree and ReadKeyboardEvent reads its fields
// directly (see the body at 0x410930, whose source comment says so).

#include <cmath>
#include <cstdio>

#include "dh2/CameraOverview.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/EvKeyboard.hpp"
#include "dh2/IEvent.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/scene_nodes.hpp"

namespace CameraOverview_detail {
bool ApplyKey(Point3D<float>& offset, int keyCode, bool pressed);
Point3D<float> StickDirection(float stickX, float stickY);
bool ReadKeyboardEvent(const IEvent* event, int& keyCode, bool& pressed);
}  // namespace CameraOverview_detail

namespace {

int g_failures = 0;
int g_detachCalls = 0;
int g_detachEventId = -1;
IEventReceiver* g_detachReceiver = nullptr;
char g_fakeManager[16];  // the EventManager the Deactivated check names; the stub never reads through it

#define EXPECT(cond)                                              \
    do {                                                          \
        if (!(cond)) {                                            \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);   \
            ++g_failures;                                         \
        }                                                         \
    } while (0)

bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

bool sameVec(const Point3D<float>& v, float x, float y, float z) {
    return near(v.X, x) && near(v.Y, y) && near(v.Z, z);
}

void testPressKeys() {
    Point3D<float> o{0.0f, 0.0f, 0.0f};
    EXPECT(CameraOverview_detail::ApplyKey(o, 'A', true) && sameVec(o, -100.0f, 0.0f, 0.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'D', true) && sameVec(o, 0.0f, 0.0f, 0.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'D', true) && sameVec(o, 100.0f, 0.0f, 0.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'S', true) && sameVec(o, 100.0f, -100.0f, 0.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'W', true) && sameVec(o, 100.0f, 0.0f, 0.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'E', true) && sameVec(o, 100.0f, 0.0f, 100.0f));
    EXPECT(CameraOverview_detail::ApplyKey(o, 'Q', true) && sameVec(o, 100.0f, 0.0f, -100.0f));

    Point3D<float> x{5.0f, 6.0f, 7.0f};
    EXPECT(CameraOverview_detail::ApplyKey(x, 'X', true) && sameVec(x, 0.0f, 0.0f, 0.0f));
}

void testReleaseKeys() {
    // A release clears only z, for the keys A, D, E, Q, S, W and X, and reports the key as consumed.
    Point3D<float> o{-100.0f, 50.0f, 75.0f};
    EXPECT(CameraOverview_detail::ApplyKey(o, 'A', false) && sameVec(o, -100.0f, 50.0f, 0.0f));
    o.Z = 40.0f;
    EXPECT(CameraOverview_detail::ApplyKey(o, 'E', false) && sameVec(o, -100.0f, 50.0f, 0.0f));
    o.Z = 40.0f;
    EXPECT(CameraOverview_detail::ApplyKey(o, 'X', false) && sameVec(o, -100.0f, 50.0f, 0.0f));
    o.Z = 40.0f;
    EXPECT(CameraOverview_detail::ApplyKey(o, 'Q', false) && sameVec(o, -100.0f, 50.0f, 0.0f));
}

void testUnmappedKeys() {
    Point3D<float> o{1.0f, 2.0f, 3.0f};
    EXPECT(!CameraOverview_detail::ApplyKey(o, 'Z', true) && sameVec(o, 1.0f, 2.0f, 3.0f));
    EXPECT(!CameraOverview_detail::ApplyKey(o, 'Z', false) && sameVec(o, 1.0f, 2.0f, 3.0f));
    // 'B' (66) is bit 1 of the release mask, which is clear. 'T' (84) is bit 19, also clear.
    EXPECT(!CameraOverview_detail::ApplyKey(o, 'B', false) && sameVec(o, 1.0f, 2.0f, 3.0f));
    EXPECT(!CameraOverview_detail::ApplyKey(o, 'T', false) && sameVec(o, 1.0f, 2.0f, 3.0f));
    // Codes below 'A' wrap in the unsigned subtraction and fall outside the release range.
    EXPECT(!CameraOverview_detail::ApplyKey(o, '@', false) && sameVec(o, 1.0f, 2.0f, 3.0f));
    EXPECT(!CameraOverview_detail::ApplyKey(o, '@', true) && sameVec(o, 1.0f, 2.0f, 3.0f));
    // 'a' (97) is past the release range (only 'A'..'X' are tested).
    EXPECT(!CameraOverview_detail::ApplyKey(o, 'a', false) && sameVec(o, 1.0f, 2.0f, 3.0f));
}

void testStickDirection() {
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.3f, 0.0f), 0.0f, 0.0f, 0.0f));
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.0f, 0.0f), 0.0f, 0.0f, 0.0f));
    // Length 0.5 gives a scale of zero.
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.3f, 0.4f), 0.0f, 0.0f, 0.0f));
    // Length 0.75: unit (1, 0, 0) scaled by 2 * (0.75 - 0.5) = 0.5.
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.75f, 0.0f), 0.5f, 0.0f, 0.0f));
    // Length 0.9: unit (0, 1, 0) scaled by 0.8.
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.0f, 0.9f), 0.0f, 0.8f, 0.0f));
    // Length 1 and beyond: the unit direction, unscaled.
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.0f, 1.0f), 0.0f, 1.0f, 0.0f));
    EXPECT(sameVec(CameraOverview_detail::StickDirection(-2.0f, 0.0f), -1.0f, 0.0f, 0.0f));
    // Length 1 on a diagonal keeps the components.
    EXPECT(sameVec(CameraOverview_detail::StickDirection(0.6f, 0.8f), 0.6f, 0.8f, 0.0f));
}

void testConstructor() {
    CameraOverview cam;
    EXPECT(sameVec(cam.unk_10, 0.0f, 0.0f, 0.0f));
    EXPECT(sameVec(cam.unk_1c, 0.0f, 0.0f, 0.0f));
    // Partial: no camera node is created, so both node pointers stay null.
    EXPECT(cam.m_node == nullptr);
    EXPECT(cam.m_camera == nullptr);
}

void testOnEvent() {
    CameraOverview cam;
    // An event whose id is not zero is not a keyboard event: the original returns 0 before it reads any field.
    IEvent other(1u);
    EXPECT(!cam.onEvent(&other, nullptr));
    // A real keyboard event (id 0): ReadKeyboardEvent reads the key code (+0x0c) and the pressed flag (+0x10) of the
    // EvKeyboard, which onEvent has already checked for id 0. The stub of ReadKeyboardEvent that returned false is gone.
    EvKeyboard keyEvent(0, 'E', true, false, false);
    EXPECT(cam.onEvent(&keyEvent, nullptr));
    EXPECT(sameVec(cam.unk_1c, 0.0f, 0.0f, 100.0f));  // 'E' pressed sets the z offset (listing 0x410930, case 'E')
    // A keyboard event the switch does not know is not consumed and leaves the offset alone.
    EvKeyboard otherKey(0, 'Z', true, false, false);
    EXPECT(!cam.onEvent(&otherKey, nullptr));
    EXPECT(sameVec(cam.unk_1c, 0.0f, 0.0f, 100.0f));
    // The reader itself reports the fields it read. The listing at 0x410930 reads them directly and has no failure path.
    int keyCode = -1;
    bool pressed = false;
    EXPECT(CameraOverview_detail::ReadKeyboardEvent(&keyEvent, keyCode, pressed));
    EXPECT(keyCode == 'E');
    EXPECT(pressed);
    // A release (pressed false) takes the release branch, which clears only z for the keys in the mask 0xc50019.
    EvKeyboard releaseEvent(0, 'E', false, false, false);
    EXPECT(cam.onEvent(&releaseEvent, nullptr));
    EXPECT(sameVec(cam.unk_1c, 0.0f, 0.0f, 0.0f));
}

void testDeactivated() {
    CameraOverview cam;
    g_detachCalls = 0;
    g_detachEventId = -1;
    g_detachReceiver = nullptr;
    dword_99F740 = reinterpret_cast<EventManager*>(g_fakeManager);  // not dereferenced by the stub
    cam.Deactivated();
    EXPECT(g_detachCalls == 1);
    EXPECT(g_detachEventId == 0);
    EXPECT(g_detachReceiver == static_cast<IEventReceiver*>(&cam));
    dword_99F740 = nullptr;
}

}  // namespace

// ---- Engine stubs: the symbols CameraOverview.cpp references and the test does not run. ----

CameraBase::CameraBase() : m_node(nullptr), m_camera(nullptr) {}
CameraBase::~CameraBase() {}
void CameraBase::Activated() {}
void CameraBase::Deactivated() {}
void CameraBase::Update() {}

bool EventManager::Attach(int eventId, IEventReceiver* receiver, int priority) {
    (void)eventId;
    (void)receiver;
    (void)priority;
    return true;
}

bool EventManager::Detach(int eventId, IEventReceiver* receiver) {
    ++g_detachCalls;
    g_detachEventId = eventId;
    g_detachReceiver = receiver;
    return true;
}

// A real (never constructed) InputManager object, NOT a null stand-in. The batch does
// `InputManager::GetInstance()->GetFirstConnectedGamepad()` and this definition shadows the library's real
// singleton for the whole executable (tests link with -Wl,--allow-multiple-definition, first definition wins), so a
// null here would be a dereference the moment Update() is called. GetFirstConnectedGamepad is the test's own stub
// below, so the object is never read and reports "no pad", exactly as the checks expect.
InputManager* InputManager::GetInstance() {
    alignas(16) static unsigned char storage[sizeof(InputManager)];
    return reinterpret_cast<InputManager*>(storage);
}

Gamepad* InputManager::GetFirstConnectedGamepad() { return nullptr; }

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    return nullptr;
}

namespace glitch::scene {
void ISceneNode::setPosition(float x, float y, float z) {
    (void)x;
    (void)y;
    (void)z;
}
}  // namespace glitch::scene

PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
template class Singleton<PFWorld>;  // defines Singleton<PFWorld>::s_inst, which the unit's Activated reads

// ---- Globals the unit reads. ----

Point3D<float> Vec3f_Origin{0.0f, 0.0f, 0.0f};
static EventManager* g_test_dword_99F740 = nullptr;
EventManager*& dword_99F740 = g_test_dword_99F740;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

int main() {
    testPressKeys();
    testReleaseKeys();
    testUnmappedKeys();
    testStickDirection();
    testConstructor();
    testOnEvent();
    testDeactivated();
    if (g_failures == 0) {
        std::printf("CameraOverview tests passed\n");
    } else {
        std::printf("CameraOverview tests: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
