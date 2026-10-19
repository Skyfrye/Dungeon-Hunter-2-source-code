#include "net-transport/net_trace.hpp"
#include <cstdlib>
#ifdef GetObject
#undef GetObject  // windows.h (via socket_platform.hpp) renames ObjectHandle::GetObject to GetObjectA
#endif
// ObjectManager, part 3 of 4 (batch g1-game-world-ObjectManager-5017c7-2).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original
// 32-bit ones. The object id map is std::map<int, ObjectListItem> m_objectMap (dh2/ObjectListItem.hpp): an entry holds the
// object's name and the object pointer.

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <set>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/global/debug_trace.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CameraBase.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-core-io/os/device.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/Container.hpp"
#include "dh2/RoomZone.hpp"
#include "dh2/Door.hpp"
#include "dh2/Trigger.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Module.hpp"
#include "dh2/ObjectListItem.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/object_factory.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/net_singletons.hpp"
#include "net-session-online/c_matching_base.hpp"
#include "net-session-online/online_game_state.hpp"        // OnlineSingleton<OnlineGameState>, mode_ (+0x34)
#include "net-session-online/tb/online_singleton.hpp"      // OnlineSingleton<T>::GetInstance
#include "net-session-online/c_online.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_struct.hpp"

namespace {

// COnline::isOnlineGame_ (+0x05) has no getter in net-session-online/c_online.hpp. Until one exists this
// reads as offline, so every online-only branch in this file is skipped.
bool OnlineGameFlagUnavailable() { return GetOnlineGameFlag(); }

// Removes every node whose value equals `value`. Matches the original loops that unlink each match.
template <typename T>
void EraseAll(std::list<T>& list, const T& value) {
    list.remove(value);
}

// Removes only the first node whose value equals `value`. Matches the original loops that break after one unlink.
template <typename T>
void EraseFirst(std::list<T>& list, const T& value) {
    auto it = std::find(list.begin(), list.end(), value);
    if (it != list.end()) {
        list.erase(it);
    }
}

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

// objectCreationMap (0x95c800): the 33 {type name, factory} pairs GetNewObject scans in order. "Block" shares the Module factory and "Player" the Character factory.
struct ObjectCreationEntry {
    const char* typeName;
    ObjectBase* (*factory)();
};

const ObjectCreationEntry objectCreationMap[33] = {
    {"Decor", &GetNewInstance<Decor>},
    {"AnimatedDecor", &GetNewInstance<AnimatedDecor>},
    {"Dummy", &GetNewInstance<Dummy>},
    {"Floor", &GetNewInstance<Floor>},
    {"LightPoint", &GetNewInstance<LightPoint>},
    {"ColBox", &GetNewInstance<ColBox>},
    {"Billboard", &GetNewInstance<Billboard>},
    {"Module", &GetNewInstance<Module>},
    {"Block", &GetNewInstance<Module>},
    {"Character", &GetNewInstance<Character>},
    {"Player", &GetNewInstance<Character>},
    {"RoomZone", &GetNewInstance<RoomZone>},
    {"QuestMoveInZone", &GetNewInstance<QuestMoveInZone>},
    {"CheckpointZone", &GetNewInstance<CheckpointZone>},
    {"TriggerObject", &GetNewInstance<TriggerObject>},
    {"TriggerPlate", &GetNewInstance<TriggerPlate>},
    {"TriggerZone", &GetNewInstance<TriggerZone>},
    {"TriggerZoneExitLevel", &GetNewInstance<TriggerZoneExitLevel>},
    {"TriggerTrap", &GetNewInstance<TriggerTrap>},
    {"TimerTrap", &GetNewInstance<TimerTrap>},
    {"ProjectileTrap", &GetNewInstance<ProjectileTrap>},
    {"Door", &GetNewInstance<Door>},
    {"SpawnPoint", &GetNewInstance<SpawnPoint>},
    {"SpawnSpot", &GetNewInstance<SpawnSpot>},
    {"LiftableObject", &GetNewInstance<LiftableObject>},
    {"OpenableContainer", &GetNewInstance<OpenableContainer>},
    {"SlotContainer", &GetNewInstance<SlotContainer>},
    {"DestructibleContainer", &GetNewInstance<DestructibleContainer>},
    {"Item", &GetNewInstance<ItemObject>},
    {"Projectile", &GetNewInstance<Projectile>},
    {"LaserTypeProjectile", &GetNewInstance<LaserTypeProjectile>},
    {"SoundEmitter", &GetNewInstance<SoundEmitter>},
    {"LevelConfig", &GetNewInstance<LevelConfig>},
};

}  // namespace

