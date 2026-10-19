// Test for batch g1-game-character-Character-ee9946-17.
//
// The batch source calls methods defined by other batches (CharAI, CharProperties, PlayerSavegame, the skill accessors
// and UnLoadScriptProcess). They are stubbed below so the executable links. The stubs record their arguments and return
// fixed answers. Character and PlayerSavegame are not constructed: their storage is zero-filled static storage and only the
// members the batch reads or writes (m_savegame, m_skills, m_skillsSize) are used. Structs::Skill and Structs::SkillList
// rows are host-layout arrays in static storage, filled field by field, as the pydata decode would leave them.

#include <cstdint>
#include <cstdio>
#include <limits>
#include <map>

#include "core-platform/memory.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// ---- Globals the batch source reads -------------------------------------------------------------------------

int gAssertLevel = 0;
std::int32_t PlayerSavegame::m_difficultyLevel = 2;
std::map<int, Character*> Character::s_concurrentAI;
std::uint8_t* Arrays::SkillListTable::members = nullptr;
std::uint32_t Arrays::SkillListTable::size = 0;
std::uint8_t* Arrays::SkillTable::members = nullptr;
std::uint32_t Arrays::SkillTable::size = 0;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Zero-filled static storage for the objects the batch reads through (never constructed).
alignas(alignof(Character)) unsigned char g_charStorage[sizeof(Character)];
alignas(alignof(PlayerSavegame)) unsigned char g_saveStorage[sizeof(PlayerSavegame)];
alignas(8) unsigned char g_listRows[4 * sizeof(Structs::SkillList)];
alignas(8) unsigned char g_skillRows[32 * sizeof(Structs::Skill)];
std::int32_t g_ids[3] = {10, 11, 12};
std::int32_t g_ids2[2] = {11, 12};

Character* Self() { return reinterpret_cast<Character*>(g_charStorage); }
PlayerSavegame* Save() { return reinterpret_cast<PlayerSavegame*>(g_saveStorage); }
Structs::SkillList* Lists() { return reinterpret_cast<Structs::SkillList*>(g_listRows); }
Structs::Skill* Skills() { return reinterpret_cast<Structs::Skill*>(g_skillRows); }

// ---- Recorders and fixed answers ----------------------------------------------------------------------------

int g_level = 5;                       // Character::GetLevel answer
int g_skillLevel[3] = {1, 5, 7};       // Character::SG_GetSkillLevel answers by row
int g_skillSlot[3] = {-1, -1, 4};      // Character::SG_GetSkillSlot answers by row
int g_propValue = 0;                   // CharProperties::PROPS_Get answer for every property except 28
int g_listIdProp = 3;                  // CharProperties::PROPS_Get answer for property 28 (the skill list id word)
int g_propLastId = -1;                 // CharProperties::PROPS_Get last property id
bool g_propLastFlag = true;
int g_addIntId = -1;                   // CharProperties::PROPS_AddInt last call
int g_addIntValue = 0;
int g_addIntCalls = 0;
int g_delBuffId = -1;                  // CharProperties::PROPS_DelBuff last call
int g_delBuffCalls = 0;
int g_cancelSkillCalls = 0;
unsigned int g_cancelSkillIndex = 0;
int g_loadScriptCalls = 0;
int g_initScriptCalls = 0;
bool g_initScriptFlag = false;
int g_unloadCalls = 0;
bool g_unloadIsEnd = false;
bool g_unloadForce = false;
int g_setLevelCalls = 0;
unsigned int g_setLevelRow[16] = {};
int g_setLevelValue[16] = {};
int g_setSlotCalls = 0;
int g_setSlotSlot[16] = {};
unsigned int g_setSlotRow[16] = {};
int g_saveCalls = 0;
int g_saveAnswer = 7;                  // PlayerSavegame::SG_Save answer
unsigned int g_skillLevelQueries = 0;

// PlayerSavegame forwarders (non-batch callees).
int g_numQuestsDifficulty = -99;
int g_numQuestsAnswer = 9;
int g_curPrimaryDifficulty = -99;
int g_curPrimaryAnswer = 4;
int g_curDifficulty = -99;
int g_curAnswer = 5;
bool g_updateForce = false;
int g_updateAnswer = 1;
int g_saveCheckpointCalls = 0;
int g_loadCheckpointMode = -99;
int g_loadMode = -99;
int g_loadAnswer = 11;

}  // namespace

