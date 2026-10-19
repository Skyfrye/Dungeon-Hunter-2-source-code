#include "net-transport/net_trace.hpp"
// Batch g1-game-world-ObjectManager-5017c7-1 (part 2 of 4): ObjectManager's list, room and no-room membership, orphan
// render objects, network packet bookkeeping and the packet writers. Declarations come from dh2/ObjectManager.hpp.
//
// Layout facts used here (original 32-bit offsets; the member names are the owner header's):
//   +0x04 m_objects        list of orphan render objects. AddOrphanRenderObjectToDelete appends, FlushAll deletes each.
//                          The header comment says Add registers every object here; this batch does not show that.
//   +0x3c unk_3c           list of objects marked for deletion (MarkForDeletion)
//   +0x80 m_roomZones      list of room object lists (std::list<GameObject*>*), DelRoomObjects removes one
//   +0x88 m_noRoomObjects  list of GameObjects with no room (flag GameObject +0x2f8 set while listed)
//   +0x90 unk_90           GameObject list started by ProcessNextGameObjectToStartUpdate
//   +0x98 unk_98           std::map<int, std::list<int>>: packet id -> pending member ids (see the ids below)
//   +0xb0 unk_b0           std::map<int, short>, low byte written by SerializeGameObjectNetData
//   +0xe0 unk_e0           std::map<int, short>, counter of hosting member records
//   +0x100 unk_100         ObjectBase list whose m_netStruct (ObjectBase +0x100) takes the packet calls
//   +0x108 unk_108         std::map<short, std::list<ObjectBase*>>: the objects still to send per member
//   +0x128 unk_128         std::list<int> of member ids the host serialises for
//   +0x148 unk_148         std::map<int, int>: last accepted packet sequence per member (IsPacketValid)
//   +0x164 unk_164         std::map<short, std::set<short>>: per member, the object ids that need a resend
//   +0x17c unk_17c         std::map<short, std::set<short>>: per member, the ids counted and written as the resend set
//   +0x194 unk_194         std::map<short, std::set<short>>: per owner member, the object ids to ask for again
//   ObjectBase +0x108 unk_108 (int, -1 initially): the object's network id, compared with its member's last id
//   ObjectBase +0x110 m_netOwnerId: the owning member id, used as the key of unk_194 by AskNetResendByObjectId

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cmath>
#include <cstdlib>
#include <cstring>
#include <list>
#include <map>
#include <set>
#include <vector>

#include "core-platform/memory.hpp"  // gAssertLevel
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/Module.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/SortModuleByDistance.hpp"
#include "dh2/Random.hpp"
#include "vendor-lua/dh2_rand48.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"        // dword_99F76C, the PlayerManager instance
#include "dh2/global/ObjectManagerInstance.hpp"    // dword_99F764, the ObjectManager instance
#include "dh2/global/net_singletons.hpp"           // GetOnlineGameFlag
#include "core-platform/lc_api.hpp"
#include "dh2/ScriptManager.hpp"
#include "net-session-online/c_matching_base.hpp"  // CMatching::Get, LocalMemberId
#include "net-session-online/c_message.hpp"
#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_msg_fixed.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"
#include "net-transport/packet_manager.hpp"        // CPacketManager::SequenceMoreRecent

namespace {

const char kObjectManagerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectManager.cpp";

// The original ASSERT(expression) at file:line. Level 2 stops the process (the original writes to address 0);
// level 1 prints the message.
void ReportAssert(const char* expression, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, file, line);
    }
}

// The per-member maps (unk_108, unk_164, unk_17c, unk_194) are keyed by a 16-bit member id, as the original reads it.
inline std::int16_t MemberKey(int memberId) { return static_cast<std::int16_t>(memberId); }

// Bytes available to one packet in the original (the 1392 in SerializeGameObjectNetData).
constexpr int kPacketBytes = 1392;

}  // namespace

