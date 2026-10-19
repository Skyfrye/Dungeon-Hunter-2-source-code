// Batch g1-game-world-TriggerTrap-4c3d15-1 (part 2 of 2): the base-object destructor, both constructors, the timeline and
// animation-event callbacks, the Lua getters, DeclareProperties, CanTrigger, Update, TransferVictims and SpecificUpdate.
// Declarations come from dh2/TriggerTrap.hpp, which needs no change for this batch. Part 1 holds the other TriggerTrap
// functions (createBindings, InitPost, Activate, Create, the Get* accessors, _Remove) and the complete-object destructor.
//
// The complete-object destructor 0x39e480 and the base-object destructor 0x39e58c have the same body. One C++ destructor
// serves both, and part 1 (g1-game-world-TriggerTrap-4c3d15-0.cpp) defines it. This file does not define it again.
//
// Layout facts used here (original 32-bit offsets, named in dh2/TriggerTrap.hpp and its bases):
//   ZoneEx +0x388 m_objectsInside (std::set, iterated by TransferVictims)
//   GameObject +0x2d8 m_visualObject (VisualObject*), +0x300 m_script (LuaScript*)
//   VisualObject +0x38 m_animController (AnimController*; PlayClip is its vtable slot +0x20)
//   ObjectBase +0x84 m_static (set true by the constructor), +0x85 unk_85 (updating flag, set to 1 by the constructor)
//   TriggerTrap +0x3c0 m_dataIndex, +0x3c4 m_activated, +0x3c8 m_newVictims, +0x3e0 m_victims, +0x3f8 m_owner,
//               +0x3fc m_damagerIndex, +0x400 m_removing, +0x401 m_idle
//   sfc::script::lua::Arguments +0x04 m_values (std::vector<Value>*), ReturnValues +0x24 m_valueList (same type)
//
// Include notes: glitch-scene-collada-gui/collada/CEventsManager.hpp gives STriggeredEvent (eventName at +0x04).

#include "dh2/TriggerTrap.hpp"

#include <string>
#include <vector>

#include "dh2/AnimController.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"

// 0x39e56c _ZN11TriggerTrapD0Ev
// skipped: the deleting destructor is compiler-generated from TriggerTrap::~TriggerTrap() (part 1, 0x39e480). The original
// body is the base-object destructor 0x39e58c followed by CustomFree(this), which is what delete does.

// 0x39e58c _ZN11TriggerTrapD2Ev
// Base-object destructor with the same body as the complete-object destructor 0x39e480, which part 1 defines as
// TriggerTrap::~TriggerTrap(). The original erases m_victims (+0x3e0), erases m_newVictims (+0x3c8), frees the m_data
// string (+0x3a8) and calls ZoneEx::~ZoneEx. The implicit member and base destructors give the same order (reverse
// declaration order), so no body is needed here.

// 0x39e670 _ZN11TriggerTrapC2EN10ObjectBase6GO_IDSE
// 0x39ecd4 _ZN11TriggerTrapC1EN10ObjectBase6GO_IDSE
// Both constructors have this body. ZoneEx is constructed with hasPhysics = 1 and playerOnly = 0. The std::set and
// std::string members are default-constructed. The other members get the values the original stores.
TriggerTrap::TriggerTrap(ObjectBase::GO_IDS id) : ZoneEx(id, true, false) {
    m_dataIndex = -1;       // +0x3c0
    m_activated = false;    // +0x3c4
    m_damagerIndex = -1;    // +0x3fc
    m_owner = nullptr;      // +0x3f8
    m_removing = false;     // +0x400
    m_idle = false;         // +0x401
    m_static = true;        // +0x84 (ObjectBase)
    unk_85 = 1;             // +0x85 (ObjectBase), the updating flag
}

// 0x39e738 _ZN11TriggerTrap10__CallbackEPN6glitch5scene19ITimelineControllerEPv
// Timeline callback. The controller is unused. The user pointer is the trap. Every call runs DebugSwitches::load() and
// GetSwitch("isTracingTriggerTrap"), and the switch value is not used. Then:
//   m_removing set: SetVisible(false) (vtable +0x40), then Delete().
//   else m_activated set: clear it, clear m_victims, and play "idle" on the animation controller of the visual.
//   else m_idle clear: set it, and play "idle" on the animation controller of the visual.
// The two plays are PlayClip("idle", loop = true, 0, 0). The Hex-Rays call of the second play shows only two arguments,
// but the assembly leaves R2 = 1 from the m_idle store and sets R3 and the stack slot to 0 (the old m_idle byte).
void TriggerTrap::__Callback(glitch::scene::ITimelineController* controller, void* user) {
    (void)controller;
    TriggerTrap* trap = static_cast<TriggerTrap*>(user);
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingTriggerTrap"));
    if (trap->m_removing) {
        trap->SetVisible(false);
        trap->Delete();
    } else if (trap->m_activated) {
        // The original stores m_removing (0 on this path) into m_activated.
        trap->m_activated = false;
        trap->m_victims.clear();
        VisualObject* visual = trap->m_visualObject;
        if (visual != nullptr) {
            visual->m_animController->PlayClip("idle", true, 0, 0);
        }
    } else if (!trap->m_idle) {
        trap->m_idle = true;
        VisualObject* visual = trap->m_visualObject;
        if (visual != nullptr) {
            visual->m_animController->PlayClip("idle", true, 0, 0);
        }
    }
}

