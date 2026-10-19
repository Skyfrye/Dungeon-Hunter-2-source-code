// Batch g1-game-items-save-PlayerSavegame-56ccee-0 (owner PlayerSavegame, part 1 of 6, 20 functions).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against the assembly at the call sites
// that carry the control flow (SG_Synchronize, SG_DeleteCheckpoint, SG_Save, SG_Exists(uint), _Load, SG_GetSavegameList,
// SG_Exists(char const*)).
//
// Conventions in this file:
//  * The savegame file system is the object at IDevice +0x34 (dword_99F73C + 52). The original calls it through its
//    vtable: +0x7c getFiles, +0x9c deleteSavefile, +0xb0 doesSavefileExists, +0xb4 isFileNewerThan (FileSystemWin32, from
//    tools/decomp_vtable.py). IDevice does not declare +0x34, so those calls go to the placeholders in the anonymous
//    namespace below. Each placeholder names the slot it stands for.
//  * GetOnline()->+0x05 is COnline::isOnlineGame_, private with no accessor, so it is read through the OnlineGameFlag
//    placeholder (layout request: a public getter).
//  * PlayerManager +0x719 is m_hostChanged and +0x71b is unk_71b. Both are declared in dh2/PlayerManager.hpp.
//  * LC_API_STRLEN_0, LC_API_STRSTR_0 and LC_API_ATOI_0 are the libc calls strlen, strstr and atoi (tinyxml-and-c-libs NOTES).
//  * The int results of SG_Save and SG_Update are not defined in the source. The original returns `this` on the early exits
//    and the register left by a void callee otherwise. Those paths return 0 here (PARTIAL).
//  * The destructor body is written once (0x46378c, D1). 0x46388c (D2) has the same body, and 0x463870 (D0) is the
//    compiler's deleting destructor. Neither is written as separate source, see the notes at the destructor.
//  * Sizes of the operator new and delete are not part of the reconstruction: `new Savegame` and `delete` replace the
//    original's operator new(60) and its virtual slot 1 call.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online.hpp"
#include "dh2/global/savefile_fs.hpp"

namespace {

// The savegame file system (IDevice +0x34, dh2/global/savefile_fs.hpp). The slot each call stands for is noted beside it.

// vtable +0xb0, FileSystemBase::doesSavefileExists.
bool SavegameFileExists(const char* name) {
    return SavefileExists(name);
}

// vtable +0x9c, FileSystemWin32::deleteSavefile.
bool SavegameFileDelete(const char* name) {
    return SavefileFileSystem().deleteSavefile(name);
}

// vtable +0x7c, FileSystemWin32::getFiles(dir, out).
void SavegameFileList(const char* dir, std::vector<std::string>& out) {
    SavefileFileSystem().getFiles(dir, out);
}

// vtable +0xb4, FileSystemWin32::isFileNewerThan. In the binary this is an empty function (`BX LR`), so the original's
// test reads r0 after the call. r0 still holds the file system pointer, which is non-zero, so every adjacent pair is
// swapped. The placeholder returns true to match that.
bool SavegameFileIsNewer(const char* first, const char* second) {
    (void)first;
    (void)second;
    return true;
}

// *(GetOnline() + 5), the COnline flag isOnlineGame_.
bool OnlineGameFlag(const COnline* online) {
    return online->IsOnlineGame();
}

}  // namespace

// 0x4634e4 PlayerSavegame::SG_GetFilenamePrefix()
const char* PlayerSavegame::SG_GetFilenamePrefix() {
    return "dh2_";
}

// 0x4634f4 PlayerSavegame::SG_GetFilenameExtension()
const char* PlayerSavegame::SG_GetFilenameExtension() {
    return ".savegame";
}

// 0x463504 PlayerSavegame::SG_GetCheckpointFilenameExtension()
const char* PlayerSavegame::SG_GetCheckpointFilenameExtension() {
    return ".checkpoint";
}

// 0x463514 PlayerSavegame::SG_Exists(char const*)
// A null name returns 0 before the file system is read, as in the original.
int PlayerSavegame::SG_Exists(const char* name) {
    if (name == nullptr) {
        return 0;
    }
    return static_cast<int>(SavegameFileExists(name));
}

// 0x46355c PlayerSavegame::SG_Delete(char const*)
// A null name returns 0, as in the original.
int PlayerSavegame::SG_Delete(const char* name) {
    if (name == nullptr) {
        return 0;
    }
    return static_cast<int>(SavegameFileDelete(name));
}

