// Test for batch g1-game-app-global-f216b6-15. Checks the 20 GetNewScriptCmdImplInstance<Script_*>() factories
// defined in this source: each returns a fresh command of its own class with m_cmdId = -1, unk_04 cleared and
// m_args null. The trigger-plate, projectile-trap, door and loot factories also clear their own members (m_triggerPlate,
// m_plate, m_trap, m_door, m_instant). The five factories added by the redo pass (r2a-game-app-global-f216b6-6:
// DeactivateTriggerPlate, DeactivateProjectileTrap, ActivateProjectileTrap, CloseDoor, DropLoot) are included. Exit
// status 0 means every check passed.
//
// This test links only the batch source, so the functions the vtables reference and that other batches
// define (ScriptCmdImpl::Init and Update, and Execute and IsBlocking of each command) are stubbed below.
// The objects are not deleted: the ScriptCmdImpl destructor is defined in another batch.
#include <cstdio>

#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "dh2/Script_ActivateProjectileTrap.hpp"
#include "dh2/Script_ActivateTriggerPlate.hpp"
#include "dh2/Script_AutoEquip.hpp"
#include "dh2/Script_AwardEndGameTrophies.hpp"
#include "dh2/Script_AwardTrophy.hpp"
#include "dh2/Script_ChangeLevel.hpp"
#include "dh2/Script_CloseDoor.hpp"
#include "dh2/Script_DeactivateProjectileTrap.hpp"
#include "dh2/Script_DeactivateTriggerPlate.hpp"
#include "dh2/Script_DropLoot.hpp"
#include "dh2/Script_EndGame.hpp"
#include "dh2/Script_OpenDoor.hpp"
#include "dh2/Script_ReEquipHands.hpp"
#include "dh2/Script_RestartLevel.hpp"
#include "dh2/Script_SetLevelState.hpp"
#include "dh2/Script_SetStatic.hpp"
#include "dh2/Script_SetWorldMapLocationState.hpp"
#include "dh2/Script_SpawnContainer.hpp"
#include "dh2/Script_UnEquipHands.hpp"
#include "dh2/Script_UnEquipItemFromSlot.hpp"

// Test-only stubs. Each one is defined by its own batch in the game build.
void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}

void Script_AwardEndGameTrophies::Execute(bool, int) {}
bool Script_AwardEndGameTrophies::IsBlocking() const { return false; }
void Script_AwardTrophy::Execute(bool, int) {}
bool Script_AwardTrophy::IsBlocking() const { return false; }
void Script_EndGame::Execute(bool, int) {}
bool Script_EndGame::IsBlocking() const { return false; }
void Script_ChangeLevel::Execute(bool, int) {}
bool Script_ChangeLevel::IsBlocking() const { return false; }
void Script_RestartLevel::Execute(bool, int) {}
bool Script_RestartLevel::IsBlocking() const { return false; }
void Script_SetWorldMapLocationState::Execute(bool, int) {}
bool Script_SetWorldMapLocationState::IsBlocking() const { return false; }
void Script_SetLevelState::Execute(bool, int) {}
bool Script_SetLevelState::IsBlocking() const { return false; }
void Script_SpawnContainer::Execute(bool, int) {}
bool Script_SpawnContainer::IsBlocking() const { return false; }
void Script_ActivateTriggerPlate::Execute(bool, int) {}
bool Script_ActivateTriggerPlate::IsBlocking() const { return false; }
void Script_OpenDoor::Execute(bool, int) {}
bool Script_OpenDoor::IsBlocking() const { return false; }
void Script_SetStatic::Execute(bool, int) {}
bool Script_SetStatic::IsBlocking() const { return false; }
void Script_ReEquipHands::Execute(bool, int) {}
bool Script_ReEquipHands::IsBlocking() const { return false; }
void Script_UnEquipHands::Execute(bool, int) {}
bool Script_UnEquipHands::IsBlocking() const { return false; }
void Script_UnEquipItemFromSlot::Execute(bool, int) {}
bool Script_UnEquipItemFromSlot::IsBlocking() const { return false; }
void Script_AutoEquip::Execute(bool, int) {}
bool Script_AutoEquip::IsBlocking() const { return false; }
void Script_DeactivateTriggerPlate::Execute(bool, int) {}
bool Script_DeactivateTriggerPlate::IsBlocking() const { return false; }
void Script_DeactivateProjectileTrap::Execute(bool, int) {}
bool Script_DeactivateProjectileTrap::IsBlocking() const { return false; }
void Script_ActivateProjectileTrap::Execute(bool, int) {}
bool Script_ActivateProjectileTrap::IsBlocking() const { return false; }
void Script_CloseDoor::Execute(bool, int) {}
bool Script_CloseDoor::IsBlocking() const { return false; }
void Script_DropLoot::Execute(bool, int) {}
bool Script_DropLoot::IsBlocking() const { return false; }

