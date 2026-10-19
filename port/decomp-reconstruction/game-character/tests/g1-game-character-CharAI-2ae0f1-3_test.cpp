// Test for batch g1-game-character-CharAI-2ae0f1-3.
//
// The batch source calls functions of other batches and engine categories (CharTimers, CharStateMachine, GameObject,
// VisualObject, DebugSwitches, PyDataConstants, the CharAI helpers and GroupInfo). They are stubbed below so the executable
// links; the stubs log every call so the tests can check order and arguments. Characters are never constructed: each is
// zero-filled storage with a fake primary vtable (IsDead, IsPlayer and IsZonable). The script is zero-filled storage with a
// fake vtable whose hook slots record their calls. Vtable slots are found from member pointers (Itanium ABI: the first word
// of a pointer to a virtual member function is the vtable byte offset plus one). Private CharAI members are reached through
// explicit instantiations (the usual access trick). CharAI methods are called with their qualified names, so no CharAI
// vtable is needed.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <vector>

#include "dh2/CharAI.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
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

std::intptr_t I(const void* p) { return reinterpret_cast<std::intptr_t>(p); }

// ---- Vtable slot of a virtual member function (Itanium ABI) --------------------------------------------------------

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

struct ScriptTag {
    using type = CharAIScript* CharAI::*;
    friend type get(ScriptTag);
};
template struct Robber<ScriptTag, &CharAI::m_script>;

struct ScriptLoadingTag {
    using type = CharAIScript* CharAI::*;
    friend type get(ScriptLoadingTag);
};
template struct Robber<ScriptLoadingTag, &CharAI::m_scriptLoading>;

struct AiTickTag {
    using type = int CharAI::*;
    friend type get(AiTickTag);
};
template struct Robber<AiTickTag, &CharAI::m_aiTickTimer>;

struct DotTag {
    using type = int CharAI::*;
    friend type get(DotTag);
};
template struct Robber<DotTag, &CharAI::m_dotTimer>;

struct GroupTag {
    using type = CharAI::GroupInfo* CharAI::*;
    friend type get(GroupTag);
};
template struct Robber<GroupTag, &CharAI::m_group>;

struct TargetTag {
    using type = GameObject* CharAI::*;
    friend type get(TargetTag);
};
template struct Robber<TargetTag, &CharAI::m_target>;

struct MasterTag {
    using type = Character* CharAI::*;
    friend type get(MasterTag);
};
template struct Robber<MasterTag, &CharAI::m_master>;

struct Unk58Tag {
    using type = GameObject* CharAI::*;
    friend type get(Unk58Tag);
};
template struct Robber<Unk58Tag, &CharAI::unk_58>;

struct Unk5cTag {
    using type = std::map<unsigned int, Character*> CharAI::*;
    friend type get(Unk5cTag);
};
template struct Robber<Unk5cTag, &CharAI::unk_5c>;

// ---- Event log (filled by the stubs) ---------------------------------------------------------------------------------

enum EventKind {
    kTmrStart,
    kTmrStop,
    kTmrStopAll,
    kDisableZoning,
    kEnableZoning,
    kSetPosition,
    kSyncVisibility,
    kGroupOnDied,
    kGroupOnEnemySpotted,
    kScriptCleanUp,
    kClearAllAggro,
    kClearAllAggroTowardMe,
    kSetMaster,
    kSetDead,
    kAddAggro,
    kCanAttack,
    kDebugProbe,
};

struct Event {
    EventKind kind;
    const void* self;
    std::intptr_t a;
    std::intptr_t b;
    std::intptr_t c;
    float f;
};

struct HookCall {
    int slot;  // the original CharAIScript vtable slot the recorder stands for
    const void* self;
    std::intptr_t a;
    std::intptr_t b;
    std::intptr_t c;
};

std::vector<Event> g_events;
std::vector<HookCall> g_hooks;

int CountEvents(EventKind k) {
    int n = 0;
    for (const Event& e : g_events) {
        if (e.kind == k) {
            ++n;
        }
    }
    return n;
}

