// Game-side value types referenced by the text helpers (owned by other categories).
// Point2D<T> and Point3D<T> are defined once, in the game headers (dh2/Point2D.hpp and dh2/Point3D.hpp); this header
// only includes them so the existing core-platform includes keep working. Rct has no game header yet and stays here.
#pragma once

#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"

// Rct<short>: the original object starts with a vtable pointer (+0x0) that is
// omitted here; the four shorts sit at +0x4..+0xa as in the original.
template <typename T>
struct Rct {
    T X1, Y1, X2, Y2;
};
