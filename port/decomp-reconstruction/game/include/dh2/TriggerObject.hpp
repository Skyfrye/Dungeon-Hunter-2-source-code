// TriggerObject: an interactive Trigger (GO id 20) that runs a script when the player uses it. Its data row
// (Arrays::TriggerObjects, stride 24) gives the interaction type, the sound and the script name. Its unlock
// condition is a v2 ConditionList built in InitPost. Unlocked while that condition holds.
// Original 32-bit size 0x790 (1936), the operator new size of GetNewInstance<TriggerObject>.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x399df0 / 0x399ef4, dtor 0x39993c / 0x3999d8 / 0x3999f4).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/Trigger.hpp"

class ConditionList;

class TriggerObject : public Trigger {
public:
    TriggerObject();                                                    // 0x399df0 (C1) / 0x399ef4 (C2); passes GO id 20, hasPhysics false, playerOnly true
    ~TriggerObject() override;                                          // 0x39993c (D1), 0x3999d8 (D0), 0x3999f4 (D2)

    // Overrides of Trigger / GameObject slots, in vtable order.
    void Serialize(IStreamBase* stream) override;                       // slot 0x10: 0x3996a4, a thunk to Trigger::Serialize
    void Deserialize(IStreamBase* stream) override;                     // slot 0x14: 0x399580 Trigger::Deserialize, then TestInteractiveCond and the idle animation
    void DeclareProperties() override;                                  // slot 0x18: 0x399d70 "data", "script", "scriptOff", "unlock_cond"
    void InitPost() override;                                           // slot 0x1c: 0x399ff8 resolves the data row, script ids and the unlock ConditionList
    void Update() override;                                             // slot 0x2c: 0x3994a8 Trigger::Update, then idle after a re-arm or TestInteractiveCond while locked
    bool IsUpdatable() const override;                                  // slot 0x38: 0x399318 true
    void InterpretIncomingNetStruct(bool force) override;               // slot 0x50: 0x39939c clears m_unlocked when forced
    bool IsAnimated() const override;                                   // slot 0x80: 0x399328 true
    bool IsInteractive(GameObject* other) const override;               // slot 0x88: 0x399490 Trigger::CanActivate and m_unlocked
    int GetInteractionType(GameObject* other) const override;           // slot 0x90: 0x399330 InteractionType of the data row, -1 when none
    void Interact(GameObject* other) override;                          // slot 0x98: 0x399af0 OnTrigger, Trigger::Activate, activate animation and sound, then m_script or m_scriptOff and the TriggerOn event
    bool IsZonable() const override;                                    // slot 0xc4: 0x399320 true

    void TestInteractiveCond();                                         // 0x3993bc evaluates the unlock ConditionList and sets m_unlocked

    // Trigger occupies +0x000 .. +0x717. Each property string (24 bytes) is followed by its 4-byte id field;
    // the id of m_unlockCond is m_unlocked, a byte.
    std::string m_data;                                                 // +0x718 property "data", the row name in Arrays::TriggerObjects
    int m_dataIndex;                                                    // +0x730 index in Arrays::TriggerObjects, -1 until InitPost
    std::string m_script;                                               // +0x734 property "script", the script started by Interact
    int m_scriptId;                                                     // +0x74c ScriptManager id of m_script, -1 until InitPost
    std::string m_scriptOff;                                            // +0x750 property "scriptOff", the script started while the object is toggled off
    int m_scriptOffId;                                                  // +0x768 ScriptManager id of m_scriptOff, set by InitPost
    std::string m_unlockCond;                                           // +0x76c property "unlock_cond", the name of a v2 condition
    bool m_unlocked;                                                    // +0x784 set by TestInteractiveCond, cleared by InterpretIncomingNetStruct(true); selects idle or idlelocked
    uint8_t pad_785[3];                                                 // +0x785
    ConditionList* m_unlockConditions;                                  // +0x788 built by InitPost from Arrays::v2Conditions, owned and deleted by the destructor
    uint8_t pad_78c[4];                                                 // +0x78c
};
