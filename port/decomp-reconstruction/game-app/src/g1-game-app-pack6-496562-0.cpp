// Batch g1-game-app-pack6-496562-0 (game-app, nine script command classes): the IsBlocking and Execute bodies of
// Script_EndGame, Script_EnqueueCharMenuTutorialMessage, Script_EnqueueTutorialMessage, Script_EnterCutSceneMode,
// Script_EnterSafeZone, Script_ExecScript, Script_ExitCutSceneMode, Script_FlushMessages and Script_HideActor
// (ELF 0x455638 .. 0x460b1c).
//
// Facts shared by the commands:
//   - Each Execute reads its argument record from ScriptCmdImpl::m_args (+0x0c). The record is the pydata-accessors
//     Structs::<Name> of the command (pydata-accessors/script_cmd.hpp), whose member m_wN is the word at 4*N.
//   - Four Executes read the tracing switch first: DebugSwitches::load(), then GetSwitch("isTracingScriptCmd") with the
//     result discarded (Script_EndGame, Script_EnterSafeZone, Script_ExecScript, Script_HideActor). The other five do not.
//     TraceScriptCmdSwitch below does what the original does.
//   - The named lookup is ObjectManager::GetObjectByName(name, module, false, nullptr) on the global manager, which is
//     Application::m_objectManager (+0x38, the global dword_99F764).
//   - The message queues are m_queues[0] of Singleton<MenuMessageManager<T, N>>::s_inst. The asm loads each singleton
//     pointer through the GOT and reads its deque at +4 (begin) and +0x14 (finish).
//
// Every command in this batch is complete. The queue commands use the singletons MenuMessageManager<T, N>::s_inst, the cut-scene
// commands use ScriptManager::m_inCutScene (byte_9A600C) and the HUD root callbacks, the player loops use
// PlayerManager::m_numCharacters (+0x6c4) with PlayerInfo::IsLocal (CNetPlayerInfo slot +0x50) and Character::SetVisible (+0x40).

#include <deque>
#include <string>

#include "pydata-accessors/script_cmd.hpp"

#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/Character.hpp"
#include "dh2/GSEndGame.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/OnlineStatusMsg.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StatusMsg.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/Script_EndGame.hpp"
#include "dh2/Script_EnqueueCharMenuTutorialMessage.hpp"
#include "dh2/Script_EnqueueTutorialMessage.hpp"
#include "dh2/Script_EnterCutSceneMode.hpp"
#include "dh2/Script_EnterSafeZone.hpp"
#include "dh2/Script_ExecScript.hpp"
#include "dh2/Script_ExitCutSceneMode.hpp"
#include "dh2/Script_FlushMessages.hpp"
#include "dh2/Script_HideActor.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Start of every Execute that traces: DebugSwitches::load() and GetSwitch("isTracingScriptCmd"), result discarded.
// GetInstance() is the only public route to DebugSwitches::s_inst (s_inst is private in dh2/DebugSwitches.hpp), and the
// load is repeated on each call as in the original.
static void TraceScriptCmdSwitch() {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
}

// ---- Script_EndGame ----

// 0x455910 Script_EndGame::IsBlocking() const
bool Script_EndGame::IsBlocking() const {
    return false;
}

// 0x45ca80 Script_EndGame::Execute(bool, int)
// After the trace read, the local player's character (PlayerManager::GetLocalPlayer(0, true), PlayerInfo +0x660) gets
// SG_SetLevelId(45, difficulty) and SG_SetLevelEntryPoint(5, difficulty) for its current difficulty (SG_GetGameDifficulty, read
// twice as in the original), its unlocked difficulty becomes that value plus one capped at 2 (SG_SetGameDifficultyUnlocked), it saves
// (SG_Save) and its difficulty is set to the unlocked one (SG_SetGameDifficulty). Then Application::m_stateMachine (+0x18) switches
// to GSEndGame::s_inst with owned = false.
void Script_EndGame::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    const int difficulty = character->SG_GetGameDifficulty();
    int unlocked = character->SG_GetGameDifficulty() + 1;
    character->SG_SetLevelId(45, difficulty);
    if (unlocked >= 2) {
        unlocked = 2;
    }
    character->SG_SetLevelEntryPoint(5, difficulty);
    character->SG_SetGameDifficultyUnlocked(unlocked);
    character->SG_Save();
    character->SG_SetGameDifficulty(unlocked);
    ApplicationGetInstance().m_stateMachine->SwitchState(&GSEndGame::s_inst, false);
}


