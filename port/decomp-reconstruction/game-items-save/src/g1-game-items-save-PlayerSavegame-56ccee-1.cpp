// Batch g1-game-items-save-PlayerSavegame-56ccee-1 (owner PlayerSavegame, part 2 of 6).
// The two constructors (explicit and blank, C1 and C2 bodies), SG_LoadCheckpoint, SG_SaveCheckpoint, SG_GetNextFreeSlot,
// the fast-travel bits, the quest-log selector, and the faery, skill and map-location accessors.
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against dh2/PlayerSavegame.hpp.
//
// Shared conventions in this file:
//  * Online flag. *(GetOnline() + 5) is COnline::isOnlineGame_ (net-session-online/c_online.hpp, +0x05). The field is private
//    and has no getter, so OnlineGameStub() returns false, as Application::IsOnlineGame and ItemInstance::IsEquippableBy do.
//    The online branches are written against the flag, so they take effect once a getter is declared (layout request:
//    COnline public accessor for +0x05). Until then the checkpoint online paths and the online quest log are not reached.
//  * Asserts: gAssertLevel 2 aborts (the original writes to address 0), level 1 prints the ASSERT line and goes on. Where the
//    original goes on after an ASSERT with an index past the end (undefined there: it reads or writes past the table), this
//    port returns a defined value or skips the store. The ledger notes name each place.
//  * Name tables. Arrays::FastTravelList and Arrays::WorldMap are read through the name tables of
//    pydata-accessors/member_names.hpp: the w7 headers declare the same structs with a count member but cannot share a
//    translation unit with it. NameTable::size is the table count (ReadNameTable fills the names only for a matching count).
//  * Compare signedness. Faery ids and skill rows are unsigned parameters, and the original compares them with their record
//    counts through unsigned branches (BHI and BCS in the assembly of 0x46663c, 0x466700, 0x4667c4, 0x4668dc and 0x466a08);
//    the port does the same. A WorldMap location is an int parameter, and the original compares it with NameTable::size as a
//    signed int (BLT after CMP in 0x466b18 and 0x466d10). A negative location therefore prints only the `mapLocId >= 0`
//    ASSERT, and a location at or past the count prints only the upper-bound ASSERT.
//  * Return values that the original leaves in r0 (a leftover `this` or the printf count of an ASSERT) are not returned:
//    SG_SetSkillLevel, SG_SetMapLocState and SG_UnlockAllFastTravels are void, as their callers in game-character ignore
//    the value. SG_SetFaerieState and SG_SetFaerieLevel return the faery count of the difficulty in every path.

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"            // gAssertLevel
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/member_names.hpp"   // Arrays::FastTravelList and Arrays::WorldMap name tables, pydata::FindMemberName

// The PlayerManager reads of the checkpoint functions. They live in g1-game-items-save-PlayerSavegame-56ccee-1_players.cpp:
// dh2/PlayerManager.hpp (net-transport deps) and the pydata name tables above cannot share a translation unit, as in the
// ItemObject and ItemInventory batches.
namespace PlayerSavegamePlayers {
// The multiplayer checkpoint name is chosen when the game is online and the local player is not hosting, or the host has
// changed: online && (!PlayerManager::IsLocalPlayerHosting() || PlayerManager +0x719 (m_hostChanged)). The PlayerManager
// is read only when online is set.
bool IsMultiplayerCheckpointName(bool online);
}  // namespace PlayerSavegamePlayers

namespace {

// The source file the original's ASSERT lines name.
const char kSaveDataSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\SaveGames\\PlayerSavegame_Data.cpp";

// The original's ASSERT(expr) at PlayerSavegame_Data.cpp:line. gAssertLevel 2 stops the program, 1 prints the line and goes on.
void ReportSaveAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 here
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kSaveDataSource, line);
    }
}

// *(GetOnline() + 5): COnline::isOnlineGame_. Stub until the field has a getter (see the file comment).
bool OnlineGameStub() {
    return GetOnlineGameFlag();
}

// Constants::MapElementState::Count. The original accepts a state with state <= 2, so the count is 3.
constexpr int kMapElementStateCount = 3;

// The count of the WorldMap name table (NameTable::size, an int). The original compares a location with it as a signed int
// (BLT after CMP in 0x466b18 and 0x466d10), so a negative location is below the count and only the lower-bound ASSERT prints.
int WorldMapCount() {
    return Arrays::WorldMap::m_memberNames.size;
}

// The unsigned count of the FastTravelList name table.
std::uint32_t FastTravelCount() {
    return static_cast<std::uint32_t>(Arrays::FastTravelList::m_memberNames.size);
}

