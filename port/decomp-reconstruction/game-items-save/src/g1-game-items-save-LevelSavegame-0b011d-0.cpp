// Batch g1-game-items-save-LevelSavegame-0b011d-0 (part 1 of 2): LevelSavegame, the save state of one level.
// Declarations come from dh2/LevelSavegame.hpp. ValidateCheckpoint (0x463288) is in another batch and is not defined here.
//
// Notes that apply to the whole batch:
//  - Section callbacks (__LoadLevelInfo, __SaveLevelInfo, __LoadObjects, __SaveObjects) are called by Savegame as
//    (IStreamBase* stream, void* user). The Hex-Rays listing names the first argument `this` and the second `a2`, which is
//    the reverse: a2 is the LevelSavegame. The field offsets used here (+0x28 m_fileIndex, +0x2c m_loadedFileIndex,
//    +0x38 unk_38) are read from a2, which confirms the order.
//  - The first argument of the file-name functions (GetFilename, GetCheckpointFilename, Delete, Exists, LoadLevel and the
//    checkpoint functions) is printed with "%03u" in the file name ("dh2_<n>_..."), and PlayerSavegame takes the same value as
//    its save slot. The header calls it levelId; the file-name evidence says it is the save slot.
//  - Savefile probes go to the file system at dword_99F73C+0x34 (dh2/global/savefile_fs.hpp) and online state to COnline +0x05
//    (GetOnlineGameFlag).
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <stdexcept>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/LevelSavegame.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"     // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp" // dword_99F764, the ObjectManager instance

namespace {

// *(GetOnline() + 5): COnline::isOnlineGame_.
bool OnlineGameFlag() {
    return GetOnlineGameFlag();
}

// The savefile calls use the file system at dword_99F73C+0x34 (glitch::IDevice +0x34, dh2/global/savefile_fs.hpp). Its vtable is
// FileSystemWin32's: slot +0x7c getFiles(dir, names), slot +0x9c deleteSavefile(name), slot +0xb0 doesSavefileExists(name).
void ListSavefiles(const char* dir, std::vector<std::string>& names) {
    SavefileFileSystem().getFiles(dir, names);
}

bool DeleteSavefile(const char* name) {
    return SavefileFileSystem().deleteSavefile(name);
}

// The checkpoint files are multiplayer when the game is online and either this machine is not the host, or it is the host
// and PlayerManager's m_hostChanged (+0x719) is set. Shared by CheckpointExists, LoadCheckPoint and SaveCheckPoint.
bool CheckpointIsMultiplayer() {
    if (!OnlineGameFlag()) {
        return false;
    }
    if (dword_99F76C->IsLocalPlayerHosting() != 0 && !dword_99F76C->m_hostChanged) {
        return false;
    }
    return true;
}

}  // namespace

// 0x461510 LevelSavegame::~LevelSavegame() (D2), with the same body at 0x461498 (D1).
// Deletes the slot file the constructor created, then the m_savegame pointer is cleared. The std::string member
// unk_10 is destroyed by the compiler, which matches the original's _M_deallocate_block call.
LevelSavegame::~LevelSavegame() {
    delete m_savegame;
    m_savegame = nullptr;
}

// 0x4614f4 LevelSavegame::~LevelSavegame() (D0, deleting destructor) has no body here. The compiler emits it for the
// virtual destructor; it calls ~LevelSavegame and then releases the object (the original calls CustomFree).

// 0x46156c LevelSavegame::Load()
// Reads the INFO section (level info) and then the OBJS section (saved objects) of m_savegame.
void LevelSavegame::Load() {
    m_savegame->load("INFO", __LoadLevelInfo, __SaveLevelInfo, this);
    m_savegame->load("OBJS", __LoadObjects, __SaveObjects, this);
}

// 0x4615ec LevelSavegame::Save()
// The original writes
// m_savegame when the object exists and is not blocked (m_blocked, +0x39), and then when the game is offline, or when
// this machine hosts and m_hostChanged (+0x719) is clear.
void LevelSavegame::Save() {
    if (m_savegame == nullptr || m_blocked) {
        return;
    }
    if (!OnlineGameFlag()) {
        m_savegame->saveAll();
        return;
    }
    if (dword_99F76C->IsLocalPlayerHosting() != 0 && !dword_99F76C->m_hostChanged) {
        m_savegame->saveAll();
    }
}