// 0x4635a4 PlayerSavegame::SG_GetSavefileName() const
// The original reads the word at Savegame +0x18, which is the data pointer of Savegame::m_filename (the std::string at +0x04,
// its _M_start_of_storage at +0x14 inside the string). That is m_filename.c_str(). The original does not test m_savegame.
const char* PlayerSavegame::SG_GetSavefileName() const {
    return m_savegame->m_filename.c_str();
}

// 0x463654 PlayerSavegame::SG_Synchronize(bool)
// Asm: the signed compare at +0x3c against m_difficultyLevel (BLT), then the online test, then QuestSavegame::Synchronize on
// m_questLog (+0xb8) with m_volatileQuestLog (+0x118) as the other log.
int PlayerSavegame::SG_Synchronize(bool online) {
    if (m_unlockedDifficulty < m_difficultyLevel && online) {
        return 0;
    }
    return m_questLog.Synchronize(m_volatileQuestLog, online);
}

// 0x4636a8 PlayerSavegame::SG_GetSlotFromFilename(char const*)
// The slot is the decimal text after the prefix. atoi stops at the first non-digit, so "_single" and "_multi" are ignored.
int PlayerSavegame::SG_GetSlotFromFilename(const char* name) {
    const char* prefix = SG_GetFilenamePrefix();
    return std::atoi(name + std::strlen(prefix));
}

// 0x4636c4 PlayerSavegame::SG_Update(bool)
// The original returns r0 after the void QuestSavegame::UpdateQuests call, so there is no int result. Returns 0.
int PlayerSavegame::SG_Update(bool force) {
    SG_TryQuestSync();
    QuestSavegame* quests = SG_GetQuestSG();
    quests->UpdateQuests(force);
    return 0;
}

// 0x46378c PlayerSavegame::~PlayerSavegame()  (D1, complete object)
// The body is also the D2 body at 0x46388c. The compiler runs the members' destructors after this body, in reverse
// declaration order: m_volatileQuestLog (+0x118), m_questLog (+0xb8), m_skillSets (+0x88) and m_name (+0x18). The original
// calls the same four in the same order.
PlayerSavegame::~PlayerSavegame() {
    // The original calls the virtual destructor of the Savegame (vtable slot 1, the deleting one), then clears the pointer.
    delete m_savegame;
    m_savegame = nullptr;
    for (int i = 0; i < 3; ++i) {
        if (m_levelStates[i] != nullptr) {
            CustomFree(m_levelStates[i]);
            m_levelStates[i] = nullptr;
        }
        if (m_worldMapStates[i] != nullptr) {
            CustomFree(m_worldMapStates[i]);
            m_worldMapStates[i] = nullptr;
        }
        if (m_faeries[i] != nullptr) {
            CustomFree(m_faeries[i]);
            m_faeries[i] = nullptr;
        }
    }
    if (m_skills != nullptr) {
        CustomFree(m_skills);
        m_skills = nullptr;
    }
}

// 0x46388c PlayerSavegame::~PlayerSavegame()  (D2, base object) is not written again. Its body is 0x46378c, and the C++
// destructor above is the single definition. The compiler emits the base-object destructor from it.
//
// 0x463870 PlayerSavegame::~PlayerSavegame()  (D0, deleting) is not written. The compiler emits it for `delete` through the
// virtual destructor. It runs the destructor above, then operator delete, which is CustomFree in this build.

// 0x463c84 PlayerSavegame::SG_GetFilename(unsigned int, std::string &, bool, bool)
// Builds "dh2_<slot %03u>" + suffix + extension. The suffix is "_multi" or "_single" for a checkpoint and empty otherwise.
// A checkpoint takes the checkpoint extension; a savegame takes the savegame extension.
void PlayerSavegame::SG_GetFilename(std::uint32_t slot, std::string& name, bool checkpoint, bool multi) {
    const char* prefix = SG_GetFilenamePrefix();
    const char* suffix = "";
    const char* extension = nullptr;
    if (checkpoint) {
        suffix = multi ? "_multi" : "_single";
        extension = SG_GetCheckpointFilenameExtension();
    } else {
        extension = SG_GetFilenameExtension();
    }
    char s[64];
    std::snprintf(s, sizeof s, "%s%03u%s%s", prefix, static_cast<unsigned int>(slot), suffix, extension);
    name.assign(s);
}

