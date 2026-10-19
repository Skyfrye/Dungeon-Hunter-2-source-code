// Batch g1-game-character-Character-ee9946-19: stat, regeneration, mana, level and experience code of Character
// (0x3bd600 .. 0x3bf828). Declarations come from dh2/Character.hpp.
//
// Property access follows dh2/CharProperties.hpp: PROPS_Get(id, false) reads the final sheet raw (8 fractional bits),
// PROPS_GetInt is that raw value >> 8, PROPS_Add and PROPS_Set take raw values, PROPS_AddInt and PROPS_SetInt shift their
// value left by 8. The original's CharProperties::_GetProperty(m_props, id) is PROPS_Get(id, false).
//
// Every ASSERT of this batch is in Character_Stats.cpp. gAssertLevel 1 prints the failed expression here. gAssertLevel 2
// stores 0 to address 0 in the original (a deliberate crash). Here it ends the process with std::abort(), as CharAI's
// AssertFailed and core-platform's memory.cpp do for the same store.

#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"          // gAssertLevel
#include <cmath>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/Globals.hpp"             // m_updateJobThread4
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"  // dword_99F778 (SavegameManager)
#include "dh2/global/cf_calc.hpp"             // GetLevelScaledXP
#include "dh2/global/charai_ai.hpp"          // ApplicationGetPyDataConstants
#include "dh2/global/ctrl_camera.hpp"        // ApplicationGetInstance
#include "dh2/global/item_instance.hpp"      // ApplicationGetStringManager
#include "dh2/global/net_singletons.hpp"     // GetOnlineGameFlag
#include "gameswf/gameswf_value.h"
#include "net-transport/update_job_thread.hpp"
#include "pydata-accessors/w7_arrays_02.hpp" // Arrays::DesignSettingsTable
#include "pydata-accessors/w7_pydata12.hpp"  // PyDataConstants::getConstant
#include "pydata-accessors/structs_records.hpp"

namespace {

// CharProperties ids of this batch. The numbers are the original's. Each name comes from the code that uses the id.
constexpr int kPropStatPoints = 148;            // free stat points: the Inc* functions spend one
constexpr int kPropStatStr = 149;               // IncStatStr adds one
constexpr int kPropStatDex = 150;               // IncStatDex adds one
constexpr int kPropStatEnd = 151;               // IncStatEnd adds one
constexpr int kPropXP = 33;                     // LevelUp, _GiveXP: current XP (raw)
constexpr int kPropXPNext = 34;                 // LevelUp, _GiveXP: XP threshold of the next level (raw)
constexpr int kPropLevel = 19;                  // LevelUp, _GiveXP: character level
constexpr int kPropHP = 36;                     // RegenHP: current HP (raw)
constexpr int kPropTotalHP = 38;                // RegenHP: total HP (raw)
constexpr int kPropRegenHPOutOfCombat = 39;     // RegenTick(false): HP regeneration amount
constexpr int kPropRegenHPInCombat = 40;        // RegenTick(true): HP regeneration amount
constexpr int kPropMP = 41;                     // RegenMP, UseMana: current MP (raw)
constexpr int kPropTotalMP = 43;                // RegenMP: total MP (raw)
constexpr int kPropRegenMPOutOfCombat = 44;     // RegenTick(false): MP regeneration amount
constexpr int kPropRegenMPInCombat = 45;        // RegenTick(true): MP regeneration amount

// The Character_Stats.cpp source path of the ASSERT strings, as the original spells it.
constexpr const char* kStatsSourceFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Stats.cpp";

// The DebugSwitches probe of the stat and XP paths: load the switch file, then read the named switch (the result is unused).
void ProbeSwitch(const char* name) {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(name);
}

// The original's ASSERT(expression) at Character_Stats.cpp:line. gAssertLevel 2 ends the process (abort, see the header
// note). gAssertLevel 1 prints the message and execution goes on. 0 is silent.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kStatsSourceFile, line);
    }
}

// The id of a trophy by name (the first match in Arrays::TrophyTable's names, -1 when absent).
int TrophyId(const char* name) {
    return pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), name);
}

// The MaxLevel row of the character design for a difficulty (CharacterDesign constants, as the original picks them).
int MaxLevelForDifficulty(int difficulty) {
    if (difficulty == 1) {
        return ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxLevelCHard");
    }
    if (difficulty == 2) {
        return ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxLevelDVeryHard");
    }
    return ApplicationGetPyDataConstants()->getConstant("CharacterDesign", "MaxLevelBNormal");
}

}  // namespace

