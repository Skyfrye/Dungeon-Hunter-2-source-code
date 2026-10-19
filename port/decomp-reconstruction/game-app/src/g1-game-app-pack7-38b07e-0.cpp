// Batch g1-game-app-pack7-38b07e-0 (game-app): the bodies of eight script command classes, 19 ELF addresses.
// Script_HideFlash, Script_IncFaeryLevel, Script_KillActor, Script_LeaveSafeZone, Script_LockCharacter,
// Script_LockTutorial, Script_LookActor and Script_MarkCharacterAsScripted.
//
// The command data is the Structs::<Name> record that the script loader stores in ScriptCmdImpl::m_args
// (pydata-accessors/include/pydata-accessors/script_cmd.hpp). Member m_wN is the word at the original offset 4*N, so
// the offsets in the comments below map to m_w2 (+0x08), m_w3 (+0x0c), m_w4 (+0x10) and m_w5 (+0x14).
//
// What is reconstructed and what is not:
//   - Complete: Script_HideFlash::Init, Script_HideFlash::IsBlocking, Script_KillActor::Execute,
//     Script_LockCharacter::Execute, Script_MarkCharacterAsScripted::Set, Unset and Execute, and every other IsBlocking
//     in this batch (each returns false).
//   - Complete in batch r2a-game-app-pack2-5b248a-0: Script_LockTutorial::Execute and Script_LookActor::Execute.
//   - Complete: Script_HideFlash::Execute (the HUD branch invokes DisplayOfCurrentHud with false) and
//     Script_IncFaeryLevel::Execute (the online gate is GetOnlineGameFlag()).
//   - Script_LeaveSafeZone::Execute is complete too (SetInSafeZoneMusic(false)).

#include <cstdint>

#include "core-platform/lc_api.hpp"
#include "net-transport/update_job_thread.hpp"
#include "pydata-accessors/script_cmd.hpp"

#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/net_singletons.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Script_HideFlash.hpp"
#include "dh2/Script_IncFaeryLevel.hpp"
#include "dh2/Script_KillActor.hpp"
#include "dh2/Script_LeaveSafeZone.hpp"
#include "dh2/Script_LockCharacter.hpp"
#include "dh2/Script_LockTutorial.hpp"
#include "dh2/Script_LookActor.hpp"
#include "dh2/Script_MarkCharacterAsScripted.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/script_character_callback.hpp"
#include "dh2/global/script_command_globals.hpp"

namespace {

// The trace probe that starts most Execute bodies (asm checked at 0x45ea04 and 0x45ec50): DebugSwitches::load(), then
// GetSwitch("isTracingScriptCmd") with the result discarded. DebugSwitches::s_inst is private in dh2/DebugSwitches.hpp,
// so GetInstance() supplies the same singleton.
void TraceScriptCmdSwitch() {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    (void)switches->GetSwitch("isTracingScriptCmd");
}

// The ObjectManager of the Application singleton (Application +0x38, the original's global dword_99F764).
ObjectManager* ObjectManagerOf() {
    return ApplicationGetInstance().m_objectManager;
}

// The faery increment of Script_IncFaeryLevel, applied to the character of local player 0 (PlayerManager::GetLocalPlayer(0,
// true), PlayerInfo +0x660, named unk_660 in dh2/PlayerInfo.hpp). The original calls Character::IncFaeryLevel on it and
// skips the call when the player has no character.
void IncFaeryLevelOfLocalPlayer(unsigned int amount) {
    Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (character != nullptr) {
        character->IncFaeryLevel(amount);
    }
}

}  // namespace

// 0x4597e8 Script_HideFlash::Init()
// Resolves the menu once. A record name (+0x10) that contains "HUD" selects the HUD and leaves m_menu null. Any other name
// is looked up with MenuManager::GetMenuByName on the MenuManager singleton.
void Script_HideFlash::Init() {
    MenuManager* manager = MenuManager::GetInstance();
    const Structs::HideFlash* record = static_cast<const Structs::HideFlash*>(m_args);
    const char* name = record->Name;
    if (LC_API_STRSTR(name, "HUD") != nullptr) {
        m_menu = nullptr;
    } else {
        m_menu = manager->GetMenuByName(name);
    }
}

