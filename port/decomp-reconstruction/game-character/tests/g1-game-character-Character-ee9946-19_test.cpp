// Test for batch g1-game-character-Character-ee9946-19.
//
// The batch source calls CharProperties, DebugSwitches, Application, PyDataConstants, ScriptManager, HasMana and the SG_*
// savegame wrappers, which other batches define. They are stubbed below so the executable links. The property sheet is a
// plain array of raw values (the final sheet that PROPS_Get reads), so the stat, regeneration and mana arithmetic is
// checked against it. Character is never constructed: its storage is zero-filled, and only m_freeMana and m_charPropsId
// are read. ModifyCharProps, _GiveXP and LevelUp call the virtual IsPlayer(), which needs a vtable, so they are not run.

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
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/Singleton.hpp"                 // Singleton<Application>::s_inst
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/arrays.hpp"        // Arrays::DesignSettingsTable
#include "pydata-accessors/structs_records.hpp"  // Structs::DesignSettings
#include "pydata-accessors/w7_pydata12.hpp"

int gAssertLevel = 0;

// ---- Stubs for the other batches ----------------------------------------------------------------------------

namespace {

int g_props[256];                   // raw final sheet by property id (PROPS_Get reads it); the stat ids go up to 151
int g_updates = 0;                  // UpdateBaseProperties calls
int g_loads = 0;                    // DebugSwitches::load calls
std::vector<std::string> g_probes;  // DebugSwitches::GetSwitch names, in call order
bool g_godManaOption = false;       // Application::IsSavedOptionOn("GOD_MANA")
bool g_godManaSwitch = false;       // DebugSwitches "GOD_MANA"
bool g_oneKillSwitch = false;       // DebugSwitches "OneKillLevelUp"
bool g_onlineGame = false;          // Application::IsOnlineGame (UseMana's online test; false keeps the offline path)
int g_difficulty = 0;               // SG_GetGameDifficultyUnlocked

alignas(16) unsigned char g_charStorage[sizeof(Character)];
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_dbgStorage[sizeof(DebugSwitches)];
alignas(16) unsigned char g_pyStorage[sizeof(PyDataConstants)];
// The PlayerManager singleton. dword_99F76C (the Application's m_playerManager, +0x40) is null in this test unless it is
// defined below, and DistributeXP reads m_numCharacters (+0x6c4) through it. The test wants no local players, so the
// manager's zeroed storage is the whole fixture; its m_numCharacters is 0.
alignas(16) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];
// The DesignSettings row DistributeXP reads (Arrays::DesignSettingsTable +0x9c is the share radius, +0xa0 the
// per-player penalty). The table is empty until a DesignSettings file has been read, so it is filled here.
alignas(16) unsigned char g_designStorage[sizeof(Structs::DesignSettings)];

Character* Self() { return reinterpret_cast<Character*>(g_charStorage); }

}  // namespace

// ---- The PlayerManager and DesignSettingsTable singletons the batch reaches through globals --------------------
// dword_99F76C is the Application's m_playerManager (+0x40): game-app/src/link1_ApplicationWords.cpp defines it as a
// reference to Singleton<Application>::s_inst's member, and that library definition is the one the batch object reads
// (a test-local reference for the same name does not displace it). The test therefore uses the same shape and points
// the Application member at its own manager storage, so both the global and the member name the same object. A null
// manager makes DistributeXP read m_numCharacters through null and crash.
PlayerManager*& dword_99F76C = Singleton<Application>::s_inst.m_playerManager;

// The two file-local statics of game-app/src/g1-game-app-GS_InterruptLoading-ae96f8-0.cpp. globals.cpp defines the
// Application instance in the same library, so naming it here pulls that object in and the linker asks for these.
int accumulatedTime = 0;
int firstframe = 0;

// The design row DistributeXP reads its share radius and penalty from.
std::uint8_t* Arrays::DesignSettingsTable::members = g_designStorage;

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

DebugSwitches* DebugSwitches::GetInstance() { return reinterpret_cast<DebugSwitches*>(g_dbgStorage); }
void DebugSwitches::load() { ++g_loads; }
bool DebugSwitches::GetSwitch(const std::string& name) {
    g_probes.push_back(name);
    if (name == "GOD_MANA") {
        return g_godManaSwitch;
    }
    if (name == "OneKillLevelUp") {
        return g_oneKillSwitch;
    }
    return false;
}