// 0x3bd600 Character::IncStatEnd(void)
void Character::IncStatEnd() {
    if (PROPS_GetInt(kPropStatPoints, false) <= 0) {
        DebugSwitches::GetInstance()->load();
    } else {
        PROPS_AddInt(kPropStatPoints, -1);
        PROPS_AddInt(kPropStatEnd, 1);
        UpdateBaseProperties(m_charPropsId);
        DebugSwitches::GetInstance()->load();
    }
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Stats");
}

// 0x3bd708 Character::IncStatDex(void)
void Character::IncStatDex() {
    if (PROPS_GetInt(kPropStatPoints, false) <= 0) {
        DebugSwitches::GetInstance()->load();
    } else {
        PROPS_AddInt(kPropStatPoints, -1);
        PROPS_AddInt(kPropStatDex, 1);
        UpdateBaseProperties(m_charPropsId);
        DebugSwitches::GetInstance()->load();
    }
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Stats");
}

// 0x3bd810 Character::IncStatStr(void)
void Character::IncStatStr() {
    if (PROPS_GetInt(kPropStatPoints, false) <= 0) {
        DebugSwitches::GetInstance()->load();
    } else {
        PROPS_AddInt(kPropStatPoints, -1);
        PROPS_AddInt(kPropStatStr, 1);
        UpdateBaseProperties(m_charPropsId);
        DebugSwitches::GetInstance()->load();
    }
    DebugSwitches::GetInstance()->GetSwitch("isTracingChar_Stats");
}

// 0x3bda74 Character::ModifyCharProps(int,int)
// The IsPlayer test is the virtual call of vtable slot +0x28, which is Character::IsPlayer (dh2/Character.hpp).
void Character::ModifyCharProps(int propId, int amount) {
    if (!IsPlayer()) {
        return;
    }
    if (amount < 0) {
        ReportAssert("amount >= 0", 398);
    }
    PROPS_Add(propId, amount);
    UpdateBaseProperties(m_charPropsId);
    ProbeSwitch("isTracingChar_Stats");
}

// 0x3bdbb8 Character::RegenMP(int)
// MP regeneration: an amount below 0 means fill; the amount is limited to the room left below the total MP (prop 43). A positive amount is added to prop 41
// after the isTracingChar_Stats probe. The original returns the total MP or the register PROPS_Add leaves; the header is void.
void Character::RegenMP(int amount) {
    const int current = PROPS_Get(kPropMP, false);
    const int total = PROPS_Get(kPropTotalMP, false);
    if (amount < 0) {
        amount = total;
    }
    if (amount + current > total) {
        amount = total - current;
    }
    if (amount > 0) {
        ProbeSwitch("isTracingChar_Stats");
        PROPS_Add(kPropMP, amount);
    }
}

// 0x3bdca4 Character::RegenHP(int)
// HP regeneration, as RegenMP with props 36 and 38.
void Character::RegenHP(int amount) {
    const int current = PROPS_Get(kPropHP, false);
    const int total = PROPS_Get(kPropTotalHP, false);
    if (amount < 0) {
        amount = total;
    }
    if (amount + current > total) {
        amount = total - current;
    }
    if (amount > 0) {
        ProbeSwitch("isTracingChar_Stats");
        PROPS_Add(kPropHP, amount);
    }
}

// 0x3bdd90 Character::RegenTick(bool)
// One regeneration tick after the isTracingChar_Stats probe: HP then MP regenerate by the in-combat (props 40, 45) or out-of-combat (props 39, 44) amounts.
// CharAI calls RegenTick(AI_IsInCombat()). The original returns the register RegenMP leaves; the header is void.
void Character::RegenTick(bool inCombat) {
    if (inCombat) {
        ProbeSwitch("isTracingChar_Stats");
        RegenHP(PROPS_Get(kPropRegenHPInCombat, false));
        RegenMP(PROPS_Get(kPropRegenMPInCombat, false));
    } else {
        ProbeSwitch("isTracingChar_Stats");
        RegenHP(PROPS_Get(kPropRegenHPOutOfCombat, false));
        RegenMP(PROPS_Get(kPropRegenMPOutOfCombat, false));
    }
}

