// glitch::core::dual_quaternion: a rotation (real part) and a translation (dual part) packed as
// two quaternions. Layout of the original, 32-bit offsets kept as comments:
//   +0x00..+0x0c  real part (X, Y, Z, W)
//   +0x10..+0x1c  dual part (X, Y, Z, W)
#pragma once

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

class dual_quaternion {
public:
    dual_quaternion() = default;

    // 0x66ce48 fromQuatAndTrans: real part = q, dual part = -0.5 * q * t (the translation t applied
    // through the quaternion, as the listing computes it). Returns *this.
    dual_quaternion& fromQuatAndTrans(const quaternion& q, const vector3d<float>& t);

    // 0x66d85c operator=(const CMatrix4<float>&): the rotation part becomes the quaternion (quaternion::operator=(CMatrix4)) and the
    // translation M[12..14] goes through fromQuatAndTrans. Returns *this.
    dual_quaternion& operator=(const CMatrix4<float>& m);

    quaternion real{};  // +0x00
    quaternion dual{};  // +0x10
};

}  // namespace glitch::core
