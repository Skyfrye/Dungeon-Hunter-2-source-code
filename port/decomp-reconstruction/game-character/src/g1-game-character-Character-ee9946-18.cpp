// Batch g1-game-character-Character-ee9946-18: skill, HP/MP, stat and threat accessors of Character (0x3bcad8 .. 0x3bd4f8).
// Declarations come from dh2/Character.hpp. PARTIAL bodies name what is missing in a PARTIAL comment; the ledger rows in
// game-character/ledger.d/g1-game-character-Character-ee9946-18.csv repeat it.
//
// Property access follows the public CharProperties API. PROPS_Get(id, false) reads the final sheet m_props raw
// (8 fractional bits), PROPS_GetInt is that value >> 8, PROPS_Set takes a raw value, and PROPS_SetInt and PROPS_AddInt
// shift their value left by 8. The saved sheet (m_savedProps) and _GetProperty/_SetProperty are public in dh2/CharProperties.hpp.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/global/runtime_support.hpp"  // before Character.hpp, as in the batch -6 sources
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/net_singletons.hpp"
#include "gameswf/gameswf_value.h"
#include "pydata-accessors/w7_pydata12.hpp"

namespace {

// CharProperties ids used by this batch. The numbers are the original's. Each name comes from the getter or setter
// that uses the id (no property-name table is read here).
constexpr int kPropLevel = 19;                 // GetLevel
constexpr int kPropHP = 36;                    // SetHP, GetHP, GetHPPercent, ValidateHPMP
constexpr int kPropTotalHP = 38;               // GetTotalHP, GetHPPercent, ValidateHPMP
constexpr int kPropMP = 41;                    // SetMP, GetMP, GetMPPercent, ValidateHPMP, HasMana
constexpr int kPropTotalMP = 43;               // GetTotalMP, GetMPPercent, ValidateHPMP
constexpr int kPropStatPoints = 148;           // free stat points: ResetStatsChange adds, IncStatNrg spends one
constexpr int kPropStatSpent[4] = {149, 150, 151, 152};  // ResetStatsChange args a..d; IncStatNrg adds one to 152
constexpr int kPropSkillPoints = 157;          // IncSkill spends one per level gained
constexpr int kPropPotionCap = 194;            // IncSkill copies it into ItemInventory::m_maxPotions (name not recovered)
constexpr int kPropThreatPerDamage = 204;      // GetEffectiveThreatPerDamage
constexpr int kPropThreatPerHeal = 205;        // GetEffectiveThreatPerHeal
constexpr int kPropThreatPerDamageToFriendly = 206;  // GetEffectiveThreatPerDamageToFriendly

// Threat props are fixed point with 8 fractional bits: the original multiplies by the float 0x3B800000, which is 2^-8.
constexpr float kThreatScale = 0.00390625f;

// The DebugSwitches probe of the skill and stat paths: load the switch file, then read "isTracingChar_Stats" (the
// result is unused). DebugSwitches::s_inst is private in the header, so the instance comes from GetInstance().
void ProbeTracingCharStats() {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Stats");
}

}  // namespace

// 0x3bcad8 Character::IsSkillUsable(int)
bool Character::IsSkillUsable(int skill) {
    if (!CTRLIsAllowed()) {
        return false;
    }
    PlayerSavegame* savegame = m_savegame;
    if (savegame == nullptr) {
        return false;
    }
    PlayerSavegame::SkillRecord* rows = savegame->m_skills;
    if (rows == nullptr) {
        return false;
    }
    const bool usable = AI_IsSkillUsable(static_cast<unsigned int>(skill));
    // +0x06 of the 8-byte skill row is the usable flag the original stores here. The header declares these two bytes as
    // pad_06 (layout request: name them). The flag is written through that array.
    rows[skill].pad_06[0] = usable ? 1 : 0;
    return usable;
}

