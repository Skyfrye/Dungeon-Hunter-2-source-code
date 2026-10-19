#include "core-platform/touch_screen_win32.hpp"

// 0x33d68c / 0x33d6d0 TouchScreenWin32::TouchScreenWin32(short, short)
TouchScreenWin32::TouchScreenWin32(short width, short height) : TouchScreenBase(width, height) {}

// 0x33d48c TouchScreenWin32::getLeftBound() const
int TouchScreenWin32::getLeftBound() const { return 0; }

// 0x33d494 TouchScreenWin32::getRightBound() const
int TouchScreenWin32::getRightBound() const { return 0; }

// 0x33d49c TouchScreenWin32::getTopBound() const
int TouchScreenWin32::getTopBound() const { return 0; }

// 0x33d4a4 TouchScreenWin32::getBottomBound() const
int TouchScreenWin32::getBottomBound() const { return 0; }

// 0x33d4b4 _ZN16TouchScreenWin327onEventERKN6glitch6SEventE
// Mouse event code 0 (left down) begins a touch, 6 (move) continues it only
// while the button is held, and 3 (left up) ends it. Point is (MouseInput.X, MouseInput.Y).
// The listing dispatches through vtable slots +32 (begin), +36 (move) and +40 (end).
// The begin call shows only two arguments in Hex-Rays; the disassembly (0x33d4b4) shows
// the slot argument is r2, which still holds the event's mouse code, 0, at that point,
// so all three calls pass slot 0.
bool TouchScreenWin32::onEvent(const glitch::SEvent& event) {
    static bool isDown = false;  // _ZZ...onEvent...isDown in the original
    if (event.EventType != glitch::EET_MOUSE_INPUT_EVENT) {
        return false;
    }
    const Point2D<short> p{static_cast<short>(event.MouseInput.X), static_cast<short>(event.MouseInput.Y)};
    switch (event.MouseInput.Event) {
        case 3:
            isDown = false;
            touchEnded(p, 0);
            return true;
        case 6:
            if (isDown) {
                touchMoved(p, 0);
                return true;
            }
            return false;
        case 0:
            isDown = true;
            touchBegan(p, 0);
            return true;
        default:
            return false;
    }
}
