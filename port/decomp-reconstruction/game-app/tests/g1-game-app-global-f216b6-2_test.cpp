// Test for batch g1-game-app-global-f216b6-2. Covers ToLowerCase (self-contained) and CF_SetCombatants (its state
// writes, the level difference and the 32-bit wrap). The engine call CF_SetCombatants makes, CharProperties::PROPS_Get,
// is defined here as a fake that answers from the two test characters, so the batch source links alone. The object
// factories are stubs and GetApplicator is a stub, so they are not exercised. IsMultiplayerGame is in the _players
// companion, which needs PlayerManager.hpp and cannot share a translation unit with Character.hpp. Exit status 0 means
// every check passed.
#include <climits>
#include <cstdio>
#include <cstring>

#include "dh2/Character.hpp"
#include "dh2/global/CombatFormulas.hpp"
#include "dh2/global/ToLowerCase.hpp"

// The four combat flags and levels are defined by batch -3 (game-app/src/g1-game-app-global-f216b6-3.cpp) in the
// product build. This test links only the -2 source, so it defines them here, once, with the same zero initial values.
// The batch source does not define them, so the test does not clash with it.
bool s_isCritical = false;
bool s_isBlocked = false;
int s_ad_dlevel = 0;
int s_da_dlevel = 0;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// The two characters' CharProperties subobjects, and the value PROPS_Get answers for property 19 on each.
const CharProperties* g_attackerProps = nullptr;
const CharProperties* g_defenderProps = nullptr;
int g_attackerValue = 0;
int g_defenderValue = 0;
int g_lastPropId = -1;

// Placeholder storage for the two characters. The batch only forms pointers to these objects and calls PROPS_Get,
// which is defined below. Nothing reads the storage otherwise.
alignas(Character) unsigned char g_attackerStorage[sizeof(Character)];
alignas(Character) unsigned char g_defenderStorage[sizeof(Character)];

Character* Attacker() {
    return reinterpret_cast<Character*>(g_attackerStorage);
}

Character* Defender() {
    return reinterpret_cast<Character*>(g_defenderStorage);
}

void SetupCharacters(int attackerValue, int defenderValue) {
    g_attackerProps = static_cast<const CharProperties*>(Attacker());
    g_defenderProps = static_cast<const CharProperties*>(Defender());
    g_attackerValue = attackerValue;
    g_defenderValue = defenderValue;
    g_lastPropId = -1;
}

void TestToLowerCaseWholeString() {
    char s[] = "HeLLo WorLD";
    const std::size_t len = ToLowerCase(s, 0, -1);
    Check(std::strcmp(s, "hello world") == 0, "to = -1 lowercases every capital");
    Check(len == 11, "returns strlen of the string");
}

void TestToLowerCaseRange() {
    char s[] = "ABCDEF";
    ToLowerCase(s, 2, 3);
    Check(std::strcmp(s, "ABcdEF") == 0, "inclusive range 2..3 lowercases only those characters");
}

void TestToLowerCaseClampsPastEnd() {
    char a[] = "ABC";
    ToLowerCase(a, 0, 99);
    Check(std::strcmp(a, "abc") == 0, "to past the end clamps to the last character");
    char b[] = "ABC";
    ToLowerCase(b, 0, 3);
    Check(std::strcmp(b, "abc") == 0, "to one past the end clamps to the last character");
    char c[] = "ABC";
    ToLowerCase(c, 0, 2);
    Check(std::strcmp(c, "abc") == 0, "to on the last character lowercases through it");
}

void TestToLowerCaseEmptyRanges() {
    char a[] = "ABC";
    ToLowerCase(a, 2, 1);
    Check(std::strcmp(a, "ABC") == 0, "from past to leaves the string alone");
    char b[] = "ABC";
    ToLowerCase(b, 5, -1);
    Check(std::strcmp(b, "ABC") == 0, "from past the end leaves the string alone");
    char e[] = "";
    Check(ToLowerCase(e, 0, -1) == 0, "empty string returns 0");
}

void TestToLowerCaseOtherBytes() {
    char s[] = "@AZ[`{";
    ToLowerCase(s, 0, -1);
    Check(std::strcmp(s, "@az[`{") == 0, "only A..Z change; @ [ ` { are left alone");
    char h[] = {static_cast<char>(0xC1), 'A', '\0'};
    ToLowerCase(h, 0, -1);
    Check(static_cast<unsigned char>(h[0]) == 0xC1, "a high-bit byte is not a capital");
    Check(h[1] == 'a', "a capital after a high-bit byte still lowercases");
}

void TestToLowerCaseNull() {
    Check(ToLowerCase(nullptr, 0, -1) == 0, "null string returns 0");
}

void TestCombatantsStateAndDifference() {
    SetupCharacters(50, 30);
    s_isCritical = true;
    s_isBlocked = true;
    const int result = CF_SetCombatants(Attacker(), Defender(), 7, true, false);
    Check(result == 20, "returns attacker property 19 minus defender property 19");
    Check(g_lastPropId == 19, "reads property 19");
    Check(s_attacker == Attacker() && s_defender == Defender(), "stores attacker and defender");
    Check(s_ad_dlevel == 20, "s_ad_dlevel is the difference");
    Check(s_da_dlevel == -20, "s_da_dlevel is its negation");
    Check(s_element == 7, "stores the element");
    Check(s_offHanded, "stores the off-hand flag");
    Check(!s_isSkill, "stores the skill flag");
    Check(!s_isCritical && !s_isBlocked, "clears the critical and blocked flags");
}

void TestCombatantsNegativeDifference() {
    SetupCharacters(10, 40);
    const int result = CF_SetCombatants(Attacker(), Defender(), 0, false, true);
    Check(result == -30, "a weaker attacker gives a negative difference");
    Check(s_ad_dlevel == -30 && s_da_dlevel == 30, "stored levels mirror the difference");
    Check(!s_offHanded && s_isSkill, "flags are stored as passed");
}

void TestCombatantsThirtyTwoBitWrap() {
    SetupCharacters(INT_MIN, 1);
    const int result = CF_SetCombatants(Attacker(), Defender(), 0, false, false);
    Check(result == INT_MAX, "the difference wraps at 32 bits, as on ARM");
    Check(s_da_dlevel == -INT_MAX, "the negation of the wrapped difference is taken the same way");
}

}  // namespace

// Fake of the engine call CF_SetCombatants makes: CharProperties::PROPS_Get(propId, useTemp). Property 19 of the two
// test characters answers from the table above; other properties and unknown objects read as sentinels.
int CharProperties::PROPS_Get(int propId, bool /*useTemp*/) const {
    g_lastPropId = propId;
    if (propId != 19) {
        return -999;
    }
    if (this == g_attackerProps) {
        return g_attackerValue;
    }
    if (this == g_defenderProps) {
        return g_defenderValue;
    }
    return -998;
}

int main() {
    TestToLowerCaseWholeString();
    TestToLowerCaseRange();
    TestToLowerCaseClampsPastEnd();
    TestToLowerCaseEmptyRanges();
    TestToLowerCaseOtherBytes();
    TestToLowerCaseNull();
    TestCombatantsStateAndDifference();
    TestCombatantsNegativeDifference();
    TestCombatantsThirtyTwoBitWrap();
    if (g_failures == 0) {
        std::printf("all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
