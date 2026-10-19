// Queue, swipe, displacement and timeout behaviour of TouchScreenBase.
#include "core-platform/touch_screen_base.hpp"

#include <cstdio>
#include <list>

#include "dh2/EventManager.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// ProcessEvents drains the queue into the EventManager at dword_99F740 (Application's
// m_eventManager). This test owns one with no receivers, so every Raise returns at once.
static EventManager g_eventManager;
static EventManager* g_test_dword_99F740 = &g_eventManager;
EventManager*& dword_99F740 = g_test_dword_99F740;

namespace {
struct Touch : TouchScreenBase {
    Touch() : TouchScreenBase(960, 640) {}
    int getLeftBound() const override { return 0; }
    int getRightBound() const override { return 960; }
    int getTopBound() const override { return 0; }
    int getBottomBound() const override { return 640; }
    Slot& slot(int i) { return slots_[i]; }
};
}  // namespace

int main() {
    Touch t;
    t.update(0.0);

    // Begin on slot 0 queues one begin event.
    t.touchBegan(Point2D<short>{100, 200}, 0);
    CHECK(!t._IsQueueEmpty());
    CHECK(t.hasTouch());
    CHECK(t.getTouchPoint(0) != nullptr && t.getTouchPoint(0)[0] == 100);
    const TouchScreenBase::QueuedEvent* ev = t._GetNextEventInQueue();
    CHECK(ev->type == TouchScreenBase::kTouchBegan && ev->x == 100 && ev->y == 200);
    t.ProcessEvents();
    CHECK(t._IsQueueEmpty());

    // A move of 50 along X with no Y drift is a rightward swipe (2).
    t.touchMoved(Point2D<short>{150, 200}, 0);
    CHECK(t.getSwipeDirection(0) == 2);
    Point2D<short> d = t.getTouchDisplacement(0);
    CHECK(d.X == 50 && d.Y == 0);

    // Dimensions normalise to min/max; the non-normalised form keeps the getter order.
    Rct<short> r = t.getDimension();
    CHECK(r.X1 == 0 && r.Y1 == 0 && r.X2 == 960 && r.Y2 == 640);

    // Repeated moves of one touch coalesce into the queued move.
    t.touchBegan(Point2D<short>{10, 10}, 3);
    t.touchMoved(Point2D<short>{20, 10}, 3);
    t.touchMoved(Point2D<short>{30, 10}, 3);
    t._PopFromQueue();  // slot 0's earlier begin is already gone; drop the ended-queue head
    t._PopFromQueue();  // slot 3 begin
    CHECK(t._GetNextEventInQueue()->type == TouchScreenBase::kTouchMoved);
    CHECK(t._GetNextEventInQueue()->x == 30);
    t._PopFromQueue();
    CHECK(t._IsQueueEmpty());

    // Region query uses the current point; an ended touch is not reported.
    glitch::core::rect<float> region{0.f, 0.f, 100.f, 100.f};
    CHECK(t.getTouchIDInRegion(region) == 3);
    t.touchEnded(Point2D<short>{30, 10}, 3);
    CHECK(t.getTouchIDInRegion(region) == -1);

    // A touch that is not valid and has been idle for over half a unit is released.
    t.touchBegan(Point2D<short>{5, 5}, 2);
    t.slot(2).valid_ = false;
    t.slot(2).time_ = 0.0;
    t.update(1.0);
    CHECK(!t.slot(2).touched_);
    CHECK(t.slot(2).id_ == -1);

    // Id lists are ascending.
    t.touchBegan(Point2D<short>{1, 1}, 5);
    t.touchBegan(Point2D<short>{1, 1}, 1);
    std::list<long> ids = t.getTouchIDList();
    // Slot 0 is still held from the first swipe, so the list is {0, 1, 5}.
    CHECK(ids.size() == 3 && ids.front() == 0 && ids.back() == 5);

    if (failures == 0) std::printf("touch_screen_test: ok\n");
    return failures == 0 ? 0 : 1;
}
