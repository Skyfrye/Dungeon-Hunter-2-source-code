// Batch g1-game-character-Character-ee9946-8 (part 9 of 20 of Character): the faery accessors and level changes,
// the immunity-checked attack roll, the scrolling combat text and sound helpers, the result application and the
// combat result calculation. Declarations come from dh2/Character.hpp and dh2/global/CombatFormulas.hpp.
// PARTIAL bodies name what is missing in a PARTIAL comment; the ledger rows in
// game-character/ledger.d/g1-game-character-Character-ee9946-8.csv repeat it.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"            // gAssertLevel
#include "dh2/global/runtime_support.hpp"      // PushProfilingContext, PopProfilingContext
#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Level.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"   // dword_99F778 (SavegameManager)
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/ctrl_camera.hpp"          // ApplicationGetInstance
#include "dh2/global/item_instance.hpp"        // ApplicationGetStringManager
#include "dh2/global/net_singletons.hpp"       // GetOnlineGameFlag
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_attack_result.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"       // Arrays::DesignSettingsTable, Arrays::CamAnimSetTable
#include "pydata-accessors/w7_structs_2.hpp"       // Structs::CharSounds
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/CombatFormulas.hpp"       // s_attacker, s_defender, s_element, s_offHanded, s_isSkill, CF_SetCombatants
#include "dh2/global/cf_calc.hpp"              // CF__Calc* rolls, CombatDamage, MissOrDodgeResult
#include "dh2/global/charai_ai.hpp"            // ApplicationGetPyDataConstants (dword_99F758)
#include "pydata-accessors/w7_pydata12.hpp"    // PyDataConstants::getConstant
#include "pydata-accessors/structs_records.hpp"  // Structs::FaeryList, Structs::Faery
#include "pydata-accessors/w7_arrays27.hpp"    // Arrays::GameObjectDamager::members (raw 24-byte rows)
#include "dh2/Singleton.hpp"                   // Singleton<VisualFXManager>::s_inst
#include "dh2/VisualFXManager.hpp"             // PlayAnimFXSet
#include "pydata-accessors/w7_arrays27.hpp"      // Arrays::FaeryListTable, Arrays::FaeryTable