int CharProperties::PROPS_Get(int id, bool) const { return g_props[id]; }
int CharProperties::PROPS_GetInt(int id, bool) const { return g_props[id] >> 8; }
void CharProperties::PROPS_Add(int id, int value) { g_props[id] += value; }
void CharProperties::PROPS_AddInt(int id, int value) { g_props[id] += value << 8; }
void CharProperties::PROPS_Set(int id, int value) { g_props[id] = value; }
void CharProperties::PROPS_SetInt(int id, int value) { g_props[id] = value << 8; }
int CharProperties::PROPS_GetModifiedXP(int xp) const { return xp; }
void CharProperties::UpdateBaseProperties(int) { ++g_updates; }

// Stands in for batch -18's HasMana: the cost is affordable when it does not exceed the raw MP.
bool Character::HasMana(int amount) const { return amount <= g_props[41]; }
int Character::SG_GetGameDifficultyUnlocked() { return g_difficulty; }
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

void ResetState() {
    std::memset(g_props, 0, sizeof(g_props));
    std::memset(g_charStorage, 0, sizeof(g_charStorage));
    g_updates = 0;
    g_loads = 0;
    g_probes.clear();
    g_godManaOption = false;
    g_godManaSwitch = false;
    g_oneKillSwitch = false;
    g_difficulty = 0;
    g_onlineGame = false;
}

void TestIncStats() {
    ResetState();
    Character* c = Self();

    // Two free points: IncStatStr spends one and adds one to prop 149.
    g_props[148] = 2 << 8;
    c->IncStatStr();
    Check(g_props[148] == (1 << 8), "IncStatStr spends one free point");
    Check(g_props[149] == (1 << 8), "IncStatStr adds one to prop 149");
    Check(g_updates == 1, "IncStatStr updates base properties once");
    Check(g_loads == 1 && g_probes.size() == 1 && g_probes[0] == "isTracingChar_Stats",
          "IncStatStr loads the switches and probes isTracingChar_Stats");

    // Dex goes to prop 150 and End to prop 151.
    ResetState();
    g_props[148] = 1 << 8;
    c->IncStatDex();
    Check(g_props[148] == 0 && g_props[150] == (1 << 8), "IncStatDex spends a point and adds to prop 150");
    ResetState();
    g_props[148] = 1 << 8;
    c->IncStatEnd();
    Check(g_props[148] == 0 && g_props[151] == (1 << 8), "IncStatEnd spends a point and adds to prop 151");

    // No free points: nothing changes, the probe still runs.
    ResetState();
    c->IncStatEnd();
    Check(g_props[151] == 0 && g_updates == 0, "IncStatEnd with no free point changes nothing");
    Check(g_loads == 1 && g_probes.size() == 1 && g_probes[0] == "isTracingChar_Stats",
          "IncStatEnd without a point still probes isTracingChar_Stats");
}

void TestRegenHPAndMP() {
    ResetState();
    Character* c = Self();

    // RegenHP(-1) fills up to the total (raw HP 10 of 50).
    g_props[36] = 10 << 8;
    g_props[38] = 50 << 8;
    c->RegenHP(-1);
    Check(g_props[36] == (50 << 8), "RegenHP(-1) fills HP to the total");
    Check(g_probes.size() == 1, "RegenHP probes when it regenerates");

    // A large amount is clamped to the missing HP.
    g_props[36] = 10 << 8;
    c->RegenHP(100 << 8);
    Check(g_props[36] == (50 << 8), "RegenHP clamps the amount to the missing HP");

    // Zero and a full bar regenerate nothing and do not probe.
    ResetState();
    g_props[36] = 10 << 8;
    g_props[38] = 50 << 8;
    c->RegenHP(0);
    Check(g_props[36] == (10 << 8) && g_probes.empty(), "RegenHP(0) changes nothing and does not probe");
    g_props[36] = 50 << 8;
    c->RegenHP(5 << 8);
    Check(g_props[36] == (50 << 8) && g_probes.empty(), "RegenHP at full HP changes nothing");

    // MP uses props 41 and 43.
    ResetState();
    g_props[41] = 4 << 8;
    g_props[43] = 20 << 8;
    c->RegenMP(-1);
    Check(g_props[41] == (20 << 8), "RegenMP(-1) fills MP to the total");
    g_props[41] = 4 << 8;
    c->RegenMP(3 << 8);
    Check(g_props[41] == (7 << 8), "RegenMP adds the requested amount when it fits");
}

