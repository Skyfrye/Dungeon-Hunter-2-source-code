// Test for the redo batch r2a-game-character-Character-ee9946-9: Character::ModifyCharProps, RegenMP, RegenHP, RegenTick
// and UseMana. Their bodies are in game-character/src/g1-game-character-Character-ee9946-19.cpp (the first batch's file).
//
// The batch source calls CharProperties, DebugSwitches, Application, PyDataConstants, ScriptManager and the SG_* wrappers,
// which other batches define. They are stubbed below so the executable links, as in the batch -19 test.
//
// Two of the functions make virtual calls: ModifyCharProps calls IsPlayer() (ObjectBase vtable slot +0x28) and UseMana
// calls IsRemotelyUpdated() (slot +0x54) when Application::IsOnlineGame() holds. Character is never constructed, so its
// first word is pointed at a table whose 64 entries all run FakeVirtualBool, which returns g_virtualBool. Each virtual
// these functions reach returns bool, so the slot index does not matter here.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/net_singletons.hpp"  // GetOnlineGameFlag
#include "pydata-accessors/w7_pydata12.hpp"

int gAssertLevel = 0;

// ---- Stubs for the other batches ----------------------------------------------------------------------------

namespace {

using FakeSlot = bool (*)(const void*);

int g_props[64];                    // raw final sheet by property id (PROPS_Get reads it)
int g_updates = 0;                  // UpdateBaseProperties calls
int g_lastUpdateId = -1;            // the charTableId of the last UpdateBaseProperties call
int g_loads = 0;                    // DebugSwitches::load calls
std::vector<std::string> g_probes;  // DebugSwitches::GetSwitch names, in call order
bool g_godManaOption = false;       // Application::IsSavedOptionOn("GOD_MANA")
bool g_godManaSwitch = false;       // DebugSwitches "GOD_MANA"
bool g_onlineGame = false;          // Application::IsOnlineGame
bool g_virtualBool = false;         // what every fake virtual returns (IsPlayer, IsRemotelyUpdated)
int g_virtualCalls = 0;             // calls that reached a fake virtual

bool FakeVirtualBool(const void*) {
    ++g_virtualCalls;
    return g_virtualBool;
}

FakeSlot g_fakeVtable[64];

alignas(16) unsigned char g_charStorage[sizeof(Character)];
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_dbgStorage[sizeof(DebugSwitches)];
alignas(16) unsigned char g_pyStorage[sizeof(PyDataConstants)];

// Points the object's vptr at the fake table. Every entry is FakeVirtualBool.
void InstallFakeVtable() {
    for (FakeSlot& slot : g_fakeVtable) {
        slot = &FakeVirtualBool;
    }
    *reinterpret_cast<const void**>(g_charStorage) = reinterpret_cast<const void*>(g_fakeVtable);
}

Character* Self() { return reinterpret_cast<Character*>(g_charStorage); }

}  // namespace

ScriptManager ScriptManager::s_inst;
ScriptManager::ScriptManager() {}
ScriptManager::~ScriptManager() {}
int ScriptManager::GetIDFromName(const char*, bool) const { return -1; }
void ScriptManager::StartScript(int, int, bool) {}

PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pyStorage); }
int PyDataConstants::getConstant(const char*, const char*) const { return 50; }

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
bool Application::IsSavedOptionOn(const char* name) { return std::string(name) == "GOD_MANA" && g_godManaOption; }
bool Application::IsOnlineGame() { return g_onlineGame; }

// The online-game byte (COnline +0x05). The library definition (game-app/src/online_flag.cpp) reads it through
// GetOnline(), which this test does not build, so the flag comes from the test's own variable instead. UseMana and
// HasMana both take the online branch off this byte.
bool GetOnlineGameFlag() { return g_onlineGame; }

DebugSwitches* DebugSwitches::GetInstance() { return reinterpret_cast<DebugSwitches*>(g_dbgStorage); }
void DebugSwitches::load() { ++g_loads; }
bool DebugSwitches::GetSwitch(const std::string& name) {
    g_probes.push_back(name);
    return name == "GOD_MANA" ? g_godManaSwitch : false;
}

