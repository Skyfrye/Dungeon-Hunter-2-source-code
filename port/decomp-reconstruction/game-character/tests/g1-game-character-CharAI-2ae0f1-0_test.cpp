// Test for batch g1-game-character-CharAI-2ae0f1-0.
//
// The batch source calls functions of other batches (Character, CharStateMachine, CharTimers, CharProperties,
// GameObject, ObjectBase, ObjectHandle, v2Controller and the rest of CharAI). They are stubbed below so the
// executable links. The stubs are only reached by the paths the checks use, and those paths make no virtual call.
//
// Neither CharAI nor Character is constructed: the storage is zero-filled and only non-virtual members run. The
// private members are reached through explicit instantiations (the usual access trick). The unk_5c map is
// placement-constructed in the zero-filled CharAI storage, because it has to be a valid std::map before use.

#include <cstdio>
#include <deque>
#include <map>
#include <new>

#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/v2Controller.hpp"

// ---- Globals the stubs record or read -----------------------------------------------------------------------

namespace {
const CharTimers* g_lastTimerOwner = nullptr;
unsigned int g_lastTimerMs = 0;
int g_lastTimerRepeat = -1;
int g_lastTimerEvent = -1;
void* g_lastTimerUser = nullptr;
bool g_isFollower = false;
int g_lastStateEvent = -1;
constexpr int kStateResult = 42;  // what the CharStateMachine::RaiseStateEvent stub returns
}  // namespace

// ---- Stubs for symbols defined by other batches (only the linker needs them) ----------------------------------

int gAssertLevel = 0;
bool v2Controller::s_blocked = false;
int CharAI::s_stepAvailableStep = 0;
int CharAI::s_updateTimer = 0;
std::deque<CharAI*> CharAI::s_updateQueue;

bool CharAI::AI_IsInCloseRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInCombat() const { return false; }
bool CharAI::AI_IsInMeleeRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInRange(const GameObject*) const { return false; }
bool CharAI::AI_IsInSight(const GameObject*) const { return false; }
bool CharAI::_OnAnimEvent(const char*) { return false; }
bool CharAI::_OnAnimSequenceBegin() { return false; }
bool CharAI::_OnAnimSequenceEnd() { return false; }
bool CharAI::_OnAnimStepBegin() { return false; }
bool CharAI::_OnAnimStepEnd() { return false; }
bool CharAI::_OnEndOfAnim() { return false; }
bool CharAI::_OnEndOfAnimSection() { return false; }
void CharAI::_SkillBlur() {}
void CharAI::_SkillCleanUp() {}
void CharAI::_SkillFocus() {}
void CharAI::_SpellBlur() {}
void CharAI::_SpellCleanUp() {}
void CharAI::_SpellFocus() {}

void CharProperties::HandleDots() {}
int CharStateMachine::RaiseStateEvent(int eventId, void*) {
    g_lastStateEvent = eventId;
    return kStateResult;  // the test checks RaiseAIEvent returns this value on its tail-call paths
}
int CharStateMachine::SM_GetState() const { return -1; }
bool CharStateMachine::SM_IsAwaitingToSpawn() const { return false; }
bool CharStateMachine::SM_IsInLimbus() const { return false; }

int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    g_lastTimerOwner = this;
    g_lastTimerMs = durationMs;
    g_lastTimerRepeat = repeat;
    g_lastTimerEvent = eventId;
    g_lastTimerUser = userData;
    return 7;  // the test checks this value comes back from AI_PauseUpdate
}

void Character::F_ApplyResult(const AttackResult&, Character*, Character*, bool) {}
void Character::F_MeleeAttack(AttackResult&, Character*, Character*, bool, bool) {}
int Character::GetCharAIId() const { return 0; }
bool Character::IsFaerie() const { return false; }
bool Character::IsFollower() const { return g_isFollower; }
int Character::RaiseEvent(int, void*) { return 0; }
void Character::RegenTick(bool) {}

void GameObject::EnableCollisions() {}

// Script calls made by StepLoadCommon, StepSetCharacter and StepBindFunction. They are non-virtual, so they run without
// a script object: the stubs only record that they were reached.
int LuaScript::Load(const char*) { return 0; }
void CharAIScript::SetCharacter(Character*) {}
void CharAIScript::BindFunction() {}