// 0x3bcc58 Character::IncSkill(int, bool)
// The skill table is checked first: without it the original reports the assertion, and gAssertLevel 2 stops the process
// (the original stores 0 to address 0 there). Then, when the skill points (prop 157) are not positive, or the skill is not
// available, the debug probe runs and the result is false. The maximum level comes from the CharacterDesign constants
// (MaxSkillLevelBNormal, or MaxSkillLevelCHard and MaxSkillLevelDVeryHard for the unlocked difficulty). When the row level is
// below the maximum and CanIncrementSkill holds, and a is false: prop 157 loses one point, the row level grows,
// CharAI::UpdateAllSkills and RecalcProperties(true) run, ItemInventory::m_maxPotions (+0x2c) takes the low byte of
// max(PROPS_GetInt(194), 0), and the probe runs. The result is true when a level was added (or when a is set and the skill
// could be raised).
// Without a savegame the original dereferences it after the assertion (undefined); this port returns false there.
// Property 194 has no recovered name.
bool Character::IncSkill(int skill, bool a) {
    PlayerSavegame* savegame = m_savegame;
    const bool hasSkills = savegame != nullptr && savegame->m_skills != nullptr;
    if (!hasSkills) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n",
                         "m_playerSavegame && m_playerSavegame->SG_GetSkills()",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Skills.cpp", 134);
        }
    }

    if (PROPS_GetInt(kPropSkillPoints, false) <= 0) {
        ProbeTracingCharStats();
        return false;
    }
    if (!IsSkillAvailable(skill)) {
        ProbeTracingCharStats();
        return false;
    }
    if (!hasSkills) {
        return false;
    }

    int maxLevel = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxSkillLevelBNormal");
    if (SG_GetGameDifficultyUnlocked() == 1) {
        maxLevel = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxSkillLevelCHard");
    } else if (SG_GetGameDifficultyUnlocked() == 2) {
        maxLevel = ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxSkillLevelDVeryHard");
    }

    if (maxLevel > static_cast<int>(savegame->m_skills[skill].level) && CanIncrementSkill(skill)) {
        if (!a) {
            PROPS_AddInt(kPropSkillPoints, -1);
            ++savegame->m_skills[skill].level;
            CharAI::UpdateAllSkills();
            RecalcProperties(true);
            const int potionCap = PROPS_GetInt(kPropPotionCap, false);
            ItemInventory::m_maxPotions = static_cast<std::int8_t>(potionCap > 0 ? potionCap : 0);
            ProbeTracingCharStats();
        }
        return true;
    }
    return false;
}

// 0x3bd000 Character::VerifySpecialization()
// Tells the character menu whether it is time to choose a specialisation: the callback IsSpecTime on "_root.menu_CharacterMenu" of the movie at
// MultiMenuManager::m_menuFX[1], with one boolean argument that is true for a player above level 11 of class 263, 325 or 290. The original returns the
// argument's drop_refs result; the header is void.
void Character::VerifySpecialization() {
    MenuManager* menu = MenuManager::GetInstance();
    const bool isSpecTime = SG_GetPlayerLevel() > 11 &&
                            (SG_GetPlayerClass() == 263 || SG_GetPlayerClass() == 325 || SG_GetPlayerClass() == 290);
    MenuFX* movie = menu->m_multiMenuManager->m_menuFX[1];
    gameswf::as_value argument;
    argument.set_bool(isSpecTime);
    movie->InvokeASCallback("_root.menu_CharacterMenu", "IsSpecTime", &argument, 1);
}

// 0x3bd0c0 Character::SetMP(int)
void Character::SetMP(int mp) { PROPS_SetInt(kPropMP, mp); }

// 0x3bd0d0 Character::SetHP(int)
void Character::SetHP(int hp) { PROPS_SetInt(kPropHP, hp); }

// 0x3bd0e0 Character::GetTotalMP() const
int Character::GetTotalMP() const { return PROPS_GetInt(kPropTotalMP, false); }

// 0x3bd0f0 Character::GetTotalHP() const
int Character::GetTotalHP() const { return PROPS_GetInt(kPropTotalHP, false); }

// 0x3bd100 Character::GetMP() const
int Character::GetMP() const { return PROPS_GetInt(kPropMP, false); }

// 0x3bd110 Character::GetHP() const
int Character::GetHP() const { return PROPS_GetInt(kPropHP, false); }

// 0x3bd120 Character::GetLevel() const
int Character::GetLevel() const { return PROPS_GetInt(kPropLevel, false); }

// 0x3bd140 Character::ValidateHPMP()
// HP is clamped to the total HP and MP to the total MP (PROPS_Set on the raw values). The original ends with
// `return CharProperties::PROPS_Set(...)`, the register that call leaves (not a result); PROPS_Set is void here, so this returns 0.
int Character::ValidateHPMP() {
    const int hp = PROPS_Get(kPropHP, false);
    const int totalHp = PROPS_Get(kPropTotalHP, false);
    PROPS_Set(kPropHP, totalHp >= hp ? hp : totalHp);

    const int mp = PROPS_Get(kPropMP, false);
    const int totalMp = PROPS_Get(kPropTotalMP, false);
    PROPS_Set(kPropMP, totalMp >= mp ? mp : totalMp);
    return 0;
}