// 0x34735c ObjectManager::LoadGameObjectNetData(int,int,NetBitStream &)
// Reads one member's packet records (the first int is the member id, the second the packet sequence number). After the level index check and the
// header bookkeeping (unk_b0 / unk_c8 / unk_e0) and the packet-validity test, each of the entry count records is: a delta bit and the id (16 bits when
// the bit is set, else the previous id + 1), the type byte, and the object with that network id. An object with the right type byte (ObjectBase::unk_f8)
// takes its incoming net struct (unk_104) loaded from the stream (NetStruct::Load, slot +0x14, with the member id and 0) when the packet is valid, else the
// record is skipped (Erase, slot +0x1c). On the server (COnline::IsServer) a record for an object owned by another member is dropped when the owner
// is unset and CanSendUpdate allows it, or when it is not a player character or carries the local player's own network id. An accepted record
// runs InterpretIncomingNetStruct(headerPresent) (vtable +0x50), sets the owner (m_netOwnerId, +0x110) to the member and clears the timer (+0x114); a load
// result other than NetStruct::LOAD_COMPLETE (2) keeps the id when unk_17c[member] lists it, and unk_194[member] listing it keeps the id too. A missing or
// wrongly typed object is built from the type byte (1 Character, 2 Container, 3 Door, 4 Trigger; anything else ASSERTs ObjectManager.cpp:2144 and keeps the object
// found, if any), its incoming net struct skips the record, a valid packet keeps the id, and the temporary object is deleted (slot +4); an object without
// an incoming net struct is skipped. After the records: unk_17c[member] becomes the kept ids and unk_194[member] is emptied; a 1 bit gives the member's
// resend byte (unk_c8) and, with a header, a resend byte that matches the header counter (unk_e0) sets unk_160; a final 1 bit with a valid packet
// reads a count and that many ids into unk_164[member]. With no records the trailing fields are not read. An entry whose object cannot be used (a type
// byte outside 1..4 with no object found) is skipped; the original dereferences it.
void ObjectManager::LoadGameObjectNetData(int objectId, int member, NetBitStream& stream) {
    Level* currentLevel = ApplicationGetInstance().GetCurrentLevel();
    const int streamLevel = currentLevel == nullptr ? -1 : static_cast<int>(stream.ReadByte(8));
#ifdef DH2_HOST_RUNNER
    if (std::getenv("DH2_NET_TRACE") != nullptr) {
        static int traced = 0;
        if (traced++ < 60) {
            DH2_NET_TRACE_LOG("[net] LoadGameObjectNetData object %d member %d level %p stream level %d current %d\n", objectId, member, static_cast<void*>(currentLevel), streamLevel,
                        currentLevel == nullptr ? -1 : currentLevel->m_levelListIndex);
        }
    }
#endif
    if (currentLevel == nullptr || streamLevel != currentLevel->m_levelListIndex) {
        return;
    }

    // v7 and v79 in the pseudocode. The header bit is clear: the id is -1 and nothing is booked.
    std::int16_t headerByte = -1;
    bool headerPresent = false;
    if (stream.ReadBit() != 0) {
        headerByte = static_cast<std::int16_t>(stream.ReadByte(8));
        // unk_b0 is the highest header byte seen for this object, unk_e0 counts the repeats of that byte, and
        // unk_c8 is reset to -1 whenever a new highest byte arrives. A missing key is booked as -1 before the
        // compare (LABEL_149 in the pseudocode), so a first-seen object with header byte 0 still takes the reset
        // branch. operator[] alone would book 0 there and skip the reset.
        if (unk_b0.find(objectId) == unk_b0.end()) {
            unk_b0[objectId] = -1;
        }
        if (unk_b0[objectId] < headerByte) {
            unk_b0[objectId] = headerByte;
            unk_e0[objectId] = 0;
            unk_c8[objectId] = -1;
        }
        headerPresent = true;
        if (unk_b0[objectId] == headerByte) {
            ++unk_e0[objectId];
        }
    }

    const std::uint32_t entryCount = stream.ReadU32(16);
    // Hex-Rays leaves IsPacketValid unset when entryCount is zero. It is false here.
    bool isPacketValid = false;
    if (entryCount != 0) {
        isPacketValid = IsPacketValid(objectId, member);
        if (headerPresent) {
            isPacketValid = (unk_b0[objectId] == headerByte);
        }
        constexpr int kLoadComplete = 2;  // NetStruct::LOAD_COMPLETE (ELF 0x90c278)
        const std::int16_t key = static_cast<std::int16_t>(objectId);
        std::list<std::int16_t> keptIds;  // v90
        int id = 0;                       // v9
        for (std::uint32_t entry = 0; entry < entryCount; ++entry) {
            if (stream.ReadBit() != 0) {
                id = static_cast<int>(stream.ReadU32(16));
            } else {
                ++id;
            }
            const std::uint32_t typeByte = stream.ReadByte(8);
            ObjectHandle handle = GetObjectHandleByNetworkId(id);
            ObjectBase* object = handle.GetObject(false);
            bool created = false;
            if (object == nullptr || object->unk_f8 != typeByte) {
                created = true;
                switch (typeByte) {
                    case 1:
                        object = new Character(static_cast<ObjectBase::GO_IDS>(0));
                        break;
                    case 2:
                        object = new Container(static_cast<ObjectBase::GO_IDS>(20));
                        break;
                    case 3:
                        object = new Door(static_cast<ObjectBase::GO_IDS>(2));
                        break;
                    case 4:
                        object = new Trigger(static_cast<ObjectBase::GO_IDS>(20), false, true);
                        break;
                    default:
                        ReportAssert("false", 2144);
                        break;
                }
            }
            if (object == nullptr) {
                continue;
            }
            NetStruct* incoming = object->unk_104;
            if (incoming == nullptr) {
                continue;
            }
            if (created) {
                incoming->Erase(stream);
                if (isPacketValid) {
                    keptIds.push_back(static_cast<std::int16_t>(id));
                }
                delete object;
                continue;
            }
            if (!isPacketValid) {
                incoming->Erase(stream);
                continue;
            }
            const int loadResult = incoming->Load(stream, objectId, 0);
            if (GetOnline()->IsServer()) {
                int ownerId = object->m_netOwnerId;  // +0x110
                bool checkOwner = true;
                if (ownerId == -1) {
                    if (!CanSendUpdate(object)) {
                        checkOwner = false;
                    } else {
                        ownerId = object->m_netOwnerId;
                    }
                }
                if (checkOwner && objectId != ownerId &&
                    (!object->IsCharacter() || !object->IsPlayer() ||
                     id == dword_99F76C->GetLocalPlayer(0, true)->unk_660->unk_108)) {
                    continue;
                }
            }
            object->InterpretIncomingNetStruct(headerPresent);  // vtable +0x50
            object->m_netOwnerId = objectId;                    // +0x110
            object->unk_114 = 0.0f;                             // +0x114
            if (loadResult != kLoadComplete) {
                if (unk_17c[key].count(static_cast<std::int16_t>(id)) != 0) {
                    keptIds.push_back(static_cast<std::int16_t>(id));
                }
            }
            if (unk_194[key].count(static_cast<std::int16_t>(id)) != 0) {
                keptIds.push_back(static_cast<std::int16_t>(id));
            }
        }

        unk_17c[key].clear();
        unk_194[key].clear();
        for (const std::int16_t keptId : keptIds) {
            unk_17c[key].insert(keptId);
        }
        if (stream.ReadBit() != 0) {
            unk_c8[objectId] = static_cast<std::int16_t>(stream.ReadByte(8));
        }
#ifdef DH2_HOST_RUNNER
        if (std::getenv("DH2_NET_TRACE") != nullptr) {
            static int traced2 = 0;
            if (traced2++ < 60) {
                DH2_NET_TRACE_LOG("[net]   entries %u header %d valid %d c8 %d e0 %d b0 %d\n", entryCount, headerPresent ? headerByte : -2, isPacketValid ? 1 : 0, unk_c8[objectId], unk_e0[objectId], unk_b0[objectId]);
            }
        }
#endif
        if (headerPresent) {
            if (unk_c8[objectId] >= 0 &&
                static_cast<std::uint16_t>(unk_e0[objectId]) == static_cast<std::uint16_t>(unk_c8[objectId])) {
                unk_160 = 1;
            }
        }
        if (stream.ReadBit() != 0 && isPacketValid) {
            const std::uint32_t resendCount = stream.ReadU32(16);
            for (std::uint32_t i = 0; i < resendCount; ++i) {
                unk_164[key].insert(static_cast<std::int16_t>(stream.ReadU32(16)));
            }
        }
    }
}

