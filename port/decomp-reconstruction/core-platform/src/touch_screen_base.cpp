#include "core-platform/touch_screen_base.hpp"

#include <cstdio>
#include <cstdlib>

#include "core-platform/debug_out.hpp"
#include "core-platform/deps/debug_switches.hpp"

#include "core-platform/memory.hpp"  // gAssertLevel

#include "dh2/EventManager.hpp"
#include "dh2/EvTouchScreenMove.hpp"
#include "dh2/EvTouchScreenPress.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"  // dword_99F740, the Application's EventManager

namespace {
const char kTouchQueueFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\IO\\TouchScreen\\TouchScreenBase.cpp";

// Shared ASSERT(!_IsQueueEmpty()) handling. Level 2 aborts (the original writes
// to address 0), level 1 prints the assert line.
void QueueEmptyAssert(int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "!_IsQueueEmpty()", kTouchQueueFile, line);
    }
}

// Original stores the float coordinates as truncated ints in shorts (__aeabi_f2iz).
short ToShort(float v) { return static_cast<short>(static_cast<int>(v)); }

// The debug switch that gates the fake-press grid. The listing does NOT query the
// "SimulateMultiClickShitInMenus" name itself: it anchors on that literal (0x8c00c8) and adds 0x1d
// (0x33c5ac `ADD R3, R3, #0x1D`, bytes 0x1d 0x30 0x83 0xe2), so both GetSwitch calls - 0x33c6b0 for a
// queued begin and 0x33c7c0 for a queued end - pass the terminator of the literal, i.e. the empty
// string (0x8c00c8 carries 29 characters, so +0x1d is its NUL). The literal is kept so the same
// .rodata string is still emitted, and what is queried is that NUL, exactly as the listing passes it.
const char kSimulateMultiClickSwitch[] = "SimulateMultiClickShitInMenus";

bool simulateMultiClickEnabled() {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetSwitch(&kSimulateMultiClickSwitch[sizeof(kSimulateMultiClickSwitch) - 1]);
}
}  // namespace

// 0x33c298 / 0x33c3d8 TouchScreenBase::TouchScreenBase(short, short)
// Slot records, queue and the time/active counters start at zero; the scale is 1.0.
TouchScreenBase::TouchScreenBase(short width, short height) : width_(width), height_(height) {}

// 0x33a9a4 TouchScreenBase::_IsQueueEmpty() const
bool TouchScreenBase::_IsQueueEmpty() const { return queueHead_ == queueTail_; }

// 0x33a9bc TouchScreenBase::_AddToQueue(TouchEvent, Point2D<float> const&, long)
// Appends an event, coalescing a new move into an existing queued move for the
// same touch id. The ring holds 15 usable entries (head == tail means empty).
void TouchScreenBase::_AddToQueue(TouchEventType type, const Point2D<float>& p, long slot) {
    const int oldTail = queueTail_;
    int newTail = oldTail + 1;
    if (newTail > 15) {
        newTail = 0;
    }
    queueTail_ = newTail;
    if (_IsQueueEmpty()) {  // full: the new tail would collide with the head
        queueTail_ = oldTail;
        return;
    }
    if (queueHead_ != oldTail) {
        int i = oldTail;
        do {
            i = (i != 0) ? i - 1 : 15;
            QueuedEvent& e = queue_[i];
            if (e.id == slot) {
                if (e.type == kTouchBegan || e.type == kTouchEnded) {
                    break;
                }
                if (e.type == kTouchMoved) {
                    queueTail_ = oldTail;
                    e.type = type;
                    e.x = ToShort(p.X);
                    e.y = ToShort(p.Y);
                    return;
                }
            }
        } while (i != queueHead_);
    }
    QueuedEvent& e = queue_[oldTail];
    e.type = type;
    e.x = ToShort(p.X);
    e.y = ToShort(p.Y);
    e.id = static_cast<int>(slot);
}

// 0x33aad8 TouchScreenBase::getDimension() const (sret form, vtable +0x18)
// Bounds come from the virtual getters, normalised to min/max per axis.
Rct<short> TouchScreenBase::getDimension() const {
    const short left = static_cast<short>(getLeftBound());
    const short top = static_cast<short>(getTopBound());
    const short right = static_cast<short>(getRightBound());
    const short bottom = static_cast<short>(getBottomBound());
    Rct<short> r{};
    r.X1 = left <= right ? left : right;
    r.X2 = left <= right ? right : left;
    r.Y1 = top <= bottom ? top : bottom;
    r.Y2 = top <= bottom ? bottom : top;
    return r;
}

