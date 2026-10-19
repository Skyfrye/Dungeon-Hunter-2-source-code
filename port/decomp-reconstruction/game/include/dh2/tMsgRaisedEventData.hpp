// tMsgRaisedEventData: the payload of CMsgRaisedEvent (the message starts its data at +0x50 and GetDataSize returns 20).
// QuestEvent::FillNetworkMsg (QE_KillEnemies 0x4822e8, QE_ClearEnemies 0x482320, QE_KillEnemyTemplate 0x482358,
// QE_ClearEnemyTemplate 0x482390, QE_InteractWith 0x4823c8, QE_GatherLoot 0x482400, QE_MoveInZone 0x482438) fills it from
// the event, and CMsgRaisedEvent::RaiseEventFromNetwork (0x49a238) reads it back: a switch on the event kind, with the
// object and target network ids resolved through ObjectManager::GetObjectHandleByNetworkId.
// Layout (32-bit offsets): five words.
#pragma once

#include <cstdint>

struct tMsgRaisedEventData {
    std::int32_t eventKind = 0;          // +0x00 the quest event id (QuestEvent / IEvent id +0x04), the switch selector of RaiseEventFromNetwork
    std::int32_t objectNetworkId = -1;   // +0x04 network id of the event's object (ObjectBase +0x108), -1 when there is none
    std::int32_t unk_08 = 0;             // +0x08 QuestEvent +0x0c (the target id), copied
    std::int32_t unk_0c = 0;             // +0x0c QuestEvent +0x14 (the value), copied
    std::int32_t targetNetworkId = 0;    // +0x10 QuestEvent +0x18: the raw word, or for QE_MoveInZone the network id of the zone
};