namespace {

int g_failures = 0;

void Fail(const char* what) {
    std::printf("FAIL %s\n", what);
    ++g_failures;
}

// The common checks of every factory: the command is of class T, its ScriptCmdImpl fields hold the values the
// original stores, and a second call returns a different object.
template <class T>
T* CheckFactory(const char* name) {
    ScriptCmdImpl* cmd = GetNewScriptCmdImplInstance<T>();
    if (cmd == nullptr) {
        Fail(name);
        return nullptr;
    }
    T* typed = dynamic_cast<T*>(cmd);
    if (typed == nullptr) Fail(name);
    if (cmd->m_cmdId != -1) Fail(name);
    if (cmd->unk_04) Fail(name);
    if (cmd->m_args != nullptr) Fail(name);
    ScriptCmdImpl* again = GetNewScriptCmdImplInstance<T>();
    if (again == cmd) Fail(name);
    return typed;
}

}  // namespace

int main() {
    CheckFactory<Script_AwardEndGameTrophies>("GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>");
    CheckFactory<Script_AwardTrophy>("GetNewScriptCmdImplInstance<Script_AwardTrophy>");
    CheckFactory<Script_EndGame>("GetNewScriptCmdImplInstance<Script_EndGame>");
    CheckFactory<Script_ChangeLevel>("GetNewScriptCmdImplInstance<Script_ChangeLevel>");
    CheckFactory<Script_RestartLevel>("GetNewScriptCmdImplInstance<Script_RestartLevel>");
    CheckFactory<Script_SetWorldMapLocationState>("GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>");
    CheckFactory<Script_SetLevelState>("GetNewScriptCmdImplInstance<Script_SetLevelState>");
    CheckFactory<Script_SpawnContainer>("GetNewScriptCmdImplInstance<Script_SpawnContainer>");
    CheckFactory<Script_SetStatic>("GetNewScriptCmdImplInstance<Script_SetStatic>");
    CheckFactory<Script_ReEquipHands>("GetNewScriptCmdImplInstance<Script_ReEquipHands>");
    CheckFactory<Script_UnEquipHands>("GetNewScriptCmdImplInstance<Script_UnEquipHands>");
    CheckFactory<Script_UnEquipItemFromSlot>("GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>");
    CheckFactory<Script_AutoEquip>("GetNewScriptCmdImplInstance<Script_AutoEquip>");

    // The factories that also clear their own members.
    if (Script_ActivateTriggerPlate* plate =
            CheckFactory<Script_ActivateTriggerPlate>("GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>")) {
        if (plate->m_triggerPlate != nullptr) Fail("Script_ActivateTriggerPlate::m_triggerPlate");
    }
    if (Script_OpenDoor* door = CheckFactory<Script_OpenDoor>("GetNewScriptCmdImplInstance<Script_OpenDoor>")) {
        if (door->m_door != nullptr) Fail("Script_OpenDoor::m_door");
        if (door->m_instant) Fail("Script_OpenDoor::m_instant");
    }
    if (Script_DeactivateTriggerPlate* plate = CheckFactory<Script_DeactivateTriggerPlate>(
            "GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>")) {
        if (plate->m_plate != nullptr) Fail("Script_DeactivateTriggerPlate::m_plate");
    }
    if (Script_DeactivateProjectileTrap* trap = CheckFactory<Script_DeactivateProjectileTrap>(
            "GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>")) {
        if (trap->m_trap != nullptr) Fail("Script_DeactivateProjectileTrap::m_trap");
    }
    if (Script_ActivateProjectileTrap* trap = CheckFactory<Script_ActivateProjectileTrap>(
            "GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>")) {
        if (trap->m_trap != nullptr) Fail("Script_ActivateProjectileTrap::m_trap");
    }
    if (Script_CloseDoor* door = CheckFactory<Script_CloseDoor>("GetNewScriptCmdImplInstance<Script_CloseDoor>")) {
        if (door->m_door != nullptr) Fail("Script_CloseDoor::m_door");
        if (door->m_instant) Fail("Script_CloseDoor::m_instant");
    }
    CheckFactory<Script_DropLoot>("GetNewScriptCmdImplInstance<Script_DropLoot>");

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all factory checks passed\n");
    return 0;
}