// Index of the first event of the given kind, or -1.
int IndexOfEvent(EventKind k) {
    for (std::size_t i = 0; i < g_events.size(); ++i) {
        if (g_events[i].kind == k) {
            return static_cast<int>(i);
        }
    }
    return -1;
}

// ---- Fake objects ----------------------------------------------------------------------------------------------------

void* g_charVtable[256];    // primary vtable of a fake Character: IsDead, IsPlayer, IsZonable
void* g_scriptVtable[256];  // vtable of the fake script: the hook slots record their calls

alignas(16) unsigned char g_scriptStorage[sizeof(CharAIScript)];
alignas(16) unsigned char g_groupDummy[64];
alignas(16) unsigned char g_debugDummy[16];
alignas(16) unsigned char g_pyDummy[64];
alignas(16) unsigned char g_objDummy[64];
alignas(16) unsigned char g_resultsDummy[64];
alignas(16) unsigned char g_designBuf[sizeof(Structs::DesignSettings)];
alignas(16) unsigned char g_visualStorage[sizeof(VisualObject)];

struct FakeCharacter {
    alignas(16) unsigned char storage[sizeof(Character)];
    bool dead;
    bool player;
    bool zonable;
    bool awaiting;
    bool inLimbus;
    bool idle;

    Character* ch() { return reinterpret_cast<Character*>(storage); }
    CharAI* ai() { return static_cast<CharAI*>(ch()); }
};

FakeCharacter g_fakes[4];

FakeCharacter* FindByChar(const void* self) {
    for (auto& f : g_fakes) {
        if (static_cast<const void*>(f.ch()) == self) {
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

// Installed in the fake Character vtable.
bool StubIsDead(const Character* self) {
    const FakeCharacter* f = FindByChar(self);
    return f != nullptr && f->dead;
}

bool StubIsPlayer(const Character* self) {
    const FakeCharacter* f = FindByChar(self);
    return f != nullptr && f->player;
}

bool StubIsZonable(const Character* self) {
    const FakeCharacter* f = FindByChar(self);
    return f != nullptr && f->zonable;
}

// Recorders installed in the fake script vtable. The argument registers carry at most three values after the object.
template <int Slot>
void RecordHook(void* self, void* a, void* b, void* c) {
    g_hooks.push_back(HookCall{Slot, self, I(a), I(b), I(c)});
}

// Stubs and state the CharAI helpers read.
bool g_inCombat = false;
float g_aggroValue = 0.0f;
bool g_canAttack = true;
int g_nextTimerId = 200;

}  // namespace

// ---- Stubs for symbols defined by other batches (only the linker needs them) ---------------------------------------

DebugSwitches* DebugSwitches::GetInstance() {
    g_events.push_back(Event{kDebugProbe, nullptr, 0, 0, 0, 0.0f});
    return reinterpret_cast<DebugSwitches*>(g_debugDummy);
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    (void)name;
    return false;
}

PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pyDummy); }

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    (void)className;
    if (std::strcmp(constantName, "AI_Tick") == 0) {
        return 100;
    }
    if (std::strcmp(constantName, "DoT_Tick") == 0) {
        return 1000;
    }
    return 0;
}

int CharTimers::TMR_Start(unsigned int durationMs, int repeat, int eventId, void* userData) {
    (void)userData;
    g_events.push_back(Event{kTmrStart, this, static_cast<std::intptr_t>(durationMs), repeat, eventId, 0.0f});
    return g_nextTimerId++;
}

void CharTimers::TMR_Stop(unsigned int id) {
    g_events.push_back(Event{kTmrStop, this, static_cast<std::intptr_t>(id), 0, 0, 0.0f});
}

void CharTimers::TMR_StopAll() { g_events.push_back(Event{kTmrStopAll, this, 0, 0, 0, 0.0f}); }

bool CharStateMachine::SM_IsIdle(bool strict) const {
    (void)strict;
    const FakeCharacter* f = FindBySm(this);
    return f != nullptr && f->idle;
}

bool CharStateMachine::SM_IsAwaitingToSpawn() const {
    const FakeCharacter* f = FindBySm(this);
    return f != nullptr && f->awaiting;
}