namespace {

constexpr const char kCharacterFaeryFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Faery.cpp";
constexpr const char kCharacterFormulasFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Characters\\Character_Formulas.cpp";

// The original ASSERT(expr) macro, called on its failing branch. gAssertLevel 2 stops the process (the original stores
// 0 to address 0), 1 prints the message to stderr and execution continues, 0 is silent.
void ReportAssertFailure(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

// The attack code reads one debug switch at several points: load the switch file, then read the switch. The value is
// discarded at each of these call sites, so only the read itself is kept.
void ReadTraceSwitch(const char* name) {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(name);
}

// A debug switch whose value the original tests: load the switch file, then read the switch.
bool ReadSwitch(const char* name) {
    DebugSwitches::GetInstance()->load();
    return DebugSwitches::GetInstance()->GetSwitch(name);
}

// Character::AttackResult.m_resultFlags (+0x18, the byte at +0x18 and bit 0 of +0x19 as bit 8). Set by the CF__Calc*
// rolls in _F_CalculateResult and read by F_ApplyResult. Each name is the state F_ApplyResult selects with the bit.
constexpr std::uint32_t kResultMissed = 0x001;   // CF__CalcMissOrDodge, missed
constexpr std::uint32_t kResultDodged = 0x002;   // CF__CalcMissOrDodge, dodged: dodging state
constexpr std::uint32_t kResultBlocked = 0x004;  // CF__CalcBlock: blocking state
constexpr std::uint32_t kResultCritical = 0x008; // CF__CalcCrit: critical hit
constexpr std::uint32_t kResultInjure = 0x010;   // CF__CalcHurt: injure state
constexpr std::uint32_t kResultScare = 0x020;    // CF__CalcFear: scare state
constexpr std::uint32_t kResultStun = 0x040;     // CF__CalcStun: stun state
constexpr std::uint32_t kResultPush = 0x080;     // CF__CalcPush: knock-back state
constexpr std::uint32_t kResultSlow = 0x100;     // CF__CalcSlow: slow debuff (bit 0 of +0x19)

// Character::AttackResult.m_attackFlags (+0x1c), the request word of _F_CalculateResult.
constexpr std::uint32_t kAttackOffHand = 0x04000000;  // CF_SetCombatants offHanded
constexpr std::uint32_t kAttackSkill = 0x08000000;    // CF_SetCombatants isSkill
constexpr std::uint32_t kAttackDot = 0x20000000;      // damage over time: the "anim_sct_dot" text, no combat AI reaction

void SetResultFlag(Character::AttackResult& result, std::uint32_t flag, bool on) {
    if (on) {
        result.m_resultFlags |= flag;
    } else {
        result.m_resultFlags &= ~flag;
    }
}

// One roll of the attack code: Random::GetRandom(100, ...). The original calls the IPA clone at 0x3af6d8 (IDA name
// _ZN6Random9GetRandomEib.clone.1_1), which ignores the second argument register and draws from the ordinary stream
// (Random::s_seed, debug counter 0), so the stream is fixed to false here.
int RollPercent() {
    return static_cast<int>(Random::GetRandom(100, false));
}

// One 32-bit word of row `index` of Arrays::GameObjectDamager, read at its file layout: the rows are 24 bytes and the word
// at byte offset `offset` (4 .. 20) is decoded field by field, never cast to a host struct.
std::int32_t DamagerRowWord(int index, int offset) {
    // Typed access: the table holds host Structs::GameObjectDamage records (host stride, not the original 24 bytes).
    const Structs::GameObjectDamage& row = reinterpret_cast<const Structs::GameObjectDamage*>(Arrays::GameObjectDamager::members)[index];
    switch (offset) {
        case 4: return row.Damage;
        case 8: return row.ImmunityDelay;
        case 12: return row.Max;
        case 16: return row.Min;
        case 20: return row.Type;
        default: return 0;
    }
}

// The id of a trophy by name (the first match in Arrays::TrophyTable's names, -1 when absent).
int TrophyId(const char* name) {
    return pydata::FindMemberName(Arrays::TrophyTable::m_memberNames, static_cast<int>(Arrays::TrophyTable::size), name);
}

// A ScrollingCombatText constant of the PyData constants (colours).
int ScrollingTextConstant(const char* name) {
    return ApplicationGetPyDataConstants()->getConstant("ScrollingCombatText", name);
}

// The point above a character where the scrolling text starts: its target position raised by the height of its local box
// (m_relAabb[5] - m_relAabb[2]).
glitch::core::vector3d<float> TextAnchor(const Character* character) {
    const Point3D<float>& position = character->GetTargetPosition();
    return glitch::core::vector3d<float>{position.X, position.Y, position.Z + (character->m_relAabb[5] - character->m_relAabb[2])};
}

// Plays sound `sound` at the target position of `where` (VoxSoundManager::Play3D(sound, position, false, 1, -1, -1)).
void PlaySoundAt(int sound, const Character* where) {
    const Point3D<float>& position = where->GetTargetPosition();
    const glitch::core::vector3d<float> at{position.X, position.Y, position.Z};
    VoxSoundManager::s_instance->Play3D(sound, at, false, 1, -1.0f, -1.0f);
}

// One random entry of a CharSounds list (count words at `ids`), drawn from the ordinary random stream.
int RandomSound(std::uint32_t count, const void* ids) {
    return static_cast<const std::int32_t*>(ids)[Random::GetRandom(static_cast<int>(count), false)];
}

}  // namespace

// 0x3ae60c Character::GetFaeryCharacter(void)
// Returns the word at +0x420 of Character, which is CharAI::unk_58 (CharAI +0x58). ChangeFaery calls the Character members
// GetCharModelName and the CharAnimator base on this pointer, so it is the faery Character, cast here to Character*.
Character* Character::GetFaeryCharacter() {
    return static_cast<Character*>(CharAI::unk_58);
}

// 0x3ae614 Character::GetFaeryCharacter(void) const
const Character* Character::GetFaeryCharacter() const {
    return static_cast<const Character*>(CharAI::unk_58);
}

// 0x3ae61c Character::IncFaeryLevel(unsigned int)
// The faery's level goes up by one (savegame) and the AI skills are updated. When every faery has a level above 0, the local player
// unlocks the "faery_charged" trophy.
void Character::IncFaeryLevel(unsigned int faery) {
    const int difficulty = SG_GetGameDifficulty();
    if (static_cast<unsigned int>(SG_GetFaerieCount(difficulty)) <= faery) {
        ReportAssertFailure("faeryIdx < SG_GetFaerieCount(diff)", kCharacterFaeryFile, 169);
    }
    const int level = SG_GetFaerieLevel(faery, difficulty);
    SG_SetFaerieLevel(faery, level + 1, difficulty);
    CharAI::UpdateAllSkills();

    // Every faery at level 1 or above (the loop returns on the first level 0) unlocks nothing more.
    for (unsigned int i = 0; static_cast<unsigned int>(SG_GetFaerieCount(difficulty)) > i; ++i) {
        if (SG_GetFaerieLevel(i, -1) == 0) {
            return;
        }
    }

    TrophyManager* trophies = TrophyManager::s_instance;
    if (dword_99F76C->IsLocalPlayer(this)) {
        trophies->UnlockTrophy(TrophyId("faery_charged"));
    }
}

// 0x3ae7d4 Character::SetFaeryState(unsigned int, int)
// The first faery to be switched on (state 1, faery index not 0), offline and on difficulty 0, while the SavegameManager tutorial byte
// m_tutorials[2] (+0x2b) is set, starts the cinematic_Tuto_faery script, clears the byte and saves the settings. The state is then stored.
void Character::SetFaeryState(unsigned int faery, int state) {
    const int difficulty = SG_GetGameDifficulty();
    if (static_cast<unsigned int>(SG_GetFaerieCount(difficulty)) <= faery) {
        ReportAssertFailure("faeryIdx < SG_GetFaerieCount(diff)", kCharacterFaeryFile, 135);
    }
    if (state == 1 && faery != 0 && !GetOnlineGameFlag() && SG_GetGameDifficulty() == 0 && dword_99F778->m_tutorials[2] != 0) {
        const int script = ScriptManager::s_inst.GetIDFromName("cinematic_Tuto_faery", true);
        if (script != -1) {
            ScriptManager::s_inst.StartScript(script, -1, false);
        }
        dword_99F778->m_tutorials[2] = 0;
        dword_99F778->saveSettings();
    }
    SG_SetFaerieState(faery, state, difficulty);
}

// 0x3ae94c Character::IncAllFaeriesLevel(void)
void Character::IncAllFaeriesLevel() {
    const int difficulty = SG_GetGameDifficulty();
    for (unsigned int i = 0; i < static_cast<unsigned int>(SG_GetFaerieCount(difficulty)); ++i) {
        SetFaeryState(i, 1);
        IncFaeryLevel(i);
    }
}

// 0x3ae99c Character::ChangeFaery(unsigned int)
// Sets the current faery and updates the skills. Then, when there is a faery character (GetFaeryCharacter), its visual
// is set from its own model name (no xref, forced) and its CharAnimator adds the animation set to the render object.
void Character::ChangeFaery(unsigned int faery) {
    const int difficulty = SG_GetGameDifficulty();
    if (static_cast<unsigned int>(SG_GetFaerieCount(difficulty)) <= faery) {
        ReportAssertFailure("faeryIdx < SG_GetFaerieCount(diff)", kCharacterFaeryFile, 107);
    }
    SG_SetCurrentFaerie(faery, difficulty);
    CharAI::UpdateAllSkills();
    Character* faeryCharacter = GetFaeryCharacter();
    if (faeryCharacter) {
        faeryCharacter->GameObject::SetVisualObject(faeryCharacter->GetCharModelName(), nullptr, true);
        faeryCharacter->CharAnimator::ANIM_AddSetToRenderObject();
    }
}

// 0x3aea9c Character::IsCastingPossible(void)
bool Character::IsCastingPossible() {
    if (!CTRLIsAllowed()) {
        return false;
    }
    return CharAI::AI_IsSpellUsable();
}

// 0x3aeac0 Character::GetCharFaery(int) const
// The faery list row (GetCharFaeryList) gives ListSize (m_w1, must equal the FaeryTypes COUNT) and the List (m_w2, an
// int32 array). List[faeryId] is the index of the Arrays::FaeryTable row, whose Type (m_w8) must equal faeryId. The three
// ASSERTs are reproduced. The List index is read without a bound check, as in the original; the first ASSERT limits
// faeryId to the COUNT.
const void* Character::GetCharFaery(int faeryId) const {
    const int faeryTypeCount = ApplicationGetPyDataConstants()->getConstant("FaeryTypes", "COUNT");
    if (faeryId < 0 || faeryId >= faeryTypeCount) {
        ReportAssertFailure(
            "faeryId >= 0 && faeryId < Application::GetInstance()->GetConstantsMgr()->getConstant(\"FaeryTypes\", \"COUNT\")",
            kCharacterFaeryFile, 62);
    }
    const Structs::FaeryList* faeryList = static_cast<const Structs::FaeryList*>(GetCharFaeryList());
    if (static_cast<int>(faeryList->ListSize) != faeryTypeCount) {
        ReportAssertFailure(
            "charFaeryList.ListSize == Application::GetInstance()->GetConstantsMgr()->getConstant(\"FaeryTypes\", \"COUNT\")",
            kCharacterFaeryFile, 63);
    }
    const int faeryIndex = static_cast<const std::int32_t*>(faeryList->List)[faeryId];
    const Structs::Faery* faery = reinterpret_cast<const Structs::Faery*>(Arrays::FaeryTable::members) + faeryIndex;
    if (faery->Type != faeryId) {
        ReportAssertFailure("Arrays::FaeryTable::members[charFaeryList.List[faeryId]].Type == faeryId", kCharacterFaeryFile, 64);
    }
    return faery;
}

// 0x3aef68 Character::F_ApplyScrollingCombatTextGold(int, int)
// Floats the gold text above this character: the ITEMS_GOLD string formatted with the amount, in the anim_reward_gold style and the QR_Gold colour,
// starting at the text anchor (target position raised by the height of the local box). The second argument is not read.
void Character::F_ApplyScrollingCombatTextGold(int gold, int /*unusedArg*/) {
    FlashAnimManager* manager = FlashAnimManager::GetInstance();
    const glitch::core::vector3d<float> anchor = TextAnchor(this);
    StringManager* strings = ApplicationGetStringManager();
    const char* format = strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "ITEMS_GOLD"));
    std::string text;
    strings->parse(text, format, gold);
    const int style = manager->GetStyleIdFromName("anim_reward_gold");
    manager->PlayScrollingCombatText(style, anchor, text.c_str(), ScrollingTextConstant("QR_Gold"));
}

