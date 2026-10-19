// Script_EmptyImpl: script command with no effect beyond the debug trace switch read. IsBlocking
// is false. It adds no members to ScriptCmdImpl.
// Original allocation 16 bytes (GetNewScriptCmdImplInstance<Script_EmptyImpl>, 0x458ab8: operator new(0x10), vptr,
// bool at +4, int -1 at +8, zero at +12). That is exactly the ScriptCmdImpl layout, so the class adds nothing.
// Reconstructed from libDungeonHunter2.so pseudocode (Execute 0x45c560, IsBlocking 0x455630).
#pragma once

#include <cstdint>

#include "dh2/ScriptCmdImpl.hpp"

class Script_EmptyImpl : public ScriptCmdImpl {
public:
    ~Script_EmptyImpl();                                                // class-facts; not a vtable slot (ScriptCmdImpl's destructor is not virtual)

    // Overrides of ScriptCmdImpl slots, in vtable order (slot 0x08 and 0x0c).
    void Execute(bool a2, int a3) override;                             // slot 0x08: 0x45c560, reads debug switch only
    bool IsBlocking() const override;                                   // slot 0x0c: 0x455630 returns false

    // ScriptCmdImpl occupies +0x00 .. +0x0f (base layout pending, see open_questions).
    uint8_t pad_10[0x30];                                               // +0x10 .. +0x3f: NOT in the original (factory 0x458ab8 allocates 0x10). Delete once no source uses it.
};
