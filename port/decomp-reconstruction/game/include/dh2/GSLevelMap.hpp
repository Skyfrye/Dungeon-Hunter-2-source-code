// GSLevelMap: the game state that shows the world map for one map id. Ctor builds a LevelMap for m_levelId
// and loads it into the MenuManager. Dtor unloads it and deletes it.
// Original 32-bit size 0xc (12): the vptr, m_levelId and m_levelMap.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3868e4, Ctor 0x386980, Inst 0x3869b0).
#pragma once

#include "dh2/StateBase.hpp"

class LevelMap;
class StateMachine;

class GSLevelMap : public StateBase {
public:
    GSLevelMap();                                                   // 0x3868b8 (C2) / 0x3868e4 (C1): sets m_levelId to -1
    ~GSLevelMap() override;                                         // slot +0x00 0x386914 (D1), slot +0x04 0x386a40 (D0), 0x386910 (D2): empty

    // Overrides of StateBase slots, in vtable order.
    void Ctor(const StateMachine* machine) override;                // slot +0x08 0x386980: builds LevelMap(m_levelId) and loads it
    void Dtor(const StateMachine* machine) override;                // slot +0x0c 0x386948: unloads the LevelMap, deletes it, clears m_levelMap
    void Update(StateMachine* machine, double dt) override;         // slot +0x18 0x386940: forwards to LevelMap::Update
    void Draw(const StateMachine* machine) override;                // slot +0x1c 0x386938: forwards to LevelMap::Draw
    // Pause (+0x10), Resume (+0x14), Draw2D (+0x20), Sleep (+0x24) and WakeUp (+0x28) are StateBase's and are not redeclared.

    // Stores levelId in the m_levelId of the function-local instance (at 0x9A2670) and returns that instance.
    static GSLevelMap* Inst(int levelId);                           // 0x3869b0

    // StateBase occupies +0x00 (vptr). GSLevelMap occupies +0x00 .. +0x0b.
    int m_levelId;                                                  // +0x04 map id, -1 after the ctor; passed to LevelMap(int)
    LevelMap* m_levelMap;                                           // +0x08 set by Ctor, deleted by Dtor
};
