// CMsgRaisedEvent: a quest event raised by one player and replayed on the others. The payload
// starts at +0x50 (the CMessage base ends at +0x50): five 32-bit words, +0x50..+0x63. The names
// come from the reads in RaiseEventFromNetwork. 
#pragma once

#include <cstdint>

#include "net-session-online/c_message.hpp"

class QuestEvent;

class CMsgRaisedEvent : public CMessage {
public:
    // 0x329630 _ZN15CMsgRaisedEventC1Eb. Partial: the body is complete (payload zeroed, type name,
    // reliable, sendMode 1, includeLocalMember), but it runs the CMessage(const char*, bool) base,
    // which is partial (the byte at +0x3c is not modelled).
    explicit CMsgRaisedEvent(bool withSerial);

    // Slots 0x0c / 0x10 of CMessage: the payload is the five words below (tMsgRaisedEventData, dh2/tMsgRaisedEventData.hpp), 20 bytes.
    void* GetDataPtr() override { return &eventKind_; }
    std::uint32_t GetDataSize() const override { return 20; }
    // 0x327a0c _ZN15CMsgRaisedEvent13SetPropertiesEv
    void SetProperties() {
        typeName_ = "CMsgRaisedEvent";
        reliable_ = true;
        sendMode_ = 1;
        includeLocalMember_ = true;
    }

    // Payload (original 32-bit offsets). Zeroed by the constructor. The five words have the layout of tMsgRaisedEventData.
    std::int32_t eventKind_ = 0;         // +0x50: selector of the switch in RaiseEventFromNetwork
    std::int32_t objectNetworkId_ = 0;   // +0x54: network id of the object the event names
    std::int32_t unk_58 = 0;             // +0x58: read and copied into the quest event, role not identified
    std::int32_t unk_5c = 0;             // +0x5c: read and copied into the quest event, role not identified
    std::int32_t targetNetworkId_ = 0;   // +0x60: network id of the second object (case 4 resolves it)

    // 0x47ac58 _ZN15CMsgRaisedEvent6CreateEP10QuestEvent. Creates the message and has the quest event fill the payload
    // (QuestEvent::FillNetworkMsg, vtable slot +0x0c). Returns the message.
    static CMessage* Create(QuestEvent* event);

    // 0x49a238 _ZN15CMsgRaisedEvent21RaiseEventFromNetworkEPS_. Rebuilds the quest event of the message (kinds 0..5, 7..10, 12)
    // and raises it on the current Level; a message from the local member is ignored. The original returns the EventManager.
    static void RaiseEventFromNetwork(CMsgRaisedEvent* message);
};
