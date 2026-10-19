// QE_MoveInZone: quest event raised when a GameObject enters a QuestMoveInZone (the v2QuestObjectiveType
// "MoveInZone" constant). It is built on the stack by QuestMoveInZone::OnCollisionBegins (0x396120).
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x4822e4 (D1), 0x4825b0 (D0),
// FillNetworkMsg 0x482438. Unlike the Kill and Interact events, FillNetworkMsg dereferences the zone
// pointer at +0x18 for message slot 4 (0 when null).
#pragma once

#include <cstdint>

#include "dh2/QuestEvent.hpp"

class GameObject;
class QuestMoveInZone;
struct tMsgRaisedEventData;

class QE_MoveInZone : public QuestEvent {
public:
    // QuestMoveInZone::OnCollisionBegins (0x396120) builds it on the stack: the event id, the character, the zone's id (ObjectBase
    // +0x64), the two flag bytes (0), the value (-1) and the zone; the vtable is _ZTV13QE_MoveInZone.
    QE_MoveInZone() : m_character(nullptr), m_targetId(0), m_flag0(0), m_flag1(0), pad_12{0, 0}, m_value(0), m_zone(nullptr) {}
    QE_MoveInZone(std::int32_t eventId, GameObject* character, std::int32_t targetId, std::int32_t value, QuestMoveInZone* zone)
        : m_character(character), m_targetId(targetId), m_flag0(0), m_flag1(0), pad_12{0, 0}, m_value(value), m_zone(zone) {
        eventId_ = static_cast<std::uint32_t>(eventId);
    }
    ~QE_MoveInZone() override;                                      // 0x4822e4 (D1), 0x4825b0 (D0); slots 0x00, 0x04
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override;   // 0x482438; slot 0x0c

    // IEvent (via QuestEvent) occupies +0x00 .. +0x07: vptr, then eventId_ at +0x04 (the MoveInZone type).
    GameObject* m_character;                                        // +0x08 the GameObject that entered the zone (OnCollisionBegins argument); its ObjectBase +0x108 goes to message slot 1
    std::int32_t m_targetId;                                        // +0x0c ObjectBase::unk_64 of the zone (QuestMoveInZone this); message slot 2
    std::uint8_t m_flag0;                                           // +0x10 0 when raised; not copied by FillNetworkMsg
    std::uint8_t m_flag1;                                           // +0x11 0 when raised; not copied by FillNetworkMsg
    std::uint8_t pad_12[2];                                         // +0x12
    std::int32_t m_value;                                           // +0x14 -1 when raised; message slot 3
    QuestMoveInZone* m_zone;                                        // +0x18 the zone itself; its ObjectBase +0x108 goes to message slot 4 (0 when null)
};