// 0x347d90 ObjectManager::sReadPacketData(int,int,NetBitStream &)
// Static. The pseudocode's first parameter is the object id (the Hex-Rays "this"). It forwards to the instance.
void ObjectManager::sReadPacketData(int objectId, int member, NetBitStream& stream) {
    if (stream.ReadBit() != 0) {
        if (dword_99F764 != nullptr) {
            dword_99F764->LoadGameObjectNetData(objectId, member, stream);
        }
    }
}

// 0x347dec ObjectManager::IsOnlineDeferred(ObjectBase *)
// True when the object is listed in unk_108 under one of the connected member ids. operator[] inserts an empty
// list for a missing member id, as the original does.
bool ObjectManager::IsOnlineDeferred(ObjectBase* object) {
    const std::vector<int> members = CMatching::Get()->ConnectedMemberIds();
    for (int memberId : members) {
        std::list<ObjectBase*>& deferred = unk_108[static_cast<std::int16_t>(memberId)];
        for (ObjectBase* entry : deferred) {
            if (entry == object) {
                return true;
            }
        }
    }
    return false;
}

// 0x347fd0 ObjectManager::ForceFullUpdate(void)
// Reconstructed (r3b-w2) from the listing and the disassembly 0x347fd0..0x34863c. Offline (isOnlineGame_ clear,
// 0x347ff0) the body is the bare return. Online:
//   - when unk_108 (+0x108, the deferred-object map) has entries it is cleared first: the tree is erased
//     (0x3483b4 _Rb_tree<short, list<ObjectBase*>>::_M_erase on [R5+0x10C]) and the header is reset to the empty
//     state (count 0 at 0x3483bc, root 0 at 0x3483c0, left/right back to this+0x108 at 0x3483c4/0x3483c8);
//   - when OnlineGameState mode_ (+0x34) is 3 or 4 (0x3483d0 LDR; SUB #3; CMP #1; BHI past the block), 1 is
//     pushed onto unk_120 (+0x120, the network-id resend list; list node allocated at 0x3483e8, value 1 at
//     0x3483f0, sentinel this+0x120, count at +0x12C bumped), and then, ONCE (the guarded blocks below run only
//     when the key is absent, which is the first call after a clear):
//       * unk_b0 (+0xB0): the tree at [R5+0xB4] is searched for key 1; an absent key is inserted as {1,0}
//         (0x3484d0) and the value is then incremented (0x3484d8 LDRH [node+0x14]; ADD #1; STRH);
//       * unk_e0 (+0xE0): the key 1 entry is created as {1,0} (0x34855c) or set to 0 (0x348568);
//       * unk_c8 (+0xC8): the key 1 entry is created as {1,-1} (0x3485e4) or set to -1 (0x3485f0).
//     (New reading: the three maps these blocks touch are unk_b0/unk_e0/unk_c8, the per-object byte/counter maps
//     at +0xB0/+0xE0/+0xC8 that unk_b0/unk_e0/unk_c8 are declared as - NOT unk_164/unk_17c/unk_194, which the
//     earlier note for this row guessed. The load displacements were read from the instruction bytes:
//     0x348408 [R5+0xB4], 0x3484E4 [R5+0xE4], 0x34856C [R5+0xCC]. Both key and value are 32/16-bit words, which
//     the header's unk_b0/unk_c8/unk_e0 declarations match exactly.)
//   - the member list is CMatching::Get()->ConnectedMemberIds() (vtable +0x88 at 0x348028), and the entry whose id
//     equals GetHostingPlayer()->matching_member_id_ (+0x1a0, 0x3480a4) is SKIPPED (0x3480ac BEQ). The other ids
//     are pushed onto unk_128 (+0x128: list node at 0x3480b4 with the member id as its value, sentinel this+0x128,
//     count at +0x12C bumped), every call. The vector block is released at 0x3482d0 with __node_alloc::_M_deallocate,
//     which the std::vector destructor does.
void ObjectManager::ForceFullUpdate() {
    if (!OnlineGameFlagUnavailable()) {
        return;
    }

    const std::uint32_t mode =
        static_cast<std::uint32_t>(OnlineSingleton<OnlineGameState>::GetInstance()->mode_);  // +0x34
    if (!unk_108.empty()) {
        unk_108.clear();
    }
    // Only the key-1 injection (LABEL_82) is behind the mode test (modes 3 and 4, the GL Live ones); the member loop (LABEL_4) runs in every mode.
    // WHAT THE OLD BODY GOT WRONG: it returned here for modes 1 and 2, so a LAN/Bluetooth host never queued its clients in unk_128, never wrote the
    // header of the first object packet, the client's unk_160 stayed 0 and it never became ready to roll (load step 36 for ever).
    static bool entryInjected = false;
    if (mode - 3 <= 1 && !entryInjected) {
        // The key-1 entries are written only when they are absent, which the guarded insert_unique blocks make
        // happen on the first pass after a clear; the std::map operator[] the port would use here always creates.
        entryInjected = true;
        unk_120.push_back(1);  // the node the original allocates and links at 0x3483e8
        if (unk_b0.count(1) == 0) {
            unk_b0[1] = 0;
        }
        ++unk_b0[1];
        unk_e0[1] = 0;
        unk_c8[1] = -1;
    }

    const std::vector<int> members = CMatching::Get()->ConnectedMemberIds();
    const int localMatchingId = dword_99F76C->GetHostingPlayer()->matching_member_id_.GetValue();
    for (int memberId : members) {
        if (memberId == localMatchingId) {
            continue;  // the original skips the local member (0x3480ac)
        }
        unk_128.push_back(memberId);
    }
#ifdef DH2_HOST_RUNNER
    DH2_NET_TRACE_LOG("[net] ForceFullUpdate mode %u connected %zu hostMatching %d queued %zu\n", mode, members.size(), localMatchingId, unk_128.size());
#endif
}