// The per-difficulty tables both constructors clear, in the original's order of writes (word offsets 37, 40, 43, 16, 26,
// 29, 23 and 20 for each of the three difficulties): faery records, faery counts, current faery, level entry points, level
// states, world-map states, seeds and unk_50.
void ClearDifficultyTables(PlayerSavegame& save) {
    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        save.m_faeries[difficulty] = nullptr;
        save.m_faeryCount[difficulty] = 0;
        save.m_currentFaery[difficulty] = 0;
        save.m_levelEntryPoint[difficulty] = 0;
        save.m_levelStates[difficulty] = nullptr;
        save.m_worldMapStates[difficulty] = nullptr;
        save.m_seeds[difficulty] = 0;
        save.unk_50[difficulty] = 0;
    }
}

}  // namespace

// 0x465450 PlayerSavegame::SG_LoadCheckpoint(int)
// PARTIAL. Without a save file the original loads the slot's file. With one, it names the checkpoint file, caches it, loads
// it, and names the normal file. The name choice reads *(GetOnline() + 5), which is stubbed (OnlineGameStub), so the
// multiplayer name is never chosen here.
void PlayerSavegame::SG_LoadCheckpoint(int loadMode) {
    if (m_savegame == nullptr) {
        SG_Load(loadMode);
        return;
    }

    std::string name;
    // (*(GetOnline() + 5) && (!IsLocalPlayerHosting() || m_hostChanged)): the multiplayer checkpoint name.
    const bool multi = PlayerSavegamePlayers::IsMultiplayerCheckpointName(OnlineGameStub());
    SG_GetFilename(m_slot, name, true, multi);
    m_savegame->m_filename = name;

    m_savegame->_cacheFile(nullptr);
    SG_Load(loadMode);

    SG_GetFilename(m_slot, name, false, false);
    m_savegame->m_filename = name;
}

// 0x4655ac PlayerSavegame::PlayerSavegame(unsigned int, int, bool)  (C1; C2 at 0x4656bc has the same body)
// The members the original writes are set here. The two QuestSavegame members and the empty std::string are constructed
// before the body. The skill-set vector, the faery and level tables and the fast-travel bits are cleared to empty.
// m_saveDate, m_saveMode and m_useSpawnPoint are not written by this constructor in the original.
PlayerSavegame::PlayerSavegame(std::uint32_t slot, int loadMode, bool unused) {
    (void)unused;  // the fourth argument is not read by the original
    m_slot = slot;
    m_savegame = nullptr;
    m_saveBlocked = false;
    m_player = nullptr;
    m_questSynced = false;
    m_playerLevel = 1;
    m_playerClass = -1;
    m_unlockedDifficulty = 0;
    m_skills = nullptr;
    m_skillsSize = 0;
    unk_194 = false;

    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        m_fastTravelUnlocked[difficulty].reset();
    }
    ClearDifficultyTables(*this);

    SG_Load(loadMode);
}

// 0x465ae0 PlayerSavegame::PlayerSavegame()  (C1; C2 at 0x465c40 has the same body)
// The blank slot: m_slot is -1, the player level is 0, the skill-set vector gets two empty maps, and m_saveMode is 0.
PlayerSavegame::PlayerSavegame() {
    m_slot = static_cast<std::uint32_t>(-1);
    m_savegame = nullptr;
    m_saveBlocked = false;
    m_player = nullptr;
    m_questSynced = false;
    m_playerLevel = 0;
    m_playerClass = -1;
    m_unlockedDifficulty = 0;
    m_skills = nullptr;
    m_skillsSize = 0;
    m_saveMode = 0;
    unk_194 = false;

    for (int difficulty = 0; difficulty < 3; ++difficulty) {
        m_fastTravelUnlocked[difficulty].reset();
    }
    ClearDifficultyTables(*this);

    // Two empty skill-set maps (the original's loop of two push_back calls on the vector at +0x88).
    for (int set = 0; set != 2; ++set) {
        m_skillSets.push_back(std::map<int, int>());
    }
}

// 0x4660c8 PlayerSavegame::SG_GetNextFreeSlot()
// The saved slot names are sorted. The result is the count of slots from zero that each have a file: the walk stops at the
// first name whose slot is not the next one, or whose file does not exist.
std::uint32_t PlayerSavegame::SG_GetNextFreeSlot() {
    std::vector<std::string> names = SG_GetSavegameList(false);
    std::sort(names.begin(), names.end());

    const std::size_t count = names.size();
    std::uint32_t slot = 0;
    if (count != 0) {
        std::size_t index = 0;
        do {
            const std::uint32_t fileSlot = static_cast<std::uint32_t>(SG_GetSlotFromFilename(names[index].c_str()));
            if (slot != fileSlot) break;
            if (!SG_Exists(fileSlot)) break;
            ++slot;
            ++index;
        } while (static_cast<std::size_t>(slot) < count);
    }
    return slot;
}

