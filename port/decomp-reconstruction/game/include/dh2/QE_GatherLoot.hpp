// QE_GatherLoot: quest event raised when a character picks up or gathers an item (the
// v2QuestObjectiveType "GatherLoot" constant). Objectives match it on the item ID and read the
// carried quantity from the value field.
// Original 32-bit size not recovered (no allocation found); the fields end at +0x1c.
// Reconstructed from libDungeonHunter2.so: destructors 0x4822e0 (D1), 0x48257c (D0),
// FillNetworkMsg 0x482400. The layout is the same as the other QE_* events; the match and
// value meanings for GatherLoot come from the Track A pickup tail, not from its Objective handler,
// which is not in the queue.
#pragma once

#include <cstdint>

#include "dh2/QuestEvent.hpp"

class GameObject;
struct tMsgRaisedEventData;

class QE_GatherLoot : public QuestEvent {
public:
    // The raisers build it on the stack (ItemInventory::TransferInventoryTo 0x3ffa68): the event id, the character, the target id
    // (-1), the two flag bytes (0), the value (-1) and the item id to match; the vtable is _ZTV13QE_GatherLoot.
    QE_GatherLoot() : m_character(nullptr), m_targetId(0), m_flag0(0), m_flag1(0), pad_12{0, 0}, m_value(0), m_matchId(0) {}
    QE_GatherLoot(std::int32_t eventId, GameObject* character, std::int32_t targetId, std::int32_t value, std::int32_t matchId)
        : m_character(character), m_targetId(targetId), m_flag0(0), m_flag1(0), pad_12{0, 0}, m_value(value), m_matchId(matchId) {
        eventId_ = static_cast<std::uint32_t>(eventId);
    }
    ~QE_GatherLoot() override;                                      // 0x4822e0 (D1), 0x48257c (D0); slots 0x00, 0x04
    void FillNetworkMsg(tMsgRaisedEventData& msg) const override;   // 0x482400; slot 0x0c

    // IEvent (via QuestEvent) occupies +0x00 .. +0x07: vptr, then eventId_ at +0x04 (the GatherLoot type).
    GameObject* m_character;                                        // +0x08 the character that gathered the item
    std::int32_t m_targetId;                                        // +0x0c same slot as the Kill events' target object ID; -1 in the Track A pickup tail
    std::uint8_t m_flag0;                                           // +0x10 0 when raised; an objective sets 1 once it counts the event
    std::uint8_t m_flag1;                                           // +0x11 0 when raised; non-zero means m_value already holds a quantity
    std::uint8_t pad_12[2];                                         // +0x12
    std::int32_t m_value;                                           // +0x14 carried quantity, -1 when unset
    std::int32_t m_matchId;                                         // +0x18 item ID that the objective matches (Track A pickup tail)
};
