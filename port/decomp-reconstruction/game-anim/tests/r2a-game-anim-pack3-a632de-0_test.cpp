// Test for batch r2a-game-anim-pack3-a632de-0, the redo of the v2PS3MoveController constructors and Update (source
// game-anim/src/g1-game-anim-pack2-a632de-0.cpp). It covers the Gamepad channel each control reads, the press level and
// its bounds, the hold and release rules, and the command Update issues for each control. The engine is stubbed: the
// v2Controller base and the Cmd_* forwards, ApplicationGetInstance, the PFWorld and DebugSwitches singletons, the target
// search, and the player record. The EvGamepad events are not checked, because the source drops them (dh2/EvGamepad.hpp
// does not exist). Returns non-zero on failure.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <list>
#include <new>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/Gamepad.hpp"
#include "dh2/InputManager.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2PS3MoveController.hpp"

// The detail helpers of the source. The enum must match the definition there.
namespace v2PS3MoveController_detail {
enum PadControl : int {
    kPadPrimary,
    kPadMoveToClick,
    kPadAttack,
    kPadSkill0,
    kPadSkill1,
    kPadSkill2,
    kPadEventAction0,
    kPadMadness0,
    kPadMadness1,
    kPadMadness2,
    kPadPotion,
    kPadCast,
    kPadOpenIGM,
};
float PadValue(const Gamepad::Channel* buttons, PadControl control);
float PadBound0(const Gamepad::Channel* buttons, PadControl control);
float PadBound1(const Gamepad::Channel* buttons, PadControl control);
bool PadLatched(const Gamepad::Channel* buttons, PadControl control);
float PadPressLevel(const Gamepad::Channel* buttons, PadControl control);
void SkillHold(v2Controller& controller, const Gamepad::Channel* buttons, PadControl control, unsigned int skill);
}  // namespace v2PS3MoveController_detail

using namespace v2PS3MoveController_detail;

// Engine assert level read by the constructor. Zero: the null-controllable assert prints nothing.
int gAssertLevel = 0;

// Raw storage for the engine objects the source reaches. The test sets the members it reads; nothing is constructed.
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_menuStorage[sizeof(MenuManager)];
alignas(16) unsigned char g_objectManagerStorage[sizeof(ObjectManager)];
alignas(16) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];
alignas(16) unsigned char g_playerInfoStorage[sizeof(PlayerInfo)];
alignas(16) unsigned char g_characterStorage[sizeof(Character)];
alignas(16) unsigned char g_padStorage[sizeof(Gamepad)];
alignas(16) unsigned char g_inputStorage[sizeof(InputManager)];
alignas(16) unsigned char g_eventManagerStorage[sizeof(EventManager)];
// The two singleton instances, under the linker names the source uses (Singleton<PFWorld>::s_inst, DebugSwitches::s_inst).
alignas(16) unsigned char g_pfWorldStorage[sizeof(PFWorld)] __asm__("_ZN9SingletonI7PFWorldE6s_instE");
alignas(16) unsigned char g_debugSwitchesStorage[sizeof(DebugSwitches)] __asm__("_ZN13DebugSwitches6s_instE");

int g_dummyControllable = 0;  // any non-null address serves as the v2Controllable

namespace {

int g_failures = 0;
std::vector<std::string> g_log;         // the Cmd_* calls the stubs receive, in order
int g_numGamepads = 0;
Gamepad* g_firstPad = nullptr;
std::vector<std::string> g_onSwitches;  // debug switches that read as on
int g_slotSkill[3] = {-1, -1, -1};      // Character::SG_GetSkillInSlot results for slots 0..2
int g_loadCalls = 0;
bool g_translateOk = false;             // what PFWorld::TranslateScreenToWorld returns
Point3D<float> g_translatedPoint{0.0f, 0.0f, 0.0f};
int g_translateCalls = 0;
Point2D<float> g_lastScreen{0.0f, 0.0f};
int g_searchCalls = 0;
float g_lastMaxRange = 0.0f;
float g_lastMaxAngle = 0.0f;
const std::list<std::list<GameObject*>*>* g_lastRoomList = nullptr;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL %s\n", what);
        ++g_failures;
    }
}

