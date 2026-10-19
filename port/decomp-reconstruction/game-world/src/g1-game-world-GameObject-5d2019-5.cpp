// Batch g1-game-world-GameObject-5d2019-5 (GameObject, part 6 of 8).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Layout and declarations: dh2/GameObject.hpp.
// Offsets in comments are the original 32-bit ones.
//
// The Lua statics take (const Arguments&, ReturnValues&, void* self). The listings name the first pointer `this`, the
// second `a2` and the third `a3`, and type them shifted by one: `this` is the argument list, `a2` the return values and
// `a3` the GameObject. The bodies use the header's names. Value tags as in batch -4: 1 bool, 2 pointer, 3 number,
// 4 string, 7 userdata. A Value is 0x70 bytes, so args.size() is (end - begin) / 0x70 in the listings.
//
// LUA LAYER. The sfc::script::lua headers (dh2/sfc/script/lua/) and the Lua bindings' callees are declared, so the
// bindings are rebuilt from the listings (batch r2a-game-world-GameObject-5d2019-2, a redo of the Lua-blocked rows).
// Still partial, with the missing piece named in each comment: _Summon (online tail: COnline +0x05 is not declared),
// _PlaySound3D (VoxSoundManager::Play3D and Arrays::Sounds lookup), _Rand (COnline +0x05).
//
// Reconstructed without Lua access: GetTargetPosition, SetDestination, IsAtDestination, UpdateRotation, SetRotation.

#include <cmath>
#include <cstddef>
#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectSearcher.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/Random.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"
#include "pydata-accessors/name_table.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/TimerTrap.hpp"
#include "dh2/TriggerTrap.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"  // dword_99F764, the ObjectManager instance
#include "dh2/global/Vec3f_K.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C, the PlayerManager instance
#include "dh2/global/ctrl_camera.hpp"  // Application& ApplicationGetInstance()
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "pydata-accessors/w7_arrays27.hpp"  // Arrays::TimerTraps, TriggerTraps, GameObjectDamager, ...::size

namespace {

// Value::m_type tags of the Lua wrapper (dh2/sfc/script/lua/Value.hpp).
constexpr int kTagBool = 1;
constexpr int kTagPointer = 2;
constexpr int kTagNumber = 3;
constexpr int kTagString = 4;
constexpr int kTagUserData = 7;

// Element count of an argument list: the listings' (end - begin) / 0x70.
std::size_t ArgCount(const sfc::script::lua::Arguments& args) {
    return args.m_values->size();
}

// self's position moved by a * (K x look) + b * look + c * K, with K = Vec3f_K and look = GetLookAtVec(). The listings
// compute it inline in this operand order (_Summon and _TargetListSearchRect).
Point3D<float> OffsetFromSelf(const GameObject& self, float a, float b, float c) {
    Point3D<float> look;
    self.GetLookAtVec(look);
    Point3D<float> out = self.m_position;
    out.X = out.X + (a * ((Vec3f_K.Y * look.Z) - (Vec3f_K.Z * look.Y)));
    out.Y = out.Y + (a * ((Vec3f_K.Z * look.X) - (Vec3f_K.X * look.Z)));
    out.Z = out.Z + (a * ((look.Y * Vec3f_K.X) - (Vec3f_K.Y * look.X)));
    out.X = out.X + (b * look.X);
    out.Y = out.Y + (b * look.Y);
    out.Z = out.Z + (b * look.Z);
    out.X = out.X + (c * Vec3f_K.X);
    out.Y = out.Y + (c * Vec3f_K.Y);
    out.Z = out.Z + (c * Vec3f_K.Z);
    return out;
}

}  // namespace

// 0x390bd4 GameObject::_TargetListBackup(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Backs up the target list (+0x304). With no arguments, or with args[0] not a string (tag 4), the backup is named
// 'default'; a string argument names it. The listing's a3 is the GameObject, which arrives here as self.
void GameObject::_TargetListBackup(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                   void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    if (ArgCount(args) == 0 || args[0].m_type != kTagString) {
        object->m_targetList.BackupResults("default");
        return;
    }
    object->m_targetList.BackupResults(args[0].getString());
}