// 0x3af0c8 Character::F_ApplyScrollingCombatTextXP(int, int, int, int)
// Floats the xp text above this character: the GAMEPLAYMENUS_REWARD_XP string formatted with the amount, in the given style and colour, at the
// text anchor. The last argument is not read.
void Character::F_ApplyScrollingCombatTextXP(int xp, int styleId, int colorId, int /*unusedArg*/) {
    FlashAnimManager* manager = FlashAnimManager::GetInstance();
    const glitch::core::vector3d<float> anchor = TextAnchor(this);
    StringManager* strings = ApplicationGetStringManager();
    const char* format = strings->getString(ApplicationGetPyDataConstants()->getConstant("StrID", "GAMEPLAYMENUS_REWARD_XP"));
    std::string text;
    strings->parse(text, format, xp);
    manager->PlayScrollingCombatText(styleId, anchor, text.c_str(), colorId);
}

// 0x3af1fc Character::F_ApplyScrollingCombatText(Character::AttackResult const&, GameObject*, Character*)
// A follower shows nothing. A positive damage floats its value (damage >> 8) at the target's text anchor in the anim_sct_normaldamage style,
// in the PlayerDamageColor for a player and the DamageColor otherwise.
void Character::F_ApplyScrollingCombatText(const AttackResult& result, GameObject* /*attacker*/, Character* target) {
    if (target->IsFollower()) {
        return;
    }
    FlashAnimManager* manager = FlashAnimManager::GetInstance();
    const glitch::core::vector3d<float> anchor = TextAnchor(target);
    if (result.m_damage > 0) {
        const int style = manager->GetStyleIdFromName("anim_sct_normaldamage");
        const int color = ScrollingTextConstant(target->IsPlayer() ? "PlayerDamageColor" : "DamageColor");
        manager->PlayScrollingCombatValue(style, anchor, result.m_damage >> 8, color);
    }
}

// 0x3af3b0 Character::_F_ResetResult(Character::AttackResult&)
// The original stores zeros, then overwrites the words it sets to -1 (the last store to each word wins).
void Character::_F_ResetResult(AttackResult& result) {
    result.m_damage = -1;
    result.unk_04 = -1;
    result.unk_08 = -1;
    result.unk_0c = -1;
    result.unk_10 = 0;
    result.unk_14 = 0;
    result.m_resultFlags = 0;
    result.m_attackFlags = 0;
    result.unk_20 = -1;
    result.unk_24 = -1;
}

