// QuestEvent: abstract base of the quest events (QE_GatherLoot, QE_KillEnemies and the other QE_* classes).
// It adds no data members to IEvent. The derived events add their fields from +0x08 on.
// Original 32-bit size: not recovered. No queued function constructs QuestEvent, and its vtable has no code
// reference (one data reference at 0x6c3c8). The derived events end at +0x1c. IEvent occupies +0x00 .. +0x07
// (vptr, then the event id at +0x04).
// Reconstructed from libDungeonHunter2.so: destructors 0x39611c (D1) and 0x396250 (D0). The vtable
// (_ZTV10QuestEvent, 24 bytes) holds the two destructor slots, IEvent::getEventID and a pure FillNetworkMsg.
#pragma once

#include "net-session-online/i_event.hpp"

struct tMsgRaisedEventData;

class QuestEvent : public IEvent {
public:
    ~QuestEvent() override;                                             // slot 0x00: 0x39611c (D1); slot 0x04: 0x396250 (D0)
    // slot 0x08 is IEvent::getEventID, inherited.
    virtual void FillNetworkMsg(tMsgRaisedEventData& msg) const = 0;   // slot 0x0c: pure here. QE_GatherLoot (0x482400) and the other QE_* events override it

    // No members of its own. The IEvent part is the layout.
};
