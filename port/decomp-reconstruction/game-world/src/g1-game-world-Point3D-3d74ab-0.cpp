// Batch g1-game-world-Point3D-3d74ab-0 (part 1 of 1): the Point3D<float> members of the batch.
// Declarations and the out-of-line specialisation declarations come from dh2/Point3D.hpp. Bodies are in address order.
//
// Each float expression keeps the parenthesisation of the Hex-Rays pseudocode and the operation order of the
// soft-float ARM code, so the results match step for step. Every body is reconstructed; the notes on each function
// say where the original's return value or stores differ from what the pseudocode's signature suggests.

#include <cmath>

#include "dh2/Point3D.hpp"
#include "glitch-shared/glitch_core.hpp"  // glitch::core::CMatrix4<float>, multiplyWith1x4Matrix (0x312bf8)

// 0x312b6c Point3D<float>::operator==(Point3D<float> const&) const
// Each component within 0.0001 (the float 0x38d1b717). X, then Y, then Z; the first compare that fails returns false.
// A NaN difference fails its compare, as the original's __aeabi_fcmplt does.
template <>
bool Point3D<float>::operator==(const Point3D<float>& other) const {
    constexpr float kEpsilon = 0.0001f;  // 0x38d1b717
    return std::fabs(X - other.X) < kEpsilon &&
           std::fabs(Y - other.Y) < kEpsilon &&
           std::fabs(Z - other.Z) < kEpsilon;
}

// 0x312da8 Point3D<float>::transform(glitch::core::CMatrix4<float> const&)
// The row (X, Y, Z, 1) is multiplied by the matrix in place (multiplyWith1x4Matrix, 0x312bf8). The original keeps the
// row in a four-float stack array and, after the call, writes back the array's first three entries. The Z entry is
// the product's Z, not the original Z: the pseudocode's a1[2] = v10 reads the array after the call. So X, Y and Z all
// take the product. The return value is the call's, the W component of the product.
template <>
float Point3D<float>::transform(const glitch::core::CMatrix4<float>& matrix) {
    float row[4] = {X, Y, Z, 1.0f};
    const float w = matrix.multiplyWith1x4Matrix(row);
    X = row[0];
    Y = row[1];
    Z = row[2];
    return w;
}

// 0x312f40 Point3D<float>::angleCos(Point3D<float> const&) const
// (this . other) / (|this| * |other|). The dot product is ((X*oX) + (Y*oY)) + (Z*oZ). Each length is sqrtf of the sum of
// the squares in the same order. |this| is taken first, then |other|, and the quotient is formed with no clamp to
// [-1, 1]: a zero vector gives NaN, as in the original.
template <>
float Point3D<float>::angleCos(const Point3D<float>& other) const {
    const float dot = ((X * other.X) + (Y * other.Y)) + (Z * other.Z);
    const float lengthThis = std::sqrt(((X * X) + (Y * Y)) + (Z * Z));
    const float lengthOther = std::sqrt(((other.X * other.X) + (other.Y * other.Y)) + (other.Z * other.Z));
    return dot / (lengthThis * lengthOther);
}

// 0x313058 Point3D<float>::angle(Point3D<float> const&) const
// acos(angleCos(other)). The original is a call to angleCos followed by a tail call to acosf, with no clamp, so a
// cosine outside [-1, 1] gives NaN there too.
template <>
float Point3D<float>::angle(const Point3D<float>& other) const {
    return std::acos(angleCos(other));
}

// 0x34d04c Point3D<float>::operator/=(float const&)
// Each component is divided by the divisor. The original reads *divisor again for each component, after the previous
// component was stored, so a divisor that aliases a component sees the stored quotient. The same reads are made here.
template <>
Point3D<float>& Point3D<float>::operator/=(const float& divisor) {
    X = X / divisor;
    Y = Y / divisor;
    Z = Z / divisor;
    return *this;
}

// 0x34d0b0 Point3D<float>::normalize(void)
// The length is sqrtf(((X*X) + (Y*Y)) + (Z*Z)). The vector is then divided by it through operator/= (0x34d04c), with
// the length in a local, as the original passes &v3. A zero vector gives NaN, as in the original. The original's r0 on
// return is the object (the value of the tail call to operator/=), so the declaration returns Point3D& and this
// returns *this. The game-ui caller ignores the value.
template <>
Point3D<float>& Point3D<float>::normalize() {
    float length = std::sqrt(((X * X) + (Y * Y)) + (Z * Z));
    return operator/=(length);
}

// 0x3a4118 Point3D<float>::distance(Point3D<float> const&) const
// The three differences are formed first, then sqrtf(((dx*dx) + (dy*dy)) + (dz*dz)).
template <>
float Point3D<float>::distance(const Point3D<float>& other) const {
    const float dx = X - other.X;
    const float dy = Y - other.Y;
    const float dz = Z - other.Z;
    return std::sqrt(((dx * dx) + (dy * dy)) + (dz * dz));
}

// 0x3e5740 Point3D<float>::rotateXY(float)
// Rotates (X, Y) by radians about the Z axis: cosf and sinf of the angle, then X' = X*cos - Y*sin and
// Y' = X*sin + Y*cos. Z is untouched. Returns the object.
template <>
Point3D<float>& Point3D<float>::rotateXY(float radians) {
    const float c = std::cos(radians);
    const float s = std::sin(radians);
    const float x = X;
    const float y = Y;
    X = (x * c) - (y * s);
    Y = (x * s) + (y * c);
    return *this;
}

// 0x418c48 Point3D<float>::rotateXYBy(float, Point3D<float> const&)
// Rotates (X, Y) about the pivot by degrees, converted with the float 0x3c8efa35 (the nearest float to pi/180). The
// original works in place, in this order: X = X - pivot.X, Y = Y - pivot.Y, the rotation of that difference, X = the
// rotated X, Y = the rotated Y, X = rotated X + pivot.X, Y = rotated Y + pivot.Y. Each pivot component is read after the
// store that precedes it, so a pivot that aliases this object sees what the original sees. Z is untouched. Returns the
// new Y, which the original leaves in r0.
template <>
float Point3D<float>::rotateXYBy(float degrees, const Point3D<float>& pivot) {
    constexpr float kDegreesToRadians = 0.017453292519943295f;  // float 0x3c8efa35
    const float radians = degrees * kDegreesToRadians;
    const float c = std::cos(radians);
    const float s = std::sin(radians);
    X = X - pivot.X;
    const float dx = X;
    Y = Y - pivot.Y;
    const float dy = Y;
    const float rx = (dx * c) - (dy * s);
    const float ry = (dx * s) + (dy * c);
    X = rx;
    Y = ry;
    X = rx + pivot.X;
    const float result = ry + pivot.Y;
    Y = result;
    return result;
}
