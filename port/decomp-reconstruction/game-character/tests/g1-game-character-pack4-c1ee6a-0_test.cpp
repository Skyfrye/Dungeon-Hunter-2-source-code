// Test for batch g1-game-character-pack4-c1ee6a-0 (CSLiftingIdle and CSLiftingMove).
//
// The batch source calls into other classes: CharAnimator, CharProperties, Character, CharState, CharStateMachine, CSIdle,
// DebugSwitches, GameObject, LiftableObject, PhysicalObject and PyDataConstants. The link stubs below record what they are
// given, so the checks can compare the calls each hook makes. Nothing is constructed. Characters, lifted objects and the
// state objects are zero-filled storage. Each character's primary vtable has one live slot, IsPlayer, which returns a
// flag set by the check. The slot is found from the member pointer (Itanium ABI).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/CSIdle.hpp"
#include "dh2/CSLiftingIdle.hpp"
#include "dh2/CSLiftingMove.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/CharState.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using RegHandler = bool (Character::*)(int, void*, int, int&);

// ---- recorded calls ------------------------------------------------------------------------------------------------

struct Registration {
    int stateId;
    int eventId;
    int nextState;
    RegHandler handler;
};

struct InteractCall {
    int kind;
    bool flag;
    void* target;
    bool immediate;
};

struct IdleCall {
    int eventId;
    Character* character;
    CharStateMachine* machine;
};

std::vector<Registration> g_registrations;
std::vector<InteractCall> g_interacts;
std::vector<IdleCall> g_idle;
std::vector<int> g_raised;
std::vector<int> g_animSet;
std::vector<float> g_animSpeed;
int g_loadCount = 0;
int g_switchCount = 0;
int g_stopCount = 0;
int g_pinCount = 0;
int g_unpinCount = 0;
int g_dropCount = 0;

// Values the stubs return.
int g_stanceConstant = 0;        // AnimStancedAnim/SL__LIST_IPHONE
int g_stanceValue = 0x100;       // Character::GetAnimStance
int g_walkSpeedBits = 0;         // CharProperties::PROPS_GetWalkSpeed (bits of a float)
bool g_atDestination = false;    // GameObject::IsAtDestination
bool g_isPlayer = false;         // Character::IsPlayer, through the fake vtable
Structs::CharAnim* g_row = nullptr;  // Character::GetCharAnimTable

void ResetRecords() {
    g_registrations.clear();
    g_interacts.clear();
    g_idle.clear();
    g_raised.clear();
    g_animSet.clear();
    g_animSpeed.clear();
    g_loadCount = g_switchCount = g_stopCount = g_pinCount = g_unpinCount = g_dropCount = 0;
}

// ---- fake vtable and storage ----------------------------------------------------------------------------------------

bool FakeIsPlayer(const Character*) { return g_isPlayer; }

void* g_fakeVtable[32] = {};

template <typename PM>
std::size_t VtableSlotOf(PM pm) {
    static_assert(sizeof(PM) == 2 * sizeof(void*), "unexpected member pointer size");
    std::uintptr_t words[2];
    std::memcpy(words, &pm, sizeof words);
    return static_cast<std::size_t>((words[0] - 1) / sizeof(void*));
}

constexpr int kCharacterPool = 4;
alignas(16) unsigned char g_characterPool[kCharacterPool][sizeof(Character)];
alignas(16) unsigned char g_liftablePool[2][sizeof(LiftableObject)];
alignas(16) unsigned char g_rowStorage[sizeof(Structs::CharAnim)];
alignas(16) unsigned char g_pyDataStorage[64];
alignas(16) unsigned char g_stateStorage[64];

// A zero-filled Character whose primary vptr is the fake table. The IsPlayer slot is the only live entry.
Character* FreshCharacter(int index) {
    std::memset(g_characterPool[index], 0, sizeof(Character));
    Character* character = reinterpret_cast<Character*>(g_characterPool[index]);
    *reinterpret_cast<void***>(character) = g_fakeVtable;
    return character;
}

// A zero-filled LiftableObject with the given owner and GO id.
LiftableObject* FreshLiftable(int index, GameObject* owner, int goId) {
    std::memset(g_liftablePool[index], 0, sizeof(LiftableObject));
    LiftableObject* object = reinterpret_cast<LiftableObject*>(g_liftablePool[index]);
    object->m_goId = static_cast<ObjectBase::GO_IDS>(goId);
    object->m_owner = owner;
    return object;
}

}  // namespace

