// Small inline helpers of the GUI classes: the rectangle operations of Irrlicht's rect<> that glitch's core::rect (glitch_core.hpp) does not
// declare. Each is an inline of the original's header, expanded in the listings, so there is no separate function in the binary.
#pragma once

#include <algorithm>

#include "glitch-shared/glitch_core.hpp"

namespace glitch::gui::detail {

// rect<int>::isPointInside: both edges are inclusive.
inline bool rectContains(const core::rect<int>& rect, int x, int y) {
    return x >= rect.UpperLeftCorner.X && y >= rect.UpperLeftCorner.Y && x <= rect.LowerRightCorner.X && y <= rect.LowerRightCorner.Y;
}

inline bool rectContains(const core::rect<int>& rect, const core::position2d<int>& point) {
    return rectContains(rect, point.X, point.Y);
}

inline int rectWidth(const core::rect<int>& rect) {
    return rect.LowerRightCorner.X - rect.UpperLeftCorner.X;
}

inline int rectHeight(const core::rect<int>& rect) {
    return rect.LowerRightCorner.Y - rect.UpperLeftCorner.Y;
}

// rect<int>::clipAgainst: the intersection with `other`, repaired so the upper-left corner never passes the lower-right one; true when the
// result is valid (non-inverted).
inline bool rectClipAgainst(core::rect<int>& rect, const core::rect<int>& other) {
    if (other.LowerRightCorner.X < rect.LowerRightCorner.X) {
        rect.LowerRightCorner.X = other.LowerRightCorner.X;
    }
    if (other.LowerRightCorner.Y < rect.LowerRightCorner.Y) {
        rect.LowerRightCorner.Y = other.LowerRightCorner.Y;
    }
    if (other.UpperLeftCorner.X > rect.UpperLeftCorner.X) {
        rect.UpperLeftCorner.X = other.UpperLeftCorner.X;
    }
    if (other.UpperLeftCorner.Y > rect.UpperLeftCorner.Y) {
        rect.UpperLeftCorner.Y = other.UpperLeftCorner.Y;
    }
    if (rect.UpperLeftCorner.Y > rect.LowerRightCorner.Y) {
        rect.UpperLeftCorner.Y = rect.LowerRightCorner.Y;
    }
    if (rect.UpperLeftCorner.X > rect.LowerRightCorner.X) {
        rect.UpperLeftCorner.X = rect.LowerRightCorner.X;
    }
    return rect.UpperLeftCorner.X <= rect.LowerRightCorner.X && rect.UpperLeftCorner.Y <= rect.LowerRightCorner.Y;
}

inline core::rect<int> makeRect(int left, int top, int right, int bottom) {
    core::rect<int> rect;
    rect.UpperLeftCorner.X = left;
    rect.UpperLeftCorner.Y = top;
    rect.LowerRightCorner.X = right;
    rect.LowerRightCorner.Y = bottom;
    return rect;
}

// IGUIElement::isMyChild (an inline of the original's header): whether `self` is a proper ancestor of `child`. An element without a parent is
// compared with `self` itself.
template <typename Element>
bool isMyChild(const Element* self, const Element* child) {
    if (child == nullptr) {
        return false;
    }
    const Element* current = child;
    while (current->parent != nullptr) {
        current = current->parent;
        if (current == self) {
            return true;
        }
    }
    return current == self;
}

// A mouse position in a GUI event is passed around as two ints.
inline core::position2d<int> makePoint(int x, int y) {
    core::position2d<int> point;
    point.X = x;
    point.Y = y;
    return point;
}

}  // namespace glitch::gui::detail