// 0x3bdef4 Character::UseMana(int)
// In an online game a remotely updated character spends nothing (true). A negative cost fails ASSERT(amount >= 0) (Character_Stats.cpp:159). The GOD_MANA saved option, the
// GOD_MANA debug switch and the free-mana flag (+0x14f0) make the cost free. Otherwise the cost is taken from MP (prop 41) when HasMana, after the probe.
bool Character::UseMana(int cost) {
    // The original's online test comes first: in an online game a remotely updated character spends nothing, and the
    // ASSERT is skipped on that path.
    if (GetOnlineGameFlag() && IsRemotelyUpdated()) {
        return true;
    }
    if (cost < 0) {
        ReportAssert("amount >= 0", 159);
    }
    if (ApplicationGetInstance().IsSavedOptionOn("GOD_MANA")) {
        return true;
    }
    DebugSwitches::GetInstance()->load();
    const bool godMana = DebugSwitches::GetInstance()->GetSwitch("GOD_MANA");
    if (godMana || m_freeMana != 0) {
        return true;
    }
    if (!HasMana(cost)) {
        return false;
    }
    PROPS_Add(kPropMP, -cost);
    ProbeSwitch("isTracingChar_Stats");
    return true;
}

// 0x3beb88 Character::LevelUp(int)
// Below the maximum level of the unlocked difficulty (CharacterDesign MaxLevel*): after the probe the level goes up by one, XP resets, the base properties are
// rebuilt, HP and MP fill, the savegame stores the level and saves. A player then gets the level-up presentation: the MENU_LEVEL_UP status line is queued for the HUD,
// the PlayerLevelUp script starts, effect 135 plays on it, level 2 starts the tutorial cinematics (level-up, character sheet, skill sheet; offline, difficulty 0, tutorial
// flags set), level 12 tells the character menu it is spec time, and the local player unlocks the epic_lvl10..epic_lvl100 trophy of a round level. Last, the surplus
// levels become XP of the new level, limited to the next threshold minus one. The original returns PROPS_GetInt of the level or PROPS_AddInt's register; the header is void.
void Character::LevelUp(int levels) {
    const int maxLevel = MaxLevelForDifficulty(SG_GetGameDifficultyUnlocked());
    if (maxLevel <= PROPS_GetInt(kPropLevel, false)) {
        return;
    }
    ProbeSwitch("isTracingChar_Stats");
    PROPS_AddInt(kPropLevel, 1);
    PROPS_SetInt(kPropXP, 0);
    UpdateBaseProperties(m_charPropsId);
    RegenHP(-1);
    RegenMP(-1);
    SG_SetPlayerLevel(PROPS_GetInt(kPropLevel, false));
    SG_Save();

    if (IsPlayer()) {
        StringManager* strings = ApplicationGetStringManager();
        const std::string text = strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "MENU_LEVEL_UP"));
        MenuMessageManager<StatusMsg, 4>::s_inst.EnqueueMessage(StatusMsg(text), 0, true);

        const int levelUpScript = ScriptManager::s_inst.GetIDFromName("PlayerLevelUp", true);
        if (levelUpScript != -1) {
            ScriptManager::s_inst.StartScript(levelUpScript, -1, false);
        }
        VisualFXManager::s_inst.PlayAnimFXSet(135, this, nullptr);
        const int level = PROPS_GetInt(kPropLevel, false);
        if (level == 2) {
            SavegameManager* settings = dword_99F778;
            if (!GetOnlineGameFlag() && SG_GetGameDifficulty() == 0 && settings->m_tutorials[5] != 0) {
                const int id = ScriptManager::s_inst.GetIDFromName("cinematic_Tuto_levelUp", true);
                if (id != -1) {
                    ScriptManager::s_inst.StartScript(id, -1, false);
                }
                dword_99F778->m_tutorials[5] = 0;
                m_updateJobThread4->Start2();
            }
            if (!GetOnlineGameFlag() && SG_GetGameDifficulty() == 0) {
                if (settings->m_tutorials[0] != 0) {
                    const int id = ScriptManager::s_inst.GetIDFromName("cinematic_Tuto_menuCharacterSheet", true);
                    if (id != -1) {
                        ScriptManager::s_inst.StartScript(id, -1, false);
                    }
                }
            }
            if (!GetOnlineGameFlag() && SG_GetGameDifficulty() == 0) {
                if (settings->m_tutorials[3] != 0) {
                    const int id = ScriptManager::s_inst.GetIDFromName("cinematic_Tuto_menuSkillSheet", true);
                    if (id != -1 && GetOnlineGameFlag()) {
                        ScriptManager::s_inst.StartScript(id, -1, false);
                    }
                }
            }
        } else if (level == 12) {
            gameswf::as_value argument;
            argument.set_bool(true);
            MenuManager::GetInstance()->m_multiMenuManager->m_menuFX[1]->InvokeASCallback("_root.menu_CharacterMenu", "IsSpecTime", &argument, 1);
        }
        if (dword_99F76C->IsLocalPlayer(this)) {
            const char* trophy = nullptr;
            switch (level) {
                case 10: trophy = "epic_lvl10"; break;
                case 20: trophy = "epic_lvl20"; break;
                case 30: trophy = "epic_lvl30"; break;
                case 40: trophy = "epic_lvl40"; break;
                case 50: trophy = "epic_lvl50"; break;
                case 60: trophy = "epic_lvl60"; break;
                case 70: trophy = "epic_lvl70"; break;
                case 80: trophy = "epic_lvl80"; break;
                case 90: trophy = "epic_lvl90"; break;
                case 100: trophy = "epic_lvl100"; break;
                default: break;
            }
            if (trophy != nullptr) {
                TrophyManager::s_instance->UnlockTrophy(TrophyId(trophy));
            }
        }
    }

    // LABEL_18 of the original: the leftover levels become XP of the new level, capped at the threshold minus one.
    if (maxLevel > PROPS_GetInt(kPropLevel, false)) {
        if (levels > (PROPS_Get(kPropXPNext, false) >> 8)) {
            levels = (PROPS_Get(kPropXPNext, false) >> 8) - 1;
        }
        PROPS_AddInt(kPropXP, levels);
    }
}