// 0x4616b8 LevelSavegame::__SaveLevelInfo(IStreamBase*, void*)
// Writes m_fileIndex (+0x28), the second 3-digit field of the file name, as the INFO section's only value.
void LevelSavegame::__SaveLevelInfo(IStreamBase* stream, void* user) {
    LevelSavegame* self = static_cast<LevelSavegame*>(user);
    stream->writeAs<int>(self->m_fileIndex);
}

// 0x461820 LevelSavegame::__LoadLevelInfo(IStreamBase*, void*)
// Reads the file index back into m_loadedFileIndex (+0x2c), which ValidateCheckpoint compares.
void LevelSavegame::__LoadLevelInfo(IStreamBase* stream, void* user) {
    LevelSavegame* self = static_cast<LevelSavegame*>(user);
    stream->readAs<int>(self->m_loadedFileIndex);
}

// 0x461e90 LevelSavegame::__LoadObjects(IStreamBase*, void*)
// Reads the OBJS section. The section is skipped while unk_38 is set (the constructor builds the sections with it set).
// Each record is: the object's game type (read and not used by the lookup), its key name, an int flag word, the 64-bit
// size of the record's payload, then the payload. The key "PlayerCharacter_0" selects the local player's Character; any
// other key is looked up by name. The payload is handed to the object's Deserialize. Afterwards the stream is set to
// the end of the record, unless Deserialize consumed exactly that much.
void LevelSavegame::__LoadObjects(IStreamBase* stream, void* user) {
    LevelSavegame* self = static_cast<LevelSavegame*>(user);
    if (self->unk_38) {
        return;
    }

    ObjectManager* manager = dword_99F764;
    std::string gameType;
    std::string keyName;

    unsigned int count = 0;
    stream->readAs<unsigned int>(count);
    for (unsigned int index = 0; index < count; ++index) {
        stream->readAs(gameType);
        stream->readAs(keyName);
        int flags = 0;
        stream->readAs<int>(flags);
        unsigned long long size = 0;
        stream->readAs<unsigned long long>(size);
        const std::uint64_t start = stream->tell();
        const std::uint64_t end = start + size;

        ObjectBase* object = nullptr;
        if (std::strcmp("PlayerCharacter_0", keyName.c_str()) != 0) {
            ObjectHandle handle = manager->GetObjectByName(keyName.c_str(), flags, false, nullptr);
            object = handle.GetObject(false);
        } else {
            object = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
        }

        if (object != nullptr) {
            object->Deserialize(stream);
            // The original compares the whole 64-bit position with the end of the record (low word first, then high).
            if (stream->tell() == end) {
                continue;
            }
            (void)stream->tell();
        }
        stream->seek(end);
    }
}

// 0x4620f4 LevelSavegame::DeleteAllLevelSave(unsigned int)
// The original lists the "./" directory, and for each name that contains "dh2_<slot>_" and
// ends with "_level.savegame" it deletes that savefile. A name shorter than 15 bytes makes the original's string compare
// throw std::out_of_range, which is kept.
int LevelSavegame::DeleteAllLevelSave(unsigned int levelId) {
    std::vector<std::string> names;
    ListSavefiles("./", names);

    char prefix[64];
    std::snprintf(prefix, sizeof prefix, "%s%03u_", "dh2_", levelId);
    for (const std::string& name : names) {
        if (std::strstr(name.c_str(), prefix) == nullptr) {
            continue;
        }
        if (name.size() < 15) {
            throw std::out_of_range("basic_string");
        }
        if (name.compare(name.size() - 15, 15, "_level.savegame") != 0) {
            continue;
        }
        DeleteSavefile(name.c_str());
    }
    return 1;
}

// 0x4622c8 LevelSavegame::GetCheckpointFilename(unsigned int, int, bool, std::string&)
// Builds "dh2_<slot %03u>_<difficulty %01u>_single_level.checkpoint", or "_multi" when multiplayer is set.
std::string& LevelSavegame::GetCheckpointFilename(unsigned int levelId, int difficulty, bool multiplayer,
                                                  std::string& name) {
    const char* kind = multiplayer ? "_multi" : "_single";
    char buffer[64];
    std::snprintf(buffer, sizeof buffer, "%s%03u_%01u%s%s", "dh2_", levelId, static_cast<unsigned int>(difficulty),
                  kind, "_level.checkpoint");
    name.assign(buffer);
    return name;
}