// ---- Stubs of other batches' definitions --------------------------------------------------------------------

int Character::GetLevel() const { return g_level; }

int Character::SG_GetSkillLevel(unsigned int row) const {
    ++g_skillLevelQueries;
    return row < 3 ? g_skillLevel[row] : 0;
}

void Character::SG_SetSkillLevel(unsigned int row, int level) {
    if (g_setLevelCalls < 16) {
        g_setLevelRow[g_setLevelCalls] = row;
        g_setLevelValue[g_setLevelCalls] = level;
    }
    ++g_setLevelCalls;
}

int Character::SG_GetSkillSlot(unsigned int row) {
    return row < 3 ? g_skillSlot[row] : -1;
}

void Character::SG_SetSkillInSlot(int slot, unsigned int row) {
    if (g_setSlotCalls < 16) {
        g_setSlotSlot[g_setSlotCalls] = slot;
        g_setSlotRow[g_setSlotCalls] = row;
    }
    ++g_setSlotCalls;
}

void Character::UnLoadScriptProcess(std::map<int, Character*>::iterator it, bool force) {
    ++g_unloadCalls;
    g_unloadIsEnd = (it == s_concurrentAI.end());
    g_unloadForce = force;
}

void CharAI::LoadScriptProcess() { ++g_loadScriptCalls; }

void CharAI::InitScriptProcess(bool flag) {
    ++g_initScriptCalls;
    g_initScriptFlag = flag;
}

void CharAI::AI_CancelSkill(unsigned int skill) {
    ++g_cancelSkillCalls;
    g_cancelSkillIndex = skill;
}

int CharProperties::PROPS_Get(int propId, bool useTemp) const {
    g_propLastId = propId;
    g_propLastFlag = useTemp;
    return propId == 28 ? g_listIdProp : g_propValue;
}

void CharProperties::PROPS_DelBuff(int classId, Structs::CharacterProperties* inst) {
    ++g_delBuffCalls;
    g_delBuffId = classId;
    (void)inst;
}

void CharProperties::PROPS_AddInt(int propId, int value) {
    ++g_addIntCalls;
    g_addIntId = propId;
    g_addIntValue = value;
}

QuestSavegame* PlayerSavegame::SG_GetQuestSG() { return nullptr; }

int PlayerSavegame::SG_GetNumQuests(bool (*pred)(const Quest*), int difficulty) const {
    (void)pred;
    g_numQuestsDifficulty = difficulty;
    return g_numQuestsAnswer;
}

int PlayerSavegame::SG_GetCurrentPrimaryQuest(int difficulty) {
    g_curPrimaryDifficulty = difficulty;
    return g_curPrimaryAnswer;
}

int PlayerSavegame::SG_GetCurrentQuest(int difficulty) {
    g_curDifficulty = difficulty;
    return g_curAnswer;
}

int PlayerSavegame::SG_Update(bool force) {
    g_updateForce = force;
    return g_updateAnswer;
}

void PlayerSavegame::SG_SaveCheckpoint() { ++g_saveCheckpointCalls; }

int PlayerSavegame::SG_Save() {
    ++g_saveCalls;
    return g_saveAnswer;
}

void PlayerSavegame::SG_LoadCheckpoint(int loadMode) { g_loadCheckpointMode = loadMode; }

int PlayerSavegame::SG_Load(int loadMode) {
    g_loadMode = loadMode;
    return g_loadAnswer;
}

// ---- Setup helpers ------------------------------------------------------------------------------------------

