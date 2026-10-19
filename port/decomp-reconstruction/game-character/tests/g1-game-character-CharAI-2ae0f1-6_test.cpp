// Test for batch g1-game-character-CharAI-2ae0f1-6.
//
// The batch source calls functions of other categories (Character and GameObject queries, ObjectBase and ObjectHandle,
// ItemInventory, CharStateMachine and CharTimers). They are stubbed below so the executable links. Characters and game
// objects are never constructed: each is zero-filled storage with a fake primary vtable. The virtual slots the batch
// calls (IsDead, IsPlayer, IsInteractive, GetInteractionType, GetInteractionRadius) point at stubs that read per-object
// tables. CharAI is zero-filled storage too; its two std::map members are built in place, and its private members are
// reached through explicit instantiations (the usual access trick). Asserts run at level 0 (silent) in this test.

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <initializer_list>
#include <map>
#include <new>
#include <utility>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool Near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

// ---- Per-object tables read by the stubs -------------------------------------------------------------------------------

std::map<const void*, bool> g_dead;
std::map<const void*, bool> g_player;
std::map<const void*, bool> g_interactive;
std::map<const void*, int> g_interactType;
std::map<const void*, float> g_interactRadius;
std::map<const void*, Point3D<float>> g_pos;
std::map<const void*, Point3D<float>> g_spot;
std::map<const void*, const Structs::AIProps*> g_aiRow;
std::map<const void*, const Structs::AIFactions*> g_faction;
std::map<const void*, int> g_factionId;

int g_meleeBonus = 0;
bool g_smAttacking = false;
bool g_smUsingSkill = false;
bool g_smCasting = false;
int g_timerResult = 0;
unsigned int g_timerMs = 0;
int g_timerRepeat = -1;
int g_timerEvent = -1;
void* g_timerUser = reinterpret_cast<void*>(1);
int g_timerCalls = 0;

template <typename V>
V LookupOr(const std::map<const void*, V>& m, const void* key, V fallback) {
    const auto it = m.find(key);
    return it == m.end() ? fallback : it->second;
}

// ---- Fake primary vtable ----------------------------------------------------------------------------------------------

void* g_vtable[64] = {};

// Index of a virtual member function in the primary vtable: the Itanium member pointer holds offset + 1 for a virtual.
template <typename M>
std::size_t SlotOf(M member) {
    static_assert(sizeof(M) == 2 * sizeof(void*), "pointer to member function is two words");
    void* words[2];
    std::memcpy(words, &member, sizeof words);
    return (reinterpret_cast<std::uintptr_t>(words[0]) - 1) / sizeof(void*);
}

bool FakeIsDead(const void* self) { return LookupOr(g_dead, self, false); }
bool FakeIsPlayer(const void* self) { return LookupOr(g_player, self, false); }
bool FakeIsInteractive(const void* self, GameObject*) { return LookupOr(g_interactive, self, false); }
int FakeGetInteractionType(const void* self, GameObject*) { return LookupOr(g_interactType, self, -1); }
float FakeGetInteractionRadius(const void* self) { return LookupOr(g_interactRadius, self, 0.0f); }

// Zero-filled object whose first word is the fake primary vtable (the ObjectBase vptr).
void* NewFakeObject(std::size_t size) {
    void* storage = std::calloc(1, size);
    *reinterpret_cast<void***>(storage) = g_vtable;
    return storage;
}
Character* NewCharacter() { return static_cast<Character*>(NewFakeObject(sizeof(Character))); }
GameObject* NewGameObject() { return static_cast<GameObject*>(NewFakeObject(sizeof(GameObject))); }

}  // namespace

// Storage the batch reads: the assert level and the faction table size (ids below 16 are in range).
int gAssertLevel = 0;
std::uint8_t* Arrays::AIFactionTable::members = nullptr;
std::uint32_t Arrays::AIFactionTable::size = 16;

// ---- Stubs for the out-of-line functions the batch calls (external linkage: they define class members) -------------------------------------------------------------

