// Test for batch g1-game-anim-v2EmuController-c84e52-0.
//
// Covers the logic that runs without the event headers: the mouse command choice (MouseCommandForMask), the
// head-towards offset (HeadOffsetForMask), the keyboard switch (RouteKey, with the Cmd_* calls recorded) and the
// constructor's mask reset and null-controllable path.
//
// Test-only definitions: the v2Controller base constructor, destructor and Update, the Cmd_* forwards that the switch
// calls, Character::SG_GetSkillInSlot and gAssertLevel belong to other batches. The stubs record their calls in g_log,
// so the test links with the source alone.

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/EventManager.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2EmuController.hpp"

// Detail helpers of the source. The enum must match the definition in the source file.
namespace v2EmuController_detail {
enum class MouseCommand { kNone, kMoveTo, kWarpTo, kLookAt };
MouseCommand MouseCommandForMask(unsigned int mask);
Point3D<float> HeadOffsetForMask(unsigned int mask);
void RouteKey(v2EmuController& self, int key, bool pressed);
}  // namespace v2EmuController_detail

// Engine assert level used by the base constructor's double below.
int gAssertLevel = 0;

// The constructor and destructor attach and detach the receiver on the global event manager (dh2/global/MenuManagerGlobals.hpp).
// The manager is null here: the doubles record each call in g_events and never touch the manager.
static EventManager* g_test_dword_99F740 = nullptr;
EventManager*& dword_99F740 = g_test_dword_99F740;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

namespace {
struct EventCall {
    bool attach;
    int eventId;
    const IEventReceiver* receiver;
};
std::vector<EventCall> g_events;
}  // namespace

bool EventManager::Attach(int eventId, IEventReceiver* receiver, int priority) {
    (void)priority;
    g_events.push_back({true, eventId, receiver});
    return true;
}

bool EventManager::Detach(int eventId, IEventReceiver* receiver) {
    g_events.push_back({false, eventId, receiver});
    return true;
}

namespace {

std::vector<std::string> g_log;
int g_failures = 0;
int g_slotSkill[3] = {7, -1, 9};  // Character::SG_GetSkillInSlot results for slots 0..2

void Log(const std::string& record) { g_log.push_back(record); }

std::string Vec(const Point3D<float>& p) {
    return std::to_string(static_cast<int>(p.X)) + "," + std::to_string(static_cast<int>(p.Y)) + "," +
           std::to_string(static_cast<int>(p.Z));
}

std::string Obj(const GameObject* target) { return target == nullptr ? "null" : "obj"; }

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL %s\n", what);
        ++g_failures;
    }
}

// Expects the recorded calls to equal want, then clears the log.
void ExpectLog(const std::vector<std::string>& want, const char* what) {
    if (g_log != want) {
        std::printf("FAIL %s: got", what);
        for (const std::string& s : g_log) std::printf(" [%s]", s.c_str());
        std::printf("\n");
        ++g_failures;
    }
    g_log.clear();
}

Character* FakeCharacter() { return reinterpret_cast<Character*>(static_cast<std::uintptr_t>(0x1000)); }
v2Controllable* FakeControllable() { return reinterpret_cast<v2Controllable*>(static_cast<std::uintptr_t>(0x2000)); }

}  // namespace

// ---- Test-only definitions of code owned by other batches ----

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}

v2Controller::~v2Controller() {}
void v2Controller::Update() {}

void v2Controller::Cmd_UsePotion() { Log("UsePotion"); }
void v2Controller::Cmd_UseOOI(GameObject* target) { Log("UseOOI " + Obj(target)); }
void v2Controller::Cmd_Attack(GameObject* target) { Log("Attack " + Obj(target)); }
void v2Controller::Cmd_BeginSkill(unsigned int skill) { Log("BeginSkill " + std::to_string(skill)); }
void v2Controller::Cmd_EndSkill(unsigned int skill) { Log("EndSkill " + std::to_string(skill)); }
void v2Controller::Cmd_BeginCast(bool primary) { Log(std::string("BeginCast ") + (primary ? "1" : "0")); }
void v2Controller::Cmd_EndCast(bool primary) { Log(std::string("EndCast ") + (primary ? "1" : "0")); }
void v2Controller::Cmd_HeadTowards(const Point3D<float>& pos) { Log("HeadTowards " + Vec(pos)); }

int Character::SG_GetSkillInSlot(int slot) {
    return (slot >= 0 && slot < 3) ? g_slotSkill[slot] : -1;
}

// ---- Tests ----

