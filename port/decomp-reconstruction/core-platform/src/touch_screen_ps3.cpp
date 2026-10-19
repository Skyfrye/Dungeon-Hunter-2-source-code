#include "core-platform/touch_screen_ps3.hpp"

// 0x33d3f4 _ZN14TouchScreenPS3C1Ev (and 0x33d440 _ZN14TouchScreenPS3C2Ev, same body)
// The listing calls the TouchScreenBase(short, short) constructor with (0, 0), zeroes
// the active count at +0x190 (the base constructor zeroes it here as well), and stores
// the primary vptr (off_95C490) and the glitch::IEventReceiver vptr at +0x1b4 (off_95C4F0).
// The compiler sets both vptrs from the base list.
TouchScreenPS3::TouchScreenPS3() : TouchScreenBase(0, 0) {}

// 0x33d1f4 TouchScreenPS3::getLeftBound() const
int TouchScreenPS3::getLeftBound() const { return 0; }

// 0x33d1fc TouchScreenPS3::getRightBound() const
int TouchScreenPS3::getRightBound() const { return 0; }

// 0x33d204 TouchScreenPS3::getTopBound() const
int TouchScreenPS3::getTopBound() const { return 0; }

// 0x33d20c TouchScreenPS3::getBottomBound() const
int TouchScreenPS3::getBottomBound() const { return 0; }

// 0x33d21c TouchScreenPS3::onEvent(glitch::SEvent const&)
// Type 1 events only. Event code 0 begins a touch, 6 moves it while the pad
// button is held, and 3 ends it. The point is (MouseInput.X, MouseInput.Y) as shorts. The
// held state is a function-local static, as in the original.
bool TouchScreenPS3::onEvent(const glitch::SEvent& event) {
    static bool isDown = false;
    if (event.EventType != glitch::EET_MOUSE_INPUT_EVENT) {
        return false;
    }
    switch (event.MouseInput.Event) {
        case 3: {
            isDown = false;
            touchEnded(Point2D<short>{static_cast<short>(event.MouseInput.X), static_cast<short>(event.MouseInput.Y)}, 0);
            return true;
        }
        case 6: {
            if (isDown) {
                touchMoved(Point2D<short>{static_cast<short>(event.MouseInput.X), static_cast<short>(event.MouseInput.Y)}, 0);
                return true;
            }
            return false;
        }
        case 0: {
            isDown = true;
            touchBegan(Point2D<short>{static_cast<short>(event.MouseInput.X), static_cast<short>(event.MouseInput.Y)}, 0);
            return true;
        }
        default:
            return false;
    }
}