// 0x348644 ObjectManager::ProcessLostPacket(int,int)
// When the packet id has an entry in unk_98 that lists the member, the whole map is cleared and a full update
// is forced.
void ObjectManager::ProcessLostPacket(int packetId, int member) {
    auto found = unk_98.find(packetId);
    if (found == unk_98.end()) {
        return;
    }
    const std::list<int>& members = found->second;
    if (std::find(members.begin(), members.end(), member) == members.end()) {
        return;
    }
    if (!unk_98.empty()) {
        unk_98.clear();
    }
    ForceFullUpdate();
}

// 0x348724 ObjectManager::sProcessLostPacket(int,int)
// Static. Forwards to the instance.
void ObjectManager::sProcessLostPacket(int packetId, int member) {
    if (dword_99F764 != nullptr) {
        dword_99F764->ProcessLostPacket(packetId, member);
    }
}

// 0x348988 ObjectManager::Draw3D(void)
// Sets the world transform to the identity, draws every visible object of m_objectMap in key order (Draw() on the ObjectBase,
// vtable +0x30, when m_visible is set; the map entry's object is at value +0x18), and, with the "isDisplayingCullingBoxes" debug
// switch, overlays the culling boxes: the built-in material renderer 1 is set, the box (+0x12c) of every RoomZone of the list at
// +0x24 is drawn in 0x7F00FF00, the level camera's view frustum box in 0x7F0000FF, and the eight frustum corners (intersections
// of planes 0/1 with 4/5 and 2/3) are marked as boxes of size 100: the near four in 0x7FFF0000, the far four in 0x7FFFFF00.
void ObjectManager::Draw3D() {
    const glitch::core::CMatrix4<float> identity(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);  // zeroed, diagonal 1.0, identity flag (+0x40)
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    driver->setTransform(1, identity);  // E_TRANSFORMATION_STATE 1: world, vtable +0x6c

    for (auto& entry : m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object != nullptr && object->m_visible) {
            object->Draw();
        }
    }

    DebugSwitches::GetInstance()->load();
    if (!DebugSwitches::GetInstance()->GetSwitch("isDisplayingCullingBoxes")) {
        return;
    }
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
    const uint16_t renderer = renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));  // cached built-in id
    boost::intrusive_ptr<glitch::video::CMaterial> material = renderers->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 0xff;
    driver->setMaterial(material, technique, nullptr);
    glitch::video::SColor color;
    color.color = 0x7F00FF00;
    for (RoomZone* zone : unk_24) {
        glitch::core::aabbox3d<float> box;
        box.MinEdge.X = zone->m_absAabb[0];  // +0x12c
        box.MinEdge.Y = zone->m_absAabb[1];
        box.MinEdge.Z = zone->m_absAabb[2];
        box.MaxEdge.X = zone->m_absAabb[3];
        box.MaxEdge.Y = zone->m_absAabb[4];
        box.MaxEdge.Z = zone->m_absAabb[5];
        driver->draw3DBox(box, color);  // vtable +0x28
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    const glitch::scene::SViewFrustum* frustum = level->m_camera->m_camera->getViewFrustum();  // Level +0x128, CameraBase +0x08, vtable +0x144
    color.color = 0x7F0000FF;
    driver->draw3DBox(frustum->box, color);  // frustum +0x6c
    const glitch::core::plane3d<float>* planes = frustum->planes;
    // The eight corners: (plane 0 or 1) with (4 or 5) with (2 or 3).
    auto mark = [&color](const glitch::core::plane3d<float>& a, const glitch::core::plane3d<float>& b, const glitch::core::plane3d<float>& c) {
        glitch::core::vector3d<float> point;
        point.X = 0.0f;
        point.Y = 0.0f;
        point.Z = 0.0f;
        a.getIntersectionWithPlanes(b, c, point);
        DBG_DisplayPointAsBox(point, color, 100);
    };
    color.color = 0x7FFF0000;
    mark(planes[0], planes[4], planes[2]);
    mark(planes[0], planes[4], planes[3]);
    mark(planes[0], planes[5], planes[2]);
    mark(planes[0], planes[5], planes[3]);
    color.color = 0x7FFFFF00;
    mark(planes[1], planes[4], planes[2]);
    mark(planes[1], planes[4], planes[3]);
    mark(planes[1], planes[5], planes[2]);
    mark(planes[1], planes[5], planes[3]);
}

