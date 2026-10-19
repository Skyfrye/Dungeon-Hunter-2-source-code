// Free <global> factories GetNewScriptCmdImplInstance<T>() for the script command classes (batch
// g1-game-app-global-f216b6-16 and its sibling batches). Each allocates one Script_<Name> command, sets
// the ScriptCmdImpl fields and returns it as a ScriptCmdImpl*. The primary template is declared but not
// defined; every instance is an explicit specialization, declared here so that callers never fall back to
// an implicit instantiation. The classes are forward-declared on purpose: a caller that needs a command's
// members includes its Script_<Name>.hpp.
#pragma once

class ScriptCmdImpl;
class Script_SetActorMaster;
class Script_SetActorPosition;
class Script_KillActor;
class Script_HideActor;
class Script_ShowActor;
class Script_LookActor;
class Script_MoveActor;
class Script_StopActor;
class Script_AISetInt;
class Script_AIChangeScript;
class Script_AISetHP;
class Script_AIDoSkill;
class Script_AIResetTimer;
class Script_AIEnableTimer;
class Script_MarkCharacterAsScripted;
class Script_PutCharacterInIdle;
class Script_SpawnCharacter;
class Script_PutCharacterInLimbus;
class Script_IncFaeryLevel;
class Script_SetFaeryState;
class Script_FlushMessages;
class Script_DoTutorial;
class Script_LockTutorial;
class Script_SkipAllCharMenuTutorialMessages;
class Script_SkipCharMenuTutorialMessage;
class Script_EnqueueCharMenuTutorialMessage;
class Script_SkipAllTutorialMessages;
class Script_SkipTutorialMessage;
class Script_EnqueueTutorialMessage;
class Script_BlockSaveGame;
class Script_SaveGame;
class Script_ShowTrophies;
class Script_SetCameraClip;
class Script_PlayCamera;
class Script_SetCamera;
class Script_CONSOLE;
class Script_ExitCutSceneMode;
class Script_EnterCutSceneMode;
class Script_ExecScript;
class Script_PlayActorAnim;
class Script_Wait;
class Script_UnlockCharacter;
class Script_LockCharacter;
class Script_HideFlash;
class Script_ShowFlash;
class Script_StopEffect;
class Script_PlayEffect;
class Script_PlayAnimByName;
class Script_PlayAnimById;
class Script_LeaveSafeZone;
class Script_EnterSafeZone;
class Script_PlayLevelMusic;
class Script_StopSound;
class Script_PlaySound;
class Script_WaitDialog;
class Script_StartDialogID;
class Script_StartDialog;
class Script_EmptyImpl;
class Script_SetCameraTarget;
class Script_WaitCamera;
class Script_AwardEndGameTrophies;
class Script_AwardTrophy;
class Script_EndGame;
class Script_ChangeLevel;
class Script_RestartLevel;
class Script_SetWorldMapLocationState;
class Script_SetLevelState;
class Script_SpawnContainer;
class Script_DeactivateTriggerPlate;
class Script_ActivateTriggerPlate;
class Script_DeactivateProjectileTrap;
class Script_ActivateProjectileTrap;
class Script_CloseDoor;
class Script_OpenDoor;
class Script_SetStatic;
class Script_ReEquipHands;
class Script_UnEquipHands;
class Script_UnEquipItemFromSlot;
class Script_AutoEquip;
class Script_DropLoot;

template <class T>
ScriptCmdImpl* GetNewScriptCmdImplInstance();

template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorMaster>();              // 0x458034
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetActorPosition>();            // 0x45807c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_KillActor>();                   // 0x4580c4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideActor>();                   // 0x45810c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowActor>();                   // 0x458154
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LookActor>();                   // 0x45819c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MoveActor>();                   // 0x4581e4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopActor>();                   // 0x458238
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetInt>();                    // 0x458280
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIChangeScript>();              // 0x4582c8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AISetHP>();                     // 0x458310
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIDoSkill>();                   // 0x458358
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIResetTimer>();                // 0x4583a0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AIEnableTimer>();               // 0x4583e8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_MarkCharacterAsScripted>();     // 0x458430
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInIdle>();          // 0x458478
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnCharacter>();              // 0x4584c0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PutCharacterInLimbus>();        // 0x458508
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_IncFaeryLevel>();               // 0x458550
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetFaeryState>();               // 0x458598
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_FlushMessages>();               // 0x457714
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DoTutorial>();                  // 0x45775c, partial (stub)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockTutorial>();                // 0x4577a4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllCharMenuTutorialMessages>();  // 0x4577ec
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipCharMenuTutorialMessage>(); // 0x457834
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueCharMenuTutorialMessage>(); // 0x45787c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipAllTutorialMessages>();     // 0x4578c4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SkipTutorialMessage>();         // 0x45790c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnqueueTutorialMessage>();      // 0x457954
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_BlockSaveGame>();               // 0x45799c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SaveGame>();                    // 0x4579e4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowTrophies>();                // 0x457a2c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardEndGameTrophies>();        // 0x457a74
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AwardTrophy>();                 // 0x457abc
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EndGame>();                     // 0x457b04
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ChangeLevel>();                 // 0x457b4c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_RestartLevel>();                // 0x457b94
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetWorldMapLocationState>();    // 0x457bdc
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetLevelState>();               // 0x457c24
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SpawnContainer>();              // 0x457c6c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateTriggerPlate>();      // 0x457cb4, partial (header does not compile)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateTriggerPlate>();        // 0x457d00
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DeactivateProjectileTrap>();    // 0x457d4c, partial (header absent)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ActivateProjectileTrap>();      // 0x457d98, partial (header absent)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_CloseDoor>();                   // 0x457de4, partial (header does not compile)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_OpenDoor>();                    // 0x457e34
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetStatic>();                   // 0x457e84
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ReEquipHands>();                // 0x457ecc
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipHands>();                // 0x457f14
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnEquipItemFromSlot>();         // 0x457f5c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_AutoEquip>();                   // 0x457fa4
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_DropLoot>();                    // 0x457fec, partial (header does not compile)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetCameraClip>();               // 0x458b90
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayCamera>();                  // 0x458bd8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetCamera>();                   // 0x458c20
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_CONSOLE>();                     // 0x458c68
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ExitCutSceneMode>();            // 0x458cb0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnterCutSceneMode>();           // 0x458cf8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ExecScript>();                  // 0x458d40
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayActorAnim>();               // 0x4595c8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_Wait>();                        // 0x4585e0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_UnlockCharacter>();             // 0x458630
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LockCharacter>();               // 0x458678
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_HideFlash>();                   // 0x4586c0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_ShowFlash>();                   // 0x45870c
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopEffect>();                  // 0x458758
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayEffect>();                  // 0x4587a0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimByName>();              // 0x4587e8
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayAnimById>();                // 0x458830
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_LeaveSafeZone>();               // 0x458878
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EnterSafeZone>();               // 0x4588c0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlayLevelMusic>();              // 0x458908
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StopSound>();                   // 0x458950
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_PlaySound>();                   // 0x458998
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitDialog>();                  // 0x4589e0
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialogID>();               // 0x458a28
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_StartDialog>();                 // 0x458a70
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_EmptyImpl>();                   // 0x458ab8, partial (stub)
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_SetCameraTarget>();             // 0x458b00
template <>
ScriptCmdImpl* GetNewScriptCmdImplInstance<Script_WaitCamera>();                  // 0x458b48
