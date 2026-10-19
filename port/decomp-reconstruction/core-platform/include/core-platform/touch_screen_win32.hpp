// TouchScreenWin32: mouse-driven touch input. The Win32 touch screen reports no
// bounds, so the four bound getters return zero.
#pragma once

#include "core-platform/touch_screen_base.hpp"
#include "glitch-core-io/os/event_receiver.hpp"  // glitch::IEventReceiver, glitch::SEvent (canonical)

// Two bases in the original's order: TouchScreenBase at +0 and the glitch::IEventReceiver
// interface at +0x1b4 (the secondary vtable thunks to ~TouchScreenWin32 and onEvent).
class TouchScreenWin32 : public TouchScreenBase, public glitch::IEventReceiver {
public:
    TouchScreenWin32(short width, short height);

    int getLeftBound() const override;    // 0x33d48c
    int getRightBound() const override;   // 0x33d494
    int getTopBound() const override;     // 0x33d49c
    int getBottomBound() const override;  // 0x33d4a4

    // Maps mouse events onto touch begin/move/end. Returns true when consumed.
    bool onEvent(const glitch::SEvent& event) override;  // 0x33d4b4
};
