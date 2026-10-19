// TouchScreenPS3: a pad-driven touch source. Bounds are fixed at zero, and mouse-style
// events (the pad's pointer) drive begin, move and end.
#pragma once

#include "core-platform/touch_screen_base.hpp"
#include "glitch-core-io/os/event_receiver.hpp"  // glitch::IEventReceiver, glitch::SEvent (canonical)

// Two bases in the original's order: TouchScreenBase at +0 and the glitch::IEventReceiver
// interface at +0x1b4 (its vtable is the secondary table at off_95C4F0).
class TouchScreenPS3 : public TouchScreenBase, public glitch::IEventReceiver {
public:
    TouchScreenPS3();

    int getLeftBound() const override;    // 0x33d1f4
    int getRightBound() const override;   // 0x33d1fc
    int getTopBound() const override;     // 0x33d204
    int getBottomBound() const override;  // 0x33d20c

    // Maps a pointer event onto touch began/moved/ended. Returns true when consumed.
    bool onEvent(const glitch::SEvent& event) override;  // 0x33d21c
};