// 0x33abbc TouchScreenBase::getDimension(Rct<short>&) const (vtable +0x1c)
void TouchScreenBase::getDimension(Rct<short>& out) const {
    out.X1 = static_cast<short>(getLeftBound());
    out.Y1 = static_cast<short>(getTopBound());
    out.X2 = static_cast<short>(getRightBound());
    out.Y2 = static_cast<short>(getBottomBound());
}

// 0x33ac24 TouchScreenBase::touchBegan(Point2D<short> const&, long)
void TouchScreenBase::touchBegan(const Point2D<short>& p, long slot) {
    Slot& s = slots_[slot];
    if (active_ < slot) {
        active_ = static_cast<int>(slot) + 1;
    }
    if (!s.touched_) {
        s.begin_[0] = p.X;
        s.begin_[1] = p.Y;
        s.swipe_ = 0;
    }
    s.prev_[0] = s.cur_[0];
    s.prev_[1] = s.cur_[1];
    s.cur_[0] = p.X;
    s.cur_[1] = p.Y;
    s.time_ = time_now_;
    s.touched_ = true;
    s.valid_ = true;
    s.mark_ = 0;
    _AddToQueue(kTouchBegan, Point2D<float>{static_cast<float>(p.X), static_cast<float>(p.Y)}, slot);
}

// 0x33ad28 TouchScreenBase::touchMoved(Point2D<short> const&, long)
// A touch that has moved mostly along X (more than 11 units, Y within 4) is
// classified once as a swipe: 2 when it moved right, 1 when it moved left.
void TouchScreenBase::touchMoved(const Point2D<short>& p, long slot) {
    Slot& s = slots_[slot];
    if (s.touched_) {
        s.prev_[0] = s.cur_[0];
        s.prev_[1] = s.cur_[1];
        s.cur_[0] = p.X;
        s.cur_[1] = p.Y;
        s.time_ = time_now_;
        s.mark_ = 1;
        const int dx = static_cast<int>(s.begin_[0]) - static_cast<int>(s.cur_[0]);
        const int dy = static_cast<int>(s.begin_[1]) - static_cast<int>(s.cur_[1]);
        if (std::abs(dx) > 11 && std::abs(dy) < 5 && s.swipe_ == 0) {
            s.swipe_ = (static_cast<int>(s.begin_[0]) < static_cast<int>(s.cur_[0])) ? 2 : 1;
        }
    }
    _AddToQueue(kTouchMoved, Point2D<float>{static_cast<float>(p.X), static_cast<float>(p.Y)}, slot);
}

// 0x33ae3c TouchScreenBase::touchCancelled(Point2D<short> const&, long)
void TouchScreenBase::touchCancelled(const Point2D<short>& p, long slot) {
    Slot& s = slots_[slot];
    s.id_ = -1;
    s.touched_ = false;
    s.mark_ = 2;
    if (active_ - 1 == slot) {
        active_ = static_cast<int>(slot);
    }
    _AddToQueue(kTouchEnded, Point2D<float>{static_cast<float>(p.X), static_cast<float>(p.Y)}, slot);
}

// 0x33aeb8 TouchScreenBase::touchEnded(Point2D<short> const&, long)
// A thunk: the listing tail-calls touchCancelled with the same arguments.
void TouchScreenBase::touchEnded(const Point2D<short>& p, long slot) {
    touchCancelled(p, slot);
}

// 0x33b2ec TouchScreenBase::hasTouch()
bool TouchScreenBase::hasTouch() {
    for (int i = 0; i < 8; ++i) {
        if (slots_[i].touched_ && slots_[i].mark_ == 0 && slots_[i].valid_) {
            return true;
        }
    }
    return false;
}

// 0x33b3dc TouchScreenBase::getID(long)
// Returns the slot holding touch id, or claims the first free slot for it.
int TouchScreenBase::getID(long id) {
    int firstFree = -1;
    for (int i = 0; i < 8; ++i) {
        if (slots_[i].id_ == id) {
            return i;
        }
        if (!slots_[i].touched_ && firstFree == -1) {
            firstFree = i;
        }
    }
    slots_[firstFree].id_ = static_cast<int>(id);
    return firstFree;
}

// 0x33b4d8 TouchScreenBase::clear()
// Logs the banner line through _DEBUG_OUT, then clears the touched flag of the
// first eight slots (the listing's 0x30-byte records, stepping by 48 bytes).
void TouchScreenBase::clear() {
    _DEBUG_OUT("*************************TouchScreenBase::clear()");
    for (int i = 0; i < 8; ++i) {
        slots_[i].touched_ = false;
    }
}

// 0x33b1a4 TouchScreenBase::getTouchPoint(long)
// Returns the current point (+0xc) when the slot is touched (+0x28) and valid
// (+0x20); otherwise nullptr.
const short* TouchScreenBase::getTouchPoint(long slot) const {
    const Slot& s = slots_[slot];
    if (s.touched_ && s.valid_) {
        return s.cur_;
    }
    return nullptr;
}