// 0x45f78c Script_HideFlash::Execute(bool, int)
// After the trace probe, a resolved menu (m_menu, +0x10) is hidden (its virtual slot +0x10, MenuBase::Hide) and the command ends.
// Otherwise a record name (+0x10) that contains "HUD" drives the HUD root: the callback DisplayOfCurrentHud is invoked with false.
// The menu is hidden again at the end when one is set (it is not, on this path), as in the original.
void Script_HideFlash::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::HideFlash* record = static_cast<const Structs::HideFlash*>(m_args);
    TraceScriptCmdSwitch();
    if (m_menu != nullptr) {
        m_menu->Hide();
        return;
    }
    MenuManager* menuManager = MenuManager::GetInstance();
    if (LC_API_STRSTR(record->Name, "HUD") != nullptr) {
        MenuFX* hud = menuManager->GetHUDRoot();
        gameswf::as_value current;
        current.set_bool(false);
        hud->InvokeASCallback(hud->RenderFX::GetRoot()->get_root_movie(), "DisplayOfCurrentHud", &current, 1);
    }
    if (m_menu != nullptr) {
        m_menu->Hide();
    }
}

// 0x455708 Script_HideFlash::IsBlocking() const
// Blocks while a menu is set, the record flag (+0x14) is set and the record count (+0x08) is positive, and the count is
// greater than MenuBase::m_animOverCount (+0x78). The original compares as signed: the asm loads the count into R3 and
// m_animOverCount into R0, then CMP R3,R0 with MOVLE/MOVGT (signed conditions). So the test is
// `m_w2 > (std::int32_t)m_animOverCount`. The result differs from an unsigned compare only when m_animOverCount is
// at least 0x80000000.
bool Script_HideFlash::IsBlocking() const {
    const Structs::HideFlash* record = static_cast<const Structs::HideFlash*>(m_args);
    if (m_menu != nullptr && record->Wait && record->Loop > 0) {
        return record->Loop > static_cast<std::int32_t>(m_menu->m_animOverCount);
    }
    return false;
}

// 0x45f5cc Script_IncFaeryLevel::Execute(bool, int)
// After the trace probe, the increment is read from the record (+0x08, Structs::IncFaeryLevel m_w2). Offline (the online game flag
// *(GetOnline() + 0x05) is clear), the local player 0's character gets the increment. Online, it gets it only while this client is
// hosting (PlayerManager::IsLocalPlayerHosting) and the PlayerManager flag at +0x719 (m_hostChanged) is clear.
void Script_IncFaeryLevel::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    if (!GetOnlineGameFlag()) {
        IncFaeryLevelOfLocalPlayer(static_cast<const Structs::IncFaeryLevel*>(m_args)->Faery);
        return;
    }
    if (dword_99F76C->IsLocalPlayerHosting() != 0 && !dword_99F76C->m_hostChanged) {
        IncFaeryLevelOfLocalPlayer(static_cast<const Structs::IncFaeryLevel*>(m_args)->Faery);
    }
}

// 0x455774 Script_IncFaeryLevel::IsBlocking() const
// Returns false (asm: MOV R0,#0).
bool Script_IncFaeryLevel::IsBlocking() const {
    return false;
}

// 0x45ea04 Script_KillActor::Execute(bool, int)
// The trace probe, then ObjectManager::GetObjectByName(name, module, false, nullptr) for the record name (+0x0c). When the
// object is a Character, its controller's flag at +0x09 is set around v2Controller::Cmd_Kill(nullptr, false), then cleared.
void Script_KillActor::Execute(bool /*skipping*/, int module) {
    const Structs::KillActor* record = static_cast<const Structs::KillActor*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = ObjectManagerOf()->GetObjectByName(record->Target, module, false, nullptr);
    if (handle.GetObject(false) != nullptr) {
        Character* character = static_cast<Character*>(handle);
        if (character != nullptr) {
            v2Controller* controller = character->m_controller;
            controller->unk_009 = true;
            controller->Cmd_Kill(nullptr, false);
            controller->unk_009 = false;
        }
    }
}