// 0x342f30 ObjectManager::IsPacketValid(int,int)
// The header names the parameters packetId and member; the bodies show the first is the member id (the key of
// unk_148) and the second the packet sequence number (the value stored there and compared by SequenceMoreRecent).
// An unseen member is accepted and its sequence recorded. A known member's packet is accepted only when its
// sequence is more recent than the stored one, and then the stored sequence is replaced.
// The pseudocode types the second parameter as CPacketManager*; it is passed to the static
// CPacketManager::SequenceMoreRecent(uint, uint) as a plain sequence number, so int is used here.
bool ObjectManager::IsPacketValid(int memberId, int packetSeq) {
    auto found = unk_148.find(memberId);
    if (found == unk_148.end()) {
        unk_148.emplace(memberId, packetSeq);
        return true;
    }
    if (!CPacketManager::SequenceMoreRecent(static_cast<std::uint32_t>(packetSeq),
                                            static_cast<std::uint32_t>(found->second))) {
        return false;
    }
    found->second = packetSeq;
    return true;
}

// 0x343188 ObjectManager::AddOrphanRenderObjectToDelete(ObjectBase*)
// Appends a non-null object to the list at +0x04. A null object is ignored.
void ObjectManager::AddOrphanRenderObjectToDelete(ObjectBase* object) {
    if (object != nullptr) {
        m_objects.push_back(object);
    }
}

// 0x3431c0 ObjectManager::AssignObjectNetworkId(ObjectBase*)
// Only in an online game (COnline +0x05). The id comes from the object's name (ObjectBase +0x30, whose data pointer is the char* at +0x44): a name starting with "PlayerCharacter_" takes
// atoi of the rest + 1 and counts one more player (unk_138); a Character that is net spawned or summoned takes the next id of the 10001 range (unk_140); every other object takes
// the next id of the range from 5 (unk_13c). The id is stored in ObjectBase +0x108. An id above 4 records the synchronized seed (ObjectBase +0xfc) and advances the synchronized
// stream once (Random::GetRandom(id, true)). The object is appended to the online list (+0x100), and an object with a net struct (+0x100) raises unk_54. The original returns the list
// node it allocated; nothing reads it, so the function is void.
void ObjectManager::AssignObjectNetworkId(ObjectBase* object) {
    if (!GetOnlineGameFlag()) {
        return;
    }
    const char* name = object->m_name.c_str();
    int id;
    if (std::strstr(name, "PlayerCharacter_") == name) {
        id = std::atoi(name + 16) + 1;
        ++unk_138;
    } else if (object->IsCharacter() &&
               (static_cast<Character*>(object)->m_isNetSpawned != 0 || static_cast<Character*>(object)->IsSummoned())) {
        id = unk_140++ + 10001;
    } else {
        id = unk_13c++ + 5;
    }
    object->unk_108 = id;
    if (id > 4) {
        object->unk_fc = static_cast<std::int32_t>(Random::s_syncedSeed);
        Random::GetRandom(id, true);
    }
    unk_100.push_back(object);
    if (object->m_netStruct != nullptr) {
        ++unk_54;
    }
}

// 0x3432f8 ObjectManager::MarkForDeletion(ObjectBase*)
// Appends the object to the list at +0x3c unless it is already there.
void ObjectManager::MarkForDeletion(ObjectBase* object) {
    if (std::find(unk_3c.begin(), unk_3c.end(), object) == unk_3c.end()) {
        unk_3c.push_back(object);
    }
}

// 0x34336c ObjectManager::GetLightBaseList(std::list<LightBase*>&) const
// Walks the object map (m_objectMap, in key order) and appends every object whose PropertyMap class name is "LightPoint" to out.
void ObjectManager::GetLightBaseList(std::list<LightBase*>& out) const {
    for (const auto& entry : m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object != nullptr && std::strcmp(static_cast<PropertyMap*>(object)->GetThisClassName(), "LightPoint") == 0) {
            out.push_back(static_cast<LightBase*>(object));
        }
    }
}

