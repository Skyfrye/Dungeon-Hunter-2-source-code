// Script_OpenDoor: script command that opens a named Door. Execute looks the door up by name from the
// command data (ScriptCmd name at +0x0c of the data record), keeps the handle, and calls Door::Open when
// the object is a door (type field at +0xf4 equal to 2). The instant flag is copied from the data record
// at +0x10. Mirrors Script_CloseDoor.
// Original allocation size not recovered (no factory size in class-facts); Script_CloseDoor is 0x48.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45d75c, IsBlocking 0x455848).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Door;

class Script_OpenDoor : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool skipping, int module) override;                  // slot 0x08: 0x45d75c
    bool IsBlocking() const override;                                  // slot 0x0c: 0x455848

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    Door* m_door;                                                      // +0x10 door found by name, null when absent or not a door
    bool m_instant;                                                    // +0x14 copied from the data record (+0x10)
};
