// CEventQueueBase: mutex-guarded FIFO of CEvent values (a std::list in the
// original STL private layout). Template instances CEventQueue<T, N> derive from
// it; their Clear() is a branch to CEventQueueBase::Clear.
// Offsets are the original 32-bit layout: +0x00 vptr, +0x04 mutex, +0x08 list,
// +0x10 expiry-check flag (see NOTES.md for the unnamed +0x0c word).
#pragma once

#include <cstdint>
#include <list>

#include "net-session-online/c_event.hpp"
#include "net-transport/sync.hpp"  // CNetMutex (the recursive mutex of net-transport)

// Vtable of _ZTV15CEventQueueBase, in slot order: +0x00 AddEvent, +0x04 HasEventOccured,
// +0x08 ConsumeEvent, +0x0c Clear(), +0x10 Clear(int), +0x14 GetEventData, +0x18/+0x1c the
// destructor, +0x20 HasEvents. Every one of them is virtual in the binary.
class CEventQueueBase {
public:
    // The template argument of CEventQueue<T, N> (0 for the base itself): CConnection, CConnectionManager and
    // CSignIn queues are built with 100. It is stored at +0x10 and passed to CEvent::IsExpired.
    explicit CEventQueueBase(std::uint32_t expiry = 0) : expiryCheck_(expiry) {}
    virtual ~CEventQueueBase();                                   // D1 / D2 (D0 skipped)

    // 0x7fe204 AddEvent. Returns the pthread_mutex_unlock result (0 on success).
    virtual int AddEvent(int type, void* data, int size);         // +0x00
    virtual bool HasEventOccured(int type, bool consume) {        // +0x04, 15HasEventOccuredEib
        return FindEvent(type, consume);
    }
    virtual bool ConsumeEvent(int type) { return FindEvent(type, true); }  // +0x08, 12ConsumeEventEi
    // 0x7fe438 Clear(). Returns the pthread_mutex_unlock result (0 on success).
    virtual int Clear();                                          // +0x0c, 5ClearEv
    virtual void Clear(int type);                                 // +0x10, 5ClearEi
    virtual int GetEventData(int type, void* data, int size);     // +0x14, 12GetEventDataEiPvi
    virtual bool HasEvents() const;                               // +0x20, 9HasEventsEv (no lock)
    bool FindEvent(int type, bool consume);                       // 9FindEventEib

private:
    CNetMutex mutex_;                  // +0x04
    std::list<CEvent> events_;         // +0x08
    std::uint32_t expiryCheck_ = 0;    // +0x10 passed as the enable flag to CEvent::IsExpired
};
