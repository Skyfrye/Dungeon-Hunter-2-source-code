// Batch e1-glitch-core-io-glitch_core_plane3d_float-0: plane3d<float> intersection routines.
// getIntersectionWithLine (0x34033c) is defined inline in shared/include/glitch-shared/glitch_core.hpp
// and is not repeated here; it was checked against the Hex-Rays listing.
#include "glitch-core-io/deps/glitch_core.hpp"

#include <cmath>

namespace glitch::core {

// 0x341260 _ZNK6glitch4core7plane3dIfE24getIntersectionWithPlaneERKS2_RNS0_8vector3dIfEES7_
// Operand order in the listing: a1 = this, a2 = other, a3 = linePoint, a4 = lineVect.
template <typename T>
bool plane3d<T>::getIntersectionWithPlane(const plane3d<T>& other, vector3d<T>& linePoint,
                                          vector3d<T>& lineVect) const {
    // |N1| (v27), |N2| (v12) and N2 . N1 (v10), all in T as the listing computes them.
    const T len1 = static_cast<T>(std::sqrt(((Normal.X * Normal.X) + (Normal.Y * Normal.Y)) + (Normal.Z * Normal.Z)));
    const T len2 = static_cast<T>(
        std::sqrt(((other.Normal.X * other.Normal.X) + (other.Normal.Y * other.Normal.Y)) +
                  (other.Normal.Z * other.Normal.Z)));
    const T dot = ((other.Normal.X * Normal.X) + (other.Normal.Y * Normal.Y)) + (other.Normal.Z * Normal.Z);

    // det = |N1| |N2| - dot^2. The listing keeps the signed value, then tests its magnitude
    // (sign bit cleared) against 1e-8 as a double.
    const double det = static_cast<double>(static_cast<T>((len1 * len2) - (dot * dot)));
    if (std::fabs(det) < 0.00000001) return false;
    const double inv = 1.0 / det;

    // c1 = (-D1 |N2| + D2 dot) / det ; c2 = (-D2 |N1| + D1 dot) / det. Each sum is in T, then
    // multiplied by the double reciprocal and rounded back to T, as the listing does.
    const T c1 = static_cast<T>(
        static_cast<double>(static_cast<T>(static_cast<T>(-D) * len2) + static_cast<T>(other.D * dot)) * inv);
    const T c2 = static_cast<T>(
        static_cast<double>(static_cast<T>(static_cast<T>(-other.D) * len1) + static_cast<T>(D * dot)) * inv);

    // lineVect = N2 x N1 in the listing order:
    //   x = N1.z N2.y - N1.y N2.z, y = N2.z N1.x - N2.x N1.z, z = N1.y N2.x - N2.y N1.x.
    lineVect.X = (Normal.Z * other.Normal.Y) - (Normal.Y * other.Normal.Z);
    lineVect.Y = (other.Normal.Z * Normal.X) - (other.Normal.X * Normal.Z);
    lineVect.Z = (Normal.Y * other.Normal.X) - (other.Normal.Y * Normal.X);

    // linePoint = c1 N1 + c2 N2.
    linePoint.X = (c1 * Normal.X) + (c2 * other.Normal.X);
    linePoint.Y = (c1 * Normal.Y) + (c2 * other.Normal.Y);
    linePoint.Z = (c1 * Normal.Z) + (c2 * other.Normal.Z);
    return true;
}

// 0x3415d8 _ZNK6glitch4core7plane3dIfE25getIntersectionWithPlanesERKS2_S4_RNS0_8vector3dIfEE
// The listing zeroes two local vectors (12 bytes each), takes the line of this and p2, then
// intersects that line with p3. Returns the result of the second call, or 0 when the first fails.
template <typename T>
bool plane3d<T>::getIntersectionWithPlanes(const plane3d<T>& p2, const plane3d<T>& p3, vector3d<T>& out) const {
    vector3d<T> linePoint{};
    vector3d<T> lineVect{};
    if (!getIntersectionWithPlane(p2, linePoint, lineVect)) return false;
    return p3.getIntersectionWithLine(linePoint, lineVect, out);
}

template bool plane3d<float>::getIntersectionWithPlane(const plane3d<float>&, vector3d<float>&,
                                                       vector3d<float>&) const;
// 0x40f0b4 getIntersectionWithLimitedLine (defined in the class, glitch_core.hpp): emitted here for float.
template bool plane3d<float>::getIntersectionWithLimitedLine(const vector3d<float>&, const vector3d<float>&,
                                                             vector3d<float>&) const;
template bool plane3d<float>::getIntersectionWithPlanes(const plane3d<float>&, const plane3d<float>&,
                                                        vector3d<float>&) const;

}  // namespace glitch::core
