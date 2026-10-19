// Batch g1-game-app-ScriptManager-b3ae8b-0 (ScriptManager, part 1 of 2). Rebuilt from the Hex-Rays pseudocode
// (libDungeonHunter2.so) and checked against the assembly where the call targets were unclear.
// Member offsets are the original 32-bit ones and are listed in dh2/ScriptManager.hpp.
// ScriptManager::s_inst is defined here, as dh2/ScriptManager.hpp asks ("Defined by the ScriptManager batch").
#include "dh2/ScriptManager.hpp"

#include <cstddef>
#include <cstdint>
#include <string>

#include "core-platform/deps/application.hpp"  // ApplicationOpenStream, ApplicationCloseStream (file system slots +0x88, +0x78)
#include "core-platform/lc_api.hpp"            // LC_API_STRCASECMP (the original's LC_API_STRCASECMP_0 is its tail-call target)
#include "core-platform/memory.hpp"            // CustomFree, MemoryHintState
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/StreamBuffer.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/script_cmd_map.hpp"
#include "dh2/global/net_singletons.hpp"       // GetOnlineGameFlag, GetMessaging
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "pydata-accessors/w7_pydata12.hpp"    // PyDataConstants::getConstant
#include "dh2/global/runtime_support.hpp"      // PushProfilingContext, PopProfilingContext, operator new[](size, MemoryHintState)
#include "dh2/v2Controller.hpp"

// Static storage of the original (file-static in its ScriptManager translation unit).
ScriptManager ScriptManager::s_inst;
const char* ScriptManager::s_dbgRunningScriptName = nullptr;

// 0x455980 ScriptManager::ScriptManager()
// 0x4559bc ScriptManager::ScriptManager()
// C1 and C2 have identical bodies; one definition covers both. The original zeroes the vector headers (+0x0c .. +0x2c),
// which the vectors' default construction gives too. pad_31 is not written.
ScriptManager::ScriptManager()
    : m_skipScript(-1),   // +0x00
      m_activeCount(0),   // +0x04
      m_loadedCount(0),   // +0x08
      m_inCutScene(false) {}    // +0x30

// 0x455ad8 ScriptManager::InitCommands()
// Calls the Init slot (+0x00) of every command of every script block, in order. The original re-reads the vectors after
// each call. The index form below does the same.
void ScriptManager::InitCommands() {
    for (int script = 0; script < static_cast<int>(m_cmds.size()); ++script) {
        for (int c = 0; c < m_cmds[script].m_count; ++c) {
            m_cmds[script].m_cmds[c]->Init();
        }
    }
}

// 0x455b8c ScriptManager::GetNameFromID(int) const
const char* ScriptManager::GetNameFromID(int id) const {
    if (id < 0) {
        return nullptr;
    }
    if (id >= static_cast<int>(m_scriptNames.size())) {
        return nullptr;
    }
    return m_scriptNames[id];
}

// 0x455bb8 ScriptManager::StopScript(int, bool)
// Marks script id finished (state 2) and clears its module. The notify argument is not read by the original body.
void ScriptManager::StopScript(int id, bool notify) {
    static_cast<void>(notify);
    m_contexts[id].m_state = 2;    // ScriptContext +0x08
    m_contexts[id].m_module = -1;  // ScriptContext +0x00
}

// 0x455be0 ScriptManager::StopSkipping()
void ScriptManager::StopSkipping() {
    m_skipScript = -1;
}

// 0x455bec ScriptManager::IsScriptRunning(int) const
bool ScriptManager::IsScriptRunning(int id) const {
    return m_contexts[id].m_state != 2;
}

// 0x455c40 ScriptManager::GetScriptModule(int) const
int ScriptManager::GetScriptModule(int id) const {
    return m_contexts[id].m_module;
}

// 0x455c54 ScriptManager::IsCutSceneRunning() const
// The original takes the script count from m_cmds (its begin and end) and tests each script's state in turn.
bool ScriptManager::IsCutSceneRunning() const {
    const int count = static_cast<int>(m_cmds.size());
    for (int id = 0; id < count; ++id) {
        if (IsScriptRunning(id)) {
            return true;
        }
    }
    return false;
}

// 0x45632c ScriptManager::ScriptCmds::Free()
// Destroys each command of the block (its destructor is called directly, not through the vtable, as in the original),
// frees each command and then the pointer array, and zeroes the block.
void ScriptManager::ScriptCmds::Free() {
    if (m_cmds != nullptr) {
        for (int i = 0; i < m_count; ++i) {
            ScriptCmdImpl* cmd = m_cmds[i];
            if (cmd != nullptr) {
                cmd->~ScriptCmdImpl();
                CustomFree(cmd);
            }
        }
        CustomFree(m_cmds);
    }
    m_count = 0;
    m_cmds = nullptr;
}

