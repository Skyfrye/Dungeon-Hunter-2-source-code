// Test for batch g1-game-character-CharAI-2ae0f1-7.
//
// The batch source calls functions of other batches and categories (CharAI queries and hooks, CharAnimator,
// CharStateMachine, CharTimers, Character, DebugSwitches, GameObject, ItemInventory, ObjectBase, ObjectHandle and
// v2Controller). The link stubs at the end of this file abort if they are reached. The checks below run only the aggro
// paths, which do not reach them: AI_SetAggro, AI_AddAggro and AI_GetAggroEntry (through its converse map).
//
// Characters are never constructed. Each is zero-filled Character storage with a fake primary vtable (IsPlayer, IsDead)
// and a fake CharAI vtable (OnAggro, OnDeAggro) at its CharAI subobject. The two aggro maps are constructed in place with
// placement new. Vtable slots are found from member pointers (Itanium ABI). Private CharAI members are reached through
// explicit instantiations (the usual access trick).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <initializer_list>
#include <map>
#include <new>
#include <string>
#include <vector>

#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using AggroMap = std::map<Character*, float>;

// ---- Vtable slot of a virtual member function (Itanium ABI) ---------------------------------------------------------

template <typename PM>
std::size_t VtableSlotOf(PM pm) {
    static_assert(sizeof(PM) == 2 * sizeof(void*), "unexpected member pointer size");
    std::uintptr_t words[2];
    std::memcpy(words, &pm, sizeof words);
    return static_cast<std::size_t>((words[0] - 1) / sizeof(void*));
}

// ---- Private member access (explicit instantiation) -----------------------------------------------------------------

template <typename Tag, typename Tag::type M>
struct Robber {
    friend typename Tag::type get(Tag) { return M; }
};

struct CharacterTag {
    using type = Character* CharAI::*;
    friend type get(CharacterTag);
};
template struct Robber<CharacterTag, &CharAI::m_character>;

struct AggroTag {
    using type = AggroMap CharAI::*;
    friend type get(AggroTag);
};
template struct Robber<AggroTag, &CharAI::m_aggro>;

struct AggroedByTag {
    using type = AggroMap CharAI::*;
    friend type get(AggroedByTag);
};
template struct Robber<AggroedByTag, &CharAI::m_aggroedBy>;

using CharacterMemberPtr = Character* CharAI::*;
using AggroMemberPtr = AggroMap CharAI::*;

CharacterMemberPtr CharacterMember() { return get(CharacterTag{}); }
AggroMemberPtr AggroMember() { return get(AggroTag{}); }
AggroMemberPtr AggroedByMember() { return get(AggroedByTag{}); }

// ---- Fake characters and vtables ------------------------------------------------------------------------------------

struct FakeCharacter {
    alignas(Character) unsigned char mem[sizeof(Character)];
};

FakeCharacter g_ownerStore;  // zero-filled storage, built by InitCharacter
FakeCharacter g_aStore;
FakeCharacter g_bStore;
FakeCharacter g_cStore;

Character* g_owner = nullptr;
Character* g_a = nullptr;
Character* g_b = nullptr;
Character* g_c = nullptr;

void* g_charVtable[64];  // primary Character vtable: IsPlayer and IsDead are set in InitVtables
void* g_aiVtable[64];    // CharAI vtable: OnAggro and OnDeAggro are set in InitVtables

std::vector<const void*> g_players;
std::vector<const void*> g_dead;

struct AggroCall {
    const CharAI* self;
    const Character* c;
};
std::vector<AggroCall> g_aggroCalls;
std::vector<AggroCall> g_deAggroCalls;

bool Contains(const std::vector<const void*>& v, const void* p) {
    for (const void* q : v) {
        if (q == p) {
            return true;
        }
    }
    return false;
}

bool StubIsPlayer(const Character* self) { return Contains(g_players, self); }
bool StubIsDead(const Character* self) { return Contains(g_dead, self); }
void StubOnAggro(CharAI* self, Character* c) { g_aggroCalls.push_back(AggroCall{self, c}); }
void StubOnDeAggro(CharAI* self, Character* c) { g_deAggroCalls.push_back(AggroCall{self, c}); }

void InitVtables() {
    std::memset(g_charVtable, 0, sizeof g_charVtable);
    std::memset(g_aiVtable, 0, sizeof g_aiVtable);
    g_charVtable[VtableSlotOf(&Character::IsPlayer)] = reinterpret_cast<void*>(&StubIsPlayer);
    g_charVtable[VtableSlotOf(&Character::IsDead)] = reinterpret_cast<void*>(&StubIsDead);
    g_aiVtable[VtableSlotOf(&CharAI::OnAggro)] = reinterpret_cast<void*>(&StubOnAggro);
    g_aiVtable[VtableSlotOf(&CharAI::OnDeAggro)] = reinterpret_cast<void*>(&StubOnDeAggro);
}

