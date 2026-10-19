// Batch g1-game-world-ObjectManager-5017c7-0 (game-world, owner ObjectManager, part 1 of 4): the per-frame and
// online walks over the object lists, the room list, the network id lookups, the AI re-init and the network level
// hooks. Declarations come from dh2/ObjectManager.hpp.
//
// Owner-header edits made in this batch (small, in place): DoRemoteUpdateUpdate returns void (the float the pseudocode
// returns is the register that held this); the list at +0x24 holds RoomZone* and the list at +0x68 holds Module*
// (the pseudocode dereferences the nodes as those types); the m_initialized comment now matches the binary.
//
// Layout facts used here (original 32-bit offsets, the names come from dh2/ObjectBase.hpp and dh2/ObjectManager.hpp):
//   ObjectManager +0x24 unk_24 RoomZone* list      +0x2c m_updateList ObjectBase* list (AI init)
//   ObjectManager +0x80 m_roomZones list of room object lists
//   ObjectManager +0x100 unk_100 ObjectBase* list  (online objects: flush, remote update, net-id lookup, delete)
//   ObjectManager +0x68 unk_68 Module* list        (fog colour)
//   ObjectManager +0xf8 unk_f8                     (zeroed by UpdateRooms and ForceEverythingVisible)
//   ObjectManager +0x1ac m_initialized             (NetworkInitLevel sets 1, NetworkUnInitLevel sets 0)
//   ObjectBase +0x100 m_netStruct, +0x108 unk_108 (the network id), +0x110 m_netOwnerId, +0x114 unk_114 (timer),
//   +0x118 unk_118, +0x119 m_netUpdateRequested, +0x8c m_enableCond, +0xb0 m_disableCond
//   Character +0x11c (ObjectBase unk_11c, resend counter), +0x1480 m_isDummy
//
// No standalone test: every body calls the engine (virtual calls, list walks over engine objects, RNG, packets),
// and linking this translation unit needs the whole engine.

#include <algorithm>
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <vector>

// Character.hpp comes first: it includes net-transport's net_struct.hpp with the two clashing deps names renamed (see
// its own note), so the net headers below can follow without redefining CustomFree.
#include "dh2/Character.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Module.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/Random.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"          // dword_99F76C, the PlayerManager instance
#include "dh2/global/net_singletons.hpp"             // GetOnline
#include "net-session-online/c_matching_base.hpp"    // CMatching::Get, CMatching::IsServer
#include "net-session-online/c_online.hpp"           // COnline::IsServer
#include "net-transport/tb/c_net_player_manager.hpp"   // GetPlayerIdListByMemberId
#include "net-transport/net_struct.hpp"              // NetStruct::Resend (already included via Character.hpp)
#include "net-transport/packet_manager.hpp"          // CPacketManager::UnregisterPacketSlot

// The global assert level (gAssertLevel at 0x99f914). core-platform/memory.hpp declares it too, but that header's glitch
// stand-ins clash with the glitch scene headers that Character.hpp pulls in, so it is declared here.
extern int gAssertLevel;

// Runtime support (<global>), declared here as in GameObject-5d2019-3.cpp: dh2/global/runtime_support.hpp includes
// core-platform/memory.hpp, which clashes with the same glitch headers.
void PushProfilingContext(const char* name);  // 0x3136b4
void PopProfilingContext(const char* name);   // 0x3136b8

namespace {

// The source path the original's ASSERT messages print (ObjectManager.cpp in the Visual Studio project).
const char kObjectManagerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp";

// The original ASSERT(expression) at line. Level 2 stops the program (the original stores to address 0 to crash);
// level 1 prints the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kObjectManagerSource, line);
    }
}

}  // namespace

// 0x34024c ObjectManager::Draw2D(void)
void ObjectManager::Draw2D() {
}

// 0x340250 ObjectManager::DoOnlineStateFlush(void)
// Clears the network update request (+0x119) of every object on the online list.
void ObjectManager::DoOnlineStateFlush() {
    for (ObjectBase* object : unk_100) {
        object->m_netUpdateRequested = 0;  // +0x119
    }
}

