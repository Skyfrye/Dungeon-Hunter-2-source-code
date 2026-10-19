// GSLevel: the game state that loads one Level and runs it. Ctor builds the Level into m_level (+0x34) and
// starts the loading menu. Update steps the load phases kept in m_phase (+0x38) and then updates the MenuManager.
// Dtor unloads the Level and deletes it. LoadLevel stages the arguments in globals and switches the
// StateMachine to s_gsLevel.
// Original 32-bit size 0x44 (68), the size of the GSLevel::s_gsLevel symbol. The last member ends at +0x44.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x385f30, Ctor 0x386190, Update 0x386630).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/StateBase.hpp"

class Level;
class StateMachine;

class GSLevel : public StateBase {
public:
    GSLevel();                                                      // 0x385ed8 (C1) / 0x385f30 (C2)
    ~GSLevel() override;                                            // slot +0x00 0x385f88 (D1), slot +0x04 0x385fbc (D0), 0x385fd8 (D2)

    // Overrides of StateBase slots, in vtable order.
    void Ctor(const StateMachine* machine) override;                // slot +0x08 0x386190: creates the Level, starts the loading menu
    void Dtor(const StateMachine* machine) override;                // slot +0x0c 0x3860bc: unloads and deletes the Level, clears s_level
    void Pause(const StateMachine* machine) override;               // slot +0x10 0x385ed0: empty
    void Resume(const StateMachine* machine) override;              // slot +0x14 0x386040: clears the local player's AI target
    void Update(StateMachine* machine, double dt) override;         // slot +0x18 0x386630: load phases 1..4, then MenuManager::Update
    void Draw(const StateMachine* machine) override;                // slot +0x1c 0x386014: Level::Draw, then MenuManager::Draw
    void Draw2D(const StateMachine* machine) override;              // slot +0x20 0x38600c: Level::Draw2D
    void WakeUp(const StateMachine* machine) override;              // slot +0x28 0x385ed4: empty
    // Sleep (slot +0x24) is StateBase's and is not redeclared here.

    void Reload();                                                  // 0x385ea0: calls Dtor(nullptr) then Ctor(nullptr) through the vtable

    // Stages the next level in the globals and switches to s_gsLevel. Arguments map one to one onto the
    // Level constructor (see Level.hpp).
    static void LoadLevel(const char* name, int entryPointId, uint32_t savegameSlot, uint32_t seed,
                          uint32_t syncedSeed, bool resume, bool useSpawnPoint, int fromSubId,
                          int difficulty);                          // 0x386818

    // Statics, not part of the instance layout. Their storage is defined in the owner's source file.
    static Level* s_level;                                          // GSLevel::s_level, the Level the current GSLevel owns
    static GSLevel s_gsLevel;                                       // the instance LoadLevel switches to

    // StateBase occupies +0x00 (vptr). GSLevel occupies +0x00 .. +0x43.
    // The std::string is 24 bytes in the original (STLport layout): the buffer is at +0x04, the end pointer at
    // +0x14 and the data pointer at +0x18. The ctor starts it empty; Ctor passes its data pointer as the Level name.
    std::string m_levelName;                                        // +0x04 level name
    int m_entryPointId;                                             // +0x1c Level entryPointId (spawn point)
    uint32_t m_savegameSlot;                                        // +0x20 Level savegameSlot
    uint32_t m_seed;                                                // +0x24 Level seed
    uint32_t m_syncedSeed;                                          // +0x28 Level syncedSeed
    bool m_resume;                                                  // +0x2c Level resume
    bool m_useSpawnPoint;                                           // +0x2d Level useSpawnPoint
    uint8_t pad_2e[2];                                              // +0x2e
    int m_fromSubId;                                                // +0x30 Level fromSubId, -1 for none
    Level* m_level;                                                 // +0x34 the Level built by Ctor, deleted by Dtor
    // Load phase: 1 starts, 2 calls Level::Load, 3 calls Level::Update until the Level's state word (+0x130)
    // reads 38, 4 runs the debug switch check and then Level::Update again.
    int m_phase;                                                    // +0x38
    bool unk_3c;                                                    // +0x3c set to 1 by Ctor, not read by any decompiled method
    uint8_t pad_3d[3];                                              // +0x3d
    int m_difficulty;                                               // +0x40 Level difficulty
};
