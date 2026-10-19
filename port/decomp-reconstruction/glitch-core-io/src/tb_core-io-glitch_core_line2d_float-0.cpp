#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

// 0x525310 _ZNK6glitch4core6line2dIfE13intersectWithERKS2_RNS0_8vector2dIfEE
// Segment intersection. this = segment A (start, end), other = segment B.
// Hex-Rays a1 is this, a2 is other, a3 is out. Member offsets: start.X +0x00, start.Y +0x04,
// end.X +0x08, end.Y +0x0c. Parallel or near-parallel segments (|det| below 1e-6) give 0.
// The original stores parameters as floats and compares them with double literals; that is kept.
template <>
int line2d<float>::intersectWith(const line2d<float>& other, vector2d<float>& out) const {
    const float dx = end.X - start.X;                    // v4: direction of A, X
    const float dy = end.Y - start.Y;                    // v15: direction of A, Y
    const float ox = other.start.X;                      // v5
    const float oy = other.start.Y;                      // v6
    const float ex = other.start.X - other.end.X;        // v7: -(direction of B, X)
    const float ey = other.start.Y - other.end.Y;        // v8: -(direction of B, Y)
    const float det = (dx * ey) - (dy * ex);             // v9: cross product of the directions
    if (det > -0.000001 && det < 0.000001) return 0;
    const float inv = static_cast<float>(1.0 / det);     // v10
    const float wx = ox - start.X;                       // v11: from start of A to start of B, X
    const float wy = oy - start.Y;                       // v12: same, Y
    const float t = ((ey * wx) - (ex * wy)) * inv;       // v16: parameter along A
    if (t < 0.0) return 0;
    if (t > 1.0) return 0;
    const float u = ((dx * wy) - (dy * wx)) * inv;       // v13: parameter along B
    if (u < 0.0 || u > 1.0) return 0;
    out.X = ox - (u * ex);                               // *a3 = v5 - v13 * v7
    out.Y = oy - (u * ey);                               // a3[1] = v6 - v13 * v8
    return 1;
}

}  // namespace glitch::core
