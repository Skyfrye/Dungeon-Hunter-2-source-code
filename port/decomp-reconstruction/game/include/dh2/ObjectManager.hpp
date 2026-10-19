// ObjectManager: the level's registry of game objects. It owns every ObjectBase of the current level,
// keys them by object id (std::map<int, ObjectListItem>, resolved by ObjectHandle), keeps the lists
// that drive update, spawn, condition, room and no-room traversal, and runs the online packet code.
// Original 32-bit size 0x1b0 (432), allocated with operator new(432).
// Vtable (_ZTV13ObjectManager, 16 bytes): slots 0/1 are the destructors.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x34a1e8 / 0x34a404, dtor 0x349b14 / 0x349e8c).
// Offsets in comments are the original 32-bit offsets from the object start (vptr at +0x00).
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <set>
#include <vector>

#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectListItem.hpp"

class ObjectBase;
class GameObject;
class Character;
class LightBase;
class Module;
class RoomZone;
class NetBitStream;
class TiXmlElement;
template <typename T> struct Point3D;

class ObjectManager {
public:
    ObjectManager();                                                        // 0x34a1e8 / 0x34a404
    virtual ~ObjectManager();                                               // 0x349b14, 0x349e70, 0x349e8c

    // Per-frame and level-wide operations.
    void Update(float dt);                                                  // 0x34a620
    int InitPost();                                                         // 0x34552c one step of the load pass: 1 when the pass has finished, else 0
    void Flush();                                                           // 0x3496b8
    void Draw2D();                                                          // 0x34024c
    void Draw3D();                                                          // 0x348988
    void DoOnlineStateFlush();                                              // 0x340250
    void DoRemoteUpdateUpdate(float dt);                                   // 0x340274
    void ObjectReInit();                                                    // 0x3406ac
    void DoCharAIInit();                                                    // 0x34064c
    void DeleteRandomOnlineObject();                                        // 0x34072c
    void UpdateRooms();                                                     // 0x34163c
    void ForceEverythingVisible();                                          // 0x34169c
    void ForceFullUpdate();                                                 // 0x347fd0
    void HandleNoRoomObjects();                                             // 0x345954
    void FlushAllOrphanRenderObjects();                                     // 0x3454dc
    void ProcessNextGameObjectToStartUpdate();                              // 0x3460cc
    void DBG_DumpRoomObjects();                                             // 0x340304
    void NetworkInitLevel();                                                // 0x340be0
    void NetworkUnInitLevel();                                              // 0x340bc4

    // Registration and lookup. Object handles are returned by value (sret).
    ObjectHandle Add(ObjectBase* object, char const* name, char const* type, int flags, bool active);  // 0x34b270
    ObjectHandle GetNewObject(char const* type, char const* name, int flags, bool active);             // 0x34b520
    ObjectHandle Spawn(char const* type, char const* name, bool active, bool silent);                  // 0x34b724; arg 1 type, arg 2 instance name. Arg 3 gates InitPost and TestEnableCondition(true), arg 4 is GetNewObject's active flag (asm). Parameter names not confirmed
    ObjectHandle GetObjectByName(char const* name, int flags, bool active, char const* type);          // 0x34aca0
    ObjectHandle GetHighestThreatPlayer(char const* name, int flags, bool active);                     // 0x34b064
    ObjectHandle GetObjectByPtr(ObjectBase* object);                                                   // 0x340c54
    ObjectHandle GetObjectByType(char const* type);                                                     // 0x345c20
    ObjectHandle GetObjectHandleByNetworkId(int networkId);                                            // 0x3407a0
    int GetNetworkIdByObjectBase(ObjectBase const* object);                                            // 0x3402f4
    int GetNumObjectsByType(char const* type) const;                                                   // 0x345bcc
    void GetObjectsByType(char const* type, std::list<Character*>& out) const;                         // 0x3426b0
    void GetLightBaseList(std::list<LightBase*>& out) const;                                           // 0x34336c
    Point3D<float> GetDynamicFogColorAtPos(Point3D<float> const& pos, float radius);                   // 0x3419a8
    void InitModulesFogColor(std::vector<Point3D<float>> const& colors, int module);                   // 0x347100
    void LoadFromXML(TiXmlElement* element, char const* type, Point3D<float> const& pos, int flags);   // 0x34b868; the binary returns int (partial, see its ledger row)
    void LoadFromXML(TiXmlElement* element, char const* type);                                         // 0x34bbe4
    void MarkForDeletion(ObjectBase* object);                                                          // 0x3432f8
    void Remove(ObjectHandle handle);                                                                  // 0x348ea4
    void FakeRemove(ObjectHandle handle);                                                              // 0x349240

    // Room and no-room membership.
    void AddRoomObjects(std::list<GameObject*>* objects);                                              // 0x3427a0
    void DelRoomObjects(std::list<GameObject*>* objects);                                              // 0x345fbc
    void AddNoRoomObject(GameObject* object);                                                          // 0x344184
    void RemoveNoRoomObject(GameObject* object);                                                       // 0x3462b8
    void AddOrphanRenderObjectToDelete(ObjectBase* object);                                            // 0x343188