// 0x344184 ObjectManager::AddNoRoomObject(GameObject*)
// Appends the object to the no-room list (+0x88) and sets its flag (GameObject +0x2f8, unk_2f8) unless it is set.
void ObjectManager::AddNoRoomObject(GameObject* object) {
    if (object->unk_2f8 == 0) {
        m_noRoomObjects.push_back(object);
        object->unk_2f8 = 1;
    }
}

// 0x3454dc ObjectManager::FlushAllOrphanRenderObjects(void)
// Deletes every object in the list at +0x04 through its deleting destructor (vtable slot +0x04), then empties the list.
void ObjectManager::FlushAllOrphanRenderObjects() {
    for (ObjectBase* object : m_objects) {
        if (object != nullptr) {
            delete object;
        }
    }
    m_objects.clear();
}

// 0x34552c ObjectManager::InitPost(void)
// A resumable four-step pass over the level, one object or module per call, driven by the phase counter unk_7c and two function-local iterators (the original's statics): `it`, the
// position in the object map, and `mit`, the position in the module list (+0x68). Phase 0 starts both. In phase 1 each call loads one module (Module::LoadModule) and steps the
// map iterator; when the modules are done the counter jumps to 3. Phase 3 calls InitPost and TestEnableCondition(false) on the object at the iterator. When the iterator reaches the end
// the counter is raised; a result of 4 restarts the map and clears the update, condition and spawn lists (the lists at +0x2c, +0x44 and +0x34) and returns 0, any other value returns 1.
// Phase 4 sorts the object at the iterator: a "RoomZone" game type goes to the room list (+0x24) and builds its object list; any other updatable object goes to the update list (+0x2c); an object
// with an untested activate condition, or an untested deactivate condition, also goes to the condition list (+0x44). The iterator then advances and 0 is returned.
int ObjectManager::InitPost() {
    static std::map<int, ObjectListItem>::iterator it;  // ObjectManager::InitPost(void)::it
    static std::list<Module*>::iterator mit;            // ObjectManager::InitPost(void)::mit

    int phase = unk_7c;
    if (phase == 0) {
        mit = unk_68.begin();
        it = m_objectMap.begin();
        phase = ++unk_7c;
    }
    if (mit == unk_68.end()) {
        if (phase == 1) {
            unk_7c = 2;
            it = m_objectMap.begin();
            phase = ++unk_7c;
        }
    } else if (phase == 1) {
        (*mit)->LoadModule();
        ++mit;
        phase = unk_7c;
    }
    if (it == m_objectMap.end()) {
        phase = phase + 1;
        unk_7c = phase;
        if (phase != 4) {
            return 1;
        }
        it = m_objectMap.begin();
        m_updateList.clear();
        m_conditionList.clear();
        m_spawnList.clear();
        return 0;
    }
    if (phase == 3) {
        ObjectHandle handle(it->second.m_object);
        if (handle.GetObject(false)) {
            handle.GetObject(true)->InitPost();
            handle.GetObject(true)->TestEnableCondition(false);
        }
    } else if (phase == 4) {
        ObjectBase* object = it->second.m_object;
        if (object != nullptr) {
            if (LC_API_STRCASECMP("RoomZone", object->m_gameType.c_str()) != 0) {
                if (object->IsUpdatable()) {
                    m_updateList.push_back(object);
                }
            } else {
                unk_24.push_back(static_cast<RoomZone*>(object));
                static_cast<RoomZone*>(object)->InitObjectList();
            }
            if ((!object->m_enableCond.m_tested && object->m_enableCond.m_list != nullptr) ||
                (!object->m_disableCond.m_tested && object->m_disableCond.m_list != nullptr)) {
                m_conditionList.push_back(object);
            }
        }
    }
    ++it;
    return 0;
}