// 0x3af77c Character::F_ApplyScrollingCombatText(Character::AttackResult const&, Character*, Character*)
// Followers show nothing. The text anchor is the target's. A miss (result flag 0x01) or a dodge (0x02) floats its word (INGAME_ATTACK_MISS in the
// MissColor, INGAME_ATTACK_DODGE in the DodgeColor, both in the anim_sct_block style) and ends the function; a block (0x04) floats INGAME_ATTACK_BLOCK in
// the BlockColor and goes on. A fear result (0x20) floats INGAME_ATTACK_FEAR (anim_sct_stun style, FearColor) when the attacker's fear property is non-zero
// after >> 8 (property 187 for an attack flagged 0x10000... bit 16 of the attack flags, else 143); otherwise a slow result (bit 0 of the second flag byte)
// floats INGAME_ATTACK_SLOW (SlowColor) under the same test with properties 189 or 146. Then a positive damage floats its value (damage >> 8), in the style of the
// attack (dot 0x20000000: anim_sct_dot; dual wielding: the left (attack flag 0x4000000) or right critical/normal variants; otherwise anim_sct_crit or
// anim_sct_normaldamage) and the colour for the target (player or not, critical (0x08) or not).
void Character::F_ApplyScrollingCombatText(const AttackResult& result, Character* attacker, Character* target) {
    if (target->IsFollower()) {
        return;
    }
    FlashAnimManager* manager = FlashAnimManager::GetInstance();
    const glitch::core::vector3d<float> anchor = TextAnchor(target);
    StringManager* strings = ApplicationGetStringManager();
    const std::uint32_t flags = result.m_resultFlags;
    const std::uint32_t attackFlags = result.m_attackFlags;
    auto strid = [](const char* name) { return ApplicationGetPyDataConstants()->getConstant("StrID", name); };

    if ((flags & kResultMissed) != 0) {
        manager->PlayScrollingCombatText(manager->GetStyleIdFromName("anim_sct_block"), anchor, strings->getString(strid("INGAME_ATTACK_MISS")),
                                         ScrollingTextConstant("MissColor"));
        return;
    }
    if ((flags & kResultDodged) != 0) {
        manager->PlayScrollingCombatText(manager->GetStyleIdFromName("anim_sct_block"), anchor, strings->getString(strid("INGAME_ATTACK_DODGE")),
                                         ScrollingTextConstant("DodgeColor"));
        return;
    }
    if ((flags & kResultBlocked) != 0) {
        manager->PlayScrollingCombatText(manager->GetStyleIdFromName("anim_sct_block"), anchor, strings->getString(strid("INGAME_ATTACK_BLOCK")),
                                         ScrollingTextConstant("BlockColor"));
    }
    const bool offHandFlag = ((attackFlags >> 16) & 1) != 0;
    if ((flags & kResultScare) != 0) {
        if ((static_cast<unsigned int>(attacker->PROPS_Get(offHandFlag ? 187 : 143, false)) >> 8) != 0) {
            manager->PlayScrollingCombatText(manager->GetStyleIdFromName("anim_sct_stun"), anchor, strings->getString(strid("INGAME_ATTACK_FEAR")),
                                             ScrollingTextConstant("FearColor"));
        }
    } else if ((flags & kResultSlow) != 0) {
        if ((static_cast<unsigned int>(attacker->PROPS_Get(offHandFlag ? 189 : 146, false)) >> 8) != 0) {
            manager->PlayScrollingCombatText(manager->GetStyleIdFromName("anim_sct_stun"), anchor, strings->getString(strid("INGAME_ATTACK_SLOW")),
                                             ScrollingTextConstant("SlowColor"));
        }
    }
    if (result.m_damage > 0) {
        const bool critical = (flags & kResultCritical) != 0;
        int style;
        if ((attackFlags & kAttackDot) != 0) {
            style = manager->GetStyleIdFromName("anim_sct_dot");
        } else if (attacker->ItemInventory::IsDualWielding()) {
            if ((attackFlags & kAttackOffHand) != 0) {
                style = manager->GetStyleIdFromName(critical ? "anim_sct_critleft" : "anim_sct_normaldamageleft");
            } else {
                style = manager->GetStyleIdFromName(critical ? "anim_sct_critright" : "anim_sct_normaldamageright");
            }
        } else {
            style = manager->GetStyleIdFromName(critical ? "anim_sct_crit" : "anim_sct_normaldamage");
        }
        const char* colorName;
        if (target->IsPlayer()) {
            colorName = critical ? "PlayerCritDamageColor" : "PlayerDamageColor";
        } else {
            colorName = critical ? "CritDamageColor" : "DamageColor";
        }
        manager->PlayScrollingCombatValue(style, anchor, result.m_damage >> 8, ScrollingTextConstant(colorName));
    }
}

// 0x3afd38 Character::F_ApplyCombatSound(Character::AttackResult const&, GameObject*, Character*)
// Unless the MP_MinimalRandoms switch is set: a dead target plays a random sound of its CharSounds death list (m_w1/m_w2) when it has one; a living target
// plays one of its injured list (m_w3/m_w4) when the damage is positive. The sound is played at the target position.
void Character::F_ApplyCombatSound(const AttackResult& result, GameObject* /*attacker*/, Character* target) {
    const Structs::CharSounds* sounds = target->GetCharSounds();
    if (ReadSwitch("MP_MinimalRandoms")) {
        return;
    }
    if (target->IsDead()) {
        if (sounds->DieSize == 0) {
            return;
        }
        PlaySoundAt(RandomSound(sounds->DieSize, sounds->Die), target);
    } else {
        if (result.m_damage <= 0 || sounds->HurtSize == 0) {
            return;
        }
        PlaySoundAt(RandomSound(sounds->HurtSize, sounds->Hurt), target);
    }
}

// 0x3afee0 Character::F_ApplyCombatSound(Character::AttackResult const&, Character*, Character*)
// Unless the MP_MinimalRandoms switch is set: a dead target plays a random sound of its own death list (m_w1/m_w2) when it has one; a living target with a
// positive damage plays one of its injured list (m_w3/m_w4) when it has one. Then, for a positive damage, the attacker's hit sound is chosen by the target's
// flags: the attacker's CharSounds list m_w5/m_w6 when the target's flag byte m_w9 (+0x24) is set, else the list m_w7/m_w8 when the target's byte +0x25 is
// set. Every sound is played at the target position.
void Character::F_ApplyCombatSound(const AttackResult& result, Character* attacker, Character* target) {
    const Structs::CharSounds* attackerSounds = attacker->GetCharSounds();
    const Structs::CharSounds* targetSounds = target->GetCharSounds();
    if (ReadSwitch("MP_MinimalRandoms")) {
        return;
    }
    if (target->IsDead()) {
        if (targetSounds->DieSize != 0) {
            PlaySoundAt(RandomSound(targetSounds->DieSize, targetSounds->Die), target);
        }
    } else {
        if (result.m_damage <= 0) {
            return;
        }
        if (targetSounds->HurtSize != 0) {
            PlaySoundAt(RandomSound(targetSounds->HurtSize, targetSounds->Hurt), target);
        }
    }
    if (result.m_damage <= 0) {
        return;
    }
    if (targetSounds->IsFlesh) {
        if (attackerSounds->ImpactVsFleshSize == 0) {
            return;
        }
        PlaySoundAt(RandomSound(attackerSounds->ImpactVsFleshSize, attackerSounds->ImpactVsFlesh), target);
        return;
    }
    if (!targetSounds->IsMetallic || attackerSounds->ImpactVsMetalSize == 0) {
        return;
    }
    PlaySoundAt(RandomSound(attackerSounds->ImpactVsMetalSize, attackerSounds->ImpactVsMetal), target);
}

