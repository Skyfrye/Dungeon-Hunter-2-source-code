// Batch g1-game-world-Door-478d47-0 (part 0 of 2): the Door predicates, the Lua bindings, the open and
// close state changes, the net-struct and serialization hooks, and the InitFinal and InitPost lifecycle
// hooks. Declarations come from dh2/Door.hpp. Original 32-bit size 0x6d0.
//
// REDO (batch r2a-game-world-Door-478d47-0): the PFWorld flag calls (dh2/PFWorld.hpp through Singleton<PFWorld>),
// the Lua bindings (dh2/sfc/script/lua/Binder.hpp), the physics body (dh2/PODecor.hpp on ApplicationGetInstance()),
// the door-name index and the SetVisible branch are written now. The functions below are reconstructed unless
// marked PARTIAL.
//
// Partial functions and what is missing:
//   - Open, Close: VoxSoundManager::Play3D for the door sound. dh2/vox-audio does not declare Play3D or s_instance.
//   - InitPost: the door index (m_doorIndex), the m_dae name and the two VoxSoundManager::LoadSound calls.
//     See the comment on InitPost.
//
// Byte at +0x373 (Door::Opened sets it, Door::Closed clears it): GameObject.hpp names it m_idleSoundMuted and
// records that Door::Opened and Door::Closed store it there. The offset is exact. The Door meaning is not verified.

#include "dh2/Door.hpp"

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/sfc/script/lua/Binder.hpp"
#include "dh2/Point3D.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "pydata-accessors/name_table.hpp"
#include "vox-audio/vox/sound_manager.hpp"

#include <cstring>

// Reads the 32-bit word at `offset` of the Arrays::Doors element `index` (the raw table is decoded at its file layout).
static std::int32_t DoorTableWord(int index, std::uint32_t offset) {
    // Typed access: the table holds host Structs::Door records (sizeof(Door) is not the original 24-byte stride).
    const Structs::Door& row = reinterpret_cast<const Structs::Door*>(Arrays::Doors::members)[index];
    switch (offset) {
        case 12: return row.SoundClose;
        case 16: return row.SoundOpen;
        case 20: return row.Visual;
        default: return 0;
    }
}

// Plays the door sound at the door position: VoxSoundManager::Play3D(s_instance, sound, m_position, false, 1, -1, -1).
static void PlayDoorSound(int index, std::uint32_t offset, const Point3D<float>& position) {
    if (index == -1 || VoxSoundManager::s_instance == nullptr) {
        return;
    }
    const glitch::core::vector3d<float> at{position.X, position.Y, position.Z};
    VoxSoundManager::s_instance->Play3D(DoorTableWord(index, offset), at, false, 1, -1.0f, -1.0f);
}

// 0x3e7498 _ZNK4Door11IsUpdatableEv
bool Door::IsUpdatable() const {
    return true;
}

// 0x3e74a0 _ZNK4Door10IsAnimatedEv
bool Door::IsAnimated() const {
    return true;
}

// 0x3e74a8 _ZNK4Door13IsInteractiveEP10GameObject
// The argument is ignored: a door is never interactive.
bool Door::IsInteractive(GameObject* /*by*/) const {
    return false;
}

// 0x3e74b0 _ZNK4Door9IsZonableEv
bool Door::IsZonable() const {
    return true;
}

// 0x3e74b8 _ZNK4Door13getUDTypeNameEv
const char* Door::getUDTypeName() const {
    return "Door";
}

// 0x3e74c8 _ZN4Door14createBindingsERN3sfc6script3lua6BinderE
// GameObject::createBindings first. Then Open and Close are bound twice: as functions with the Door as the user
// pointer, and as methods (the non-template Binder::bindMethod overload, which takes a plain callback).
void Door::createBindings(sfc::script::lua::Binder& binder) {
    GameObject::createBindings(binder);
    binder.bindFunction("Open", &Door::_Open, this);
    binder.bindMethod("Open", &Door::_Open);
    binder.bindFunction("Close", &Door::_Close, this);
    binder.bindMethod("Close", &Door::_Close);
}

// 0x3e7560 _ZN4Door6UpdateEv
void Door::Update() {
    // +0x370 m_idleSoundId (int16, -1 = no idle sound)
    if (m_idleSoundId >= 0) {
        GameObject::UpdateIdleSound();
    }
    // +0x2d8 m_visualObject
    if (m_visualObject != nullptr) {
        m_visualObject->Sync();
    }
    GameObject::RequireOnlineUpdate();
}

