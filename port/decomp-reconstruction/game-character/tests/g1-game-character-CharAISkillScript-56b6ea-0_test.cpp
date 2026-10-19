// Test for batch g1-game-character-CharAISkillScript-56b6ea-0.
//
// Covers the constructor's stored fields, GetCooldown (no slot, failed lookup, the elapsed/interval fraction, and the owner
// passed to TMR_TimeLeft), the exact null-table path of SpawnProjectile, and the no-script path of the Lua-driven hooks.
// The owner is a zero-filled Character-sized buffer. The code reads only CharAI::m_script, which is zero there, and it passes
// the CharTimers subobject to TMR_TimeLeft without dereferencing it, so no Character is constructed.
//
// The symbols of other batches that the batch source would otherwise pull in are defined here: gAssertLevel,
// Arrays::ProjectileTable::size and CharTimers::TMR_TimeLeft.

#include <cstdio>
#include <cstring>

#include "dh2/CharAISkillScript.hpp"
#include "dh2/CharTimers.hpp"
#include "dh2/Character.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// ---- stub state ---------------------------------------------------------------------------------------------------------

int gAssertLevel = 0;

namespace Arrays {
std::uint32_t ProjectileTable::size = 0;
}  // namespace Arrays

namespace {

bool g_timeLeftResult = false;
unsigned int g_timeLeftElapsed = 0;
unsigned int g_timeLeftInterval = 0;
unsigned int g_timeLeftId = 0;
const void* g_timeLeftThis = nullptr;
int g_timeLeftCalls = 0;

alignas(16) unsigned char g_owner[sizeof(Character)];

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool NearlyEqual(float a, float b) {
    const float d = a - b;
    return d < 1e-6f && d > -1e-6f;
}

void ResetTimeLeftStub(bool result, unsigned int elapsed, unsigned int interval) {
    g_timeLeftResult = result;
    g_timeLeftElapsed = elapsed;
    g_timeLeftInterval = interval;
    g_timeLeftId = 0;
    g_timeLeftThis = nullptr;
    g_timeLeftCalls = 0;
}

Character* MakeOwner() {
    std::memset(g_owner, 0, sizeof g_owner);
    return reinterpret_cast<Character*>(g_owner);
}

}  // namespace

// ---- stub for the CharTimers lookup (defined in game-character/src/g1-game-character-CharTimers-b6b849-0.cpp) ---------------

bool CharTimers::TMR_TimeLeft(unsigned int id, unsigned int& elapsed, unsigned int& interval) const {
    ++g_timeLeftCalls;
    g_timeLeftId = id;
    g_timeLeftThis = this;
    if (!g_timeLeftResult) {
        return false;
    }
    elapsed = g_timeLeftElapsed;
    interval = g_timeLeftInterval;
    return true;
}

// ---- checks -------------------------------------------------------------------------------------------------------------

static void TestConstructor() {
    Character* owner = MakeOwner();
    const char* name = "charge";
    CharAISkillScript skill(owner, name, 3);
    CHECK(skill.m_character == owner);
    CHECK(skill.m_scriptName == name);
    CHECK(skill.m_skillIndex == 3u);
    CHECK(skill.m_cooldownTimerId == -1);
}

static void TestGetCooldown() {
    Character* owner = MakeOwner();
    CharAISkillScript skill(owner, "charge", 0);

    // No timer slot: 0, and the lookup is not made.
    ResetTimeLeftStub(true, 250, 1000);
    CHECK(NearlyEqual(skill.GetCooldown(), 0.0f));
    CHECK(g_timeLeftCalls == 0);

    // The lookup fails: 0.
    skill.m_cooldownTimerId = 4;
    ResetTimeLeftStub(false, 250, 1000);
    CHECK(NearlyEqual(skill.GetCooldown(), 0.0f));
    CHECK(g_timeLeftCalls == 1);
    CHECK(g_timeLeftId == 4u);

    // The slot's owner is the CharTimers subobject of the character.
    ResetTimeLeftStub(true, 250, 1000);
    CHECK(NearlyEqual(skill.GetCooldown(), 0.75f));
    CHECK(g_timeLeftId == 4u);
    CHECK(g_timeLeftThis == static_cast<const CharTimers*>(owner));

    // Fraction edges.
    ResetTimeLeftStub(true, 0, 1000);
    CHECK(NearlyEqual(skill.GetCooldown(), 1.0f));
    ResetTimeLeftStub(true, 1000, 1000);
    CHECK(NearlyEqual(skill.GetCooldown(), 0.0f));
    ResetTimeLeftStub(true, 1, 4);
    CHECK(NearlyEqual(skill.GetCooldown(), 0.75f));
}

static void TestSpawnProjectileNullTable() {
    // An id at or above the table size gives null without reaching the manager.
    Character* owner = MakeOwner();
    CharAISkillScript skill(owner, "charge", 0);
    Arrays::ProjectileTable::size = 0;
    CHECK(skill.SpawnProjectile(0u, 0.5f) == nullptr);
    CHECK(skill.SpawnProjectile(0u, true) == nullptr);
}

static void TestNoScriptPaths() {
    // CharAI::m_script is zero in the buffer, so every hook takes its no-script path.
    Character* owner = MakeOwner();
    CharAISkillScript skill(owner, "charge", 1);

    CHECK(skill.OnSkill() == 0);
    CHECK(skill.OnPreSkill() == false);
    CHECK(skill.OnSkillCheck_Usable() == false);
    CHECK(skill.OnSkillCheck_Active() == false);

    // The no-script path of the void hooks does nothing and must not touch the object.
    skill.OnPostSkill();
    skill.OnSkillCleanUp();
    skill.OnSkillUpdate();

    float info = 5.0f;
    skill.GetInfo(7u, &info);
    CHECK(NearlyEqual(info, 0.0f));
    skill.GetInfo(7u, nullptr);  // null out pointer is allowed

    // The projectile callbacks ignore the hit (1) without a script. The projectile is not dereferenced on that path.
    CHECK(CharAISkillScript::_ProjectileHit(nullptr, &skill) == 1);
    CHECK(CharAISkillScript::_ProjectileCheck(nullptr, &skill) == 1);
}

int main() {
    TestConstructor();
    TestGetCooldown();
    TestSpawnProjectileNullTable();
    TestNoScriptPaths();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("CharAISkillScript tests passed\n");
    return 0;
}
