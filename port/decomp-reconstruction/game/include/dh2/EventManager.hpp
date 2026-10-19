// EventManager: receivers per event id in Attach() order (the priority is stored, not used for ordering),
// plus a queue of events raised from Update().
// Original size 0x30 (operator new(0x30) in Application::PostInit; Level derives from it, so Level's own
// members start at +0x30). Vtable: slots +0x00/+0x04 are the destructors, no other virtuals.
// Container layouts are STLport 32-bit; the offsets below are the original ones.
#pragma once

#include <cstdint>
#include <list>
#include <map>

class IEvent;
class IEventReceiver;

class EventManager {
public:
    // Node payload of the per-event receiver list (list node +0x08..+0x14).
    struct ReceiverInfo {
        IEventReceiver* receiver;  // +0x00
        int priority;              // +0x04 Attach() argument
        bool detached;             // +0x08 0 on insertion
    };
    // Pending DelayedDetach(): iterators of the map entry and of the receiver node (16-byte list node).
    struct DelayedDetachInfo {
        std::map<int, std::list<ReceiverInfo>>::iterator eventEntry;  // +0x00
        std::list<ReceiverInfo>::iterator receiverNode;               // +0x04
    };

    EventManager();                                    // 0x33805c / 0x3380bc
    virtual ~EventManager();                           // +0x00 0x3384f8 (D1), +0x04 0x338574 (D0), 0x338590

    bool Attach(int eventId, IEventReceiver* receiver, int priority);  // 0x338da0 false when already attached
    bool Detach(int eventId, IEventReceiver* receiver);                // 0x33811c
    bool DelayedDetach(int eventId, IEventReceiver* receiver);         // 0x3382a4 removed by DropDelayedDetach()
    void DropDelayedDetach();                                          // 0x3383f4
    void Raise(const IEvent& event) const;             // 0x338ebc walks the receivers until one returns 1
    void RaiseAsync(const IEvent& event) const;        // 0x339090 thunk to Raise
    void Update(double dt);                            // 0x33900c raises and deletes the queued events
    void Flush();                                      // 0x3384ac

public:
    // +0x00 vptr
    // +0x04 unused (alignment of the map header)
    uint8_t pad_04[4];
    std::map<int, std::list<ReceiverInfo>> m_receivers;  // +0x08 header, +0x18 node count (24 bytes)
    std::list<const IEvent*> m_queuedEvents;           // +0x20 sentinel node
    std::list<DelayedDetachInfo> m_delayedDetach;      // +0x28 sentinel node
};
