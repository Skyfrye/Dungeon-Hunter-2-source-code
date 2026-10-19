// Test for the v2PS3MoveController functions of batch g1-game-anim-pack2-a632de-0 that run without the engine: the
// constructor's stored fields, the destructor through a base pointer, and the Update exits (no gamepad, no connected
// pad, and a released pad, which issues no command). The symbols that other batches own (the v2Controller base, the
// Cmd_* forwards, the InputManager and DebugSwitches accessors, the target search and the Character queries) are
// test-only definitions below, so the batch source links with this test alone. The fuller coverage of the same source
// is in r2a-game-anim-pack3-a632de-0_test.cpp. Returns non-zero on failure.
#include <cstdio>
#include <cstring>
#include <list>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2PS3MoveController.hpp"

// Engine assert level (core-platform/src/memory.cpp). Zero: the null-controllable assert prints nothing.
int gAssertLevel = 0;

// Storage for the singletons the source names (never read here: every pad control reads released, so the Update
// paths that reach them do not run). The linker names are the ones the source uses.
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_pfWorldStorage[sizeof(PFWorld)] __asm__("_ZN9SingletonI7PFWorldE6s_instE");
alignas(8) unsigned char g_debugSwitchesStorage[sizeof(DebugSwitches)] __asm__("_ZN13DebugSwitches6s_instE");
alignas(8) unsigned char g_padStorage[sizeof(Gamepad)];  // a zeroed pad: every control reads released

namespace {

int g_failures = 0;
std::vector<std::string> g_log;  // records every Cmd_* the stubs receive
int g_numGamepads = 0;
Gamepad* g_firstPad = nullptr;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);                   \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

void ResetStubs() {
    g_log.clear();
    g_numGamepads = 0;
    g_firstPad = nullptr;
}

}  // namespace

// ---- Test-only definitions of code owned by other batches ----

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}

v2Controller::~v2Controller() {}

void v2Controller::Update() {}

void v2Controller::Cmd_Attack(GameObject*) { g_log.push_back("Attack"); }
void v2Controller::Cmd_UseOOI(GameObject*) { g_log.push_back("UseOOI"); }
void v2Controller::Cmd_HeadTo(const Point3D<float>&) { g_log.push_back("HeadTo"); }
void v2Controller::Cmd_EndSkill(unsigned int) { g_log.push_back("EndSkill"); }
void v2Controller::Cmd_BeginSkill(unsigned int) { g_log.push_back("BeginSkill"); }
void v2Controller::Cmd_BeginCast(bool) { g_log.push_back("BeginCast"); }
void v2Controller::Cmd_EndCast(bool) { g_log.push_back("EndCast"); }
void v2Controller::Cmd_UsePotion() { g_log.push_back("UsePotion"); }
void v2Controller::Cmd_OpenIGM() { g_log.push_back("OpenIGM"); }
void v2Controller::Cmd_Stop() { g_log.push_back("Stop"); }

// The stubs ignore `this`. The batch reaches InputManager only through these calls (GetGamepad is virtual and is
// never reached here, because every test uses index -1 or no gamepad). The accessor returns a real (never
// constructed) InputManager object, NOT a null stand-in: this definition shadows the library's real singleton for
// the whole executable, and calling the member stubs below on a null `this` would be undefined behaviour. Nothing
// dereferences the object because GetNumGamepads and GetFirstConnectedGamepad are the only calls the batch makes.
InputManager* InputManager::GetInstance() {
    alignas(16) static unsigned char storage[sizeof(InputManager)];
    return reinterpret_cast<InputManager*>(storage);
}
int InputManager::GetNumGamepads() const { return g_numGamepads; }
Gamepad* InputManager::GetFirstConnectedGamepad() { return g_firstPad; }

// Never reached: every pad control reads as released, so no debug switch is queried.
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) { return false; }

int Character::SG_GetSkillInSlot(int) { return -1; }
bool CharAI::AI_CanAttack(GameObject*) const { return false; }
bool CharStateMachine::SM_IsInteracting() const { return false; }

// Never reached: the cursor, the translation, the player record and the room list are read only when the primary
// control or a character's player id is needed, and neither is pressed or set in this test.
Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
bool PFWorld::TranslateScreenToWorld(const Point2D<float>&, Point3D<float>&) { return false; }
PlayerInfo* PlayerManager::GetPlayerByCharacter(const Character*, bool) { return nullptr; }
ObjectSearcher::RoomObjectList::~RoomObjectList() {}
void ObjectSearcher::RoomObjectList::Reset() {}
bool ObjectSearcher::RoomObjectList::AtEnd() { return true; }
void ObjectSearcher::RoomObjectList::Next() {}
int ObjectSearcher::RoomObjectList::Size() { return 0; }
GameObject* ObjectSearcher::RoomObjectList::Get() { return nullptr; }
Character* ObjectSearcher::RoomObjectList::GetChar() { return nullptr; }

