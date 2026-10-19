// Batch g1-game-app-pack10-ec557a-0 (game-app, 19 functions, ELF 0x4556c4 .. 0x460428): IsBlocking and Execute of
// nine script commands, and Script_ShowFlash::Init. Declarations are in the owner headers dh2/Script_<Command>.hpp.
//
// Argument records: ScriptCmdImpl::m_args (+0x0c) holds the Structs::<Command> record that the script stream reader
// fills (pydata-accessors/script_cmd.hpp). The pointer is stored as void*, and each body static_casts it to the concrete
// record type, whose Structs::ScriptCmd base sits at the record's address. Its m_wN member is the word at offset 4*N,
// so m_w2 is +0x08, m_w3 +0x0c, m_w4 +0x10 and m_w5 +0x14.
//
// Debug trace: each original Execute opens with the inlined DebugSwitches read of "isTracingScriptCmd" (see
// ReadTracingScriptCmdSwitch). Execute bodies that the trace is not part of (the empty ones) do not call it.
//
// IStreamBase: an earlier note said dh2/PlayerManager.hpp and dh2/Character.hpp could not share a translation unit. That
// clash is gone: the pydata records, Character, PlayerManager, Level and CameraLevel compile together now. The bodies below
// that need only the level camera or the message queue are rebuilt. The bodies still waiting on the local player's Character
// are left as they were. PlayerManager::GetLocalPlayerCharacter (0x330794) is GetLocalPlayer(0, true)->character_660.

#include <deque>

#include "core-platform/lc_api.hpp"
#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Script_SetCameraTarget.hpp"
#include "dh2/Script_SetFaeryState.hpp"
#include "dh2/Script_SetLevelState.hpp"
#include "dh2/Script_SetStatic.hpp"
#include "dh2/Script_SetWorldMapLocationState.hpp"
#include "dh2/Script_ShowActor.hpp"
#include "dh2/Script_ShowFlash.hpp"
#include "dh2/Script_ShowTrophies.hpp"
#include "dh2/Script_SkipAllCharMenuTutorialMessages.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/CameraTarget.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/ctrl_camera.hpp"

#include <cstdint>

namespace {

// The debug-switch read that opens each Execute in the original: DebugSwitches::load() on DebugSwitches::s_inst, then
// GetSwitch("isTracingScriptCmd") with the result discarded. The compiler inlined it into every Execute, and the
// decompiler prints the same sequence. GetInstance() calls load() before it returns the singleton, so one call here
// performs the same reads (see game-app/src/g1-game-app-DebugSwitches-d73440-0.cpp, GetInstance and the trace read).
void ReadTracingScriptCmdSwitch() {
    (void)DebugSwitches::GetInstance()->GetSwitch("isTracingScriptCmd");
}

}  // namespace

// 0x4592cc Script_SetCameraTarget::IsBlocking() const
// Blocks while the level camera's transition counter (CameraTarget m_transitionRemainingMs, +0x20) is positive. The record's
// flag (+0x14, Structs::SetCameraTarget m_w5) must be set, and the current level and its camera (Level m_camera, +0x128) must
// exist.
bool Script_SetCameraTarget::IsBlocking() const {
    const auto* args = static_cast<const Structs::SetCameraTarget*>(m_args);
    if (!args->Wait) {
        return false;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || level->m_camera == nullptr) {
        return false;
    }
    return level->m_camera->m_transitionRemainingMs > 0;
}

// 0x460004 Script_SetCameraTarget::Execute(bool, int)
// The level camera (CameraLevel, +0x128) takes a new target: the record's name (+0x10) when it is not empty (CameraTarget::SetTarget by
// name), otherwise the local player's Character. The blend time is 0 when skipping and the record's m_w2 (+0x08) otherwise.
void Script_SetCameraTarget::Execute(bool skipping, int module) {
    (void)module;
    const auto* args = static_cast<const Structs::SetCameraTarget*>(m_args);
    ReadTracingScriptCmdSwitch();
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr || level->m_camera == nullptr) {
        return;
    }
    CameraTarget* camera = level->m_camera;
    const char* name = args->Target;
    const int transitionMs = skipping ? 0 : args->Delay;
    if (*name != '\0') {
        camera->SetTarget(name, transitionMs);
    } else {
        camera->SetTarget(ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660, transitionMs);
    }
}

