// Test for batch g1-game-app-global-f216b6-17. Checks the GetNewScriptCmdImplInstance<Script_*>() factories:
// each returns a fresh command of its own class with unk_04 cleared, m_cmdId = -1 and m_args null, and the
// class members that the original factories clear (Script_Wait: m_elapsed and m_duration; Script_HideFlash and
// Script_ShowFlash: m_menu). Script_EmptyImpl is covered too (redo pass r2a-game-app-global-f216b6-6).
// Exit status 0 means every check passed.
//
// This test links only the batch source, so the functions the vtables reference and that other batches define
// (ScriptCmdImpl::Init and Update, and the Init, Update, Execute and IsBlocking of each command) are stubbed
// below. The objects are not deleted: the ScriptCmdImpl destructor is defined in another batch.
#include <cstdio>

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/Script_EmptyImpl.hpp"
#include "dh2/Script_EnterSafeZone.hpp"
#include "dh2/Script_HideFlash.hpp"
#include "dh2/Script_LeaveSafeZone.hpp"
#include "dh2/Script_LockCharacter.hpp"
#include "dh2/Script_PlayAnimById.hpp"
#include "dh2/Script_PlayAnimByName.hpp"
#include "dh2/Script_PlayEffect.hpp"
#include "dh2/Script_PlayLevelMusic.hpp"
#include "dh2/Script_PlaySound.hpp"
#include "dh2/Script_SetCameraTarget.hpp"
#include "dh2/Script_ShowFlash.hpp"
#include "dh2/Script_StartDialog.hpp"
#include "dh2/Script_StartDialogID.hpp"
#include "dh2/Script_StopEffect.hpp"
#include "dh2/Script_StopSound.hpp"
#include "dh2/Script_UnlockCharacter.hpp"
#include "dh2/Script_Wait.hpp"
#include "dh2/Script_WaitCamera.hpp"
#include "dh2/Script_WaitDialog.hpp"

// Test-only link stubs. Each one is defined by its own Script_* batch in the game build.
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

void Script_Wait::Update() {}
void Script_EmptyImpl::Execute(bool, int) {}
bool Script_EmptyImpl::IsBlocking() const { return false; }
void Script_Wait::Execute(bool, int) {}
bool Script_Wait::IsBlocking() const { return false; }
void Script_UnlockCharacter::Execute(bool, int) {}
bool Script_UnlockCharacter::IsBlocking() const { return false; }
void Script_LockCharacter::Execute(bool, int) {}
bool Script_LockCharacter::IsBlocking() const { return false; }
void Script_HideFlash::Init() {}
void Script_HideFlash::Execute(bool, int) {}
bool Script_HideFlash::IsBlocking() const { return false; }
void Script_ShowFlash::Init() {}
void Script_ShowFlash::Execute(bool, int) {}
bool Script_ShowFlash::IsBlocking() const { return false; }
void Script_StopEffect::Execute(bool, int) {}
bool Script_StopEffect::IsBlocking() const { return false; }
void Script_PlayEffect::Init() {}
void Script_PlayEffect::Execute(bool, int) {}
bool Script_PlayEffect::IsBlocking() const { return false; }
void Script_PlayAnimByName::Execute(bool, int) {}
bool Script_PlayAnimByName::IsBlocking() const { return false; }
void Script_PlayAnimById::Execute(bool, int) {}
bool Script_PlayAnimById::IsBlocking() const { return false; }
void Script_LeaveSafeZone::Execute(bool, int) {}
bool Script_LeaveSafeZone::IsBlocking() const { return false; }
void Script_EnterSafeZone::Execute(bool, int) {}
bool Script_EnterSafeZone::IsBlocking() const { return false; }
void Script_PlayLevelMusic::Execute(bool, int) {}
bool Script_PlayLevelMusic::IsBlocking() const { return false; }
void Script_StopSound::Execute(bool, int) {}
bool Script_StopSound::IsBlocking() const { return false; }
void Script_PlaySound::Execute(bool, int) {}
bool Script_PlaySound::IsBlocking() const { return false; }
void Script_WaitDialog::Execute(bool, int) {}
bool Script_WaitDialog::IsBlocking() const { return false; }
void Script_StartDialogID::Execute(bool, int) {}
bool Script_StartDialogID::IsBlocking() const { return false; }
void Script_StartDialog::Init() {}
void Script_StartDialog::Execute(bool, int) {}
bool Script_StartDialog::IsBlocking() const { return false; }
void Script_SetCameraTarget::Execute(bool, int) {}
bool Script_SetCameraTarget::IsBlocking() const { return false; }
void Script_WaitCamera::Execute(bool, int) {}
bool Script_WaitCamera::IsBlocking() const { return false; }