// ---- Script_EnqueueCharMenuTutorialMessage ----

// 0x455950 Script_EnqueueCharMenuTutorialMessage::IsBlocking() const
bool Script_EnqueueCharMenuTutorialMessage::IsBlocking() const {
    return false;
}

// 0x460b1c Script_EnqueueCharMenuTutorialMessage::Execute(bool, int)
// Builds the CharMenuTutorialMsg from the record: the id from m_w6 (+0x18), the frame name from m_w3 (+0x0c) and the menu name from
// m_w5 (+0x14), and pushes it onto the CharMenuTutorialMsg queue (queue 0 of MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst, the
// deque at 0x99fbb8). The start function is not invoked here.
void Script_EnqueueCharMenuTutorialMessage::Execute(bool /*skipping*/, int /*module*/) {
    auto* args = static_cast<Structs::EnqueueCharMenuTutorialMessage*>(m_args);
    CharMenuTutorialMsg message(-1, std::string(), std::string());
    message.m_stringId = args->Text;
    message.m_frame.assign(args->Frame);
    message.m_menu.assign(args->Menu);
    MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst.m_queues[0].push_back(message);
}


// ---- Script_EnqueueTutorialMessage ----

// 0x455938 Script_EnqueueTutorialMessage::IsBlocking() const
bool Script_EnqueueTutorialMessage::IsBlocking() const {
    return false;
}

// 0x4613d4 Script_EnqueueTutorialMessage::Execute(bool, int)
// When the record's m_w3 (+0x0c) is not negative, the pair {m_w3, m_w2 (+0x08)} (string id, duration) is pushed onto the TutorialMsg
// queue (queue 0 of MenuMessageManager<TutorialMsg, 1>::s_inst). When the queue then holds exactly one entry, the start function
// TutorialMsg::s_StartFuncName ("onTutorialMessage") is invoked on the HUD root (Invoke reads no queue argument).
void Script_EnqueueTutorialMessage::Execute(bool /*skipping*/, int /*module*/) {
    auto* args = static_cast<Structs::EnqueueTutorialMessage*>(m_args);
    if (args->Text >= 0) {
        MenuMessageManager<TutorialMsg, 1>& manager = MenuMessageManager<TutorialMsg, 1>::s_inst;
        manager.m_queues[0].push_back(TutorialMsg(args->Text, args->Duration));
        if (manager.m_queues[0].size() == 1) {
            manager.Invoke(TutorialMsg::s_StartFuncName[0], 0);
        }
    }
}


// ---- Script_EnterCutSceneMode ----

// 0x455638 Script_EnterCutSceneMode::IsBlocking() const
bool Script_EnterCutSceneMode::IsBlocking() const {
    return false;
}