// 0x3b01b8 Character::F_ApplyResult(Character::AttackResult const&, GameObject*, Character*, bool)
// Online, unless suppressed, an attacker that is locally owned (m_netOwnerId -1) sends a CMsgAttackResult (attacker and defender network ids, flag false:
// the attacker is not a Character). Then the NoDamages and GOD gates, the blood effect (attack flag 0x200000), the store of false to
// CharStateMachine::m_deadAltAnim, HitFor when the target's m_netOwnerId is -1, the dead-state clears, the injure state, CancelSneaking, the scrolling
// text, the sound and the target's CharAI OnCombatResults hook. The Hex-Rays return value is the hook's leftover; declared void.
void Character::F_ApplyResult(const AttackResult& result, GameObject* attacker, Character* target, bool suppressNetMessage) {
    // The original writes the dead-state clears back into the caller's result. The header takes the result const, so that
    // the overload does not become ambiguous with the Character overload for existing callers; the caller's object is
    // not const, so the write lands in the caller's result as in the original.
    AttackResult& writable = const_cast<AttackResult&>(result);
    if (GetOnlineGameFlag() && !suppressNetMessage && attacker->m_netOwnerId == -1) {
        if (target == nullptr) {
            ReportAssertFailure("attacker && defender", kCharacterFormulasFile, 1035);
        }
        const std::int32_t defenderId = target != nullptr ? target->unk_108 : -1;
        const std::int32_t attackerId = attacker->unk_108;
        if (target == nullptr || defenderId < 0 || attackerId < 0) {
            ReportAssertFailure("attackerNetworkId >= 0 && defenderNetworkId >= 0", kCharacterFormulasFile, 1045);
        }
        CMessaging::GetInstance()->SendMsg(CMsgAttackResult::Create(attackerId, defenderId, result, false));
    }

    // The NoDamages switch and the GOD switch (with the player test and the target's m_freeMana) skip the damage part.
    bool skipDamage = ReadSwitch("NoDamages");
    if (!skipDamage) {
        const bool godSwitch = ReadSwitch("GOD");
        skipDamage = (godSwitch && target->IsPlayer()) || target->m_freeMana != 0;
    }

    if (!skipDamage && result.m_damage > 0) {
        if ((result.m_attackFlags & 0x00200000u) != 0) {
            // unk_24 == -1 selects the target's blood effect; otherwise the attack's own effect table row (+124).
            const int fxBlood = result.unk_24 == -1 ? target->GetFXBlood() : result.unk_24 + 124;
            Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(fxBlood, target->GetTargetPosition(), nullptr, nullptr);
        }
        // The original clears m_deadAltAnim (CharStateMachine +0x3f, Character +0x53b) before the HitFor test.
        target->CharStateMachine::m_deadAltAnim = false;
        if (target->m_netOwnerId == -1) {
            target->HitFor(static_cast<unsigned int>(result.m_damage), attacker);
        }
        if (target->IsDead()) {
            writable.m_resultFlags &= ~static_cast<std::uint32_t>(0x60);  // scare and stun (byte 0x9F mask)
            writable.m_resultFlags &= ~kResultSlow;                        // bit 0 of +0x19
        }
    }

    if (!target->IsDead() && (result.m_resultFlags & kResultInjure) != 0) {
        static_cast<CharStateMachine*>(target)->SM_SetInjureState(static_cast<void*>(attacker), false);
        ReadTraceSwitch("isTracingChar_Attack");
    }
    target->CancelSneaking();
    F_ApplyScrollingCombatText(result, attacker, target);
    F_ApplyCombatSound(result, attacker, target);
    // The target's CharAI is told the result (vtable slot 46 of CharAI, OnCombatResults). The hook takes void* and does
    // not write the result, so the const is cast away for the call only.
    static_cast<CharAI*>(target)->OnCombatResults(attacker, const_cast<AttackResult*>(&result));
}
// 0x3b061c Character::F_GOAttack(Character::AttackResult&, GameObject*, Character*, int, int)
// The asserts and the trace read, the roll and the immunity gate, the injure flag and the result words. The damage row is Arrays::GameObjectDamager row a, read at its 32-bit file layout (24-byte rows: +4 damage
// type, +8 immunity time, +12 and +16 the damage range maximum and minimum, +20 the attack flags; DamagerRowWord).
// The roll is minimum + Random(maximum + 1 - minimum) in fixed point. The call is the clone _ZN6Random9GetRandomEib.clone.1_1 (the same one RollPercent
// calls): it ignores the register that holds the damage type and draws from the ordinary stream (counter [0]). While the target's immunity timer for the damage type runs the damage is zero,
// otherwise the timer is started with the row's immunity time. The injure flag (0x10) is set when the damage is positive
// and the target's property 134 is below b << 8. The result's unk_24 word is the row's +20 word. The Hex-Rays return
// value is a leftover; declared void.
void Character::F_GOAttack(AttackResult& result, GameObject* attacker, Character* target, int a, int b) {
    if (attacker == nullptr) {
        ReportAssertFailure("attacker", kCharacterFormulasFile, 665);
    }
    if (target == nullptr) {
        ReportAssertFailure("defender", kCharacterFormulasFile, 666);
    }
    ReadTraceSwitch("isTracingChar_Attack");

    const std::int32_t damageType = DamagerRowWord(a, 4);
    const std::int32_t immunityTime = DamagerRowWord(a, 8);
    const std::int32_t rangeMax = DamagerRowWord(a, 12);
    const std::int32_t rangeMin = DamagerRowWord(a, 16);
    const std::int32_t attackWord = DamagerRowWord(a, 20);

    const std::uint32_t roll = Random::GetRandom(rangeMax + 1 - rangeMin, false);
    const bool immunityApplies = immunityTime != 0 && damageType >= 0;
    bool immune = false;
    if (immunityApplies) {
        TimerUtil* immunityTimer = target->GetImmunityTimer(damageType);
        if (immunityTimer->GetRemainingTime() != 0) {
            immune = true;
        } else {
            immunityTimer->Start(static_cast<unsigned int>(immunityTime));
        }
    }

    std::int32_t damage = 0;
    if (!immune) {
        damage = (static_cast<std::int32_t>(roll) + rangeMin) * 256;
    }
    _F_ResetResult(result);
    if (damage > 0) {
        const int defence = target->CharProperties::_GetProperty(target->CharProperties::m_props, 134);
        if (defence < b * 256) {
            result.m_resultFlags |= kResultInjure;
        }
    }
    result.m_damage = damage;
    result.unk_24 = attackWord;
}
// 0x3b10b4 Character::F_ApplyResult(Character::AttackResult const&, Character*, Character*, bool)
// Online, a remotely updated attacker does nothing unless the net message is suppressed; a locally owned attacker sends a CMsgAttackResult (flag true: the
// attacker is a Character) unless suppressed. The attacker's hit counter (16-bit word +0x14d0) restarts on a hit and counts up on a miss or dodge. The
// NoDamages and GOD (switch or saved option) gates, and the target's m_freeMana, skip the damage part. Damage part: an attack flagged 0x400000 steals gold
// (the attacker's gold, capped at the damage, moves from the attacker); with more than one local character a monster attacker multiplies the damage by
// 1 + (n - 1) * DesignSettings m_w13 and a player attacker divides it by 1 + (n - 1) * DesignSettings m_w14; the attacker's threat is added to the target's AI
// aggro; the target's m_deadAltAnim is set from the result flags (0x80 and attack flag 0x100000); HitFor runs when the target is locally owned; the blood effect
// (attack flag 0x200000) plays at the target; a dead target loses its scare, stun and slow flags; a critical hit by a player may shake the camera. The
// attacker then regenerates the result's HP and MP (words +0x10, +0x14). A living target gets the damage-over-time buff (words +0x08, +0x0c, +0x04), a
// player that is idle is forced into dodge (no damage) or injure, and the dodge, block, injure, knock-back, stun, scare and slow states are entered in
// that order from the result flags (with the epic_invisible, epic_invincible and knocked_down_50_times counters of a player). Last: CancelSneaking, the
// scrolling text, the sound, the OnCombatResults hooks of both CharAIs (not for a damage-over-time result) and the player statistics (defender, controller,
// killer and striker counters).
void Character::F_ApplyResult(const AttackResult& result, Character* attacker, Character* target, bool suppressNetMessage) {
    AttackResult& writable = const_cast<AttackResult&>(result);

    if (GetOnlineGameFlag()) {
        if (attacker->IsRemotelyUpdated()) {
            if (!suppressNetMessage) {
                return;
            }
        } else if (!suppressNetMessage) {
            if (target == nullptr) {
                ReportAssertFailure("attacker && defender", kCharacterFormulasFile, 712);
            }
            const std::int32_t defenderId = target != nullptr ? target->unk_108 : -1;
            const std::int32_t attackerId = attacker->unk_108;
            if (target == nullptr || defenderId < 0 || attackerId < 0) {
                ReportAssertFailure("attackerNetworkId >= 0 && defenderNetworkId >= 0", kCharacterFormulasFile, 722);
            }
            CMessaging::GetInstance()->SendMsg(CMsgAttackResult::Create(attackerId, defenderId, result, true));
        }
    }

    attacker->unk_14d0 = (result.m_resultFlags & 3) != 0 ? 0 : static_cast<std::int16_t>(attacker->unk_14d0 + 1);

    bool skipDamage = ReadSwitch("NoDamages");
    if (!skipDamage) {
        const bool god = ReadSwitch("GOD") || ApplicationGetInstance().IsSavedOptionOn("GOD");
        skipDamage = (god && target->IsPlayer()) || target->m_freeMana != 0;
    }
    const auto* design = reinterpret_cast<const Structs::DesignSettings*>(Arrays::DesignSettingsTable::members);

    if (!skipDamage) {
        if ((result.m_attackFlags & 0x400000u) != 0) {
            std::int32_t stolen = attacker->ItemInventory::m_gold * 256;
            if (stolen >= result.m_damage) {
                stolen = result.m_damage;
            }
            writable.m_damage = stolen;
            attacker->ItemInventory::AddGold(-(stolen >> 8));
        }
        std::int32_t damage = result.m_damage;
        if (damage > 0) {
            const int localCharacters = dword_99F76C->m_numCharacters;
            if (localCharacters > 1) {
                if (attacker->IsMonster()) {
                    damage = result.m_damage * static_cast<int>(static_cast<float>(localCharacters - 1) * design->ExtraMonsterDamageMultiplyerPerPlayer + 1.0f);
                    writable.m_damage = damage;
                } else if (attacker->IsPlayer()) {
                    damage /= static_cast<int>(static_cast<float>(localCharacters - 1) * design->ExtraMonsterHealthMultiplyerPerPlayer + 1.0f);
                }
            }
            const float threat = attacker->GetEffectiveThreatPerDamage();
            if (target->CharAI::AI_AddAggro(attacker, threat * (static_cast<float>(result.m_damage) * 0.00390625f)) > 0.0f) {
                ReadTraceSwitch("isTracingThreatChange");
            }
            std::uint8_t deadAltAnim = static_cast<std::uint8_t>(result.m_resultFlags & 0x80u);
            if (deadAltAnim != 0) {
                deadAltAnim = static_cast<std::uint8_t>((result.m_attackFlags >> 20) & 1u);
            }
            target->CharStateMachine::m_deadAltAnim = deadAltAnim != 0;
            if (target->m_netOwnerId == -1) {
                ReadTraceSwitch("isTracingChar_Attack");
                target->HitFor(static_cast<unsigned int>(damage), attacker);
            }
            if ((result.m_attackFlags & 0x200000u) != 0) {
                int fxBlood;
                if (result.unk_24 == -1) {
                    fxBlood = target->IsDead() ? target->GetFXBloodDeath() : target->GetFXBlood();
                } else {
                    fxBlood = result.unk_24 + 124;
                }
                Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(fxBlood, target->GetTargetPosition(), target->GameObject::m_rotation,
                                                                nullptr, nullptr);
            }
            if (target->IsDead()) {
                writable.m_resultFlags &= ~static_cast<std::uint32_t>(0x60);  // scare and stun (byte 0x9F mask)
                writable.m_resultFlags &= ~kResultSlow;                        // bit 0 of +0x19
            }
            if ((result.m_resultFlags & kResultCritical) != 0 && attacker->IsPlayer()) {
                if (Level* level = ApplicationGetInstance().GetCurrentLevel()) {
                    if (CameraLevel* camera = level->m_camera) {
                        if (camera->CanPlayShakeAnim(attacker)) {
                            Point3D<float> look{0.0f, 0.0f, 0.0f};
                            attacker->GameObject::GetLookAtVec(look);
                            const auto* sets = reinterpret_cast<const Structs::CamAnimSet*>(Arrays::CamAnimSetTable::members);
                            camera->PlayAnim(sets[camera->m_camTableIndex].Crit, 0, true);
                        }
                    }
                }
            }
        }
    }

    attacker->RegenHP(result.unk_10);
    attacker->RegenMP(result.unk_14);

    if (!target->IsDead()) {
        if (result.unk_08 > 0 && result.unk_0c > 0) {
            target->CharProperties::PROPS_AddDot(result.unk_08 >> 8, result.unk_0c, result.unk_04);
        }
        const bool immediate = (result.m_attackFlags & 0x18000000u) != 0;
        std::uint32_t flags = writable.m_resultFlags;
        if (target->IsPlayer() && target->CharStateMachine::SM_IsIdle(false)) {
            if ((flags & 0x16u) == 0) {
                flags |= result.m_damage > 0 ? 0x10u : 0x02u;
                writable.m_resultFlags = flags;
            }
        }
        flags = writable.m_resultFlags;
        if ((flags & kResultDodged) != 0) {
            target->CharStateMachine::SM_SetDodgingState(attacker, false);
            if (target->IsPlayer()) {
                target->PROPS_AddInt(215, 1);
                TrophyManager* trophies = TrophyManager::s_instance;
                if (target->PROPS_GetInt(215, false) >= 500 && dword_99F76C->IsLocalPlayer(target)) {
                    trophies->UnlockTrophy(TrophyId("epic_invisible"));
                }
            }
            ReadTraceSwitch("isTracingChar_Attack");
            flags = writable.m_resultFlags;
        }
        if ((flags & kResultBlocked) != 0) {
            target->CharStateMachine::SM_SetBlockingState(attacker, false);
            if (target->IsPlayer()) {
                target->PROPS_AddInt(214, 1);
                TrophyManager* trophies = TrophyManager::s_instance;
                if (target->PROPS_GetInt(214, false) >= 500 && dword_99F76C->IsLocalPlayer(target)) {
                    trophies->UnlockTrophy(TrophyId("epic_invincible"));
                }
            }
            ReadTraceSwitch("isTracingChar_Attack");
            flags = writable.m_resultFlags;
        }
        if ((flags & kResultInjure) != 0) {
            target->CharStateMachine::SM_SetInjureState(attacker, immediate);
            ReadTraceSwitch("isTracingChar_Attack");
            flags = writable.m_resultFlags;
        }
        if ((flags & kResultPush) != 0) {
            target->CharStateMachine::SM_SetKnockBackState((result.m_attackFlags & 0x100000u) != 0, attacker, immediate);
            if (target->IsPlayer()) {
                target->PROPS_AddInt(222, 1);
                TrophyManager* trophies = TrophyManager::s_instance;
                if (target->PROPS_GetInt(222, false) > 49 && dword_99F76C->IsLocalPlayer(target)) {
                    trophies->UnlockTrophy(TrophyId("knocked_down_50_times"));
                }
            }
            ReadTraceSwitch("isTracingChar_Attack");
            flags = writable.m_resultFlags;
        }
        if ((flags & kResultStun) != 0) {
            const int duration = attacker->CharProperties::_GetProperty(attacker->CharProperties::m_props, (result.m_attackFlags & 0x1000u) != 0 ? 185 : 140);
            target->CharStateMachine::SM_SetStunState(static_cast<unsigned int>(duration >> 8), true, attacker, false);
            ReadTraceSwitch("isTracingChar_Attack");
            flags = writable.m_resultFlags;
        }
        if ((flags & kResultScare) != 0) {
            const int duration =
                attacker->CharProperties::_GetProperty(attacker->CharProperties::m_props, (result.m_attackFlags & 0x4000u) != 0 ? 187 : 143) >> 8;
            if (duration != 0) {
                target->CharStateMachine::SM_SetScareState(static_cast<unsigned int>(duration), true, attacker, immediate);
            }
            ReadTraceSwitch("isTracingChar_Attack");
        }
        if ((writable.m_resultFlags & kResultSlow) != 0) {
            const int duration =
                attacker->CharProperties::_GetProperty(attacker->CharProperties::m_props, (result.m_attackFlags & 0x10000u) != 0 ? 189 : 146);
            target->CharProperties::PROPS_DebuffSlow(static_cast<unsigned int>(duration >> 8));
            ReadTraceSwitch("isTracingChar_Attack");
        }
    }

    target->CancelSneaking();
    F_ApplyScrollingCombatText(result, attacker, target);
    F_ApplyCombatSound(result, attacker, target);
    if ((result.m_attackFlags & kAttackDot) == 0) {
        // The const_cast only passes the result to the CharAI hooks, which take void*; the hooks do not write it.
        AttackResult* const hookResult = const_cast<AttackResult*>(&result);
        static_cast<CharAI*>(attacker)->OnCombatResults(attacker, target, hookResult);
        static_cast<CharAI*>(target)->OnCombatResults(attacker, target, hookResult);
    }

    if (target->IsPlayer()) {
        PlayerStatManager::s_inst.IncrementStat(STAT_DEFENDER, dword_99F76C->GetPlayerByCharacter(target, false)->unk_670);
    }
    if (attacker->IsPlayer()) {
        const int playerId = dword_99F76C->GetPlayerByCharacter(attacker, false)->unk_670;
        if ((result.m_resultFlags & 0x160u) != 0) {
            PlayerStatManager::s_inst.IncrementStat(STAT_CONTROLLER, playerId);
        }
        if (target->IsDead()) {
            PlayerStatManager::s_inst.IncrementStat(STAT_KILLER, playerId);
        }
        PlayerStatManager::s_inst.IncreaseStat(STAT_STRIKER, result.m_damage >> 8, playerId);
    }
}