// 0x348ea4 ObjectManager::Remove(ObjectHandle)
// Unlinks the object everywhere: its room (RoomZone::RemoveObject) and the no-room list, the first entry of the list at +0x90, every entry of the update list (+0x2c) and of the list at +0x70,
// and for a Character the character list (+0x60) and its AI group (CharAI::RemoveFromGroup); a Module (GO_IDS 5) leaves the module list (+0x68). Online, the entry of the online list
// (+0x100) that is the map entry's object is removed, and its network id is remembered in unk_120 unless it is a player character. Then the object count (unk_50) drops. An object flagged
// unk_2fc (GameObject +0x2fc) is handed to AddOrphanRenderObjectToDelete; any other is deleted through its virtual destructor. The map entry is erased and the generation (+0x78) is raised.
void ObjectManager::Remove(ObjectHandle handle) {
    GameObject* object = handle;
    if (object != nullptr) {
        if (RoomZone* zone = object->m_roomZone) {
            zone->RemoveObject(object);
        }
        RemoveNoRoomObject(object);
        EraseFirst(unk_90, object);
    }

    ObjectBase* base = handle.GetObject(false);
    EraseAll(m_updateList, base);

    Character* character = handle;
    EraseAll(unk_70, character);
    if (character != nullptr) {
        EraseAll(m_characters, character);
        character->CharAI::RemoveFromGroup();
    }

    base = handle.GetObject(false);
    if (base != nullptr && base->m_goId == 5) {
        EraseAll(unk_68, static_cast<Module*>(base));
    }

    if (OnlineGameFlagUnavailable()) {
        const int key = static_cast<int>(handle.m_id);
        for (auto it = unk_100.begin(); it != unk_100.end(); ++it) {
            ObjectBase* listed = *it;
            if (listed == m_objectMap[key].m_object) {
                ObjectHandle listedHandle = listed->GetHandle();
                Character* listedCharacter = listedHandle;
                if (listedCharacter == nullptr || !listedCharacter->IsPlayer()) {
                    unk_120.push_back(static_cast<std::int16_t>(listed->unk_108));
                }
                unk_100.erase(it);
                break;
            }
        }
    }

    --unk_50;
    const int key = static_cast<int>(handle.m_id);
    if (object != nullptr && object->unk_2fc != 0) {
        AddOrphanRenderObjectToDelete(m_objectMap[key].m_object);
    } else {
        ObjectBase* entryObject = m_objectMap[key].m_object;
        if (entryObject != nullptr) {
            delete entryObject;
        }
    }
    auto entry = m_objectMap.find(key);
    if (entry != m_objectMap.end()) {
        m_objectMap.erase(entry);
    }
    ++m_generation;
}

