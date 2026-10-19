// Test for batch g1-game-character-Character-ee9946-8.
//
// The batch source calls functions of other batches (the faery and combat accessors of Character, CharAI,
// CharStateMachine, DebugSwitches, Random, the CF__Calc* formulas, PyDataConstants and the profiling scopes). They are
// stubbed below so the executable links. The stubs record their arguments and return fixed values. Character is not
// constructed: the storage is zero-filled and only non-virtual members run, as in the sibling tests.

#include <cstdio>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/global/runtime_support.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/CombatFormulas.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C
#include "dh2/global/cf_calc.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// ---- Globals the batch source reads -------------------------------------------------------------------------

int gAssertLevel = 0;
Character* s_attacker = nullptr;
Character* s_defender = nullptr;
int s_element = 0;
bool s_offHanded = false;
bool s_isSkill = false;

// ---- Recorders and fixed answers ----------------------------------------------------------------------------

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

int g_difficulty = 2;
int g_faeryCount = 3;
int g_levels[8] = {0, 0, 0, 0, 0, 0, 0, 0};
int g_stateSetCalls = 0;
int g_lastStateValue = -1;
int g_ctrlAllowed = 1;
int g_spellUsable = 1;

int g_randomCalls = 0;
int g_lastRandomRange = -1;
unsigned int g_rollValue = 42;

int g_setCombatantsElement = -1;
int g_missedAnswer = 0;
int g_dodgedAnswer = 0;
int g_missOrDodgeCalls = 0;
int g_damageCalls = 0;
int g_lastDamageFixed = -1;
int g_lastDamageMode = -1;
CombatDamage g_damageAnswer{};

// Zero-filled Character objects: only non-virtual members are called on them, and the stubs never read them.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];
alignas(Character) unsigned char g_attackerStorage[sizeof(Character)];
alignas(Character) unsigned char g_defenderStorage[sizeof(Character)];
// The PlayerManager singleton. dword_99F76C is the Application member (game-app/src/link1_ApplicationWords.cpp), which is
// null in this test unless it is defined here; IncFaeryLevel asks it IsLocalPlayer for the "faery_charged" trophy, so it
// needs a real object.
alignas(PlayerManager) unsigned char g_playerManagerStorage[sizeof(PlayerManager)];

}  // namespace

// The PlayerManager singleton and the answer its IsLocalPlayer gives. The manager reports that the character is not
// local, which keeps the trophy path out of this test.
static PlayerManager* g_test_dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member

int PlayerManager::IsLocalPlayer(const Character*) {
    return 0;
}

// ---- Stubs for symbols defined by other batches (only the linker needs them) --------------------------------

DebugSwitches* DebugSwitches::GetInstance() {
    static unsigned char storage[64];
    return reinterpret_cast<DebugSwitches*>(storage);
}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

unsigned int Random::GetRandom(int range, bool synced) {
    (void)synced;
    ++g_randomCalls;
    g_lastRandomRange = range;
    return g_rollValue;
}

void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

int CF_SetCombatants(Character*, Character*, int element, bool, bool) {
    g_setCombatantsElement = element;
    return 0;
}

MissOrDodgeResult CF__CalcMissOrDodge(Character*, Character*, int, int mode, int, bool) {
    ++g_missOrDodgeCalls;
    (void)mode;
    MissOrDodgeResult r{};
    r.m_missed = g_missedAnswer != 0;
    r.m_dodged = g_dodgedAnswer != 0;
    return r;
}
bool CF__CalcBlock(Character*, Character*, int, int) { return false; }
bool CF__CalcCrit(Character*, Character*, int, int) { return false; }
bool CF__CalcHurt(Character*, Character*, int, int) { return false; }
bool CF__CalcPush(Character*, Character*, int, int) { return false; }
bool CF__CalcStun(Character*, Character*, int, int) { return false; }
bool CF__CalcFear(Character*, Character*, int, int) { return false; }
bool CF__CalcSlow(Character*, Character*, int, int) { return false; }
CombatDamage CF__CalcDamage(Character*, Character*, int fixedDamage, int mode, int, bool, bool) {
    ++g_damageCalls;
    g_lastDamageFixed = fixedDamage;
    g_lastDamageMode = mode;
    return g_damageAnswer;
}

