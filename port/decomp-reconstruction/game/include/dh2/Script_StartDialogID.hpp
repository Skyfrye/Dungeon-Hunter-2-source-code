// Script_StartDialogID: script command that queues the dialog messages of a dialog id and starts them.
// Adds no members. Execute reads the dialog list id (int) from the ScriptCmdImpl m_args block at +0x08,
// fetches the message list with GetDialogMsgListById, enqueues each DialogMsg (76 bytes) into
// MenuMessageManager<DialogMsg,1>, and invokes the start function when the queue was empty before.
// Original allocation 64 bytes (GetNewScriptCmdImplInstance<Script_StartDialogID>); ScriptCmdImpl occupies
// +0x00 .. +0x0f and nothing of the rest was recovered.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x461114, IsBlocking 0x455694 returns false).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_StartDialogID : public ScriptCmdImpl {
public:
    // Overrides of ScriptCmdImpl slots, in vtable order. Init and Update are inherited (slots 0x00, 0x04).
    void Execute(bool skipping, int module) override;                   // slot 0x08: 0x461114
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455694 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f.
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f, nothing recovered
};
