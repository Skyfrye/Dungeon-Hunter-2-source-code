#include "core-platform/touch_screen_iphone.hpp"

#include <string>

#include "core-platform/deps/debug_switches.hpp"

// 0x33cd34 / 0x33cdcc TouchScreenIPhone::TouchScreenIPhone(float, float, float, float, float)
// The base receives (width, height) as shorts. Left and top are truncated from the
// float arguments; right and bottom take the width and height.
TouchScreenIPhone::TouchScreenIPhone(float left, float top, float width, float height, float scale)
    : TouchScreenBase(static_cast<short>(static_cast<int>(width)), static_cast<short>(static_cast<int>(height))),
      left_(static_cast<short>(static_cast<int>(left))),
      right_(static_cast<short>(static_cast<int>(width))),
      top_(static_cast<short>(static_cast<int>(top))),
      bottom_(static_cast<short>(static_cast<int>(height))) {
    scale_ = scale;
}

// 0x33cc58 TouchScreenIPhone::getLeftBound() const
int TouchScreenIPhone::getLeftBound() const { return left_; }

// 0x33cc64 TouchScreenIPhone::getRightBound() const
int TouchScreenIPhone::getRightBound() const { return right_; }

// 0x33cc70 TouchScreenIPhone::getTopBound() const
int TouchScreenIPhone::getTopBound() const { return top_; }

// 0x33cc7c TouchScreenIPhone::getBottomBound() const
int TouchScreenIPhone::getBottomBound() const { return bottom_; }

// 0x33cca8 TouchScreenIPhone::getTouchIDInRegion(glitch::core::rect<float> const&) const
// A thunk: the listing tail-calls TouchScreenBase::getTouchIDInRegion (0x33b0e8). The
// iPhone class uses the base's slot records, so the base body serves it unchanged.
int TouchScreenIPhone::getTouchIDInRegion(const glitch::core::rect<float>& r) const {
    return TouchScreenBase::getTouchIDInRegion(r);
}

namespace {
// The inlined DebugSwitches::GetInstance() sequence every touch handler runs after getID: load(), then
// GetSwitch("isTracingKeyInputs") with the result discarded (a missing key is inserted as false).
void ReadTraceKeyInputs() {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch(std::string("isTracingKeyInputs"));
}

// Converts a float position to the base's short point, as the original's
// truncating conversions do.
Point2D<short> ToPoint(float x, float y) {
    return Point2D<short>{static_cast<short>(static_cast<int>(x)), static_cast<short>(static_cast<int>(y))};
}
}  // namespace

// 0x33d054 TouchScreenIPhone::touchBegan(float, float, double, int, float, float, long)
// The last argument is the touch identifier: getID maps it to a slot, and the slot is
// passed to TouchScreenBase::touchBegan. Between the two the handler reads the isTracingKeyInputs debug switch (0x33d0ac).
void TouchScreenIPhone::touchBegan(float x, float y, double, int, float, float, long touchId) {
    const int slot = getID(touchId);
    ReadTraceKeyInputs();
    TouchScreenBase::touchBegan(ToPoint(x, y), slot);
}

// 0x33d124 TouchScreenIPhone::touchMoved(float, float, double, int, float, float, long)
// Same shape as touchBegan.
void TouchScreenIPhone::touchMoved(float x, float y, double, int, float, float, long touchId) {
    const int slot = getID(touchId);
    ReadTraceKeyInputs();
    TouchScreenBase::touchMoved(ToPoint(x, y), slot);
}

// 0x33ceb4 TouchScreenIPhone::touchEnded(float, float, double, int, float, float, long)
// Same shape as touchBegan.
void TouchScreenIPhone::touchEnded(float x, float y, double, int, float, float, long touchId) {
    const int slot = getID(touchId);
    ReadTraceKeyInputs();
    TouchScreenBase::touchEnded(ToPoint(x, y), slot);
}

// 0x33cf84 TouchScreenIPhone::touchCancelled(float, float, double, int, float, float, long)
// Same shape as touchBegan.
void TouchScreenIPhone::touchCancelled(float x, float y, double, int, float, float, long touchId) {
    const int slot = getID(touchId);
    ReadTraceKeyInputs();
    TouchScreenBase::touchCancelled(ToPoint(x, y), slot);
}