// 0x390c50 GameObject::_SummonTimerTrap(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs args[0] a number below Arrays::TimerTraps::size and args[1] a number below Arrays::GameObjectDamager::size.
// The trap is TimerTrap::Create(self, args[0], args[1]). With a third argument that is userdata, the trap moves to that
// object's m_position (+0x160). Otherwise, with more than four arguments and args[2..4] numbers, it moves to those
// numbers. SetPosition(trap, pos, true), then the trap is pushed as userdata. The listing's fourth register word is not
// a parameter of TimerTrap::Create(owner, trapIndex, damagerIndex) and is not passed.
void GameObject::_SummonTimerTrap(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                  void* self) {
    GameObject* const owner = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count <= 1 || args[0].m_type != kTagNumber || args[0].getUInteger() >= Arrays::TimerTraps::size) {
        return;
    }
    if (args[1].m_type != kTagNumber || args[1].getUInteger() >= Arrays::GameObjectDamager::size) {
        return;
    }
    GameObject* const trap = TimerTrap::Create(owner, static_cast<int>(args[0].getNumber()),
                                               static_cast<int>(args[1].getNumber()));
    if (count > 2) {
        if (args[2].m_type == kTagUserData) {
            const GameObject* source = static_cast<const GameObject*>(args[2].getUserData());
            trap->SetPosition(source->m_position, true);
        } else if (count > 4 && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber &&
                   args[4].m_type == kTagNumber) {
            Point3D<float> position;
            position.X = args[2].getNumber();
            position.Y = args[3].getNumber();
            position.Z = args[4].getNumber();
            trap->SetPosition(position, true);
        }
    }
    ret.pushUserData(trap);
}

// 0x390f1c GameObject::_IsInRange(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs more than one argument, with args[0] a string (the object is found by ObjectManager::GetObjectByName) or
// userdata, and args[1] and args[2] numbers (the listing reads args[2] even for a short list, as operator[] does).
// The radius r is args[1]. When both objects have a physical object and the target's is a circle (+0x10), the test is
// r >= distance(centres) - radius(self) - radius(target). Otherwise the absolute boxes (m_absAabb, +0x12c) must overlap
// when grown by r on each side. Out of range pushes false. In range pushes true, unless there are exactly three
// arguments: then it pushes args[2] <= dot / |d| with d = target - self and dot = d . GetLookAtVec().
// A missing target has no box to test; the listing would fault there, and this port pushes false.
void GameObject::_IsInRange(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                            void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count <= 1 || (args[0].m_type != kTagString && args[0].m_type != kTagUserData)) {
        return;
    }
    if (args[1].m_type != kTagNumber || args[2].m_type != kTagNumber) {
        return;
    }
    GameObject* target = nullptr;
    if (args[0].m_type == kTagString) {
        ObjectHandle handle = dword_99F764->GetObjectByName(args[0].getString(), -1, false, nullptr);
        target = handle;
    } else {
        target = static_cast<GameObject*>(args[0].getUserData());
    }
    const float radius = args[1].getNumber();
    if (target == nullptr) {
        ret.pushBoolean(false);
        return;
    }
    bool inRange;
    PhysicalObject* const targetPhysical = target->m_physicalObject;
    if (targetPhysical != nullptr && targetPhysical->m_isCircle && object->m_physicalObject != nullptr) {
        const float selfRadius = object->m_physicalObject->getRadius();
        const float targetRadius = targetPhysical->getRadius();
        const float dx = object->m_position.X - target->m_position.X;
        const float dy = object->m_position.Y - target->m_position.Y;
        const float dz = object->m_position.Z - target->m_position.Z;
        const float distance = std::sqrt(dx * dx + dy * dy + dz * dz);
        inRange = radius >= distance - selfRadius - targetRadius;
    } else {
        const float* a = object->m_absAabb;
        const float* b = target->m_absAabb;
        inRange = (a[0] - radius <= b[3]) && (radius + a[3] >= b[0]) && (a[1] - radius <= b[4]) &&
                  (radius + a[4] >= b[1]) && (a[2] - radius <= b[5]) && (radius + a[5] >= b[2]);
    }
    if (!inRange) {
        ret.pushBoolean(false);
        return;
    }
    if (count != 3) {
        ret.pushBoolean(true);
        return;
    }
    const float threshold = args[2].getNumber();
    Point3D<float> look;
    object->GetLookAtVec(look);
    const float dx = target->m_position.X - object->m_position.X;
    const float dy = target->m_position.Y - object->m_position.Y;
    const float dz = target->m_position.Z - object->m_position.Z;
    const float dot = (dx * look.X + dy * look.Y) + dz * look.Z;
    ret.pushBoolean(threshold <= dot / std::sqrt((dx * dx + dy * dy) + dz * dz));
}

