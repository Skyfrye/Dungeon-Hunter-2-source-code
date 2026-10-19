// CSInteract and CSKnockedBack bodies (batch g1-game-character-pack3-72cb83-0). Both states are stateless: the object
// holds only the vtable pointer, so every body works on the Character and its CharStateMachine subobject (the original's
// a3 + 0x4fc, reached here by the implicit upcast from Character*). Declarations come from dh2/CSInteract.hpp and
// dh2/CSKnockedBack.hpp. The ledger rows in game-character/ledger.d/g1-game-character-pack3-72cb83-0.csv repeat each status.

#include "dh2/CSInteract.hpp"
#include "dh2/CSKnockedBack.hpp"

#include <cstdint>
#include <string>

#include "core-platform/lc_api.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LiftableObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/v2Controller.hpp"

namespace {

// GO_IDS 6 is the LiftableObject id (GetNewInstance<LiftableObject> passes it, global/object_factory.hpp). ObjectBase
// names only GO_DOOR, so the value stays a plain constant here.
constexpr std::int32_t kGoIdLiftable = 6;

// CSInteract::OnFocus stores this into CharStateMachine +0x24 (Character +0x520): 25537 in the original.
constexpr std::uint32_t kInteractStateFlags = 0x63C1u;

// CSKnockedBack::OnFocus stores this into CharStateMachine +0x24 (Character +0x520): 9025 in the original.
constexpr std::uint32_t kKnockBackStateFlags = 0x2341u;

// CSKnockedBack::OnFocus filters the physics object with group 0, this category and this mask, no sensor (0x51C, 3, 0).
constexpr std::uint16_t kKnockBackCategory = 0x51Cu;
constexpr std::uint16_t kKnockBackMask = 3u;

// Runs the probe that the original performs for a tracing switch: load the switch table, then read the named switch.
// The bool is discarded. Both calls are the originals (DebugSwitches::load on &s_inst, then GetSwitch on the name).
void ProbeSwitch(const char* name) {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string(name));
}

// True when the object is a LiftableObject (+0xf4 is ObjectBase::m_goId, equal to 6 in the original).
bool IsLiftable(const LiftableObject* object) {
    return static_cast<std::int32_t>(object->m_goId) == kGoIdLiftable;
}

}  // namespace

// 0x3c007c CSInteract::~CSInteract()
// Empty: the Hex-Rays body is a bare return (4-byte bx lr). No member cleanup appears, and the base destructor runs
// implicitly, as in CSIdle.
CSInteract::~CSInteract() {}

// 0x3c07f0 CSInteract::~CSInteract() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original stores the CharState vtable (off_9663A8) into the object and calls CustomFree(this).