// 0x345954 ObjectManager::HandleNoRoomObjects(void)
// Clears the no-room list (+0x88), then walks the object map: every GameObject that has no room (m_roomZone, +0x2f4) and is not on the list yet is added with AddNoRoomObject.
void ObjectManager::HandleNoRoomObjects() {
    m_noRoomObjects.clear();
    for (const auto& entry : m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr || !object->IsGameObject()) {
            continue;
        }
        GameObject* gameObject = static_cast<GameObject*>(object);
        if (gameObject->m_roomZone == nullptr &&
            std::find(m_noRoomObjects.begin(), m_noRoomObjects.end(), gameObject) == m_noRoomObjects.end()) {
            AddNoRoomObject(gameObject);
        }
    }
}

// 0x345bcc ObjectManager::GetNumObjectsByType(char const*) const
// Counts the objects GetObjectsByType collects for the type name.
int ObjectManager::GetNumObjectsByType(char const* type) const {
    std::list<Character*> objects;
    GetObjectsByType(type, objects);
    return static_cast<int>(objects.size());
}

// 0x345c20 ObjectManager::GetObjectByType(char const*)
// Returns a handle to the first object GetObjectsByType collects for the type name, or an empty handle.
ObjectHandle ObjectManager::GetObjectByType(char const* type) {
    std::list<Character*> objects;
    GetObjectsByType(type, objects);
    if (objects.empty()) {
        return ObjectHandle(nullptr);
    }
    return ObjectHandle(objects.front());
}

// 0x345e30 ObjectManager::AskNetResendByObjectId(int)
// Looks the object up by network id and records its id in the resend set of its owner member (ObjectBase +0x110),
// unk_194[owner]. Set insertion is idempotent, which matches the original's find-then-insert.
void ObjectManager::AskNetResendByObjectId(int objectId) {
    ObjectHandle handle = GetObjectHandleByNetworkId(objectId);
    GameObject* object = handle;
    const std::int16_t owner = MemberKey(object->m_netOwnerId);
    unk_194[owner].insert(static_cast<std::int16_t>(objectId));
}

// 0x345fbc ObjectManager::DelRoomObjects(std::list<GameObject*>*)
// Removes every entry equal to objects from the room list (+0x80). A null argument is an assert (line 2322) and the
// removal still runs, as in the original.
void ObjectManager::DelRoomObjects(std::list<GameObject*>* objects) {
    if (objects == nullptr) {
        ReportAssert("ro", kObjectManagerSource, 2322);
    }
    m_roomZones.remove(objects);
}

// 0x3460cc ObjectManager::ProcessNextGameObjectToStartUpdate(void)
// Takes the first GameObject of the list at +0x90: calls ZoneEntered on it when non-null, then removes the list's head
// entry. The head is read again after the call, so pop_front removes the current head as the original does.
void ObjectManager::ProcessNextGameObjectToStartUpdate() {
    if (unk_90.empty()) {
        return;
    }
    GameObject* object = unk_90.front();
    if (object != nullptr) {
        object->ZoneEntered();
    }
    unk_90.pop_front();
}

// 0x346178 ObjectManager::ProcessAcknowledgedPacket(int,int)
// Calls NetStruct::ProcessAcknowledgedPacket(memberId, packetId) (vtable +0x40) on each listed object's net struct.
// Then removes the first occurrence of packetId from unk_98[memberId] when that key exists. The asm passes the two
// arguments unchanged through the loop, so the first parameter is the member id of NetStruct's (memberId, packetId).
void ObjectManager::ProcessAcknowledgedPacket(int memberId, int packetId) {
    for (ObjectBase* object : unk_100) {
        if (NetStruct* netStruct = object->m_netStruct) {
            netStruct->ProcessAcknowledgedPacket(memberId, packetId);
        }
    }
    auto found = unk_98.find(memberId);
    if (found == unk_98.end()) {
        return;
    }
    std::list<int>& pending = found->second;
    auto entry = std::find(pending.begin(), pending.end(), packetId);
    if (entry != pending.end()) {
        pending.erase(entry);
    }
}