// 0x391438 GameObject::_GetDistanceBetween(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs more than one argument, and args[0] and args[1] both strings. Each is looked up with ObjectManager::GetObjectByName
// (dword_99F764, flags -1, not active, no type). Pushes -1.0 when either object is missing, else the squared 3D distance
// between their m_position (+0x160).
void GameObject::_GetDistanceBetween(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                     void* /*self*/) {
    if (ArgCount(args) <= 1 || args[0].m_type != kTagString || args[1].m_type != kTagString) {
        return;
    }
    ObjectHandle first = dword_99F764->GetObjectByName(args[0].getString(), -1, false, nullptr);
    GameObject* const a = first;
    ObjectHandle second = dword_99F764->GetObjectByName(args[1].getString(), -1, false, nullptr);
    GameObject* const b = second;
    float distance = -1.0f;
    if (a != nullptr && b != nullptr) {
        const float dx = a->m_position.X - b->m_position.X;
        const float dy = a->m_position.Y - b->m_position.Y;
        const float dz = a->m_position.Z - b->m_position.Z;
        distance = (dx * dx + dy * dy) + dz * dz;
    }
    ret.pushNumber(distance);
}

// 0x391670 GameObject::_SummonTriggerTrap(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// The same control flow as _SummonTimerTrap, with Arrays::TriggerTraps::size for args[0] and TriggerTrap::Create for the
// trap (owner, args[0], args[1]). The same position rules apply to the trap.
void GameObject::_SummonTriggerTrap(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                    void* self) {
    GameObject* const owner = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count <= 1 || args[0].m_type != kTagNumber || args[0].getUInteger() >= Arrays::TriggerTraps::size) {
        return;
    }
    if (args[1].m_type != kTagNumber || args[1].getUInteger() >= Arrays::GameObjectDamager::size) {
        return;
    }
    GameObject* const trap = TriggerTrap::Create(owner, static_cast<int>(args[0].getNumber()),
                                                 static_cast<int>(args[1].getNumber()));
    if (count > 2) {
        if (args[2].m_type == kTagUserData) {
            const GameObject* source = static_cast<const GameObject*>(args[2].getUserData());
            trap->SetPosition(source->m_position, true);
        } else if (count > 4 && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber &&
                   args[4].m_type == kTagNumber) {
            Point3D<float> position;
            position.X = args[2].getNumber();
            position.Y = args[3].getNumber();
            position.Z = args[4].getNumber();
            trap->SetPosition(position, true);
        }
    }
    ret.pushUserData(trap);
}