bool CharStateMachine::SM_IsInLimbus() const {
    const FakeCharacter* f = FindBySm(this);
    return f != nullptr && f->inLimbus;
}

void GameObject::DisableZoning() { g_events.push_back(Event{kDisableZoning, this, 0, 0, 0, 0.0f}); }

void GameObject::EnableZoning() { g_events.push_back(Event{kEnableZoning, this, 0, 0, 0, 0.0f}); }

void GameObject::SetPosition(const Point3D<float>& pos, bool setDestination) {
    g_events.push_back(Event{kSetPosition, this, I(&pos), setDestination ? 1 : 0, 0, 0.0f});
}

void VisualObject::SyncVisibility() { g_events.push_back(Event{kSyncVisibility, this, 0, 0, 0, 0.0f}); }

void CharAI::GroupInfo::OnDied(Character* c, GameObject* killer) {
    g_events.push_back(Event{kGroupOnDied, c, I(killer), 0, 0, 0.0f});
}

void CharAI::GroupInfo::OnEnemySpotted(Character* c, Character* enemy) {
    g_events.push_back(Event{kGroupOnEnemySpotted, c, I(enemy), 0, 0, 0.0f});
}

void CharAI::AI_ScriptCleanUp() { g_events.push_back(Event{kScriptCleanUp, this, 0, 0, 0, 0.0f}); }

void CharAI::AI_ClearAllAggro() { g_events.push_back(Event{kClearAllAggro, this, 0, 0, 0, 0.0f}); }

void CharAI::AI_ClearAllAggroTowardMe(bool flag) {
    g_events.push_back(Event{kClearAllAggroTowardMe, this, flag ? 1 : 0, 0, 0, 0.0f});
}

void CharAI::AI_SetMaster(Character* master) {
    g_events.push_back(Event{kSetMaster, this, I(master), 0, 0, 0.0f});
}

void CharAI::AI_SetDead() { g_events.push_back(Event{kSetDead, this, 0, 0, 0, 0.0f}); }

bool CharAI::AI_IsInCombat() const { return g_inCombat; }

float CharAI::AI_GetAggro(Character* c) const {
    (void)c;
    return g_aggroValue;
}

float CharAI::AI_AddAggro(Character* c, float aggro) {
    g_events.push_back(Event{kAddAggro, this, I(c), 0, 0, aggro});
    return 0.0f;  // the stub records the call only; the header now declares float (0x3d7c68)
}

bool CharAI::AI_CanAttack(GameObject* obj) const {
    g_events.push_back(Event{kCanAttack, this, I(obj), 0, 0, 0.0f});
    return g_canAttack;
}

// The design table is a zero-filled buffer here; the test writes the one float the batch reads.
std::uint8_t* Arrays::DesignSettingsTable::members = nullptr;

// ---- Fixture ---------------------------------------------------------------------------------------------------------

