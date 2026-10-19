// TouchScreenBase: eight-slot touch tracker with a 16-entry event ring.
// Slot records are 0x30 bytes in the original. Field roles are inferred from
// the accessors and handlers in the decompiled code (see NOTES.md).
#pragma once

#include <array>
#include <list>
#include <vector>

#include "core-platform/deps/game_types.hpp"
#include "glitch-shared/glitch_core.hpp"

class TouchScreenBase {
public:
    enum TouchEventType : int { kTouchBegan = 0, kTouchMoved = 1, kTouchEnded = 2 };

    // Queued event: 12 bytes in the original (type, x, y as shorts, touch id).
    struct QueuedEvent {
        int type = 0;      // +0x0
        short x = 0;       // +0x4
        short y = 0;       // +0x6
        int id = 0;        // +0x8
    };

    // One touch slot, 0x30 bytes. The array of slots starts at this+0x04 (the first word of every 0x30 block is the
    // trailing mark_ of the previous record; the block of slot 0 starts at the vptr, which is never read as a mark).
    // Offsets below are from the start of the block of the slot, i.e. this + 0x30 * slot.
#pragma pack(push, 4)
    struct Slot {
        int pad00_ = 0;              // block +0x04 (never accessed)
        short begin_[2] = {0, 0};    // block +0x08 point where the touch began
        short cur_[2] = {0, 0};      // block +0x0c current point
        short prev_[2] = {0, 0};     // block +0x10 previous point
        int pad14_ = 0;              // block +0x14 (never accessed)
        double time_ = 0;            // block +0x18 time of the last sample
        bool valid_ = false;         // block +0x20
        int swipe_ = 0;              // block +0x24 0 none, 1 left, 2 right
        bool touched_ = false;       // block +0x28
        int id_ = 0;                 // block +0x2c (-1 when released)
        int mark_ = 0;               // block +0x30 = +0x00 of the next block (0/1/2 written by the handlers of this slot)
    };
#pragma pack(pop)

    TouchScreenBase(short width, short height);
    virtual ~TouchScreenBase() = default;

    // Pure in the original: TouchScreenWin32 and friends supply the bounds.
    virtual int getLeftBound() const = 0;    // vtable +0x08
    virtual int getRightBound() const = 0;   // vtable +0x0c
    virtual int getTopBound() const = 0;     // vtable +0x10
    virtual int getBottomBound() const = 0;  // vtable +0x14

    Rct<short> getDimension() const;                 // vtable +0x18, normalised min/max
    void getDimension(Rct<short>& out) const;        // vtable +0x1c, not normalised

    virtual void touchBegan(const Point2D<short>& p, long slot);     // +0x20
    virtual void touchMoved(const Point2D<short>& p, long slot);     // +0x24
    virtual void touchEnded(const Point2D<short>& p, long slot);     // +0x28
    virtual void touchCancelled(const Point2D<short>& p, long slot); // +0x2c

    virtual int isRegionPressed(const glitch::core::rect<float>& r) const;      // vtable +0x30, 0x33aebc (TouchScreenIPhone overrides it with a thunk)
    int getTouchIDInitiatedInRegion(const glitch::core::rect<float>& r) const; // +0x34
    virtual int getTouchIDInRegion(const glitch::core::rect<float>& r) const;  // +0x38 (iPhone overrides)
    const short* getTouchPoint(long slot) const;                               // +0x3c
    const short* getFirstTouchPoint(long slot) const;                          // +0x40
    Point2D<short> getTouchDisplacement(long slot) const;                      // +0x44
    int getSwipeDirection(long slot) const;                                    // +0x48
    std::list<long> getTouchIDList() const;                                    // +0x4c
    bool hasTouch();                                                           // +0x50

    int getID(long id);
    void clear();
    void update(double now);
    // 0x33c568: drains the queue into the EventManager (dword_99F740). The original leaves
    // the last call's register as its result and no caller reads it, so this is void.
    void ProcessEvents();
    bool _IsQueueEmpty() const;
    void _PopFromQueue();
    const QueuedEvent* _GetNextEventInQueue() const;

protected:
    void _AddToQueue(TouchEventType type, const Point2D<float>& p, long slot);

    std::array<Slot, 8> slots_{};     // +0x004 .. +0x184
    double time_now_ = 0;             // +0x188
    int active_ = 0;                  // +0x190 one past the highest touched slot
    std::vector<QueuedEvent> queue_ = std::vector<QueuedEvent>(16);  // +0x194 (std::vector, 16 events from the constructor)
    int queueHead_ = 0;               // +0x1a0
    int queueTail_ = 0;               // +0x1a4
    int orientation_ = 0;             // +0x1a8 2 or 3 mirrors X
    short width_ = 0;                 // +0x1ac
    short height_ = 0;                // +0x1ae
    float scale_ = 1.0f;              // +0x1b0
};
