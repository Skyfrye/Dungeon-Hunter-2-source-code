// PlayerSavegame: one player's save slot. It holds the slot number, the Savegame file it writes, the owning Character,
// the player's name, level, class, save date and unlocked difficulty, the per-difficulty entry points, spawn points,
// level and world-map states, skill rows and skill sets, faery records, two embedded QuestSavegame logs, and the
// fast-travel bits. The file layout is written by the static __Save*/__Load* section handlers.
// Original 32-bit size 0x198 (408). Its vtable is 16 bytes: offset-to-top, typeinfo, then D1 and D0 (the destructor only).
// Reconstructed from libDungeonHunter2.so pseudocode: ctors 0x465ae0 (C1) and 0x465c40 (C2), explicit ctors 0x4655ac
// and 0x4656bc, dtors 0x46378c (D1), 0x46388c (D2), 0x463870 (D0). The debug strings name _this->m_player, m_skills,
// m_skillsSize, m_faeries[j] and PlayerSavegame::m_difficultyLevel.
#pragma once

#include <bitset>
#include <cstdint>
#include <ctime>
#include <map>
#include <string>
#include <vector>

#include "dh2/QuestSavegame.hpp"

class Character;
class IStreamBase;
class Quest;
class Savegame;
class StreamBuffer;
struct __sFILE;

class PlayerSavegame {
public:
    // One faery record, 4 bytes in the original. m_faeries[d] points at five of them for difficulty d.
    struct FaeryRecord {
        std::uint8_t state;                                             // +0x00 1 when the faery is unlocked
        std::uint8_t pad_01;                                            // +0x01
        std::uint16_t level;                                            // +0x02
    };

    // One skill row, 8 bytes in the original. m_skills points at m_skillsSize rows.
    struct SkillRecord {
        std::int32_t id;                                                // +0x00
        std::uint16_t level;                                            // +0x04
        std::uint8_t pad_06[2];                                         // +0x06
    };

    PlayerSavegame();                                                   // 0x465ae0 (C1), 0x465c40 (C2)
    PlayerSavegame(std::uint32_t slot, int loadMode, bool unused);      // 0x4655ac (C1), 0x4656bc (C2); calls SG_Load(loadMode)
    virtual ~PlayerSavegame();                                          // 0x46378c (D1), 0x46388c (D2), 0x463870 (D0)

    // ---- save file helpers (no object state; the first argument is the slot where the original uses it as one) ----
    static const char* SG_GetFilenamePrefix();                          // 0x4634e4
    static const char* SG_GetFilenameExtension();                       // 0x4634f4
    static const char* SG_GetCheckpointFilenameExtension();             // 0x463504
    static int SG_Exists(const char* name);                             // 0x463514
    static int SG_Delete(const char* name);                             // 0x46355c
    const char* SG_GetSavefileName() const;                             // 0x4635a4 Savefile name of m_savegame (its std::string data pointer)
    int SG_Synchronize(bool online);                                    // 0x463654 Syncs m_unlockedDifficulty against the static difficulty
    static int SG_GetSlotFromFilename(const char* name);                // 0x4636a8
    int SG_Update(bool force);                                          // 0x4636c4 SG_TryQuestSync, then the quest update
    static void SG_GetFilename(std::uint32_t slot, std::string& name, bool checkpoint, bool multi);  // 0x463c84
    static std::vector<std::string> SG_GetSavegameList(bool sorted);      // 0x46403c the flag only enables the sort pass over the names
    static int SG_DeleteCheckpoint(std::uint32_t slot, bool multi);       // 0x464a68 the flag picks the _multi or _single checkpoint name
    int SG_Save();                                                      // 0x464b2c Writes m_savegame unless m_saveBlocked is set
    static int SG_Delete(std::uint32_t slot);                           // 0x464ca0
    static int SG_Exists(std::uint32_t slot);                           // 0x464d5c
    int SG_Load(int loadMode);                                          // 0x465430 returns the _LoadVolatileQuestsLog result
    void SG_LoadCheckpoint(int loadMode);                               // 0x465450
    void SG_SaveCheckpoint();                                           // 0x466184
    static std::uint32_t SG_GetNextFreeSlot();                          // 0x4660c8 no receiver: reads only statics (asm: no this use)
    static const char* SG_GetPlayerName(std::uint32_t slot);            // 0x468470 slot in r0 only; name text of another slot through a temporary PlayerSavegame