// ---- link stubs (every external the batch source references) -----------------------------------------------------
// These define the class members at global scope, so they sit outside the anonymous namespace.

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() { ++g_loadCount; }
bool DebugSwitches::GetSwitch(const std::string&) {
    ++g_switchCount;
    return false;
}

void CharAnimator::ANIM_Set(int animId) { g_animSet.push_back(animId); }
void CharAnimator::ANIM_SetSpeed(float speed) { g_animSpeed.push_back(speed); }

int CharProperties::PROPS_GetWalkSpeed() const { return g_walkSpeedBits; }

const Structs::CharAnim* Character::GetCharAnimTable() const { return g_row; }
int Character::GetAnimStance() const { return g_stanceValue; }
int Character::RaiseEvent(int eventId, void*) {
    g_raised.push_back(eventId);
    return 0;
}
bool Character::CSM_Injured(int, void*, int, int&) { return false; }
bool Character::CSM_Interrupted(int, void*, int, int&) { return false; }

void GameObject::Stop() { ++g_stopCount; }
bool GameObject::IsAtDestination() const { return g_atDestination; }

void PhysicalObject::pin() { ++g_pinCount; }
void PhysicalObject::unpin() { ++g_unpinCount; }

bool LiftableObject::Drop() {
    ++g_dropCount;
    return true;
}

void CharStateMachine::SM_RegisterEvent(int stateId, int eventId, int nextState, RegHandler handler) {
    g_registrations.push_back(Registration{stateId, eventId, nextState, handler});
}
int CharStateMachine::SM_SetInteractState(int interactKind, bool flag, void* target, bool immediate) {
    g_interacts.push_back(InteractCall{interactKind, flag, target, immediate});
    return 1;
}

void CSIdle::IdleCommonUpdate(int eventId, Character* character, CharStateMachine* machine) {
    g_idle.push_back(IdleCall{eventId, character, machine});
}

CharState::~CharState() {}

PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(g_pyDataStorage);
}
int PyDataConstants::getConstant(const char*, const char*) const { return g_stanceConstant; }

