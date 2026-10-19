// Test for batch g1-game-app-global-f216b6-14. Checks the twelve reconstructed GetNewScriptCmdImplInstance<Script_*>()
// factories: each returns a fresh command of its own class with m_cmdId = -1, unk_04 cleared and m_args null.
// GetNewScriptCmdImplInstance<Script_DoTutorial>() is included (redo pass r2a-game-app-global-f216b6-6). The eight
// gameswf natives of this batch are PARTIAL with empty bodies and are not linked here. Exit status 0 means every
// check passed.
//
// This test links only the batch source, so the functions the vtables reference and that other batches define
// (ScriptCmdImpl::Init and Update, and Execute and IsBlocking of each command) are stubbed below. The objects are not
// deleted: the ScriptCmdImpl destructor is defined in another batch.
#include <cstdio>

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/Script_BlockSaveGame.hpp"
#include "dh2/Script_DoTutorial.hpp"
#include "dh2/Script_EnqueueCharMenuTutorialMessage.hpp"
#include "dh2/Script_EnqueueTutorialMessage.hpp"
#include "dh2/Script_FlushMessages.hpp"
#include "dh2/Script_LockTutorial.hpp"
#include "dh2/Script_SaveGame.hpp"
#include "dh2/Script_ShowTrophies.hpp"
#include "dh2/Script_SkipAllCharMenuTutorialMessages.hpp"
#include "dh2/Script_SkipAllTutorialMessages.hpp"
#include "dh2/Script_SkipCharMenuTutorialMessage.hpp"
#include "dh2/Script_SkipTutorialMessage.hpp"

// Test-only link stubs. The original bodies of these are in other batches. Init and Update are empty in the original
// (0x455628 and 0x45562c). The test never calls Execute or IsBlocking, so their return values are not meaningful here.
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

void Script_DoTutorial::Execute(bool, int) {}
bool Script_DoTutorial::IsBlocking() const { return false; }
void Script_FlushMessages::Execute(bool, int) {}
bool Script_FlushMessages::IsBlocking() const { return false; }
void Script_LockTutorial::Execute(bool, int) {}
bool Script_LockTutorial::IsBlocking() const { return false; }
void Script_SkipAllCharMenuTutorialMessages::Execute(bool, int) {}
bool Script_SkipAllCharMenuTutorialMessages::IsBlocking() const { return false; }
void Script_SkipCharMenuTutorialMessage::Execute(bool, int) {}
bool Script_SkipCharMenuTutorialMessage::IsBlocking() const { return false; }
void Script_EnqueueCharMenuTutorialMessage::Execute(bool, int) {}
bool Script_EnqueueCharMenuTutorialMessage::IsBlocking() const { return false; }
void Script_SkipAllTutorialMessages::Execute(bool, int) {}
bool Script_SkipAllTutorialMessages::IsBlocking() const { return false; }
void Script_SkipTutorialMessage::Execute(bool, int) {}
bool Script_SkipTutorialMessage::IsBlocking() const { return false; }
void Script_EnqueueTutorialMessage::Execute(bool, int) {}
bool Script_EnqueueTutorialMessage::IsBlocking() const { return false; }
void Script_BlockSaveGame::Execute(bool, int) {}
bool Script_BlockSaveGame::IsBlocking() const { return false; }
void Script_SaveGame::Execute(bool, int) {}
bool Script_SaveGame::IsBlocking() const { return false; }
void Script_ShowTrophies::Execute(bool, int) {}
bool Script_ShowTrophies::IsBlocking() const { return false; }

namespace {

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// Checks the fields every factory sets and that the command is of class T.
template <class T>
void CheckFactory(const char* name) {
    ScriptCmdImpl* cmd = GetNewScriptCmdImplInstance<T>();
    Check(cmd != nullptr, name, "returned null");
    if (cmd == nullptr) {
        return;
    }
    Check(dynamic_cast<T*>(cmd) != nullptr, name, "wrong dynamic type");
    Check(cmd->m_cmdId == -1, name, "m_cmdId is not -1");
    Check(!cmd->unk_04, name, "unk_04 is not cleared");
    Check(cmd->m_args == nullptr, name, "m_args is not null");
}

}  // namespace

int main() {
    CheckFactory<Script_DoTutorial>("Script_DoTutorial");
    CheckFactory<Script_FlushMessages>("Script_FlushMessages");
    CheckFactory<Script_LockTutorial>("Script_LockTutorial");
    CheckFactory<Script_SkipAllCharMenuTutorialMessages>("Script_SkipAllCharMenuTutorialMessages");
    CheckFactory<Script_SkipCharMenuTutorialMessage>("Script_SkipCharMenuTutorialMessage");
    CheckFactory<Script_EnqueueCharMenuTutorialMessage>("Script_EnqueueCharMenuTutorialMessage");
    CheckFactory<Script_SkipAllTutorialMessages>("Script_SkipAllTutorialMessages");
    CheckFactory<Script_SkipTutorialMessage>("Script_SkipTutorialMessage");
    CheckFactory<Script_EnqueueTutorialMessage>("Script_EnqueueTutorialMessage");
    CheckFactory<Script_BlockSaveGame>("Script_BlockSaveGame");
    CheckFactory<Script_SaveGame>("Script_SaveGame");
    CheckFactory<Script_ShowTrophies>("Script_ShowTrophies");

    // Each call allocates a new object: two factory results never alias.
    ScriptCmdImpl* a = GetNewScriptCmdImplInstance<Script_SaveGame>();
    ScriptCmdImpl* b = GetNewScriptCmdImplInstance<Script_SaveGame>();
    Check(a != nullptr && b != nullptr && a != b, "Script_SaveGame", "two calls return the same object");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-14: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