// 0x3bd1cc Character::ResetStatsChange(int, int, int, int)
// The original tail-calls SG_Save and returns its result. The header declares SG_Save void, so nothing is returned here.
void Character::ResetStatsChange(int a, int b, int c, int d) {
    const std::uint32_t total = static_cast<std::uint32_t>(a) + static_cast<std::uint32_t>(b) +
                                static_cast<std::uint32_t>(c) + static_cast<std::uint32_t>(d);
    PROPS_AddInt(kPropStatPoints, static_cast<int>(total));
    PROPS_AddInt(kPropStatSpent[0], -a);
    PROPS_AddInt(kPropStatSpent[1], -b);
    PROPS_AddInt(kPropStatSpent[2], -c);
    PROPS_AddInt(kPropStatSpent[3], -d);
    UpdateBaseProperties(m_charPropsId);
    INV_CheckItemsRequirements();
    ValidateHPMP();
    SG_Save();
}

// 0x3bd26c Character::ResetStats()
// The original folds the saved sheet's spent stat points into the free points: the total of props 148 (free points), 149,
// 150, 151 and 152 becomes prop 148, and props 149..152 become 0. The saved sheet is CharProperties::m_savedProps, where
// property i is the word m_w(i+1), read and written through _GetProperty and _SetProperty. Then UpdateBaseProperties
// (m_charPropsId), INV_CheckItemsRequirements and ValidateHPMP run, and the result of SG_Save() is returned.
int Character::ResetStats() {
    std::uint32_t total = static_cast<std::uint32_t>(CharProperties::_GetProperty(CharProperties::m_savedProps, kPropStatPoints));
    for (int prop : kPropStatSpent) {
        total += static_cast<std::uint32_t>(CharProperties::_GetProperty(CharProperties::m_savedProps, prop));
    }
    CharProperties::_SetProperty(CharProperties::m_savedProps, kPropStatPoints, static_cast<int>(total));
    for (int prop : kPropStatSpent) {
        CharProperties::_SetProperty(CharProperties::m_savedProps, prop, 0);
    }
    UpdateBaseProperties(m_charPropsId);
    INV_CheckItemsRequirements();
    ValidateHPMP();
    return SG_Save();
}

// 0x3bd2dc Character::GetHPPercent() const
// Returns float in the binary (__aeabi_fdiv). Division by zero follows IEEE, as in the original.
float Character::GetHPPercent() const {
    const int hp = PROPS_Get(kPropHP, false);
    return static_cast<float>(hp) / static_cast<float>(PROPS_Get(kPropTotalHP, false));
}

// 0x3bd338 Character::GetMPPercent() const
float Character::GetMPPercent() const {
    const int mp = PROPS_Get(kPropMP, false);
    return static_cast<float>(mp) / static_cast<float>(PROPS_Get(kPropTotalMP, false));
}

// 0x3bd394 Character::GetEffectiveThreatPerDamage() const
float Character::GetEffectiveThreatPerDamage() const {
    return static_cast<float>(PROPS_Get(kPropThreatPerDamage, false)) * kThreatScale;
}

// 0x3bd3bc Character::GetEffectiveThreatPerHeal() const
float Character::GetEffectiveThreatPerHeal() const {
    return static_cast<float>(PROPS_Get(kPropThreatPerHeal, false)) * kThreatScale;
}

// 0x3bd3e4 Character::GetEffectiveThreatPerDamageToFriendly() const
float Character::GetEffectiveThreatPerDamageToFriendly() const {
    return static_cast<float>(PROPS_Get(kPropThreatPerDamageToFriendly, false)) * kThreatScale;
}

// 0x3bd40c Character::HasMana(int) const
// In an online game a remotely updated character always has the mana (true). Otherwise a negative amount fails
// ASSERT(amount >= 0) (Character_Stats.cpp line 145) and the amount is tested against the MP value. At gAssertLevel 2 the
// original stores to address 0; this port aborts, as the other asserts of the batch do.
bool Character::HasMana(int amount) const {
    if (GetOnlineGameFlag() && IsRemotelyUpdated()) {
        return true;
    }
    if (amount < 0) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "amount >= 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp", 145);
        }
    }
    return amount <= PROPS_Get(kPropMP, false);
}

// 0x3bd4f8 Character::IncStatNrg()
// A free stat point (prop 148) is spent for one point of prop 152. The debug probe runs on both paths.
void Character::IncStatNrg() {
    if (PROPS_GetInt(kPropStatPoints, false) <= 0) {
        DebugSwitches::GetInstance()->load();
    } else {
        PROPS_AddInt(kPropStatPoints, -1);
        PROPS_AddInt(kPropStatSpent[3], 1);
        UpdateBaseProperties(m_charPropsId);
        DebugSwitches::GetInstance()->load();
    }
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Stats");
}