void TestMouseCommandForMask() {
    using v2EmuController_detail::MouseCommand;
    using v2EmuController_detail::MouseCommandForMask;
    Expect(MouseCommandForMask(0x0) == MouseCommand::kNone, "mask 0x00 chooses no command");
    Expect(MouseCommandForMask(0x1) == MouseCommand::kWarpTo, "mask 0x01 chooses WarpTo");
    Expect(MouseCommandForMask(0x2) == MouseCommand::kLookAt, "mask 0x02 chooses LookAt");
    Expect(MouseCommandForMask(0x3) == MouseCommand::kMoveTo, "mask 0x03 chooses MoveTo");
    Expect(MouseCommandForMask(0x4) == MouseCommand::kNone, "mask 0x04 chooses no command");
    Expect(MouseCommandForMask(0x5) == MouseCommand::kWarpTo, "mask 0x05 chooses WarpTo");
    Expect(MouseCommandForMask(0x6) == MouseCommand::kLookAt, "mask 0x06 chooses LookAt");
    Expect(MouseCommandForMask(0x7) == MouseCommand::kMoveTo, "mask 0x07 chooses MoveTo");
    Expect(MouseCommandForMask(0x10) == MouseCommand::kNone, "mask 0x10 chooses no command");
    Expect(MouseCommandForMask(0x12) == MouseCommand::kLookAt, "mask 0x12 (key 146) chooses LookAt");
    Expect(MouseCommandForMask(0x13) == MouseCommand::kMoveTo, "mask 0x13 chooses MoveTo");
}

void ExpectOffset(unsigned int mask, int x, int y, const char* what) {
    const Point3D<float> p = v2EmuController_detail::HeadOffsetForMask(mask);
    Expect(p.X == static_cast<float>(x) && p.Y == static_cast<float>(y) && p.Z == 0.0f, what);
}

void TestHeadOffset() {
    ExpectOffset(0x0, 0, 0, "offset of mask 0 is zero");
    ExpectOffset(0x1, -200, 0, "bit 0 sets x to -200");
    ExpectOffset(0x2, 200, 0, "bit 1 adds 200 to x");
    ExpectOffset(0x3, 0, 0, "bits 0 and 1 cancel in x");
    ExpectOffset(0x4, 0, -200, "bit 2 subtracts 200 from y");
    ExpectOffset(0x8, 0, 200, "bit 3 adds 200 to y");
    ExpectOffset(0x5, -200, -200, "bits 0 and 2");
    ExpectOffset(0x6, 200, -200, "bits 1 and 2");
    ExpectOffset(0x9, -200, 200, "bits 0 and 3");
    ExpectOffset(0xA, 200, 200, "bits 1 and 3");
    ExpectOffset(0xC, 0, 0, "bits 2 and 3 cancel in y");
    ExpectOffset(0xF, 0, 0, "all four bits cancel");
}

void TestConstructor() {
    gAssertLevel = 0;
    // Construction attaches the receiver (as IEventReceiver, at +0x10) for events 0 and 2; destruction detaches both.
    g_events.clear();
    {
        v2EmuController ctl(FakeControllable());
        const IEventReceiver* receiver = &ctl;
        Expect(g_events.size() == 2 && g_events[0].attach && g_events[0].eventId == 0 &&
                   g_events[0].receiver == receiver && g_events[1].attach && g_events[1].eventId == 2 &&
                   g_events[1].receiver == receiver,
               "constructor attaches the receiver to events 0 and 2");
        g_events.clear();
    }
    Expect(g_events.size() == 2 && !g_events[0].attach && g_events[0].eventId == 0 && !g_events[1].attach &&
               g_events[1].eventId == 2,
           "destructor detaches the receiver from events 0 and 2");
    g_events.clear();
    {
        v2EmuController ctl(FakeControllable());
        Expect(ctl.unk_014 == 0 && ctl.unk_018 == 0, "constructor clears both key-state masks");
        Expect(ctl.m_controllable == FakeControllable(), "constructor stores the controllable in the base");
        Expect(ctl.m_character == nullptr, "constructor leaves the character empty");
    }
    {
        // Null controllable at assert level 0: no output, and construction still completes.
        v2EmuController ctl(nullptr);
        Expect(ctl.unk_014 == 0 && ctl.unk_018 == 0, "null-controllable constructor clears both masks");
    }
    Expect(g_log.empty(), "constructor records no Cmd_* call");
}