// 0x3bf498 Character::_GiveXP(int,bool)
// Returns false (no XP) at the maximum level of the unlocked difficulty, for a character that is not a player, is remotely updated, or in a level whose
// unk_150 (+0x150) is set. Otherwise: a negative amount fails ASSERT(amount >= 0) (Character_Stats.cpp:350); the OneKillLevelUp switch makes the amount the XP still
// needed; a level whose difficulty (+0x118) is above the character's unlocked difficulty gives only 1 XP (256); the amount goes through PROPS_GetModifiedXP into prop
// 33 after the probe. XP at or above the threshold levels up (the surplus as levels) and is capped at the threshold. With the flag set the XP counts for the
// player's XP statistic (PlayerStatManager::IncreaseStat(XP, amount >> 8)). The result is true.
bool Character::_GiveXP(int xp, bool a3) {
    const int maxLevel = MaxLevelForDifficulty(SG_GetGameDifficultyUnlocked());
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (maxLevel <= PROPS_GetInt(kPropLevel, false) || !IsPlayer() || IsRemotelyUpdated() || level->unk_150 != nullptr) {
        return false;
    }
    if (xp < 0) {
        ReportAssert("amount >= 0", 350);
    }
    DebugSwitches::GetInstance()->load();
    const bool oneKillLevelUp = DebugSwitches::GetInstance()->GetSwitch("OneKillLevelUp");
    if (oneKillLevelUp) {
        xp = PROPS_Get(kPropXPNext, false) - PROPS_Get(kPropXP, false);
    }
    if (SG_GetGameDifficultyUnlocked() < ApplicationGetInstance().GetCurrentLevel()->m_difficulty) {
        xp = 256;
    }
    const int modifiedXP = PROPS_GetModifiedXP(xp);
    PROPS_Add(kPropXP, modifiedXP);
    ProbeSwitch("isTracingChar_Stats");
    if (PROPS_Get(kPropXP, false) >= PROPS_Get(kPropXPNext, false)) {
        LevelUp((PROPS_Get(kPropXP, false) - PROPS_Get(kPropXPNext, false)) >> 8);
        if (PROPS_Get(kPropXP, false) > PROPS_Get(kPropXPNext, false)) {
            PROPS_Set(kPropXP, PROPS_Get(kPropXPNext, false));
        }
    }
    if (a3) {
        PlayerStatManager::s_inst.IncreaseStat(STAT_XP, xp >> 8, dword_99F76C->GetPlayerByCharacter(this, false)->unk_670);
    }
    return true;
}