namespace {

void InitVtables() {
    std::memset(g_charVtable, 0, sizeof g_charVtable);
    g_charVtable[VtableSlotOf(&Character::IsDead)] = reinterpret_cast<void*>(&StubIsDead);
    g_charVtable[VtableSlotOf(&Character::IsPlayer)] = reinterpret_cast<void*>(&StubIsPlayer);
    g_charVtable[VtableSlotOf(&Character::IsZonable)] = reinterpret_cast<void*>(&StubIsZonable);

    std::memset(g_scriptVtable, 0, sizeof g_scriptVtable);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnInit)] = reinterpret_cast<void*>(&RecordHook<2>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnUpdate)] = reinterpret_cast<void*>(&RecordHook<6>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnDied)] = reinterpret_cast<void*>(&RecordHook<9>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnRevived)] = reinterpret_cast<void*>(&RecordHook<10>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnEnemySpotted)] = reinterpret_cast<void*>(&RecordHook<13>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnPreAttack)] = reinterpret_cast<void*>(&RecordHook<41>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnAttack)] = reinterpret_cast<void*>(&RecordHook<42>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnKill)] = reinterpret_cast<void*>(&RecordHook<44>);
    g_scriptVtable[VtableSlotOf(static_cast<void (CharAIScript::*)(Character*, Character*, void*)>(
        &CharAIScript::OnCombatResults))] = reinterpret_cast<void*>(&RecordHook<45>);
    g_scriptVtable[VtableSlotOf(static_cast<void (CharAIScript::*)(GameObject*, void*)>(
        &CharAIScript::OnCombatResults))] = reinterpret_cast<void*>(&RecordHook<46>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnCollisionBegin)] = reinterpret_cast<void*>(&RecordHook<47>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnCollisionPersist)] = reinterpret_cast<void*>(&RecordHook<48>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnCollisionEnd)] = reinterpret_cast<void*>(&RecordHook<49>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnCollisionResult)] = reinterpret_cast<void*>(&RecordHook<50>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnMasterInSight)] = reinterpret_cast<void*>(&RecordHook<27>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnMasterOutOfRange)] = reinterpret_cast<void*>(&RecordHook<28>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnMasterInRangedRange)] = reinterpret_cast<void*>(&RecordHook<29>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnMasterInCloseRange)] = reinterpret_cast<void*>(&RecordHook<30>);
    g_scriptVtable[VtableSlotOf(&CharAIScript::OnMasterInMeleeRange)] = reinterpret_cast<void*>(&RecordHook<31>);

    std::memset(g_scriptStorage, 0, sizeof g_scriptStorage);
    *reinterpret_cast<void***>(g_scriptStorage) = g_scriptVtable;

    for (auto& f : g_fakes) {
        std::memset(f.storage, 0, sizeof f.storage);
        *reinterpret_cast<void***>(f.storage) = g_charVtable;  // primary vptr at +0
        // The unk_5c map is constructed once; it is only cleared between tests.
        new (&(f.ai()->*get(Unk5cTag()))) std::map<unsigned int, Character*>();
    }
    Arrays::DesignSettingsTable::members = g_designBuf;
}

// Brings every fake back to a known state and drops the logs. Each test sets what it needs on top of this.
void ResetFixture() {
    for (auto& f : g_fakes) {
        f.dead = false;
        f.player = false;
        f.zonable = true;
        f.awaiting = false;
        f.inLimbus = false;
        f.idle = true;
        Character* c = f.ch();
        CharAI* ai = f.ai();
        ai->*get(CharacterTag()) = c;
        ai->*get(ScriptTag()) = reinterpret_cast<CharAIScript*>(g_scriptStorage);
        ai->*get(ScriptLoadingTag()) = nullptr;
        ai->*get(AiTickTag()) = -1;
        ai->*get(DotTag()) = -1;
        ai->*get(GroupTag()) = reinterpret_cast<CharAI::GroupInfo*>(g_groupDummy);
        ai->*get(TargetTag()) = nullptr;
        ai->*get(MasterTag()) = nullptr;
        ai->*get(Unk58Tag()) = nullptr;
        (ai->*get(Unk5cTag())).clear();
        c->m_zoningEnabled = 0;
        c->unk_85 = 0;
        c->m_visualObject = nullptr;
        c->m_initialPosition = Point3D<float>{};
    }
    g_events.clear();
    g_hooks.clear();
    g_nextTimerId = 200;
    g_inCombat = false;
    g_aggroValue = 0.0f;
    g_canAttack = true;
    reinterpret_cast<Structs::DesignSettings*>(g_designBuf)->EnemySpottedAggro = 2.5f;
}

void SetScript(CharAI* ai, bool present) {
    ai->*get(ScriptTag()) = present ? reinterpret_cast<CharAIScript*>(g_scriptStorage) : nullptr;
}

GameObject* DummyObject() { return reinterpret_cast<GameObject*>(g_objDummy); }

// ---- Tests -------------------------------------------------------------------------------------------------------------