void TestRouteKey() {
    using v2EmuController_detail::RouteKey;
    v2EmuController ctl(FakeControllable());
    ctl.m_character = FakeCharacter();

    // Potions: press only.
    for (int key : {49, 50, 51, 52}) {
        RouteKey(ctl, key, true);
        ExpectLog({"UsePotion"}, "potion key press");
        RouteKey(ctl, key, false);
        ExpectLog({}, "potion key release");
    }

    // OOI and attack: press only, with no target.
    RouteKey(ctl, 77, true);
    ExpectLog({"UseOOI null"}, "key 77 press uses OOI");
    RouteKey(ctl, 77, false);
    ExpectLog({}, "key 77 release does nothing");
    RouteKey(ctl, 78, true);
    ExpectLog({"Attack null"}, "key 78 press attacks");
    RouteKey(ctl, 78, false);
    ExpectLog({}, "key 78 release does nothing");

    // Cast: press begins, release ends, both with primary = false.
    RouteKey(ctl, 98, true);
    ExpectLog({"BeginCast 0"}, "key 98 press begins cast");
    RouteKey(ctl, 98, false);
    ExpectLog({"EndCast 0"}, "key 98 release ends cast");

    // Skill slots: the Character gives the skill id; -1 means no skill and no call.
    RouteKey(ctl, 95, true);
    ExpectLog({"BeginSkill 7"}, "key 95 press begins skill 7");
    RouteKey(ctl, 95, false);
    ExpectLog({"EndSkill 7"}, "key 95 release ends skill 7");
    RouteKey(ctl, 96, true);
    ExpectLog({}, "key 96 with no skill in the slot does nothing");
    RouteKey(ctl, 96, false);
    ExpectLog({}, "key 96 release with no skill does nothing");
    RouteKey(ctl, 97, true);
    ExpectLog({"BeginSkill 9"}, "key 97 press begins skill 9");

    // Without a Character, the skill keys do nothing.
    ctl.m_character = nullptr;
    RouteKey(ctl, 95, true);
    ExpectLog({}, "skill key with no character does nothing");
    ctl.m_character = FakeCharacter();

    // Head-towards keys: each press or release flips its bit group in unk_014 and heads towards the new offset.
    ctl.unk_014 = 0;
    RouteKey(ctl, 135, true);
    Expect(ctl.unk_014 == 0x9u, "key 135 press sets mask 0x9");
    ExpectLog({"HeadTowards -200,200,0"}, "key 135 press heads towards the offset of 0x9");
    RouteKey(ctl, 136, true);
    Expect(ctl.unk_014 == 0xFu, "key 136 press sets mask 0xf");
    ExpectLog({"HeadTowards 0,0,0"}, "key 136 press heads towards the offset of 0xf");
    RouteKey(ctl, 135, false);
    Expect(ctl.unk_014 == 0x6u, "key 135 release clears mask 0x9");
    ExpectLog({"HeadTowards 200,-200,0"}, "key 135 release heads towards the offset of 0x6");
    RouteKey(ctl, 137, false);
    Expect(ctl.unk_014 == 0x2u, "key 137 release clears mask 0x5");
    ExpectLog({"HeadTowards 200,0,0"}, "key 137 release heads towards the offset of 0x2");
    RouteKey(ctl, 138, true);
    Expect(ctl.unk_014 == 0xAu, "key 138 press sets mask 0xa");
    ExpectLog({"HeadTowards 200,200,0"}, "key 138 press heads towards the offset of 0xa");
    RouteKey(ctl, 138, false);
    Expect(ctl.unk_014 == 0u, "key 138 release clears mask 0xa");
    ExpectLog({"HeadTowards 0,0,0"}, "key 138 release heads towards zero");

    // unk_018 bit groups: no command is recorded.
    ctl.unk_018 = 0;
    RouteKey(ctl, 145, true);
    Expect(ctl.unk_018 == 0x9u, "key 145 press sets mask 0x9 in unk_018");
    RouteKey(ctl, 146, true);
    Expect(ctl.unk_018 == 0x1Bu, "key 146 press sets mask 0x12 in unk_018");
    RouteKey(ctl, 145, false);
    Expect(ctl.unk_018 == 0x12u, "key 145 release clears mask 0x9 in unk_018");
    RouteKey(ctl, 146, false);
    Expect(ctl.unk_018 == 0u, "key 146 release clears mask 0x12 in unk_018");
    ExpectLog({}, "unk_018 keys record no command");

    // Ids outside the switch do nothing.
    for (int key : {0, 48, 53, 76, 79, 94, 99, 134, 139, 144, 147, 200}) {
        RouteKey(ctl, key, true);
    }
    Expect(ctl.unk_014 == 0u && ctl.unk_018 == 0u, "unlisted key ids leave the masks alone");
    ExpectLog({}, "unlisted key ids record no call");
}

int main() {
    TestMouseCommandForMask();
    TestHeadOffset();
    TestConstructor();
    TestRouteKey();
    if (g_failures == 0) {
        std::printf("v2EmuController tests passed\n");
        return 0;
    }
    std::printf("%d v2EmuController test failure(s)\n", g_failures);
    return 1;
}