void ExpectLog(const std::vector<std::string>& want, const char* what) {
    if (g_log != want) {
        std::printf("FAIL %s: got", what);
        for (const std::string& s : g_log) std::printf(" [%s]", s.c_str());
        std::printf("\n");
        ++g_failures;
    }
}

std::uint32_t FloatBits(float f) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &f, sizeof bits);
    return bits;
}

Gamepad* Pad() { return reinterpret_cast<Gamepad*>(g_padStorage); }

// The pad the stubs hand back is a REAL Gamepad: Update reads m_buttons[] of it (value, minimum, maximum and the
// previous_* fields), so zeroed storage is not a Gamepad. Gamepad's constructor sets every channel (ResetChannel)
// and needs nothing else, so it is placement-constructed here; ResetChannel's values are its initial state.
void ResetPad() {
    new (g_padStorage) Gamepad();
}

// Sets one channel to pressed or released. Value and previous are 1 or 0, the bounds are -1 and 1 (press level 0.5), and
// the latch is the flag given. Each control reads either the value or the previous fields, so both are set.
void SetChannel(int channel, bool pressed, bool latched = false) {
    Gamepad::Channel& c = Pad()->m_buttons[channel];
    c.value = pressed ? 1.0f : 0.0f;
    c.minimum = -1.0f;
    c.maximum = 1.0f;
    c.previous = c.value;
    c.previous_minimum = -1.0f;
    c.previous_maximum = 1.0f;
    c.previous_above_threshold = latched;
}

Character* ResetCharacter() {
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    return reinterpret_cast<Character*>(g_characterStorage);
}

// Clears the stubs and builds the Update context: one connected pad, a cursor at (100, 50), an empty room list, and a
// player record with id 42. The pad channels stay at zero (every control released) until a test sets them.
void Setup() {
    g_log.clear();
    g_onSwitches.clear();
    g_slotSkill[0] = g_slotSkill[1] = g_slotSkill[2] = -1;
    g_loadCalls = 0;
    g_translateOk = false;
    g_translatedPoint = Point3D<float>{0.0f, 0.0f, 0.0f};
    g_translateCalls = 0;
    g_lastScreen = Point2D<float>{0.0f, 0.0f};
    g_searchCalls = 0;
    g_lastMaxRange = 0.0f;
    g_lastMaxAngle = 0.0f;
    g_lastRoomList = nullptr;

    ResetPad();
    g_numGamepads = 1;
    g_firstPad = Pad();

    Application& app = ApplicationGetInstance();
    app.m_menuManager = reinterpret_cast<MenuManager*>(g_menuStorage);
    app.m_objectManager = reinterpret_cast<ObjectManager*>(g_objectManagerStorage);
    app.m_playerManager = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    new (&app.m_objectManager->m_roomZones) std::list<std::list<GameObject*>*>();
    // Application::m_eventManager (+0x14) is what RaiseOnChange goes through (the batch source reads
    // `ApplicationGetInstance().m_eventManager` in RaiseGamepadEvent and Update calls it for the four action
    // controls; the global dword_99F740). It must be a REAL EventManager: Raise walks m_receivers, a std::map, so a
    // null or zeroed one faults inside the map walk (gdb: EventManager::Raise+48 reads the tree node, the manager
    // pointer was null). Update attaches no receiver, so Raise finds no entry for the event id and returns. Setup
    // runs many times, so the manager is built once and the same object is reused for every case.
    if (app.m_eventManager == nullptr) {
        app.m_eventManager = new (g_eventManagerStorage) EventManager();
    }
    app.m_menuManager->unk_50 = FloatBits(100.0f);
    app.m_menuManager->unk_54 = FloatBits(50.0f);
    reinterpret_cast<PlayerInfo*>(g_playerInfoStorage)->unk_668 = 42;
}

// Runs Update on a fresh controller bound to the first connected pad, with the given character (or none).
void RunUpdate(Character* character = nullptr) {
    v2PS3MoveController controller(reinterpret_cast<v2Controllable*>(&g_dummyControllable), -1);
    controller.m_character = character;
    controller.Update();
}

}  // namespace

// ---- Stubs for code other batches own ----

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }

InputManager* InputManager::GetInstance() { return reinterpret_cast<InputManager*>(g_inputStorage); }
int InputManager::GetNumGamepads() const { return g_numGamepads; }
Gamepad* InputManager::GetFirstConnectedGamepad() { return g_firstPad; }

bool PFWorld::TranslateScreenToWorld(const Point2D<float>& screen, Point3D<float>& world) {
    ++g_translateCalls;
    g_lastScreen = screen;
    if (!g_translateOk) return false;
    world = g_translatedPoint;
    return true;
}

PlayerInfo* PlayerManager::GetPlayerByCharacter(const Character*, bool) {
    return reinterpret_cast<PlayerInfo*>(g_playerInfoStorage);
}

void DebugSwitches::load() { ++g_loadCalls; }
bool DebugSwitches::GetSwitch(const std::string& name) {
    for (const std::string& on : g_onSwitches) {
        if (on == name) return true;
    }
    return false;
}

int Character::SG_GetSkillInSlot(int slot) { return g_slotSkill[slot]; }
bool CharAI::AI_CanAttack(GameObject*) const { return false; }
bool CharStateMachine::SM_IsInteracting() const { return false; }

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}
v2Controller::~v2Controller() {}
void v2Controller::Update() {}

void v2Controller::Cmd_Attack(GameObject*) { g_log.push_back("Attack"); }
void v2Controller::Cmd_UseOOI(GameObject*) { g_log.push_back("UseOOI"); }
void v2Controller::Cmd_HeadTo(const Point3D<float>&) { g_log.push_back("HeadTo"); }
void v2Controller::Cmd_EndSkill(unsigned int skill) { g_log.push_back("EndSkill:" + std::to_string(skill)); }
void v2Controller::Cmd_BeginSkill(unsigned int skill) { g_log.push_back("BeginSkill:" + std::to_string(skill)); }
void v2Controller::Cmd_BeginCast(bool primary) { g_log.push_back(std::string("BeginCast:") + (primary ? "1" : "0")); }
void v2Controller::Cmd_EndCast(bool primary) { g_log.push_back(std::string("EndCast:") + (primary ? "1" : "0")); }
void v2Controller::Cmd_UsePotion() { g_log.push_back("UsePotion"); }
void v2Controller::Cmd_OpenIGM() { g_log.push_back("OpenIGM"); }
void v2Controller::Cmd_Stop() { g_log.push_back("Stop"); }

// The target search: no hits. It records the range, the angle and the room list it was given.
ObjectSearcher::TargetList::TargetList(GameObject*, int, int, int) {}
ObjectSearcher::TargetList::~TargetList() {}
void ObjectSearcher::TargetList::Search(const Point3D<float>&, float maxRange, float maxAngle,
                                        ObjectSearcher::IObjectList& list) {
    ++g_searchCalls;
    g_lastMaxRange = maxRange;
    g_lastMaxAngle = maxAngle;
    g_lastRoomList = static_cast<const ObjectSearcher::RoomObjectList&>(list).m_list;
}
// Reached through the TargetSorter default constructor of the queue member.
bool ObjectSearcher::TargetSorter::_sortNoSort(const ObjectSearcher::TargetInfo&, const ObjectSearcher::TargetInfo&) {
    return false;
}
// DELIBERATE vtable stubs, not real cursor walks: both `Get` definitions below also replace the library's real
// BackupObjectList/RoomObjectList accessors for the whole executable (tests link with
// -Wl,--allow-multiple-definition and the first definition wins). The checks never walk either list, so nothing
// dereferences the null today; a later check that walks one through TargetList::Search or SearchRect would receive
// null from Get and fault in the candidate test.
ObjectSearcher::IObjectList::~IObjectList() {}
ObjectSearcher::BackupObjectList::~BackupObjectList() {}
void ObjectSearcher::BackupObjectList::Reset() {}
bool ObjectSearcher::BackupObjectList::AtEnd() { return true; }
void ObjectSearcher::BackupObjectList::Next() {}
int ObjectSearcher::BackupObjectList::Size() { return 0; }
GameObject* ObjectSearcher::BackupObjectList::Get() { return nullptr; }
Character* ObjectSearcher::BackupObjectList::GetChar() { return nullptr; }
ObjectSearcher::RoomObjectList::~RoomObjectList() {}
void ObjectSearcher::RoomObjectList::Reset() {}
bool ObjectSearcher::RoomObjectList::AtEnd() { return true; }
void ObjectSearcher::RoomObjectList::Next() {}
int ObjectSearcher::RoomObjectList::Size() { return 0; }
GameObject* ObjectSearcher::RoomObjectList::Get() { return nullptr; }
Character* ObjectSearcher::RoomObjectList::GetChar() { return nullptr; }