// 0x45576c Script_SetFaeryState::IsBlocking() const
bool Script_SetFaeryState::IsBlocking() const {
    return false;
}

// 0x45f6c8 Script_SetFaeryState::Execute(bool, int)
// The local player's Character (GetLocalPlayer(0, true), PlayerInfo +0x660), when there is one, takes the record's faery (m_w2) in
// the record's state (m_w3): Character::SetFaeryState.
void Script_SetFaeryState::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const auto* args = static_cast<const Structs::SetFaeryState*>(m_args);
    ReadTracingScriptCmdSwitch();
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (character != nullptr) {
        character->SetFaeryState(static_cast<unsigned int>(args->Faery), args->State);
    }
}

// 0x4558e4 Script_SetLevelState::IsBlocking() const
bool Script_SetLevelState::IsBlocking() const {
    return false;
}

// 0x45cf40 Script_SetLevelState::Execute(bool, int)
// The local player's Character, when there is one, records the record's level (m_w2) in the record's state (m_w3) for the current
// difficulty: Character::SG_SetLevelState(level, state, -1).
void Script_SetLevelState::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const auto* args = static_cast<const Structs::SetLevelState*>(m_args);
    ReadTracingScriptCmdSwitch();
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (character != nullptr) {
        character->SG_SetLevelState(args->Level, args->State, -1);
    }
}

// 0x455810 Script_SetStatic::IsBlocking() const
bool Script_SetStatic::IsBlocking() const {
    return false;
}

// 0x45d868 Script_SetStatic::Execute(bool, int)
// The record's name (+0x10) is looked up on the ObjectManager with the module number as flags, inactive, no type
// (GetObjectByName(name, module, false, null)). When the object is found and the record's flag (+0x08) is set, the
// Character the handle converts to is marked static (ObjectBase::m_static, byte +0x84). The original stores the byte
// without a null test, which faults when the conversion gives null; this body skips the store in that case.
void Script_SetStatic::Execute(bool skipping, int module) {
    (void)skipping;
    const auto* args = static_cast<const Structs::SetStatic*>(m_args);
    ReadTracingScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(args->Target, module, false, nullptr);
    Character* character = nullptr;
    if (handle.GetObject(false) != nullptr) {
        character = handle;  // ObjectHandle::operator Character*()
    }
    if (args->Static && character != nullptr) {
        character->m_static = 1;
    }
}

// 0x4558ec Script_SetWorldMapLocationState::IsBlocking() const
bool Script_SetWorldMapLocationState::IsBlocking() const {
    return false;
}

// 0x45ce78 Script_SetWorldMapLocationState::Execute(bool, int)
// The local player's Character, when there is one, records the record's world-map location (m_w2) in the record's state (m_w3) for
// the current difficulty: Character::SG_SetMapLocState(location, state, -1).
void Script_SetWorldMapLocationState::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const auto* args = static_cast<const Structs::SetWorldMapLocationState*>(m_args);
    ReadTracingScriptCmdSwitch();
    Character* character = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;
    if (character != nullptr) {
        character->SG_SetMapLocState(args->MapLoc, args->State, -1);
    }
}

// 0x455820 Script_ShowActor::IsBlocking() const
bool Script_ShowActor::IsBlocking() const {
    return false;
}

// 0x45eb14 Script_ShowActor::Execute(bool, int)
// The record's name (+0x0c) is looked up on the ObjectManager like Script_SetStatic. When the object is found and
// converts to a GameObject, zoning is disabled for it (GameObject::DisableZoning) and it is shown through the
// GameObject's virtual slot +0x40, which is SetVisible(true).
void Script_ShowActor::Execute(bool skipping, int module) {
    (void)skipping;
    ReadTracingScriptCmdSwitch();
    const auto* args = static_cast<const Structs::ShowActor*>(m_args);
    ReadTracingScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(args->Target, module, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        GameObject* object = handle;  // ObjectHandle::operator GameObject*()
        if (object != nullptr) {
            object->DisableZoning();
            object->SetVisible(true);
        }
    }
}