// The forwarders call the script at the slot the binary uses, with the arguments in the same order.
void TestForwarders() {
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();
    Character* victim = g_fakes[1].ch();
    Character* victim2 = g_fakes[2].ch();
    GameObject* obj = DummyObject();
    void* results = g_resultsDummy;

    ai->CharAI::OnKill(victim);
    CHECK(g_hooks.size() == 1);
    CHECK(g_hooks[0].slot == 44 && g_hooks[0].a == I(victim));
    g_hooks.clear();

    ai->CharAI::OnCombatResults(victim, victim2, results);
    CHECK(g_hooks.size() == 1);
    CHECK(g_hooks[0].slot == 45 && g_hooks[0].a == I(victim) && g_hooks[0].b == I(victim2) && g_hooks[0].c == I(results));
    g_hooks.clear();

    ai->CharAI::OnCombatResults(obj, results);
    CHECK(g_hooks.size() == 1);
    CHECK(g_hooks[0].slot == 46 && g_hooks[0].a == I(obj) && g_hooks[0].b == I(results));
    g_hooks.clear();

    ai->CharAI::OnCollisionBegin(obj, true);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 47 && g_hooks[0].a == I(obj) && (g_hooks[0].b & 0xff) == 1);
    g_hooks.clear();
    ai->CharAI::OnCollisionPersist(obj, false);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 48 && g_hooks[0].a == I(obj) && (g_hooks[0].b & 0xff) == 0);
    g_hooks.clear();
    ai->CharAI::OnCollisionEnd(obj, true);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 49 && g_hooks[0].a == I(obj));
    g_hooks.clear();
    ai->CharAI::OnCollisionResult(obj, true);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 50 && g_hooks[0].a == I(obj));
    g_hooks.clear();

    // OnAttack and OnPreAttack gate on AI_CanAttack(nullptr) of the owner's CharAI.
    g_canAttack = true;
    ai->CharAI::OnAttack(3, 4, true);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 42);
    CHECK(static_cast<int>(g_hooks[0].a) == 3 && static_cast<int>(g_hooks[0].b) == 4 && (g_hooks[0].c & 0xff) == 1);
    CHECK(CountEvents(kCanAttack) == 1);
    CHECK(g_events[IndexOfEvent(kCanAttack)].a == 0);
    g_hooks.clear();
    g_events.clear();

    g_canAttack = false;
    ai->CharAI::OnAttack(3, 4, true);
    CHECK(g_hooks.empty());
    CHECK(CountEvents(kCanAttack) == 1);
    g_events.clear();

    g_canAttack = true;
    ai->CharAI::OnPreAttack(7);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 41 && static_cast<int>(g_hooks[0].a) == 7);
    g_hooks.clear();
    g_canAttack = false;
    ai->CharAI::OnPreAttack(7);
    CHECK(g_hooks.empty());
    g_events.clear();

    // Without a script every forwarder returns quietly.
    SetScript(ai, false);
    g_canAttack = true;
    ai->CharAI::OnKill(victim);
    ai->CharAI::OnCombatResults(victim, victim2, results);
    ai->CharAI::OnCombatResults(obj, results);
    ai->CharAI::OnCollisionBegin(obj, true);
    ai->CharAI::OnCollisionPersist(obj, true);
    ai->CharAI::OnCollisionEnd(obj, true);
    ai->CharAI::OnCollisionResult(obj, true);
    ai->CharAI::OnAttack(1, 2, false);
    ai->CharAI::OnPreAttack(1);
    CHECK(g_hooks.empty());
}

// The five master range hooks trace the probe and then forward to their slot.
void TestMasterHooks() {
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();

    ai->CharAI::OnMasterInMeleeRange();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 31);
    CHECK(CountEvents(kDebugProbe) == 1);
    g_hooks.clear();
    g_events.clear();

    ai->CharAI::OnMasterInCloseRange();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 30);
    g_hooks.clear();

    ai->CharAI::OnMasterInRangedRange();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 29);
    g_hooks.clear();

    ai->CharAI::OnMasterOutOfRange();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 28);
    g_hooks.clear();

    ai->CharAI::OnMasterInSight();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 27);
    g_hooks.clear();

    SetScript(ai, false);
    ai->CharAI::OnMasterInSight();
    ai->CharAI::OnMasterInMeleeRange();
    CHECK(g_hooks.empty());
}