// The fake character in storage f: primary and CharAI vtable pointers, the two aggro maps built in place, and the owner
// pointer of its CharAI set to itself.
Character* InitCharacter(FakeCharacter& f) {
    Character* c = reinterpret_cast<Character*>(f.mem);
    *reinterpret_cast<void**>(c) = static_cast<void*>(g_charVtable);
    CharAI* ai = c;
    *reinterpret_cast<void**>(ai) = static_cast<void*>(g_aiVtable);
    ::new (static_cast<void*>(&(ai->*AggroMember()))) AggroMap();
    ::new (static_cast<void*>(&(ai->*AggroedByMember()))) AggroMap();
    ai->*CharacterMember() = c;
    return c;
}

CharAI* AI(Character* c) { return c; }  // the CharAI base subobject (implicit upcast)

void ResetState() {
    g_players.clear();
    g_dead.clear();
    g_aggroCalls.clear();
    g_deAggroCalls.clear();
    for (Character* c : {g_owner, g_a, g_b, g_c}) {
        CharAI* ai = c;
        (ai->*AggroMember()).clear();
        (ai->*AggroedByMember()).clear();
    }
}

bool HasEntry(const AggroMap& m, Character* c) { return m.find(c) != m.end(); }

float ValueOr(const AggroMap& m, Character* c, float fallback) {
    const auto it = m.find(c);
    return it == m.end() ? fallback : it->second;
}

// ---- Checks ---------------------------------------------------------------------------------------------------------

// AI_SetAggro returns the aggro it sets; both maps record it, and OnAggro is called once for the new entry.
void TestSetAggroNew() {
    ResetState();
    CharAI* owner = AI(g_owner);
    CharAI* a = AI(g_a);
    const float r = owner->AI_SetAggro(g_a, 5.0f);
    CHECK(r == 5.0f);
    CHECK(ValueOr((owner->*AggroMember()), g_a, -1.0f) == 5.0f);
    CHECK(ValueOr((a->*AggroedByMember()), g_owner, -1.0f) == 5.0f);
    CHECK(g_aggroCalls.size() == 1);
    if (g_aggroCalls.size() == 1) {
        CHECK(g_aggroCalls[0].self == a);
        CHECK(g_aggroCalls[0].c == g_owner);
    }
}

// An existing entry takes the new value and returns it; OnAggro is not called again.
void TestSetAggroExisting() {
    ResetState();
    CharAI* owner = AI(g_owner);
    CharAI* a = AI(g_a);
    owner->AI_SetAggro(g_a, 5.0f);
    g_aggroCalls.clear();
    const float r = owner->AI_SetAggro(g_a, 8.0f);
    CHECK(r == 8.0f);
    CHECK(ValueOr((owner->*AggroMember()), g_a, -1.0f) == 8.0f);
    CHECK(ValueOr((a->*AggroedByMember()), g_owner, -1.0f) == 8.0f);
    CHECK(g_aggroCalls.empty());
}

// The early-outs (owner a player, owner dead, target dead) return 0 and change nothing.
void TestSetAggroRefused() {
    CharAI* owner = AI(g_owner);
    CharAI* a = AI(g_a);

    ResetState();
    g_players.push_back(g_owner);
    CHECK(owner->AI_SetAggro(g_a, 5.0f) == 0.0f);
    CHECK(!HasEntry((owner->*AggroMember()), g_a));
    CHECK(!HasEntry((a->*AggroedByMember()), g_owner));
    CHECK(g_aggroCalls.empty());

    ResetState();
    g_dead.push_back(g_owner);
    CHECK(owner->AI_SetAggro(g_a, 5.0f) == 0.0f);
    CHECK(!HasEntry((owner->*AggroMember()), g_a));
    CHECK(g_aggroCalls.empty());

    ResetState();
    g_dead.push_back(g_a);
    CHECK(owner->AI_SetAggro(g_a, 5.0f) == 0.0f);
    CHECK(!HasEntry((owner->*AggroMember()), g_a));
    CHECK(g_aggroCalls.empty());
}

// A new entry through AI_AddAggro is AI_SetAggro's result, which is the aggro itself.
void TestAddAggroNew() {
    ResetState();
    CharAI* owner = AI(g_owner);
    CharAI* a = AI(g_a);
    const float r = owner->AI_AddAggro(g_a, 2.5f);
    CHECK(r == 2.5f);
    CHECK(ValueOr((owner->*AggroMember()), g_a, -1.0f) == 2.5f);
    CHECK(ValueOr((a->*AggroedByMember()), g_owner, -1.0f) == 2.5f);
    CHECK(g_aggroCalls.size() == 1);
}

