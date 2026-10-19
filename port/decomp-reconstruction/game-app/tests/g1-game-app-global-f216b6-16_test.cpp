// Test for batch g1-game-app-global-f216b6-16. Checks the 20 GetNewScriptCmdImplInstance<Script_*>() factories:
// each returns a fresh command of its own class with m_cmdId = -1, unk_04 cleared and m_args null, and
// Script_MoveActor also has its three extra members cleared. Exit status 0 means every check passed.
//
// This test links only the batch source, so the functions the vtables reference and that other batches
// define (ScriptCmdImpl::Init and Update, and Execute and IsBlocking of each command) are stubbed below.
// The objects are not deleted: the ScriptCmdImpl destructor is defined in another batch.
#include <cstdio>

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/Script_AIChangeScript.hpp"
#include "dh2/Script_AIDoSkill.hpp"
#include "dh2/Script_AIEnableTimer.hpp"
#include "dh2/Script_AIResetTimer.hpp"
#include "dh2/Script_AISetHP.hpp"
#include "dh2/Script_AISetInt.hpp"
#include "dh2/Script_HideActor.hpp"
#include "dh2/Script_IncFaeryLevel.hpp"
#include "dh2/Script_KillActor.hpp"
#include "dh2/Script_LookActor.hpp"
#include "dh2/Script_MarkCharacterAsScripted.hpp"
#include "dh2/Script_MoveActor.hpp"
#include "dh2/Script_PutCharacterInIdle.hpp"
#include "dh2/Script_PutCharacterInLimbus.hpp"
#include "dh2/Script_SetActorMaster.hpp"
#include "dh2/Script_SetActorPosition.hpp"
#include "dh2/Script_SetFaeryState.hpp"
#include "dh2/Script_ShowActor.hpp"
#include "dh2/Script_SpawnCharacter.hpp"
#include "dh2/Script_StopActor.hpp"

// Test-only stubs. Each one is defined by its own batch in the game build.
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

void Script_SetActorMaster::Execute(bool, int) {}
bool Script_SetActorMaster::IsBlocking() const { return false; }
void Script_SetActorPosition::Execute(bool, int) {}
bool Script_SetActorPosition::IsBlocking() const { return false; }
void Script_KillActor::Execute(bool, int) {}
bool Script_KillActor::IsBlocking() const { return false; }
void Script_HideActor::Execute(bool, int) {}
bool Script_HideActor::IsBlocking() const { return false; }
void Script_ShowActor::Execute(bool, int) {}
bool Script_ShowActor::IsBlocking() const { return false; }
void Script_LookActor::Execute(bool, int) {}
bool Script_LookActor::IsBlocking() const { return false; }
void Script_MoveActor::Execute(bool, int) {}
bool Script_MoveActor::IsBlocking() const { return false; }
void Script_StopActor::Execute(bool, int) {}
bool Script_StopActor::IsBlocking() const { return false; }
void Script_AISetInt::Execute(bool, int) {}
bool Script_AISetInt::IsBlocking() const { return false; }
void Script_AIChangeScript::Execute(bool, int) {}
bool Script_AIChangeScript::IsBlocking() const { return false; }
void Script_AISetHP::Execute(bool, int) {}
bool Script_AISetHP::IsBlocking() const { return false; }
void Script_AIDoSkill::Execute(bool, int) {}
bool Script_AIDoSkill::IsBlocking() const { return false; }
void Script_AIResetTimer::Execute(bool, int) {}
bool Script_AIResetTimer::IsBlocking() const { return false; }
void Script_AIEnableTimer::Execute(bool, int) {}
bool Script_AIEnableTimer::IsBlocking() const { return false; }
void Script_MarkCharacterAsScripted::Execute(bool, int) {}
bool Script_MarkCharacterAsScripted::IsBlocking() const { return false; }
void Script_PutCharacterInIdle::Execute(bool, int) {}
bool Script_PutCharacterInIdle::IsBlocking() const { return false; }
void Script_SpawnCharacter::Execute(bool, int) {}
bool Script_SpawnCharacter::IsBlocking() const { return false; }
void Script_PutCharacterInLimbus::Execute(bool, int) {}
bool Script_PutCharacterInLimbus::IsBlocking() const { return false; }
void Script_IncFaeryLevel::Execute(bool, int) {}
bool Script_IncFaeryLevel::IsBlocking() const { return false; }
void Script_SetFaeryState::Execute(bool, int) {}
bool Script_SetFaeryState::IsBlocking() const { return false; }

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
void CheckFactory(ScriptCmdImpl* cmd, const char* name) {
    Check(cmd != nullptr, name, "returned null");
    if (cmd == nullptr) {
        return;
    }
    Check(dynamic_cast<T*>(cmd) != nullptr, name, "wrong dynamic type");
    Check(cmd->m_cmdId == -1, name, "m_cmdId is not -1");
    Check(!cmd->unk_04, name, "unk_04 is not cleared");
    Check(cmd->m_args == nullptr, name, "m_args is not null");
}