// 0x45a384 Script_EnterCutSceneMode::Execute(bool, int)
// In order:
//   1. With a current level that is not in the game view (Level::m_isInGameView, +0x198) or with the in-game menu open
//      (MenuBase::s_igmOpened): the multi-menu manager pops (PopMenu(true), vtable +0x38), the local player's character reloads its
//      skills when it exists, and the status bar is hidden (Application::ShowStatubBar(false)).
//   2. Online, with a local character that is dead (virtual IsDead, +0x34): the local player's death timer is set to -1
//      (PlayerInfo::SetCharacterDeathTimer; the original builds a temporary NetStructInt and calls the member's set slot).
//   3. The HUD callback "StartCutscene" on the HUD root.
//   4. ScriptManager::m_inCutScene (byte_9A600C) = true and AnimController::s_scalingEnabled = false.
//   5. Online, each player (count PlayerManager::m_numCharacters, +0x6c4, read again every pass): a local player is flagged
//      (PlayerInfo::SetInCutscene(true)), a remote one has its character hidden (virtual SetVisible, +0x40, argument 0 in the asm).
void Script_EnterCutSceneMode::Execute(bool /*skipping*/, int /*module*/) {
    Application& app = ApplicationGetInstance();
    Level* level = app.GetCurrentLevel();
    if (level != nullptr && (!level->m_isInGameView || MenuBase::s_igmOpened)) {
        MenuManager::GetInstance()->m_multiMenuManager->PopMenu(true);
        if (dword_99F76C->GetLocalPlayer(0, true)->unk_660 != nullptr) {
            dword_99F76C->GetLocalPlayer(0, true)->unk_660->ReloadSkills();
        }
        app.ShowStatubBar(false);
    }
    if (GetOnlineGameFlag()) {
        Character* localCharacter = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
        if (localCharacter != nullptr && dword_99F76C->GetLocalPlayer(0, true)->unk_660->IsDead()) {
            dword_99F76C->GetLocalPlayer(0, false)->SetCharacterDeathTimer(-1);
        }
    }
    MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
    hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "StartCutscene", nullptr, 0);
    ScriptManager::s_inst.m_inCutScene = true;
    AnimController::s_scalingEnabled = false;
    if (GetOnlineGameFlag()) {
        for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
            PlayerInfo* player = dword_99F76C->GetPlayer(i, false);
            if (player->IsLocal()) {
                player->SetInCutscene(true);
            } else if (player->unk_660 != nullptr) {
                player->unk_660->SetVisible(false);
            }
        }
    }
}


// ---- Script_EnterSafeZone ----

// 0x455668 Script_EnterSafeZone::IsBlocking() const
bool Script_EnterSafeZone::IsBlocking() const {
    return false;
}

// 0x45fc80 Script_EnterSafeZone::Execute(bool, int)
// The tracing switch, then VoxSoundManager::SetInSafeZoneMusic(true) on VoxSoundManager::s_instance (0x9a238c).
void Script_EnterSafeZone::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    VoxSoundManager::s_instance->SetInSafeZoneMusic(true);
}

// ---- Script_ExecScript ----

// 0x455c08 Script_ExecScript::IsBlocking() const
// With the record's wait flag (Structs::ExecScript m_w6, +0x18) set, the command blocks while the script it started (unk_10) is
// running (ScriptManager::IsScriptRunning); with it clear it does not block.
bool Script_ExecScript::IsBlocking() const {
    const auto* record = static_cast<const Structs::ExecScript*>(m_args);
    if (record->Wait) {
        return ScriptManager::s_inst.IsScriptRunning(unk_10);
    }
    return false;
}


// 0x4607f4 Script_ExecScript::Execute(bool, int)
// The id is the record's single id (m_w3, +0x0c), or, when the record has a list (m_w4, +0x10, entries at m_w5, +0x14), one of its
// entries chosen with the ordinary random stream (Random::GetRandom(count, false): seed = (59051 * seed + 177149) % 0xdaf26b, the
// draw modulo count, the debug counter incremented). After the trace read, a record whose flag m_w2 (+0x08) is clear adds the number of
// loaded scripts (ScriptManager +0x08, dword_9A5FE4). The id is kept in unk_10 and started: ScriptManager::s_inst.StartScript(id,
// module, true).
void Script_ExecScript::Execute(bool /*skipping*/, int module) {
    const auto* record = static_cast<const Structs::ExecScript*>(m_args);
    int id;
    if (record->ScriptAltsSize != 0) {
        id = record->ScriptAlts[Random::GetRandom(static_cast<int>(record->ScriptAltsSize), false)];
    } else {
        id = record->Script;
    }
    TraceScriptCmdSwitch();
    if (!record->IsGlobal) {
        id += ScriptManager::s_inst.m_loadedCount;
    }
    unk_10 = id;
    ScriptManager::s_inst.StartScript(id, module, true);
}


