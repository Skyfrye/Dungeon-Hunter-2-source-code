// LevelSavegame: the save state of one level. It owns the Savegame slot file (INFO and OBJS sections, read by
// __LoadLevelInfo and __LoadObjects), builds the file names from the level id, the difficulty and two 3-digit
// fields, and reads and writes the checkpoint files used by SaveCheckPoint and LoadCheckPoint.
// Original size not recovered: the members run to +0x39. The operator new(60) in the constructor allocates the
// Savegame it owns (see Savegame.hpp), not this object.
// Vtable (_ZTV13LevelSavegame, 16 bytes): slots 0/1 are the destructors and there are no other virtuals.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x462934 C1 / 0x462bd0 C2, dtors 0x461510 D2 /
// 0x461498 D1 / 0x4614f4 D0).
#pragma once

#include <cstdint>
#include <string>

class IStreamBase;
class Level;
class Savegame;

class LevelSavegame {
public:
    // fieldA and fieldB are the two 3-digit fields of the file name; difficulty is the 1-digit field.
    // checkpoint selects the checkpoint file name instead of the level file name.
    LevelSavegame(Level* level, unsigned int levelId, int fieldA, int fieldB, int difficulty,
                  bool checkpoint);                                     // 0x462934 (C1), 0x462bd0 (C2)
    virtual ~LevelSavegame();                                           // 0x461510 (D2), 0x461498 (D1), 0x4614f4 (D0)

    void Load();                                                        // 0x46156c reads the INFO and OBJS sections of m_savegame
    void Save();                                                        // 0x4615ec writes m_savegame unless m_blocked is set

    void LoadCheckPoint(int levelId, int fieldA, int fieldB);           // 0x46259c switches m_savegame to the checkpoint file and loads it
    void SaveCheckPoint(int levelId, int fieldA, int fieldB);           // 0x463130 writes the checkpoint file and the level file
    bool ValidateCheckpoint(int levelId, int fieldA, int fieldB);       // 0x463288 true when m_loadedFileIndex matches fieldB
    bool CheckpointExists(int levelId) const;                           // 0x462394

    static bool Exists(unsigned int levelId, int fieldA, int fieldB, int difficulty);                   // 0x462824
    static int Delete(unsigned int levelId, int fieldA, int fieldB, int difficulty,
                      bool checkpoint, bool multiplayer);               // 0x4626f4
    static void LoadLevel(unsigned int levelId, int fieldA, int fieldB, int difficulty);              // 0x462ae8
    static int DeleteAllLevelSave(unsigned int levelId);                // 0x4620f4
    static std::string& GetFilename(unsigned int levelId, int fieldA, int fieldB, int difficulty,
                                    std::string& name);                 // 0x4624e4 "dh2_<level>_<difficulty>_<fieldA>_<fieldB>_level.savegame"
    static std::string& GetCheckpointFilename(unsigned int levelId, int difficulty, bool multiplayer,
                                              std::string& name);       // 0x4622c8 "dh2_<level>_<difficulty>_single|multi_level.checkpoint"

    // Section callbacks for Savegame::load and Savegame::saveAll. The user pointer is the LevelSavegame.
    static void __LoadLevelInfo(IStreamBase* stream, void* user);       // 0x461820 reads m_loadedFileIndex
    static void __SaveLevelInfo(IStreamBase* stream, void* user);       // 0x4616b8 writes m_fileIndex
    static void __LoadObjects(IStreamBase* stream, void* user);         // 0x461e90 restores the saved objects by name
    static void __SaveObjects(IStreamBase* stream, void* user);         // 0x462d84 writes the object list

    // +0x00 vptr (not declared: the vtable pointer is the first word of every virtual class)
    Savegame* m_savegame;                                               // +0x04 slot file for the level, created by the constructor and deleted by the destructor
    Level* m_level;                                                     // +0x08 the level the constructor was given
    int m_difficulty;                                                   // +0x0c the constructor's last argument, the 1-digit file name field (Level.hpp says Level's m_difficulty goes here)
    std::string unk_10;                                                 // +0x10 set to "" by the constructor, never read in the constructor (24 bytes in the original)
    int m_fileIndex;                                                    // +0x28 the second 3-digit file name field; written to the INFO section
    int m_loadedFileIndex;                                              // +0x2c read back from the INFO section, -1 until loaded; ValidateCheckpoint compares it
    int unk_30;                                                         // +0x30 set to -1 by the constructor, not touched elsewhere in the queue
    int unk_34;                                                         // +0x34 set to -1 by the constructor, not touched elsewhere in the queue
    bool unk_38;                                                        // +0x38 1 while the constructor builds the sections, then 0; __LoadObjects skips the OBJS section while set
    bool m_blocked;                                                     // +0x39 set by Level::SG_BlockLevel; Save skips the write while set
};