// 0x39193c GameObject::_Summon(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a number below Arrays::CharacterTable::size (the NPC type) and args[1] a bool (the spawn-state flag). The point is self's m_position, or the absolute position of the visual's
// summon_spot node. The rotation is self's m_rotation. Userdata at args[2] gives the point and rotation of that object. Otherwise, with more than four arguments and args[2..4] numbers,
// the point is those numbers, or with a true bool at args[5] it is OffsetFromSelf(args[2], args[3], args[4]). A time from a lone third number (exactly three arguments) is
// forwarded to the NPC's visual root with RootSceneNode::ForwardAnim. The point is floor-corrected by PFWorld::GetFloorHeightAt and falls back to self's m_position. Then
// Character::CreateNPC(type, nullptr, false), SetInitialPosition, SetPosition(pos, true), SetRotation, m_isNetSpawned = 1, and either the room zone's AddInitialObject or
// ObjectManager::AddNoRoomObject with ZoneEntered. SM_SetSpawnState(false, false) runs when the flag is set. The NPC is pushed as userdata, then the time is forwarded.
// Online (COnline +0x05): the NPC gets a network id (ObjectManager::AssignObjectNetworkId), is flagged unk_118, takes self's owner id (+0x110) and a zero owner timer, and, in OnlineGameState
// mode 3 or 4, a CMsgSpawnObject (the NPC's network id, its type, self's network id, its position, 0) is sent through CMessaging.
void GameObject::_Summon(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count <= 1 || args[0].m_type != kTagNumber || args[0].getUInteger() >= Arrays::CharacterTable::size) {
        return;
    }
    if (args[1].m_type != kTagBool) {
        return;
    }
    const bool spawnState = args[1].getBool();
    Point3D<float> rotation = object->m_rotation;   // +0x16c, the listing's v71..v73
    Point3D<float> position;
    position.X = 0.0f;
    position.Y = 0.0f;
    position.Z = 0.0f;
    int forwardTime = 0;
    bool atSpot = true;                             // false when a point form below has set the position
    if (count > 2) {
        if (args[2].m_type == kTagUserData) {
            const GameObject* source = static_cast<const GameObject*>(args[2].getUserData());
            position = source->m_position;
            rotation = source->m_rotation;
            atSpot = false;
        } else if (count > 4 && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber &&
                   args[4].m_type == kTagNumber) {
            if (count > 5 && args[5].m_type == kTagBool && args[5].getBool()) {
                position = OffsetFromSelf(*object, args[2].getNumber(), args[3].getNumber(), args[4].getNumber());
            } else {
                position.X = args[2].getNumber();
                position.Y = args[3].getNumber();
                position.Z = args[4].getNumber();
            }
            atSpot = false;
        }
    }
    if (atSpot) {
        const VisualObject* visual = object->m_visualObject;
        glitch::scene::ISceneNode* spot = visual != nullptr ? visual->GetSpecificNode("summon_spot") : nullptr;
        if (spot != nullptr) {
            const glitch::core::vector3d<float> absolute = spot->getAbsolutePosition();
            position.X = absolute.X;
            position.Y = absolute.Y;
            position.Z = absolute.Z;
        } else {
            position = object->m_position;
        }
        if (count == 3 && args[2].m_type == kTagNumber) {
            forwardTime = static_cast<int>(args[2].getNumber());
        }
    }
    if (!Singleton<PFWorld>::s_inst.GetFloorHeightAt(position, nullptr, nullptr, nullptr, nullptr, false)) {
        position = object->m_position;
    }
    Character* const npc = Character::CreateNPC(static_cast<int>(args[0].getUInteger()), nullptr, false);
    if (npc == nullptr) {
        return;
    }
    npc->SetInitialPosition(position);
    npc->SetPosition(position, true);
    npc->SetRotation(rotation);
    npc->m_isNetSpawned = 1;                        // +0x14e4
    RoomZone* const zone = object->m_roomZone;
    if (zone == nullptr || !zone->AddInitialObject(npc)) {
        dword_99F764->AddNoRoomObject(npc);
        npc->unk_2ef = 1;                           // +0x2ef
        npc->ZoneEntered();
    }
    if (spawnState) {
        npc->SM_SetSpawnState(false, false);
    }
    ret.pushUserData(npc);
    if (forwardTime > 0 && npc->m_visualObject != nullptr && npc->m_visualObject->m_node != nullptr) {
        npc->m_visualObject->m_node->ForwardAnim(static_cast<std::uint32_t>(forwardTime));
    }
    if (GetOnlineGameFlag()) {
        dword_99F764->AssignObjectNetworkId(npc);
        npc->unk_118 = 1;
        npc->m_netOwnerId = object->m_netOwnerId;
        npc->unk_114 = 0.0f;
        const std::int32_t mode = OnlineSingleton<OnlineGameState>::GetInstance()->mode_;
        if (mode == 3 || mode == 4) {
            CMessaging* messaging = CMessaging::GetInstance();
            CMsgSpawnObject* message = dynamic_cast<CMsgSpawnObject*>(CMessage::CreateMessage("CMsgSpawnObject", true));
            message->objectId_ = npc->unk_108;
            message->unk_54 = static_cast<std::int32_t>(args[0].getUInteger());
            message->unk_58 = object->unk_108;
            message->unk_5c = npc->m_position.X;
            message->unk_60 = npc->m_position.Y;
            message->unk_64 = npc->m_position.Z;
            message->unk_68 = 0;
            messaging->SendMsg(message);
        }
    }
}