// 0x455830 Script_KillActor::IsBlocking() const
// Returns false.
bool Script_KillActor::IsBlocking() const {
    return false;
}

// 0x45fbe0 Script_LeaveSafeZone::Execute(bool, int)
// The tracing switch, then VoxSoundManager::SetInSafeZoneMusic(false) on VoxSoundManager::s_instance (0x9a238c).
void Script_LeaveSafeZone::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    VoxSoundManager::s_instance->SetInSafeZoneMusic(false);
}

// 0x455670 Script_LeaveSafeZone::IsBlocking() const
// Returns false.
bool Script_LeaveSafeZone::IsBlocking() const {
    return false;
}

// 0x45dda0 Script_LockCharacter::Execute(bool, int)
// Runs on the forward pass only: a skipping command returns at once. The trace probe, then the record name (+0x0c) is
// compared with "All" (LC_API_STRCASECMP). "All" sets v2Controller::s_blocked. Any other name is resolved with
// GetObjectByName(name, module, false, nullptr), and a Character found there has its controller's flag at +0x08
// (m_blocked) set.
void Script_LockCharacter::Execute(bool skipping, int module) {
    if (skipping) {
        return;
    }
    const Structs::LockCharacter* record = static_cast<const Structs::LockCharacter*>(m_args);
    TraceScriptCmdSwitch();
    const char* name = record->Target;
    if (LC_API_STRCASECMP(name, "All") != 0) {
        ObjectHandle handle = ObjectManagerOf()->GetObjectByName(name, module, false, nullptr);
        if (handle.GetObject(false) != nullptr) {
            Character* character = static_cast<Character*>(handle);
            if (character != nullptr) {
                character->m_controller->m_blocked = true;
            }
        }
    } else {
        v2Controller::s_blocked = true;
    }
}

// 0x4556bc Script_LockCharacter::IsBlocking() const
// Returns false.
bool Script_LockCharacter::IsBlocking() const {
    return false;
}

// 0x45925c Script_LockTutorial::Execute(bool, int)
// Clears SavegameManager::m_tutorials[id] (the byte at +0x29, id = record +0x08, Structs::LockTutorial m_w2). Then, when
// lastOpenMenuID is 17, the savegame manager saves its settings (dword_99F778, Application +0x4c); otherwise the job thread
// m_updateJobThread1 is started (updateJob_thread::Start2). Does nothing when the command has no record. No trace probe.
void Script_LockTutorial::Execute(bool /*skipping*/, int /*module*/) {
    const Structs::LockTutorial* record = static_cast<const Structs::LockTutorial*>(m_args);
    if (record == nullptr) {
        return;
    }
    SavegameManager* savegame = dword_99F778;
    savegame->m_tutorials[record->Tutorial] = 0;
    if (lastOpenMenuID == 17) {
        savegame->saveSettings();
    } else {
        (void)m_updateJobThread1->Start2();
    }
}

// 0x455968 Script_LockTutorial::IsBlocking() const
// Returns false.
bool Script_LockTutorial::IsBlocking() const {
    return false;
}