// 0x3bf828 Character::DistributeXP(Character*,Character*)
// The original's signature is (Character* this, Character* a2, Character* a3): this is the killer (it may be null, so the port takes it as the first, explicit parameter of a
// static function), a2 is the killed character and a3 is never read. A null killed character fails ASSERT(killed != 0) (Character_Stats.cpp:219). The XP value of the killed character (prop 35 >> 8, at least 0)
// is shared over the local players (PlayerManager's m_numCharacters, at most 4; a larger count fails the assert at line 247): each player's share is the level-scaled XP
// (GetLevelScaledXP); a negative share is skipped, and a player further than DesignSettings +0xa0 from the killer (or from the killed character without a killer) gets nothing
// (the killer itself always shares). With n sharing players each gets (100 - (n - 1) * DesignSettings +0xa4) percent of the share, plus one, in fixed point; _GiveXP
// grants it, and for a local player the XP text floats above the killed character (the xp style, XPColor). A missing player character fails ASSERT(player != 0)
// (line 259). The isTracingXPDistribution probes run at the points of the original.
void Character::DistributeXP(Character* killer, Character* victim) {
    if (victim == nullptr) {
        ReportAssert("killed != 0", 219);
        return;
    }
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);
    float killedXP = static_cast<float>(victim->CharProperties::_GetProperty(victim->CharProperties::m_props, 35) >> 8);
    if (killedXP <= 0.0f) {
        killedXP = 0.0f;
    }
    ProbeSwitch("isTracingXPDistributionCst");
    ProbeSwitch("isTracingXPDistribution");
    ProbeSwitch("isTracingXPDistribution");
    PlayerManager* players = dword_99F76C;
    const int count = players->m_numCharacters;
    const float radius = design->XP_MaxDistanceToReceiveXP;
    if (count > 4) {
        ReportAssert("numLocalCharacterPlayer <= PlayerManager::MAX_PLAYERS", 247);
    }
    if (count > 0) {
        std::vector<float> share(static_cast<std::size_t>(count), 0.0f);
        int sharing = 0;
        for (int i = 0; i < count; ++i) {
            Character* player = players->GetPlayer(i, true)->unk_660;
            if (player != nullptr) {
                share[static_cast<std::size_t>(i)] = GetLevelScaledXP(killedXP, player, victim);
                if (share[static_cast<std::size_t>(i)] < 0.0f) {
                    continue;
                }
                float distance;
                if (killer != nullptr) {
                    const float dx = player->m_position.X - killer->m_position.X;
                    const float dy = player->m_position.Y - killer->m_position.Y;
                    distance = std::sqrt(dx * dx + dy * dy);
                    if (killer == player) {
                        ++sharing;
                        ProbeSwitch("isTracingXPDistribution");
                        continue;
                    }
                } else {
                    const float dx = player->m_position.X - victim->m_position.X;
                    const float dy = player->m_position.Y - victim->m_position.Y;
                    distance = std::sqrt(dx * dx + dy * dy);
                }
                if (radius >= distance) {
                    ++sharing;
                    ProbeSwitch("isTracingXPDistribution");
                } else {
                    share[static_cast<std::size_t>(i)] = 0.0f;
                    ProbeSwitch("isTracingXPDistribution");
                }
            } else {
                ReportAssert("player != 0", 259);
            }
        }
        if (sharing != 0) {
            const float penalty = static_cast<float>(sharing - 1) * design->XP_PerPlayerReductionPct;
            ProbeSwitch("isTracingXPDistribution");
            for (int i = 0; i < count; ++i) {
                Character* player = players->GetPlayer(i, true)->unk_660;
                if (player != nullptr) {
                    const float percentShare = ((100.0f - penalty) * share[static_cast<std::size_t>(i)]) / 100.0f;
                    if (percentShare >= 0.0f) {
                        int amount = static_cast<int>(percentShare + 1.0f) << 8;
                        if (player->_GiveXP(amount, true)) {
                            if (dword_99F76C->IsLocalPlayer(player)) {
                                if (player->SG_GetGameDifficultyUnlocked() < ApplicationGetInstance().GetCurrentLevel()->m_difficulty) {
                                    amount = 256;
                                }
                                FlashAnimManager* manager = FlashAnimManager::GetInstance();
                                const int modified = player->PROPS_GetModifiedXP(amount);
                                const int style = manager->GetStyleIdFromName("anim_sct_xp");
                                const int color = ApplicationGetPyDataConstants()->getConstant("ScrollingCombatText", "XPColor");
                                victim->F_ApplyScrollingCombatTextXP(modified >> 8, style, color, 0);
                            }
                        }
                    }
                    ProbeSwitch("isTracingXPDistribution");
                }
            }
        } else {
            ProbeSwitch("isTracingXPDistribution");
        }
    } else {
        ProbeSwitch("isTracingXPDistribution");
    }
    ProbeSwitch("isTracingXPDistribution");
    ProbeSwitch("isTracingXPDistribution");
}