// 0x39212c GameObject::_PlaySound3D(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] is read as a string (no tag test); its index in Arrays::Sounds (the first name equal to it) is the sound id, or -1 when the name is not listed. The position is self's m_position,
// unless there are at least four arguments and args[1..3] are numbers, which then give x, y and z. Then VoxSoundManager::Play3D(id, position, false, 1, -1, -1).
void GameObject::_PlaySound3D(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const int sound = pydata::FindMemberName(Arrays::Sounds::m_memberNames, static_cast<int>(Arrays::Sounds::size), args[0].getString());
    Point3D<float> position = object->m_position;
    if (ArgCount(args) > 3 && args[1].m_type == kTagNumber && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber) {
        position.X = args[1].getNumber();
        position.Y = args[2].getNumber();
        position.Z = args[3].getNumber();
    }
    const glitch::core::vector3d<float> at{position.X, position.Y, position.Z};
    VoxSoundManager::s_instance->Play3D(sound, at, false, 1, -1.0f, -1.0f);
}

// 0x3923cc GameObject::_PlayFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a number below Arrays::AnimatedEffectTable::size is the effect id. With no more than three arguments:
// Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(id, self, nullptr). Otherwise the position is args[1..3] when those
// are numbers, else self's m_position, and the call is PlayAnimFXSet(id, position, nullptr, nullptr). The listing's
// return value (the id) is not kept; the Lua caller ignores it.
void GameObject::_PlayFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count == 0 || args[0].m_type != kTagNumber || args[0].getUInteger() >= Arrays::AnimatedEffectTable::size) {
        return;
    }
    if (count <= 3) {
        Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(static_cast<int>(args[0].getUInteger()), object, nullptr);
        return;
    }
    Point3D<float> position = object->m_position;
    if (args[1].m_type == kTagNumber && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber) {
        position.X = args[1].getNumber();
        position.Y = args[2].getNumber();
        position.Z = args[3].getNumber();
    }
    const unsigned int effect = static_cast<unsigned int>(args[0].getNumber());
    Singleton<VisualFXManager>::s_inst.PlayAnimFXSet(static_cast<int>(effect), position, nullptr, nullptr);
}

// 0x392620 GameObject::_GrabFX(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a number below Arrays::AnimatedEffectTable::size is the effect id. Pushes the pointer returned by
// VisualFXManager::GrabAnimFX(id, self) on the VisualFXManager singleton.
void GameObject::_GrabFX(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    if (ArgCount(args) == 0 || args[0].m_type != kTagNumber ||
        args[0].getUInteger() >= Arrays::AnimatedEffectTable::size) {
        return;
    }
    AnimatedFX* const fx = Singleton<VisualFXManager>::s_inst.GrabAnimFX(
        static_cast<int>(static_cast<unsigned int>(args[0].getNumber())), object);
    ret.pushPointer(fx);
}

// 0x392714 GameObject::_RegisterSummon(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// args[0] a number below Arrays::CharacterTable::size is the object id (int). Flags are args[1] when there are two or
// more arguments and args[1] is a number, else 1. Then Character::AddCharOIDToCache(oid, flags). The listing also passes
// a third register word computed from the argument count; AddCharOIDToCache(int, unsigned int) takes two parameters, so
// that word is not a parameter of the callee and is not passed.
void GameObject::_RegisterSummon(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                                 void* /*self*/) {
    const std::size_t count = ArgCount(args);
    if (count == 0 || args[0].m_type != kTagNumber || args[0].getUInteger() >= Arrays::CharacterTable::size) {
        return;
    }
    const int oid = static_cast<int>(args[0].getNumber());
    unsigned int flags = 1;
    if (count > 1 && args[1].m_type == kTagNumber) {
        flags = args[1].getUInteger();
    }
    Character::AddCharOIDToCache(oid, flags);
}

// 0x392848 GameObject::_GetObjectByName(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// With exactly one argument that is a string: ObjectManager::GetObjectByName(name, -1, false, nullptr) on the
// ObjectManager instance, then the handle as GameObject* is pushed as userdata (null when not found). Other shapes push
// nothing.
void GameObject::_GetObjectByName(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                  void* /*self*/) {
    if (ArgCount(args) != 1 || args[0].m_type != kTagString) {
        return;
    }
    ObjectHandle handle = dword_99F764->GetObjectByName(args[0].getString(), -1, false, nullptr);
    GameObject* const found = handle;
    ret.pushUserData(found);
}

