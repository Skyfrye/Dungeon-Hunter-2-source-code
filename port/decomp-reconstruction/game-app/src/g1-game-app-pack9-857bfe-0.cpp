// Batch g1-game-app-pack9-857bfe-0 (game-app, nine script command classes): the IsBlocking and Execute bodies of
// Script_PutCharacterInIdle, Script_PutCharacterInLimbus, Script_ReEquipHands, Script_RestartLevel, Script_SaveGame,
// Script_SetActorMaster, Script_SetActorPosition, Script_SetCamera and Script_SetCameraClip (ELF 0x455678 .. 0x45e5c8).
//
// Facts shared by the commands:
//   - Each Execute reads its argument record from ScriptCmdImpl::m_args (+0x0c). The record is the pydata-accessors
//     Structs::<Name> of the command (pydata-accessors/script_cmd.hpp), whose member m_wN is the word at 4*N. The
//     asm loads the name pointers at record +0x0c, +0x10, +0x14, +0x1c and the flags at +0x08, the same words.
//   - Every Execute starts with the tracing switch: DebugSwitches::load(), then GetSwitch("isTracingScriptCmd") with
//     the result discarded. TraceScriptCmdSwitch below does the same.
//   - Every named lookup is ObjectManager::GetObjectByName(name, module, false, nullptr), where module is the Execute
//     argument a3 and the global ObjectManager is Application::m_objectManager (asm: Singleton<Application>::s_inst
//     + 0x38, the global dword_99F764).
//
// Every command in this batch is complete (Script_RestartLevel calls Level::Restart; Script_SaveGame, Script_SetActorPosition and
// Script_SetCameraClip use the declared Level, CameraLevel, LevelConfig, PlayerInfo (unk_660, the character at +0x660) and
// PlayerManager (dword_99F76C) members).

#include <cstdint>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "pydata-accessors/script_cmd.hpp"

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/ScriptCmdImpl.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/Script_PutCharacterInIdle.hpp"
#include "dh2/Script_PutCharacterInLimbus.hpp"
#include "dh2/Script_ReEquipHands.hpp"
#include "dh2/Script_RestartLevel.hpp"
#include "dh2/Script_SaveGame.hpp"
#include "dh2/Script_SetActorMaster.hpp"
#include "dh2/Script_SetActorPosition.hpp"
#include "dh2/Script_SetCamera.hpp"
#include "dh2/Script_SetCameraClip.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "dh2/global/script_character_callback.hpp"

// The static flag set by Script_PutCharacterInIdle::Execute and read by SetState. Zero before the first Execute.
bool Script_PutCharacterInIdle::waitForAnim = false;

// Start of every Execute in this batch: DebugSwitches::load() and GetSwitch("isTracingScriptCmd"), result discarded.
// GetInstance() is the only public route to DebugSwitches::s_inst (s_inst is private in dh2/DebugSwitches.hpp), and the
// load is repeated on each call as in the original.
static void TraceScriptCmdSwitch() {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
}

// ---- Script_PutCharacterInIdle ----

// 0x45578c Script_PutCharacterInIdle::IsBlocking() const
bool Script_PutCharacterInIdle::IsBlocking() const {
    return false;
}

// 0x45971c Script_PutCharacterInIdle::SetState(ObjectBase*)
// Callback for Script_CharacterState_Callback. The object's handle resolves to a Character. When that character is not
// dead (vtable +0x34, Character::IsDead), not in limbus and not awaiting to spawn (CharStateMachine at +0x4fc), it is
// put into the idle state with the static waitForAnim flag. The asm calls ObjectBase::GetHandle on the argument object
// (the second argument register holds it), so the handle is the object's own.
void Script_PutCharacterInIdle::SetState(ObjectBase* obj) {
    if (!obj) {
        return;
    }
    ObjectHandle handle = obj->GetHandle();
    Character* character = handle;
    if (!character || character->IsDead()) {
        return;
    }
    CharStateMachine& machine = *character;
    if (machine.SM_IsInLimbus() || machine.SM_IsAwaitingToSpawn()) {
        return;
    }
    machine.SM_SetIdleState(waitForAnim);
}

// 0x45d590 Script_PutCharacterInIdle::Execute(bool, int)
// Stores !skipping in waitForAnim, then runs the state callback on the named character (record m_w3, the name at +0x0c).
void Script_PutCharacterInIdle::Execute(bool skipping, int module) {
    auto* args = static_cast<Structs::PutCharacterInIdle*>(m_args);
    TraceScriptCmdSwitch();
    waitForAnim = !skipping;
    Script_CharacterState_Callback(args->Target, module, &Script_PutCharacterInIdle::SetState);
}

// ---- Script_PutCharacterInLimbus ----

// 0x45577c Script_PutCharacterInLimbus::IsBlocking() const
bool Script_PutCharacterInLimbus::IsBlocking() const {
    return false;
}

