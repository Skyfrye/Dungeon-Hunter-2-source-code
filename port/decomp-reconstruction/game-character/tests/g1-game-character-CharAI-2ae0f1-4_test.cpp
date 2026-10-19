// Test for batch g1-game-character-CharAI-2ae0f1-4.
//
// The batch source calls functions of other batches and engine categories (CharStateMachine, v2Controller, DebugSwitches and
// the CharAI target helpers). They are stubbed below so the executable links. Characters are never constructed. Each is
// zero-filled storage with a fake primary vtable whose slots all point to StubIsDead, because the batch calls the virtual
// Character::IsDead. The script pointer stays null, so no script hook is reached. Private CharAI members are reached
// through explicit instantiations (the usual access trick).

#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
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

// ---- Private member access (explicit instantiation) ----------------------------------------------------------------

template <typename Tag, typename Tag::type M>
struct Robber {
    friend typename Tag::type get(Tag) { return M; }
};

struct RoleTag {
    using type = int CharAI::*;
    friend type get(RoleTag);
};
template struct Robber<RoleTag, &CharAI::m_groupRole>;

struct CharacterTag {
    using type = Character* CharAI::*;
    friend type get(CharacterTag);
};
template struct Robber<CharacterTag, &CharAI::m_character>;

struct InteractingTag {
    using type = bool CharAI::*;
    friend type get(InteractingTag);
};
template struct Robber<InteractingTag, &CharAI::m_interacting>;

struct AttackingTag {
    using type = bool CharAI::*;
    friend type get(AttackingTag);
};
template struct Robber<AttackingTag, &CharAI::m_attacking>;

// ---- Fake characters ------------------------------------------------------------------------------------------------

void* g_fakeVtable[256];  // every slot is StubIsDead, the batch only calls the IsDead slot
unsigned char g_killerTag;
unsigned char g_debugSwitchesDummy;
int g_probeCount = 0;

struct FakeCharacter {
    alignas(16) unsigned char storage[sizeof(Character)];
    unsigned char controllerTag;  // its address stands for the v2Controller of this character
    bool dead;
    bool awaiting;
    bool inLimbus;
    int spawnSets;

    Character* ch() { return reinterpret_cast<Character*>(storage); }
};

FakeCharacter g_fakes[8];

FakeCharacter* FindByChar(const Character* c) {
    for (auto& f : g_fakes) {
        if (f.ch() == c) {
            return &f;
        }
    }
    return nullptr;
}

FakeCharacter* FindBySm(const CharStateMachine* sm) {
    for (auto& f : g_fakes) {
        if (static_cast<const CharStateMachine*>(f.ch()) == sm) {
            return &f;
        }
    }
    return nullptr;
}

// Installed in every vtable slot. The batch only calls Character::IsDead through the vtable.
bool StubIsDead(const Character* self) {
    FakeCharacter* f = FindByChar(self);
    return f != nullptr && f->dead;
}

void ResetFakes() {
    for (auto& f : g_fakes) {
        std::memset(f.storage, 0, sizeof f.storage);
        *reinterpret_cast<void***>(f.storage) = g_fakeVtable;  // primary vptr at +0
        f.ch()->m_controller = reinterpret_cast<v2Controller*>(&f.controllerTag);
        f.dead = false;
        f.awaiting = false;
        f.inLimbus = true;
        f.spawnSets = 0;
    }
}

const void* ControllerOf(const FakeCharacter& f) { return &f.controllerTag; }

void SetRole(FakeCharacter& f, int role) { static_cast<CharAI*>(f.ch())->*get(RoleTag()) = role; }

// ---- Stubs for symbols defined by other batches (only the linker needs them) ----------------------------------------

struct KillRecord {
    const void* controller;
    const GameObject* killer;
    bool silent;
};
KillRecord g_kills[16];
int g_killCount = 0;

void ClearKillLog() { g_killCount = 0; }

bool g_targetIsCharacter = false;
Character* g_targetCharacter = nullptr;
const CharAI* g_isTargetCharacterThis = nullptr;
const CharAI* g_clearAggroThis = nullptr;
const Character* g_clearAggroTarget = nullptr;
int g_clearAggroCalls = 0;

}  // namespace