// 0x3928f0 GameObject::_SetPosition(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// One argument selects an object: a string (looked up with ObjectManager::GetObjectByName), or a pointer (tag 2) or
// userdata (tag 7). Other tags do nothing. With that object: SetPosition(self, object m_position, true), self's
// PFObject position (m_pfObject.m_pos, +0x1e0) is copied from it, then ForceUpdatePosition(). With exactly three numeric
// arguments: the same with (x, y, z). Any other argument count does nothing.
void GameObject::_SetPosition(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/,
                              void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count == 1) {
        GameObject* target = nullptr;
        if (args[0].m_type == kTagString) {
            ObjectHandle handle = dword_99F764->GetObjectByName(args[0].getString(), -1, false, nullptr);
            target = handle;
        } else if (args[0].m_type == kTagUserData || args[0].m_type == kTagPointer) {
            target = static_cast<GameObject*>(args[0].getUserData());
        } else {
            return;
        }
        if (target == nullptr) {
            return;
        }
        object->SetPosition(target->m_position, true);
        object->m_pfObject.m_pos = target->m_position;
        object->ForceUpdatePosition();
        return;
    }
    if (count == 3 && args[0].m_type == kTagNumber && args[1].m_type == kTagNumber && args[2].m_type == kTagNumber) {
        Point3D<float> position;
        position.X = args[0].getNumber();
        position.Y = args[1].getNumber();
        position.Z = args[2].getNumber();
        object->SetPosition(position, true);
        object->m_pfObject.m_pos = position;
        object->ForceUpdatePosition();
    }
}

// 0x392b80 GameObject::_TargetListSearchRect(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs args[0] and args[1] numbers (length and width). The origin is self's m_position by default. Userdata at args[2]
// gives that object's m_position (options then start at index 3). With args[2..4] numbers it is those values (options
// start at 6). A true bool at args[5] makes it OffsetFromSelf(args[2], args[3], args[4]). Options, from the option index:
// a true bool selects the backup named 'default'; a string selects the backup of that name (GetResultsBackup). Otherwise
// the source is a PlayerList when m_targetList's filter mask has 0x80, else a CharacterList (ObjectManager m_characters,
// +0x60) when m_arg3 is 2, else a RoomObjectList over ObjectManager's room lists (+0x80). Then
// TargetList::SearchRect(origin, length, width, source). The listing builds each list object on the stack with its vtable
// and iterators; the list classes have no constructors in the tree, so they are default-constructed and filled in.
// The default-origin option index is count - 1: the asm complements the scaled element count (MVN), which the
// listing shows as ~(1227133513 * ((end - begin) >> 4)). Kept as the binary has it.
void GameObject::_TargetListSearchRect(const sfc::script::lua::Arguments& args,
                                       sfc::script::lua::ReturnValues& /*ret*/, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    if (count <= 1 || args[0].m_type != kTagNumber || args[1].m_type != kTagNumber) {
        return;
    }
    Point3D<float> origin = object->m_position;
    std::size_t option = count - 1;
    if (count > 2) {
        if (args[2].m_type == kTagUserData) {
            origin = static_cast<const GameObject*>(args[2].getUserData())->m_position;
            option = 3;
        } else if (count > 4 && args[2].m_type == kTagNumber && args[3].m_type == kTagNumber &&
                   args[4].m_type == kTagNumber) {
            if (count > 5 && args[5].m_type == kTagBool && args[5].getBool()) {
                origin = OffsetFromSelf(*object, args[2].getNumber(), args[3].getNumber(), args[4].getNumber());
            } else {
                origin.X = args[2].getNumber();
                origin.Y = args[3].getNumber();
                origin.Z = args[4].getNumber();
            }
            option = 6;
        }
    }
    const float length = args[0].getNumber();
    const float width = args[1].getNumber();
    ObjectSearcher::TargetList& targets = object->m_targetList;
    if (option < count && args[option].m_type == kTagBool && args[option].getBool()) {
        targets.SearchRect(origin, length, width, targets.GetResultsBackup("default"));
        return;
    }
    if (option < count && args[option].m_type == kTagString) {
        targets.SearchRect(origin, length, width, targets.GetResultsBackup(args[option].getString()));
        return;
    }
    if ((targets.m_filterMask & 0x80) != 0) {
        ObjectSearcher::PlayerList players;
        players.m_players = dword_99F76C;
        players.m_index = 0;
        targets.SearchRect(origin, length, width, players);
    } else if (targets.m_arg3 == 2) {
        ObjectSearcher::CharacterList characters;
        characters.m_list = &dword_99F764->m_characters;
        characters.m_current = characters.m_list->begin();
        characters.m_end = characters.m_list->end();
        targets.SearchRect(origin, length, width, characters);
    } else {
        ObjectSearcher::RoomObjectList rooms;
        rooms.m_list = &dword_99F764->m_roomZones;
        rooms.m_node = rooms.m_list->begin();
        rooms.m_end = rooms.m_list->end();
        targets.SearchRect(origin, length, width, rooms);
    }
}