// 0x462394 LevelSavegame::CheckpointExists(int) const
// The probes: the checkpoint name, then the name with ".bak" appended.
bool LevelSavegame::CheckpointExists(int levelId) const {
    std::string name;
    GetCheckpointFilename(static_cast<unsigned int>(levelId), m_difficulty, CheckpointIsMultiplayer(), name);
    if (SavefileExists(name.c_str())) {
        return true;
    }
    const std::string backup = name + ".bak";
    return SavefileExists(backup.c_str());
}

// 0x4624e4 LevelSavegame::GetFilename(unsigned int, int, int, int, std::string&)
// Builds "dh2_<slot %03u>_<difficulty %01u>_<fieldA %03u>_<fieldB %03u>_level.savegame". Negative fields print as 0,
// which is the original's "x & ~(x >> 31)".
std::string& LevelSavegame::GetFilename(unsigned int levelId, int fieldA, int fieldB, int difficulty,
                                        std::string& name) {
    const unsigned int clampedA = fieldA < 0 ? 0u : static_cast<unsigned int>(fieldA);
    const unsigned int clampedB = fieldB < 0 ? 0u : static_cast<unsigned int>(fieldB);
    char buffer[64];
    std::snprintf(buffer, sizeof buffer, "%s%03u_%01u_%03u_%03u%s", "dh2_", levelId,
                  static_cast<unsigned int>(difficulty), clampedA, clampedB, "_level.savegame");
    name.assign(buffer);
    return name;
}

// 0x46259c LevelSavegame::LoadCheckPoint(int, int, int)
// The checkpoint file is loaded through m_savegame, then the slot file name is put back.
void LevelSavegame::LoadCheckPoint(int levelId, int fieldA, int fieldB) {
    std::string name;
    GetCheckpointFilename(static_cast<unsigned int>(levelId), m_difficulty, CheckpointIsMultiplayer(), name);
    m_savegame->m_filename = name;
    m_savegame->_cacheFile(nullptr);
    Load();

    GetFilename(static_cast<unsigned int>(levelId), fieldA, fieldB, m_difficulty, name);
    m_savegame->m_filename = name;
}

// 0x4626f4 LevelSavegame::Delete(unsigned int, int, int, int, bool, bool)
// The original always calls delete for the name and then for the name with ".bak", and returns the OR of the two results.
int LevelSavegame::Delete(unsigned int levelId, int fieldA, int fieldB, int difficulty, bool checkpoint,
                          bool multiplayer) {
    std::string name;
    if (checkpoint) {
        GetCheckpointFilename(levelId, difficulty, multiplayer, name);
    } else {
        GetFilename(levelId, fieldA, fieldB, difficulty, name);
    }
    const bool removed = DeleteSavefile(name.c_str());
    name += ".bak";
    const bool backupRemoved = DeleteSavefile(name.c_str());
    return (removed || backupRemoved) ? 1 : 0;
}

// 0x462824 LevelSavegame::Exists(unsigned int, int, int, int)
// PARTIAL: the probes go through SavefileExists, the file system stub. The name logic is complete: the name, then the name
// with ".bak" appended.
bool LevelSavegame::Exists(unsigned int levelId, int fieldA, int fieldB, int difficulty) {
    std::string name;
    GetFilename(levelId, fieldA, fieldB, difficulty, name);
    if (SavefileExists(name.c_str())) {
        return true;
    }
    const std::string backup = name + ".bak";
    return SavefileExists(backup.c_str());
}

// 0x462934 LevelSavegame::LevelSavegame(Level*, unsigned int, int, int, int, bool) (C1), with the same body at 0x462bd0 (C2).
// Stores the level and difficulty. The file index is the second 3-digit field. The slot file is created with the name the
// constructor builds, and its two sections (INFO, OBJS) are registered. unk_38 is set while the sections are built and
// cleared at the end. The other fields start at -1 (the file index read back, unk_30, unk_34) and m_blocked is clear.
LevelSavegame::LevelSavegame(Level* level, unsigned int levelId, int fieldA, int fieldB, int difficulty,
                             bool checkpoint)
    : m_savegame(nullptr),
      m_level(level),
      m_difficulty(difficulty),
      m_fileIndex(fieldB),
      m_loadedFileIndex(-1),
      unk_30(-1),
      unk_34(-1),
      unk_38(true),
      m_blocked(false) {
    std::string name;
    if (checkpoint) {
        GetCheckpointFilename(levelId, m_difficulty, false, name);
    } else {
        GetFilename(levelId, fieldA, fieldB, m_difficulty, name);
    }
    m_savegame = new Savegame(name.c_str(), false);
    m_savegame->initSectionInfo("INFO", __LoadLevelInfo, __SaveLevelInfo, this);
    m_savegame->initSectionInfo("OBJS", __LoadObjects, __SaveObjects, this);
    unk_38 = false;
}