DebugSwitches* DebugSwitches::GetInstance() {
    ++g_probeCount;
    return reinterpret_cast<DebugSwitches*>(&g_debugSwitchesDummy);  // the switch read ignores `this`
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    (void)name;
    return false;
}

bool CharAI::AI_IsTargetACharacter() const {
    g_isTargetCharacterThis = this;
    return g_targetIsCharacter;
}

Character* CharAI::AI_GetTargetAsCharacter() { return g_targetCharacter; }

void CharAI::AI_ClearAggro(Character* c) {
    ++g_clearAggroCalls;
    g_clearAggroThis = this;
    g_clearAggroTarget = c;
}

bool CharStateMachine::SM_IsAwaitingToSpawn() const {
    const FakeCharacter* f = FindBySm(this);
    return f != nullptr && f->awaiting;
}

int CharStateMachine::SM_SetSpawnState(bool delayed, bool flag) {
    (void)delayed;
    (void)flag;
    if (FakeCharacter* f = FindBySm(this)) {
        ++f->spawnSets;
    }
    return 0;
}

bool CharStateMachine::SM_IsInLimbus() const {
    const FakeCharacter* f = FindBySm(this);
    return f != nullptr && f->inLimbus;
}

void v2Controller::Cmd_Kill(GameObject* killer, bool silent) {
    if (g_killCount < 16) {
        g_kills[g_killCount] = KillRecord{this, killer, silent};
    }
    ++g_killCount;
}

CharAI::GroupInfo::GroupInfo() : m_allMembersDead(-1), m_leadersDead(false), m_triggered(false) {}

CharAI::GroupInfo::~GroupInfo() {}