// 0x46403c PlayerSavegame::SG_GetSavegameList(bool)
// The names come from the device file system's getFiles("./") (slot +0x7c); with no file system the list is empty, as in the
// original. The sort predicate is the file system's isFileNewerThan (slot +0xb4), an empty function (see SavegameFileIsNewer).
std::vector<std::string> PlayerSavegame::SG_GetSavegameList(bool sorted) {
    std::vector<std::string> names;
    if (SavefileFileSystemPtr() == nullptr) {
        return names;
    }
    SavegameFileList("./", names);

    // Drop the backups and the settings and level files, then names without the savegame extension or the "dh2_" prefix.
    // The tests run in the original's order and stop at the first one that drops the name.
    for (auto it = names.begin(); it != names.end();) {
        const char* name = it->c_str();
        bool drop = std::strstr(name, ".bak") != nullptr || std::strstr(name, "settings") != nullptr ||
                    std::strstr(name, "level") != nullptr;
        if (!drop) {
            drop = std::strstr(name, SG_GetFilenameExtension()) == nullptr;
        }
        if (!drop) {
            drop = std::strstr(name, SG_GetFilenamePrefix()) == nullptr;
        }
        if (drop) {
            it = names.erase(it);
        } else {
            ++it;
        }
    }

    // A flag of zero returns the names as listed. A non-zero flag sorts them with a bubble sort: one pass per name, and in each
    // pass every adjacent pair is tested with the file system predicate on (later name, earlier name). A true result swaps them.
    if (sorted) {
        const std::size_t count = names.size();
        for (std::size_t pass = 0; pass < count; ++pass) {
            for (std::size_t k = 0; k + 1 < count; ++k) {
                if (SavegameFileIsNewer(names[k + 1].c_str(), names[k].c_str())) {
                    std::swap(names[k], names[k + 1]);
                }
            }
        }
    }
    return names;
}

// 0x464a68 PlayerSavegame::SG_DeleteCheckpoint(unsigned int, bool)
// The bool is the multiplayer flag: the name is the checkpoint name (checkpoint argument 1) with that flag, and then the
// same name with ".bak". The result is the two removals OR-ed, truncated to a byte as the original does (UXTB).
int PlayerSavegame::SG_DeleteCheckpoint(std::uint32_t slot, bool multi) {
    std::string name;
    SG_GetFilename(slot, name, true, multi);
    const int removed = SG_Delete(name.c_str());
    name += ".bak";
    const int removedBackup = SG_Delete(name.c_str());
    return (removedBackup | removed) & 0xff;
}

// 0x464b2c PlayerSavegame::SG_Save()
// The int result is not defined in the source: the original returns `this` on the early exits and the register left by
// _SaveVolatileQuestsLog otherwise. Returns 0.
int PlayerSavegame::SG_Save() {
    if (m_savegame == nullptr || m_saveBlocked) {
        return 0;
    }

    // m_saveMode is 2 for an online game that the local player hosts and has not changed, and 1 otherwise.
    if (OnlineGameFlag(GetOnline()) && dword_99F76C->IsLocalPlayerHosting() && !dword_99F76C->m_hostChanged) {
        m_saveMode = 2;
    } else {
        m_saveMode = 1;
    }

    if (OnlineGameFlag(GetOnline()) && (!dword_99F76C->IsLocalPlayerHosting() || dword_99F76C->m_hostChanged)) {
        const int synchronized = SG_Synchronize(true);
        _SetupSavedSections(true, synchronized != 0);
        if (m_savegame->m_stream == nullptr) {
            m_savegame->_cacheFile(nullptr);
        }
        m_savegame->saveAll();
        _SetupSavedSections(false, synchronized != 0);
        if (synchronized != 0) {
            // The original passes m_slot as the level id, with field A and field B 0, the difficulty, checkpoint 1, multiplayer 0.
            LevelSavegame::Delete(m_slot, 0, 0, m_difficultyLevel, true, false);
            SG_DeleteCheckpoint(m_slot, false);
        }
    } else {
        m_savegame->saveAll();
    }

    _SaveVolatileQuestsLog();
    return 0;
}

// 0x464ca0 PlayerSavegame::SG_Delete(unsigned int)
// The savegame name, then the same name with ".bak". Same combination as SG_DeleteCheckpoint.
int PlayerSavegame::SG_Delete(std::uint32_t slot) {
    std::string name;
    SG_GetFilename(slot, name, false, false);
    const int removed = SG_Delete(name.c_str());
    name += ".bak";
    const int removedBackup = SG_Delete(name.c_str());
    return (removedBackup | removed) & 0xff;
}

// 0x464d5c PlayerSavegame::SG_Exists(unsigned int)
// The savegame name first. If it does not exist, the name with ".bak" decides the result.
int PlayerSavegame::SG_Exists(std::uint32_t slot) {
    std::string name;
    SG_GetFilename(slot, name, false, false);
    if (SG_Exists(name.c_str())) {
        return 1;
    }
    name += ".bak";
    return SG_Exists(name.c_str());
}