// 0x3b2638 Character::_F_CalculateResult(Character::AttackResult&, Character*, Character*, int, int, int, int)
// The original is a chain of request bits, each rolling one d100 (Random::GetRandom(100)) and calling one CF__Calc*
// formula with the roll shifted to fixed point (<< 8), except where noted. The damage split at the end is the one the
// original writes into the result; the caller's a and b are stored in the words +0x1c, +0x20 and +0x24.
//   requests & 0x5: miss/dodge roll, mode 0; requests & 0xA: miss/dodge roll, mode 2 (the roll runs only when the mode 0
//   roll did not; the result is cleared when an attacker or defender is missing)
//   0x10 block; 0x20 critical mode 0, 0x40 critical mode 2; 0x80 injure mode 0, 0x100 injure mode 2; 0x200 push mode 0,
//   0x400 push mode 2; 0x800 stun mode 0, 0x1000 stun mode 2; 0x2000 fear mode 0, 0x4000 fear mode 2 (fear 2 only when
//   fear 0 did not run); 0x8000 slow mode 0, 0x10000 slow mode 2 (slow 2 only when slow 0 did not run)
//   0x20000 damage split mode 0, 0x40000 damage split mode 2, 0x80000 damage with the fixed damage (mode 3)
// The critical roll is reused by the injure roll when it ran (the original's v14), otherwise the injure roll draws its own.
void Character::_F_CalculateResult(AttackResult& result, Character* attacker, Character* target, int requests,
                                   int stored20, int element, int fixedDamage) {
    PushProfilingContext("Character::_F_CalculateResult");
    _F_ResetResult(result);
    result.m_attackFlags = static_cast<std::uint32_t>(requests);
    result.unk_20 = stored20;
    result.unk_24 = element;
    CF_SetCombatants(attacker, target, element, (requests & static_cast<int>(kAttackOffHand)) != 0,
                     (requests & static_cast<int>(kAttackSkill)) != 0);

    const bool haveCombatants = s_attacker != nullptr && s_defender != nullptr;

    // Miss and dodge. The mode-0 roll and the mode-2 roll are alternatives; both end the same way.
    if ((requests & 0x5) != 0) {
        const int roll = RollPercent();
        if (haveCombatants) {
            const MissOrDodgeResult r = CF__CalcMissOrDodge(s_attacker, s_defender, roll << 8, 0, s_element, s_offHanded);
            result.m_resultFlags = (result.m_resultFlags & ~0x3u) | (r.m_missed ? kResultMissed : 0u) |
                                   (r.m_dodged ? kResultDodged : 0u);
        } else {
            result.m_resultFlags &= ~0x3u;
        }
    } else if ((requests & 0xA) != 0) {
        const int roll = RollPercent();
        if (haveCombatants) {
            const MissOrDodgeResult r = CF__CalcMissOrDodge(s_attacker, s_defender, roll << 8, 2, s_element, s_offHanded);
            result.m_resultFlags = (result.m_resultFlags & ~0x3u) | (r.m_missed ? kResultMissed : 0u) |
                                   (r.m_dodged ? kResultDodged : 0u);
        } else {
            result.m_resultFlags &= ~0x3u;
        }
    }
    if ((result.m_resultFlags & 0x3) != 0) {
        PopProfilingContext("Character::_F_CalculateResult");
        return;
    }

    // Block.
    if ((requests & 0x10) != 0) {
        const int roll = RollPercent();
        const bool blocked = haveCombatants ? CF__CalcBlock(s_attacker, s_defender, roll << 8, 0) : false;
        SetResultFlag(result, kResultBlocked, blocked);
    }

    // Critical hit. The roll is kept for the injure roll below (v14).
    int critRoll = -1;
    if ((requests & 0x20) != 0 || (requests & 0x40) != 0) {
        const int mode = (requests & 0x20) != 0 ? 0 : 2;
        critRoll = RollPercent() << 8;
        const bool critical = haveCombatants ? CF__CalcCrit(s_attacker, s_defender, critRoll, mode) : false;
        SetResultFlag(result, kResultCritical, critical);
    }

    // Injure (hurt). Reuses the critical roll when one ran.
    if ((requests & 0x80) != 0 || (requests & 0x100) != 0) {
        const int mode = (requests & 0x80) != 0 ? 0 : 2;
        if (critRoll == -1) {
            critRoll = RollPercent() << 8;
        }
        const bool hurt = haveCombatants ? CF__CalcHurt(s_attacker, s_defender, critRoll, mode) : false;
        SetResultFlag(result, kResultInjure, hurt);
    }

    // Push (knock-back).
    if ((requests & 0x200) != 0 || (requests & 0x400) != 0) {
        const int mode = (requests & 0x200) != 0 ? 0 : 2;
        const int roll = RollPercent() << 8;
        const bool push = haveCombatants ? CF__CalcPush(s_attacker, s_defender, roll, mode) : false;
        SetResultFlag(result, kResultPush, push);
    }

    // Stun.
    if ((requests & 0x800) != 0 || (requests & 0x1000) != 0) {
        const int mode = (requests & 0x800) != 0 ? 0 : 2;
        const int roll = RollPercent() << 8;
        const bool stun = haveCombatants ? CF__CalcStun(s_attacker, s_defender, roll, mode) : false;
        SetResultFlag(result, kResultStun, stun);
    }

    // Fear. Fear 2 is only reached when fear 0 did not run.
    if ((requests & 0x2000) != 0) {
        const int roll = RollPercent() << 8;
        const bool fear = haveCombatants ? CF__CalcFear(s_attacker, s_defender, roll, 0) : false;
        SetResultFlag(result, kResultScare, fear);
    } else if ((requests & 0x4000) != 0) {
        const int roll = RollPercent() << 8;
        const bool fear = haveCombatants ? CF__CalcFear(s_attacker, s_defender, roll, 2) : false;
        SetResultFlag(result, kResultScare, fear);
    }

    // Slow. Slow 2 is only reached when slow 0 did not run.
    if ((requests & 0x8000) != 0) {
        const int roll = RollPercent() << 8;
        const bool slow = haveCombatants ? CF__CalcSlow(s_attacker, s_defender, roll, 0) : false;
        SetResultFlag(result, kResultSlow, slow);
    } else if ((requests & 0x10000) != 0) {
        const int roll = RollPercent() << 8;
        const bool slow = haveCombatants ? CF__CalcSlow(s_attacker, s_defender, roll, 2) : false;
        SetResultFlag(result, kResultSlow, slow);
    }

    ReadTraceSwitch("isTracingChar_Attack");

    // Damage. The three request bits write the damage split, the damage split (mode 2) or the fixed damage.
    if ((requests & 0x20000) != 0 || (requests & 0x40000) != 0) {
        const int mode = (requests & 0x20000) != 0 ? 0 : 2;
        CombatDamage damage{};
        if (haveCombatants) {
            damage = CF__CalcDamage(s_attacker, s_defender, 0, mode, s_element, s_offHanded, s_isSkill);
        }
        result.m_damage = damage.m_damage;
        result.unk_04 = damage.m_dot.m_element;
        result.unk_08 = damage.m_dot.m_gate;
        result.unk_0c = damage.m_dot.m_damage;
        result.unk_10 = damage.m_value132;
        result.unk_14 = damage.m_value133;
        if ((requests & 0x20000) != 0) {
            result.unk_24 = damage.m_element;
        }
    } else if ((requests & 0x80000) != 0) {
        if (haveCombatants) {
            result.m_damage = CF__CalcDamage(s_attacker, s_defender, fixedDamage, 3, s_element, s_offHanded, s_isSkill).m_damage;
        } else {
            result.m_damage = 0;
        }
    }

    PopProfilingContext("Character::_F_CalculateResult");
}

// 0x3b2e68 Character::F_DotAttack(Character::AttackResult&, Character*, Character*, int, int)
// The damage-over-time request: _F_CalculateResult with the request word 0x20080000 (0x20000000 DOT, 0x80000 fixed
// damage mode 3), the stored word -1, the caller's b as the element and the caller's a as the fixed damage.
void Character::F_DotAttack(AttackResult& result, Character* attacker, Character* target, int a, int b) {
    if (attacker == nullptr) {
        ReportAssertFailure("attacker", kCharacterFormulasFile, 649);
    }
    if (target == nullptr) {
        ReportAssertFailure("defender", kCharacterFormulasFile, 650);
    }
    ReadTraceSwitch("isTracingChar_Attack");
    _F_CalculateResult(result, attacker, target, 537395200, -1, b, a);
}
