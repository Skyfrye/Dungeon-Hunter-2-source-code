// Script_AISetHP: script command that sets the hit points of the named AI character. Its Execute
// is empty in the shipped binary (0x4557c0), so it adds no state to ScriptCmdImpl. Original 32-bit
// size 0x10 (16), allocated by GetNewScriptCmdImplInstance at 0x458310.
#pragma once

#include "dh2/ScriptCmdImpl.hpp"

class Script_AISetHP : public ScriptCmdImpl {
public:
    // ScriptCmdImpl occupies +0x00 .. +0x0f. No members of its own.

    void Execute(bool, int) override;                               // 0x4557c0: empty, returns at once
    bool IsBlocking() const override;                               // 0x4557c4: returns false
};
