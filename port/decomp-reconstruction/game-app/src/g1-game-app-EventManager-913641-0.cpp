// Batch g1-game-app-EventManager-913641-0 (EventManager, part 1 of 1).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// The receiver table is std::map<int, std::list<ReceiverInfo>> and the two queues are std::list. They
// replace the original STLport tree and list nodes, so the node bookkeeping is the containers' own.
// Member offsets are recorded in dh2/EventManager.hpp.
#include "dh2/EventManager.hpp"

#include "dh2/IEventReceiver.hpp"
#include "net-session-online/i_event.hpp"

// 0x33805c EventManager::EventManager() (C2, base-object constructor)
// Skipped: compiler-generated base-object constructor. Its body is the same as the complete-object
// constructor at 0x3380bc (vptr set, receiver table, queue and delayed-detach list all empty), so the
// one C++ constructor below covers both.

// 0x3380bc EventManager::EventManager() (C1, complete-object constructor)
EventManager::EventManager() {}

// 0x3384f8 EventManager::~EventManager() (D1, complete-object destructor)
// Queued events are dropped, not deleted: the original frees only the list nodes. The original clears
// the queue a second time after the delayed-detach list; that second clear is a no-op and is not repeated.
EventManager::~EventManager() {
    m_queuedEvents.clear();   // +0x20
    m_delayedDetach.clear();  // +0x28
    m_receivers.clear();      // +0x08, erases every map node and its receiver list
}

// 0x338574 EventManager::~EventManager() (D0, deleting destructor)
// Skipped: compiler-generated deleting destructor. The original runs the D1 body at 0x3384f8 and then
// CustomFree(this). The compiler emits this from the virtual destructor, so no body is written.

// 0x338590 EventManager::~EventManager() (D2, base-object destructor)
// Skipped: compiler-generated base-object destructor with the same body as the D1 at 0x3384f8.

// 0x338da0 EventManager::Attach(int, IEventReceiver*, int)
// Returns false when the receiver is already attached to this id. Otherwise the receiver is appended in
// insertion order; the priority is stored in the node and not used for ordering.
// The original looks the id up and creates its list through operator[] only when the id is missing. Here
// operator[] does both. A new list is empty, so the duplicate scan does nothing and the receiver is appended,
// which is the same result.
bool EventManager::Attach(int eventId, IEventReceiver* receiver, int priority) {
    std::list<ReceiverInfo>& receivers = m_receivers[eventId];
    for (const ReceiverInfo& info : receivers) {
        if (info.receiver == receiver) {
            return false;
        }
    }
    receivers.push_back(ReceiverInfo{receiver, priority, false});
    return true;
}

// 0x33811c EventManager::Detach(int, IEventReceiver*)
// Removes the first node of the id's list that holds the receiver. The map entry stays even when its list
// becomes empty, as in the original.
bool EventManager::Detach(int eventId, IEventReceiver* receiver) {
    const auto entry = m_receivers.find(eventId);
    if (entry == m_receivers.end()) {
        return false;
    }
    std::list<ReceiverInfo>& receivers = entry->second;
    for (auto it = receivers.begin(); it != receivers.end(); ++it) {
        if (it->receiver == receiver) {
            receivers.erase(it);
            return true;
        }
    }
    return false;
}

// 0x3382a4 EventManager::DelayedDetach(int, IEventReceiver*)
// Finds the same receiver node that Detach() would remove, but leaves it linked. The pair (map entry,
// receiver node) is appended to m_delayedDetach, and DropDelayedDetach() unlinks the node later. The
// original does not set ReceiverInfo::detached here, and a second DelayedDetach() of the same receiver
// queues the same node again (see the notes in the ledger row).
bool EventManager::DelayedDetach(int eventId, IEventReceiver* receiver) {
    const auto entry = m_receivers.find(eventId);
    if (entry == m_receivers.end()) {
        return false;
    }
    std::list<ReceiverInfo>& receivers = entry->second;
    for (auto it = receivers.begin(); it != receivers.end(); ++it) {
        if (it->receiver == receiver) {
            m_delayedDetach.push_back(DelayedDetachInfo{entry, it});
            return true;
        }
    }
    return false;
}

// 0x3383f4 EventManager::DropDelayedDetach()
// Unlinks and frees each receiver node named by m_delayedDetach, then empties that list.
void EventManager::DropDelayedDetach() {
    for (const DelayedDetachInfo& pending : m_delayedDetach) {
        pending.eventEntry->second.erase(pending.receiverNode);
    }
    m_delayedDetach.clear();
}

// 0x3384ac EventManager::Flush()
// Drops every queued event pointer without deleting the events (the original frees only the list nodes),
// erases all receivers, and empties the delayed-detach list.
void EventManager::Flush() {
    m_queuedEvents.clear();
    m_receivers.clear();
    m_delayedDetach.clear();
}

// 0x338ebc EventManager::Raise(IEvent const&) const
// Walks the id's receivers in list order and stops at the first one whose onEvent returns true (the original
// tests the result against 1). The walk runs on a copy of the list, so a receiver that Attaches or Detaches
// during the walk does not change it. A receiver detached during the walk is still called on that walk.
void EventManager::Raise(const IEvent& event) const {
    // Slot +0x08 of the IEvent vtable (_ZTV6IEvent) is IEvent::getEventID. It is the only getEventID in the
    // binary, so the direct call reaches the same function. i_event.hpp declares it non-virtual: layout request.
    const int eventId = static_cast<int>(event.getEventID());
    const auto entry = m_receivers.find(eventId);
    if (entry == m_receivers.end()) {
        return;
    }
    const std::list<ReceiverInfo> receivers = entry->second;
    for (const ReceiverInfo& info : receivers) {
        if (info.receiver->onEvent(&event, this)) {
            break;
        }
    }
}

// 0x339090 EventManager::RaiseAsync(IEvent const&) const
// Thunk: forwards to Raise (0x338ebc) with the same argument.
void EventManager::RaiseAsync(const IEvent& event) const {
    Raise(event);
}

// 0x33900c EventManager::Update(double)
// Raises the queued events in order. Each event is deleted through its virtual destructor after it has been
// raised, and then removed from the queue. The front node is read again on every pass, as in the original.
// The original also runs a walk from the front to the sentinel whose result is never used (asm: a loop on
// R2 with no store and no call). It has no effect and is not repeated. The dt argument is unused.
void EventManager::Update(double /*dt*/) {
    while (!m_queuedEvents.empty()) {
        const IEvent* event = m_queuedEvents.front();
        Raise(*event);
        delete event;
        m_queuedEvents.pop_front();
    }
    DropDelayedDetach();
}