namespace {

// The constructor stores the controllable and the gamepad index, and zeroes the three words it owns.
void TestConstructorStoresFields() {
    Setup();
    int dummy = 0;
    v2Controllable* controllable = reinterpret_cast<v2Controllable*>(&dummy);
    v2PS3MoveController controller(controllable, 2);
    Expect(controller.m_controllable == controllable, "constructor stores the controllable");
    Expect(controller.m_gamepadIndex == 2, "constructor stores the gamepad index");
    Expect(controller.unk_14 == 0 && controller.unk_18 == 0 && controller.unk_1c == 0, "constructor zeroes +0x14..+0x1c");
    Expect(controller.m_character == nullptr, "constructor leaves no character");
    Expect(!controller.m_blocked && !controller.unk_009 && !controller.unk_00a, "constructor clears the block flags");
}

// A null controllable is accepted at assert level 0, and the gamepad index is still stored.
void TestConstructorNullControllableLevelZero() {
    Setup();
    v2PS3MoveController controller(nullptr, 3);
    Expect(controller.m_controllable == nullptr, "null controllable is stored at level 0");
    Expect(controller.m_gamepadIndex == 3, "gamepad index is stored with a null controllable");
}

// Each control reads its own channel. Pressing one channel moves exactly the controls that read that channel.
void TestEachControlReadsItsChannel() {
    static const int kChannelOf[13] = {30, 30, 26, 25, 28, 27, 26, 33, 34, 35, 36, 29, 31};
    for (int c = 0; c < 13; ++c) {
        Setup();
        SetChannel(kChannelOf[c], true);
        const Gamepad::Channel* buttons = Pad()->m_buttons;
        for (int d = 0; d < 13; ++d) {
            const float want = (kChannelOf[d] == kChannelOf[c]) ? 1.0f : 0.0f;
            Expect(PadValue(buttons, static_cast<PadControl>(d)) == want, "a control reads its own channel only");
        }
        Expect(PadPressLevel(buttons, static_cast<PadControl>(c)) == 0.5f, "press level is 0.5 for bounds -1 and 1");
    }
}

// A live control reads value and has no latch. A threshold control reads previous and latches on previous_above_threshold.
void TestLiveControlsReadValueAndGroupsReadPrevious() {
    Setup();
    Gamepad::Channel& channel = Pad()->m_buttons[30];
    channel.value = 0.0f;
    channel.previous = 1.0f;
    channel.previous_above_threshold = true;
    const Gamepad::Channel* buttons = Pad()->m_buttons;
    Expect(PadValue(buttons, kPadPrimary) == 0.0f, "primary reads value");
    Expect(PadValue(buttons, kPadMoveToClick) == 1.0f, "move-to-click reads previous");
    Expect(!PadLatched(buttons, kPadPrimary), "primary has no latch");
    Expect(PadLatched(buttons, kPadMoveToClick), "move-to-click latches on previous_above_threshold");
}

// The press level is ((bound1 + bound0) + 1) / 2 with bound0 the minimum and bound1 the maximum.
void TestPressLevelUsesBothBounds() {
    Setup();
    Gamepad::Channel& group = Pad()->m_buttons[25];  // kPadSkill0, threshold group
    group.previous_minimum = -0.5f;
    group.previous_maximum = 0.75f;
    Gamepad::Channel& live = Pad()->m_buttons[26];  // kPadAttack, live
    live.minimum = -0.5f;
    live.maximum = 0.75f;
    const Gamepad::Channel* buttons = Pad()->m_buttons;
    Expect(PadBound0(buttons, kPadSkill0) == -0.5f && PadBound1(buttons, kPadSkill0) == 0.75f,
           "threshold bounds are previous_minimum and previous_maximum");
    Expect(PadPressLevel(buttons, kPadSkill0) == 0.625f, "threshold press level is (0.75 - 0.5 + 1) / 2");
    Expect(PadBound0(buttons, kPadAttack) == -0.5f && PadBound1(buttons, kPadAttack) == 0.75f,
           "live bounds are minimum and maximum");
    Expect(PadPressLevel(buttons, kPadAttack) == 0.625f, "live press level is (0.75 - 0.5 + 1) / 2");
}

// A skill hold begins the skill on press when not latched, and ends it on release when latched. Nothing else.
void TestSkillHoldBeginsAndEnds() {
    struct Case {
        bool pressed;
        bool latched;
        std::vector<std::string> want;
    };
    const Case cases[] = {
        {true, false, {"BeginSkill:7"}},
        {true, true, {}},
        {false, true, {"EndSkill:7"}},
        {false, false, {}},
    };
    for (const Case& c : cases) {
        Setup();
        SetChannel(25, c.pressed, c.latched);  // kPadSkill0
        v2PS3MoveController controller(reinterpret_cast<v2Controllable*>(&g_dummyControllable), -1);
        g_log.clear();
        SkillHold(controller, Pad()->m_buttons, kPadSkill0, 7);
        ExpectLog(c.want, "skill hold");
    }
}

// Move-to-click stops on release while latched, unless the IsMovingToClick switch is set.
void TestMoveToClickStopsOnRelease() {
    Setup();
    SetChannel(30, false, true);
    RunUpdate();
    ExpectLog({"Stop"}, "move-to-click release stops");

    Setup();
    g_onSwitches = {"IsMovingToClick"};
    SetChannel(30, false, true);
    RunUpdate();
    ExpectLog({}, "move-to-click release with the switch set does not stop");

    Setup();
    SetChannel(30, false, false);
    RunUpdate();
    ExpectLog({}, "move-to-click release without a latch does nothing");
}

// Attack is issued while held, with no latch.
void TestAttackWhileHeld() {
    Setup();
    SetChannel(26, true);
    RunUpdate();
    ExpectLog({"Attack"}, "attack while held");
}

// Without a spot target, the primary control translates the cursor, heads to the point, and searches the room objects.
void TestPrimaryHeadsToCursorAndSearchesRooms() {
    Setup();
    SetChannel(30, true);
    g_translateOk = true;
    g_translatedPoint = Point3D<float>{4.0f, 5.0f, 6.0f};
    RunUpdate();
    ExpectLog({"HeadTo"}, "primary heads to the cursor point");
    Expect(g_translateCalls == 1, "primary translates the cursor once");
    Expect(g_lastScreen.X == 100.0f && g_lastScreen.Y == 50.0f, "cursor words are read from MenuManager +0x50 and +0x54");
    Expect(g_searchCalls == 1, "primary runs one target search");
    Expect(g_lastMaxRange == 0.0f && g_lastMaxAngle == 6.2831855f, "search range 0 and angle 6.2831855f");
    Expect(g_lastRoomList == &ApplicationGetInstance().m_objectManager->m_roomZones,
           "the search walks the ObjectManager room list (+0x80)");
}

// With a pending spot target, the translated point is stored on the character and nothing is searched.
void TestSpotTargetStoresTheTranslatedPoint() {
    Setup();
    SetChannel(30, true);
    g_translateOk = true;
    g_translatedPoint = Point3D<float>{7.0f, 8.0f, 9.0f};
    Character* character = ResetCharacter();
    character->m_spotTargetPending = 1;
    RunUpdate(character);
    ExpectLog({}, "spot target issues no command");
    Expect(g_searchCalls == 0 && g_translateCalls == 1, "spot target translates once and does not search");
    Expect(character->m_spotTargetPos.X == 7.0f && character->m_spotTargetPos.Y == 8.0f &&
               character->m_spotTargetPos.Z == 9.0f,
           "spot target position is stored at Character +0x14b0");
    Expect(character->m_spotTargetValidPos.X == 7.0f && character->m_spotTargetValidPos.Y == 8.0f &&
               character->m_spotTargetValidPos.Z == 9.0f,
           "valid spot target position is stored at Character +0x14bc");
}

// Skill slots 0 and 2 begin their skills on press; slot 1 has no skill, so it is skipped. Release ends a latched skill.
void TestSkillSlotsBeginAndEnd() {
    Setup();
    g_slotSkill[0] = 7;
    g_slotSkill[1] = -1;
    g_slotSkill[2] = 9;
    SetChannel(25, true);
    SetChannel(27, true);
    RunUpdate(ResetCharacter());
    ExpectLog({"BeginSkill:7", "BeginSkill:9"}, "skill slots 0 and 2 begin on press");

    Setup();
    g_slotSkill[0] = 7;
    g_slotSkill[1] = -1;
    g_slotSkill[2] = 9;
    SetChannel(25, false, true);
    RunUpdate(ResetCharacter());
    ExpectLog({"EndSkill:7"}, "skill slot 0 ends on release while latched");
}

// Move madness and the potion act only while the IsUsingMoveMadness switch is set.
void TestMoveMadnessAndPotionNeedTheSwitch() {
    Setup();
    g_onSwitches = {"IsUsingMoveMadness"};
    g_slotSkill[0] = 7;
    g_slotSkill[1] = -1;
    g_slotSkill[2] = 9;
    SetChannel(33, true);  // kPadMadness0
    SetChannel(36, true);  // kPadPotion
    RunUpdate(ResetCharacter());
    ExpectLog({"BeginSkill:7", "UsePotion"}, "madness slot 0 and potion with the switch set");

    Setup();
    g_slotSkill[0] = 7;
    g_slotSkill[1] = -1;
    g_slotSkill[2] = 9;
    SetChannel(33, true);
    SetChannel(36, true);
    RunUpdate(ResetCharacter());
    ExpectLog({}, "madness and potion with the switch clear");
}

// Cast begins on press and ends on release while latched. Open-IGM opens on release while latched.
void TestCastAndOpenIGM() {
    Setup();
    SetChannel(29, true);
    RunUpdate();
    ExpectLog({"BeginCast:0"}, "cast begins on press");

    Setup();
    SetChannel(29, false, true);
    RunUpdate();
    ExpectLog({"EndCast:0"}, "cast ends on release while latched");

    Setup();
    SetChannel(31, false, true);
    RunUpdate();
    ExpectLog({"OpenIGM"}, "open-IGM opens on release while latched");

    Setup();
    SetChannel(31, true, true);
    RunUpdate();
    ExpectLog({}, "open-IGM does nothing while held");
}

// Update returns before any control is read when there is no gamepad, or when the index has no connected pad.
void TestUpdateExits() {
    Setup();
    g_numGamepads = 0;
    RunUpdate();
    ExpectLog({}, "no gamepads");

    Setup();
    g_numGamepads = 1;
    g_firstPad = nullptr;
    RunUpdate();
    ExpectLog({}, "no connected pad");

    Setup();
    RunUpdate();
    ExpectLog({}, "a released pad issues nothing");
}

// Update is virtual: a call through a v2Controller pointer reaches the override.
void TestVirtualUpdateThroughBase() {
    Setup();
    SetChannel(26, true);
    v2Controller* base = new v2PS3MoveController(reinterpret_cast<v2Controllable*>(&g_dummyControllable), -1);
    base->Update();
    ExpectLog({"Attack"}, "virtual Update reaches the override");
    delete base;
}

}  // namespace

int main() {
    TestConstructorStoresFields();
    TestConstructorNullControllableLevelZero();
    TestEachControlReadsItsChannel();
    TestLiveControlsReadValueAndGroupsReadPrevious();
    TestPressLevelUsesBothBounds();
    TestSkillHoldBeginsAndEnds();
    TestMoveToClickStopsOnRelease();
    TestAttackWhileHeld();
    TestPrimaryHeadsToCursorAndSearchesRooms();
    TestSpotTargetStoresTheTranslatedPoint();
    TestSkillSlotsBeginAndEnd();
    TestMoveMadnessAndPotionNeedTheSwitch();
    TestCastAndOpenIGM();
    TestUpdateExits();
    TestVirtualUpdateThroughBase();
    if (g_failures != 0) {
        std::printf("r2a-game-anim-pack3-a632de-0 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("r2a-game-anim-pack3-a632de-0 test: all checks passed\n");
    return 0;
}