namespace {

// ---- Tests ----------------------------------------------------------------------------------------------------------

void TestCanSpawnAndCanRespawn() {
    ResetFakes();
    CharAI::GroupInfo g;
    FakeCharacter& a = g_fakes[0];
    FakeCharacter& m0 = g_fakes[1];
    FakeCharacter& m1 = g_fakes[2];

    CHECK(!g.CanSpawn(a.ch()));

    SetRole(a, 0);
    g.m_leadersDead = false;
    CHECK(g.CanRespawn(a.ch()));
    g.m_leadersDead = true;
    CHECK(!g.CanRespawn(a.ch()));

    SetRole(a, 1);
    CHECK(!g.CanRespawn(a.ch()));
    SetRole(a, 2);
    CHECK(!g.CanRespawn(a.ch()));

    SetRole(a, 3);
    g.m_allMembersDead = -1;
    CHECK(!g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == -1);
    g.m_allMembersDead = 0;
    CHECK(!g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == 0);
    g.m_allMembersDead = 2;
    CHECK(g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == 2);

    // State 1 evaluates the limbus state of every member and stores 2 (all in limbus) or 1.
    g.m_members = {m0.ch(), m1.ch()};
    g.m_allMembersDead = 1;
    CHECK(g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == 2);
    g.m_allMembersDead = 1;
    m1.inLimbus = false;
    CHECK(!g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == 1);
    g.m_members.clear();
    g.m_allMembersDead = 1;
    CHECK(g.CanRespawn(a.ch()));
    CHECK(g.m_allMembersDead == 2);
}

void TestOnEnemySpotted() {
    FakeCharacter& spotter = g_fakes[0];
    FakeCharacter& m0 = g_fakes[1];
    FakeCharacter& m1 = g_fakes[2];
    FakeCharacter& l0 = g_fakes[3];
    FakeCharacter& mm = g_fakes[4];
    FakeCharacter& enemy = g_fakes[5];

    {  // triggered already: nothing happens
        ResetFakes();
        CharAI::GroupInfo g;
        g.m_triggered = true;
        g.m_members = {m0.ch()};
        m0.awaiting = true;
        SetRole(spotter, 0);
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 0);
        CHECK(g.m_triggered);
    }
    {  // normal, no leaders: awaiting members start, the spotter is untouched, the group triggers
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 0);
        g.m_members = {m0.ch(), m1.ch()};
        m0.awaiting = true;
        m1.awaiting = false;
        spotter.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 1);
        CHECK(m1.spawnSets == 0);
        CHECK(spotter.spawnSets == 0);
        CHECK(g.m_triggered);
    }
    {  // normal with a leader: nothing happens and the group does not trigger
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 0);
        g.m_leaders = {l0.ch()};
        g.m_members = {m0.ch()};
        m0.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 0);
        CHECK(!g.m_triggered);
    }
    {  // master leader: leaders and members start, the spotter starts, the group triggers
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 2);
        g.m_masterLeaders = {mm.ch()};
        g.m_leaders = {l0.ch()};
        g.m_members = {m0.ch()};
        l0.awaiting = true;
        m0.awaiting = true;
        spotter.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(l0.spawnSets == 1);
        CHECK(m0.spawnSets == 1);
        CHECK(spotter.spawnSets == 1);
        CHECK(g.m_triggered);
    }
    {  // leader with a master leader: members and spotter start, the group does not trigger
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 1);
        g.m_masterLeaders = {mm.ch()};
        g.m_members = {m0.ch()};
        m0.awaiting = true;
        spotter.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 1);
        CHECK(spotter.spawnSets == 1);
        CHECK(!g.m_triggered);
    }
    {  // leader without a master leader: the group triggers
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 1);
        g.m_members = {m0.ch()};
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 0);
        CHECK(g.m_triggered);
    }
    {  // member, first sighting (-1): awaiting members start, the state becomes 0 and the group triggers
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 3);
        g.m_allMembersDead = -1;
        g.m_members = {m0.ch(), m1.ch()};
        m0.awaiting = true;
        m1.awaiting = true;
        spotter.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 1);
        CHECK(m1.spawnSets == 1);
        CHECK(spotter.spawnSets == 0);
        CHECK(g.m_allMembersDead == 0);
        CHECK(g.m_triggered);
    }
    {  // member, state 0: nothing happens
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(spotter, 3);
        g.m_allMembersDead = 0;
        g.m_members = {m0.ch()};
        m0.awaiting = true;
        g.OnEnemySpotted(spotter.ch(), enemy.ch());
        CHECK(m0.spawnSets == 0);
        CHECK(!g.m_triggered);
        CHECK(g.m_allMembersDead == 0);
    }
}

void TestOnDied() {
    FakeCharacter& dier = g_fakes[0];
    FakeCharacter& l0 = g_fakes[1];
    FakeCharacter& l1 = g_fakes[2];
    FakeCharacter& m0 = g_fakes[3];
    GameObject* killer = reinterpret_cast<GameObject*>(&g_killerTag);

    {  // master leader: every leader is killed, then every member, in list order
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 2);
        g.m_leaders = {l0.ch(), l1.ch()};
        g.m_members = {m0.ch()};
        ClearKillLog();
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_leadersDead);
        CHECK(g_killCount == 3);
        CHECK(g_kills[0].controller == ControllerOf(l0));
        CHECK(g_kills[1].controller == ControllerOf(l1));
        CHECK(g_kills[2].controller == ControllerOf(m0));
        CHECK(g_kills[0].killer == killer && !g_kills[0].silent);
        CHECK(g_kills[2].killer == killer && !g_kills[2].silent);
    }
    {  // leader: every leader dead sets the flag
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 1);
        g.m_leaders = {l0.ch(), l1.ch()};
        l0.dead = true;
        l1.dead = true;
        ClearKillLog();
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_leadersDead);
        CHECK(g_killCount == 0);
    }
    {  // leader: one leader alive clears the flag
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 1);
        g.m_leaders = {l0.ch(), l1.ch()};
        l0.dead = true;
        l1.dead = false;
        g.OnDied(dier.ch(), killer);
        CHECK(!g.m_leadersDead);
    }
    {  // leader: the flag is already set, so nothing is evaluated
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 1);
        g.m_leadersDead = true;
        g.m_leaders = {l0.ch()};
        l0.dead = false;
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_leadersDead);
    }
    {  // member, state 0: every member dead -> 1
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 3);
        g.m_allMembersDead = 0;
        g.m_members = {m0.ch(), l0.ch()};
        m0.dead = true;
        l0.dead = true;
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_allMembersDead == 1);
    }
    {  // member, state 0: one member alive -> 0
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 3);
        g.m_allMembersDead = 0;
        g.m_members = {m0.ch(), l0.ch()};
        m0.dead = true;
        l0.dead = false;
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_allMembersDead == 0);
    }
    {  // member, state -1 (unevaluated): nothing happens
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 3);
        g.m_allMembersDead = -1;
        g.m_members = {m0.ch()};
        m0.dead = true;
        g.OnDied(dier.ch(), killer);
        CHECK(g.m_allMembersDead == -1);
    }
    {  // normal: nothing is killed
        ResetFakes();
        CharAI::GroupInfo g;
        SetRole(dier, 0);
        g.m_leaders = {l0.ch()};
        ClearKillLog();
        g.OnDied(dier.ch(), killer);
        CHECK(g_killCount == 0);
        CHECK(!g.m_leadersDead);
    }
}