// 0x346284 ObjectManager::sProcessAcknowledgedPacket(int,int)
// Static entry point: forwards to the ObjectManager instance dword_99F764 when it exists.
void ObjectManager::sProcessAcknowledgedPacket(int memberId, int packetId) {
    if (dword_99F764 != nullptr) {
        dword_99F764->ProcessAcknowledgedPacket(memberId, packetId);
    }
}

// 0x3462b8 ObjectManager::RemoveNoRoomObject(GameObject*)
// Removes the object from the no-room list (+0x88) when it is listed, and clears its flag (GameObject +0x2f8).
void ObjectManager::RemoveNoRoomObject(GameObject* object) {
    auto entry = std::find(m_noRoomObjects.begin(), m_noRoomObjects.end(), object);
    if (entry != m_noRoomObjects.end()) {
        m_noRoomObjects.erase(entry);
        object->unk_2f8 = 0;
    }
}

// 0x346510 ObjectManager::SerializeGameObjectNetData(int,int,NetBitStream&)
// Writes this member's packet records. The first int is the member id (the key of the per-member maps) and the
// second is the packet id (the list pushed into unk_98 and the Serialize argument). The original header names them
// objectId and member; the bodies show the order above.
// The packet, in bit order: the level index byte, the member-present bit (set when this member has the host's
// record in unk_128; then the unk_b0 byte and a unk_e0 increment), the object records (a delta bit, the id when the
// delta is not 1, the unk_f8 byte, the resend check, then PopulateOutgoingNetStruct, SetEnabled and the net struct's
// Serialize into a sub-stream), the count of written records (16 bits), the sub-stream, and the resend set (a 1 bit,
// the set size and each id, or a 0 bit).
// Records that do not fit the sub-stream (its flags set) are reverted and kept in unk_108[memberId] for the next packet.
// The hosting branch, when no objects are pending, first tells the member about every running script: for each script id whose
// ScriptManager::IsScriptRunning is true, a CMsgScriptCmd (command 4, the script id, the script's module) is sent to the member
// (CMessaging::SendMsgTo). When unk_fd is set, the packet's end checks whether this member is the last of the connected member ids
// (CConnectionManager::GetConnMemberIdList(false)) and then flushes the online state (DoOnlineStateFlush) and clears unk_fd; an empty
// list (the original reads the element before its begin) does nothing. The early return for a full packet skips that tail.
void ObjectManager::SerializeGameObjectNetData(int memberId, int packetId, NetBitStream& stream) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    stream.WriteByte(static_cast<std::uint8_t>(level->m_levelListIndex), 8);

    const std::int16_t key = MemberKey(memberId);
    static_cast<void>(unk_164[key]);                       // the original's operator[] creates the entry
    const int resendCount = static_cast<int>(unk_17c[key].size());

    bool hosting = false;  // v113: this member has a record in unk_128 while this player hosts
#ifdef DH2_HOST_RUNNER
    {
        static int tracedSerialize = 0;
        if (tracedSerialize < 40 && dword_99F76C->IsLocalPlayerHosting()) {
            ++tracedSerialize;
            DH2_NET_TRACE_LOG("[net] SerializeGameObjectNetData member %d packet %d queued %zu\n", memberId, packetId, unk_128.size());
        }
    }