ObjectSearcher::TargetList::TargetList(GameObject*, int, int, int) {}
ObjectSearcher::TargetList::~TargetList() {}
void ObjectSearcher::TargetList::Search(const Point3D<float>&, float, float, ObjectSearcher::IObjectList&) {}
// Reached through the TargetList members' default construction and destruction (the default sorter and the backup map).
bool ObjectSearcher::TargetSorter::_sortNoSort(const ObjectSearcher::TargetInfo&, const ObjectSearcher::TargetInfo&) {
    return false;
}
// The IObjectList base destructor is needed by the BackupObjectList destructor below (and by the vtable of every
// IObjectList subclass). The sibling test g1-game-world-ObjectSearcher-3d104b-1_test.cpp defines it the same way.
ObjectSearcher::IObjectList::~IObjectList() {}
// The BackupObjectList vtable is emitted with its destructor, so its virtual slots need definitions too.
ObjectSearcher::BackupObjectList::~BackupObjectList() {}
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() { return true; }
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() { return 0; }
GameObject* ObjectSearcher::BackupObjectList::Get() { return nullptr; }
Character* ObjectSearcher::BackupObjectList::GetChar() { return nullptr; }

namespace {

// The constructor stores the controllable and the gamepad index, and zeroes the three words it owns.
void TestConstructorStoresFields() {
    ResetStubs();
    int dummyController = 0;
    v2Controllable* controllable = reinterpret_cast<v2Controllable*>(&dummyController);
    v2PS3MoveController controller(controllable, 2);
    EXPECT(controller.m_controllable == controllable);
    EXPECT(controller.m_gamepadIndex == 2);
    EXPECT(controller.unk_14 == 0 && controller.unk_18 == 0 && controller.unk_1c == 0);
    EXPECT(controller.m_character == nullptr);
    EXPECT(!controller.m_blocked && !controller.unk_009 && !controller.unk_00a);

    v2PS3MoveController firstConnected(controllable, -1);
    EXPECT(firstConnected.m_gamepadIndex == -1);
}

// A null controllable is accepted at assert level 0, and the gamepad index is still stored.
void TestConstructorNullControllableLevelZero() {
    ResetStubs();
    v2PS3MoveController controller(nullptr, 3);
    EXPECT(controller.m_controllable == nullptr);
    EXPECT(controller.m_gamepadIndex == 3);
}

// With no gamepads, Update returns before it reads any control, so nothing is issued.
void TestUpdateWithoutGamepads() {
    ResetStubs();
    int dummyController = 0;
    v2PS3MoveController controller(reinterpret_cast<v2Controllable*>(&dummyController), -1);
    g_numGamepads = 0;
    controller.Update();
    EXPECT(g_log.empty());
}

// With a gamepad index that is not connected (index -1 and no first connected pad), Update returns early.
void TestUpdateWithoutConnectedPad() {
    ResetStubs();
    int dummyController = 0;
    v2PS3MoveController controller(reinterpret_cast<v2Controllable*>(&dummyController), -1);
    g_numGamepads = 1;
    g_firstPad = nullptr;
    controller.Update();
    EXPECT(g_log.empty());
}

// A connected, released pad: every control reads as released with no latch, so Update issues no command.
void TestUpdateReleasedPadIssuesNothing() {
    ResetStubs();
    int dummyController = 0;
    v2PS3MoveController controller(reinterpret_cast<v2Controllable*>(&dummyController), -1);
    g_numGamepads = 1;
    std::memset(g_padStorage, 0, sizeof g_padStorage);  // every channel zero: released, no latch
    g_firstPad = reinterpret_cast<Gamepad*>(g_padStorage);
    controller.Update();
    EXPECT(g_log.empty());
}

// Update is virtual: a call through a v2Controller pointer reaches the override, and deleting through the base runs the
// destructor chain without a leak or crash.
void TestVirtualUpdateAndDeleteThroughBase() {
    ResetStubs();
    int dummyController = 0;
    v2Controller* base = new v2PS3MoveController(reinterpret_cast<v2Controllable*>(&dummyController), -1);
    g_numGamepads = 0;
    base->Update();
    EXPECT(g_log.empty());
    delete base;
}

}  // namespace

int main() {
    TestConstructorStoresFields();
    TestConstructorNullControllableLevelZero();
    TestUpdateWithoutGamepads();
    TestUpdateWithoutConnectedPad();
    TestUpdateReleasedPadIssuesNothing();
    TestVirtualUpdateAndDeleteThroughBase();
    if (g_failures != 0) {
        std::printf("g1-game-anim-pack2-a632de-0 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-anim-pack2-a632de-0 test: all checks passed\n");
    return 0;
}