// 0x45f4e8 Script_PutCharacterInLimbus::Execute(bool, int)
// Looks up the named character (record m_w4, +0x10) and sets its limbus state to the record flag m_w2 (+0x08).
void Script_PutCharacterInLimbus::Execute(bool /*skipping*/, int module) {
    auto* args = static_cast<Structs::PutCharacterInLimbus*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle =
        ApplicationGetInstance().m_objectManager->GetObjectByName(args->Target, module, false, nullptr);
    Character* character = handle;
    if (character) {
        CharStateMachine& machine = *character;
        machine.SM_SetLimbusState(args->AutoSpawn);
    }
}

// ---- Script_ReEquipHands ----

// 0x455808 Script_ReEquipHands::IsBlocking() const
bool Script_ReEquipHands::IsBlocking() const {
    return false;
}

// 0x45d95c Script_ReEquipHands::Execute(bool, int)
// Looks up the named character (record m_w3, +0x0c). When the object resolves to a character, each hand whose slot
// field is not -1 is re-equipped through Character::EquipItemToSlot (vtable +0x13c): hand item 1 with slot unk_14f4,
// then hand item 2 with slot unk_14f8. Hex-Rays prints only the item argument. The asm loads the slot field into the
// third argument register before each call.
void Script_ReEquipHands::Execute(bool /*skipping*/, int module) {
    auto* args = static_cast<Structs::ReEquipHands*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle =
        ApplicationGetInstance().m_objectManager->GetObjectByName(args->Target, module, false, nullptr);
    if (!handle.GetObject(false)) {
        return;
    }
    Character* character = handle;
    if (!character) {
        return;
    }
    if (character->unk_14f4 != -1) {
        character->EquipItemToSlot(1u, static_cast<unsigned int>(character->unk_14f4));
    }
    if (character->unk_14f8 != -1) {
        character->EquipItemToSlot(2u, static_cast<unsigned int>(character->unk_14f8));
    }
}

// ---- Script_RestartLevel ----

// 0x4558f4 Script_RestartLevel::IsBlocking() const
bool Script_RestartLevel::IsBlocking() const {
    return false;
}

// 0x45cdd0 Script_RestartLevel::Execute(bool, int)
// After the trace probe, the current level (Application::GetCurrentLevel), when there is one, restarts (Level::Restart).
void Script_RestartLevel::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->Restart();
    }
}

// ---- Script_SaveGame ----

// 0x455928 Script_SaveGame::IsBlocking() const
bool Script_SaveGame::IsBlocking() const {
    return false;
}

// 0x45c994 Script_SaveGame::Execute(bool, int)
// The original clears the current level's save block and quick-saves it (Level::SG_BlockLevel(false), then
// Level::QuickSave(false)). Then it gets the local player's character (PlayerManager::GetLocalPlayer(0, true), the
// PlayerInfo at +0x660, character_660), and when that is set clears its save block (Character::SG_Block(false)) and
// saves it (Character::SG_Save).
void Script_SaveGame::Execute(bool /*skipping*/, int /*module*/) {
    TraceScriptCmdSwitch();
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr) {
        level->SG_BlockLevel(false);
        level->QuickSave(false);
    }
    PlayerInfo* player = dword_99F76C->GetLocalPlayer(0, true);
    Character* character = player->unk_660;
    if (character != nullptr) {
        character->SG_Block(false);
        character->SG_Save();
    }
}

// ---- Script_SetActorMaster ----

// 0x455840 Script_SetActorMaster::IsBlocking() const
bool Script_SetActorMaster::IsBlocking() const {
    return false;
}

// 0x45e4b8 Script_SetActorMaster::Execute(bool, int)
// Resolves the actor (record m_w7, the name at +0x1c) and the master (record m_w4, the name at +0x10). When both
// resolve to characters, the master is set on the actor's CharAI (the base at Character +0x3c8).
void Script_SetActorMaster::Execute(bool /*skipping*/, int module) {
    auto* args = static_cast<Structs::SetActorMaster*>(m_args);
    TraceScriptCmdSwitch();
    ObjectManager* objects = ApplicationGetInstance().m_objectManager;
    ObjectHandle actorHandle = objects->GetObjectByName(args->Target, module, false, nullptr);
    Character* actor = actorHandle;
    ObjectHandle masterHandle = objects->GetObjectByName(args->Master, module, false, nullptr);
    Character* master = masterHandle;
    if (master && actor) {
        actor->CharAI::AI_SetMaster(master);
    }
}

// ---- Script_SetActorPosition ----

// 0x455838 Script_SetActorPosition::IsBlocking() const
bool Script_SetActorPosition::IsBlocking() const {
    return false;
}

