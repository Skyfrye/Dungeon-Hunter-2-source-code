#include "glitch-core-io/core/dual_quaternion.hpp"

namespace glitch::core {

// 0x66ce48 _ZN6glitch4core15dual_quaternion16fromQuatAndTransERKNS0_10quaternionERKNS0_8vector3dIfEE
dual_quaternion& dual_quaternion::fromQuatAndTrans(const quaternion& q, const vector3d<float>& t) {
    const float x = q.X, y = q.Y, z = q.Z, w = q.W;
    real.X = x;
    real.Y = y;
    real.Z = z;
    real.W = w;
    dual.W = (x * t.X + y * t.Y + z * t.Z) * -0.5f;
    dual.X = ((w * t.X + z * t.Y) - y * t.Z) * 0.5f;
    dual.Y = ((-t.X * z + w * t.Y) + x * t.Z) * 0.5f;
    dual.Z = ((y * t.X - x * t.Y) + w * t.Z) * 0.5f;
    return *this;
}

// 0x66d85c _ZN6glitch4core15dual_quaternionaSERKNS0_8CMatrix4IfEE
dual_quaternion& dual_quaternion::operator=(const CMatrix4<float>& m) {
    quaternion q;
    q = m;
    vector3d<float> t;
    t.X = m.M[12];
    t.Y = m.M[13];
    t.Z = m.M[14];
    return fromQuatAndTrans(q, t);
}

}  // namespace glitch::core