int CharProperties::PROPS_Get(int id, bool) const { return g_props[id]; }
int CharProperties::PROPS_GetInt(int id, bool) const { return g_props[id] >> 8; }
void CharProperties::PROPS_Add(int id, int value) { g_props[id] += value; }
void CharProperties::PROPS_AddInt(int id, int value) { g_props[id] += value << 8; }
void CharProperties::PROPS_Set(int id, int value) { g_props[id] = value; }
void CharProperties::PROPS_SetInt(int id, int value) { g_props[id] = value << 8; }
int CharProperties::PROPS_GetModifiedXP(int xp) const { return xp; }
void CharProperties::UpdateBaseProperties(int charTableId) {
    ++g_updates;
    g_lastUpdateId = charTableId;
}

// Stands in for HasMana (batch -18): the cost is affordable when it does not exceed the raw MP (prop 41).
bool Character::HasMana(int amount) const { return amount <= g_props[41]; }
int Character::SG_GetGameDifficultyUnlocked() { return 0; }
void Character::SG_SetPlayerLevel(int) {}
int Character::SG_Save() { return 0; }

// ---- Checks -------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Clears the property sheet, the switch log and the fake character (memset also clears the vptr, so it is set again).
void ResetState() {
    std::memset(g_props, 0, sizeof(g_props));
    std::memset(g_charStorage, 0, sizeof(g_charStorage));
    InstallFakeVtable();
    g_updates = 0;
    g_lastUpdateId = -1;
    g_loads = 0;
    g_probes.clear();
    g_godManaOption = false;
    g_godManaSwitch = false;
    g_onlineGame = false;
    g_virtualBool = false;
    g_virtualCalls = 0;
}

void TestModifyCharProps() {
    ResetState();
    Character* c = Self();
    c->m_charPropsId = 7;

    // Not a player (IsPlayer false): nothing is added, nothing is updated and no switch is probed.
    g_virtualBool = false;
    c->ModifyCharProps(12, 5 << 8);
    Check(g_props[12] == 0 && g_updates == 0 && g_probes.empty(), "ModifyCharProps does nothing for a non-player");
    Check(g_virtualCalls == 1, "ModifyCharProps asks IsPlayer once");

    // A player: the raw amount is added, the base sheet of m_charPropsId is updated once and the switch is probed.
    ResetState();
    c->m_charPropsId = 7;
    g_virtualBool = true;
    c->ModifyCharProps(12, 5 << 8);
    Check(g_props[12] == (5 << 8), "ModifyCharProps adds the raw amount to the property");
    Check(g_updates == 1 && g_lastUpdateId == 7, "ModifyCharProps updates the base sheet of m_charPropsId once");
    Check(g_probes.size() == 1 && g_probes[0] == "isTracingChar_Stats", "ModifyCharProps probes isTracingChar_Stats");

    // A negative amount is applied as well (its ASSERT is silent at gAssertLevel 0).
    c->ModifyCharProps(12, -(2 << 8));
    Check(g_props[12] == (3 << 8), "ModifyCharProps applies a negative amount");
}

void TestRegenHPAndMP() {
    ResetState();
    Character* c = Self();

    // RegenHP(-1) fills HP to the total (raw HP 10 of 50, props 36 and 38).
    g_props[36] = 10 << 8;
    g_props[38] = 50 << 8;
    c->RegenHP(-1);
    Check(g_props[36] == (50 << 8), "RegenHP(-1) fills HP to the total");
    Check(g_probes.size() == 1 && g_probes[0] == "isTracingChar_Stats", "RegenHP probes when it regenerates");

    // An amount past the missing HP is clamped to it.
    g_props[36] = 45 << 8;
    c->RegenHP(10 << 8);
    Check(g_props[36] == (50 << 8), "RegenHP clamps the amount to the missing HP");

    // Zero regenerates nothing and does not probe.
    ResetState();
    g_props[36] = 10 << 8;
    g_props[38] = 50 << 8;
    c->RegenHP(0);
    Check(g_props[36] == (10 << 8) && g_probes.empty(), "RegenHP(0) changes nothing and does not probe");

    // MP uses props 41 (current) and 43 (total).
    ResetState();
    g_props[41] = 4 << 8;
    g_props[43] = 20 << 8;
    c->RegenMP(3 << 8);
    Check(g_props[41] == (7 << 8), "RegenMP adds the requested amount when it fits");
    c->RegenMP(-1);
    Check(g_props[41] == (20 << 8), "RegenMP(-1) fills MP to the total");
}

