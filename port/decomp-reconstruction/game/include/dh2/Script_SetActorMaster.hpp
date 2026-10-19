// Script_SetActorMaster: script command that makes one named AI character the master of another.
// Execute resolves the actor and the master by name from the argument record (ScriptCmdImpl::m_args),
// then calls CharAI::AI_SetMaster on the actor's CharAI (Character +0x3c8, CharAI at +968 of the
// Character as read by the pseudocode). Nothing is kept between calls. Never blocking.
// Original 32-bit size 0x10 (16): no members of its own, the record is the ScriptCmdImpl base alone
// (no operator new size in class-facts, see open_questions).
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45e4b8, IsBlocking 0x455840).
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_SetActorMaster : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x45e4b8
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455840 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.
};