ObjectHandle ObjectBase::GetHandle() { return ObjectHandle(); }
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return nullptr; }

// ---- Checks --------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);           \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

// Access to private members. The explicit instantiation of Rob defines a friend function that returns the
// member's address, so get(Tag{}) yields a pointer to the private member.
template <typename Tag, typename Tag::type M>
struct Rob {
    friend typename Tag::type get(Tag) { return M; }
};

// StepResetAvailableStep is static in the binary (0x3cb2f0 takes no `this`), so its address is a plain function
// pointer, not a pointer to member.
struct TagStepReset { using type = void (*)(); friend type get(TagStepReset); };
struct TagStepQuery { using type = int (CharAI::*)(int); friend type get(TagStepQuery); };
struct TagUpdatePointers { using type = void (CharAI::*)(); friend type get(TagUpdatePointers); };
struct TagLoadStep { using type = int CharAI::*; friend type get(TagLoadStep); };
struct TagCharacter { using type = Character* CharAI::*; friend type get(TagCharacter); };
struct TagUpdatePaused { using type = bool CharAI::*; friend type get(TagUpdatePaused); };
struct TagTarget { using type = GameObject* CharAI::*; friend type get(TagTarget); };
struct TagLastTarget { using type = GameObject* CharAI::*; friend type get(TagLastTarget); };
struct TagMaster { using type = Character* CharAI::*; friend type get(TagMaster); };
struct TagUnk58 { using type = GameObject* CharAI::*; friend type get(TagUnk58); };
using CharMap = std::map<unsigned int, Character*>;
struct TagUnk5c { using type = CharMap CharAI::*; friend type get(TagUnk5c); };

template struct Rob<TagStepReset, &CharAI::StepResetAvailableStep>;
template struct Rob<TagStepQuery, &CharAI::StepQueryAvailableStep>;
template struct Rob<TagUpdatePointers, &CharAI::_UpdatePointers>;
template struct Rob<TagLoadStep, &CharAI::m_loadStep>;
template struct Rob<TagCharacter, &CharAI::m_character>;
template struct Rob<TagUpdatePaused, &CharAI::m_updatePaused>;
template struct Rob<TagTarget, &CharAI::m_target>;
template struct Rob<TagLastTarget, &CharAI::m_lastTarget>;
template struct Rob<TagMaster, &CharAI::m_master>;
template struct Rob<TagUnk58, &CharAI::unk_58>;
template struct Rob<TagUnk5c, &CharAI::unk_5c>;

// Zero-filled storage for the objects. Only the addresses and plain fields are used.
alignas(CharAI) unsigned char g_aiStorage[sizeof(CharAI)];
alignas(Character) unsigned char g_ownerStorage[sizeof(Character)];
alignas(Character) unsigned char g_otherStorage[sizeof(Character)];

CharAI* AI() { return reinterpret_cast<CharAI*>(g_aiStorage); }
Character* Owner() { return reinterpret_cast<Character*>(g_ownerStorage); }
Character* Other() { return reinterpret_cast<Character*>(g_otherStorage); }

void TestStepSharedBudget() {
    CharAI* self = AI();
    const auto reset = get(TagStepReset{});
    const auto query = get(TagStepQuery{});
    reset();  // static: no instance involved
    EXPECT(CharAI::s_stepAvailableStep == 3);
    EXPECT((self->*query)(2) == 2);
    EXPECT(CharAI::s_stepAvailableStep == 1);
    EXPECT((self->*query)(5) == 1);  // capped at what is left
    EXPECT(CharAI::s_stepAvailableStep == 0);
    EXPECT((self->*query)(4) == 0);  // nothing left
    reset();  // static: no instance involved
    EXPECT((self->*query)(3) == 3);
    EXPECT(CharAI::s_stepAvailableStep == 0);
}

void TestLoadState() {
    CharAI* self = AI();
    const auto loadStep = get(TagLoadStep{});
    self->*loadStep = 6;
    EXPECT(!self->IsScriptProcessLoaded());
    self->*loadStep = 7;
    EXPECT(self->IsScriptProcessLoaded());
}