// 0x349240 ObjectManager::FakeRemove(ObjectHandle)
// The same unlinks as Remove, with the object marked for deletion first (+0x81) and, for a Character, Character::Clean after leaving its group; the module list (+0x68, GO_IDS 5), the
// update list and the online list (+0x100, every entry) are cleaned too. The map entry is erased, and then (as the listing does) an entry for the id is created again by operator[]
// and its object, which is null, is passed to AddOrphanRenderObjectToDelete (which ignores null): the render object is not queued.
void ObjectManager::FakeRemove(ObjectHandle handle) {
    GameObject* object = handle;
    object->m_markedForDeletion = 1;
    if (RoomZone* zone = object->m_roomZone) {
        zone->RemoveObject(object);
    }
    RemoveNoRoomObject(object);
    EraseFirst(unk_90, object);

    ObjectBase* base = handle.GetObject(false);
    EraseAll(m_updateList, base);

    Character* character = handle;
    EraseAll(unk_70, character);
    if (character != nullptr) {
        EraseAll(m_characters, character);
        character->CharAI::RemoveFromGroup();
        character->Clean();
    }

    base = handle.GetObject(false);
    if (base != nullptr && base->m_goId == 5) {
        EraseAll(unk_68, static_cast<Module*>(base));
    }

    ObjectBase* online = handle.GetObject(false);
    EraseAll(unk_100, online);

    const int key = static_cast<int>(handle.m_id);
    auto entry = m_objectMap.find(key);
    if (entry != m_objectMap.end()) {
        m_objectMap.erase(entry);
    }
    AddOrphanRenderObjectToDelete(m_objectMap[key].m_object);
}

// 0x3496b8 ObjectManager::Flush(void)
// Every Character is told to flush its target list and is deleted (ObjectBase::Delete); the AI pointers of the characters are then updated. Every object of the map is deleted
// and its entry nulled, and the map is emptied. Every list, map and counter is reset, the no-room list is registered as a room list again, the map gets its entry for key 0, the key counter
// restarts at 1, the orphan render objects are deleted, and the packet bookkeeping maps are emptied. The original calls _UpdatePointers with a null this when a list entry is null; the
// character list never holds null, so that case is not written.
void ObjectManager::Flush() {
    for (Character* character : m_characters) {
        character->GameObject::FlushTargetList();
        character->ObjectBase::Delete();
    }
    for (Character* character : m_characters) {
        static_cast<CharAI*>(character)->_UpdatePointers();
    }

    for (auto& entry : m_objectMap) {
        if (entry.second.m_object != nullptr) {
            delete entry.second.m_object;
            entry.second.m_object = nullptr;
        }
    }
    unk_90.clear();
    m_objectMap.clear();
    m_characters.clear();
    unk_68.clear();
    unk_100.clear();
    unk_120.clear();
    unk_108.clear();
    unk_164.clear();
    unk_17c.clear();
    unk_194.clear();
    unk_128.clear();
    unk_130.clear();
    m_roomZones.clear();
    m_noRoomObjects.clear();
    AddRoomObjects(&m_noRoomObjects);
    unk_138 = 0;
    unk_13c = 0;
    unk_140 = 0;
    unk_148.clear();
    unk_160 = 0;
    static_cast<void>(m_objectMap[0]);

    m_nextKey = 1;
    unk_58 = 0;
    unk_50 = 0;
    unk_54 = 0;
    unk_3c.clear();
    m_updateList.clear();
    m_conditionList.clear();
    m_spawnList.clear();
    unk_70.clear();
    unk_24.clear();
    unk_7c = 0;
    FlushAllOrphanRenderObjects();
    unk_98.clear();
    unk_b0.clear();
    unk_c8.clear();
    unk_e0.clear();
}

// 0x349b14 ObjectManager::~ObjectManager()
// 0x349e8c ObjectManager::~ObjectManager()
// Both copies (D1 and D2) have one body: Flush(), then the lists and maps are cleared, which the implicit member destruction does.

ObjectManager::~ObjectManager() {
    Flush();
}

// 0x349e70 ObjectManager::~ObjectManager()
// Deleting destructor (D0): compiler-generated for a virtual destructor, which runs ~ObjectManager and then frees
// the object. Not rebuilt.

// 0x34a1e8 ObjectManager::ObjectManager(void)
// 0x34a404 ObjectManager::ObjectManager(void)
// Both copies (C1 and C2) have one body: the lists and maps start empty, the scalar members (next key, counters, generation, phase, +0xf8, the initialized byte) are zeroed, and
// Flush() sets up the rest (the room list holding the no-room list, the map entry for key 0, the key counter at 1).
ObjectManager::ObjectManager()
    : m_nextKey(0),
      unk_50(0),
      unk_54(0),
      unk_58(0),
      unk_5c(0),
      m_generation(0),
      unk_7c(0),
      unk_f8(0),
      unk_fc(0),
      unk_fd(0),
      unk_138(0),
      unk_13c(0),
      unk_140(0),
      unk_160(0),
      m_initialized(0) {
    Flush();
}