// OnRevived stops all timers, restarts AI_Tick (51) and DoT_Tick (52) and forwards the reviver to slot 10.
void TestOnRevived() {
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();
    GameObject* reviver = DummyObject();

    ai->CharAI::OnRevived(reviver);
    CHECK(CountEvents(kTmrStopAll) == 1);
    CHECK(CountEvents(kTmrStart) == 2);
    CHECK(g_events.size() == 3);
    CHECK(g_events[0].kind == kTmrStopAll);
    CHECK(g_events[1].kind == kTmrStart && g_events[1].a == 100 && g_events[1].b == -1 && g_events[1].c == 51);
    CHECK(g_events[2].kind == kTmrStart && g_events[2].a == 1000 && g_events[2].b == -1 && g_events[2].c == 52);
    CHECK(ai->*get(AiTickTag()) == 200);
    CHECK(ai->*get(DotTag()) == 201);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 10 && g_hooks[0].a == I(reviver));

    SetScript(ai, false);
    g_events.clear();
    ai->CharAI::OnRevived(reviver);
    CHECK(CountEvents(kTmrStart) == 2);
    CHECK(g_hooks.size() == 1);  // unchanged from the first call
}

// OnDied tells the group, then the script (slot 9), then marks the owner dead.
void TestOnDied() {
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();
    Character* me = g_fakes[0].ch();
    GameObject* killer = DummyObject();

    ai->CharAI::OnDied(killer);
    CHECK(g_events.size() == 2);
    CHECK(g_events[0].kind == kGroupOnDied && g_events[0].self == me && g_events[0].a == I(killer));
    CHECK(g_events[1].kind == kSetDead && g_events[1].self == ai);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 9 && g_hooks[0].a == I(killer));

    g_events.clear();
    g_hooks.clear();
    ai->*get(GroupTag()) = nullptr;
    ai->CharAI::OnDied(killer);
    CHECK(CountEvents(kGroupOnDied) == 0);
    CHECK(CountEvents(kSetDead) == 1);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 9);
}

// OnInit restarts the two timers when alive and always forwards OnInit to m_scriptLoading (slot 2).
void TestOnInit() {
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();
    ai->*get(AiTickTag()) = 5;
    ai->*get(DotTag()) = 6;
    ai->*get(ScriptLoadingTag()) = reinterpret_cast<CharAIScript*>(g_scriptStorage);

    ai->CharAI::OnInit();
    CHECK(g_events.size() == 4);
    CHECK(g_events[0].kind == kTmrStop && g_events[0].a == 5);
    CHECK(g_events[1].kind == kTmrStart && g_events[1].a == 100 && g_events[1].c == 51);
    CHECK(g_events[2].kind == kTmrStop && g_events[2].a == 6);
    CHECK(g_events[3].kind == kTmrStart && g_events[3].a == 1000 && g_events[3].c == 52);
    CHECK(ai->*get(AiTickTag()) == 200);
    CHECK(ai->*get(DotTag()) == 201);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 2);

    // Timers at -1 are not stopped, and a dead owner keeps its timers while the script still gets OnInit.
    g_events.clear();
    g_hooks.clear();
    ai->*get(AiTickTag()) = -1;
    ai->*get(DotTag()) = -1;
    g_nextTimerId = 300;
    ai->CharAI::OnInit();
    CHECK(CountEvents(kTmrStop) == 0);
    CHECK(CountEvents(kTmrStart) == 2);
    CHECK(ai->*get(AiTickTag()) == 300 && ai->*get(DotTag()) == 301);

    g_events.clear();
    g_hooks.clear();
    g_fakes[0].dead = true;
    ai->CharAI::OnInit();
    CHECK(CountEvents(kTmrStart) == 0);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 2);
    CHECK(ai->*get(AiTickTag()) == 300 && ai->*get(DotTag()) == 301);

    // Without a loading script nothing is forwarded.
    g_hooks.clear();
    ai->*get(ScriptLoadingTag()) = nullptr;
    ai->CharAI::OnInit();
    CHECK(g_hooks.empty());
}