void TestRegenTick() {
    ResetState();
    Character* c = Self();
    g_props[38] = 100 << 8;  // total HP
    g_props[43] = 100 << 8;  // total MP
    g_props[39] = 1 << 8;    // HP regeneration, out of combat
    g_props[40] = 5 << 8;    // HP regeneration, in combat
    g_props[44] = 2 << 8;    // MP regeneration, out of combat
    g_props[45] = 7 << 8;    // MP regeneration, in combat

    c->RegenTick(true);
    Check(g_props[36] == (5 << 8) && g_props[41] == (7 << 8), "RegenTick(true) uses the in-combat amounts (props 40, 45)");

    g_props[36] = 0;
    g_props[41] = 0;
    c->RegenTick(false);
    Check(g_props[36] == (1 << 8) && g_props[41] == (2 << 8), "RegenTick(false) uses the out-of-combat amounts (props 39, 44)");
}

void TestUseManaOffline() {
    ResetState();
    Character* c = Self();
    g_props[41] = 10 << 8;

    Check(c->UseMana(4 << 8), "UseMana returns true when the mana is affordable");
    Check(g_props[41] == (6 << 8), "UseMana spends the cost from prop 41");
    Check(g_virtualCalls == 0, "UseMana offline does not ask IsRemotelyUpdated");

    Check(!c->UseMana(20 << 8), "UseMana returns false when the mana is not affordable");
    Check(g_props[41] == (6 << 8), "UseMana leaves MP unchanged when it fails");

    // The GOD_MANA option and the GOD_MANA switch both return true without spending.
    g_godManaOption = true;
    Check(c->UseMana(1 << 8), "UseMana returns true with the GOD_MANA option");
    g_godManaOption = false;
    g_godManaSwitch = true;
    Check(c->UseMana(1 << 8), "UseMana returns true with the GOD_MANA switch");
    g_godManaSwitch = false;
    Check(g_props[41] == (6 << 8), "GOD_MANA does not spend mana");

    // m_freeMana (+0x14f0) returns true without spending.
    c->m_freeMana = 1;
    Check(c->UseMana(1 << 8), "UseMana returns true when m_freeMana is set");
    Check(g_props[41] == (6 << 8), "m_freeMana does not spend mana");
    c->m_freeMana = 0;

    // The offline path ignores the remote-update flag: the mana is spent.
    g_virtualBool = true;
    Check(c->UseMana(1 << 8), "UseMana offline spends mana for a remotely updated character");
    Check(g_props[41] == (5 << 8), "UseMana offline spends the cost whatever IsRemotelyUpdated says");
    Check(g_virtualCalls == 0, "UseMana offline never reaches the virtual call");
}

void TestUseManaOnline() {
    ResetState();
    Character* c = Self();
    g_props[41] = 10 << 8;

    // Online and remotely updated: true, nothing is spent and no switch is read, even for a cost above the mana.
    g_onlineGame = true;
    g_virtualBool = true;
    Check(c->UseMana(20 << 8), "UseMana returns true for a remotely updated character in an online game");
    Check(g_props[41] == (10 << 8), "UseMana online and remote spends nothing");
    Check(g_virtualCalls == 1, "UseMana online asks IsRemotelyUpdated once");
    Check(g_probes.empty(), "UseMana online and remote reads no switch");

    // Online but not remotely updated: the offline rules apply.
    ResetState();
    c = Self();
    g_props[41] = 10 << 8;
    g_onlineGame = true;
    g_virtualBool = false;
    Check(c->UseMana(4 << 8), "UseMana online and local spends an affordable cost");
    Check(g_props[41] == (6 << 8), "UseMana online and local spends from prop 41");
    Check(!c->UseMana(20 << 8), "UseMana online and local refuses an unaffordable cost");
}

}  // namespace

int main() {
    TestModifyCharProps();
    TestRegenHPAndMP();
    TestRegenTick();
    TestUseManaOffline();
    TestUseManaOnline();
    if (g_failures == 0) {
        std::printf("r2a-game-character-Character-ee9946-9 tests: all passed\n");
    } else {
        std::printf("r2a-game-character-Character-ee9946-9 tests: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