// 0x39e8ec _ZN11TriggerTrap17DeclarePropertiesEv
// Zone's properties first (Zone::DeclareProperties adds "dimensions"), then "data": a std::string member m_data, with an
// empty default. The original builds the property object by hand (0x38 bytes, the SimpleTypeProperty<std::string> layout).
// AddProperty<std::string> builds the same object.
void TriggerTrap::DeclareProperties() {
    Zone::DeclareProperties();
    AddProperty<std::string>("data", m_data);
}

// 0x39ea64 _ZN11TriggerTrap11_GetDamagerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Lua binding: pushes the trap's damager id, from the virtual GetDamagerId() (vtable +0xe4), as an integer.
void TriggerTrap::_GetDamager(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user) {
    (void)args;
    ret.pushInteger(static_cast<TriggerTrap*>(user)->GetDamagerId());
}

// 0x39ea90 _ZN11TriggerTrap9_GetOwnerERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Lua binding: pushes m_owner (+0x3f8) as user data.
void TriggerTrap::_GetOwner(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* user) {
    (void)args;
    ret.pushUserData(static_cast<TriggerTrap*>(user)->m_owner);
}

// 0x39ea9c _ZN11TriggerTrap10CanTriggerEP10GameObject
// With a script, calls OnTrigger(other). The result is false when the first return value is the boolean false (Lua
// type tag 1). Without a script, or when the script does not refuse, the result is true.
bool TriggerTrap::CanTrigger(GameObject* other) {
    if (m_script != nullptr) {
        sfc::script::lua::Arguments args;
        sfc::script::lua::ReturnValues ret;
        args.pushUserData(other);
        m_script->Call("OnTrigger", args, ret);
        const std::vector<sfc::script::lua::Value>& values = *ret.m_valueList;
        if (!values.empty() && values.front().m_type == 1 && !values.front().getBool()) {
            return false;
        }
    }
    return true;
}

// 0x39ec78 _ZN11TriggerTrap15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
// Animation event callback. When the trap has a script, the event name (STriggeredEvent +0x04) is passed to OnAnimEvent.
void TriggerTrap::__EventCallback(const glitch::collada::STriggeredEvent& event, void* user) {
    TriggerTrap* trap = static_cast<TriggerTrap*>(user);
    if (trap->m_script != nullptr) {
        sfc::script::lua::Arguments args;
        args.pushString(event.eventName);
        trap->m_script->Call("OnAnimEvent", args);
    }
}

// 0x39eedc _ZN11TriggerTrap6UpdateEv
// Runs ZoneEx::Update and syncs the visual. It then calls SpecificUpdate (virtual, vtable +0xf4). When m_dataIndex is set,
// every object in m_newVictims that is a Character is hit: with a script, OnDamageRoll gets the character as its only
// argument; without one, F_GOAttack and F_ApplyResult are applied with the damager id and hurt chance from the virtuals.
// Last, every object in m_newVictims moves into m_victims, and m_newVictims is cleared.
void TriggerTrap::Update() {
    ZoneEx::Update();
    if (m_visualObject != nullptr) {
        m_visualObject->Sync();
    }
    SpecificUpdate();
    if (m_dataIndex >= 0) {
        sfc::script::lua::Arguments args;
        args.pushNil();
        for (GameObject* victim : m_newVictims) {
            ObjectHandle handle = victim->GetHandle();
            Character* character = handle;
            if (character == nullptr) {
                continue;
            }
            if (m_script != nullptr) {
                // The one argument. pushNil made the front element, and setUserData replaces its nil with the character.
                args.m_values->front().setUserData(character);
                m_script->Call("OnDamageRoll", args);
            } else {
                int damagerId = GetDamagerId();   // vtable +0xe4
                int hurtChance = GetHurtChance(); // vtable +0xe8
                Character::AttackResult result;
                Character::F_GOAttack(result, this, character, damagerId, hurtChance);
                Character::F_ApplyResult(result, this, character, false);
            }
        }
    }
    for (GameObject* victim : m_newVictims) {
        m_victims.insert(victim);
    }
    m_newVictims.clear();
}

// 0x39f168 _ZN11TriggerTrap15TransferVictimsEv
// Walks ZoneEx::m_objectsInside in order. An object is queued in m_newVictims when it is in neither m_victims nor
// m_newVictims and CanTrigger accepts it. The original's return value is a leftover register, so this returns void.
void TriggerTrap::TransferVictims() {
    for (GameObject* object : m_objectsInside) {
        if (m_victims.count(object) != 0 || m_newVictims.count(object) != 0) {
            continue;
        }
        if (!CanTrigger(object)) {
            continue;
        }
        m_newVictims.insert(object);
    }
}

// 0x39f2e8 _ZN11TriggerTrap14SpecificUpdateEv
// Queues new victims through TransferVictims. When some are queued and the trap is not activated, Activate() (virtual,
// vtable +0xf0) runs. The original returns TransferVictims' leftover register; Update ignores it, so this returns void.
void TriggerTrap::SpecificUpdate() {
    TransferVictims();
    if (!m_newVictims.empty() && !m_activated) {
        Activate();
    }
}