// 0x3c0080 CSInteract::OnUpdate(int,Character*,CharStateMachine*)
// Empty body (4-byte bx lr). The arguments are not read.
void CSInteract::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c1558 CSInteract::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Only event 40 does anything, and only when a held object exists (CharStateMachine +0x50, the interact target, Character
// +0x54c). The event name arrives as data. "release" releases the held liftable (if it is one) and clears the target.
// Any other name is handled only when it is "pick_up": when that liftable is not picked up, the interact kind
// (CharStateMachine +0x48, Character +0x544) becomes -1. The original's LC_API_STRCMP_0 is the strcmp wrapper LC_API_STRCMP.
void CSInteract::OnEvent(int, Character* character, CharStateMachine*, int event, void* data) {
    if (event != 40) {
        return;
    }
    auto* held = static_cast<LiftableObject*>(character->m_interactTarget);
    if (held == nullptr) {
        return;
    }
    const char* name = static_cast<const char*>(data);
    if (LC_API_STRCMP(name, "release") != 0) {
        if (LC_API_STRCMP(name, "pick_up") == 0 && IsLiftable(held) && !held->PickUp(character)) {
            character->m_interactKind = -1;
        }
    } else {
        if (IsLiftable(held)) {
            held->Release();
        }
        character->m_interactTarget = nullptr;
    }
}

// 0x3c4f8c CSInteract::OnBlur(int,Character*,CharStateMachine*,int)
// The original returns the last intermediate value (an int or a pointer), which the void slot drops. The effects:
// an NPC that is not sitting gets its saved rotation back (Character +0x145c, m_initialRotation). When the interact kind is 4
// or 5 (a held liftable) and the next state is not 13, 18 or 19 (the 0xC2000 mask), the held object is dropped if this
// character still owns it, and the interact target is cleared.
void CSInteract::OnBlur(int, Character* character, CharStateMachine*, int nextState) {
    ProbeSwitch("isTracingCharState");

    if (!character->IsCharSitting()) {
        if (character->IsNPC()) {
            character->GameObject::SetRotation(character->m_initialRotation);
        }
    }

    const auto state = static_cast<unsigned int>(nextState);
    const auto kind = static_cast<unsigned int>(character->m_interactKind);
    if (kind - 4u <= 1u && (state > 0x13u || ((1u << state) & 0xC2000u) == 0u)) {
        auto* held = static_cast<LiftableObject*>(character->m_interactTarget);
        if (held != nullptr) {
            if (IsLiftable(held) && held->m_owner == character) {
                held->Drop();
            }
            character->m_interactTarget = nullptr;
        }
    }
}

// 0x3c5548 CSInteract::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// The data argument is the target GameObject (the original passes it as a7 to v2Controller::Cmd_LookAt). A monster only
// returns the state machine to idle. Otherwise the state flags and the animation are set. A character that is not sitting
// and has the interact flag (CharStateMachine +0x4c, Character +0x548) looks at the target through its controller. Every
// character then stops sneaking.
void CSInteract::OnFocus(int, Character* character, CharStateMachine*, int, int, void* data) {
    ProbeSwitch("isTracingCharState");
    ProbeSwitch("isTracingCSInteract");

    // The original addresses the state machine as a3 + 1276, so these calls go through the character's subobject.
    CharStateMachine* sm = character;
    if (character->IsMonster()) {
        sm->SM_SetIdleState(false);
        return;
    }

    character->m_stateFlags = kInteractStateFlags;
    sm->SM_SetAnim(-1);
    if (!character->IsCharSitting()) {
        if (character->m_interactFlag) {
            character->m_controller->Cmd_LookAt(static_cast<GameObject*>(data));
        }
    }
    character->CancelSneaking();
}

// 0x3c8984 CSInteract::OnInit(int,Character*,CharStateMachine*)
// Registers the state's events. The original's sixth argument to SM_RegisterEvent (a 0 after the handler) is never read by
// the callee, so the rebuild passes four. The original's int result is dropped by the void slot.
void CSInteract::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* sm = character;
    sm->SM_RegisterEvent(stateId, 34, 3, &Character::CSM_AfterInteraction);
    sm->SM_RegisterEvent(stateId, 50008, 12, nullptr);
    sm->SM_RegisterEvent(stateId, 50010, 11, nullptr);
    sm->SM_RegisterEvent(stateId, 50011, 10, nullptr);
    sm->SM_RegisterEvent(stateId, 50012, 9, nullptr);
    sm->SM_RegisterEvent(stateId, 50013, 8, nullptr);
    sm->SM_RegisterEvent(stateId, 50005, 6, &Character::CSM_CanStopInteraction);
    sm->SM_RegisterEvent(stateId, 50001, 4, &Character::CSM_CanStopInteraction);
    sm->SM_RegisterEvent(stateId, 50002, 3, &Character::CSM_CanStopInteraction);
    sm->SM_RegisterEvent(stateId, 50007, 15, &Character::CSM_CanStopInteraction);
}

// 0x3c0034 CSKnockedBack::~CSKnockedBack()
// Empty: the Hex-Rays body is a bare return (4-byte bx lr). The base destructor runs implicitly.
CSKnockedBack::~CSKnockedBack() {}

// 0x3c088c CSKnockedBack::~CSKnockedBack() (deleting destructor, vtable slot 0x04)
// Not written: the compiler emits the deleting destructor from the virtual destructor above, and C++ delete covers it.
// The original stores the CharState vtable (off_9663A8) into the object and calls CustomFree(this).