namespace {

// ---- checks ---------------------------------------------------------------------------------------------------------

// Shared state for the blur and event checks: one character, one held lifted object.
void SetUpHeld(Character* character, LiftableObject* held) {
    character->m_interactTarget = held;
}

// OnBlur of CSLiftingIdle and CSLiftingMove drops the held object unless the next state is 13, 18 or 19, and clears the pointer
// on the same condition. The probe runs once per call.
void CheckBlurHeldRelease(bool moveState) {
    for (int next = 0; next < 40; ++next) {
        ResetRecords();
        Character* character = FreshCharacter(0);
        LiftableObject* held = FreshLiftable(0, character, 6);
        SetUpHeld(character, held);

        CSLiftingIdle idle;
        CSLiftingMove move;
        if (moveState) {
            move.OnBlur(0, character, nullptr, next);
        } else {
            idle.OnBlur(0, character, nullptr, next);
        }

        const bool keeps = next == 13 || next == 18 || next == 19;
        CHECK(g_loadCount == 1 && g_switchCount == 1);
        CHECK(g_dropCount == (keeps ? 0 : 1));
        CHECK(character->m_interactTarget == (keeps ? static_cast<void*>(held) : nullptr));
    }

    // Not owned by this character: no drop, but the pointer is still cleared.
    ResetRecords();
    Character* character = FreshCharacter(1);
    LiftableObject* stranger = FreshLiftable(0, nullptr, 6);
    SetUpHeld(character, stranger);
    if (moveState) {
        CSLiftingMove move;
        move.OnBlur(0, character, nullptr, 0);
    } else {
        CSLiftingIdle idle;
        idle.OnBlur(0, character, nullptr, 0);
    }
    CHECK(g_dropCount == 0);
    CHECK(character->m_interactTarget == nullptr);

    // Wrong GO id (not 6): no drop.
    ResetRecords();
    character = FreshCharacter(1);
    LiftableObject* other = FreshLiftable(0, character, 5);
    SetUpHeld(character, other);
    if (moveState) {
        CSLiftingMove move;
        move.OnBlur(0, character, nullptr, 0);
    } else {
        CSLiftingIdle idle;
        idle.OnBlur(0, character, nullptr, 0);
    }
    CHECK(g_dropCount == 0);
    CHECK(character->m_interactTarget == nullptr);

    // No held object: nothing to drop and nothing to clear.
    ResetRecords();
    character = FreshCharacter(1);
    if (moveState) {
        CSLiftingMove move;
        move.OnBlur(0, character, nullptr, 0);
    } else {
        CSLiftingIdle idle;
        idle.OnBlur(0, character, nullptr, 0);
    }
    CHECK(g_dropCount == 0);
    CHECK(character->m_interactTarget == nullptr);
}

void CheckMoveBlurPhysics() {
    // With a physics object: stopped once, pinned once. Without: stopped once, never pinned.
    ResetRecords();
    Character* character = FreshCharacter(2);
    PhysicalObject* physical = reinterpret_cast<PhysicalObject*>(g_stateStorage);
    character->m_physicalObject = physical;
    CSLiftingMove move;
    move.OnBlur(0, character, nullptr, 0);
    CHECK(g_stopCount == 1);
    CHECK(g_pinCount == 1);

    ResetRecords();
    character = FreshCharacter(2);
    move.OnBlur(0, character, nullptr, 0);
    CHECK(g_stopCount == 1);
    CHECK(g_pinCount == 0);
}

void CheckFocus() {
    // Lifting idle: flags 0x2380, anim is row m_w20, stance added when the constant has bit 0x1000000.
    std::memset(g_rowStorage, 0, sizeof g_rowStorage);
    g_row = reinterpret_cast<Structs::CharAnim*>(g_rowStorage);
    g_row->LiftIdle = 40;
    g_row->LiftMove = 77;

    ResetRecords();
    g_stanceConstant = 0;
    Character* character = FreshCharacter(0);
    CSLiftingIdle idle;
    idle.OnFocus(0, character, nullptr, 0, 0, nullptr);
    CHECK(character->m_stateFlags == 9088u);
    CHECK(g_animSet.size() == 1 && g_animSet[0] == 40);
    CHECK(g_animSpeed.empty());
    CHECK(g_loadCount == 1 && g_switchCount == 1);

    ResetRecords();
    g_stanceConstant = 0x1000000;
    character = FreshCharacter(0);
    idle.OnFocus(0, character, nullptr, 0, 0, nullptr);
    CHECK(g_animSet.size() == 1 && g_animSet[0] == 40 + 0x100);

    // Lifting move: flags 0x23c1, anim is row m_w21, speed is the walk speed bits, physics object unpinned when present.
    const float walk = 1.5f;
    std::int32_t bits = 0;
    std::memcpy(&bits, &walk, sizeof bits);
    g_walkSpeedBits = bits;

    ResetRecords();
    g_stanceConstant = 0;
    character = FreshCharacter(0);
    character->m_physicalObject = reinterpret_cast<PhysicalObject*>(g_stateStorage);
    CSLiftingMove move;
    move.OnFocus(0, character, nullptr, 0, 0, nullptr);
    CHECK(character->m_stateFlags == 9153u);
    CHECK(g_animSet.size() == 1 && g_animSet[0] == 77);
    CHECK(g_animSpeed.size() == 1 && g_animSpeed[0] == 1.5f);
    CHECK(g_unpinCount == 1);
    CHECK(g_loadCount == 1 && g_switchCount == 1);

    ResetRecords();
    g_stanceConstant = 0x1000000;
    character = FreshCharacter(0);
    move.OnFocus(0, character, nullptr, 0, 0, nullptr);
    CHECK(g_animSet.size() == 1 && g_animSet[0] == 77 + 0x100);
    CHECK(g_unpinCount == 0);  // no physics object on this character
    g_stanceConstant = 0;
}

// OnEvent of both states: event 6 with a held object starts the interaction with kind 5, not deferred.
void CheckOnEvent(bool moveState) {
    Character* character = FreshCharacter(0);
    LiftableObject* held = FreshLiftable(0, character, 6);
    CSLiftingIdle idle;
    CSLiftingMove move;

    ResetRecords();
    SetUpHeld(character, held);
    if (moveState) {
        move.OnEvent(0, character, nullptr, 6, nullptr);
    } else {
        idle.OnEvent(0, character, nullptr, 6, nullptr);
    }
    CHECK(g_interacts.size() == 1);
    if (g_interacts.size() == 1) {
        CHECK(g_interacts[0].kind == 5);
        CHECK(g_interacts[0].flag == false);
        CHECK(g_interacts[0].target == static_cast<void*>(held));
        CHECK(g_interacts[0].immediate == true);
    }

    ResetRecords();
    if (moveState) {
        move.OnEvent(0, character, nullptr, 5, nullptr);
    } else {
        idle.OnEvent(0, character, nullptr, 5, nullptr);
    }
    CHECK(g_interacts.empty());

    ResetRecords();
    SetUpHeld(character, nullptr);
    if (moveState) {
        move.OnEvent(0, character, nullptr, 6, nullptr);
    } else {
        idle.OnEvent(0, character, nullptr, 6, nullptr);
    }
    CHECK(g_interacts.empty());
}

// CSLiftingMove::OnUpdate raises event 63 when there is no heading, or when there is no target, the character is not a player
// and it is at its destination.
void CheckMoveUpdate() {
    struct Case {
        bool hasHeading;
        bool hasTarget;
        bool isPlayer;
        bool atDestination;
        bool raises;
    };
    const Case cases[] = {
        {false, false, false, false, true},
        {false, false, true, true, true},
        {true, false, false, true, true},
        {true, false, true, true, false},
        {true, false, false, false, false},
        {true, true, false, true, false},
    };
    GameObject* dummyTarget = reinterpret_cast<GameObject*>(g_stateStorage);
    CSLiftingMove move;
    for (const Case& c : cases) {
        ResetRecords();
        Character* character = FreshCharacter(0);
        character->m_hasHeading = c.hasHeading ? 1 : 0;
        character->m_target = c.hasTarget ? dummyTarget : nullptr;
        g_isPlayer = c.isPlayer;
        g_atDestination = c.atDestination;
        move.OnUpdate(0, character, nullptr);
        CHECK(g_raised.size() == (c.raises ? 1u : 0u));
        if (c.raises && g_raised.size() == 1) {
            CHECK(g_raised[0] == 63);
        }
    }
    g_isPlayer = false;
    g_atDestination = false;
}

void CheckIdleUpdate() {
    ResetRecords();
    Character* character = FreshCharacter(0);
    CharStateMachine* machine = character;
    CSLiftingIdle idle;
    idle.OnUpdate(7, character, machine);
    CHECK(g_idle.size() == 1);
    if (g_idle.size() == 1) {
        CHECK(g_idle[0].eventId == 7);
        CHECK(g_idle[0].character == character);
        CHECK(g_idle[0].machine == machine);
    }
}

void CheckRegistrations(bool moveState) {
    ResetRecords();
    Character* character = FreshCharacter(0);
    CSLiftingIdle idle;
    CSLiftingMove move;
    if (moveState) {
        move.OnInit(42, character, nullptr);
    } else {
        idle.OnInit(42, character, nullptr);
    }

    if (moveState) {
        const Registration expected[] = {
            {42, 63, 18, nullptr},
            {42, 50008, 12, nullptr},
            {42, 50010, 11, &Character::CSM_Injured},
            {42, 50011, 10, &Character::CSM_Interrupted},
            {42, 50012, 9, &Character::CSM_Interrupted},
            {42, 50013, 8, &Character::CSM_Interrupted},
        };
        CHECK(g_registrations.size() == 6);
        for (std::size_t i = 0; i < 6 && i < g_registrations.size(); ++i) {
            CHECK(g_registrations[i].stateId == expected[i].stateId);
            CHECK(g_registrations[i].eventId == expected[i].eventId);
            CHECK(g_registrations[i].nextState == expected[i].nextState);
            CHECK(g_registrations[i].handler == expected[i].handler);
        }
    } else {
        const Registration expected[] = {
            {42, 35, 18, nullptr},
            {42, 34, 18, nullptr},
            {42, 50008, 12, nullptr},
            {42, 50010, 11, &Character::CSM_Injured},
            {42, 50011, 10, &Character::CSM_Interrupted},
            {42, 50012, 9, &Character::CSM_Interrupted},
            {42, 50013, 8, &Character::CSM_Interrupted},
            {42, 50001, 19, nullptr},
            {42, 50002, 18, nullptr},
        };
        CHECK(g_registrations.size() == 9);
        for (std::size_t i = 0; i < 9 && i < g_registrations.size(); ++i) {
            CHECK(g_registrations[i].stateId == expected[i].stateId);
            CHECK(g_registrations[i].eventId == expected[i].eventId);
            CHECK(g_registrations[i].nextState == expected[i].nextState);
            CHECK(g_registrations[i].handler == expected[i].handler);
        }
    }
}

}  // namespace

int main() {
    g_fakeVtable[VtableSlotOf(&Character::IsPlayer)] = reinterpret_cast<void*>(&FakeIsPlayer);

    CheckBlurHeldRelease(false);
    CheckBlurHeldRelease(true);
    CheckMoveBlurPhysics();
    CheckFocus();
    CheckOnEvent(false);
    CheckOnEvent(true);
    CheckMoveUpdate();
    CheckIdleUpdate();
    CheckRegistrations(false);
    CheckRegistrations(true);

    if (g_failures != 0) {
        std::fprintf(stderr, "g1-game-character-pack4-c1ee6a-0: %d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-pack4-c1ee6a-0: all checks passed\n");
    return 0;
}