// 0x340274 ObjectManager::DoRemoteUpdateUpdate(float)
// For each remotely updated object on the online list: the timer (+0x114) grows by dt while it is below 50.0. At 50.0
// or more the timer is reset to 0 and the owner id (+0x110) is set to -1. The pseudocode returns a float, which is the
// register that held this (the list head or the last timer); nothing reads it, so the function returns void.
void ObjectManager::DoRemoteUpdateUpdate(float dt) {
    for (ObjectBase* object : unk_100) {
        if (!object->IsRemotelyUpdated()) {
            continue;
        }
        if (object->unk_114 < 50.0f) {  // +0x114
            object->unk_114 += dt;
        } else {
            object->unk_114 = 0.0f;
            object->m_netOwnerId = -1;  // +0x110
        }
    }
}

// 0x3402f4 ObjectManager::GetNetworkIdByObjectBase(ObjectBase const*)
int ObjectManager::GetNetworkIdByObjectBase(ObjectBase const* object) {
    if (object) {
        return object->unk_108;  // +0x108, the network id
    }
    return -1;
}

// 0x340304 ObjectManager::DBG_DumpRoomObjects(void)
// The release build keeps only the walk over the room object lists (+0x80); the print calls are absent from the binary.
void ObjectManager::DBG_DumpRoomObjects() {
    for (std::list<GameObject*>* roomObjects : m_roomZones) {
        for (GameObject* object : *roomObjects) {
            (void)object;
        }
    }
}

// 0x34064c ObjectManager::DoCharAIInit(void)
// For each Character on the update list (+0x2c): its AI scripts are cleaned up and initialised again.
void ObjectManager::DoCharAIInit() {
    for (ObjectBase* object : m_updateList) {
        if (object && object->IsCharacter()) {
            Character* character = static_cast<Character*>(object);
            character->CharAI::AI_ScriptCleanUp();
            character->CharAI::AI_ScriptInit();
        }
    }
}

// 0x3406ac ObjectManager::ObjectReInit(void)
// For each object on the update list: both conditions (+0x8c, +0xb0) are marked untested, and each Character then
// has its AI scripts cleaned up and initialised again.
void ObjectManager::ObjectReInit() {
    for (ObjectBase* object : m_updateList) {
        if (object) {
            object->m_enableCond.SetAsTested(false);   // +0x8c
            object->m_disableCond.SetAsTested(false);  // +0xb0
            if (object->IsCharacter()) {
                Character* character = static_cast<Character*>(object);
                character->CharAI::AI_ScriptCleanUp();
                character->CharAI::AI_ScriptInit();
            }
        }
    }
}

// 0x34072c ObjectManager::DeleteRandomOnlineObject(void)
// The pseudocode takes an int and a bool and returns an int. The int is unused. The bool is passed through as the third
// argument of Random::GetRandom, which takes two, so it has no effect. The return value is either the GetRandom result
// or r0 left by ObjectBase::Delete (void), so the function returns void.
// The random draw is made even when the list is empty (range -4), so the generator advances as in the original. The
// first four entries of the list are never chosen: the target index is roll + 4, with roll in [0, count - 4).
void ObjectManager::DeleteRandomOnlineObject() {
    const int count = static_cast<int>(unk_100.size());
    const unsigned int roll = Random::GetRandom(count - 4, false);  // ordinary stream
    const unsigned int target = roll + 4;
    unsigned int index = 0;
    for (ObjectBase* object : unk_100) {
        if (index == target) {
            object->Delete();
            return;
        }
        ++index;
    }
}

// 0x3407a0 ObjectManager::GetObjectHandleByNetworkId(int)
// The first object on the online list whose network id (+0x108) equals networkId, as a handle. Otherwise an empty handle.
ObjectHandle ObjectManager::GetObjectHandleByNetworkId(int networkId) {
    for (ObjectBase* object : unk_100) {
        if (object && object->unk_108 == networkId) {
            return object->GetHandle();
        }
    }
    return ObjectHandle(nullptr);
}

