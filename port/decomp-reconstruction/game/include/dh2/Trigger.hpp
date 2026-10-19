// Trigger: a ZoneEx that fires a limited number of times, with a re-arm delay, and replicates its
// activation state over the network. Base of TriggerObject, TriggerPlate and TriggerZone.
// Original 32-bit size 0x718 (1816).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x398f44).
#pragma once

#include <cstdint>

#include "net-transport/net_struct.hpp"
#include "net-transport/tb/net_struct_int.hpp"

#include "dh2/ZoneEx.hpp"

class IStreamBase;

class Trigger : public ZoneEx {
public:
    // Replicated state: three 32-bit integers. Original 32-bit size 0x1a8 (424): NetStruct (0x130)
    // plus three NetStructInt<32> of 0x28 bytes each.
    class NetStructTrigger : public NetStruct {
    public:
        NetStructTrigger();                                             // 0x398da4
        ~NetStructTrigger() override;                                   // 0x398b5c, 0x399064

        // NetStruct occupies +0x00 .. +0x12f.
        NetStructInt<32>  m_timer;                                       // +0x130 Trigger::m_timer 
        NetStructInt<32>  m_numActivations;                              // +0x158 Trigger::m_numActivations 
        NetStructInt<32>  unk_180;                                       // +0x180 mirrors Trigger::unk_3c0 
    };

    Trigger(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly);   // 0x398f44 / 0x398fd4
    ~Trigger() override;                                                // 0x3990f0, 0x3991f8, 0x399214

    // Overrides of GameObject slots.
    void Serialize(IStreamBase* stream) override;                       // slot 0x10: 0x398978 writes m_timer, m_numActivations
    void Deserialize(IStreamBase* stream) override;                     // slot 0x14: 0x39890c
    void DeclareProperties() override;                                  // slot 0x18: 0x398a88 "triggercount", "triggerdelay", "resetonhubchange"
    void InitPost() override;                                           // slot 0x1c: 0x398874 (thunk to Zone::InitPost)
    void Update() override;                                             // slot 0x2c: 0x398838
    void PopulateOutgoingNetStruct(bool force) override;                // slot 0x4c: 0x398bd8
    void InterpretIncomingNetStruct(bool force) override;              // slot 0x50: 0x3987dc
    bool IsRemotelyUpdated() const override;                            // slot 0x54: 0x398770
    bool IsZonable() const override;                                    // slot 0xc4: 0x398768 always true

    void Activate();                                                    // 0x398794 restarts the delay timer and counts the activation
    bool CanActivate() const;                                           // 0x3987ac
    int GetNumPlayerActivating() const;                                 // 0x3987f8 thunk to GameObject::GetNumPlayerTouching
    void UpdateTimer();                                                 // 0x3987fc counts m_timer down by the frame time

    // ZoneEx occupies +0x00 .. +0x3a7.
    int m_triggerCount;                                                 // +0x3a8 property "triggercount" (default 1), max activations, negative = unlimited
    int m_triggerDelay;                                                 // +0x3ac property "triggerdelay" (default 0), timer start value on Activate
    bool m_resetOnHubChange;                                            // +0x3b0 property "resetonhubchange"
    uint8_t pad_3b1[3];                                                 // +0x3b1
    int m_numActivations;                                               // +0x3b4
    int m_timer;                                                        // +0x3b8 remaining delay, ms
    bool unk_3bc;                                                       // +0x3bc cleared in the ctor; true makes IsRemotelyUpdated false
    uint8_t pad_3bd[3];                                                 // +0x3bd
    int unk_3c0;                                                        // +0x3c0 cleared in the ctor, third replicated value
    uint8_t pad_3c4[4];                                                 // +0x3c4
    NetStructTrigger m_netOut;                                          // +0x3c8 GameObject +0x100 points here
    NetStructTrigger m_netIn;                                           // +0x570 GameObject +0x104 points here
};