// An existing entry (5) plus 2 is set to 7 through AI_SetAggro; AI_AddAggro returns the aggro added, 7 - 5 = 2.
void TestAddAggroExisting() {
    ResetState();
    CharAI* owner = AI(g_owner);
    CharAI* a = AI(g_a);
    owner->AI_SetAggro(g_a, 5.0f);
    g_aggroCalls.clear();
    const float r = owner->AI_AddAggro(g_a, 2.0f);
    CHECK(r == 2.0f);
    CHECK(ValueOr((owner->*AggroMember()), g_a, -1.0f) == 7.0f);
    CHECK(ValueOr((a->*AggroedByMember()), g_owner, -1.0f) == 7.0f);
    CHECK(g_aggroCalls.empty());
}

// When AI_SetAggro refuses, an existing entry gives 0 - old and a new entry gives 0.
void TestAddAggroRefused() {
    ResetState();
    CharAI* owner = AI(g_owner);
    owner->AI_SetAggro(g_a, 7.0f);
    g_aggroCalls.clear();
    g_players.push_back(g_owner);
    CHECK(owner->AI_AddAggro(g_a, 3.0f) == -7.0f);
    CHECK(ValueOr((owner->*AggroMember()), g_a, -1.0f) == 7.0f);

    g_players.clear();
    g_dead.push_back(g_b);
    CHECK(owner->AI_AddAggro(g_b, 4.0f) == 0.0f);
    CHECK(!HasEntry((owner->*AggroMember()), g_b));
}

// AI_GetAggroEntry counts the converse map from its lowest aggro; past the end gives null and leaves the aggro alone.
void TestAggroEntryOrder() {
    ResetState();
    CharAI* owner = AI(g_owner);
    owner->AI_SetAggro(g_a, 5.0f);
    owner->AI_SetAggro(g_b, 2.0f);
    owner->AI_SetAggro(g_c, 9.0f);

    Character* who = nullptr;
    float value = 123.0f;
    owner->AI_GetAggroEntry(0, who, value);
    CHECK(who == g_b);
    CHECK(value == 2.0f);
    owner->AI_GetAggroEntry(1, who, value);
    CHECK(who == g_a);
    CHECK(value == 5.0f);
    owner->AI_GetAggroEntry(2, who, value);
    CHECK(who == g_c);
    CHECK(value == 9.0f);

    value = 123.0f;
    owner->AI_GetAggroEntry(3, who, value);
    CHECK(who == nullptr);
    CHECK(value == 123.0f);
}

}  // namespace

// ---- Link stubs: other batches and categories --------------------------------------------------------------------------
// Only the linker needs these. The checks above never reach them; each aborts if it is reached.

int gAssertLevel = 0;

float CharAI::AI_GetMeleeRadius() const { std::abort(); }
bool CharAI::AI_IsEnemy(const GameObject*) const { std::abort(); }
bool CharAI::AI_IsInInteractionRange(const GameObject*) const { std::abort(); }
bool CharAI::AI_IsInSight(const GameObject*) const { std::abort(); }
void CharAI::AI_SyncLastTarget() { std::abort(); }
void CharAI::_SkillCleanUp() { std::abort(); }
void CharAI::_SpellCleanUp() { std::abort(); }
void CharAISkillScript::GetInfo(unsigned int, float*) { std::abort(); }
bool CharAISkillScript::OnPreSkill() { std::abort(); }
void CharAnimator::ANIM_StopLoop(bool) { std::abort(); }
bool CharStateMachine::SM_IsCasting() const { std::abort(); }
int CharStateMachine::SM_SetDeadState(bool, void*, bool) { std::abort(); }
void CharTimers::TMR_Stop(unsigned int) { std::abort(); }
int Character::GetCharAIId() const { std::abort(); }
const void* Character::GetCharFaery(int) const { std::abort(); }
int Character::SG_GetCurrentFaerieId(int) const { std::abort(); }
DebugSwitches* DebugSwitches::GetInstance() { std::abort(); }
bool DebugSwitches::GetSwitch(const std::string&) { std::abort(); }
void DebugSwitches::load() { std::abort(); }
const Point3D<float>& GameObject::GetTargetPosition() const { std::abort(); }
bool ItemInventory::CanMeleeAttack() const { std::abort(); }
ObjectHandle ObjectBase::GetHandle() const { std::abort(); }
ObjectBase* ObjectHandle::GetObject(bool) { std::abort(); }
void v2Controller::Cmd_Stop() { std::abort(); }

int main() {
    InitVtables();
    g_owner = InitCharacter(g_ownerStore);
    g_a = InitCharacter(g_aStore);
    g_b = InitCharacter(g_bStore);
    g_c = InitCharacter(g_cStore);

    TestSetAggroNew();
    TestSetAggroExisting();
    TestSetAggroRefused();
    TestAddAggroNew();
    TestAddAggroExisting();
    TestAddAggroRefused();
    TestAggroEntryOrder();

    ResetState();
    if (g_failures == 0) {
        std::printf("g1-game-character-CharAI-2ae0f1-7 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
