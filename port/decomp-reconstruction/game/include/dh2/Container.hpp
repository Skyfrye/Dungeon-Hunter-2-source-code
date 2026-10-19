// Container: a chest or breakable that plays spawn/idle/open animations, drops loot when opened
// and replicates its opened state. Base of OpenableContainer and DestructibleContainer.
// Original 32-bit size 0x6f0 (1776).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3a06dc).
#pragma once

#include <cstdint>
#include <string>

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"

#include "dh2/GameObject.hpp"

class IStreamBase;
namespace glitch {
namespace scene {
class ITimelineController;
}  // namespace scene
namespace collada {
struct STriggeredEvent;
}  // namespace collada
}  // namespace glitch

class Container : public GameObject {
public:
    // Animation / life-cycle state, stored in m_state and serialized as one byte.
    // Names come from the animation each state starts ("prespawn", "spawn", "idle", "activate",
    // "idleactive"); IsDead() is true for the last two.
    enum State {
        STATE_PRESPAWN = 0,
        STATE_SPAWN = 1,
        STATE_IDLE = 2,
        STATE_ACTIVATE = 3,
        STATE_OPENED = 4,
    };

    // Replicated state. Original 32-bit size 0x1a8 (424): NetStruct (0x130) plus three members.
    class NetStructContainer : public NetStruct {
    public:
        NetStructContainer();                                           // 0x39ff58
        ~NetStructContainer() override;                                 // 0x3a0324, 0x3a03a4

        // NetStruct occupies +0x00 .. +0x12f.
        NetStructUInt<1> m_opened;                                      // +0x130 state is ACTIVATE or OPENED
        NetStructInt<16>  m_openerId;                                    // +0x158 network id of the opening object 
        NetStructUInt<32> unk_180;                                      // +0x180 copy of GameObject +0xfc (sent when forced)
    };

    explicit Container(ObjectBase::GO_IDS id);                          // 0x3a06dc / 0x3a0788
    ~Container() override;                                              // 0x3a0430, 0x3a057c, 0x3a0598

    // Overrides of GameObject slots, in vtable order.
    void Serialize(IStreamBase* stream) override;                       // slot 0x10: 0x39f8e0 writes m_state as a byte
    void Deserialize(IStreamBase* stream) override;                     // slot 0x14: 0x39f6f0
    void DeclareProperties() override;                                  // slot 0x18: 0x3a083c "data", "data_desc", "death_reset"
    void InitPost() override;                                           // slot 0x1c: 0x39f910
    bool IsDead() const override;                                       // slot 0x34: 0x39f364 state ACTIVATE or OPENED
    bool IsUpdatable() const override;                                  // slot 0x38: 0x39f324 false
    void PopulateOutgoingNetStruct(bool force) override;                // slot 0x4c: 0x3a0110
    void InterpretIncomingNetStruct(bool force) override;              // slot 0x50: 0x39fd38
    void InitFinal() override;                                          // slot 0x58: 0x39fc98 builds a PODecor body
    bool IsAnimated() const override;                                   // slot 0x80: 0x39f37c true
    bool IsInteractive(GameObject* by) const override;                  // slot 0x88: 0x39f384 idle and not marked for deletion (ObjectBase +0x81)
    void Interact(GameObject* by) override;                             // slot 0x98: 0x3a0b38
    bool IsObstacle() const override;                                   // slot 0xb4: 0x39f3a8 true
    float GetObstacleRadius() const override;                           // slot 0xb8: 0x39f3b0 150.0
    float GetObstacleStrength() const override;                         // slot 0xbc: 0x39f3bc 10.0
    bool IsZonable() const override;                                    // slot 0xc4: 0x39f534 thunk to GameObject::MeetCondition

    // New virtuals at vtable slots 0xc8 .. 0xe0 (defaults here, overridden by the container subclasses).
    virtual const char* GetScript() const;                              // 0x39f32c null; script under data/scripts/objects/
    virtual int GetVisual() const;                                      // 0x39f334 -1; GameObjectDict index of the model
    virtual int GetDataId() const;                                      // 0x39f33c -1
    virtual int GetLoot() const;                                        // 0x39f344 -1; loot table id
    virtual int GetSound() const;                                       // 0x39f34c -1; Vox sound id
    virtual bool KeepPhysics() const;                                   // 0x39f354 false; true keeps the body after opening
    virtual int GetLootFixedNumPowers() const;                          // 0x39f35c -1

    void SetState(State state);                                         // 0x39f3cc also toggles bit 0x400 of the node flags
    void Spawn();                                                       // 0x39f3f0 plays "spawn" when still in PRESPAWN
    void DoOpen();                                                      // 0x3a0a98 drops the loot and calls the script's OnOpen

    static void __Callback(glitch::scene::ITimelineController* controller, void* user);          // 0x39f44c
    static void __EventCallback(const glitch::collada::STriggeredEvent& event, void* user);      // 0x3a0c64

    // GameObject occupies +0x00 .. +0x373.
    int m_dataId;                                                       // +0x374 property "data" (default -1), set from GetDataId() in InitPost
    std::string m_dataDesc;                                             // +0x378 property "data_desc" (24 bytes in the original)
    bool m_deathReset;                                                  // +0x390 property "death_reset"
    uint8_t pad_391[3];                                                 // +0x391
    State m_state;                                                      // +0x394 initial STATE_IDLE
    GameObject* m_opener;                                               // +0x398 object that opened it (UserData for the OnOpen call)
    uint8_t pad_39c[4];                                                 // +0x39c
    NetStructContainer m_netOut;                                        // +0x3a0 GameObject +0x100 points here
    NetStructContainer m_netIn;                                         // +0x548 GameObject +0x104 points here
};