// OnTerminate clears the owner's state, then clears the master of unk_58 and of every map entry whose master is the owner,
// in key order.
void TestOnTerminate() {
    ResetFixture();
    CharAI* me = g_fakes[0].ai();
    CharAI* a = g_fakes[1].ai();
    CharAI* b = g_fakes[2].ai();
    CharAI* c = g_fakes[3].ai();
    a->*get(MasterTag()) = g_fakes[0].ch();    // master is me
    b->*get(MasterTag()) = g_fakes[3].ch();    // master is c
    c->*get(MasterTag()) = g_fakes[0].ch();    // master is me

    me->*get(Unk58Tag()) = g_fakes[1].ch();    // unk_58 names a, whose master is me
    auto& unk5c = me->*get(Unk5cTag());
    unk5c[5] = g_fakes[3].ch();                // c: master is me
    unk5c[7] = nullptr;                        // skipped
    unk5c[9] = g_fakes[2].ch();                // b: master is c, skipped

    me->CharAI::OnTerminate();

    CHECK(g_events.size() == 5);
    CHECK(g_events[0].kind == kScriptCleanUp && g_events[0].self == me);
    CHECK(g_events[1].kind == kClearAllAggro && g_events[1].self == me);
    CHECK(g_events[2].kind == kClearAllAggroTowardMe && g_events[2].a == 0);
    CHECK(g_events[3].kind == kSetMaster && g_events[3].self == a && g_events[3].a == 0);
    CHECK(g_events[4].kind == kSetMaster && g_events[4].self == c && g_events[4].a == 0);
    CHECK(me->*get(Unk58Tag()) == nullptr);
}

// OnUpdate: the script update first, then the zoning decision, then the re-enable path.
void TestOnUpdate() {
    // A plain idle owner with no target or master: zoning comes back on and the position is set (not dead, no visual).
    ResetFixture();
    FakeCharacter& me = g_fakes[0];
    me.ai()->CharAI::OnUpdate();
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 6);
    CHECK(CountEvents(kEnableZoning) == 1);
    CHECK(CountEvents(kDisableZoning) == 0);
    CHECK(CountEvents(kSetPosition) == 1);
    const int setAt = IndexOfEvent(kSetPosition);
    CHECK(setAt >= 0 && g_events[setAt].a == I(&me.ch()->m_initialPosition) && g_events[setAt].b == 1);

    // A target stops zoning; the visual gets SyncVisibility when it exists.
    ResetFixture();
    g_fakes[0].ai()->*get(TargetTag()) = DummyObject();
    g_fakes[0].ch()->m_visualObject = reinterpret_cast<VisualObject*>(g_visualStorage);
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kDisableZoning) == 1);
    CHECK(CountEvents(kSyncVisibility) == 1);
    CHECK(CountEvents(kEnableZoning) == 0);
    CHECK(CountEvents(kSetPosition) == 0);

    // A master stops zoning as well, without a visual nothing is synced.
    ResetFixture();
    g_fakes[0].ai()->*get(MasterTag()) = g_fakes[1].ch();
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kDisableZoning) == 1);
    CHECK(CountEvents(kSyncVisibility) == 0);

    // Not idle and not awaiting spawn stops zoning; awaiting spawn with no target keeps going.
    ResetFixture();
    g_fakes[0].idle = false;
    g_fakes[0].awaiting = false;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kDisableZoning) == 1);
    CHECK(CountEvents(kEnableZoning) == 0);

    ResetFixture();
    g_fakes[0].idle = false;
    g_fakes[0].awaiting = true;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kDisableZoning) == 0);
    CHECK(CountEvents(kEnableZoning) == 1);

    // Zoning already on: nothing else happens.
    ResetFixture();
    g_fakes[0].ch()->m_zoningEnabled = 1;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kEnableZoning) == 0);
    CHECK(CountEvents(kSetPosition) == 0);
    CHECK(CountEvents(kDisableZoning) == 0);

    // Not zonable: no re-enable.
    ResetFixture();
    g_fakes[0].zonable = false;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kEnableZoning) == 0);
    CHECK(CountEvents(kSetPosition) == 0);

    // Dead: zoning is re-enabled, but the position is left alone.
    ResetFixture();
    g_fakes[0].dead = true;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kEnableZoning) == 1);
    CHECK(CountEvents(kSetPosition) == 0);

    // The unk_85 updating flag blocks the position update.
    ResetFixture();
    g_fakes[0].ch()->unk_85 = 1;
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kEnableZoning) == 1);
    CHECK(CountEvents(kSetPosition) == 0);

    // A visual with no node: the position is set and the function stops there.
    ResetFixture();
    g_fakes[0].ch()->m_visualObject = reinterpret_cast<VisualObject*>(g_visualStorage);
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(CountEvents(kSetPosition) == 1);

    // No script: the zoning decision still runs.
    ResetFixture();
    SetScript(g_fakes[0].ai(), false);
    g_fakes[0].ai()->CharAI::OnUpdate();
    CHECK(g_hooks.empty());
    CHECK(CountEvents(kEnableZoning) == 1);
}