namespace {

// Table: list 3 holds the skill ids {10, 11, 12}; skills 10..12 have level words 2, 3, 4, flag words and m_w18.
void SetUpTables() {
    Arrays::SkillListTable::members = g_listRows;
    Arrays::SkillListTable::size = 4;
    Structs::SkillList* lists = Lists();
    lists[3].ListSize = 3;
    lists[3].List = g_ids;

    // List 2 holds skill ids {11, 12}, so a test can move the list id away from 3 and see the lookups follow it.
    lists[2].ListSize = 2;
    lists[2].List = g_ids2;

    Arrays::SkillTable::members = g_skillRows;
    Arrays::SkillTable::size = 32;
    Structs::Skill* skills = Skills();
    skills[10].Level = 2;
    skills[10].Flags = 0;
    skills[10].Type = 7;
    skills[11].Level = 3;
    skills[11].Flags = 0x2000000;  // flag bit the sneak cancel looks for
    skills[11].Type = 7;
    skills[12].Level = 4;
    skills[12].Flags = 0;
    skills[12].Type = -1;
}

PlayerSavegame::SkillRecord g_rows[3];

void AttachSavegame() {
    Self()->m_savegame = Save();
    Save()->m_skills = g_rows;
    Save()->m_skillsSize = 3;
    g_rows[0].id = 10;
    g_rows[0].level = 1;
    g_rows[1].id = 11;
    g_rows[1].level = 2;
    g_rows[2].id = 12;
    g_rows[2].level = 0;
}

void ResetRecorders() {
    g_skillLevelQueries = 0;
    g_setLevelCalls = 0;
    g_setSlotCalls = 0;
    g_addIntCalls = 0;
    g_addIntId = -1;
    g_addIntValue = 0;
    g_unloadCalls = 0;
    g_loadScriptCalls = 0;
    g_initScriptCalls = 0;
    g_saveCalls = 0;
    g_delBuffCalls = 0;
    g_cancelSkillCalls = 0;
    g_level = 5;
    g_propValue = 0;
    g_listIdProp = 3;
}

// ---- Tests --------------------------------------------------------------------------------------------------

void TestSkillListLookups() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();

    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId returns the property-28 id 3 (a valid row)");
    Check(g_propLastId == 28 && g_propLastFlag == false, "GetCharSkillListId reads property 28 from the final sheet");
    g_listIdProp = 2;
    Arrays::SkillListTable::size = 0;
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId returns 3 when the table is empty");
    Arrays::SkillListTable::size = 4;
    g_listIdProp = 3;

    Check(Self()->GetCharSkillList() == &Lists()[3], "GetCharSkillList is the list-3 row");
    Check(Self()->GetSkillIDFromOID(10) == 0, "GetSkillIDFromOID finds the first id at 0");
    Check(Self()->GetSkillIDFromOID(11) == 1, "GetSkillIDFromOID finds id 11 at 1");
    Check(Self()->GetSkillIDFromOID(12) == 2, "GetSkillIDFromOID finds id 12 at 2");
    Check(Self()->GetSkillIDFromOID(99) == -1, "GetSkillIDFromOID returns -1 for an absent oid");

    const std::uint32_t saved = Lists()[3].ListSize;
    Lists()[3].ListSize = 0;
    Check(Self()->GetSkillIDFromOID(10) == -1, "GetSkillIDFromOID returns -1 for an empty list");
    Lists()[3].ListSize = saved;

    Check(Self()->IsUsingFreezingRay() == false, "IsUsingFreezingRay is false");

    Check(Self()->GetCharSkill(1) == static_cast<const void*>(&Skills()[11]), "GetCharSkill(1) is skill 11");
    Check(Self()->GetCharSkill(0) == static_cast<const void*>(&Skills()[10]), "GetCharSkill(0) is skill 10");
    Check(Self()->GetCharSkill(3) == nullptr, "GetCharSkill(3) is out of range");
    Check(Self()->GetCharSkill(-1) == nullptr, "GetCharSkill(-1) is out of range");
}