// 0x45ec50 Script_LookActor::Execute(bool, int)
// The trace probe, then the looker is looked up by name (record +0x14, Structs::LookActor m_w5, flags = module) and the target
// by name (record +0x0c, m_w3). The target name "HighestThreatPlayer" passes the looker name as the type argument, as the asm
// shows; any other name passes no type. When the looker is a Character, the target resolves, the looker is a player
// (Character::IsPlayer) and a level is current, the characters of local players 1..3 (PlayerManager::GetPlayer(i, false),
// PlayerInfo +0x660, unk_660) each get their controller's flag at +0x09 set around v2Controller::Cmd_LookAt(target). Then the
// looker's own controller does the same. Nothing is written back to the command.
void Script_LookActor::Execute(bool /*skipping*/, int module) {
    const Structs::LookActor* record = static_cast<const Structs::LookActor*>(m_args);
    TraceScriptCmdSwitch();
    ObjectManager* objects = ObjectManagerOf();

    ObjectHandle lookerHandle = objects->GetObjectByName(record->Target, module, false, nullptr);
    Character* looker = nullptr;
    if (lookerHandle.GetObject(false) != nullptr) {
        looker = static_cast<Character*>(lookerHandle);
    }

    // The original constructs an empty handle first and copies the lookup result over it.
    ObjectHandle target;
    if (LC_API_STRCMP(record->Object, "HighestThreatPlayer") != 0) {
        target = objects->GetObjectByName(record->Object, module, false, nullptr);
    } else {
        target = objects->GetObjectByName(record->Object, module, false, record->Target);
    }
    GameObject* targetObject = nullptr;
    if (target.GetObject(false) != nullptr) {
        targetObject = static_cast<GameObject*>(target);
    }

    if (looker != nullptr && target.GetObject(false) != nullptr) {
        if (looker->IsPlayer() && ApplicationGetInstance().GetCurrentLevel() != nullptr) {
            for (int i = 1; i != 4; ++i) {
                Character* player = dword_99F76C->GetPlayer(i, false)->unk_660;
                if (player != nullptr) {
                    v2Controller* playerController = player->m_controller;
                    playerController->unk_009 = true;
                    playerController->Cmd_LookAt(targetObject);
                    playerController->unk_009 = false;
                }
            }
        }
        v2Controller* controller = looker->m_controller;
        controller->unk_009 = true;
        controller->Cmd_LookAt(targetObject);
        controller->unk_009 = false;
    }
    (void)target.GetObject(false);
}

// 0x455818 Script_LookActor::IsBlocking() const
// Returns false.
bool Script_LookActor::IsBlocking() const {
    return false;
}

// 0x459550 Script_MarkCharacterAsScripted::Unset(ObjectBase*)
// The object's handle is resolved to a Character, and its m_isDummy (+0x1480) is cleared. The original's GetHandle call
// writes its result through a local ObjectHandle (asm: sret = local, this = the object).
void Script_MarkCharacterAsScripted::Unset(ObjectBase* object) {
    if (object == nullptr) {
        return;
    }
    ObjectHandle handle = object->GetHandle();
    Character* character = static_cast<Character*>(handle);
    if (character != nullptr) {
        character->m_isDummy = 0;
    }
}

// 0x45958c Script_MarkCharacterAsScripted::Set(ObjectBase*)
// As Unset, but sets m_isDummy (+0x1480) to 1.
void Script_MarkCharacterAsScripted::Set(ObjectBase* object) {
    if (object == nullptr) {
        return;
    }
    ObjectHandle handle = object->GetHandle();
    Character* character = static_cast<Character*>(handle);
    if (character != nullptr) {
        character->m_isDummy = 1;
    }
}

// 0x45d4c8 Script_MarkCharacterAsScripted::Execute(bool, int)
// The trace probe, then the record flag (+0x08) selects Set or Unset, and Script_CharacterState_Callback applies it to the
// record name (+0x10) with the module as its int argument.
void Script_MarkCharacterAsScripted::Execute(bool /*skipping*/, int module) {
    const Structs::MarkCharacterAsScripted* record = static_cast<const Structs::MarkCharacterAsScripted*>(m_args);
    TraceScriptCmdSwitch();
    using Callback = void (*)(ObjectBase*);
    Callback callback = record->Enable ? &Script_MarkCharacterAsScripted::Set : &Script_MarkCharacterAsScripted::Unset;
    Script_CharacterState_Callback(record->Target, module, callback);
}

// 0x455794 Script_MarkCharacterAsScripted::IsBlocking() const
// Returns false.
bool Script_MarkCharacterAsScripted::IsBlocking() const {
    return false;
}
