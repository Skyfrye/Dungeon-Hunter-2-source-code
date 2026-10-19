// ObjectBase: root of every object owned by ObjectManager (GameObject derives from it).
// Original size 0x120 (subclass allocations seen: 1744, 1776, 1816, 8080 bytes).
// Vtable pointers at +0x00 (primary, UserData slots 0-3), +0x04 (PropertyMap) and +0x24 (ISerializable).
#pragma once

#include <cstdint>
#include <string>
#include "core-platform/serializable.hpp"
#include "dh2/sfc/script/lua/UserData.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/ObjectHandle.hpp"

class IStreamBase;
class NetStruct;
template <typename T> struct aabb;

class ObjectBase : public sfc::script::lua::UserData,   // +0x00
                   public PropertyMap,                  // +0x04 (size 0x20)
                   public ISerializable {               // +0x24
public:
    // GO_DOOR: GetNewInstance<Door> passes 2 (global/object_factory.hpp, 0x340824) and Script_OpenDoor selects a
    // Door when m_goId == 2. Other values are not named; callers pass 0.
    enum GO_IDS : std::int32_t { GO_DOOR = 2 };

    explicit ObjectBase(GO_IDS id);         // 0x33f15c / 0x33f310
    ~ObjectBase() override;                 // 0x33e840 (D1) / 0x33e998 (D2, same body); deleting D0 at 0x33e97c is compiler generated

    // ---- virtual, primary vtable slot order (slots 0-3 come from UserData) ----
    void Serialize(IStreamBase* stream) override;       // +0x10 0x33e1f0: writes m_visible, m_enabled
    void Deserialize(IStreamBase* stream) override;     // +0x14 0x33e0f8
    void DeclareProperties() override;                  // +0x18 0x33f014
    virtual void InitPost();                            // +0x1c 0x33ec0c
    virtual bool IsGameObject() const;                  // +0x20 0x33dcc8
    virtual bool IsCharacter() const;                   // +0x24 0x33dcd0
    virtual bool IsPlayer() const;                      // +0x28 0x33dcd8
    virtual void Update() = 0;                          // +0x2c
    virtual void Draw() const = 0;                      // +0x30
    virtual bool IsDead() const;                        // +0x34 0x33dce0
    virtual bool IsUpdatable() const;                   // +0x38 0x33dce8
    virtual void setUpdating(bool updating);            // +0x3c 0x33dcf0
    virtual void SetVisible(bool visible);              // +0x40 0x33dcf8
    virtual void Enabled();                             // +0x44 0x33de04
    virtual void Disabled();                            // +0x48 0x33de34
    virtual void PopulateOutgoingNetStruct(bool force); // +0x4c 0x33dd08
    virtual void InterpretIncomingNetStruct(bool force);// +0x50 0x33dd0c
    virtual bool IsRemotelyUpdated() const;             // +0x54 0x33dd10

    // ---- non-virtual ----
    ObjectHandle GetHandle();                           // 0x33dd2c: refreshes handle generation, returns a copy
    ObjectHandle GetHandle() const;                     // 0x33dd70
    void Delete();                                      // 0x33ddb4: m_deleteMode = 2, m_markedForDeletion = true
    void SetEnable(bool enable);                        // 0x33ddc8: calls Enabled()/Disabled() on change
    bool TestCullingBeforeUpdate(const aabb<float>& box);   // 0x33de90: frustum planes from the level camera
    bool TestDisableCondition(bool markTested);         // 0x33e61c
    bool TestEnableCondition(bool markTested);          // 0x33e6d4
    void SetName(const char* name);                     // 0x34ac18: also updates the ObjectManager list entry

    // ---- members ----
    // +0x00 UserData, +0x04 PropertyMap (m_template string at +0x08, m_className at +0x20), +0x24 ISerializable
    std::uint8_t unk_28;                    // +0x28 cleared by GameObject::InitPost when skip_checkpoint is set
    std::uint8_t m_lockCount;               // +0x29 Lua _Lock/_Unlock counter; destructor asserts !IsLocked()
    std::uint8_t pad_2a[2];
    ObjectHandle* m_handle;                 // +0x2c heap ObjectHandle (operator new(12)), m_handle->m_cached = this
    std::string m_name;                     // +0x30 property "name"
    std::string m_gameType;                 // +0x48 property "gametype"
    bool m_facultative;                     // +0x60 property "facultative", default 1 (one byte; bool& for the property table)
    std::uint8_t pad_61[3];
    std::int32_t unk_64;                    // +0x64 -1
    std::string m_roomName;                 // +0x68 property "roomname"
    bool m_visible;                         // +0x80 property "visible", default 1; serialized (one byte; bool& for the property table)
    std::uint8_t m_markedForDeletion;       // +0x81 set by Delete()
    std::uint8_t m_deleteMode;              // +0x82 Delete() stores 2; CheckSpawnProbability stores 0
    bool m_isUnderlay;                      // +0x83 property "isUnderlay" (one byte; bool& for the property table)
    bool m_static;                          // +0x84 property "static" (one byte; bool& for the property table)
    std::uint8_t unk_85;                    // +0x85 updating flag: setUpdating(bool) stores its argument here (rename to m_updating)
    std::uint8_t m_cullState;               // +0x86 TestCullingBeforeUpdate: 0 first call, 1 testing, 2 done
    bool m_isGlobal;                        // +0x87 property "isGlobal" (one byte; bool& for the property table)
    std::uint8_t unk_88;                    // +0x88 0
    std::uint8_t unk_89;                    // +0x89 0
    bool m_enabled;                         // +0x8a 1 initially; serialized (one byte; bool& for readAs and writeAs); SetEnable()
    std::uint8_t pad_8b;
    ConditionData m_enableCond;             // +0x8c property "activate_cond" (+0x90)
    ConditionData m_disableCond;            // +0xb0 property "deactivate_cond" (+0xb4)
    std::string m_minDifficulty;            // +0xd4 property "min_difficulty"
    std::int32_t m_minDifficultyIdx;        // +0xec index into Arrays::GameDifficulties, -1 = none (set in InitPost)
    bool m_tutorialOnly;                    // +0xf0 property "is_tutorial_only" (one byte; bool& for the property table)
    bool m_demoOnly;                        // +0xf1 property "is_demo_only" (one byte; bool& for the property table)
    std::uint8_t pad_f2[2];
    GO_IDS m_goId;                          // +0xf4 constructor argument
    std::uint8_t unk_f8;                    // +0xf8 0; written to NetBitStream by ObjectManager
    std::uint8_t pad_f9[3];
    std::int32_t unk_fc;                    // +0xfc 0
    NetStruct* m_netStruct;                 // +0x100 (Resend / SetEnabled in ObjectManager)
    NetStruct* unk_104;                     // +0x104 0; the incoming net struct pointer (name: m_netIn). The derived ctors store
                                            //       &their member here: Door 0x3e8274 (this+0x540), Trigger 0x398f44 (this+0x570)
    std::int32_t unk_108;                   // +0x108 -1, compared with a peer id in ObjectManager
    std::uint8_t unk_10c;                   // +0x10c 0; with m_facultative makes GameObject::InitPost skip the visual on low-end devices
    std::uint8_t pad_10d[3];
    std::int32_t m_netOwnerId;              // +0x110 -1; peer id compared in ObjectManager::IsObjectSerializable
    float unk_114;                          // +0x114 timer accumulated against 50.0 in ObjectManager
    std::uint8_t unk_118;                   // +0x118 0; when set the object is not net-serialized
    std::uint8_t m_netUpdateRequested;      // +0x119 set by GameObject::RequireOnlineUpdate
    std::uint8_t pad_11a[2];
    std::int32_t unk_11c;                   // +0x11c 0
};