#endif
    if (dword_99F76C->IsLocalPlayerHosting() &&
        std::find(unk_128.begin(), unk_128.end(), memberId) != unk_128.end()) {
        hosting = true;
        unk_98[memberId].push_back(packetId);
        stream.WriteBit(1);
        stream.WriteByte(static_cast<std::uint8_t>(unk_b0[memberId]), 8);
        ++unk_e0[memberId];
    } else {
        stream.WriteBit(0);
    }

    std::list<ObjectBase*>& pending = unk_108[key];        // the objects still to send to this member
    const std::uint32_t writeBits = stream.WritePosition();
    const int partialByte = (writeBits & 7u) != 0 ? 1 : 0;
    const int remaining = kPacketBytes - static_cast<int>(writeBits >> 3) - partialByte;
    if (remaining <= 0) {
        stream.WriteU32(0, 16);
        return;
    }

    NetBitStream sub(static_cast<std::uint32_t>(remaining));  // v120: the records, appended after the count
    std::list<ObjectBase*> selected;                          // v132: objects chosen by this packet
    std::list<ObjectBase*>* source = &selected;
    if (!pending.empty()) {
        source = &pending;  // the objects that were deferred by the last packet go first, unchanged
    } else if (hosting) {
        const int localMember = CMatching::Get()->LocalMemberId();  // v117: vtable +0x6c
        const int scriptCount = static_cast<int>(ScriptManager::s_inst.m_cmds.size());
        for (int scriptId = 0; scriptId < scriptCount; ++scriptId) {
            if (!ScriptManager::s_inst.IsScriptRunning(scriptId)) {
                continue;
            }
            const int module = ScriptManager::s_inst.GetScriptModule(scriptId);
            CMessaging* messaging = CMessaging::GetInstance();
            CMsgScriptCmd* command = static_cast<CMsgScriptCmd*>(CMessage::CreateMessage("CMsgScriptCmd", true));
            command->scriptId_ = scriptId;  // +0x54
            command->module_ = module;      // +0x58
            command->command_ = 4;          // +0x50
            messaging->SendMsgTo(command, memberId);
        }
        for (ObjectBase* object : unk_100) {
            if (object == nullptr || object->m_netStruct == nullptr) {
                continue;
            }
            ObjectHandle handle = object->GetHandle();
            Character* character = handle;
            if (character == nullptr ||
                ((!character->IsPlayer() || IsRemotePlayerOfMember(localMember, character)) &&
                 !character->IsMerchant())) {
                selected.push_back(object);
            }
        }
    } else {
        for (ObjectBase* object : unk_100) {
            const bool inSet = unk_164[key].count(static_cast<std::int16_t>(object->unk_108)) != 0;
            const bool serializable = IsObjectSerializable(object, memberId);
            if (inSet) {
                if (serializable || object->m_netStruct != nullptr) {
                    selected.push_back(object);
                }
            } else if (serializable) {
                selected.push_back(object);
            } else if (object->m_netStruct != nullptr) {
                object->m_netStruct->SetEnabled(false);
            }
        }
    }

    bool deferring = false;               // v51: a record did not fit, so the rest wait for the next packet
    std::list<ObjectBase*> deferred;      // v130
    std::uint32_t prevId = 0;             // v52: the previous record's id, the base of the delta
    int written = 0;                      // v112: records written into sub
    for (ObjectBase* object : *source) {
        if (deferring) {
            deferred.push_back(object);
            continue;
        }
        sub.SetRevertPoint();
        const std::uint32_t id = static_cast<std::uint32_t>(object->unk_108);
        if (id - prevId == 1) {
            sub.WriteBit(0);
        } else {
            sub.WriteBit(1);
            sub.WriteU32(id, 16);
        }
        sub.WriteByte(object->unk_f8, 8);

        // A resend-marked id is resent: NetStruct::Resend, then the id leaves the member's resend set.
        if (unk_164[key].count(static_cast<std::int16_t>(id)) != 0) {
            object->m_netStruct->Resend();
            unk_164[key].erase(static_cast<std::int16_t>(id));
        }

        object->PopulateOutgoingNetStruct(hosting);
        object->m_netStruct->SetEnabled(true);
        object->m_netStruct->Serialize(sub, memberId, packetId);
        if (sub.Flags() != 0) {
            sub.Revert();
            deferred.push_back(object);
            deferring = true;
        } else {
            ++written;
        }
        prevId = id;
    }

    stream.WriteU32(static_cast<std::uint32_t>(written), 16);
    stream.WriteStream(sub);
    pending.clear();
    if (deferring) {
        pending = deferred;
        deferred.clear();
        stream.WriteBit(0);
    } else {
        unk_128.remove(memberId);
        if (hosting) {
            stream.WriteBit(1);
            stream.WriteByte(static_cast<std::uint8_t>(unk_e0[memberId]), 8);
        } else {
            stream.WriteBit(0);
        }
    }

    // The resend set: a 1 bit, its size and each id, or a 0 bit when the set was empty when the packet started.
    if (resendCount > 0) {
        stream.WriteBit(1);
        stream.WriteU32(static_cast<std::uint32_t>(resendCount), 16);
        for (std::int16_t id : unk_17c[key]) {
            stream.WriteU32(static_cast<std::uint32_t>(id), 16);
        }
    } else {
        stream.WriteBit(0);
    }

    if (unk_fd != 0) {
        const std::vector<int> connectedMembers = GetConnectionMgr()->GetConnMemberIdList(false);
        if (!connectedMembers.empty() && connectedMembers.back() == memberId) {
            DoOnlineStateFlush();
            unk_fd = 0;
        }
    }
}