// OnEnemySpotted reports the spot to the group, applies the threat gate, then forwards to slot 13.
void TestOnEnemySpotted() {
    // Idle owner, enemy not in limbus: the spot is added with the design aggro and the script hears about it.
    ResetFixture();
    CharAI* ai = g_fakes[0].ai();
    Character* enemy = g_fakes[1].ch();
    ai->CharAI::OnEnemySpotted(enemy);
    CHECK(CountEvents(kDebugProbe) == 1);
    CHECK(CountEvents(kGroupOnEnemySpotted) == 1);
    CHECK(CountEvents(kAddAggro) == 1);
    const int addAt = IndexOfEvent(kAddAggro);
    CHECK(addAt >= 0 && g_events[addAt].self == ai && g_events[addAt].a == I(enemy) && g_events[addAt].f == 2.5f);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 13 && g_hooks[0].a == I(enemy));

    // In combat with a non-player enemy: no threat gate, but the script still hears about it.
    ResetFixture();
    g_inCombat = true;
    ai = g_fakes[0].ai();
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kAddAggro) == 0);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 13);

    // In combat with a player enemy: the gate passes.
    ResetFixture();
    g_inCombat = true;
    g_fakes[1].player = true;
    ai = g_fakes[0].ai();
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kAddAggro) == 1);

    // Existing aggro blocks the gate.
    ResetFixture();
    g_aggroValue = 1.0f;
    ai = g_fakes[0].ai();
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kAddAggro) == 0);
    CHECK(g_hooks.size() == 1 && g_hooks[0].slot == 13);

    // An enemy awaiting spawn, or the owner in limbus, skips the whole body after the group call.
    ResetFixture();
    g_fakes[1].awaiting = true;
    ai = g_fakes[0].ai();
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kGroupOnEnemySpotted) == 1);
    CHECK(CountEvents(kAddAggro) == 0);
    CHECK(g_hooks.empty());

    ResetFixture();
    g_fakes[0].inLimbus = true;
    ai = g_fakes[0].ai();
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kAddAggro) == 0);
    CHECK(g_hooks.empty());

    // No group: the spot still reaches the gate and the script.
    ResetFixture();
    ai = g_fakes[0].ai();
    ai->*get(GroupTag()) = nullptr;
    ai->CharAI::OnEnemySpotted(g_fakes[1].ch());
    CHECK(CountEvents(kGroupOnEnemySpotted) == 0);
    CHECK(CountEvents(kAddAggro) == 1);
    CHECK(g_hooks.size() == 1);
}

}  // namespace

int main() {
    InitVtables();
    TestForwarders();
    TestMasterHooks();
    TestOnRevived();
    TestOnDied();
    TestOnInit();
    TestOnTerminate();
    TestOnUpdate();
    TestOnEnemySpotted();
    if (g_failures != 0) {
        std::printf("g1-game-character-CharAI-2ae0f1-3 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-CharAI-2ae0f1-3 test: all checks passed\n");
    return 0;
}