// 0x340848 ObjectManager::CanSendUpdate(ObjectBase*)
bool ObjectManager::CanSendUpdate(ObjectBase* object) {
    if (!object || object->IsRemotelyUpdated() || !object->m_netStruct) {
        return false;
    }
    ObjectHandle handle = object->GetHandle();
    Character* character = handle;  // ObjectHandle::operator Character*
    if (!character || character->unk_11c > 0) {
        return true;
    }
    if (!character->CanUpdate() || character->m_isDummy != 0 || character->IsMerchant() ||
        (character->IsDead() && character->SM_IsInLimbus() && character->CanRespawn())) {
        return false;
    }
    return !character->IsPlayer();
}

// 0x340948 ObjectManager::IsRemotePlayerOfMember(int,Character*)
// False for a null character. Otherwise the member's player ids (CNetPlayerManager::GetPlayerIdListByMemberId on GetNetPlayerMgr()) are walked in order; for each, the Character of the
// PlayerInfo (PlayerManager::GetPlayerByInternalID(dword_99F76C, id, false), PlayerInfo +0x660) is compared by network id (ObjectBase +0x108) with the given character, and the first
// match gives true. (The pseudocode reads the record as a dword array: its +408 is byte offset 0x660.)
bool ObjectManager::IsRemotePlayerOfMember(int member, Character* character) {
    if (!character) {
        return false;
    }
    const std::vector<int>& ids = GetNetPlayerMgr()->GetPlayerIdListByMemberId(member);
    for (std::size_t i = 0; i < ids.size(); ++i) {
        const Character* player = dword_99F76C->GetPlayerByInternalID(ids[i], false)->unk_660;
        if (player != nullptr && character->unk_108 == player->unk_108) {
            return true;
        }
    }
    return false;
}

// 0x3409f4 ObjectManager::IsObjectSerializable(ObjectBase*,int)
// The server answer for an object owned by another member (m_netOwnerId not -1 and not the mode) is true. An object with no update request, no net struct, remotely
// updated, flagged unk_118, or owned by the mode itself is not serializable. A non-Character is. A Character with a resend counter (unk_11c) asks its net struct to resend and
// counts down. A character that cannot update, a dummy, a merchant, or a dead one waiting to respawn is not serializable; a non-player is; a player is when this device is the server
// or its PlayerInfo flag (+0x66c) is 1, and the mode's member does not own the player (!IsRemotePlayerOfMember(mode, character)).
bool ObjectManager::IsObjectSerializable(ObjectBase* object, int mode) {
    if (!object) {
        return false;
    }
    if (GetOnline()->IsServer()) {
        const int owner = object->m_netOwnerId;  // +0x110
        if (owner != -1 && mode != owner) {
            return true;
        }
    }
    if (!object->m_netUpdateRequested || !object->m_netStruct || object->IsRemotelyUpdated() || object->unk_118 ||
        mode == object->m_netOwnerId) {
        return false;
    }
    ObjectHandle handle = object->GetHandle();
    Character* character = handle;  // ObjectHandle::operator Character*
    if (!character) {
        return true;
    }
    if (character->unk_11c > 0) {
        object->m_netStruct->Resend();
        if (character->unk_11c > 0) {
            character->unk_11c = character->unk_11c - 1;
        }
        return true;
    }
    if (!character->CanUpdate() || character->m_isDummy != 0 || character->IsMerchant() ||
        (character->IsDead() && character->SM_IsInLimbus() && character->CanRespawn())) {
        return false;
    }
    if (!character->IsPlayer()) {
        return true;
    }
    if (!CMatching::Get()->CMatching::IsServer() &&
        dword_99F76C->GetPlayerByCharacter(character, false)->unk_66c != 1) {
        return false;
    }
    return !IsRemotePlayerOfMember(mode, character);
}

// 0x340bc4 ObjectManager::NetworkUnInitLevel(void)
void ObjectManager::NetworkUnInitLevel() {
    CPacketManager::UnregisterPacketSlot(3);
    m_initialized = 0;  // +0x1ac
}

// 0x340be0 ObjectManager::NetworkInitLevel(void)
// Online (COnline +0x05), packet slot 3 is registered with the four static packet callbacks (write, read, acknowledged, lost). Then m_initialized (+0x1ac) is set.
// The original returns the register the registration leaves; the header is void.
void ObjectManager::NetworkInitLevel() {
    if (GetOnlineGameFlag()) {
        CPacketManager::RegisterPacketSlot(3, &ObjectManager::sWritePacketData,
                                           &ObjectManager::sReadPacketData, &ObjectManager::sProcessAcknowledgedPacket,
                                           &ObjectManager::sProcessLostPacket);
    }
    m_initialized = 1;  // +0x1ac
}

