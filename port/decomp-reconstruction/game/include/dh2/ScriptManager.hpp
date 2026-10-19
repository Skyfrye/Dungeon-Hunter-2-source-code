// ScriptManager: owns the loaded script files, their command blocks and the running script contexts.
// Original 32-bit size 0x34 (inferred: the last declared field is the byte at +0x30, rounded to 4).
// No vtable. Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x455980 / 0x4559bc).
// The vectors are STLport vectors of 12 bytes each in the original (begin, end, end of storage);
// they are std::vector here and keep their original offsets as comments.
#pragma once

#include <cstdint>
#include <vector>

class ScriptCmdImpl;

class ScriptManager {
public:
    static ScriptManager s_inst;                                       // 0x9a5fdc ScriptManager::s_inst (ELF _ZN13ScriptManager6s_instE, 52 bytes), the receiver of SkipScript. Defined by the ScriptManager batch.
    static const char* s_dbgRunningScriptName;                         // ELF _ZL22s_dbgRunningScriptName (file-static in the original, 4 bytes in .bss): name of the script ExecuteScript last ran. Defined by the ScriptManager batch.

    // One running or loaded script. 12 bytes in the original. Stored in m_contexts, indexed by script id.
    class ScriptContext {
    public:
        int m_module;                                                  // +0x00 set by StartScript, -1 after StopScript
        int m_nextCmd;                                                 // +0x04 index of the next command to execute
        int m_state;                                                   // +0x08 0 started, 1 executing, 2 finished (IsScriptRunning is m_state != 2)
    };

    // The commands of one script. 12 bytes in the original. Stored in m_cmds, indexed by script id.
    class ScriptCmds {
    public:
        void Free();                                                   // 0x45632c: deletes each command and the array
        int m_count;                                                   // +0x00 number of commands
        bool unk_04;                                                   // +0x04 set when a command in this block has its +0x04 flag
        uint8_t pad_05[3];                                             // +0x05
        ScriptCmdImpl** m_cmds;                                        // +0x08 operator new[] array of m_count command pointers
    };

    ScriptManager();                                                   // 0x455980, 0x4559bc
    ~ScriptManager();                                                  // 0x45a880 (D2), 0x460204 (D1)

    void InitCommands();                                               // 0x455ad8
    const char* GetNameFromID(int id) const;                           // 0x455b8c
    void StopScript(int id, bool notify);                              // 0x455bb8 notify is not read in the original body
    void StopSkipping();                                               // 0x455be0 clears m_skipScript
    bool IsScriptRunning(int id) const;                                // 0x455bec
    int GetScriptModule(int id) const;                                 // 0x455c40 returns the module stored by StartScript
    bool IsCutSceneRunning() const;                                    // 0x455c54
    int GetIDFromName(const char* name, bool searchAll) const;         // 0x4591f0 searchAll false starts at m_loadedCount, true at 0; -1 when not found
    void UnLoadAllScripts();                                           // 0x45a1c8
    void Flush();                                                      // 0x45a2ac
    void LoadScriptFileNames(const char* file, bool append);           // 0x45ad40
    void LoadScriptFile(const char* file, bool append);                // 0x45b264
    bool ExecuteScript(int id);                                        // 0x45c16c returns true when the script is still waiting on a blocking command
    bool ExecuteAllScripts();                                          // 0x45c37c
    void SkipScript(int id, bool fromRemote);                          // 0x4604c0
    void StartScript(int id, int module, bool fromRemote);             // 0x4605c0

    // +0x00 id of the script being skipped, -1 when none. ExecuteScript passes (m_skipScript != -1) to Execute.
    int m_skipScript;                                                  // +0x00
    // +0x04 number of scripts running. StartScript increments it, ExecuteScript decrements it.
    int m_activeCount;                                                 // +0x04
    // +0x08 end of the scripts registered by LoadScriptFile(append = true). Reset to 0 by UnLoadAllScripts and Flush.
    int m_loadedCount;                                                 // +0x08
    std::vector<ScriptContext> m_contexts;                             // +0x0c, 12 bytes in the original
    std::vector<ScriptCmds> m_cmds;                                    // +0x18, 12 bytes in the original
    std::vector<char*> m_scriptNames;                                  // +0x24, 12 bytes in the original (script names from LoadScriptFileNames)
    // +0x30 the byte at ELF 0x9a600c (the binary has no name for it): set by Script_EnterCutSceneMode::Execute, cleared by
    // Script_ExitCutSceneMode::Execute, reset by the ctor and Flush. Read as byte_9A600C by CharTimers::Update, NativeBackToHud,
    // HUDControls and InfoHUDManager, which skip their HUD work while a cut scene is on.
    bool m_inCutScene;                                                 // +0x30
    uint8_t pad_31[3];                                                 // +0x31
};