void TestTargetHooksWithoutScript() {
    // A zero-filled CharAI with no script. The qualified calls below bypass virtual dispatch.
    alignas(16) static unsigned char aiStorage[sizeof(CharAI)];
    std::memset(aiStorage, 0, sizeof aiStorage);
    CharAI* ai = reinterpret_cast<CharAI*>(aiStorage);
    FakeCharacter& owner = g_fakes[0];
    FakeCharacter& target = g_fakes[1];

    {  // out of sight, target is a character: the owner's CharAI clears its aggro toward it, and m_interacting clears
        ResetFakes();
        ai->*get(CharacterTag()) = owner.ch();
        ai->*get(InteractingTag()) = true;
        g_targetIsCharacter = true;
        g_targetCharacter = target.ch();
        g_isTargetCharacterThis = nullptr;
        g_clearAggroCalls = 0;
        g_clearAggroThis = nullptr;
        g_clearAggroTarget = nullptr;
        ai->CharAI::OnTargetOutOfSight();
        CHECK(g_isTargetCharacterThis == static_cast<const CharAI*>(owner.ch()));
        CHECK(g_clearAggroCalls == 1);
        CHECK(g_clearAggroThis == static_cast<const CharAI*>(owner.ch()));
        CHECK(g_clearAggroTarget == target.ch());
        CHECK(!(ai->*get(InteractingTag())));
    }
    {  // out of sight, target is not a character: no aggro call, m_interacting still clears
        ResetFakes();
        ai->*get(CharacterTag()) = owner.ch();
        ai->*get(InteractingTag()) = true;
        g_targetIsCharacter = false;
        g_clearAggroCalls = 0;
        ai->CharAI::OnTargetOutOfSight();
        CHECK(g_clearAggroCalls == 0);
        CHECK(!(ai->*get(InteractingTag())));
    }
    {  // out of range and ranged range clear m_interacting only
        ai->*get(InteractingTag()) = true;
        ai->CharAI::OnTargetOutOfRange();
        CHECK(!(ai->*get(InteractingTag())));
        ai->*get(InteractingTag()) = true;
        ai->CharAI::OnTargetInRangedRange();
        CHECK(!(ai->*get(InteractingTag())));
    }
    {  // target died clears m_attacking
        ai->*get(AttackingTag()) = true;
        ai->CharAI::OnTargetDied();
        CHECK(!(ai->*get(AttackingTag())));
    }
    CHECK(g_probeCount > 0);
}

}  // namespace

int main() {
    for (auto& slot : g_fakeVtable) {
        slot = reinterpret_cast<void*>(&StubIsDead);
    }
    TestCanSpawnAndCanRespawn();
    TestOnEnemySpotted();
    TestOnDied();
    TestTargetHooksWithoutScript();
    if (g_failures == 0) {
        std::printf("g1-game-character-CharAI-2ae0f1-4 test: all checks passed\n");
        return 0;
    }
    std::fprintf(stderr, "%d check(s) failed\n", g_failures);
    return 1;
}