// 0x466184 PlayerSavegame::SG_SaveCheckpoint()
// PARTIAL. Writes the checkpoint file of the slot when a save file is set and not blocked. The online branch (the section
// setup around the write and m_saveMode 2) depends on the stubbed online flag (OnlineGameStub); offline, the write is
// m_saveMode 1 followed by the save.
void PlayerSavegame::SG_SaveCheckpoint() {
    if (m_savegame == nullptr || m_saveBlocked) {
        return;
    }

    std::string name;
    const bool online = OnlineGameStub();
    const bool multi = PlayerSavegamePlayers::IsMultiplayerCheckpointName(online);
    SG_GetFilename(m_slot, name, true, multi);
    m_savegame->m_filename = name;

    if (online) {
        m_saveMode = 2;
        _SetupSavedSections(true, false);
        if (m_savegame->m_stream == nullptr) {
            m_savegame->_cacheFile(nullptr);
        }
        m_savegame->saveAll();
        _SetupSavedSections(false, false);
    } else {
        m_saveMode = 1;
        m_savegame->saveAll();
    }

    SG_GetFilename(m_slot, name, false, false);
    m_savegame->m_filename = name;
}

// 0x466384 PlayerSavegame::SG_UnlockAllFastTravels()
// Sets every fast-travel bit, for each of the three difficulties, for each name of the FastTravelList table.
void PlayerSavegame::SG_UnlockAllFastTravels() {
    const std::uint32_t count = FastTravelCount();
    for (int difficulty = 0; difficulty != 3; ++difficulty) {
        for (std::uint32_t id = 0; id < count; ++id) {
            m_fastTravelUnlocked[difficulty].set(id);
        }
    }
}

// 0x4663f8 PlayerSavegame::SG_SetFastTravelIdUnlocked(char const*, bool, int)
// The name is looked up in the FastTravelList table. A name that is not in the table changes nothing.
void PlayerSavegame::SG_SetFastTravelIdUnlocked(const char* name, bool unlocked, int difficulty) {
    const pydata::NameTable& names = Arrays::FastTravelList::m_memberNames;
    const int id = pydata::FindMemberName(names, names.size, name);
    if (id >= 0) {
        m_fastTravelUnlocked[difficulty].set(static_cast<std::size_t>(id), unlocked);
    }
}

// 0x46649c PlayerSavegame::SG_GetFastTravelIdUnlocked(char const*, int)
// False when the name is not in the FastTravelList table. An index past 63 throws out_of_range, as the original's bitset does.
bool PlayerSavegame::SG_GetFastTravelIdUnlocked(const char* name, int difficulty) {
    const pydata::NameTable& names = Arrays::FastTravelList::m_memberNames;
    const int id = pydata::FindMemberName(names, names.size, name);
    if (id < 0) {
        return false;
    }
    return m_fastTravelUnlocked[difficulty].test(static_cast<std::size_t>(id));
}

// 0x466564 PlayerSavegame::SG_GetQuestSG() const
// PARTIAL. The online quest log (m_volatileQuestLog) is chosen when *(GetOnline() + 5) is set. That flag is stubbed
// (OnlineGameStub), so the offline log (m_questLog) is always returned here.
const QuestSavegame* PlayerSavegame::SG_GetQuestSG() const {
    return OnlineGameStub() ? &m_volatileQuestLog : &m_questLog;
}

// 0x466584 PlayerSavegame::SG_GetQuestSG()  (thunk: forwards to the const overload at 0x466564)
QuestSavegame* PlayerSavegame::SG_GetQuestSG() {
    return const_cast<QuestSavegame*>(static_cast<const PlayerSavegame*>(this)->SG_GetQuestSG());
}

// 0x466588 PlayerSavegame::SG_SetFaerieState(unsigned int, int, int)
// Returns the faery count of the difficulty. An id past the end raises the ASSERT at line 330 and is not stored (the original
// writes past the record array, undefined there).
unsigned int PlayerSavegame::SG_SetFaerieState(std::uint32_t id, int state, int difficulty) {
    const std::uint32_t count = m_faeryCount[difficulty];
    if (count <= id) {
        ReportSaveAssert("faerieId < m_faeriesSize[diff]", 330);
        return count;
    }
    m_faeries[difficulty][id].state = static_cast<std::uint8_t>(state);
    return count;
}

// 0x46663c PlayerSavegame::SG_SetFaerieLevel(unsigned int, int, int)
// Returns the faery count of the difficulty. An id past the end raises the ASSERT at line 307 and is not stored.
unsigned int PlayerSavegame::SG_SetFaerieLevel(std::uint32_t id, int level, int difficulty) {
    const std::uint32_t count = m_faeryCount[difficulty];
    if (count > id) {
        m_faeries[difficulty][id].level = static_cast<std::uint16_t>(level);
    } else {
        ReportSaveAssert("faerieId < m_faeriesSize[diff]", 307);
    }
    return count;
}

