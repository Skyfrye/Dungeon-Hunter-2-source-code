#include "net-session-online/c_event_queue_base.hpp"

// 0x7fe3fc _ZN15CEventQueueBaseD1Ev (0x7fe460 is the deleting D0, skipped)
CEventQueueBase::~CEventQueueBase() = default;

// 0x7fe204 _ZN15CEventQueueBase8AddEventEiPvi (returns the unlock result, 0)
int CEventQueueBase::AddEvent(int type, void* data, int size) {
    mutex_.Lock();
    events_.emplace_back(type, data, static_cast<std::size_t>(size));
    mutex_.Unlock();
    return 0;
}

// 0x7fde10 _ZN15CEventQueueBase9HasEventsEv (no lock taken in the original)
bool CEventQueueBase::HasEvents() const { return !events_.empty(); }

// 0x7fdf64 _ZN15CEventQueueBase12GetEventDataEiPvi
int CEventQueueBase::GetEventData(int type, void* data, int size) {
    mutex_.Lock();
    for (const CEvent& event : events_) {
        if (event.Type() == type) {
            const int result = event.CopyData(data, size);
            mutex_.Unlock();
            return result;
        }
    }
    mutex_.Unlock();
    return -1;
}

// 0x7fe2b8 _ZN15CEventQueueBase5ClearEi
void CEventQueueBase::Clear(int type) {
    mutex_.Lock();
    for (auto it = events_.begin(); it != events_.end();) {
        if (it->Type() == type) {
            it = events_.erase(it);
        } else {
            ++it;
        }
    }
    mutex_.Unlock();
}

// 0x7fe438 _ZN15CEventQueueBase5ClearEv (returns the unlock result, 0)
int CEventQueueBase::Clear() {
    mutex_.Lock();
    events_.clear();
    mutex_.Unlock();
    return 0;
}

// 0x7fe330 _ZN15CEventQueueBase9FindEventEib
// Expired events are dropped on the way. The first event of the requested type
// is reported; it is removed only when consume is set.
bool CEventQueueBase::FindEvent(int type, bool consume) {
    mutex_.Lock();
    bool found = false;
    for (auto it = events_.begin(); it != events_.end();) {
        if (it->IsExpired(expiryCheck_)) {
            it = events_.erase(it);
            continue;
        }
        if (it->Type() == type) {
            if (consume) {
                events_.erase(it);
            }
            found = true;
            break;
        }
        ++it;
    }
    mutex_.Unlock();
    return found;
}