PyDataConstants* ApplicationGetPyDataConstants() { return nullptr; }
int PyDataConstants::getConstant(const char*, const char*) const { return 0; }

int Character::SG_GetGameDifficulty() { return g_difficulty; }
int Character::SG_GetFaerieCount(int) { return g_faeryCount; }
int Character::SG_GetFaerieLevel(unsigned int faery, int) { return g_levels[faery]; }
void Character::SG_SetFaerieLevel(unsigned int faery, int level, int) { g_levels[faery] = level; }
void Character::SG_SetFaerieState(unsigned int, int state, int) {
    ++g_stateSetCalls;
    g_lastStateValue = state;
}
void Character::SG_SetCurrentFaerie(unsigned int, int) {}
void CharAI::UpdateAllSkills() {}
bool CharAI::AI_IsSpellUsable() const { return g_spellUsable != 0; }
bool Character::CTRLIsAllowed() const { return g_ctrlAllowed != 0; }
void Character::CancelSneaking() {}
void Character::RegenHP(int) {}
void Character::RegenMP(int) {}
bool Character::IsFollower() const { return false; }
int CharStateMachine::SM_SetInjureState(void*, bool) { return 0; }

// ---- Checks -------------------------------------------------------------------------------------------------

namespace {

void TestResetResult() {
    Character::AttackResult r{};
    r.m_damage = 5;
    r.m_resultFlags = 0xFF;
    r.m_attackFlags = 0xFF;
    r.unk_10 = 9;
    Character::_F_ResetResult(r);
    Check(r.m_damage == -1, "reset: m_damage is -1");
    Check(r.unk_04 == -1 && r.unk_08 == -1 && r.unk_0c == -1, "reset: words +4, +8, +0xc are -1");
    Check(r.unk_10 == 0 && r.unk_14 == 0, "reset: words +0x10, +0x14 are 0");
    Check(r.m_resultFlags == 0 && r.m_attackFlags == 0, "reset: flag words are 0");
    Check(r.unk_20 == -1 && r.unk_24 == -1, "reset: words +0x20, +0x24 are -1");
}

void ResetCounters() {
    g_randomCalls = 0;
    g_lastRandomRange = -1;
    g_setCombatantsElement = -1;
    g_missedAnswer = 0;
    g_dodgedAnswer = 0;
    g_missOrDodgeCalls = 0;
    g_damageCalls = 0;
    g_lastDamageFixed = -1;
    g_lastDamageMode = -1;
    g_damageAnswer = CombatDamage{};
}

void TestCalculateWithoutCombatants() {
    ResetCounters();
    s_attacker = nullptr;
    s_defender = nullptr;
    Character::AttackResult r{};
    // Block (0x10) and the split damage (0x20000); with no combatants the block roll is false and the damage is 0.
    Character::_F_CalculateResult(r, nullptr, nullptr, 0x10 | 0x20000, -7, 3, 99);
    Check(g_randomCalls == 1 && g_lastRandomRange == 100, "no combatants: block draws one d100");
    Check(g_damageCalls == 0, "no combatants: no CF__CalcDamage call");
    Check(r.m_damage == 0 && r.unk_04 == 0 && r.unk_24 == 0, "no combatants: damage split is zero");
    Check((r.m_resultFlags & 0x4) == 0, "no combatants: block bit clear");
    Check(r.unk_20 == -7 && r.m_attackFlags == (0x10u | 0x20000u), "no combatants: stored words");
    Check(g_setCombatantsElement == 3, "no combatants: CF_SetCombatants gets the element");
}

void TestMissReturnsEarly() {
    ResetCounters();
    s_attacker = reinterpret_cast<Character*>(g_attackerStorage);
    s_defender = reinterpret_cast<Character*>(g_defenderStorage);
    g_missedAnswer = 1;
    g_dodgedAnswer = 0;
    Character::AttackResult r{};
    Character::_F_CalculateResult(r, s_attacker, s_defender, 0x5 | 0x80000, 0, 0, 77);
    Check(g_missOrDodgeCalls == 1, "miss: one miss/dodge roll");
    Check((r.m_resultFlags & 0x1) != 0, "miss: missed bit set");
    Check(g_damageCalls == 0, "miss: the damage part is skipped by the early return");
    Check(r.m_damage == -1, "miss: damage keeps the reset value");
}

void TestFixedDamage() {
    ResetCounters();
    s_attacker = reinterpret_cast<Character*>(g_attackerStorage);
    s_defender = reinterpret_cast<Character*>(g_defenderStorage);
    g_damageAnswer.m_damage = 1234;
    Character::AttackResult r{};
    Character::_F_CalculateResult(r, s_attacker, s_defender, 0x80000, 0, 0, 77);
    Check(g_damageCalls == 1 && g_lastDamageMode == 3 && g_lastDamageFixed == 77, "fixed damage: mode 3 with the fixed value");
    Check(r.m_damage == 1234, "fixed damage: result takes the damage");
}

void TestDamageSplit() {
    ResetCounters();
    s_attacker = reinterpret_cast<Character*>(g_attackerStorage);
    s_defender = reinterpret_cast<Character*>(g_defenderStorage);
    g_damageAnswer.m_damage = 0x300;
    g_damageAnswer.m_element = 5;
    g_damageAnswer.m_value132 = 7;
    g_damageAnswer.m_value133 = 9;
    g_damageAnswer.m_dot.m_gate = 11;
    g_damageAnswer.m_dot.m_damage = 13;
    g_damageAnswer.m_dot.m_element = 17;
    Character::AttackResult r{};
    Character::_F_CalculateResult(r, s_attacker, s_defender, 0x20000, 0, 0, 0);
    Check(g_lastDamageMode == 0, "split: mode 0");
    Check(r.m_damage == 0x300, "split: m_damage");
    Check(r.unk_04 == 17 && r.unk_08 == 11 && r.unk_0c == 13, "split: dot element, gate and damage");
    Check(r.unk_10 == 7 && r.unk_14 == 9, "split: value 132 and 133");
    Check(r.unk_24 == 5, "split: element in +0x24");
}

void TestDotAttackRequest() {
    ResetCounters();
    s_attacker = reinterpret_cast<Character*>(g_attackerStorage);
    s_defender = reinterpret_cast<Character*>(g_defenderStorage);
    Character::AttackResult r{};
    Character::F_DotAttack(r, s_attacker, s_defender, 77, 5);
    Check(r.m_attackFlags == 0x20080000u, "dot: request word 0x20080000");
    Check(r.unk_20 == -1, "dot: stored word -1");
    Check(g_setCombatantsElement == 5, "dot: element is the caller's b");
    Check(g_damageCalls == 1 && g_lastDamageMode == 3 && g_lastDamageFixed == 77, "dot: fixed damage is the caller's a");
}

void TestFaeryLevels() {
    // IncAllFaeriesLevel sets every faery to state 1 and raises its level once.
    ResetCounters();
    g_difficulty = 2;
    g_faeryCount = 3;
    for (int& level : g_levels) {
        level = 0;
    }
    g_stateSetCalls = 0;
    g_lastStateValue = -1;
    Character* const self = reinterpret_cast<Character*>(g_characterStorage);
    self->IncAllFaeriesLevel();
    Check(g_stateSetCalls == 3 && g_lastStateValue == 1, "faery: every faery state set to 1");
    Check(g_levels[0] == 1 && g_levels[1] == 1 && g_levels[2] == 1, "faery: every faery level raised once");
    Check(g_levels[3] == 0, "faery: no faery beyond the count is touched");

    // IncFaeryLevel on one faery raises only that one.
    g_levels[0] = 4;
    g_levels[1] = 0;
    self->IncFaeryLevel(0);
    Check(g_levels[0] == 5, "faery: IncFaeryLevel adds one");
}

void TestCastingPossible() {
    Character* const self = reinterpret_cast<Character*>(g_characterStorage);
    g_ctrlAllowed = 0;
    g_spellUsable = 1;
    Check(self->IsCastingPossible() == false, "casting: control not allowed");
    g_ctrlAllowed = 1;
    g_spellUsable = 0;
    Check(self->IsCastingPossible() == false, "casting: spell not usable");
    g_spellUsable = 1;
    Check(self->IsCastingPossible() == true, "casting: both allowed");
}

}  // namespace

int main() {
    TestResetResult();
    TestCalculateWithoutCombatants();
    TestMissReturnsEarly();
    TestFixedDamage();
    TestDamageSplit();
    TestDotAttackRequest();
    TestFaeryLevels();
    TestCastingPossible();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-Character-ee9946-8 tests passed\n");
    return 0;
}