const Structs::AIProps* Character::GetCharAI() const {
    return LookupOr(g_aiRow, this, static_cast<const Structs::AIProps*>(nullptr));
}
const Structs::AIFactions* Character::GetCharAIFaction() const {
    return LookupOr(g_faction, this, static_cast<const Structs::AIFactions*>(nullptr));
}
int Character::GetCharAIFactionId() const { return LookupOr(g_factionId, this, 0); }

const Point3D<float>& GameObject::GetTargetPosition() const { return g_pos[this]; }
Point3D<float> GameObject::GetInteractionSpot() const { return LookupOr(g_spot, this, Point3D<float>{}); }

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectBase* ObjectHandle::GetObject(bool) { return m_cached; }
ObjectBase* ObjectHandle::GetObject(bool) const { return m_cached; }
ObjectHandle::operator Character*() {
    ObjectBase* object = m_cached;
    return (object != nullptr && object->m_goId == 0) ? static_cast<Character*>(object) : nullptr;
}

ObjectHandle ObjectBase::GetHandle() {
    ObjectHandle handle;
    handle.m_cached = this;
    return handle;
}
ObjectHandle ObjectBase::GetHandle() const {
    ObjectHandle handle;
    handle.m_cached = const_cast<ObjectBase*>(this);
    return handle;
}

bool ItemInventory::CanMeleeAttack(int& a) const {
    a = g_meleeBonus;
    return true;
}

bool CharStateMachine::SM_IsAttacking() const { return g_smAttacking; }
bool CharStateMachine::SM_IsUsingSkill() const { return g_smUsingSkill; }
bool CharStateMachine::SM_IsCasting() const { return g_smCasting; }

int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    ++g_timerCalls;
    g_timerMs = durationMs;
    g_timerRepeat = repeat;
    g_timerEvent = eventId;
    g_timerUser = userData;
    return g_timerResult;
}

namespace {

// ---- Private member access (explicit instantiation) ------------------------------------------------------------------

template <typename Tag, typename Tag::type M>
struct Robber {
    friend typename Tag::type get(Tag) { return M; }
};

struct TagCharacter { using type = Character* CharAI::*; friend type get(TagCharacter); };
struct TagTarget { using type = GameObject* CharAI::*; friend type get(TagTarget); };
struct TagMaster { using type = Character* CharAI::*; friend type get(TagMaster); };
struct TagMasterAlive { using type = bool CharAI::*; friend type get(TagMasterAlive); };
struct TagMasterInSight { using type = bool CharAI::*; friend type get(TagMasterInSight); };
struct TagTargetSeeking { using type = bool CharAI::*; friend type get(TagTargetSeeking); };
struct TagAggro { using type = std::map<Character*, float> CharAI::*; friend type get(TagAggro); };
struct TagAggroedBy { using type = std::map<Character*, float> CharAI::*; friend type get(TagAggroedBy); };

template struct Robber<TagCharacter, &CharAI::m_character>;
template struct Robber<TagTarget, &CharAI::m_target>;
template struct Robber<TagMaster, &CharAI::m_master>;
template struct Robber<TagMasterAlive, &CharAI::m_masterAlive>;
template struct Robber<TagMasterInSight, &CharAI::m_masterInSight>;
template struct Robber<TagTargetSeeking, &CharAI::m_targetSeeking>;
template struct Robber<TagAggro, &CharAI::m_aggro>;
template struct Robber<TagAggroedBy, &CharAI::m_aggroedBy>;

// Zero-filled CharAI owned by `me`, with its two maps built in place and the flags at their constructor values.
CharAI* NewCharAI(Character* me) {
    CharAI* ai = static_cast<CharAI*>(std::calloc(1, sizeof(CharAI)));
    new (&(ai->*get(TagAggro()))) std::map<Character*, float>();
    new (&(ai->*get(TagAggroedBy()))) std::map<Character*, float>();
    ai->*get(TagCharacter()) = me;
    ai->*get(TagTarget()) = nullptr;
    ai->*get(TagMaster()) = nullptr;
    ai->*get(TagMasterAlive()) = false;
    ai->*get(TagMasterInSight()) = false;
    ai->*get(TagTargetSeeking()) = true;
    return ai;
}

// AITable row: +0x18 interaction threshold (m_w6), +0x20 melee base radius (m_w8), +0x3c sight range (m_w15).
const Structs::AIProps* MakeAIRow(float interactThreshold, float meleeBase, float sight) {
    Structs::AIProps* row = static_cast<Structs::AIProps*>(std::calloc(1, sizeof(Structs::AIProps)));
    row->InteractRadius = interactThreshold;
    row->MeleeRadius = meleeBase;
    row->ViewRadius = sight;
    return row;
}

// AIFactions row with relation entries (faction id, relation value).
const Structs::AIFactions* MakeFactionRow(std::initializer_list<std::pair<int, int>> entries) {
    const std::size_t n = entries.size();
    Structs::AIFaction* list = n != 0 ? static_cast<Structs::AIFaction*>(std::calloc(n, sizeof(Structs::AIFaction)))
                                      : nullptr;
    std::size_t i = 0;
    for (const auto& entry : entries) {
        list[i].Id = entry.first;
        list[i].Value = entry.second;
        ++i;
    }
    Structs::AIFactions* row = static_cast<Structs::AIFactions*>(std::calloc(1, sizeof(Structs::AIFactions)));
    row->factionsSize = static_cast<std::uint32_t>(n);
    row->factions = list;
    return row;
}

void ResetTables() {
    g_dead.clear();
    g_player.clear();
    g_interactive.clear();
    g_interactType.clear();
    g_interactRadius.clear();
    g_pos.clear();
    g_spot.clear();
    g_aiRow.clear();
    g_faction.clear();
    g_factionId.clear();
    g_meleeBonus = 0;
    g_smAttacking = false;
    g_smUsingSkill = false;
    g_smCasting = false;
}

// ---- Tests -----------------------------------------------------------------------------------------------------------

void TestAggro() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    Character* a = NewCharacter();
    Character* b = NewCharacter();