// 0x4556c4 Script_ShowFlash::IsBlocking() const
// Blocks while a menu is resolved, the record's flag (+0x14) is set, and the record's count (+0x08) is positive and
// above the menu's finished-animation count (MenuBase +0x78, m_animOverCount).
bool Script_ShowFlash::IsBlocking() const {
    const auto* args = static_cast<const Structs::ShowFlash*>(m_args);
    if (m_menu == nullptr || !args->Wait) {
        return false;
    }
    if (args->Loop <= 0) {
        return false;
    }
    return args->Loop > static_cast<std::int32_t>(m_menu->m_animOverCount);  // signed: CMP / MOVGT at 0x4556c4
}

// 0x45983c Script_ShowFlash::Init()
// The menu named by the record (+0x10) is resolved once. A name containing "HUD" resolves to no menu, because the HUD
// is drawn by Execute. Any other name resolves through MenuManager::GetMenuByName, which may return null.
void Script_ShowFlash::Init() {
    MenuManager* menus = MenuManager::GetInstance();
    const auto* args = static_cast<const Structs::ShowFlash*>(m_args);
    if (LC_API_STRSTR(args->Name, "HUD") != nullptr) {
        m_menu = nullptr;
    } else {
        m_menu = menus->GetMenuByName(args->Name);
    }
}

// 0x45f8c8 Script_ShowFlash::Execute(bool, int)
// A resolved menu is shown (its virtual slot +0x0c, MenuFX::State::Show) and the call returns. Otherwise a record name that contains
// "HUD" drives the HUD root: DisplayRightHud (no arguments), FillActionIcon with the number MenuManager +0x108 and DisplayOfCurrentHud with
// true. The menu is shown again at the end when one is set (it is not, on this path), as in the original.
void Script_ShowFlash::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const auto* args = static_cast<const Structs::ShowFlash*>(m_args);
    ReadTracingScriptCmdSwitch();
    if (m_menu != nullptr) {
        m_menu->Show();
        return;
    }
    MenuManager::GetInstance();
    if (LC_API_STRSTR(args->Name, "HUD") != nullptr) {
        MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
        hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "DisplayRightHud", nullptr, 0);
        gameswf::as_value icon;
        icon.set_double(static_cast<double>(MenuManager::GetInstance()->m_actionIconType));
        hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "FillActionIcon", &icon, 1);
        gameswf::as_value current;
        current.set_bool(true);
        hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "DisplayOfCurrentHud", &current, 1);
    }
    if (m_menu != nullptr) {
        m_menu->Show();
    }
}

// 0x455904 Script_ShowTrophies::Execute(bool, int)
// Empty in the original: the trophies screen is not drawn by this command.
void Script_ShowTrophies::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
}

// 0x455908 Script_ShowTrophies::IsBlocking() const
bool Script_ShowTrophies::IsBlocking() const {
    return true;
}

// 0x455960 Script_SkipAllCharMenuTutorialMessages::IsBlocking() const
bool Script_SkipAllCharMenuTutorialMessages::IsBlocking() const {
    return false;
}

// 0x460428 Script_SkipAllCharMenuTutorialMessages::Execute(bool, int)
// Empties the character-menu tutorial queue: while dword_99FBC8 != dword_99FBB8 (the finish and start cursors), the original
// pops the front. Those cursors are the deque m_queues[0] of Singleton<MenuMessageManager<CharMenuTutorialMsg,1>>::s_inst
// (instance 0x99fbb4, deque 0x99fbb8), so the body pops until the deque is empty. The static s_inst has no definition in the
// tree yet; the integrator supplies it with the other message-manager statics.
void Script_SkipAllCharMenuTutorialMessages::Execute(bool /*skipping*/, int /*module*/) {
    std::deque<CharMenuTutorialMsg>& queue = MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst.m_queues[0];
    while (!queue.empty()) {
        queue.pop_front();
    }
}