// ---- Script_ExitCutSceneMode ----

// 0x455640 Script_ExitCutSceneMode::IsBlocking() const
bool Script_ExitCutSceneMode::IsBlocking() const {
    return false;
}

// 0x4599ac Script_ExitCutSceneMode::Execute(bool, int)
// The HUD callback "StopCutscene" on the HUD root, then ScriptManager::m_inCutScene (byte_9A600C) = false and
// AnimController::s_scalingEnabled = true. Online, a CMsgScriptCmd (command 1, script id -2, module -1) is sent to the other players
// (CMessage::CreateMessage("CMsgScriptCmd", true), CMessaging::SendMsg), and each player (count PlayerManager::m_numCharacters,
// +0x6c4, read again every pass) leaves the cut scene: a local player is flagged (PlayerInfo::SetInCutscene(false)), a remote one has its
// character shown again (virtual SetVisible, +0x40, with true).
void Script_ExitCutSceneMode::Execute(bool /*skipping*/, int /*module*/) {
    MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
    hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "StopCutscene", nullptr, 0);
    ScriptManager::s_inst.m_inCutScene = false;
    AnimController::s_scalingEnabled = true;
    if (GetOnlineGameFlag()) {
        CMsgScriptCmd* message = static_cast<CMsgScriptCmd*>(CMessage::CreateMessage("CMsgScriptCmd", true));
        message->scriptId_ = -2;
        message->module_ = -1;
        message->command_ = 1;
        GetMessaging()->SendMsg(message);
        for (int i = 0; i < dword_99F76C->m_numCharacters; ++i) {
            PlayerInfo* player = dword_99F76C->GetPlayer(i, false);
            if (player->IsLocal()) {
                player->SetInCutscene(false);
            } else if (player->unk_660 != nullptr) {
                player->unk_660->SetVisible(true);
            }
        }
    }
}


// ---- Script_FlushMessages ----

// 0x455978 Script_FlushMessages::IsBlocking() const
bool Script_FlushMessages::IsBlocking() const {
    return false;
}

// 0x460a58 Script_FlushMessages::Execute(bool, int)
// In the original's order: the DialogMsg queue is flushed (FlushEnqueuedMessages, a clone for queue 0), the AchievementMsg queue is popped
// until empty, the DialogMsg queue is flushed again, then the StatusMsg queue (queue 0 of MenuMessageManager<StatusMsg, 4>) and the
// OnlineStatusMsg queue are popped until empty.
void Script_FlushMessages::Execute(bool /*skipping*/, int /*module*/) {
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    std::deque<AchievementMsg>& achievements = MenuMessageManager<AchievementMsg, 1>::s_inst.m_queues[0];
    while (!achievements.empty()) {
        achievements.pop_front();
    }
    MenuMessageManager<DialogMsg, 1>::s_inst.FlushEnqueuedMessages(0);
    std::deque<StatusMsg>& status = MenuMessageManager<StatusMsg, 4>::s_inst.m_queues[0];
    while (!status.empty()) {
        status.pop_front();
    }
    std::deque<OnlineStatusMsg>& online = MenuMessageManager<OnlineStatusMsg, 1>::s_inst.m_queues[0];
    while (!online.empty()) {
        online.pop_front();
    }
}


// ---- Script_HideActor ----

// 0x455828 Script_HideActor::IsBlocking() const
bool Script_HideActor::IsBlocking() const {
    return false;
}

// 0x45e028 Script_HideActor::Execute(bool, int)
// Looks the named object up (record m_w3, the name at +0x0c) on the global ObjectManager. When the handle resolves to an
// object, it calls that object's virtual SetVisible(false) (vtable +0x40, GameObject::SetVisible).
void Script_HideActor::Execute(bool /*skipping*/, int module) {
    auto* args = static_cast<Structs::HideActor*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle =
        ApplicationGetInstance().m_objectManager->GetObjectByName(args->Target, module, false, nullptr);
    if (handle.GetObject(false)) {
        GameObject* object = handle;
        if (object) {
            object->SetVisible(false);
        }
    }
}