namespace {

int g_failures = 0;

void Check(bool ok, const char* name, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s: %s\n", name, what);
        ++g_failures;
    }
}

// Checks what every factory sets on the ScriptCmdImpl base and returns the command as its own class.
template <class T>
T* CheckCommon(const char* name) {
    T* cmd = dynamic_cast<T*>(GetNewScriptCmdImplInstance<T>());
    Check(cmd != nullptr, name, "returns a command of its own class");
    if (cmd == nullptr) {
        return nullptr;
    }
    Check(!cmd->unk_04, name, "unk_04 is cleared");
    Check(cmd->m_cmdId == -1, name, "m_cmdId is -1");
    Check(cmd->m_args == nullptr, name, "m_args is null");
    return cmd;
}

void CheckSimple() {
    CheckCommon<Script_EmptyImpl>("Script_EmptyImpl");
    CheckCommon<Script_UnlockCharacter>("Script_UnlockCharacter");
    CheckCommon<Script_LockCharacter>("Script_LockCharacter");
    CheckCommon<Script_StopEffect>("Script_StopEffect");
    CheckCommon<Script_PlayEffect>("Script_PlayEffect");
    CheckCommon<Script_PlayAnimByName>("Script_PlayAnimByName");
    CheckCommon<Script_PlayAnimById>("Script_PlayAnimById");
    CheckCommon<Script_LeaveSafeZone>("Script_LeaveSafeZone");
    CheckCommon<Script_EnterSafeZone>("Script_EnterSafeZone");
    CheckCommon<Script_PlayLevelMusic>("Script_PlayLevelMusic");
    CheckCommon<Script_StopSound>("Script_StopSound");
    CheckCommon<Script_PlaySound>("Script_PlaySound");
    CheckCommon<Script_WaitDialog>("Script_WaitDialog");
    CheckCommon<Script_StartDialogID>("Script_StartDialogID");
    CheckCommon<Script_StartDialog>("Script_StartDialog");
    CheckCommon<Script_SetCameraTarget>("Script_SetCameraTarget");
    CheckCommon<Script_WaitCamera>("Script_WaitCamera");
}

void CheckWait() {
    Script_Wait* cmd = CheckCommon<Script_Wait>("Script_Wait");
    if (cmd != nullptr) {
        Check(cmd->m_elapsed == 0, "Script_Wait", "m_elapsed starts at 0");
        Check(cmd->m_duration == 0, "Script_Wait", "m_duration starts at 0");
    }
}

void CheckFlash() {
    Script_HideFlash* hide = CheckCommon<Script_HideFlash>("Script_HideFlash");
    if (hide != nullptr) {
        Check(hide->m_menu == nullptr, "Script_HideFlash", "m_menu starts null");
    }
    Script_ShowFlash* show = CheckCommon<Script_ShowFlash>("Script_ShowFlash");
    if (show != nullptr) {
        Check(show->m_menu == nullptr, "Script_ShowFlash", "m_menu starts null");
    }
}

}  // namespace

int main() {
    CheckSimple();
    CheckWait();
    CheckFlash();

    // Each call allocates a new command; the factory does not return a shared instance.
    Check(GetNewScriptCmdImplInstance<Script_Wait>() != GetNewScriptCmdImplInstance<Script_Wait>(), "Script_Wait",
          "each call returns a fresh command");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-17: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
