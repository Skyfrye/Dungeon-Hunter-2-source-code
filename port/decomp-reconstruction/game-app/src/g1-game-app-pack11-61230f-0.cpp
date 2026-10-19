// Batch g1-game-app-pack11-61230f-0 (game-app, nine script commands, 19 ELF functions). Declarations: dh2/Script_<Name>.hpp,
// each derived from ScriptCmdImpl.
//
// What is reconstructed and what is not (each body's comment gives the detail):
//   - The nine IsBlocking() bodies return false, as the Hex-Rays bodies do.
//   - Reconstructed: Script_SkipCharMenuTutorialMessage, Script_SpawnCharacter, Script_SpawnContainer, Script_StartDialog
//     (Init and Execute) and Script_StartDialogID. Their argument records are the pydata Structs:: types
//     (pydata-accessors/script_cmd.hpp), the message queues are the MenuMessageManager<T,1>::s_inst statics (queue
//     m_queues[0]; instances at 0x99fb88 for DialogMsg and 0x99fbb4 for CharMenuTutorialMsg), and the object lookups
//     use the global ObjectManager at 0x99f764 (dh2/global/ObjectManagerInstance.hpp).
//   - PARTIAL: Script_SkipAllTutorialMessages and Script_SkipTutorialMessage need dh2/TutorialMsg.hpp, which does not exist
//     yet (the TutorialMsg singleton is at 0x99fb5c). Script_StopActor needs the ObjectManager map walk for "All", and
//     ObjectListItem is only forward-declared in dh2/ObjectManager.hpp.
//   - MenuMessageManager calls: the assembly calls the clones of EnqueueMessage, FlushEnqueuedMessages, Invoke and
//     SkipEnqueuedMessage with the queue index folded in. Each manager has one queue, so the index is 0. The clone of
//     EnqueueMessage passes the bool flag (its last parameter) in the register after the message: 1 at the StartDialog call
//     site and 0 at the StartDialogID one.
//   - The MenuMessageManager statics have no definition in the tree yet. The integrator supplies them with the other
//     message-manager statics.
//   - The skipping argument: SpawnCharacter, SpawnContainer and StopActor ignore it, and their work runs whatever its value.
//     StartDialog and StartDialogID do nothing when it is set. SkipAllTutorialMessages, SkipCharMenuTutorialMessage and
//     SkipTutorialMessage ignore it.
//   - Hex-Rays gives some Execute bodies an int or pointer result. The slots are void, so that value is not part of the
//     contract.

#include <deque>
#include <string>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "pydata-accessors/script_cmd.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

#include "dh2/Application.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/Container.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/DialogMsg.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/TutorialMsg.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Script_SkipAllTutorialMessages.hpp"
#include "dh2/Script_SkipCharMenuTutorialMessage.hpp"
#include "dh2/Script_SkipTutorialMessage.hpp"
#include "dh2/Script_SpawnCharacter.hpp"
#include "dh2/Script_SpawnContainer.hpp"
#include "dh2/Script_StartDialog.hpp"
#include "dh2/Script_StartDialogID.hpp"
#include "dh2/Script_StopActor.hpp"
#include "dh2/Script_StopEffect.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/app_helpers.hpp"
#include "dh2/v2Controller.hpp"

namespace {

// The trace read that opens the Execute bodies: DebugSwitches::load(), then GetSwitch("isTracingScriptCmd") with the result
// discarded. Same sequence as the helper in g1-game-app-pack9-857bfe-0.cpp.
void TraceScriptCmdSwitch() {
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch(std::string("isTracingScriptCmd"));
}

}  // namespace

// 0x455948 Script_SkipAllTutorialMessages::IsBlocking() const
bool Script_SkipAllTutorialMessages::IsBlocking() const {
    return false;
}

// 0x46033c Script_SkipAllTutorialMessages::Execute(bool, int)
// Empties the tutorial queue (MenuMessageManager<TutorialMsg, 1> queue 0: the original advances the start cursor 8 bytes at a time,
// returning each 128-byte node it leaves), then calls SkipEnqueuedMessage, which finds the queue empty and does nothing.
void Script_SkipAllTutorialMessages::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    MenuMessageManager<TutorialMsg, 1>& manager = MenuMessageManager<TutorialMsg, 1>::s_inst;
    manager.m_queues[0].clear();
    manager.SkipEnqueuedMessage(0, false);
}

// 0x455958 Script_SkipCharMenuTutorialMessage::IsBlocking() const
bool Script_SkipCharMenuTutorialMessage::IsBlocking() const {
    return false;
}