// 0x4591f0 ScriptManager::GetIDFromName(char const*, bool) const
// searchAll false starts at m_loadedCount (the scripts added by the last append load), true starts at 0.
// Returns the first id whose name matches case-insensitively, or -1.
int ScriptManager::GetIDFromName(const char* name, bool searchAll) const {
    const int count = static_cast<int>(m_scriptNames.size());
    const int start = searchAll ? 0 : m_loadedCount;
    if (start >= count) {
        return -1;
    }
    for (int id = start; id < count; ++id) {
        if (LC_API_STRCASECMP(m_scriptNames[id], name) == 0) {
            return id;
        }
    }
    return -1;
}

// 0x45a1c8 ScriptManager::UnLoadAllScripts()
// Frees every script block and every name, empties the vectors (their storage is kept), clears the skip request and the
// loaded count.
void ScriptManager::UnLoadAllScripts() {
    for (int script = 0; script < static_cast<int>(m_cmds.size()); ++script) {
        m_cmds[script].Free();
    }
    for (int id = 0; id < static_cast<int>(m_scriptNames.size()); ++id) {
        CustomFree(m_scriptNames[id]);
        m_scriptNames[id] = nullptr;
    }
    m_scriptNames.clear();
    m_cmds.clear();
    m_contexts.clear();
    StopSkipping();
    m_loadedCount = 0;
}

// 0x45a2ac ScriptManager::Flush()
// Resets the skip request, the m_inCutScene flag, the active count and the loaded count, unloads everything, and clears the
// global v2Controller block flag.
void ScriptManager::Flush() {
    m_skipScript = -1;
    m_inCutScene = false;
    m_activeCount = 0;
    m_loadedCount = 0;
    UnLoadAllScripts();
    v2Controller::s_blocked = false;
}

// 0x45a880 ScriptManager::~ScriptManager()   (D2)
// 0x460204 ScriptManager::~ScriptManager()   (D1, same body; one definition covers both)
// The original unloads the scripts, frees the name storage, then destroys m_cmds and m_contexts. In C++ the member vectors
// do the last part after this body, in reverse declaration order, which is the original order.
ScriptManager::~ScriptManager() {
    UnLoadAllScripts();
}

// 0x45ad40 ScriptManager::LoadScriptFileNames(char const*, bool)
// The file starts with a raw 32-bit count of names. Each name is a 32-bit length followed by that many raw bytes, and the names are
// appended to m_scriptNames. With append set, the file is read only when every loaded script is registered (m_loadedCount >= script
// count). The file is opened through the application file system (slot +0x88), copied into a StreamBuffer and released (slot +0x78)
// before anything is read from the copy.
void ScriptManager::LoadScriptFileNames(const char* file, bool append) {
    if (append && m_loadedCount < static_cast<int>(m_cmds.size())) {
        return;
    }
    IStreamBase* stream = ApplicationOpenStream(file);
    if (stream == nullptr) {
        return;
    }
    StreamBuffer buffer(stream);
    ApplicationCloseStream(stream);

    int nameCount = 0;
    buffer.read(&nameCount, 4);
    const int oldCount = static_cast<int>(m_scriptNames.size());
    const int newCount = oldCount + nameCount;
    m_scriptNames.resize(static_cast<std::size_t>(newCount), nullptr);
    for (int i = oldCount; i < newCount; ++i) {
        unsigned int length = 0;
        StreamReader::readAs<unsigned int>(&buffer, &length);
        char* name = new (MHS_UNRECOVERED) char[length + 1];
        StreamReader::readStringEx(&buffer, name, length);
        name[length] = '\0';
        m_scriptNames[i] = name;
    }
}

