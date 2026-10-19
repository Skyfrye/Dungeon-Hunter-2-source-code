// TrophyManager: singleton that owns every TrophyData (one per trophy table row) and the list of trophies
// whose unlock is in progress. CreateInstance news it (operator new 0x1c) and the constructor calls
// InitTrophies. SaveTrophies and LoadTrophies store the unlocked set in "achievements.savegame" as a
// std::bitset<128>.
// Original 32-bit size 0x1c (28). Vtable _ZTV13TrophyManager is 16 bytes: Init and Terminate and no
// destructor slot, so the destructor is not virtual.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x380474 C1 / 0x380508 C2, dtors 0x37fdf0 D1 /
// 0x37fec8 D2, CreateInstance 0x3804c0, DeleteInstance 0x37fe88).
#pragma once

#include <cstdint>
#include <vector>

class TrophyData;

class TrophyManager {
public:
    TrophyManager();                                                    // 0x380474 (C1), 0x380508 (C2)
    ~TrophyManager();                                                   // 0x37fdf0 (D1), 0x37fec8 (D2); calls UnloadTrophies, frees both vectors

    // Vtable slots, in order.
    virtual int Init();                                                 // slot 0x00: 0x37f9d0, returns 1
    virtual int Terminate();                                            // slot 0x04: 0x37f9d8, returns 1

    // Singleton lifetime. Both use TrophyManager::s_instance and no object pointer.
    static void CreateInstance();                                       // 0x3804c0
    static void DeleteInstance();                                       // 0x37fe88

    void UnlockTrophiesGameCenter();                                    // 0x37f9e0, empty body
    void UnlockTrophiesGLLive();                                        // 0x37fab4: calls NotifyTrophy(gl_index) for every unlocked row
    bool IsTrophyUnlocking(int id);                                     // 0x37f9e4: id is in m_unlocking
    bool IsTrophyUnlocked(int id);                                      // 0x380058: row found by GetTrophyData and m_unlocked set
    TrophyData* GetTrophyData(int id);                                  // 0x37ff60: linear search of m_trophies by m_id; null when not found
    void UnlockTrophy(int id);                                          // 0x3813b8: appends id to m_unlocking, then runs TrophyUnlockedCB
    static void TrophyUnlockedCB(int id);                               // 0x380e48: static, reads s_instance; marks the row unlocked and queues the message
    void DBG_UnlockAllTrophies();                                       // 0x3814c8: UnlockTrophy for every table row
    void UnloadTrophies();                                              // 0x37fc98: deletes each TrophyData through its D0 slot and empties m_trophies (capacity kept)
    void InitTrophies();                                                // 0x3801c4: builds one TrophyData per Arrays::TrophyTable row
    static void SaveTrophies();                                         // 0x38006c: static, the caller passes an unrelated pointer
    void LoadTrophies();                                                // 0x38151c: reads the bitset and unlocks each set bit

    // The singleton. It is a static, not part of the object.
    static TrophyManager* s_instance;

    // TrophyManager occupies +0x00 .. +0x1b.
    // vptr                                                             // +0x00
    std::vector<TrophyData*> m_trophies;                                // +0x04 owned TrophyData pointers (begin, end, end of storage: 12 bytes in the original)
    std::vector<int> m_unlocking;                                       // +0x10 ids whose unlock has started and has not completed (12 bytes)
};
