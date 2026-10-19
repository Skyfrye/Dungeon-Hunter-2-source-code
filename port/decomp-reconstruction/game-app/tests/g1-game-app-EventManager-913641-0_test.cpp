// Test for the EventManager batch g1-game-app-EventManager-913641-0.
// Uses a fake IEvent and fake IEventReceiver objects, so it needs no engine code. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <vector>

#include "dh2/EventManager.hpp"
#include "dh2/IEventReceiver.hpp"
#include "net-session-online/i_event.hpp"

namespace {

int g_failures = 0;
int g_eventsDeleted = 0;

#define EXPECT(cond)                                                                 \
    do {                                                                             \
        if (!(cond)) {                                                               \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                            \
        }                                                                            \
    } while (0)

// An event with a fixed id. eventId_ is the IEvent field that getEventID() returns.
class TestEvent : public IEvent {
public:
    explicit TestEvent(std::uint32_t id) { eventId_ = id; }
    ~TestEvent() override { ++g_eventsDeleted; }
};

// Records its tag in a shared log each time it is called. Consumes the event when consume is true.
class Recorder : public IEventReceiver {
public:
    Recorder(int tag, bool consume, std::vector<int>* log) : tag_(tag), consume_(consume), log_(log) {}
    bool onEvent(const IEvent*, const EventManager*) override {
        log_->push_back(tag_);
        return consume_;
    }

private:
    int tag_;
    bool consume_;
    std::vector<int>* log_;
};

// Detaches a victim receiver from its own manager while the event is being walked.
class Detacher : public IEventReceiver {
public:
    Detacher(EventManager* manager, int eventId, IEventReceiver* victim, std::vector<int>* log)
        : manager_(manager), eventId_(eventId), victim_(victim), log_(log) {}
    bool onEvent(const IEvent*, const EventManager*) override {
        log_->push_back(100);
        manager_->Detach(eventId_, victim_);
        return false;
    }

private:
    EventManager* manager_;
    int eventId_;
    IEventReceiver* victim_;
    std::vector<int>* log_;
};

// EventManager with access to the protected queue, so a test can queue events directly.
class TestManager : public EventManager {
public:
    void Queue(const IEvent* event) { m_queuedEvents.push_back(event); }
};

TestEvent* MakeEvent(std::uint32_t id) { return new TestEvent(id); }

void TestAttachDetach() {
    std::vector<int> log;
    EventManager m;
    Recorder a(1, false, &log);
    Recorder b(2, false, &log);

    EXPECT(m.Attach(7, &a, 0));
    EXPECT(!m.Attach(7, &a, 0));  // already attached for this id
    EXPECT(m.Attach(7, &b, 5));
    EXPECT(m.Attach(8, &a, 0));   // the same receiver may serve another id

    TestEvent e7(7);
    TestEvent e8(8);
    m.Raise(e7);
    EXPECT((log == std::vector<int>{1, 2}));  // attach order
    log.clear();
    m.Raise(e8);
    EXPECT((log == std::vector<int>{1}));

    EXPECT(m.Detach(7, &a));
    EXPECT(!m.Detach(7, &a));  // removed already
    EXPECT(!m.Detach(9, &a));  // no such id
    log.clear();
    m.Raise(e7);
    EXPECT((log == std::vector<int>{2}));
}

void TestConsumeStopsWalk() {
    std::vector<int> log;
    EventManager m;
    Recorder c(1, true, &log);   // consumes the event
    Recorder d(2, false, &log);
    Recorder e(3, false, &log);
    m.Attach(4, &c, 0);
    m.Attach(4, &d, 0);
    m.Attach(4, &e, 0);
    TestEvent ev(4);
    m.Raise(ev);
    EXPECT((log == std::vector<int>{1}));
}

void TestRaiseNoReceivers() {
    std::vector<int> log;
    EventManager m;
    TestEvent ev(99);
    m.Raise(ev);
    EXPECT(log.empty());
}

void TestDelayedDetach() {
    std::vector<int> log;
    EventManager m;
    Recorder a(1, false, &log);
    Recorder b(2, false, &log);
    Recorder z(3, false, &log);
    m.Attach(3, &a, 0);
    m.Attach(3, &b, 0);

    EXPECT(m.DelayedDetach(3, &a));
    EXPECT(!m.DelayedDetach(3, &z));  // never attached
    TestEvent ev(3);
    m.Raise(ev);
    EXPECT((log == std::vector<int>{1, 2}));  // still called until the delayed detach is dropped

    m.DropDelayedDetach();
    log.clear();
    m.Raise(ev);
    EXPECT((log == std::vector<int>{2}));
}

void TestUpdateRaisesAndDeletes() {
    std::vector<int> log;
    TestManager m;
    Recorder r(1, false, &log);
    m.Attach(5, &r, 0);

    g_eventsDeleted = 0;
    m.Queue(MakeEvent(5));
    m.Queue(MakeEvent(5));
    m.Queue(MakeEvent(6));  // no receivers, but still raised and deleted
    m.Update(0.0);
    EXPECT((log == std::vector<int>{1, 1}));
    EXPECT(g_eventsDeleted == 3);

    // A second update with an empty queue does nothing more.
    log.clear();
    m.Update(0.0);
    EXPECT(log.empty());
    EXPECT(g_eventsDeleted == 3);
}

void TestUpdateDropsDelayedDetach() {
    std::vector<int> log;
    TestManager m;
    Recorder a(1, false, &log);
    m.Attach(2, &a, 0);
    EXPECT(m.DelayedDetach(2, &a));
    m.Update(0.0);  // Update() ends with DropDelayedDetach()
    TestEvent ev(2);
    m.Raise(ev);
    EXPECT(log.empty());
}

void TestFlushDropsWithoutDeleting() {
    std::vector<int> log;
    TestManager m;
    Recorder a(1, false, &log);
    m.Attach(1, &a, 0);
    EXPECT(m.DelayedDetach(1, &a));

    g_eventsDeleted = 0;
    TestEvent* queued = MakeEvent(1);
    m.Queue(queued);
    m.Flush();
    EXPECT(g_eventsDeleted == 0);  // Flush does not delete queued events

    TestEvent ev(1);
    m.Raise(ev);
    EXPECT(log.empty());  // receivers were erased
    m.Update(0.0);        // nothing queued and nothing delayed remains
    EXPECT(log.empty());

    delete queued;        // the caller owns the dropped event
    EXPECT(g_eventsDeleted == 1);
}

void TestRaiseWalksSnapshot() {
    std::vector<int> log;
    EventManager m;
    Recorder victim(2, false, &log);
    Detacher first(&m, 4, &victim, &log);
    m.Attach(4, &first, 0);
    m.Attach(4, &victim, 0);

    TestEvent ev(4);
    m.Raise(ev);
    // The victim was detached during the walk but is still called on that walk, because the walk runs on a copy.
    EXPECT((log == std::vector<int>{100, 2}));

    log.clear();
    m.Raise(ev);  // the next walk sees the detach
    EXPECT((log == std::vector<int>{100}));
}

}  // namespace

int main() {
    TestAttachDetach();
    TestConsumeStopsWalk();
    TestRaiseNoReceivers();
    TestDelayedDetach();
    TestUpdateRaisesAndDeletes();
    TestUpdateDropsDelayedDetach();
    TestFlushDropsWithoutDeleting();
    TestRaiseWalksSnapshot();
    if (g_failures != 0) {
        std::fprintf(stderr, "EventManager test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("EventManager test: all checks passed\n");
    return 0;
}