    CHECK(!ai->AI_HasAggro());
    CHECK(!ai->AI_IsAggroed());
    CHECK(ai->AI_GetAggroCount() == 0);
    CHECK(ai->AI_GetHighestAggro() == nullptr);
    CHECK(ai->AI_GetAggro(a) == 0.0f);

    auto& aggro = ai->*get(TagAggro());
    aggro[a] = 2.0f;
    aggro[b] = 5.0f;
    CHECK(ai->AI_HasAggro());
    CHECK(ai->AI_GetAggroCount() == 2);
    CHECK(ai->AI_GetHighestAggro() == b);
    CHECK(ai->AI_GetAggro(a) == 2.0f);
    CHECK(ai->AI_GetAggro(me) == 0.0f);

    aggro[a] = -1.0f;
    aggro[b] = 0.0f;
    CHECK(ai->AI_GetHighestAggro() == nullptr);  // nothing strictly above zero

    (ai->*get(TagAggroedBy()))[me] = 1.0f;
    CHECK(ai->AI_IsAggroed());
}

void TestDistancesAndSight() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    Character* target = NewCharacter();
    g_pos[me] = Point3D<float>{0.0f, 0.0f, 0.0f};
    g_pos[target] = Point3D<float>{3.0f, 4.0f, 0.0f};  // squared distance 25

    CHECK(ai->AI_IsCloserThan(26.0f, target));
    CHECK(!ai->AI_IsCloserThan(25.0f, target));  // strict
    CHECK(!ai->AI_IsCloserThan(26.0f, nullptr));  // no m_target
    ai->*get(TagTarget()) = target;
    CHECK(ai->AI_IsCloserThan(26.0f, nullptr));  // falls back to m_target
    ai->*get(TagTarget()) = nullptr;

    g_aiRow[me] = MakeAIRow(0.0f, 1.5f, 10.0f);  // sight 10: squared 100
    CHECK(ai->AI_IsInSight(99.0f));
    CHECK(!ai->AI_IsInSight(101.0f));
    CHECK(ai->AI_IsInSight(target));  // 25 < 100
    g_pos[target] = Point3D<float>{30.0f, 0.0f, 0.0f};  // 900 > 100
    CHECK(!ai->AI_IsInSight(target));
    CHECK(!ai->AI_IsInSight(static_cast<const GameObject*>(nullptr)));  // no m_target

    g_meleeBonus = 2;  // melee radius = 2 + 1.5
    CHECK(Near(ai->AI_GetMeleeRadius(), 3.5f));
    CHECK(Near(ai->AI_GetMeleeRadiusSq(), 12.25f));
}