// 0x45b264 ScriptManager::LoadScriptFile(char const*, bool)
// The file starts with a 32-bit script count, then, per script, a 32-bit command count and that many commands. The file is copied into a
// StreamBuffer and released first, as in LoadScriptFileNames. For each command the type id (ScriptCmdID, the first int of its record) is
// peeked; the command object (s_scriptCmdImplMap[id]) and its argument record (the second half of the table) are created, the record
// reads itself from the stream (virtual read, slot +0x0c), the command gets the id (+0x08) and the record (+0x0c), runs its Init, and sets
// the script block's flag (ScriptCmds +0x04) when the command's flag (+0x04) is set. Every script ends with StopScript(script, false).
// A type id outside the table would index past it in the original as well.
void ScriptManager::LoadScriptFile(const char* file, bool append) {
    if (append && m_loadedCount < static_cast<int>(m_cmds.size())) {
        return;
    }
    IStreamBase* stream = ApplicationOpenStream(file);
    if (stream == nullptr) {
        return;
    }
    StreamBuffer buffer(stream);
    ApplicationCloseStream(stream);

    int scriptCount = 0;
    StreamReader::readAs<int>(&buffer, &scriptCount);
    const int firstNew = static_cast<int>(m_cmds.size());
    const int endNew = firstNew + scriptCount;
    if (append) {
        m_loadedCount += scriptCount;
    }
    m_cmds.resize(static_cast<std::size_t>(endNew), ScriptCmds{});
    m_contexts.resize(static_cast<std::size_t>(endNew), ScriptContext{});

    for (int script = firstNew; script < endNew; ++script) {
        int commandCount = 0;
        StreamReader::readAs<int>(&buffer, &commandCount);
        m_cmds[script].m_count = commandCount;
        m_cmds[script].m_cmds = new (MHS_UNRECOVERED) ScriptCmdImpl*[commandCount];  // operator new[](4 * count, 0) of the original
        for (int i = 0; i < commandCount; ++i) {
            int typeId = 0;
            StreamReader::peekAs<int>(&buffer, &typeId);
            m_cmds[script].m_cmds[i] = s_scriptCmdImplMap[typeId]();
            Structs::ScriptCmd* record = s_scriptCmdDataMap[typeId]();
            record->read(&buffer);
            ScriptCmdImpl* cmd = m_cmds[script].m_cmds[i];
            cmd->m_cmdId = typeId;
            cmd->m_args = record;
            cmd->Init();
            if (cmd->unk_04) {
                m_cmds[script].unk_04 = true;
            }
        }
        StopScript(script, false);
    }
}

// 0x45c16c ScriptManager::ExecuteScript(int)
// Runs the commands of script id from its next command. Returns true when a blocking command is still waiting: its Update runs and the
// script stays in state 1. Returns false when the script has no commands left or is already finished (state 2). With a skip request
// active, only commands whose id is ExecScript (PyDataConstants ScriptCmdID/ExecScript) are checked for blocking.
bool ScriptManager::ExecuteScript(int id) {
    s_dbgRunningScriptName = m_scriptNames[id];
    if (m_contexts[id].m_state == 2) {
        return false;
    }
    // State 1: the current command already ran, so the loop resumes at its blocking check.
    bool resumeAtCheck = (m_contexts[id].m_state == 1);
    for (;;) {
        ScriptCmdImpl* cmd = m_cmds[id].m_cmds[m_contexts[id].m_nextCmd];
        if (!resumeAtCheck) {
            cmd->Execute(m_skipScript != -1, m_contexts[id].m_module);
            m_contexts[id].m_state = 1;
        }
        resumeAtCheck = false;

        const int execScriptId = ApplicationGetInstance().m_pyDataConstants->getConstant("ScriptCmdID", "ExecScript");
        if (m_skipScript == -1 || execScriptId == cmd->m_cmdId) {
            if (cmd->IsBlocking()) {
                cmd->Update();
                return true;
            }
        }

        const int next = m_contexts[id].m_nextCmd + 1;
        m_contexts[id].m_state = 0;
        m_contexts[id].m_nextCmd = next;
        if (next >= m_cmds[id].m_count) {
            m_contexts[id].m_state = 2;
            --m_activeCount;
            // The original calls DebugSwitches::load(&s_inst), then GetSwitch("isTracingScriptCmd"). GetInstance() performs the
            // same load and returns the instance. The result is not used.
            DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
            return false;
        }
    }
}

// 0x45c37c ScriptManager::ExecuteAllScripts()
// Runs every script once and returns true when any script is still waiting on a blocking command. When no script is
// active the skip request is cleared. When nothing is still waiting, the active count is reset and the skip request is
// cleared again (the two StopSkipping paths of the original).
bool ScriptManager::ExecuteAllScripts() {
    PushProfilingContext("ScriptManager::ExecuteAllScripts");
    bool anyRunning = false;
    const int count = static_cast<int>(m_cmds.size());
    for (int id = 0; id < count; ++id) {
        anyRunning |= ExecuteScript(id);
    }
    if (m_activeCount == 0) {
        StopSkipping();
    }
    if (!anyRunning) {
        m_activeCount = 0;
        StopSkipping();
    }
    PopProfilingContext("ScriptManager::ExecuteAllScripts");
    return anyRunning;
}

// 0x4604c0 ScriptManager::SkipScript(int, bool)
// The DialogMsg queue is flushed first (FlushEnqueuedMessages, the clone for queue 0). Online and not from a remote player, a
// CMsgScriptCmd (command 1, script id, module -1) is sent to the other players. Then the isTracingScriptCmd probe runs and the skip
// request is set when none is active.
void ScriptManager::SkipScript(int id, bool fromRemote) {
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    if (GetOnlineGameFlag() && !fromRemote) {
        CMsgScriptCmd* message = static_cast<CMsgScriptCmd*>(CMessage::CreateMessage("CMsgScriptCmd", true));
        message->command_ = 1;
        message->module_ = -1;
        message->scriptId_ = id;
        GetMessaging()->SendMsg(message);
    }
    DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
    if (m_skipScript == -1) {
        m_skipScript = id;
    }
}