// 0x340c54 ObjectManager::GetObjectByPtr(ObjectBase*)
// The handle of the object, or an empty handle when the object is null. The manager itself is not used.
ObjectHandle ObjectManager::GetObjectByPtr(ObjectBase* object) {
    if (object) {
        return object->GetHandle();
    }
    return ObjectHandle();
}

// 0x34163c ObjectManager::UpdateRooms(void)
void ObjectManager::UpdateRooms() {
    PushProfilingContext("ObjectManager::UpdateRooms");
    unk_f8 = 0;
    for (RoomZone* zone : unk_24) {
        zone->Update();
    }
    PopProfilingContext("ObjectManager::UpdateRooms");
}

// 0x34169c ObjectManager::ForceEverythingVisible(void)
void ObjectManager::ForceEverythingVisible() {
    unk_f8 = 0;
    for (RoomZone* zone : unk_24) {
        zone->Activate();
    }
}

// 0x3419a8 ObjectManager::GetDynamicFogColorAtPos(Point3D<float> const&,float)
// Blends the fog colours of the modules on the list (+0x68) by distance. A module within radius * 100 whose fog colour is not Module::UNINIT_FOG_COLOR contributes its
// fog colour scaled by (range - distance) / range. Each component is then capped at 255.0. Lower values are not clamped.
Point3D<float> ObjectManager::GetDynamicFogColorAtPos(Point3D<float> const& pos, float radius) {
    Point3D<float> color{};
    const float scaledRadius = radius * 100.0f;
    for (Module* module : unk_68) {
        const float dx = module->m_position.X - pos.X;
        const float dy = module->m_position.Y - pos.Y;
        const float dz = module->m_position.Z - pos.Z;
        const float distance = std::sqrt((dx * dx + dy * dy) + dz * dz);
        if (scaledRadius < distance || module->m_fogColor == Module::UNINIT_FOG_COLOR) {
            continue;
        }
        const float weight = (scaledRadius - distance) / scaledRadius;
        color.X = color.X + weight * module->m_fogColor.X;
        color.Y = color.Y + weight * module->m_fogColor.Y;
        color.Z = color.Z + weight * module->m_fogColor.Z;
    }
    if (color.X > 255.0f) {
        color.X = 255.0f;
    }
    if (color.Y > 255.0f) {
        color.Y = 255.0f;
    }
    if (color.Z > 255.0f) {
        color.Z = 255.0f;
    }
    return color;
}

// 0x3426b0 ObjectManager::GetObjectsByType(char const*,std::list<Character*>&) const
// Walks the object map (m_objectMap) in key order; every entry that has an object whose PropertyMap class name equals the type is converted from a handle holding its key
// (ObjectHandle::operator Character*, null when the object is not a Character) and appended to the list.
void ObjectManager::GetObjectsByType(char const* type, std::list<Character*>& out) const {
    ObjectHandle handle;
    for (const auto& entry : m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr) {
            continue;
        }
        if (std::strcmp(static_cast<PropertyMap*>(object)->GetThisClassName(), type) == 0) {
            handle.m_id = static_cast<std::uint32_t>(entry.first);
            Character* character = handle;
            out.push_back(character);
        }
    }
}

// 0x3427a0 ObjectManager::AddRoomObjects(std::list<GameObject*>*)
// Registers a room object list. Null and an already registered list each raise the original ASSERT (which stops at
// level 2 and prints at level 1). The list is then appended to m_roomZones.
void ObjectManager::AddRoomObjects(std::list<GameObject*>* objects) {
    if (!objects) {
        ReportAssert("ro", 2313);
    }
    if (std::find(m_roomZones.begin(), m_roomZones.end(), objects) != m_roomZones.end()) {
        ReportAssert("std::find(m_roomObjectsList.begin(), m_roomObjectsList.end(), ro) == m_roomObjectsList.end()", 2314);
    }
    m_roomZones.push_back(objects);
}