// 0x34a620 ObjectManager::Update(float)
// One frame of the object manager, in the profiling scope "ObjectManager::Update". Online, unk_fc and unk_fd are set. When the current level exists, is loaded, is not in the game view and the
// game is offline nothing more happens. Then: UpdateRooms, DoRemoteUpdateUpdate, ProcessNextGameObjectToStartUpdate; the spawn list (+0x34) is appended to the update list (+0x2c) and emptied;
// the objects marked for deletion (+0x3c) are visited: one with a lock count or a delete delay is left (the delay counts down), one that is not deferred for an online member is removed (a
// player character with FakeRemove, anything else with Remove) and leaves the list. The condition list (+0x44) tests the activate and deactivate conditions of the objects that still have an untested one.
// The counters unk_58 and unk_5c are reset. Every object of the update list is then handled: a Character updates its AI pointers; an object that is updating and enabled (or remotely updated in an
// online game) is dropped to the deletion list when marked for deletion, otherwise Update runs (unk_88 cleared first) and the list at +0x70 follows the unk_88 flag (unk_89 holds the last
// value); any other object loses its cull state and a Character unloads its script process. Last the debug switches TraceUpdateGameObjectOnce and Give50Potions are cleared.
void ObjectManager::Update(float dt) {
    PushProfilingContext("ObjectManager::Update");
    if (GetOnlineGameFlag()) {
        unk_fd = 1;
        unk_fc = 1;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level != nullptr && level->m_isLoaded && !level->m_isInGameView && !GetOnlineGameFlag()) {
        PopProfilingContext("ObjectManager::Update");
        return;
    }
    UpdateRooms();
    DoRemoteUpdateUpdate(dt);
    ProcessNextGameObjectToStartUpdate();
    m_updateList.splice(m_updateList.end(), m_spawnList);

    for (auto it = unk_3c.begin(); it != unk_3c.end();) {
        ObjectBase* object = *it;
        if (object->m_lockCount == 0 && object->m_deleteMode == 0 && !IsOnlineDeferred(object)) {
            if (object->IsCharacter() && object->IsPlayer()) {
                FakeRemove(ObjectHandle(object));
            } else {
                Remove(ObjectHandle(object));
            }
            it = unk_3c.erase(it);
            continue;
        }
        if (object->m_deleteMode != 0) {
            object->m_deleteMode = static_cast<std::uint8_t>(object->m_deleteMode - 1);
        }
        ++it;
    }

    for (ObjectBase* object : m_conditionList) {
        const bool enablePending = !object->m_enableCond.m_tested && object->m_enableCond.m_list != nullptr;
        const bool disablePending = !object->m_disableCond.m_tested && object->m_disableCond.m_list != nullptr;
        if (enablePending || disablePending) {
            object->TestEnableCondition(true);
            object->TestDisableCondition(true);
        }
    }

    unk_58 = 0;
    unk_5c = 0;
    for (auto it = m_updateList.begin(); it != m_updateList.end();) {
        ObjectBase* object = *it;
        if (object == nullptr) {
            ++it;
            continue;
        }
        if (object->IsCharacter()) {
            static_cast<Character*>(object)->UpdateAIPointers();
        }
        if ((object->unk_85 != 0 && object->m_enabled) || (GetOnlineGameFlag() && object->IsRemotelyUpdated())) {
            if (object->m_markedForDeletion != 0) {
                MarkForDeletion(object);
                it = m_updateList.erase(it);
                continue;
            }
            object->unk_88 = 0;
            object->Update();
            ObjectHandle handle = object->GetHandle();
            if (handle.GetObject(false) != nullptr) {
                if (object->unk_89 != object->unk_88) {
                    object->unk_89 = object->unk_88;
                    Character* character = handle;
                    if (object->unk_88 != 0) {
                        unk_70.push_back(character);
                    } else {
                        EraseAll(unk_70, character);
                    }
                }
            }
        } else {
            object->m_cullState = 0;
            if (object->IsCharacter()) {
                static_cast<Character*>(object)->UnLoadScriptProcess(Character::s_concurrentAI.end(), false);
            }
        }
        ++it;
    }

    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->SetSwitch("TraceUpdateGameObjectOnce", false);
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->SetSwitch("Give50Potions", false);
    PopProfilingContext("ObjectManager::Update");
}

