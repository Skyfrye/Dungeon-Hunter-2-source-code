// Batch e1-glitch-core-io-glitch_core_vector3d_float-0 (glitch::core::vector3d<float>, 6 functions).
//
// vector3d is a template declared in shared/include/glitch-shared/glitch_core.hpp. The float members
// below are declared there (explicit specialization declarations after the struct) and defined here,
// so every translation unit that uses them links against this file.
// normalize (0x35e8e0) is already inline in the shared header and is not repeated here.

#include "glitch-core-io/deps/glitch_core.hpp"

#include <cmath>

namespace glitch::core {

// 0x59a294 _ZNK6glitch4core8vector3dIfEdvERKS2_
// Hex-Rays: result = { a2.X / a3.X, a2.Y / a3.Y, a2.Z / a3.Z } (the return slot is the first argument).
// +0x00 X, +0x04 Y, +0x08 Z.
template <>
vector3d<float> vector3d<float>::operator/(const vector3d<float>& other) const {
    return vector3d<float>{X / other.X, Y / other.Y, Z / other.Z};
}

// 0x5a24b4 _ZN6glitch4core8vector3dIfEdVERKS2_
// Hex-Rays: each component divided in place by the matching component of a2; returns this.
template <>
vector3d<float>& vector3d<float>::operator/=(const vector3d<float>& other) {
    X = X / other.X;  // +0x00
    Y = Y / other.Y;  // +0x04
    Z = Z / other.Z;  // +0x08
    return *this;
}

// 0x630bfc _ZN6glitch4core8vector3dIfE10rotateXYByEdRKS2_
// Rotates (X, Y) about the Z axis through center by degrees:
//   x = X - c.X, y = Y - c.Y
//   X = cos*x - sin*y + c.X,  Y = sin*x + cos*y + c.Y
// cos and sin are taken of the double angle and stored as float, as the listing does.
// The listing returns the new Y in r0; the Irrlicht-style void signature is kept here.
template <>
void vector3d<float>::rotateXYBy(double degrees, const vector3d<float>& center) {
    const double radians = degrees * 0.017453292519943295;
    const float c = static_cast<float>(std::cos(degrees * 0.017453292519943295));
    const float s = static_cast<float>(std::sin(radians));
    const float x = X - center.X;  // +0x00
    const float y = Y - center.Y;  // +0x04
    const float nx = (c * x) - (s * y);
    const float ny = (s * x) + (c * y);
    X = nx + center.X;
    Y = ny + center.Y;
}

// 0x630cf8 _ZN6glitch4core8vector3dIfE10rotateYZByEdRKS2_
// Rotates (Y, Z) about the X axis through center by degrees:
//   y = Y - c.Y, z = Z - c.Z
//   Y = cos*y - sin*z + c.Y,  Z = sin*y + cos*z + c.Z
// (Hex-Rays: new Y = cos*y - sin*z, new Z = sin*y + cos*z.) Returns void; see rotateXYBy.
template <>
void vector3d<float>::rotateYZBy(double degrees, const vector3d<float>& center) {
    const double radians = degrees * 0.017453292519943295;
    const float c = static_cast<float>(std::cos(degrees * 0.017453292519943295));
    const float s = static_cast<float>(std::sin(radians));
    const float y = Y - center.Y;  // +0x04
    const float z = Z - center.Z;  // +0x08
    const float ny = (c * y) - (s * z);
    const float nz = (s * y) + (c * z);
    Y = ny + center.Y;
    Z = nz + center.Z;
}

// 0x630de8 _ZN6glitch4core8vector3dIfE10rotateXZByEdRKS2_
// Rotates (X, Z) about the Y axis through center by degrees:
//   x = X - c.X, z = Z - c.Z
//   X = cos*x - sin*z + c.X,  Z = sin*x + cos*z + c.Z
// Returns void; see rotateXYBy.
template <>
void vector3d<float>::rotateXZBy(double degrees, const vector3d<float>& center) {
    const double radians = degrees * 0.017453292519943295;
    const float c = static_cast<float>(std::cos(degrees * 0.017453292519943295));
    const float s = static_cast<float>(std::sin(radians));
    const float x = X - center.X;  // +0x00
    const float z = Z - center.Z;  // +0x08
    const float nx = (c * x) - (s * z);
    const float nz = (s * x) + (c * z);
    X = nx + center.X;
    Z = nz + center.Z;
}

// 0x6c7b6c _ZNK6glitch4core8vector3dIfE18getHorizontalAngleEv
// Returns the angle of this vector in degrees, wrapped into [0, 360):
//   result.Y (yaw)   = atan2f(X, Z) * 180/pi, plus 360 if negative, minus 360 if >= 360.
//   result.X (pitch) = atan2(sqrt(X*X + Z*Z), Y) * 180/pi - 90, wrapped the same way.
//   result.Z = 0. The listing zeroes all three components first.
template <>
vector3d<float> vector3d<float>::getHorizontalAngle() const {
    vector3d<float> out{0.f, 0.f, 0.f};

    const float yaw = static_cast<float>(std::atan2(X, Z) * 57.29577951308232);
    out.Y = yaw;
    float yawWrapped = yaw;
    if (yaw < 0.f) {
        yawWrapped = yaw + 360.f;
        out.Y = yaw + 360.f;
    }
    if (yawWrapped >= 360.f) out.Y = yawWrapped - 360.f;

    const double horizontal = std::sqrt((X * X) + (Z * Z));
    const float pitch = static_cast<float>(std::atan2(horizontal, static_cast<double>(Y)) * 57.29577951308232 - 90.0);
    out.X = pitch;
    float pitchWrapped = pitch;
    if (pitch < 0.f) {
        pitchWrapped = pitch + 360.f;
        out.X = pitch + 360.f;
    }
    if (pitchWrapped >= 360.f) out.X = pitchWrapped - 360.f;

    return out;
}

}  // namespace glitch::core