    // ---- fast travel, faeries, skills, map and level states ----
    void SG_UnlockAllFastTravels();                                     // 0x466384
    void SG_SetFastTravelIdUnlocked(const char* name, bool unlocked, int difficulty);  // 0x4663f8
    bool SG_GetFastTravelIdUnlocked(const char* name, int difficulty);  // 0x46649c
    bool SG_GetFastTravelIdUnlocked(int id, int difficulty);            // 0x467c54
    QuestSavegame* SG_GetQuestSG();                                     // 0x466584 (forwards to the const overload)
    const QuestSavegame* SG_GetQuestSG() const;                         // 0x466564 Returns m_volatileQuestLog or m_questLog by the sync state
    unsigned int SG_SetFaerieState(std::uint32_t id, int state, int difficulty);   // 0x466588
    unsigned int SG_SetFaerieLevel(std::uint32_t id, int level, int difficulty);   // 0x46663c
    int SG_GetFaerieLevel(std::uint32_t id, int difficulty) const;     // 0x466700
    bool SG_IsFaerieUnlocked(std::uint32_t id, int difficulty) const;  // 0x467ce4
    void SG_SetSkillLevel(std::uint32_t row, int level);                // 0x4667c4 (return is a leftover register, so void)
    int SG_GetSkillLevel(std::uint32_t row) const;                      // 0x4668dc
    int SG_GetSkillId(std::uint32_t row) const;                         // 0x466a08
    void SG_SetMapLocState(int location, int state, int difficulty);    // 0x466b18 (the first argument is the map location id; return is a leftover register, so void)
    int SG_GetMapLocState(int location, int difficulty) const;          // 0x466d10
    bool SG_IsMapLocSeen(int location, int difficulty) const;           // 0x466e30
    bool SG_IsMapLocLocked(int location, int difficulty) const;         // 0x467e58
    void SG_SetLevelState(int level, int state, int difficulty);        // 0x466e48 writes m_levelStates[difficulty][level] = state
    int SG_GetLevelState(int level, int difficulty) const;              // 0x467040
    bool SG_IsLevelLocked(int level, int difficulty) const;             // 0x467f70
    void SG_SetSkillInSlot(int slot, std::uint32_t row);               // 0x4680a8
    int SG_GetSkillInSlot(int slot) const;                              // 0x467488
    int SG_GetSkillSlot(std::uint32_t row) const;                       // 0x46752c
    bool SG_HasSkillSlots() const;                                      // 0x4676e4
    int SG_ReloadSkills();                                              // 0x467324 returns SG_Load(8)
    void SG_TellSlots(void (*callback)(int, unsigned int, void*), void* user) const;  // 0x46735c
    void SG_GenerateSeeds();                                            // 0x467718 writes m_seeds[0..2]
    std::time_t SG_SetSaveDate();                                       // 0x467744
    void SG_TryQuestSync();                                             // 0x4679e8