// 0x393310 GameObject::_Rand(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// No arguments, or three or more, give the range 100 from 0. One number n gives [0, n). Two numbers a, b give [a, b - a). Other shapes push nothing. Outside online play it pushes
// Random::GetRandom(range, false) + base as an integer (the call is the ordinary-stream clone .clone.1_0). Online, self's unk_fc (+0xfc) is loaded into Random::s_seed first, the value
// is drawn and pushed, and the seed is stored back to +0xfc.
void GameObject::_Rand(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret, void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    const std::size_t count = ArgCount(args);
    unsigned int range = 100;
    unsigned int base = 0;
    if (count == 1) {
        if (args[0].m_type != kTagNumber) {
            return;
        }
        range = args[0].getUInteger();
    } else if (count == 2) {
        if (args[0].m_type != kTagNumber || args[1].m_type != kTagNumber) {
            return;
        }
        base = args[0].getUInteger();
        range = args[1].getUInteger() - base;
    }
    if (GetOnlineGameFlag()) {
        Random::s_seed = static_cast<std::uint32_t>(object->unk_fc);
        const unsigned int value = Random::GetRandom(static_cast<int>(range), false);
        ret.pushInteger(static_cast<int>(value + base));
        object->unk_fc = static_cast<std::int32_t>(Random::s_seed);
    } else {
        ret.pushInteger(static_cast<int>(Random::GetRandom(static_cast<int>(range), false) + base));
    }
}

// 0x393444 GameObject::_GetDistanceFrom(sfc::script::lua::Arguments const&, sfc::script::lua::ReturnValues&, void*)
// Needs at least one argument. args[0] a string (object by name) or userdata (tag 7); other tags push nothing. Pushes the
// squared 3D distance from that object's m_position to self's m_position, or -1.0 when the object is missing.
void GameObject::_GetDistanceFrom(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& ret,
                                  void* self) {
    GameObject* const object = static_cast<GameObject*>(self);
    if (ArgCount(args) == 0) {
        return;
    }
    GameObject* target = nullptr;
    if (args[0].m_type == kTagString) {
        ObjectHandle handle = dword_99F764->GetObjectByName(args[0].getString(), -1, false, nullptr);
        target = handle;
    } else if (args[0].m_type == kTagUserData) {
        target = static_cast<GameObject*>(args[0].getUserData());
    } else {
        return;
    }
    float distance = -1.0f;
    if (target != nullptr) {
        const float dx = target->m_position.X - object->m_position.X;
        const float dy = target->m_position.Y - object->m_position.Y;
        const float dz = target->m_position.Z - object->m_position.Z;
        distance = (dx * dx + dy * dy) + dz * dz;
    }
    ret.pushNumber(distance);
}

// 0x3935dc GameObject::GetTargetPosition() const
// The target node's position (m_targetNodePos, +0x184) when there is a node (m_targetNode, +0x180) and the object is
// visible (m_visible, the byte at +0x80 of ObjectBase). Otherwise m_position (+0x160).
const Point3D<float>& GameObject::GetTargetPosition() const {
    if (m_targetNode != nullptr && m_visible) {
        return m_targetNodePos;
    }
    return m_position;
}

// 0x393600 GameObject::SetDestination(Point3D<float> const&)
// Copies the destination into m_destination (+0x1a8, three floats).
void GameObject::SetDestination(const Point3D<float>& dest) {
    m_destination = dest;
}