// 0x3e7598 _ZN4Door6ClosedEb
// Settles the door in DOOR_CLOSED: the animation (unless silent), the physics filter, the dead-end flag of the
// floor under the door's path object (set), and the +0x373 byte cleared.
void Door::Closed(bool silent) {
    m_state = DOOR_CLOSED;                                  // +0x3a8
    VisualObject* visual = m_visualObject;                  // +0x2d8
    PhysicalObject* physical = m_physicalObject;            // +0x2dc
    if (visual != nullptr && !silent) {
        // VisualObject +0x38 m_animController, AnimController vtable +0x20 PlayClip(name, loop, unused, animIndex)
        visual->m_animController->PlayClip("IdleClosed", true, 0, 0);
    }
    if (physical != nullptr) {
        physical->enableFilter();
    }
    // PFWorld::FlagFloorAsDeadEnd(Singleton<PFWorld>::s_inst, this +0x1c8 (m_pfObject), true)
    Singleton<PFWorld>::s_inst.FlagFloorAsDeadEnd(m_pfObject, true);
    m_idleSoundMuted = 0;                                   // +0x373 (see the file comment)
}

// 0x3e763c _ZN4Door5CloseEb
// The door sound (Arrays::Doors element word +12) plays at m_position after either branch, when m_doorIndex != -1.
// The PlayClip arguments are checked in the assembly: loop 0, unused 0, animIndex 0.
void Door::Close(bool instant) {
    // !m_moving && m_state == DOOR_OPENED, otherwise nothing happens
    if (m_moving || m_state != DOOR_OPENED) {
        return;
    }
    VisualObject* visual = m_visualObject;                  // +0x2d8
    // Closes at once when there is no visual, the close is instant, or the door is zonable with zoning
    // enabled (+0x2ee) and nobody inside (+0x2f0). Otherwise the closing animation plays.
    if (visual == nullptr || instant || (IsZonable() && m_zoningEnabled != 0 && m_inZone == 0)) {
        Closed(false);
    } else {
        m_state = DOOR_CLOSING;                             // +0x3a8
        m_moving = true;                                    // +0x3ac
        unk_85 = 0;                                         // ObjectBase +0x85
        visual->m_animController->PlayClip("Close", false, 0, 0);
    }
    PlayDoorSound(m_doorIndex, 12, m_position);
}

// 0x3e777c _ZN4Door6_CloseERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// The Lua callback receives the Door as its user pointer.
void Door::_Close(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/, void* user) {
    static_cast<Door*>(user)->Close(false);
}

// 0x3e7788 _ZN4Door6OpenedEb
// Settles the door in DOOR_OPENED: the animation (unless silent), the physics filter, the dead-end flag of the floor
// under the door's path object (cleared), and the +0x373 byte set.
void Door::Opened(bool silent) {
    m_state = DOOR_OPENED;                                  // +0x3a8
    VisualObject* visual = m_visualObject;                  // +0x2d8
    PhysicalObject* physical = m_physicalObject;            // +0x2dc
    if (visual != nullptr && !silent) {
        // The assembly loads loop = 1 (R2), and unused and animIndex are the silent argument (R3 and the stack slot),
        // which is 0 on the path that plays the clip.
        visual->m_animController->PlayClip("IdleOpened", true, 0, 0);
    }
    if (physical != nullptr) {
        physical->disableFilter();
    }
    // PFWorld::FlagFloorAsDeadEnd(Singleton<PFWorld>::s_inst, this +0x1c8 (m_pfObject), false)
    Singleton<PFWorld>::s_inst.FlagFloorAsDeadEnd(m_pfObject, false);
    m_idleSoundMuted = 1;                                   // +0x373 (see the file comment)
}

// 0x3e7828 _ZN4Door26InterpretIncomingNetStructEb
// Moves the door to match the incoming open flag (m_netIn.m_open, the value byte at +0x68d). Its own logic
// matches the pseudocode; it calls Opened and Closed.
void Door::InterpretIncomingNetStruct(bool force) {
    if (!force) {
        return;
    }
    const bool netOpen = m_netIn.m_open.GetValue();         // Door +0x540 m_netIn, +0x130 m_open, value +0x1d
    const bool settling = (m_state == DOOR_OPENED || m_state == DOOR_OPENING);
    if (netOpen) {
        if (!settling) {
            Opened(false);
        }
    } else {
        if (settling) {
            Closed(netOpen);
        }
    }
}

// 0x3e786c _ZN4Door4OpenEb
// The door sound (Arrays::Doors element word +16) plays at m_position after either branch, when m_doorIndex != -1.
// The PlayClip arguments are checked in the assembly: loop 0, unused 0, animIndex 0.
void Door::Open(bool instant) {
    // !m_moving && m_state == DOOR_CLOSED, otherwise nothing happens
    if (m_moving || m_state != DOOR_CLOSED) {
        return;
    }
    VisualObject* visual = m_visualObject;                  // +0x2d8
    if (visual == nullptr || instant || (IsZonable() && m_zoningEnabled != 0 && m_inZone == 0)) {
        Opened(false);
    } else {
        m_state = DOOR_OPENING;                             // +0x3a8
        m_moving = true;                                    // +0x3ac
        unk_85 = 0;                                         // ObjectBase +0x85
        visual->m_animController->PlayClip("Open", false, 0, 0);
    }
    PlayDoorSound(m_doorIndex, 16, m_position);
}