    // ---- quests ----
    void SG_UnpackQuestSync(StreamBuffer& buffer);                      // 0x467160
    void SG_VerifyCurrentQuest(int difficulty);                         // 0x4671d4
    int SG_GetCurrentPrimaryQuest(int difficulty);                      // 0x4671ec
    int SG_GetCurrentQuest(int difficulty);                             // 0x467204
    Quest* SG_GetPrevQuest(bool (*pred)(const Quest*), int from, int difficulty) const;  // 0x46721c
    Quest* SG_GetNextQuest(bool (*pred)(const Quest*), int from, int difficulty) const;  // 0x467244
    Quest* SG_GetQuestByID(bool (*pred)(const Quest*), int nth, int difficulty) const;   // 0x46726c
    int SG_GetNumQuests(bool (*pred)(const Quest*), int difficulty) const;               // 0x467294
    Quest* SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty);  // 0x4672b4
    Quest* SG_GetQuestByName(const char* name, int difficulty);         // 0x4672dc
    Quest* SG_GetQuestByID(int id, int difficulty, bool compile);       // 0x4672fc

    // ---- skill rows, skill sets and the skill tree ----
    void _InitSkills();                                                 // 0x469764
    void _InitFaeries();                                                // 0x4694c8
    void _InitLevelStates();                                            // 0x46954c
    void _SetupSavedSections(bool online, bool flag);                   // 0x468630
    void _Load(int loadMode);                                           // 0x464f4c
    void _SaveVolatileQuestsLog();                                      // 0x4684f0 QuestSavegame::PackQuests on m_volatileQuestLog
    int _LoadVolatileQuestsLog(int loadMode);                           // 0x468574

    // ---- section handlers: static (IStreamBase* stream, void* user), user is the PlayerSavegame ----
    static void __SavePlayerName(IStreamBase* stream, void* user);      // 0x4688c0
    static void __LoadPlayerName(IStreamBase* stream, void* user);      // 0x4698dc
    static void __SaveLevelEntryPoint(IStreamBase* stream, void* user); // 0x4688c8 writes m_levelEntryPoint[3]
    static void __LoadLevelEntryPoint(IStreamBase* stream, void* user); // 0x468938
    static void __SaveDifficultyLevel(IStreamBase* stream, void* user); // 0x4688f8 writes the static difficulty, then m_unlockedDifficulty
    static void __LoadDifficultyLevel(IStreamBase* stream, void* user); // 0x468968
    static void __SavePlayerLevel(IStreamBase* stream, void* user);     // 0x468930 writes m_playerLevel
    static void __LoadPlayerLevel(IStreamBase* stream, void* user);     // 0x4689a0
    static void __SaveUseSpawnPoint(IStreamBase* stream, void* user);   // 0x4689a8 writes m_useSpawnPoint[3]
    static void __LoadUseSpawnPoint(IStreamBase* stream, void* user);   // 0x468af0
    static void __SaveLevelName(IStreamBase* stream, void* user);       // 0x468b20 writes m_saveDate, the three word triples
    static void __LoadLevelName(IStreamBase* stream, void* user);       // 0x468b78
    static void __SaveCurrentFaery(IStreamBase* stream, void* user);    // 0x468bf0 writes m_currentFaery[3]
    static void __LoadCurrentFaery(IStreamBase* stream, void* user);    // 0x468cd4
    static void __SaveFaeries(IStreamBase* stream, void* user);         // 0x468f18 writes m_faeries[d] and m_faeryCount[d]
    static void __LoadFaeries(IStreamBase* stream, void* user);         // 0x4691d0
    static void __SaveProperties(IStreamBase* stream, void* user);      // 0x4689d8 writes the m_player property sheet and unk_194
    static void __LoadProperties(IStreamBase* stream, void* user);      // 0x46932c
    static void __SaveQuests(IStreamBase* stream, void* user);          // 0x469454
    static void __LoadQuests(IStreamBase* stream, void* user);          // 0x469478
    static void __SavePlayerClass(IStreamBase* stream, void* user);     // 0x4698e4 writes the class name at m_playerClass
    static void __LoadPlayerClass(IStreamBase* stream, void* user);     // 0x469d88
    static void __SaveFastTravelList(IStreamBase* stream, void* user);  // 0x469cdc
    static void __LoadFastTravelList(IStreamBase* stream, void* user);  // 0x469b18
    static void __SaveSkills(IStreamBase* stream, void* user);          // 0x469e6c writes m_skills and m_skillSets
    static void __LoadSkills(IStreamBase* stream, void* user);          // 0x46ac74
    static void __SaveInventory(IStreamBase* stream, void* user);       // 0x46a0b4
    static void __LoadInventory(IStreamBase* stream, void* user);       // 0x46a3a0
    static void __SaveLevelStates(IStreamBase* stream, void* user);     // 0x46a7a0
    static void __LoadLevelStates(IStreamBase* stream, void* user);     // 0x46a9cc

    // Static global (0x9a6060 in the original): the difficulty the game is running at. Not part of the object.
    static std::int32_t m_difficultyLevel;
    // 0x9a6048 PlayerSavegame::s_playerNameTemp (24 bytes). SG_GetPlayerName copies the name into it and returns its text.
    static std::string s_playerNameTemp;

    // ---- members (original offsets) ----
    // vptr                                                             // +0x00
    std::uint32_t m_slot;                                               // +0x04 save slot, ctor argument (-1 for the blank ctor)
    Savegame* m_savegame;                                               // +0x08 the Savegame file this slot reads and writes
    bool m_saveBlocked;                                                 // +0x0c set by Script_BlockSaveGame; SG_Save skips when set
    uint8_t pad_0d[3];                                                  // +0x0d
    Character* m_player;                                                // +0x10 owning Character (debug string _this->m_player)
    bool m_questSynced;                                                 // +0x14 quest sync state, stored by SG_TryQuestSync and SG_UnpackQuestSync
    uint8_t pad_15[3];                                                  // +0x15
    std::string m_name;                                                 // +0x18 player name (24 bytes in the original). The word at +0x2c inside it is the name text pointer that Character::SG_GetPlayerName (0x3bb7e8) reads; the reconstruction uses m_name.c_str()
    std::int32_t m_playerLevel;                                         // +0x30 saved by __SavePlayerLevel
    std::int32_t m_playerClass;                                         // +0x34 class index; -1 until set
    std::uint32_t m_saveDate;                                           // +0x38 save date, written by SG_SetSaveDate
    std::int32_t m_unlockedDifficulty;                                  // +0x3c highest unlocked difficulty; compared with m_difficultyLevel
    std::int32_t m_levelEntryPoint[3];                                  // +0x40 one entry point per difficulty
    bool m_useSpawnPoint[3];                                            // +0x4c one spawn-point flag per difficulty
    uint8_t pad_4f[1];                                                  // +0x4f
    std::int32_t unk_50[3];                                             // +0x50 name: m_levelIds. Level id per difficulty, written by Character::SG_SetLevelId (0x3bb854) at +0x50 + 4*difficulty (-1 selects m_difficultyLevel); not written by these functions
    std::int32_t m_seeds[3];                                            // +0x5c seeds, written by SG_GenerateSeeds
    std::int32_t* m_levelStates[3];                                     // +0x68 per difficulty, LevelList::size entries (_InitLevelStates)
    std::int32_t* m_worldMapStates[3];                                  // +0x74 per difficulty, WorldMap::size entries (_InitLevelStates)
    SkillRecord* m_skills;                                              // +0x80 skill rows (8 bytes each)
    std::int32_t m_skillsSize;                                          // +0x84 row count (debug string m_skillsSize)
    std::vector<std::map<int, int>> m_skillSets;                        // +0x88 one map per skill set; 12 bytes in the original
    FaeryRecord* m_faeries[3];                                          // +0x94 per difficulty, five records each (_InitFaeries)
    std::uint32_t m_faeryCount[3];                                      // +0xa0 per difficulty, the count the faery loops check
    std::int32_t m_currentFaery[3];                                     // +0xac current faery index per difficulty
    QuestSavegame m_questLog;                                           // +0xb8 the quest log SG_GetQuestSG returns when not synced
    QuestSavegame m_volatileQuestLog;                                   // +0x118 the synced quest log SG_TryQuestSync and _SaveVolatileQuestsLog use
    std::int32_t m_saveMode;                                            // +0x178 0 blank, 1 or 2 set by SG_SaveCheckpoint
    std::bitset<64> m_fastTravelUnlocked[3];                            // +0x17c one 8-byte bitset per difficulty
    bool unk_194;                                                       // +0x194 written after the property sheet by __SaveProperties, read by __LoadProperties
    uint8_t pad_195[3];                                                 // +0x195
};