// 0x39361c GameObject::IsAtDestination() const
// Within 80 units in the XY plane: the squared distance is below 6400. The target is the end of the PFObject path
// (m_pfObject.m_pathEnd, +0x208) when the waypoint list (PFObject +0x38, the list's sentinel at GameObject +0x200) is not
// empty. Otherwise it is m_destination (+0x1a8). The listing walks the waypoint list to its sentinel with no side effect,
// which is not reproduced.
bool GameObject::IsAtDestination() const {
    const Point3D<float>& target = m_pfObject.m_path.empty() ? m_destination : m_pfObject.m_pathEnd;
    const float dx = target.X - m_position.X;
    const float dy = target.Y - m_position.Y;
    return (dx * dx + dy * dy) < 6400.0;
}

namespace {

// Single-precision constants of UpdateRotation, by the bit pattern the listing loads (MOVW/MOVT). kFloatPi is the float
// nearest pi, 0x40490FDB; the float nearest the literal 3.1416 is 0x40490FF9 and is a different limit, so it is not used.
constexpr float kFloatPi = 3.14159274f;           // 0x40490FDB, the wrap limit (fcmpgt above, fcmplt below with -kFloatPi)
constexpr float kFloatTwoPi = 6.28318548f;        // 0x40C90FDB, the wrap amount (2 * kFloatPi)
constexpr float kRotationStepScale = 12.566371f;  // 0x41490FDB, the step per unit speed (4 * kFloatPi)
constexpr float kTimeScale = 0.001f;              // 0x3A83126F, frame time from milliseconds

}  // namespace

// 0x393710 GameObject::UpdateRotation()
// Turns m_rotation.Z (+0x174) toward m_targetYaw (+0x178) by GetRotationSpeed() (vtable +0xac, -1 by default). The
// listing is single precision throughout (__aeabi_fmul, fsub, fadd, fcmpgt, fcmplt), so every operation below is float.
// Step = (speed * kRotationStepScale) * (float(dt) * kTimeScale), dt in ms from Application::GetDt. The difference
// m_targetYaw - m_rotation.Z is wrapped by kFloatTwoPi when it is above kFloatPi, or else when it is below -kFloatPi.
// When |diff| is below the step, or the speed is below zero, the rotation snaps to m_targetYaw. Otherwise it moves one
// step toward the target, and m_turnPositive (+0x17c) records the direction: 1 when diff is not below zero, else 0.
// Last, when a visual is attached and IsUpdatingVisualWithRotation() (vtable +0x70) is set, the visual syncs its rotation.
// The comparisons are written as the listing's float helpers test them, so a NaN takes the same branch as the original.
// The listing is typed float. The value it leaves in the return register is a bool bit pattern or SyncRotation's result,
// and no caller reads it, so the method is void as declared in the header.
void GameObject::UpdateRotation() {
    const float speed = GetRotationSpeed();
    if (!(speed < 0.0f)) {  // fcmplt(speed, 0) is false: the object turns
        const int dt = ApplicationGetInstance().GetDt();
        const float cur = m_rotation.Z;
        const float step =
            (speed * kRotationStepScale) * (static_cast<float>(static_cast<unsigned int>(dt)) * kTimeScale);
        float diff = m_targetYaw - cur;
        if (diff > kFloatPi) {
            diff = diff - kFloatTwoPi;
        } else if (diff < -kFloatPi) {
            diff = diff + kFloatTwoPi;
        }
        if (std::fabs(diff) < step) {  // fcmplt(|diff|, step) is true: snap
            m_rotation.Z = m_targetYaw;
        } else if (!(diff < 0.0f)) {
            m_rotation.Z = cur + step;
            m_turnPositive = 1;
        } else {
            m_rotation.Z = cur - step;
            m_turnPositive = 0;
        }
    } else {
        m_rotation.Z = m_targetYaw;
    }
    if (m_visualObject != nullptr && IsUpdatingVisualWithRotation()) {
        m_visualObject->SyncRotation();
    }
}

// 0x3938a0 GameObject::SetRotation(Point3D<float> const&)
// Stores the rotation in m_rotation (+0x16c..+0x174) and its Z in m_targetYaw (+0x178). When a visual is attached and
// IsUpdatingVisualWithRotation() is set, the visual syncs its rotation.
void GameObject::SetRotation(const Point3D<float>& rotation) {
    m_rotation = rotation;
    m_targetYaw = rotation.Z;
    if (m_visualObject != nullptr && IsUpdatingVisualWithRotation()) {
        m_visualObject->SyncRotation();
    }
}
