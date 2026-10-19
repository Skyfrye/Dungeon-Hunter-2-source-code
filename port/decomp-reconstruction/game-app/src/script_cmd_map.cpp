// The script command factory tables of ScriptManager::LoadScriptFile (the original's s_scriptCmdImplMap, a file-static of the ScriptManager
// translation unit). They are defined here so that the ScriptManager translation unit does not pull in every Script_* command class.
#include "dh2/global/script_cmd_map.hpp"

#include "dh2/global/GetNewScriptCmdImplInstance.hpp"
#include "pydata-accessors/script_cmd.hpp"

// The original's s_scriptCmdImplMap (ELF 0x968c00, 320 bytes, .data.rel.ro) is one array of 160 function pointers: entries 0..79 are the
// GetNewScriptCmdImplInstance<Script_X> factories and entries 80..159 the GetNewScriptCmdDataInstance<Structs::X> factories of the same
// command, both in ScriptCmdID order (index = ScriptCmdID constant, 0 is ExecScript). Script_EmptyImpl pairs with Structs::NilCmd.
// The two halves are two arrays here.
const ScriptCmdImplFactory s_scriptCmdImplMap[kScriptCmdTypeCount] = {
    &GetNewScriptCmdImplInstance<Script_ExecScript>,  // 0
    &GetNewScriptCmdImplInstance<Script_EnterCutSceneMode>,  // 1
    &GetNewScriptCmdImplInstance<Script_ExitCutSceneMode>,  // 2
    &GetNewScriptCmdImplInstance<Script_CONSOLE>,  // 3
    &GetNewScriptCmdImplInstance<Script_SetCamera>,  // 4
    &GetNewScriptCmdImplInstance<Script_PlayCamera>,  // 5
    &GetNewScriptCmdImplInstance<Script_SetCameraClip>,  // 6
    &GetNewScriptCmdImplInstance<Script_WaitCamera>,  // 7
    &GetNewScriptCmdImplInstance<Script_SetCameraTarget>,  // 8
    &GetNewScriptCmdImplInstance<Script_EmptyImpl>,  // 9
    &GetNewScriptCmdImplInstance<Script_StartDialog>,  // 10
    &GetNewScriptCmdImplInstance<Script_StartDialogID>,  // 11
    &GetNewScriptCmdImplInstance<Script_WaitDialog>,  // 12
    &GetNewScriptCmdImplInstance<Script_PlaySound>,  // 13
    &GetNewScriptCmdImplInstance<Script_StopSound>,  // 14
    &GetNewScriptCmdImplInstance<Script_PlayLevelMusic>,  // 15
    &GetNewScriptCmdImplInstance<Script_EnterSafeZone>,  // 16
    &GetNewScriptCmdImplInstance<Script_LeaveSafeZone>,  // 17
    &GetNewScriptCmdImplInstance<Script_PlayAnimById>,  // 18
    &GetNewScriptCmdImplInstance<Script_PlayAnimByName>,  // 19
    &GetNewScriptCmdImplInstance<Script_PlayEffect>,  // 20
    &GetNewScriptCmdImplInstance<Script_StopEffect>,  // 21
    &GetNewScriptCmdImplInstance<Script_ShowFlash>,  // 22
    &GetNewScriptCmdImplInstance<Script_HideFlash>,  // 23
    &GetNewScriptCmdImplInstance<Script_LockCharacter>,  // 24
    &GetNewScriptCmdImplInstance<Script_UnlockCharacter>,  // 25
    &GetNewScriptCmdImplInstance<Script_Wait>,  // 26
    &GetNewScriptCmdImplInstance<Script_SetFaeryState>,  // 27
    &GetNewScriptCmdImplInstance<Script_IncFaeryLevel>,  // 28
    &GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>,  // 29
    &GetNewScriptCmdImplInstance<Script_SpawnCharacter>,  // 30
    &GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>,  // 31
    &GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>,  // 32
    &GetNewScriptCmdImplInstance<Script_AIEnableTimer>,  // 33
    &GetNewScriptCmdImplInstance<Script_AIResetTimer>,  // 34
    &GetNewScriptCmdImplInstance<Script_AIDoSkill>,  // 35
    &GetNewScriptCmdImplInstance<Script_AISetHP>,  // 36
    &GetNewScriptCmdImplInstance<Script_AIChangeScript>,  // 37
    &GetNewScriptCmdImplInstance<Script_AISetInt>,  // 38
    &GetNewScriptCmdImplInstance<Script_StopActor>,  // 39
    &GetNewScriptCmdImplInstance<Script_MoveActor>,  // 40
    &GetNewScriptCmdImplInstance<Script_LookActor>,  // 41
    &GetNewScriptCmdImplInstance<Script_ShowActor>,  // 42
    &GetNewScriptCmdImplInstance<Script_HideActor>,  // 43
    &GetNewScriptCmdImplInstance<Script_KillActor>,  // 44
    &GetNewScriptCmdImplInstance<Script_PlayActorAnim>,  // 45
    &GetNewScriptCmdImplInstance<Script_SetActorPosition>,  // 46
    &GetNewScriptCmdImplInstance<Script_SetActorMaster>,  // 47
    &GetNewScriptCmdImplInstance<Script_DropLoot>,  // 48
    &GetNewScriptCmdImplInstance<Script_AutoEquip>,  // 49
    &GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>,  // 50
    &GetNewScriptCmdImplInstance<Script_UnEquipHands>,  // 51
    &GetNewScriptCmdImplInstance<Script_ReEquipHands>,  // 52
    &GetNewScriptCmdImplInstance<Script_SetStatic>,  // 53
    &GetNewScriptCmdImplInstance<Script_OpenDoor>,  // 54
    &GetNewScriptCmdImplInstance<Script_CloseDoor>,  // 55
    &GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>,  // 56
    &GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>,  // 57
    &GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>,  // 58
    &GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>,  // 59
    &GetNewScriptCmdImplInstance<Script_SpawnContainer>,  // 60
    &GetNewScriptCmdImplInstance<Script_SetLevelState>,  // 61
    &GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>,  // 62
    &GetNewScriptCmdImplInstance<Script_RestartLevel>,  // 63
    &GetNewScriptCmdImplInstance<Script_ChangeLevel>,  // 64
    &GetNewScriptCmdImplInstance<Script_EndGame>,  // 65
    &GetNewScriptCmdImplInstance<Script_AwardTrophy>,  // 66
    &GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>,  // 67
    &GetNewScriptCmdImplInstance<Script_ShowTrophies>,  // 68
    &GetNewScriptCmdImplInstance<Script_SaveGame>,  // 69
    &GetNewScriptCmdImplInstance<Script_BlockSaveGame>,  // 70
    &GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>,  // 71
    &GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>,  // 72
    &GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>,  // 73
    &GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>,  // 74
    &GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>,  // 75
    &GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>,  // 76
    &GetNewScriptCmdImplInstance<Script_LockTutorial>,  // 77
    &GetNewScriptCmdImplInstance<Script_DoTutorial>,  // 78
    &GetNewScriptCmdImplInstance<Script_FlushMessages>,  // 79
};