void TestSetCharacter() {
    CharAI* self = AI();
    const auto character = get(TagCharacter{});
    Character* owner = Owner();
    self->SetCharacter(owner);
    EXPECT(self->*character == owner);
    self->SetCharacter(nullptr);  // assert path, silent at gAssertLevel 0
    EXPECT(self->*character == nullptr);
}

void TestAIPauseUpdate() {
    CharAI* self = AI();
    Character* owner = Owner();
    self->SetCharacter(owner);
    const auto paused = get(TagUpdatePaused{});
    self->*paused = false;
    const int slot = self->AI_PauseUpdate(250);
    EXPECT(slot == 7);
    EXPECT(self->*paused);
    EXPECT(g_lastTimerMs == 250);
    EXPECT(g_lastTimerRepeat == 0);
    EXPECT(g_lastTimerEvent == 49);
    EXPECT(g_lastTimerUser == nullptr);
    EXPECT(g_lastTimerOwner == static_cast<const CharTimers*>(owner));
}

void TestUpdatePointers() {
    CharAI* self = AI();
    const auto update = get(TagUpdatePointers{});
    const auto target = get(TagTarget{});
    const auto lastTarget = get(TagLastTarget{});
    const auto master = get(TagMaster{});
    const auto unk58 = get(TagUnk58{});
    const auto map = get(TagUnk5c{});

    Character* dead = Owner();
    dead->m_markedForDeletion = 1;
    Character* alive = Other();
    alive->m_markedForDeletion = 0;

    // unk_5c is a std::map: build it in place in the zero-filled storage before use.
    new (&(self->*map)) CharMap();
    (self->*map)[1] = dead;
    (self->*map)[2] = alive;

    self->*target = dead;
    self->*lastTarget = dead;
    self->*master = dead;
    self->*unk58 = alive;

    (self->*update)();

    EXPECT(self->*target == nullptr);
    EXPECT(self->*lastTarget == nullptr);
    EXPECT(self->*master == nullptr);
    EXPECT(self->*unk58 == alive);
    EXPECT((self->*map)[1] == nullptr);
    EXPECT((self->*map)[2] == alive);
    (self->*map).~CharMap();
}

void TestIsMyTurn() {
    CharAI* self = AI();
    self->SetCharacter(Owner());
    CharAI::s_updateQueue.clear();
    CharAI::s_updateQueue.push_back(self);

    CharAI::s_updateTimer = 0;
    g_isFollower = false;
    EXPECT(self->IsMyTurn(nullptr));  // timer expired and this AI is at the front

    CharAI::s_updateTimer = 5;
    g_isFollower = true;
    EXPECT(self->IsMyTurn(nullptr));  // follower: the turn is always ours

    CharAI::s_updateQueue.clear();
    CharAI::s_updateTimer = 0;
    g_isFollower = false;
    CharAI::s_updateQueue.clear();
}

void TestRaiseAIEventStateResult() {
    CharAI* self = AI();
    self->SetCharacter(Owner());
    g_lastStateEvent = -1;
    // Event 48 is a plain state-machine event: the original tail-calls RaiseStateEvent and returns its int.
    EXPECT(self->RaiseAIEvent(48, nullptr) == kStateResult);
    EXPECT(g_lastStateEvent == 48);
    // Event 0 goes to the state machine as 50001 and returns the same int.
    EXPECT(self->RaiseAIEvent(0, nullptr) == kStateResult);
    EXPECT(g_lastStateEvent == 50001);
    // Event 49 only clears the pause flag and returns 0 (no state-machine call).
    g_lastStateEvent = -1;
    EXPECT(self->RaiseAIEvent(49, nullptr) == 0);
    EXPECT(g_lastStateEvent == -1);
}

}  // namespace

int main() {
    TestStepSharedBudget();
    TestLoadState();
    TestSetCharacter();
    TestAIPauseUpdate();
    TestUpdatePointers();
    TestIsMyTurn();
    TestRaiseAIEventStateResult();
    if (g_failures) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-CharAI-2ae0f1-0 test: all checks passed\n");
    return 0;
}