void TestSimpleFactories() {
    CheckFactory<Script_SetActorMaster>(GetNewScriptCmdImplInstance<Script_SetActorMaster>(), "Script_SetActorMaster");
    CheckFactory<Script_SetActorPosition>(GetNewScriptCmdImplInstance<Script_SetActorPosition>(), "Script_SetActorPosition");
    CheckFactory<Script_KillActor>(GetNewScriptCmdImplInstance<Script_KillActor>(), "Script_KillActor");
    CheckFactory<Script_HideActor>(GetNewScriptCmdImplInstance<Script_HideActor>(), "Script_HideActor");
    CheckFactory<Script_ShowActor>(GetNewScriptCmdImplInstance<Script_ShowActor>(), "Script_ShowActor");
    CheckFactory<Script_LookActor>(GetNewScriptCmdImplInstance<Script_LookActor>(), "Script_LookActor");
    CheckFactory<Script_StopActor>(GetNewScriptCmdImplInstance<Script_StopActor>(), "Script_StopActor");
    CheckFactory<Script_AISetInt>(GetNewScriptCmdImplInstance<Script_AISetInt>(), "Script_AISetInt");
    CheckFactory<Script_AIChangeScript>(GetNewScriptCmdImplInstance<Script_AIChangeScript>(), "Script_AIChangeScript");
    CheckFactory<Script_AISetHP>(GetNewScriptCmdImplInstance<Script_AISetHP>(), "Script_AISetHP");
    CheckFactory<Script_AIDoSkill>(GetNewScriptCmdImplInstance<Script_AIDoSkill>(), "Script_AIDoSkill");
    CheckFactory<Script_AIResetTimer>(GetNewScriptCmdImplInstance<Script_AIResetTimer>(), "Script_AIResetTimer");
    CheckFactory<Script_AIEnableTimer>(GetNewScriptCmdImplInstance<Script_AIEnableTimer>(), "Script_AIEnableTimer");
    CheckFactory<Script_MarkCharacterAsScripted>(GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>(),
                                                 "Script_MarkCharacterAsScripted");
    CheckFactory<Script_PutCharacterInIdle>(GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>(),
                                            "Script_PutCharacterInIdle");
    CheckFactory<Script_SpawnCharacter>(GetNewScriptCmdImplInstance<Script_SpawnCharacter>(), "Script_SpawnCharacter");
    CheckFactory<Script_PutCharacterInLimbus>(GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>(),
                                              "Script_PutCharacterInLimbus");
    CheckFactory<Script_IncFaeryLevel>(GetNewScriptCmdImplInstance<Script_IncFaeryLevel>(), "Script_IncFaeryLevel");
    CheckFactory<Script_SetFaeryState>(GetNewScriptCmdImplInstance<Script_SetFaeryState>(), "Script_SetFaeryState");
}

void TestMoveActorFactory() {
    ScriptCmdImpl* base = GetNewScriptCmdImplInstance<Script_MoveActor>();
    CheckFactory<Script_MoveActor>(base, "Script_MoveActor");
    if (base == nullptr) {
        return;
    }
    auto* move = static_cast<Script_MoveActor*>(base);
    Check(!move->unk_10, "Script_MoveActor", "unk_10 is not cleared");
    Check(move->m_actor == nullptr, "Script_MoveActor", "m_actor is not null");
    Check(move->m_wasStatic == 0, "Script_MoveActor", "m_wasStatic is not cleared");
}

void TestFreshObjects() {
    ScriptCmdImpl* a = GetNewScriptCmdImplInstance<Script_SetActorMaster>();
    ScriptCmdImpl* b = GetNewScriptCmdImplInstance<Script_SetActorMaster>();
    Check(a != nullptr && b != nullptr && a != b, "Script_SetActorMaster", "two calls return the same object");
}

}  // namespace

int main() {
    TestSimpleFactories();
    TestMoveActorFactory();
    TestFreshObjects();
    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-16 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-global-f216b6-16 test: %d check(s) failed\n", g_failures);
    return 1;
}