void TestRegenTick() {
    ResetState();
    Character* c = Self();
    g_props[38] = 100 << 8;   // total HP
    g_props[43] = 100 << 8;   // total MP
    g_props[39] = 1 << 8;     // HP regeneration, out of combat
    g_props[40] = 5 << 8;     // HP regeneration, in combat
    g_props[44] = 2 << 8;     // MP regeneration, out of combat
    g_props[45] = 7 << 8;     // MP regeneration, in combat

    c->RegenTick(true);
    Check(g_props[36] == (5 << 8), "RegenTick(true) regenerates HP by prop 40");
    Check(g_props[41] == (7 << 8), "RegenTick(true) regenerates MP by prop 45");
    Check(g_probes.size() == 3, "RegenTick(true) probes once and each regeneration probes once");

    g_props[36] = 0;
    g_props[41] = 0;
    c->RegenTick(false);
    Check(g_props[36] == (1 << 8), "RegenTick(false) regenerates HP by prop 39");
    Check(g_props[41] == (2 << 8), "RegenTick(false) regenerates MP by prop 44");
}

void TestUseMana() {
    ResetState();
    Character* c = Self();
    g_props[41] = 10 << 8;

    Check(c->UseMana(4 << 8), "UseMana returns true when the mana is affordable");
    Check(g_props[41] == (6 << 8), "UseMana spends the cost from prop 41");

    Check(!c->UseMana(20 << 8), "UseMana returns false when the mana is not affordable");
    Check(g_props[41] == (6 << 8), "UseMana leaves MP unchanged when it fails");

    g_godManaOption = true;
    Check(c->UseMana(1 << 8), "UseMana returns true with the GOD_MANA option");
    Check(g_props[41] == (6 << 8), "GOD_MANA option does not spend mana");
    g_godManaOption = false;

    g_godManaSwitch = true;
    Check(c->UseMana(1 << 8), "UseMana returns true with the GOD_MANA switch");
    Check(g_props[41] == (6 << 8), "GOD_MANA switch does not spend mana");
    g_godManaSwitch = false;

    c->m_freeMana = 1;
    Check(c->UseMana(1 << 8), "UseMana returns true when m_freeMana is set");
    Check(g_props[41] == (6 << 8), "m_freeMana does not spend mana");
    c->m_freeMana = 0;

    // A negative cost passes HasMana and adds the magnitude back, as the original does (PROPS_Add(41, -cost)).
    g_props[41] = 10 << 8;
    Check(c->UseMana(-(3 << 8)), "UseMana with a negative cost returns true through HasMana");
    Check(g_props[41] == (13 << 8), "UseMana with a negative cost adds the magnitude to prop 41");
}

void TestDistributeXPEntry() {
    ResetState();
    // A null victim asserts (silent at gAssertLevel 0) and returns before any probe.
    Self()->DistributeXP(nullptr, nullptr);
    Check(g_probes.empty(), "DistributeXP(nullptr) probes nothing");

    // The first parameter of the port's static DistributeXP is the killer and the second is the killed character (the
    // original's first and second arguments). A null killed character returns before the probes; with a killed
    // character and no local players the body runs the three entry probes and then the three tail probes of the
    // m_numCharacters <= 0 branch. Counted in the listing of 0x3bf828: the entry block probes at 0x3bf8b0
    // ("isTracingXPDistributionCst"), 0x3bf8f0 and 0x3bf91c, then, because `v4 = *(dword_99F76C + 1732)`
    // (m_numCharacters) is <= 0, the LABEL_30 probe at 0x3bfd20 and the two LABEL_31 probes at 0x3bfd58 and
    // 0x3bfd9c -- six DebugSwitches::GetSwitch calls, and no loop probe (the loop needs v4 > 0). The earlier
    // 1..3 bound described only the entry block.
    ResetState();
    Self()->DistributeXP(nullptr, Self());
    Check(g_probes.size() == 6, "DistributeXP with no local players probes the three entry and three tail points");
    Check(!g_probes.empty() && g_probes[0] == "isTracingXPDistributionCst", "DistributeXP's first probe is the Cst switch");
}

}  // namespace

int main() {
    // The Application singleton is zero-initialised before main, so the manager is installed here rather than by a
    // static initialiser (which would run before the Application constructor clears the member).
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    TestIncStats();
    TestRegenHPAndMP();
    TestRegenTick();
    TestUseMana();
    TestDistributeXPEntry();
    if (g_failures == 0) {
        std::printf("g1-game-character-Character-ee9946-19 tests: all passed\n");
    } else {
        std::printf("g1-game-character-Character-ee9946-19 tests: %d failure(s)\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
