// TouchScreenIPhone: the iOS touch source. Its bounds are stored in the object
// as four shorts at +0x1b4 (left), +0x1b6 (right), +0x1b8 (top), +0x1ba (bottom).
#pragma once

#include "glitch-shared/glitch_core.hpp"
#include "core-platform/touch_screen_base.hpp"

class TouchScreenIPhone : public TouchScreenBase {
public:
    // The constructor takes left, top, width and height (stored as right and
    // bottom) and the scale factor, which goes to the base's scale_ at +0x1b0.
    TouchScreenIPhone(float left, float top, float width, float height, float scale);

    int getLeftBound() const override;    // 0x33cc58
    int getRightBound() const override;   // 0x33cc64
    int getTopBound() const override;     // 0x33cc70
    int getBottomBound() const override;  // 0x33cc7c

    // Returns the index of the first active, touched slot whose point lies in r, or -1.
    int getTouchIDInRegion(const glitch::core::rect<float>& r) const override;  // 0x33cca8
    int isRegionPressed(const glitch::core::rect<float>& r) const override;     // 0x33ccac (vtable +0x30, a thunk to the base)

    // UIKit entry points. The last argument is the touch identifier; getID maps it to
    // the slot that is forwarded to the TouchScreenBase handler.
    void touchBegan(float x, float y, double time, int, float radiusX, float radiusY, long touchId);      // 0x33d054
    void touchMoved(float x, float y, double time, int, float radiusX, float radiusY, long touchId);      // 0x33d124
    void touchEnded(float x, float y, double time, int, float radiusX, float radiusY, long touchId);      // 0x33ceb4
    void touchCancelled(float x, float y, double time, int, float radiusX, float radiusY, long touchId);  // 0x33cf84

private:
    short left_ = 0;    // +0x1b4
    short right_ = 0;   // +0x1b6
    short top_ = 0;     // +0x1b8
    short bottom_ = 0;  // +0x1ba
};