// 0x3e79a8 _ZN4Door5_OpenERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// The Lua callback receives the Door as its user pointer.
void Door::_Open(const sfc::script::lua::Arguments& /*args*/, sfc::script::lua::ReturnValues& /*ret*/, void* user) {
    static_cast<Door*>(user)->Open(false);
}

// 0x3e7a6c _ZN4Door11DeserializeEP11IStreamBase
// The state is read as a 4-byte DoorStates, then the door is settled without playing the animation.
void Door::Deserialize(IStreamBase* stream) {
    GameObject::Deserialize(stream);
    stream->readAs<DoorStates>(m_state);                    // +0x3a8
    if (m_state == DOOR_OPENED || m_state == DOOR_OPENING) {
        Opened(false);
    } else {
        Closed(false);
    }
}

// 0x3e7b74 _ZN4Door9SerializeEP11IStreamBase
void Door::Serialize(IStreamBase* stream) {
    GameObject::Serialize(stream);
    stream->writeAs<DoorStates>(m_state);                   // +0x3a8
}

// 0x3e7b94 _ZN4Door8DisabledEv
// The GameObject disable runs first. When the door is not open, the dead-end flag of its floor is set.
void Door::Disabled() {
    GameObject::Disabled();
    if (m_state != DOOR_OPENED) {
        Singleton<PFWorld>::s_inst.FlagFloorAsDeadEnd(m_pfObject, false);  // +0x1c8 m_pfObject
    }
}

// 0x3e7bd8 _ZN4Door7EnabledEv
// The GameObject enable runs first. When the door is not open, the dead-end flag of its floor is cleared.
void Door::Enabled() {
    GameObject::Enabled();
    if (m_state != DOOR_OPENED) {
        Singleton<PFWorld>::s_inst.FlagFloorAsDeadEnd(m_pfObject, true);   // +0x1c8 m_pfObject
    }
}

// 0x3e7c1c _ZN4Door9InitFinalEv
void Door::InitFinal() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {  // +0x274
        GameObject::InitFinal();
        if (GameObject::MeetCondition()) {
            if (m_opened) {                                    // +0x3a4
                Opened(false);
            } else {
                Closed(m_opened);
            }
        }
    }
}

// 0x3e7da8 _ZN4Door8InitPostEv
// With the spawn probability met: looks the door up by name in Arrays::Doors (index or -1) and, with an index, copies the
// GameObjectDict name (the dictionary index is the Doors element's word +20) into m_dae (+0x290). Then Zone::InitPost; when the
// condition holds the door's animation callbacks, mesh box, physics body and the two sounds (open word +16 first, then close
// word +12) are set up, otherwise the door is hidden.
void Door::InitPost() {
    // Door name lookup: first match in Arrays::Doors::m_memberNames, or -1.
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {   // +0x274
        m_doorIndex = pydata::FindMemberName(Arrays::Doors::m_memberNames, static_cast<int>(Arrays::Doors::size), m_data.c_str());
        if (m_doorIndex != -1) {
            const std::int32_t dictionaryIndex = DoorTableWord(m_doorIndex, 20);
            if (dictionaryIndex != -1) {
                m_dae = reinterpret_cast<const Structs::ColladaFile*>(Arrays::GameObjectDict::members)[dictionaryIndex].Name;  // +0x290
            }
        }
        Zone::InitPost();
        if (GameObject::MeetCondition()) {
            VisualObject* visual = m_visualObject;             // +0x2d8
            if (visual != nullptr) {
                // VisualObject +0x38 m_animController, vtable +0x2c SetCallbacks(animCallback, user, eventCallback, user)
                visual->m_animController->SetCallbacks(&Door::__Callback, this, &Door::__EventCallback, this);
                visual->ApplyMeshBox();
            }
            if (m_doorCollision) {                             // +0x3a5
                // The original allocates 0x28 bytes and builds the PhysicalObject arguments (static, box, group 0,
                // category 2, mask 0xffff, unused 1) on the physics world (Application +0x44, dword_99F770), then
                // stores the PODecor vtable: that is PODecor's constructor, whose bool argument is never read.
                PODecor* body = new PODecor(ApplicationGetInstance().m_physicalWorld, this, false);
                GameObject::SetPhysicalObject(body, false);
            }
            if (m_doorIndex != -1 && VoxSoundManager::s_instance != nullptr) {
                VoxSoundManager::s_instance->LoadSound(DoorTableWord(m_doorIndex, 16));
                VoxSoundManager::s_instance->LoadSound(DoorTableWord(m_doorIndex, 12));
            }
        } else {
            // The original calls vtable slot +0x40 (GameObject::SetVisible) with R1 = the zero MeetCondition() result.
            SetVisible(false);
        }
    }
}
