// Script_PlayLevelMusic: script command that starts the current level's music track and sets the
// music state from the ambient/combat flag. Execute(bool, int) calls VoxSoundManager::PlayMusic with
// the level's music id (level +0x11c) and the command data value (+0x08), then sets the music state to
// "ambient" or "combat" from VoxSoundManager's ambient flag. Never blocks: IsBlocking returns false.
// Init and Update are inherited from ScriptCmdImpl.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_PlayLevelMusic> news 16 bytes and
// sets the vptr, unk_04 = 0, m_cmdId = -1 and m_args = 0. The command adds no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45fd20, IsBlocking 0x455660,
// factory 0x458908).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_PlayLevelMusic : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c). Init (0x00) and
    // Update (0x04) are inherited.
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45fd20
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455660, returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. Nothing else in the object: size 0x10.
};
