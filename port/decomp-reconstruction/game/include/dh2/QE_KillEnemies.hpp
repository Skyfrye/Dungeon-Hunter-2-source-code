// QE_KillEnemies: quest event raised by Character::Kill (0x3a5b18) for a kill of one enemy type (the
// v2QuestObjectiveType "KillXEnemies" constant). Objectives match it on the character property-record ID.
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x4822cc (D1), 0x482478 (D0),
// FillNetworkMsg 0x4822e8. The event layout is confirmed by the event that Character::Kill builds on its
// stack, with the same field order as QE_ClearEnemies.
#pragma once

#include <cstdint>

#include "dh2/QuestEvent.hpp"

class GameObject;
struct tMsgRaisedEventData;

class QE_KillEnemies : public QuestEvent {
public:
    ~QE_KillEnemies() override;                                     // 0x4822cc (D1), 0x482478 (D0); slots 0x00, 0x04
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override;   // 0x4822e8; slot 0x0c

    // IEvent (via QuestEvent) occupies +0x00 .. +0x07: vptr, then eventId_ at +0x04 (the KillXEnemies type).
    GameObject* m_character;                                        // +0x08 the killer GameObject (Character::Kill argument); its ObjectBase +0x108 goes to message slot 1
    std::int32_t m_targetId;                                        // +0x0c ObjectBase::unk_64 of the killed Character; message slot 2
    std::uint8_t m_flag0;                                           // +0x10 0 when raised; not copied by FillNetworkMsg
    std::uint8_t m_flag1;                                           // +0x11 0 when raised; not copied by FillNetworkMsg
    std::uint8_t pad_12[2];                                         // +0x12
    std::int32_t m_value;                                           // +0x14 -1 when raised; message slot 3
    std::int32_t m_matchId;                                         // +0x18 property-record ID (Character halfword at +0x13c8); message slot 4 as is
};
