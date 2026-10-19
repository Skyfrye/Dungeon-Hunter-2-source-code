// Batch e1-glitch-core-io-glitch_core_triangle3d_float-0: triangle3d<float> box and line tests.
// isTotalInsideBox (0x5857ac) is defined here; its declaration is in
// shared/include/glitch-shared/glitch_core.hpp (triangle3d). The other four functions of the batch
// (isOnSameSide 0x585bb8, isPointInside 0x585de8, getIntersectionOfPlaneWithLine 0x585e80,
// getIntersectionWithLine 0x58615c) are defined inline in that header and were checked against the
// Hex-Rays listings; they are not repeated here.
#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

// 0x5857ac _ZNK6glitch4core10triangle3dIfE16isTotalInsideBoxERKNS0_8aabbox3dIfEE
// Listing operands: a1 = this (A at +0x00, B at +0x0c, C at +0x18 as floats), a2 = box
// (MinEdge at +0x00, MaxEdge at +0x0c). Every corner must lie inside the box on each axis; each
// comparison below is the listing's early-return test, in the same order.
template <typename T>
bool triangle3d<T>::isTotalInsideBox(const aabbox3d<T>& box) const {
    const T minX = box.MinEdge.X, maxX = box.MaxEdge.X;
    const T minY = box.MinEdge.Y, maxY = box.MaxEdge.Y;
    const T minZ = box.MinEdge.Z, maxZ = box.MaxEdge.Z;

    // Corner A (+0x00, +0x04, +0x08).
    if (A.X < minX) return false;
    if (A.X > maxX) return false;
    if (A.Y < minY) return false;
    if (A.Y > maxY) return false;
    if (A.Z < minZ) return false;
    if (A.Z > maxZ) return false;

    // Corner B (+0x0c, +0x10, +0x14).
    if (minX > B.X) return false;
    if (maxX < B.X) return false;
    if (minY > B.Y) return false;
    if (maxY < B.Y) return false;
    if (minZ > B.Z) return false;
    if (maxZ < B.Z) return false;

    // Corner C (+0x18, +0x1c, +0x20). The listing's last test is a single inclusive Z range check.
    if (minX > C.X) return false;
    if (maxX < C.X) return false;
    if (minY > C.Y) return false;
    if (maxY < C.Y) return false;
    return minZ <= C.Z && maxZ >= C.Z;
}

// Explicit instantiation for float: the symbol above is the one the listing and the rest of the
// engine link against.
template bool triangle3d<float>::isTotalInsideBox(const aabbox3d<float>& box) const;

}  // namespace glitch::core
