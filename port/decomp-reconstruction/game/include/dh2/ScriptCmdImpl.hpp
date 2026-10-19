// ScriptCmdImpl: one command of a script. The Script_<Name> classes derive from it and implement
// Execute and IsBlocking. Abstract: slots +0x08 and +0x0c are null in the base vtable.
// Original 32-bit size 0x10 (16): GetNewScriptCmdImplInstance<Script_AIChangeScript> news 16 bytes.
// Reconstructed from libDungeonHunter2.so pseudocode (Init 0x455628, Update 0x45562c, dtor 0x4559f8 / 0x455a68).
#pragma once

class ScriptCmdImpl {
public:
    // Not in the vtable. ScriptManager::ScriptCmds::Free calls it directly before freeing the command.
    ~ScriptCmdImpl();                                                  // 0x4559f8, 0x455a68

    // Overridable slots, in vtable order.
    virtual void Init();                                               // slot 0x00: 0x455628 (empty)
    virtual void Update();                                             // slot 0x04: 0x45562c (empty)
    virtual void Execute(bool skipping, int module) = 0;               // slot 0x08: null in the base (pure)
    virtual bool IsBlocking() const = 0;                               // slot 0x0c: null in the base (pure)

    // +0x00 vptr (set by the factory and the destructor, not declared here)
    bool unk_04;                                                       // +0x04 cleared by the factory; when set, ScriptManager::LoadScriptFile marks the script's ScriptCmds block
    int m_cmdId;                                                       // +0x08 ScriptCmdID; -1 from the factory, then the id read from the script file
    void* m_args;                                                      // +0x0c polymorphic argument object read from the script stream (slot +0x0c), deleted by the destructor
};