// 0x464f4c PlayerSavegame::_Load(int)
// The bits of loadMode select the sections: 1 names and level, 2 the state init, 4 the state sections, 8 skills, 0x10
// quests, 0x20 properties.
// PARTIAL: the CFEE callback reads the OnlineGameFlag placeholder, so it is always null here.
void PlayerSavegame::_Load(int loadMode) {
    // The original reads the 64-bit word at +0x04 (m_slot, then m_savegame) and compares it with 0xFFFFFFFF. That is true
    // only when m_savegame is null and m_slot is not -1. Then the slot's file name opens a new Savegame.
    if (m_savegame == nullptr && m_slot != 0xFFFFFFFFu) {
        std::string name;
        SG_GetFilename(m_slot, name, false, false);
        m_savegame = new Savegame(name.c_str(), false);
    }

    if ((loadMode & 1) != 0 && m_savegame != nullptr) {
        m_savegame->load("PNAM", &PlayerSavegame::__LoadPlayerName, &PlayerSavegame::__SavePlayerName, this);
        m_savegame->load("PLVL", &PlayerSavegame::__LoadPlayerLevel, &PlayerSavegame::__SavePlayerLevel, this);
        m_savegame->load("PCLS", &PlayerSavegame::__LoadPlayerClass, &PlayerSavegame::__SavePlayerClass, this);
        m_savegame->load("PDFL", &PlayerSavegame::__LoadDifficultyLevel, &PlayerSavegame::__SaveDifficultyLevel, this);
        m_savegame->load("LNAM", &PlayerSavegame::__LoadLevelName, &PlayerSavegame::__SaveLevelName, this);
        m_savegame->load("LEPT", &PlayerSavegame::__LoadLevelEntryPoint, &PlayerSavegame::__SaveLevelEntryPoint, this);
        m_savegame->load("LUSP", &PlayerSavegame::__LoadUseSpawnPoint, &PlayerSavegame::__SaveUseSpawnPoint, this);
    }

    if ((loadMode & 2) != 0) {
        _InitLevelStates();
        _InitSkills();
        _InitFaeries();
        m_questLog.InitQuests();
        m_volatileQuestLog.InitQuests();
    }

    if ((loadMode & 4) != 0 && m_savegame != nullptr) {
        m_savegame->load("LVLS", &PlayerSavegame::__LoadLevelStates, &PlayerSavegame::__SaveLevelStates, this);
        m_savegame->load("SKIL", &PlayerSavegame::__LoadSkills, &PlayerSavegame::__SaveSkills, this);
        m_savegame->load("FAES", &PlayerSavegame::__LoadFaeries, &PlayerSavegame::__SaveFaeries, this);

        // The current faery is read back only in an online game where the PlayerManager +0x71b flag (unk_71b) is clear.
        Savegame::SectionCallback currentFaeryLoad = nullptr;
        if (OnlineGameFlag(GetOnline()) && !dword_99F76C->unk_71b) {
            currentFaeryLoad = &PlayerSavegame::__LoadCurrentFaery;
        }
        m_savegame->load("CFEE", currentFaeryLoad, &PlayerSavegame::__SaveCurrentFaery, this);

        m_savegame->load("QEST", &PlayerSavegame::__LoadQuests, &PlayerSavegame::__SaveQuests, this);
        m_savegame->load("PROP", &PlayerSavegame::__LoadProperties, &PlayerSavegame::__SaveProperties, this);
        m_savegame->load("GEAR", &PlayerSavegame::__LoadInventory, &PlayerSavegame::__SaveInventory, this);
        m_savegame->load("FTVL", &PlayerSavegame::__LoadFastTravelList, &PlayerSavegame::__SaveFastTravelList, this);
    }

    if ((loadMode & 8) != 0 && m_savegame != nullptr) {
        m_savegame->load("SKIL", &PlayerSavegame::__LoadSkills, &PlayerSavegame::__SaveSkills, this);
    }

    if ((loadMode & 0x20) != 0 && m_savegame != nullptr) {
        m_savegame->load("PROP", &PlayerSavegame::__LoadProperties, &PlayerSavegame::__SaveProperties, this);
    }

    if ((loadMode & 0x10) != 0 && m_savegame != nullptr) {
        m_questLog.InitQuests();
        m_volatileQuestLog.InitQuests();
        m_savegame->load("QEST", &PlayerSavegame::__LoadQuests, &PlayerSavegame::__SaveQuests, this);
    }
}

// 0x465430 PlayerSavegame::SG_Load(int)
// Loads the sections, then the volatile quest log. Returns the result of _LoadVolatileQuestsLog.
int PlayerSavegame::SG_Load(int loadMode) {
    _Load(loadMode);
    return _LoadVolatileQuestsLog(loadMode);
}