    // Online and network state.
    bool IsOnlineDeferred(ObjectBase* object);                                                         // 0x347dec
    bool CanSendUpdate(ObjectBase* object);                                                            // 0x340848
    bool IsObjectSerializable(ObjectBase* object, int mode);                                           // 0x3409f4
    bool IsRemotePlayerOfMember(int member, Character* character);                                     // 0x340948
    void AssignObjectNetworkId(ObjectBase* object);                                                    // 0x3431c0
    void AskNetResendByObjectId(int objectId);                                                         // 0x345e30
    bool IsPacketValid(int packetId, int member);                                                      // 0x342f30
    void ProcessAcknowledgedPacket(int packetId, int member);                                          // 0x346178
    static void sProcessAcknowledgedPacket(int packetId, int member);                                         // 0x346284
    void ProcessLostPacket(int packetId, int member);                                                  // 0x348644
    static void sProcessLostPacket(int packetId, int member);                                          // 0x348724 (static: no this, forwards to dword_99F764)
    void SerializeGameObjectNetData(int objectId, int member, NetBitStream& stream);                   // 0x346510
    static bool sWritePacketData(int objectId, int member, NetBitStream& stream);                           // 0x347074
    void LoadGameObjectNetData(int objectId, int member, NetBitStream& stream);                        // 0x34735c
    static void sReadPacketData(int objectId, int member, NetBitStream& stream);                       // 0x347d90 (static: no this, forwards to dword_99F764)

    // Lists and maps, in original offset order. Each list is 8 bytes (node pointer and prev).
    std::list<ObjectBase*> m_objects;                                                                  // +0x04 every object registered by Add
    // Object id map. Key is the object id; the value is the ObjectListItem resolved by ObjectHandle.
    std::map<int, ObjectListItem> m_objectMap;                                                         // +0x0c header, root, count (20 bytes)
    uint8_t pad_20[4];                                                                                 // +0x20
    std::list<RoomZone*> unk_24;                                                                    // +0x24 RoomZone* nodes (UpdateRooms, ForceEverythingVisible); freed node by node in the dtor
    std::list<ObjectBase*> m_updateList;                                                               // +0x2c active update list (Update splices Spawn rows here)
    std::list<ObjectBase*> m_spawnList;                                                                // +0x34 spawn staging list
    std::list<ObjectBase*> unk_3c;                                                                     // +0x3c
    std::list<ObjectBase*> m_conditionList;                                                            // +0x44 condition-active list (InitPost, Update)
    std::int32_t m_nextKey;                                                                            // +0x4c next object key (Track A: starts or resets to 1; the ctor writes 0)
    std::int32_t unk_50;                                                                               // +0x50
    std::int32_t unk_54;                                                                               // +0x54
    std::int32_t unk_58;                                                                               // +0x58
    std::int32_t unk_5c;                                                                               // +0x5c incremented once per Character::Update (dword_99F764->unk_5c); name not recovered
    std::list<Character*> m_characters;                                                                // +0x60 CharacterList (Add publishes Character* here)
    std::list<Module*> unk_68;                                                                    // +0x68 Module* nodes (GetDynamicFogColorAtPos); freed node by node in the dtor
    std::list<Character*> unk_70;                                                                      // +0x70
    std::int32_t m_generation;                                                                         // +0x78 ObjectManager generation (ObjectHandle cache key)
    std::int32_t unk_7c;                                                                               // +0x7c
    std::list<std::list<GameObject*>*> m_roomZones;                                                                  // +0x80 room object lists: each element is a std::list<GameObject*>* (AddRoomObjects 0x3427a0); name kept, see rename_suggestions
    std::list<GameObject*> m_noRoomObjects;                                                            // +0x88 no-room list (AddNoRoomObject pushes here)
    std::list<GameObject*> unk_90;                                                                     // +0x90
    std::map<int, std::list<int>> unk_98;                                                              // +0x98 header, root, count (20 bytes)
    uint8_t pad_ac[4];                                                                                 // +0xac
    std::map<int, std::int16_t> unk_b0;                                                                // +0xb0
    uint8_t pad_c4[4];                                                                                 // +0xc4
    std::map<int, std::int16_t> unk_c8;                                                                // +0xc8
    uint8_t pad_dc[4];                                                                                 // +0xdc
    std::map<int, std::int16_t> unk_e0;                                                                // +0xe0
    uint8_t pad_f4[4];                                                                                 // +0xf4
    std::int32_t unk_f8;                                                                               // +0xf8
    std::uint8_t unk_fc;                                                                               // +0xfc
    std::uint8_t unk_fd;                                                                               // +0xfd
    uint8_t pad_fe[2];                                                                                 // +0xfe
    std::list<ObjectBase*> unk_100;                                                                    // +0x100
    std::map<std::int16_t, std::list<ObjectBase*>> unk_108;                                            // +0x108
    uint8_t pad_11c[4];                                                                                // +0x11c
    std::list<std::int16_t> unk_120;                                                                   // +0x120 freed node by node in the dtor
    std::list<int> unk_128;                                                                            // +0x128
    std::list<int> unk_130;                                                                            // +0x130
    std::int32_t unk_138;                                                                              // +0x138
    std::int32_t unk_13c;                                                                              // +0x13c
    std::int32_t unk_140;                                                                              // +0x140
    uint8_t pad_144[4];                                                                                // +0x144
    std::map<int, int> unk_148;                                                                        // +0x148
    uint8_t pad_15c[4];                                                                                // +0x15c
    std::uint8_t unk_160;                                                                              // +0x160
    uint8_t pad_161[3];                                                                                // +0x161
    std::map<std::int16_t, std::set<std::int16_t>> unk_164;                                            // +0x164
    uint8_t pad_178[4];                                                                                // +0x178
    std::map<std::int16_t, std::set<std::int16_t>> unk_17c;                                            // +0x17c
    uint8_t pad_190[4];                                                                                // +0x190
    std::map<std::int16_t, std::set<std::int16_t>> unk_194;                                            // +0x194
    uint8_t pad_1a8[4];                                                                                // +0x1a8
    std::uint8_t m_initialized;                                                                        // +0x1ac initialized byte; NetworkUnInitLevel clears it (0x340bc4 stores 0 at +0x1ac)
    uint8_t pad_1ad[3];                                                                                // +0x1ad
};
