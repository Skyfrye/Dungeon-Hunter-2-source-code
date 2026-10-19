// TriggerPlate: a pressure plate Trigger with a physics sensor. It counts the valid contacts (objects inside,
// players, or one specific object, chosen by trigger_type) and activates when the count reaches
// number_of_objects. Activation plays the on sound and runs script_on; deactivation plays the off sound and
// runs script_off. Its data row (Arrays::TriggerPlates, stride 32) gives the visual, sounds, trigger type,
// behaviour and specific object.
// Original 32-bit size not recorded in class-facts. The members below are known through +0x779.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x39af04 / 0x39afe0, dtor 0x39aae4 / 0x39ab50 / 0x39ab6c).
#pragma once

#include <cstdint>
#include <string>

#include "dh2/Trigger.hpp"

class TriggerPlate : public Trigger {
public:
    explicit TriggerPlate(ObjectBase::GO_IDS id);                       // 0x39af04 (C1) / 0x39afe0 (C2); hasPhysics true, playerOnly false
    ~TriggerPlate() override;                                           // 0x39aae4 (D1), 0x39ab50 (D0), 0x39ab6c (D2)

    // Overrides of Trigger / GameObject slots, in vtable order.
    void DeclareProperties() override;                                  // slot 0x18: 0x39ae64 "data", "number_of_objects", "script_on", "script_off", "trigger_type"
    void InitPost() override;                                           // slot 0x1c: 0x39b0bc resolves the data row and script ids, sets the idle animation
    bool IsAnimated() const override;                                   // slot 0x80: 0x39a394 true
    bool IsUpdatable() const override;                                  // slot 0x38: 0x39a39c true
    void Update() override;                                             // slot 0x2c: 0x39a668 counts contacts, activates and deactivates, raises the event

    // New virtuals at vtable slots 0xd8 .. 0xf0 (not in Trigger, ZoneEx or Zone). Each reads the data row.
    virtual int GetDataId() const;                                      // slot 0xd8: 0x39aa68 index of "data" in Arrays::TriggerPlates, -1 when not found
    virtual int GetVisual() const;                                      // slot 0xdc: 0x39a3a4 visual index of the data row, -1 when m_dataIndex is -1
    virtual int GetSoundOn() const;                                     // slot 0xe0: 0x39a3d8 sound index played on activation
    virtual int GetSoundOff() const;                                    // slot 0xe4: 0x39a40c sound index played on deactivation
    virtual int GetTriggerType() const;                                 // slot 0xe8: 0x39a440 selects how contacts are counted
    virtual int GetBehavior() const;                                    // slot 0xec: 0x39a474 compared with 5 by Update
    virtual int GetSpecificObject() const;                              // slot 0xf0: 0x39a4a8 object id checked by IsObjectActivating

    // Non-virtual.
    bool IsObjectActivating(int specificObject) const;                  // 0x39a510 true when an object in m_objectsInside with GO id 6 gives specificObject from its slot 0xc8
    int GetNumValidContactsActivating() const;                          // 0x39a5ec count by trigger type: 0 objects inside, 1 and 2 players, 3 non-character objects, 4 the specific object

    // Trigger occupies +0x000 .. +0x717.
    std::string m_data;                                                 // +0x718 property "data", the row name in Arrays::TriggerPlates
    int m_dataIndex;                                                    // +0x730 index in Arrays::TriggerPlates, -1 until InitPost
    int m_numberOfObjects;                                              // +0x734 property "number_of_objects", default 1; Update sets it to the player count for trigger type 2
    std::string m_scriptOn;                                             // +0x738 property "script_on", run when the plate activates
    std::string m_scriptOff;                                            // +0x750 property "script_off", run when the plate deactivates
    int m_triggerType;                                                  // +0x768 property "trigger_type", default 0
    int m_scriptOnId;                                                   // +0x76c ScriptManager id of m_scriptOn, -1 until InitPost
    int m_scriptOffId;                                                  // +0x770 ScriptManager id of m_scriptOff, -1 until InitPost
    int m_lastNumContacts;                                              // +0x774 valid contact count stored by the previous Update
    bool m_activated;                                                   // +0x778 set while the plate is activated
    bool m_enabled;                                                     // +0x779 copied from the data row by InitPost, set by Script_ActivateTriggerPlate, gates Update
};