// 0x347074 ObjectManager::sWritePacketData(int,int,NetBitStream&)
// Static entry point for the packet manager. When the current level has loaded past step 35 and the ObjectManager
// instance exists, writes a 1 bit and the member's records. Otherwise writes a 0 bit. Returns 1 when records were
// written, else 0.
bool ObjectManager::sWritePacketData(int memberId, int packetId, NetBitStream& stream) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_loadStep > 35 && dword_99F764 != nullptr) {
        stream.WriteBit(1);
        dword_99F764->SerializeGameObjectNetData(memberId, packetId, stream);
        return true;
    }
    stream.WriteBit(0);
    return false;
}

// 0x347100 ObjectManager::InitModulesFogColor(std::vector<Point3D<float>> const&, int)
// Nothing without colours. Otherwise a copy of the colours is shuffled (the STLport random_shuffle loop with lrand48), the modules of the list (+0x68) are sorted by distance from the first
// module (SortModuleByDistance), and every module in that order whose fog colour is still Module::UNINIT_FOG_COLOR takes the colour at index (int) distance / (100 * step) % count, the
// distance being measured from the first module.
void ObjectManager::InitModulesFogColor(std::vector<Point3D<float>> const& colors, int step) {
    if (colors.empty()) {
        return;
    }
    const int divisor = 100 * step;
    std::vector<Point3D<float>> shuffled(colors);
    for (std::size_t i = 1; i < shuffled.size(); ++i) {   // std::random_shuffle (0x3411c4)
        std::swap(shuffled[i], shuffled[static_cast<std::size_t>(dh2::rand48_next() % static_cast<long>(i + 1))]);
    }
    std::vector<Module*> modules(unk_68.begin(), unk_68.end());
    if (modules.empty()) {
        return;
    }
    Module* origin = unk_68.front();
    std::sort(modules.begin(), modules.end(), SortModuleByDistance{origin});
    const int count = static_cast<int>(shuffled.size());
    for (Module* module : modules) {
        const float dx = origin->m_position.X - module->m_position.X;
        const float dy = origin->m_position.Y - module->m_position.Y;
        const float dz = origin->m_position.Z - module->m_position.Z;
        const float distance = std::sqrt((dx * dx + dy * dy) + dz * dz);
        if (module->m_fogColor == Module::UNINIT_FOG_COLOR) {
            const int bucket = divisor != 0 ? static_cast<int>(distance) / divisor : 0;   // __aeabi_idiv by zero is undefined in the original
            module->m_fogColor = shuffled[static_cast<std::size_t>(bucket % count)];
        }
    }
}