// 0x3c0038 CSKnockedBack::OnUpdate(int,Character*,CharStateMachine*)
// Empty body (4-byte bx lr). The arguments are not read.
void CSKnockedBack::OnUpdate(int, Character*, CharStateMachine*) {}

// 0x3c48e0 CSKnockedBack::OnBlur(int,Character*,CharStateMachine*,int)
// Ends the knockback: the controller's block flag (v2Controller +0x08) goes off, then the physics object drops its
// filter and is pinned again. The original re-reads the physics pointer after the filter reset, and so does this body.
void CSKnockedBack::OnBlur(int, Character* character, CharStateMachine*, int) {
    ProbeSwitch("isTracingCharState");

    character->m_controller->m_blocked = false;
    PhysicalObject* physical = character->m_physicalObject;
    if (physical != nullptr) {
        physical->resetFilter();
        physical = character->m_physicalObject;
        if (physical != nullptr) {
            physical->pin();
        }
    }
}

// 0x3c4a48 CSKnockedBack::OnFocus(int,Character*,CharStateMachine*,int,int,void*)
// The data argument is the GameObject the character is knocked back against (the original's a7, passed to LookAt).
// The state machine's status word (+0x2c) decides the physics filter: when bit 0x8 is set and a physics object exists, the
// object gets the knockback filter (group 0, category 0x51C, mask 3). The status word is then rewritten: bit 0x10 replaces
// the whole word with 0x20, otherwise bit 0x20 is cleared. The controller is blocked for the knockback, the character looks
// at the target and stops sneaking, and the physics object is unpinned at the end.
void CSKnockedBack::OnFocus(int, Character* character, CharStateMachine* machine, int, int, void* data) {
    ProbeSwitch("isTracingCharState");
    ProbeSwitch("isTracingCSKnockedBack");

    character->m_stateFlags = kKnockBackStateFlags;
    CharStateMachine* sm = character;
    sm->SM_SetAnim(-1);

    std::uint32_t status = machine->m_statusFlags;
    if ((status & 0x8u) != 0) {
        PhysicalObject* physical = character->m_physicalObject;
        if (physical != nullptr) {
            physical->setFilter(0, kKnockBackCategory, kKnockBackMask, false);
            status = machine->m_statusFlags;
        }
    }
    machine->m_statusFlags = ((status & 0x10u) != 0) ? 0x20u : (status & ~0x20u);

    character->m_controller->m_blocked = true;
    character->GameObject::LookAt(static_cast<GameObject*>(data));
    character->CancelSneaking();

    PhysicalObject* physical = character->m_physicalObject;
    if (physical != nullptr) {
        physical->unpin();
    }
}

// 0x3c5ab0 CSKnockedBack::OnEvent(int,Character*,CharStateMachine*,int,void*)
// Event 35: when the character reports IsDead, its animator stops and its state machine enters the dead state at once.
// The original calls the object's IsDead slot (vtable +0x34) with the event id as a second argument; Character::IsDead takes
// no arguments, so the id is not passed. Event 39 resets the physics object's filter.
void CSKnockedBack::OnEvent(int, Character* character, CharStateMachine*, int event, void*) {
    if (event == 35) {
        if (character->IsDead()) {
            CharAnimator* animator = character;
            animator->ANIM_Stop();
            CharStateMachine* sm = character;
            sm->SM_SetDeadState(true, nullptr, true);
        }
    } else if (event == 39) {
        PhysicalObject* physical = character->m_physicalObject;
        if (physical != nullptr) {
            physical->resetFilter();
        }
    }
}

// 0x3c87d8 CSKnockedBack::OnInit(int,Character*,CharStateMachine*)
// Registers the state's events. The original's sixth argument to each SM_RegisterEvent call is never read by the callee,
// so the rebuild passes four. The original's int result is dropped by the void slot.
void CSKnockedBack::OnInit(int stateId, Character* character, CharStateMachine*) {
    CharStateMachine* sm = character;
    sm->SM_RegisterEvent(stateId, 34, 3, nullptr);
    sm->SM_RegisterEvent(stateId, 50008, 12, &Character::CSM_Interrupted);
}