// 0x466700 PlayerSavegame::SG_GetFaerieLevel(unsigned int, int) const
// An id past the end raises the ASSERT at line 296 and returns 0 (the original reads past the record array, undefined there).
int PlayerSavegame::SG_GetFaerieLevel(std::uint32_t id, int difficulty) const {
    if (m_faeryCount[difficulty] > id) {
        return m_faeries[difficulty][id].level;
    }
    ReportSaveAssert("faerieId < m_faeriesSize[diff]", 296);
    return 0;
}

// 0x4667c4 PlayerSavegame::SG_SetSkillLevel(unsigned int, int)
// A row past the end (ASSERT line 177) or a missing m_skills (ASSERT line 178) is not stored: the original writes past the
// row array or through a null pointer, undefined there.
void PlayerSavegame::SG_SetSkillLevel(std::uint32_t row, int level) {
    const bool rowInRange = static_cast<std::uint32_t>(m_skillsSize) > row;
    if (!rowInRange) {
        ReportSaveAssert("skillIdx < m_skillsSize", 177);
    }
    if (m_skills == nullptr) {
        ReportSaveAssert("m_skills", 178);
    }
    if (!rowInRange || m_skills == nullptr) {
        return;
    }
    m_skills[row].level = static_cast<std::uint16_t>(level);
}

// 0x4668dc PlayerSavegame::SG_GetSkillLevel(unsigned int) const
// Returns -1 when m_skills is missing (ASSERT line 166 is printed first at level 1). A row past the end raises the ASSERT at
// line 165 and returns -1 (the original reads past the row array, undefined there).
int PlayerSavegame::SG_GetSkillLevel(std::uint32_t row) const {
    const bool rowInRange = static_cast<std::uint32_t>(m_skillsSize) > row;
    if (!rowInRange) {
        ReportSaveAssert("skillIdx < m_skillsSize", 165);
    }
    if (m_skills == nullptr) {
        ReportSaveAssert("m_skills", 166);
        return -1;
    }
    if (!rowInRange) {
        return -1;
    }
    return m_skills[row].level;
}

// 0x466a08 PlayerSavegame::SG_GetSkillId(unsigned int) const
// A row past the end (ASSERT line 155) or a missing m_skills (ASSERT line 156) returns -1: the original reads past the row
// array or through a null pointer, undefined there.
int PlayerSavegame::SG_GetSkillId(std::uint32_t row) const {
    const bool rowInRange = static_cast<std::uint32_t>(m_skillsSize) > row;
    if (!rowInRange) {
        ReportSaveAssert("skillIdx < m_skillsSize", 155);
    }
    if (m_skills == nullptr) {
        ReportSaveAssert("m_skills", 156);
        return -1;
    }
    if (!rowInRange) {
        return -1;
    }
    return m_skills[row].id;
}

// 0x466b18 PlayerSavegame::SG_SetMapLocState(int, int, int)
// The first argument is the map location id: the ASSERT texts and the stored index both say so. The header used to name it
// state. A location below 0 prints only the ASSERT at line 125, and a location at or past the WorldMap count prints only the
// ASSERT at line 126 (the compare is signed, as in the original). Neither is stored: the original writes past the table,
// undefined there. A state outside 0..2 (lines 127 and 128) is stored as given, as the original stores it.
void PlayerSavegame::SG_SetMapLocState(int location, int state, int difficulty) {
    bool locationInRange = true;
    if (location < 0) {
        ReportSaveAssert("mapLocId >= 0", 125);
        locationInRange = false;
    }
    if (location >= WorldMapCount()) {
        ReportSaveAssert("mapLocId < (int)Arrays::WorldMap::size", 126);
        locationInRange = false;
    }
    if (state < 0) {
        ReportSaveAssert("state >= 0", 127);
    } else if (state > kMapElementStateCount - 1) {
        ReportSaveAssert("state < Constants::MapElementState::Count", 128);
    }
    if (!locationInRange) {
        return;
    }
    m_worldMapStates[difficulty][location] = state;
}

// 0x466d10 PlayerSavegame::SG_GetMapLocState(int, int) const
// A location below 0 prints only the ASSERT at line 115, and a location at or past the WorldMap count prints only the one at
// line 116 (signed compare, as in the original). Either returns 0: the original reads past the table, undefined there.
int PlayerSavegame::SG_GetMapLocState(int location, int difficulty) const {
    bool locationInRange = true;
    if (location < 0) {
        ReportSaveAssert("mapLocId >= 0", 115);
        locationInRange = false;
    }
    if (location >= WorldMapCount()) {
        ReportSaveAssert("mapLocId < (int)Arrays::WorldMap::size", 116);
        locationInRange = false;
    }
    if (!locationInRange) {
        return 0;
    }
    return m_worldMapStates[difficulty][location];
}