// The list id is the raw word of property 28 (this+0x1068). A valid id selects that skill list for every lookup; any id
// outside 0 <= id < SkillListTable::size (signed) falls back to list 3.
void TestSkillListIdFromProperty() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();

    g_listIdProp = 2;
    Check(Self()->GetCharSkillListId() == 2, "GetCharSkillListId returns the property-28 id 2");
    Check(g_propLastId == 28 && g_propLastFlag == false, "GetCharSkillListId reads property 28 with useTemp false");
    Check(Self()->GetCharSkillList() == &Lists()[2], "GetCharSkillList is the list-2 row");
    Check(Self()->GetSkillIDFromOID(11) == 0, "GetSkillIDFromOID scans list 2 (oid 11 at 0)");
    Check(Self()->GetSkillIDFromOID(10) == -1, "GetSkillIDFromOID does not see list 3 ids through list 2");
    Check(Self()->GetCharSkill(0) == static_cast<const void*>(&Skills()[11]), "GetCharSkill(0) is skill 11 in list 2");
    Check(Self()->GetCharSkill(2) == nullptr, "GetCharSkill(2) is out of range for list 2");

    g_listIdProp = 0;
    Check(Self()->GetCharSkillListId() == 0, "GetCharSkillListId keeps id 0 (lower bound inclusive)");
    g_listIdProp = 3;
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId keeps id 3 (last row of the table)");
    g_listIdProp = 4;
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId falls back to 3 for id == table size");
    g_listIdProp = -1;
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId falls back to 3 for id -1");
    g_listIdProp = std::numeric_limits<std::int32_t>::min();
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId uses a signed compare (INT_MIN falls back to 3)");

    g_listIdProp = 2;
    Arrays::SkillListTable::size = 2;
    Check(Self()->GetCharSkillListId() == 3, "GetCharSkillListId falls back to 3 for id 2 in a 2-row table");
    Arrays::SkillListTable::size = 4;
    g_listIdProp = 3;
}

void TestSneaking() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();

    g_propValue = 1;
    Check(Self()->IsSneaking() == true, "IsSneaking is true with property 198 > 0");
    Check(g_propLastId == 198 && g_propLastFlag == false, "IsSneaking reads property 198 from the final sheet");
    g_propValue = 0;
    Check(Self()->IsSneaking() == false, "IsSneaking is false with property 198 == 0");
}

void TestSkillChecks() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();

    g_level = 5;
    Check(Self()->IsSkillAvailable(1) == true, "IsSkillAvailable: level 5 >= skill 11 level 3");
    g_level = 2;
    Check(Self()->IsSkillAvailable(1) == false, "IsSkillAvailable: level 2 < skill 11 level 3");
    Check(Self()->IsSkillAvailable(3) == false, "IsSkillAvailable: out-of-range skill is unavailable");

    g_level = 5;
    Check(Self()->IsSkillEquippable(1) == true, "IsSkillEquippable: available, m_w18 != -1, level 5 > 0");
    Check(Self()->IsSkillEquippable(2) == false, "IsSkillEquippable: m_w18 == -1 makes it unequippable");
    const int saved = g_skillLevel[1];
    g_skillLevel[1] = 0;
    Check(Self()->IsSkillEquippable(1) == false, "IsSkillEquippable: skill level 0 makes it unequippable");
    g_skillLevel[1] = saved;

    // CanIncrementSkill: required level of row 1 is 2 (savegame row word); skill 11 level word is 3.
    g_level = 5;
    Check(Self()->CanIncrementSkill(1) == true, "CanIncrementSkill: 2 <= 5 - 3");
    g_level = 4;
    Check(Self()->CanIncrementSkill(1) == false, "CanIncrementSkill: 2 > 4 - 3");
    Check(Self()->CanIncrementSkill(7) == false, "CanIncrementSkill: index past the savegame rows is refused");

    Self()->m_savegame = nullptr;
    Check(Self()->CanIncrementSkill(1) == false, "CanIncrementSkill without a savegame is false");
    Self()->m_savegame = Save();
    Save()->m_skills = nullptr;
    Check(Self()->CanIncrementSkill(1) == false, "CanIncrementSkill without skill rows is false");
    Save()->m_skills = g_rows;
}