// 0x4603d0 Script_SkipCharMenuTutorialMessage::Execute(bool, int)
// When the CharMenuTutorialMsg queue is not empty (start cur at 0x99fbb8 against finish cur at 0x99fbc8), the original pops
// its front. Then, when CharMenuTutorialMsg::s_SkipFuncName (0x9a54b4) is set, it calls
// MenuMessageManager<CharMenuTutorialMsg,1>::Invoke with that name and queue 0. The Hex-Rays int* result is the singleton's
// address, which the void slot does not use. The original runs no trace read.
void Script_SkipCharMenuTutorialMessage::Execute(bool /*skipping*/, int /*module*/) {
    MenuMessageManager<CharMenuTutorialMsg, 1>& manager = MenuMessageManager<CharMenuTutorialMsg, 1>::s_inst;
    std::deque<CharMenuTutorialMsg>& queue = manager.m_queues[0];
    if (!queue.empty()) {
        queue.pop_front();
        if (CharMenuTutorialMsg::s_SkipFuncName != nullptr) {
            manager.Invoke(CharMenuTutorialMsg::s_SkipFuncName, 0);
        }
    }
}

// 0x455940 Script_SkipTutorialMessage::IsBlocking() const
bool Script_SkipTutorialMessage::IsBlocking() const {
    return false;
}

// 0x460338 Script_SkipTutorialMessage::Execute(bool, int)
// A 4-byte tail branch to the clone of MenuMessageManager<TutorialMsg,1>::SkipEnqueuedMessage, which reads neither its queue nor
// its flag argument (the registers it receives are the command pointer and the skipping flag): the front tutorial message is skipped.
void Script_SkipTutorialMessage::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    MenuMessageManager<TutorialMsg, 1>::s_inst.SkipEnqueuedMessage(0, false);
}

// 0x455784 Script_SpawnCharacter::IsBlocking() const
bool Script_SpawnCharacter::IsBlocking() const {
    return false;
}

// 0x45f400 Script_SpawnCharacter::Execute(bool, int)
// The original runs the trace read, then looks the name up with ObjectManager::GetObjectByName(name, module, false, nullptr) on
// the global at 0x99f764 (dword_99F764). The assembly stores 0 in the stack slots for the active flag and the type, so the type
// is nullptr. When the handle converts to a Character, its CharStateMachine (+0x4fc) is put into the spawn state with
// SM_SetSpawnState(false, false). The skipping flag is not checked.
void Script_SpawnCharacter::Execute(bool /*skipping*/, int module) {
    const auto* args = static_cast<const Structs::SpawnCharacter*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(args->Target, module, false, nullptr);
    Character* character = handle;
    if (character != nullptr) {
        CharStateMachine& machine = *character;
        machine.SM_SetSpawnState(false, false);
    }
}

// 0x4558dc Script_SpawnContainer::IsBlocking() const
bool Script_SpawnContainer::IsBlocking() const {
    return false;
}

// 0x45d008 Script_SpawnContainer::Execute(bool, int)
// The original runs the trace read, then looks the name up with ObjectManager::GetObjectByName(name, module, false, nullptr) on
// the global at 0x99f764, converts the handle to Container*, and calls Container::Spawn() when that is non-null. The skipping
// flag is not checked. The Hex-Rays int* result is not used by the void slot.
void Script_SpawnContainer::Execute(bool /*skipping*/, int module) {
    const auto* args = static_cast<const Structs::SpawnContainer*>(m_args);
    TraceScriptCmdSwitch();
    ObjectHandle handle = dword_99F764->GetObjectByName(args->Target, module, false, nullptr);
    Container* container = handle;
    if (container != nullptr) {
        container->Spawn();
    }
}

// 0x45568c Script_StartDialog::IsBlocking() const
bool Script_StartDialog::IsBlocking() const {
    return false;
}

// 0x459034 Script_StartDialog::Init()
// The original sets the base flag unk_04 (+0x04) to (the record's int at +0x0c, the DialogStyles id) equal to
// PyDataConstants::getConstant("DialogStyles", "EnterLocationDialog"), read through Application m_pyDataConstants (+0x2c). The
// original returns that flag as bool. The ScriptCmdImpl Init slot is void, so the value is only stored in unk_04 here.
void Script_StartDialog::Init() {
    const auto* args = static_cast<const Structs::StartDialog*>(m_args);
    const int enterLocation =
        ApplicationGetInstance().m_pyDataConstants->getConstant("DialogStyles", "EnterLocationDialog");
    unk_04 = args->Style == enterLocation;
}