// 0x33b1e0 TouchScreenBase::getFirstTouchPoint(long)
// Like getTouchPoint, but returns the point where the touch began (+0x8).
const short* TouchScreenBase::getFirstTouchPoint(long slot) const {
    const Slot& s = slots_[slot];
    if (s.touched_ && s.valid_) {
        return s.begin_;
    }
    return nullptr;
}

// 0x33b2bc TouchScreenBase::getSwipeDirection(long) const
int TouchScreenBase::getSwipeDirection(long slot) const {
    const Slot& s = slots_[slot];
    if (s.touched_ && s.valid_) {
        return s.swipe_;
    }
    return 0;
}

// 0x33b21c TouchScreenBase::getTouchDisplacement(long) const
// Current point minus previous point; zero when the slot is not active or has
// not moved away from its begin point.
Point2D<short> TouchScreenBase::getTouchDisplacement(long slot) const {
    Point2D<short> out{0, 0};
    const Slot& s = slots_[slot];
    if (!s.touched_ || !s.valid_) {
        return out;
    }
    if (s.cur_[0] == s.begin_[0] && s.cur_[1] == s.begin_[1]) {
        return out;
    }
    out.X = static_cast<short>(s.cur_[0] - s.prev_[0]);
    out.Y = static_cast<short>(s.cur_[1] - s.prev_[1]);
    return out;
}

// 0x33aebc TouchScreenBase::isRegionPressed(rect<float> const&) const (vtable +0x30)
// True when some active slot is touched and valid, has no pending mark in the next record (mark_, the word at
// the slot's +0x30: the original tests the DWORD at v4 + 48), and its current point lies in the region. The point is first
// mirrored by the orientation (1: Y, 2: X and Y, 3: X; against the 16-bit width and height) and then scaled: the
// shorts are converted to float, multiplied by the scale (+0x1b0), truncated to a 16-bit int and converted back.
int TouchScreenBase::isRegionPressed(const glitch::core::rect<float>& r) const {
    if (active_ <= 0) {
        return 0;
    }
    for (int i = 0; i < active_; ++i) {
        const Slot& s = slots_[i];
        short x = s.cur_[0];
        short y = s.cur_[1];
        switch (orientation_) {
            case 2:
                x = static_cast<short>(width_ - x);
                y = static_cast<short>(height_ - y);
                break;
            case 3:
                x = static_cast<short>(width_ - x);
                break;
            case 1:
                y = static_cast<short>(height_ - y);
                break;
            default:
                break;
        }
        const float fx = static_cast<float>(static_cast<short>(static_cast<int>(static_cast<float>(x) * scale_)));
        if (fx >= r.UpperLeftCorner.X) {
            const float fy = static_cast<float>(static_cast<short>(static_cast<int>(static_cast<float>(y) * scale_)));
            if (fy >= r.UpperLeftCorner.Y && fx <= r.LowerRightCorner.X && fy <= r.LowerRightCorner.Y && s.valid_ &&
                s.touched_ && slots_[i].mark_ == 0) {
                return 1;
            }
        }
    }
    return 0;
}

// 0x33b02c TouchScreenBase::getTouchIDInitiatedInRegion(rect<float> const&) const
// Slot index of the first active touch whose begin point lies in the region.
int TouchScreenBase::getTouchIDInitiatedInRegion(const glitch::core::rect<float>& r) const {
    for (int i = 0; i < active_; ++i) {
        const Slot& s = slots_[i];
        const float x = static_cast<float>(s.begin_[0]);
        const float y = static_cast<float>(s.begin_[1]);
        if (x >= r.UpperLeftCorner.X && y >= r.UpperLeftCorner.Y && x <= r.LowerRightCorner.X && y <= r.LowerRightCorner.Y &&
            s.valid_ && s.touched_) {
            return i;
        }
    }
    return -1;
}

// 0x33b0e8 TouchScreenBase::getTouchIDInRegion(rect<float> const&) const
// Same as getTouchIDInitiatedInRegion but tests the current point.
int TouchScreenBase::getTouchIDInRegion(const glitch::core::rect<float>& r) const {
    for (int i = 0; i < active_; ++i) {
        const Slot& s = slots_[i];
        const float x = static_cast<float>(s.cur_[0]);
        const float y = static_cast<float>(s.cur_[1]);
        if (x >= r.UpperLeftCorner.X && y >= r.UpperLeftCorner.Y && x <= r.LowerRightCorner.X && y <= r.LowerRightCorner.Y &&
            s.valid_ && s.touched_) {
            return i;
        }
    }
    return -1;
}

