// Batch g1-game-items-save-LevelSavegame-0b011d-1 (owner LevelSavegame, part 2 of 2: ValidateCheckpoint).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so (0x463288, 604 bytes per the
// symbol index).
//
// Notes:
//  * Hex-Rays types the first int argument as LevelSavegame*. The assembly passes it in r1 as the level id to
//    GetCheckpointFilename and GetFilename (both take unsigned int levelId), so it is written as levelId.
//  * The fallback name is name + ".bak". The clone of std::operator+ that the original calls appends that literal
//    (checked in its disassembly, _ZStplIcSt11char_traitsIcESaIcEESbIT_T0_T1_ERKS6_PKS3_.clone.1).
//  * Two inputs come from outside the class: the online flag, COnline +0x05 (isOnlineGame_, read through the COnline pointer),
//    and the savefile existence check, vtable +0xb0 of the file system at IDevice +0x34 (dh2/global/savefile_fs.hpp).
//  * PlayerManager::m_hostChanged (+0x719) is read as the multiplayer test while the local player is hosting. It keeps
//    the name the owner header gives it.

#include <string>

#include "dh2/LevelSavegame.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_online.hpp"
#include "dh2/global/savefile_fs.hpp"

namespace {

// *(GetOnline() + 5), the COnline flag isOnlineGame_.
bool OnlineGameFlag(const COnline* online) {
    return online->IsOnlineGame();
}

// The original calls vtable +0xb0 of the file system at IDevice +0x34 with the checkpoint name and with name + ".bak". That
// slot is FileSystemBase::doesSavefileExists (0x34e150) in the FileSystemWin32 vtable.
bool DeviceDoesSavefileExists(const char* name) {
    return SavefileExists(name);
}

}  // namespace

// 0x463288 _ZN13LevelSavegame18ValidateCheckpointEiii
bool LevelSavegame::ValidateCheckpoint(int levelId, int fieldA, int fieldB) {
    std::string name;

    // Multiplayer test: online, then hosting. A hosting local player uses the PlayerManager flag at +0x719. Any other
    // online case is multiplayer. Offline is single-player.
    bool multiplayer = false;
    if (OnlineGameFlag(GetOnline())) {
        if (dword_99F76C->IsLocalPlayerHosting()) {
            multiplayer = dword_99F76C->m_hostChanged;  // +0x719
        } else {
            multiplayer = true;
        }
    }
    GetCheckpointFilename(static_cast<unsigned int>(levelId), m_difficulty, multiplayer, name);  // m_difficulty +0x0c

    // Use the checkpoint file when it exists. Otherwise use its ".bak" copy. With neither, nothing changes.
    if (DeviceDoesSavefileExists(name.c_str())) {
        m_savegame->m_filename = name;
    } else {
        const std::string backup = name + ".bak";
        if (!DeviceDoesSavefileExists(backup.c_str())) {
            return false;
        }
        m_savegame->m_filename = backup;
    }
    m_savegame->_cacheFile(nullptr);
    m_savegame->load("INFO", &LevelSavegame::__LoadLevelInfo, &LevelSavegame::__SaveLevelInfo, this);

    // The result compares the file index read from the INFO section (+0x2c) with fieldB. Then the level's own file name
    // replaces the checkpoint name in the savegame.
    const bool matches = m_loadedFileIndex == fieldB;
    GetFilename(static_cast<unsigned int>(levelId), fieldA, fieldB, m_difficulty, name);
    m_savegame->m_filename = name;
    m_savegame->_cacheFile(nullptr);
    return matches;
}