const ScriptCmdDataFactory s_scriptCmdDataMap[kScriptCmdTypeCount] = {
    &Structs::GetNewScriptCmdDataInstance<Structs::ExecScript>,  // 0
    &Structs::GetNewScriptCmdDataInstance<Structs::EnterCutSceneMode>,  // 1
    &Structs::GetNewScriptCmdDataInstance<Structs::ExitCutSceneMode>,  // 2
    &Structs::GetNewScriptCmdDataInstance<Structs::CONSOLE>,  // 3
    &Structs::GetNewScriptCmdDataInstance<Structs::SetCamera>,  // 4
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayCamera>,  // 5
    &Structs::GetNewScriptCmdDataInstance<Structs::SetCameraClip>,  // 6
    &Structs::GetNewScriptCmdDataInstance<Structs::WaitCamera>,  // 7
    &Structs::GetNewScriptCmdDataInstance<Structs::SetCameraTarget>,  // 8
    &Structs::GetNewScriptCmdDataInstance<Structs::NilCmd>,  // 9
    &Structs::GetNewScriptCmdDataInstance<Structs::StartDialog>,  // 10
    &Structs::GetNewScriptCmdDataInstance<Structs::StartDialogID>,  // 11
    &Structs::GetNewScriptCmdDataInstance<Structs::WaitDialog>,  // 12
    &Structs::GetNewScriptCmdDataInstance<Structs::PlaySound>,  // 13
    &Structs::GetNewScriptCmdDataInstance<Structs::StopSound>,  // 14
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayLevelMusic>,  // 15
    &Structs::GetNewScriptCmdDataInstance<Structs::EnterSafeZone>,  // 16
    &Structs::GetNewScriptCmdDataInstance<Structs::LeaveSafeZone>,  // 17
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayAnimById>,  // 18
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayAnimByName>,  // 19
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayEffect>,  // 20
    &Structs::GetNewScriptCmdDataInstance<Structs::StopEffect>,  // 21
    &Structs::GetNewScriptCmdDataInstance<Structs::ShowFlash>,  // 22
    &Structs::GetNewScriptCmdDataInstance<Structs::HideFlash>,  // 23
    &Structs::GetNewScriptCmdDataInstance<Structs::LockCharacter>,  // 24
    &Structs::GetNewScriptCmdDataInstance<Structs::UnlockCharacter>,  // 25
    &Structs::GetNewScriptCmdDataInstance<Structs::Wait>,  // 26
    &Structs::GetNewScriptCmdDataInstance<Structs::SetFaeryState>,  // 27
    &Structs::GetNewScriptCmdDataInstance<Structs::IncFaeryLevel>,  // 28
    &Structs::GetNewScriptCmdDataInstance<Structs::PutCharacterInLimbus>,  // 29
    &Structs::GetNewScriptCmdDataInstance<Structs::SpawnCharacter>,  // 30
    &Structs::GetNewScriptCmdDataInstance<Structs::PutCharacterInIdle>,  // 31
    &Structs::GetNewScriptCmdDataInstance<Structs::MarkCharacterAsScripted>,  // 32
    &Structs::GetNewScriptCmdDataInstance<Structs::AIEnableTimer>,  // 33
    &Structs::GetNewScriptCmdDataInstance<Structs::AIResetTimer>,  // 34
    &Structs::GetNewScriptCmdDataInstance<Structs::AIDoSkill>,  // 35
    &Structs::GetNewScriptCmdDataInstance<Structs::AISetHP>,  // 36
    &Structs::GetNewScriptCmdDataInstance<Structs::AIChangeScript>,  // 37
    &Structs::GetNewScriptCmdDataInstance<Structs::AISetInt>,  // 38
    &Structs::GetNewScriptCmdDataInstance<Structs::StopActor>,  // 39
    &Structs::GetNewScriptCmdDataInstance<Structs::MoveActor>,  // 40
    &Structs::GetNewScriptCmdDataInstance<Structs::LookActor>,  // 41
    &Structs::GetNewScriptCmdDataInstance<Structs::ShowActor>,  // 42
    &Structs::GetNewScriptCmdDataInstance<Structs::HideActor>,  // 43
    &Structs::GetNewScriptCmdDataInstance<Structs::KillActor>,  // 44
    &Structs::GetNewScriptCmdDataInstance<Structs::PlayActorAnim>,  // 45
    &Structs::GetNewScriptCmdDataInstance<Structs::SetActorPosition>,  // 46
    &Structs::GetNewScriptCmdDataInstance<Structs::SetActorMaster>,  // 47
    &Structs::GetNewScriptCmdDataInstance<Structs::DropLoot>,  // 48
    &Structs::GetNewScriptCmdDataInstance<Structs::AutoEquip>,  // 49
    &Structs::GetNewScriptCmdDataInstance<Structs::UnEquipItemFromSlot>,  // 50
    &Structs::GetNewScriptCmdDataInstance<Structs::UnEquipHands>,  // 51
    &Structs::GetNewScriptCmdDataInstance<Structs::ReEquipHands>,  // 52
    &Structs::GetNewScriptCmdDataInstance<Structs::SetStatic>,  // 53
    &Structs::GetNewScriptCmdDataInstance<Structs::OpenDoor>,  // 54
    &Structs::GetNewScriptCmdDataInstance<Structs::CloseDoor>,  // 55
    &Structs::GetNewScriptCmdDataInstance<Structs::ActivateProjectileTrap>,  // 56
    &Structs::GetNewScriptCmdDataInstance<Structs::DeactivateProjectileTrap>,  // 57
    &Structs::GetNewScriptCmdDataInstance<Structs::ActivateTriggerPlate>,  // 58
    &Structs::GetNewScriptCmdDataInstance<Structs::DeactivateTriggerPlate>,  // 59
    &Structs::GetNewScriptCmdDataInstance<Structs::SpawnContainer>,  // 60
    &Structs::GetNewScriptCmdDataInstance<Structs::SetLevelState>,  // 61
    &Structs::GetNewScriptCmdDataInstance<Structs::SetWorldMapLocationState>,  // 62
    &Structs::GetNewScriptCmdDataInstance<Structs::RestartLevel>,  // 63
    &Structs::GetNewScriptCmdDataInstance<Structs::ChangeLevel>,  // 64
    &Structs::GetNewScriptCmdDataInstance<Structs::EndGame>,  // 65
    &Structs::GetNewScriptCmdDataInstance<Structs::AwardTrophy>,  // 66
    &Structs::GetNewScriptCmdDataInstance<Structs::AwardEndGameTrophies>,  // 67
    &Structs::GetNewScriptCmdDataInstance<Structs::ShowTrophies>,  // 68
    &Structs::GetNewScriptCmdDataInstance<Structs::SaveGame>,  // 69
    &Structs::GetNewScriptCmdDataInstance<Structs::BlockSaveGame>,  // 70
    &Structs::GetNewScriptCmdDataInstance<Structs::EnqueueTutorialMessage>,  // 71
    &Structs::GetNewScriptCmdDataInstance<Structs::SkipTutorialMessage>,  // 72
    &Structs::GetNewScriptCmdDataInstance<Structs::SkipAllTutorialMessages>,  // 73
    &Structs::GetNewScriptCmdDataInstance<Structs::EnqueueCharMenuTutorialMessage>,  // 74
    &Structs::GetNewScriptCmdDataInstance<Structs::SkipCharMenuTutorialMessage>,  // 75
    &Structs::GetNewScriptCmdDataInstance<Structs::SkipAllCharMenuTutorialMessages>,  // 76
    &Structs::GetNewScriptCmdDataInstance<Structs::LockTutorial>,  // 77
    &Structs::GetNewScriptCmdDataInstance<Structs::DoTutorial>,  // 78
    &Structs::GetNewScriptCmdDataInstance<Structs::FlushMessages>,  // 79
};