// 0x33b334 TouchScreenBase::update(double)
// Releases touches that have not been refreshed for more than half a time unit
// and recomputes the active-slot count.
void TouchScreenBase::update(double now) {
    time_now_ = now;
    for (int i = 0; i < 8; ++i) {
        Slot& s = slots_[i];
        if (!s.valid_ && s.time_ + 0.5 < now) {
            if (s.touched_) {
                s.touched_ = false;
                s.id_ = -1;
                if (active_ == i) {
                    --active_;
                }
            }
            continue;
        }
        if (s.touched_) {
            active_ = i + 1;
        }
    }
}

// 0x33b510 TouchScreenBase::_PopFromQueue()
void TouchScreenBase::_PopFromQueue() {
    if (_IsQueueEmpty()) {
        QueueEmptyAssert(108);
    }
    ++queueHead_;
    if (queueHead_ > 15) {
        queueHead_ = 0;
    }
}

// 0x33b5c0 TouchScreenBase::_GetNextEventInQueue() const
const TouchScreenBase::QueuedEvent* TouchScreenBase::_GetNextEventInQueue() const {
    if (_IsQueueEmpty()) {
        QueueEmptyAssert(53);
    }
    return &queue_[queueHead_];
}

// 0x33bd2c TouchScreenBase::getTouchIDList() const
// Indices of touched slots, ascending.
std::list<long> TouchScreenBase::getTouchIDList() const {
    std::list<long> ids;
    for (long i = 0; i < 8; ++i) {
        if (slots_[i].touched_) {
            ids.push_back(i);
        }
    }
    ids.sort();
    return ids;
}

// 0x33c568 _ZN15TouchScreenBase13ProcessEventsEv
// Verified against the listing line by line. It drains the whole queue: each entry is read and popped, the
// orientation (this+0x1a8) mirrors x for 2 and 3 and y for 1 and 2, both coordinates are scaled by this+0x1b0
// and truncated to shorts, a queued move (type 1) raises EvTouchScreenMove (id 5), and a begin (type 0) or end
// (type 2) raises EvTouchScreenPress (id 4) with the flag set for a begin and clear for an end, through the
// EventManager at dword_99F740. The grid of fake presses gated by the debug switch in
// simulateMultiClickEnabled() above is reproduced too: 50-pixel steps of x over x-100..x+99, then of y over
// y-100..y+99, numbering the touch id from the queued event's id modulo 8, then one (25, 25, 0) press, all with
// the same flag as the real press. Deviation (named): the listing's return value is the register left over by the
// last call (Hex-Rays prints the constant 16556) and no caller reads it, so this returns void; the mangled symbol
// is unchanged.
void TouchScreenBase::ProcessEvents() {
    EventManager* const manager = dword_99F740;
    while (!_IsQueueEmpty()) {
        const QueuedEvent queued = *_GetNextEventInQueue();
        _PopFromQueue();

        short x = queued.x;
        short y = queued.y;
        switch (orientation_) {
            case 2:
                x = static_cast<short>(width_ - x);
                y = static_cast<short>(height_ - y);
                break;
            case 3:
                x = static_cast<short>(width_ - x);
                break;
            case 1:
                y = static_cast<short>(height_ - y);
                break;
            default:
                break;
        }
        const short scaledX = static_cast<short>(static_cast<int>(static_cast<float>(x) * scale_));
        const short scaledY = static_cast<short>(static_cast<int>(scale_ * static_cast<float>(y)));

        if (queued.type == kTouchMoved) {
            EvTouchScreenMove move(scaledX, scaledY, queued.id);
            manager->Raise(move);
            continue;
        }
        if (queued.type != kTouchBegan && queued.type != kTouchEnded) {
            continue;
        }

        const bool pressed = queued.type == kTouchBegan;
        if (simulateMultiClickEnabled()) {
            // The debug grid of fake presses, with the same flag as the real one. The step loops
            // count in ints and the event fields truncate them, as the listing does.
            int id = queued.id;
            for (int stepX = static_cast<int>(scaledX) - 100; stepX <= static_cast<int>(scaledX) + 99;
                 stepX += 50, ++id) {
                EvTouchScreenPress press(static_cast<short>(stepX), scaledY, id % 8, pressed);
                manager->Raise(press);
            }
            for (int stepY = static_cast<int>(scaledY) - 100; stepY <= static_cast<int>(scaledY) + 99;
                 stepY += 50, ++id) {
                EvTouchScreenPress press(scaledX, static_cast<short>(stepY), id % 8, pressed);
                manager->Raise(press);
            }
            EvTouchScreenPress press(25, 25, 0, pressed);
            manager->Raise(press);
        }

        EvTouchScreenPress press(scaledX, scaledY, queued.id, pressed);
        manager->Raise(press);
    }
}