// 0x460fe8 Script_StartDialog::Execute(bool, int)
// When skipping is clear, the original runs the trace read. When the style (record m_w3, +0x0c) differs from the
// EnterLocationDialog constant, or the DialogMsg queue is empty, it builds DialogMsg(0, record m_w4, record m_w3, record m_w2)
// and enqueues it with MenuMessageManager<DialogMsg,1>::EnqueueMessage(message, queue 0, flag true). The assembly passes 1 as the
// flag at this call, and the message is destroyed after it. Otherwise it calls FlushEnqueuedMessages(queue 0). Does nothing when
// skipping is set.
void Script_StartDialog::Execute(bool skipping, int /*module*/) {
    if (skipping) {
        return;
    }
    const auto* args = static_cast<const Structs::StartDialog*>(m_args);
    TraceScriptCmdSwitch();
    MenuMessageManager<DialogMsg, 1>& manager = MenuMessageManager<DialogMsg, 1>::s_inst;
    const int enterLocation =
        ApplicationGetInstance().m_pyDataConstants->getConstant("DialogStyles", "EnterLocationDialog");
    if (args->Style != enterLocation || manager.m_queues[0].empty()) {
        DialogMsg message(0, args->Text, args->Style, args->Actor);
        manager.EnqueueMessage(message, 0, true);
    } else {
        manager.FlushEnqueuedMessages(0);
    }
}

// 0x455694 Script_StartDialogID::IsBlocking() const
bool Script_StartDialogID::IsBlocking() const {
    return false;
}

// 0x461114 Script_StartDialogID::Execute(bool, int)
// When skipping is clear, the original runs the trace read, then GetDialogMsgListById(record m_w2, list). When the list is found,
// each DialogMsg is enqueued with EnqueueMessage(message, queue 0, flag false) (the assembly passes 0). When the queue then holds
// exactly one message, Invoke(DialogMsg::s_StartFuncName[0], queue 0) runs (the name is "StartDialog"). The vector is destroyed on
// return. Does nothing when skipping is set.
void Script_StartDialogID::Execute(bool skipping, int /*module*/) {
    if (skipping) {
        return;
    }
    const auto* args = static_cast<const Structs::StartDialogID*>(m_args);
    TraceScriptCmdSwitch();
    std::vector<DialogMsg> messages;
    if (GetDialogMsgListById(args->DialogID, messages)) {
        MenuMessageManager<DialogMsg, 1>& manager = MenuMessageManager<DialogMsg, 1>::s_inst;
        for (const DialogMsg& message : messages) {
            manager.EnqueueMessage(message, 0, false);
        }
        if (manager.m_queues[0].size() == 1) {
            manager.Invoke(DialogMsg::s_StartFuncName[0], 0);
        }
    }
}

// 0x4557e0 Script_StopActor::IsBlocking() const
bool Script_StopActor::IsBlocking() const {
    return false;
}

// 0x45eec0 Script_StopActor::Execute(bool, int)
// The record's actor name (m_w3, +0x0c): a named character is stopped (the lookup is GetObjectByName(name, module, false, nullptr)); the
// name "All" (case-insensitive) stops every object of the ObjectManager map that has an object. A stop sets the controller's
// unk_009 byte around v2Controller::Cmd_Stop(). The skipping flag is not checked.
void Script_StopActor::Execute(bool /*skipping*/, int module) {
    const auto* args = static_cast<const Structs::StopActor*>(m_args);
    TraceScriptCmdSwitch();
    const char* name = args->Target;
    auto stop = [](Character* character) {
        character->m_controller->unk_009 = true;
        character->m_controller->Cmd_Stop();
        character->m_controller->unk_009 = false;
    };
    if (LC_API_STRCASECMP(name, "All") != 0) {
        ObjectHandle handle = dword_99F764->GetObjectByName(name, module, false, nullptr);
        if (handle.GetObject(false) != nullptr) {
            Character* character = handle;
            if (character != nullptr) {
                stop(character);
            }
        }
    } else {
        for (auto& entry : dword_99F764->m_objectMap) {
            if (entry.second.m_object != nullptr) {
                ObjectHandle handle = entry.second.m_object->GetHandle();
                Character* character = handle;
                if (character != nullptr) {
                    stop(character);
                }
            }
        }
    }
}

// 0x4556b4 Script_StopEffect::IsBlocking() const
bool Script_StopEffect::IsBlocking() const {
    return false;
}

// 0x459890 Script_StopEffect::Execute(bool, int)
// Drops the animated FX set whose id is the record's int at +0x08 (Structs::StopEffect::m_w2). The original tail-branches
// to VisualFXManager::DropAnimatedFXSetByID (0x494660) on the singleton. The skipping flag is not checked.
void Script_StopEffect::Execute(bool skipping, int module) {
    (void)skipping;
    (void)module;
    const Structs::StopEffect* record = static_cast<const Structs::StopEffect*>(m_args);
    VisualFXManager::s_inst.DropAnimatedFXSetByID(record->Effect);
}