void TestSetMaster() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    g_pos[me] = Point3D<float>{0.0f, 0.0f, 0.0f};
    g_aiRow[me] = MakeAIRow(0.0f, 0.0f, 11.0f);  // sight 11: squared 121
    Character* master = NewCharacter();

    g_pos[master] = Point3D<float>{6.0f, 8.0f, 0.0f};  // squared distance 100 < 121
    g_dead[master] = false;
    ai->AI_SetMaster(master);
    CHECK(ai->*get(TagMaster()) == master);
    CHECK(ai->*get(TagMasterAlive()) == true);
    CHECK(ai->*get(TagMasterInSight()) == true);

    g_dead[master] = true;
    g_pos[master] = Point3D<float>{30.0f, 0.0f, 0.0f};  // squared distance 900 > 121
    ai->AI_SetMaster(master);
    CHECK(ai->*get(TagMasterAlive()) == false);
    CHECK(ai->*get(TagMasterInSight()) == false);

    ai->AI_SetMaster(nullptr);
    CHECK(ai->*get(TagMaster()) == nullptr);
    CHECK(ai->*get(TagMasterAlive()) == false);  // unchanged by a null master
    CHECK(ai->*get(TagMasterInSight()) == false);
}

void TestInteractionRange() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    g_pos[me] = Point3D<float>{0.0f, 0.0f, 0.0f};
    g_aiRow[me] = MakeAIRow(2.0f, 1.0f, 0.0f);  // threshold 2, melee base 1
    GameObject* obj = NewGameObject();
    g_spot[obj] = Point3D<float>{5.0f, 0.0f, 0.0f};  // distance 5
    g_interactRadius[obj] = 1.0f;
    g_interactType[obj] = 3;

    // remaining = (5 - 1 melee) - 1 interaction radius = 3 > threshold 2
    CHECK(!ai->AI_IsInInteractionRange(obj));
    g_spot[obj] = Point3D<float>{4.0f, 0.0f, 0.0f};  // remaining 2, not above 2
    CHECK(ai->AI_IsInInteractionRange(obj));
    g_interactType[obj] = 8;  // relation 8 uses a threshold of 0: remaining 2 > 0
    CHECK(!ai->AI_IsInInteractionRange(obj));

    // A cached interaction_position node drops the radius terms and uses the threshold 80 (not for type 8).
    static int fakeNode = 0;
    obj->m_interactionSpotNode = reinterpret_cast<glitch::scene::ISceneNode*>(&fakeNode);
    g_interactType[obj] = 3;
    CHECK(ai->AI_IsInInteractionRange(obj));  // remaining 4 <= 80
    g_interactType[obj] = 8;
    CHECK(!ai->AI_IsInInteractionRange(obj));  // remaining 4 > 0
    obj->m_interactionSpotNode = nullptr;

    CHECK(!ai->AI_IsInInteractionRange(nullptr));  // no m_target
}