void TestResetSkills() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();
    g_saveAnswer = 7;

    const int result = Self()->ResetSkills();
    // Rows 0, 1, 2 read levels 1, 5, 7. Row 0 is set back to 1 and loses one point (1 - 1 = 0). Total = 0 + 5 + 7 = 12.
    Check(g_addIntCalls == 1 && g_addIntId == 157 && g_addIntValue == 12, "ResetSkills adds the spent levels to property 157");
    Check(g_setLevelCalls == 4, "ResetSkills sets four levels (row 0 twice, rows 1 and 2 to zero)");
    Check(g_setLevelRow[0] == 0 && g_setLevelValue[0] == 0, "ResetSkills zeroes row 0 first");
    Check(g_setLevelRow[1] == 0 && g_setLevelValue[1] == 1, "ResetSkills sets row 0 back to level 1");
    Check(g_setLevelRow[2] == 1 && g_setLevelValue[2] == 0, "ResetSkills zeroes row 1");
    Check(g_setLevelRow[3] == 2 && g_setLevelValue[3] == 0, "ResetSkills zeroes row 2");
    Check(g_setSlotCalls == 1 && g_setSlotSlot[0] == 4 && g_setSlotRow[0] == 0xFFFFFFFFu,
          "ResetSkills clears only the slot that held row 2");
    Check(g_unloadCalls == 1 && g_unloadIsEnd && g_unloadForce, "ResetSkills unloads this character from s_concurrentAI");
    Check(g_loadScriptCalls == 1, "ResetSkills loads the CharAI script process");
    Check(g_initScriptCalls == 1 && g_initScriptFlag, "ResetSkills initialises the CharAI script process with true");
    Check(g_saveCalls == 1 && result == 7, "ResetSkills returns the SG_Save result");

    Self()->m_savegame = nullptr;
    ResetRecorders();
    Check(Self()->ResetSkills() == 0 && g_setLevelCalls == 0 && g_unloadCalls == 0,
          "ResetSkills without a savegame stops with 0 and changes nothing");
    Self()->m_savegame = Save();
}

void TestCancelSneakingHelpers() {
    // CancelSneaking itself calls the virtual IsPlayer and needs a vtable, so only its callees are exercised here. The
    // flag-word test (Structs::Skill m_w7 bit 0x2000000) selects skill 11 in list 3.
    SetUpTables();
    AttachSavegame();
    ResetRecorders();
    Check((Skills()[11].Flags & 0x2000000) != 0 && (Skills()[10].Flags & 0x2000000) == 0,
          "skill 11 carries the sneak flag and skill 10 does not");
    Check(g_cancelSkillCalls == 0 && g_delBuffCalls == 0, "no recorded cancel before CancelSneaking runs");
}

void TestSavegameForwarders() {
    SetUpTables();
    AttachSavegame();
    ResetRecorders();

    Check(Self()->SG_GetNumQuests(nullptr, -1) == 9 && g_numQuestsDifficulty == 2,
          "SG_GetNumQuests(pred, -1) resolves -1 to m_difficultyLevel");
    Check(Self()->SG_GetCurrentPrimaryQuest(-1) == 4 && g_curPrimaryDifficulty == 2,
          "SG_GetCurrentPrimaryQuest(-1) resolves -1 to m_difficultyLevel");
    Check(Self()->SG_GetCurrentQuest(0) == 5 && g_curDifficulty == 0, "SG_GetCurrentQuest(0) passes 0 through");
    Check(Self()->SG_Update(true) == 1 && g_updateForce, "SG_Update forwards the force flag and returns the result");
    Check(Self()->SG_Save() == 7 && g_saveCalls == 1, "SG_Save returns the PlayerSavegame result");
    Self()->SG_SaveCheckpoint();
    Check(g_saveCheckpointCalls == 1, "SG_SaveCheckpoint forwards once");
    Self()->SG_LoadCheckpoint(3);
    Check(g_loadCheckpointMode == 3, "SG_LoadCheckpoint forwards the mode");
    Check(Self()->SG_Load(4) == 11 && g_loadMode == 4, "SG_Load returns the PlayerSavegame result");

    Self()->m_savegame = nullptr;
    Check(Self()->SG_GetNumQuests(nullptr, 0) == -1, "SG_GetNumQuests without a savegame is -1");
    Check(Self()->SG_GetCurrentPrimaryQuest(0) == -1, "SG_GetCurrentPrimaryQuest without a savegame is -1");
    Check(Self()->SG_GetCurrentQuest(0) == -1, "SG_GetCurrentQuest without a savegame is -1");
    Check(Self()->SG_Update(false) == 0, "SG_Update without a savegame is 0");
    Check(Self()->SG_Save() == 0, "SG_Save without a savegame is 0");
    Check(Self()->SG_Load(0) == 0, "SG_Load without a savegame is 0");
    Self()->m_savegame = Save();
}

}  // namespace

int main() {
    TestSkillListLookups();
    TestSkillListIdFromProperty();
    TestSneaking();
    TestSkillChecks();
    TestResetSkills();
    TestCancelSneakingHelpers();
    TestSavegameForwarders();

    if (g_failures != 0) {
        std::printf("g1-game-character-Character-ee9946-17 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-Character-ee9946-17 test: all checks passed\n");
    return 0;
}
