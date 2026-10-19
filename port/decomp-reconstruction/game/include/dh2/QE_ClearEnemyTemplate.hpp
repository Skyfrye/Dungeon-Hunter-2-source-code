// QE_ClearEnemyTemplate: quest event raised by Character::Kill when the character's template ID
// (Character +0x13ca) is not -1, with the killer in +0x08 (the v2QuestObjectiveType "ClearEnemyTemplate"
// constant). Objectives match it on the template ID.
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x4822d8 (D1), 0x482514 (D0),
// FillNetworkMsg 0x482390. The event layout is confirmed by the event that Character::Kill
// (0x3a5b18) builds on its stack and by ObjectTemplate_KillCharacter::handleEvent (0x47f350).
#pragma once

#include <cstdint>

#include "dh2/QuestEvent.hpp"

class GameObject;
struct tMsgRaisedEventData;

class QE_ClearEnemyTemplate : public QuestEvent {
public:
    ~QE_ClearEnemyTemplate() override;                              // 0x4822d8 (D1), 0x482514 (D0); slots 0x00, 0x04
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override;   // 0x482390; slot 0x0c

    // IEvent (via QuestEvent) occupies +0x00 .. +0x07: vptr, then eventId_ at +0x04 (the ClearEnemyTemplate type).
    GameObject* m_character;                                        // +0x08 killer passed to Character::Kill; null on the Track A non-player path
    std::int32_t m_targetId;                                        // +0x0c target object ID, copied from ObjectBase::unk_64
    std::uint8_t m_flag0;                                           // +0x10 0 when raised; an objective sets 1 once it counts the event
    std::uint8_t m_flag1;                                           // +0x11 0 when raised; non-zero means m_value already holds a count
    std::uint8_t pad_12[2];                                         // +0x12
    std::int32_t m_value;                                           // +0x14 -1 when raised; the objective's running count
    std::int32_t m_matchId;                                         // +0x18 template ID (Character +0x13ca) that the objective matches
};