// 0x462ae8 LevelSavegame::LoadLevel(unsigned int, int, int, int)
// PARTIAL: the load happens only when Exists() finds the slot, and Exists is partial (file system stub). The calls are as the
// listing shows them, but the arguments are odd. The temporary LevelSavegame takes the third argument as its levelId and
// zero for the other numeric fields. Application::LoadLevel then gets that object's name (unk_10, empty after the
// constructor), entry point (unk_30 = -1) and slot (unk_34 = -1). The intent is not confirmed.
void LevelSavegame::LoadLevel(unsigned int levelId, int fieldA, int fieldB, int difficulty) {
    if (!Exists(levelId, fieldA, fieldB, difficulty)) {
        return;
    }
    LevelSavegame save(nullptr, static_cast<unsigned int>(fieldB), 0, 0, 0, false);
    PlayerSavegame player(levelId, 1, false);
    Singleton<Application>::s_inst.LoadLevel(save.unk_10.c_str(), save.unk_30,
                                             static_cast<std::uint32_t>(save.unk_34), true, false, difficulty,
                                             false, 0u, 0u);
}

// 0x462d84 LevelSavegame::__SaveObjects(IStreamBase*, void*)
// The OBJS section writer. It walks ObjectManager's object map (m_objectMap, std::map<int, ObjectListItem>) in key order and
// writes the objects that are flagged for the checkpoint (ObjectBase::unk_28) and, in an online game, are not remote players.
// Per object: the game type (+0x5c, the c_str of m_gameType), the entry's name (or "PlayerCharacter_0" for a player character
// listed under another name), the object's unk_64 as an int, and its Serialize payload behind a 64-bit size that is patched
// after the payload is written. The object count is written first as a placeholder and patched at the end.
// Stream slots: +0x30 tellWrite, +0x2c seekWrite. Object slots: +0x24 IsCharacter, +0x28 IsPlayer, +0x10 Serialize.
void LevelSavegame::__SaveObjects(IStreamBase* stream, void* user) {
    (void)user;
    std::uint32_t count = 0;
    std::string typeName;
    const std::uint64_t countPosition = stream->tellWrite();
    stream->writeAs<unsigned int>(count);
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr || !object->unk_28) {
            continue;
        }
        if (OnlineGameFlag() && object->IsCharacter() && object->IsPlayer() &&
            !(dword_99F76C->IsLocalPlayer(static_cast<const Character*>(object)) && !object->m_markedForDeletion)) {
            continue;
        }
        ++count;
        typeName.assign(object->m_gameType.c_str(), std::strlen(object->m_gameType.c_str()));
        stream->writeAs(typeName);
        if (object->IsCharacter() && object->IsPlayer() && std::strcmp("PlayerCharacter_0", entry.second.m_name.c_str()) != 0) {
            const std::string playerName("PlayerCharacter_0");
            stream->writeAs(playerName);
        } else {
            stream->writeAs(entry.second.m_name);
        }
        const std::int32_t objectId = object->unk_64;
        stream->writeAs<int>(objectId);
        std::uint64_t payloadSize = 0;
        const std::uint64_t sizePosition = stream->tellWrite();
        stream->writeAs<unsigned long long>(payloadSize);
        object->Serialize(stream);
        payloadSize = stream->tellWrite() - 8 - sizePosition;
        stream->seekWrite(sizePosition);
        stream->writeAs<unsigned long long>(payloadSize);
        stream->seekWrite(payloadSize + 8 + sizePosition);
    }
    stream->seekWrite(countPosition);
    stream->writeAs<unsigned int>(count);
}

// 0x463130 LevelSavegame::SaveCheckPoint(int, int, int)
// PARTIAL: depends on CheckpointIsMultiplayer (online flag stub). The rest is complete. The checkpoint file is written with
// saveAll through m_savegame, then the slot file name is put back.
void LevelSavegame::SaveCheckPoint(int levelId, int fieldA, int fieldB) {
    if (m_savegame == nullptr) {
        return;
    }
    std::string name;
    GetCheckpointFilename(static_cast<unsigned int>(levelId), m_difficulty, CheckpointIsMultiplayer(), name);
    m_savegame->m_filename = name;
    m_savegame->saveAll();

    GetFilename(static_cast<unsigned int>(levelId), fieldA, fieldB, m_difficulty, name);
    m_savegame->m_filename = name;
}