// 0x34aca0 ObjectManager::GetObjectByName(char const*,int,bool,char const*)
// A name starting with "Player", "PlayerCharacter_" or "LocalPlayer" ignores the flags (-1). The name "HighestThreatPlayer" is answered by GetHighestThreatPlayer(type, flags, active), the type
// argument naming the player. Otherwise the object map is walked in key order: an entry with an object whose flags value (ObjectBase +0x64) equals the flags (or the flags are -1, or the
// object is global, +0x87) matches when its entry name equals the name, or when the name is "Player" or "LocalPlayer" and the object is the local player's character (the first local PlayerInfo,
// PlayerInfo +0x660). A match returns a handle holding the entry's key. With no match, an active lookup takes the next key (m_nextKey, +0x4c), creates the entry with that name and returns its
// handle; an inactive one reads the isTracingObjectManager switch and returns an empty handle.
ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool active, char const* type) {
    if (std::strncmp(name, "Player", 6) == 0 || std::strncmp(name, "PlayerCharacter_", 16) == 0 ||
        std::strncmp(name, "LocalPlayer", 11) == 0) {
        flags = -1;
    }
    if (std::strcmp(name, "HighestThreatPlayer") == 0) {
        return GetHighestThreatPlayer(type, flags, active);
    }
    ObjectHandle handle;
    for (const auto& entry : m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr || !(flags == -1 || flags == object->unk_64 || object->m_isGlobal)) {
            continue;
        }
        bool match = std::strcmp(entry.second.m_name.c_str(), name) == 0;
        if (!match && (std::strcmp(name, "Player") == 0 || std::strcmp(name, "LocalPlayer") == 0)) {
            ObjectHandle objectHandle = object->GetHandle();
            Character* character = objectHandle;
            match = dword_99F76C->GetLocalPlayer(0, true)->unk_660 == character;
        }
        if (match) {
            handle.m_id = static_cast<std::uint32_t>(entry.first);
            return handle;
        }
    }
    if (active) {
        const int key = m_nextKey++;
        m_objectMap[key].m_name = name;
        handle.m_id = static_cast<std::uint32_t>(key);
        return handle;
    }
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingObjectManager");
    return handle;
}

// 0x34b064 ObjectManager::GetHighestThreatPlayer(char const*,int,bool)
// Looks the named object up (GetObjectByName(name, flags, false)), takes the Character's CharAI highest aggro target and returns that object's handle. Without a target the
// isTracingObjectManager switch is read and an empty handle comes back. The active argument is not read (the original's third explicit argument is ignored). A name that does not resolve
// leaves the original dereferencing a null Character (it crashes); here it takes the empty-handle path.
ObjectHandle ObjectManager::GetHighestThreatPlayer(char const* name, int flags, bool active) {
    (void)active;
    ObjectHandle player = GetObjectByName(name, flags, false, nullptr);
    Character* character = player;
    if (character != nullptr) {
        Character* aggro = character->AI_GetHighestAggro();
        if (aggro != nullptr) {
            return GetObjectByPtr(aggro);
        }
    }
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingObjectManager::");
    return ObjectHandle(nullptr);
}

// 0x34b270 ObjectManager::Add(ObjectBase*,char const*,char const*,int,bool)
// Asserts that the object (line 1064) and the name (line 1065) are present. The name is looked up with the create flag (GetObjectByName(name, flags, true)); when it already resolves to an object the
// new object is deleted and the existing handle is returned. Otherwise the object becomes the map entry's object, the object count (unk_50) rises, the handle (with the object cached) is copied
// into the object's own handle (ObjectBase +0x2c), the name, game type (type) and flags (ObjectBase +0x64) are set, a Character is appended to the character list (+0x60), a Module (GO_IDS 5 with the game
// type "Module") to the module list (+0x68), and with the active flag the object gets its network id (AssignObjectNetworkId).
ObjectHandle ObjectManager::Add(ObjectBase* object, char const* name, char const* type, int flags, bool active) {
    if (object == nullptr) {
        ReportAssert("obj", 1064);
    }
    if (name == nullptr) {
        ReportAssert("name", 1065);
    }
    ObjectHandle handle = GetObjectByName(name, flags, true, nullptr);
    if (handle.GetObject(false) != nullptr) {
        if (object != nullptr) {
            delete object;
        }
        return handle;
    }
    m_objectMap[static_cast<int>(handle.m_id)].m_object = object;
    ++unk_50;
    handle.m_cached = object;
    *object->m_handle = handle;
    object->SetName(name);
    object->m_gameType.assign(type);
    object->unk_64 = flags;
    {
        ObjectHandle objectHandle = object->GetHandle();
        Character* character = objectHandle;
        if (character != nullptr) {
            m_characters.push_back(character);
        }
    }
    {
        ObjectHandle objectHandle = object->GetHandle();
        ObjectBase* resolved = objectHandle.GetObject(false);
        if (resolved != nullptr && resolved->m_goId == 5 && object->m_gameType == "Module") {
            unk_68.push_back(static_cast<Module*>(resolved));
        }
    }
    if (active) {
        AssignObjectNetworkId(object);
    }
    return handle;
}

// 0x34b520 ObjectManager::GetNewObject(char const*,char const*,int,bool)
// Scans objectCreationMap (33 type names with their factories) for the first entry equal to the type. Its factory builds the object, which gets the table's type name as its class name
// (PropertyMap +0x1c) and is registered with Add(object, name, type, flags, active). A factory that returns null fails ASSERT(obj) at line 1310 and the scan goes on. Without a match the
// isTracingObjectManager switch is read and an empty handle is returned.
ObjectHandle ObjectManager::GetNewObject(char const* type, char const* name, int flags, bool active) {
    for (const ObjectCreationEntry& entry : objectCreationMap) {
        if (std::strcmp(type, entry.typeName) != 0) {
            continue;
        }
        ObjectBase* object = entry.factory();
        if (object != nullptr) {
            static_cast<PropertyMap*>(object)->m_className = entry.typeName;
            return Add(object, name, type, flags, active);
        }
        ReportAssert("obj", 1310);
    }
    DebugSwitches::GetInstance()->load();
    DebugSwitches::GetInstance()->GetSwitch("isTracingObjectManager");
    return ObjectHandle();
}