namespace {

// Moves the character of player friendlyId (PlayerInfo unk_660, +0x660) to pos: GameObject::SetPosition(pos, true) and
// ForceUpdatePosition. A player with no character is skipped. The original reads the player through
// PlayerManager::GetPlayer(n, false), which returns the null record rather than null.
void MovePlayerCharacter(int friendlyId, const Point3D<float>& pos) {
    PlayerInfo* player = dword_99F76C->GetPlayer(friendlyId, false);
    GameObject* object = player->unk_660;
    if (object != nullptr) {
        object->SetPosition(pos, true);
        object->ForceUpdatePosition();
    }
}

}  // namespace

// 0x45e5c8 Script_SetActorPosition::Execute(bool, int)
// Resolves the actor (record m_w5, the name at +0x14) and the reference object (record m_w3, the name at +0x0c). When both
// resolve, the actor's handle is checked: when it is a character, its CharStateMachine is set to idle with flag false and,
// when Character::IsPlayer() is true, the three player characters are moved (player 1 to the reference position minus 200 on
// x, player 2 plus 200 on x, player 3 minus 200 on y). Then the actor is moved to the reference position (GameObject m_position,
// +0x160, SetPosition with setDestination true) and ForceUpdatePosition is called. The original also adds 0.0 to each
// component that a player move does not change; that changes only the sign of a -0.0 and is not written here.
void Script_SetActorPosition::Execute(bool /*skipping*/, int module) {
    auto* args = static_cast<Structs::SetActorPosition*>(m_args);
    TraceScriptCmdSwitch();
    ObjectManager* objects = ApplicationGetInstance().m_objectManager;
    ObjectHandle targetHandle = objects->GetObjectByName(args->Target, module, false, nullptr);
    GameObject* target = targetHandle;
    ObjectHandle referenceHandle = objects->GetObjectByName(args->Position, module, false, nullptr);
    GameObject* reference = referenceHandle;
    if (!reference || !target) {
        return;
    }
    ObjectHandle handle = target->GetHandle();
    Character* character = handle;
    if (character) {
        CharStateMachine& machine = *character;
        machine.SM_SetIdleState(false);
        if (character->IsPlayer()) {
            // Each player's position is read from the reference object again, as the original does.
            Point3D<float> pos = reference->m_position;
            pos.X -= 200.0f;
            MovePlayerCharacter(1, pos);
            pos = reference->m_position;
            pos.X += 200.0f;
            MovePlayerCharacter(2, pos);
            pos = reference->m_position;
            pos.Y -= 200.0f;
            MovePlayerCharacter(3, pos);
        }
    }
    target->SetPosition(reference->m_position, true);
    target->ForceUpdatePosition();
}

// ---- Script_SetCamera ----

// 0x455678 Script_SetCamera::Execute(bool, int)
// The original is a bare return (bx lr, 4 bytes): the command does nothing.
void Script_SetCamera::Execute(bool /*skipping*/, int /*module*/) {}

// 0x45567c Script_SetCamera::IsBlocking() const
bool Script_SetCamera::IsBlocking() const {
    return false;
}

// ---- Script_SetCameraClip ----

// 0x455684 Script_SetCameraClip::IsBlocking() const
bool Script_SetCameraClip::IsBlocking() const {
    return false;
}

// 0x45c670 Script_SetCameraClip::Execute(bool, int)
// The original reads the record's near value (m_w3, +0x0c) and far value (m_w2, +0x08), then sets the clip planes on the
// current level's camera node (CameraBase m_camera, +0x08, a glitch ICameraSceneNode): setNearValue (vtable +0x130) and
// setFarValue (vtable +0x134). A value above zero is set as it is. The value -2 selects the LevelConfig default: m_cameraZnear
// (+0x294) for near and m_cameraZfar (+0x298) for far. Level::GetLevelConfig() performs the original's inlined
// "m_levelConfig != 0" check (Level.h:476).
void Script_SetCameraClip::Execute(bool /*skipping*/, int /*module*/) {
    const auto* args = static_cast<const Structs::SetCameraClip*>(m_args);
    TraceScriptCmdSwitch();
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        return;
    }
    CameraLevel* camera = level->m_camera;
    if (camera == nullptr) {
        return;
    }
    glitch::scene::ICameraSceneNode* node = camera->m_camera;
    const std::int32_t nearValue = args->Near;
    const std::int32_t farValue = args->Far;
    if (nearValue > 0) {
        node->setNearValue(static_cast<float>(nearValue));
    } else if (nearValue == -2) {
        node->setNearValue(static_cast<float>(level->GetLevelConfig()->m_cameraZnear));
    }
    if (farValue > 0) {
        node->setFarValue(static_cast<float>(farValue));
        return;
    }
    if (farValue == -2) {
        node->setFarValue(static_cast<float>(level->GetLevelConfig()->m_cameraZfar));
    }
}