void TestFactions() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    // My faction: 1 is a friend (+5), 2 an enemy (-3), 3 neutral (0). Any other faction has no relation.
    g_faction[me] = MakeFactionRow({{1, 5}, {2, -3}, {3, 0}});
    Character* other = NewCharacter();

    g_factionId[other] = 1;
    CHECK(ai->AI_IsFriend(other));
    CHECK(!ai->AI_IsEnemy(other));
    CHECK(!ai->AI_IsNeutral(other));

    g_factionId[other] = 2;
    CHECK(!ai->AI_IsFriend(other));
    CHECK(ai->AI_IsEnemy(other));
    CHECK(!ai->AI_IsNeutral(other));

    g_factionId[other] = 3;
    CHECK(!ai->AI_IsFriend(other));
    CHECK(!ai->AI_IsEnemy(other));
    CHECK(ai->AI_IsNeutral(other));

    g_factionId[other] = 9;  // no entry in my row
    CHECK(!ai->AI_IsFriend(other));
    CHECK(!ai->AI_IsEnemy(other));
    CHECK(ai->AI_IsNeutral(other));

    // Two players are never enemies, whatever the relation says.
    g_factionId[other] = 2;
    g_player[me] = true;
    g_player[other] = true;
    CHECK(!ai->AI_IsEnemy(other));
    g_player[me] = false;
    g_player[other] = false;

    // A GameObject that is not a Character (m_goId 1) is an enemy only when it is interactive with relation type 8.
    GameObject* prop = NewGameObject();
    static_cast<ObjectBase*>(prop)->m_goId = static_cast<ObjectBase::GO_IDS>(1);
    g_interactive[prop] = true;
    g_interactType[prop] = 8;
    CHECK(ai->AI_IsEnemy(prop));
    CHECK(!ai->AI_IsFriend(prop));
    CHECK(ai->AI_IsNeutral(prop));
    g_interactType[prop] = 3;
    CHECK(!ai->AI_IsEnemy(prop));

    // No target and no argument: not a friend or enemy, and neutral.
    CHECK(!ai->AI_IsFriend(nullptr));
    CHECK(!ai->AI_IsEnemy(nullptr));
    CHECK(ai->AI_IsNeutral(nullptr));
}

void TestTargetAndTimers() {
    ResetTables();
    Character* me = NewCharacter();
    CharAI* ai = NewCharAI(me);
    CHECK(ai->AI_GetTargetAsCharacter() == nullptr);
    CHECK(!ai->AI_IsTargetACharacter());

    Character* foe = NewCharacter();
    ai->*get(TagTarget()) = foe;
    CHECK(ai->AI_GetTargetAsCharacter() == foe);
    CHECK(ai->AI_IsTargetACharacter());
    const CharAI* constAi = ai;
    CHECK(constAi->AI_GetTargetAsCharacter() == foe);  // const overload
    ai->*get(TagTarget()) = nullptr;

    g_timerResult = 7;
    g_timerCalls = 0;
    CHECK(ai->AI_PauseTargetSeeking(250) == 7);
    CHECK(!(ai->*get(TagTargetSeeking())));
    CHECK(g_timerCalls == 1);
    CHECK(g_timerMs == 250u && g_timerRepeat == 0 && g_timerEvent == 50 && g_timerUser == nullptr);

    CHECK(!ai->AI_IsInCombat());
    g_smCasting = true;
    CHECK(ai->AI_IsInCombat());
    g_smCasting = false;
    g_smUsingSkill = true;
    CHECK(ai->AI_IsInCombat());
    g_smUsingSkill = false;
    g_smAttacking = true;
    CHECK(ai->AI_IsInCombat());
    g_smAttacking = false;
    (ai->*get(TagAggro()))[foe] = 1.0f;
    CHECK(ai->AI_IsInCombat());
}

}  // namespace

int main() {
    gAssertLevel = 0;
    g_vtable[SlotOf(&GameObject::IsDead)] = reinterpret_cast<void*>(&FakeIsDead);
    g_vtable[SlotOf(&ObjectBase::IsPlayer)] = reinterpret_cast<void*>(&FakeIsPlayer);
    g_vtable[SlotOf(&GameObject::IsInteractive)] = reinterpret_cast<void*>(&FakeIsInteractive);
    g_vtable[SlotOf(&GameObject::GetInteractionType)] = reinterpret_cast<void*>(&FakeGetInteractionType);
    g_vtable[SlotOf(&GameObject::GetInteractionRadius)] = reinterpret_cast<void*>(&FakeGetInteractionRadius);

    TestAggro();
    TestDistancesAndSight();
    TestSetMaster();
    TestInteractionRange();
    TestFactions();
    TestTargetAndTimers();

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("CharAI-2ae0f1-6: all checks passed\n");
    return 0;
}
