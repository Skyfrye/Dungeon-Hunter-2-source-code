// Batch e1-glitch-core-io-glitch_core_quaternion-0: glitch::core::quaternion members.
// Declarations are in glitch-shared/glitch_core.hpp (struct quaternion). Arithmetic follows the
// Hex-Rays listings operation by operation; float and double literals are kept where the listing
// promotes them, so the rounding matches the original.

#include <cmath>

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

namespace {

// Rotation-matrix entries of a unit quaternion (x, y, z, w), as the listings compute them.
// Field names follow the (non-transposed) matrix r[row][col]: r01 is the listing's m[1].
struct RotationEntries {
    float r00, r01, r02;
    float r10, r11, r12;
    float r20, r21, r22;
};

RotationEntries rotationEntries(float x, float y, float z, float w) {
    const float v4 = x + x;
    const float v12 = x * v4;          // 2 x^2
    const float v13 = z * (z + z);     // 2 z^2
    const float v14 = v4 * y;          // 2 x y
    const float v15 = v4 * z;          // 2 x z
    const float v8 = v4 * w;           // 2 x w
    const float v16 = (y + y) * z;     // 2 y z
    const float v9 = (y + y) * w;      // 2 y w
    const float v10 = (z + z) * w;     // 2 z w
    const float yy = y * (y + y);      // 2 y^2
    RotationEntries r;
    r.r00 = (1.0f - yy) - v13;
    r.r01 = v14 + v10;
    r.r02 = v15 - v9;
    r.r10 = v14 - v10;
    r.r11 = (1.0f - v12) - v13;
    r.r12 = v16 + v8;
    r.r20 = v15 + v9;
    r.r21 = v16 - v8;
    r.r22 = (1.0f - yy) - v12;
    return r;
}

}  // namespace

// 0x35bc90 glitch::core::quaternion::operator*(glitch::core::vector3d<float> const&) const
vector3d<float> quaternion::operator*(const vector3d<float>& v) const {
    const float v3 = Y;
    const float v4 = Z;
    const float v5 = v.Y;
    const float v9 = v.Z;
    const float v11 = ((-Y) * v9) + (Z * v5);
    const float v6 = X;
    const float v12 = -X;
    const float v7 = ((-Z) * v.X) + (X * v9);
    const float v10 = (v5 * v12) + (Y * v.X);
    const float v8 = W + W;
    vector3d<float> r;
    r.X = (((((-Y) * v10) + (v4 * v7)) + (((-Y) * v10) + (v4 * v7))) + (v.X + (v8 * v11)));
    r.Y = (((v11 * (-v4)) + (v6 * v10)) + ((v11 * (-v4)) + (v6 * v10))) + (v5 + (v8 * v7));
    r.Z = (((v7 * v12) + (v3 * v11)) + ((v7 * v12) + (v3 * v11))) + (v9 + (v8 * v10));
    return r;
}

// 0x35c8f0 glitch::core::quaternion::normalize(void)
quaternion& quaternion::normalize() {
    const float v2 = ((((X * X) + (Y * Y)) + (Z * Z)) + (W * W));
    if (v2 != 1.0f) {
        const float v3 = static_cast<float>(1.0 / std::sqrt(v2));
        X = X * v3;
        Y = Y * v3;
        Z = Z * v3;
        W = W * v3;
    }
    return *this;
}

// 0x35c9d8 glitch::core::quaternion::set(float,float,float)
// Angles are halved and taken through double sin/cos, as the listing does.
quaternion& quaternion::set(float a, float b, float c) {
    const double v7 = a * 0.5;
    const double v8 = std::sin(v7);
    const double v9 = std::cos(v7);
    const double v17 = std::sin(b * 0.5);
    const double v14 = std::cos(b * 0.5);
    const double v10 = c * 0.5;
    const double v15 = std::sin(v10);
    const double v11 = std::cos(v10);
    const double v18 = v14 * v11;
    const double v19 = v17 * v11;
    const double v12 = v14 * v15;
    const double v16 = v17 * v15;
    X = static_cast<float>((v8 * v18) - (v9 * v16));
    Y = static_cast<float>((v9 * v19) + (v8 * v12));
    Z = static_cast<float>((v9 * v12) - (v8 * v19));
    W = static_cast<float>((v9 * v18) + (v8 * v16));
    return normalize();
}

// 0x410e48 glitch::core::quaternion::fromAngleAxis(float,glitch::core::vector3d<float> const&) [clone]
// The listing has no angle argument: the second register holds the axis pointer, the result
// pointer is r0, and the scale constants are 0x3F59D4D0 (sin of the half angle, 0.8509035) and
// 0x3F067B80 (cos of the half angle, 0.5253220). The assembly (0x410e48) reads no float argument,
// only the three axis components, so the body is complete. Kept as a free function because it is a
// clone with a different parameter list from the member.
namespace tb {
quaternion fromAngleAxisClone_0x410e48(const vector3d<float>& axis) {
    quaternion r;
    r.W = 0.5253219604492188f;  // 0x3F067B80
    r.X = axis.X * 0.8509035110473633f;  // 0x3F59D4D0
    r.Y = axis.Y * 0.8509035110473633f;
    r.Z = axis.Z * 0.8509035110473633f;
    return r;
}
}  // namespace tb

// 0x432984 glitch::core::quaternion::getMatrix(glitch::core::CMatrix4<float> &) const
void quaternion::getMatrix(CMatrix4<float>& out) const {
    const RotationEntries r = rotationEntries(X, Y, Z, W);
    out.flag = false;  // +0x40
    out.M[0] = r.r00;
    out.M[1] = r.r01;
    out.M[2] = r.r02;
    out.M[3] = 0.0f;
    out.M[4] = r.r10;
    out.M[5] = r.r11;
    out.M[6] = r.r12;
    out.M[7] = 0.0f;
    out.M[8] = r.r20;
    out.M[9] = r.r21;
    out.M[10] = r.r22;
    out.M[11] = 0.0f;
    out.M[12] = 0.0f;
    out.M[13] = 0.0f;
    out.M[14] = 0.0f;
    out.M[15] = 1.0f;
}

// 0x432e58 glitch::core::quaternion::toEulerDegree(glitch::core::vector3d<float> &) const
// The matrix comes from getMatrix; CMatrix4<float>::getRotationDegrees (0x432bbc, defined in
// tb_core-io-glitch_core_CMatrix4_float-0.cpp) gives the angles, which are copied to out as X, Y, Z.
// The listing also returns the address of its stack temporary, which points into this function's
// frame and is dangling once it returns; that return value is not reproduced.
void quaternion::toEulerDegree(vector3d<float>& out) const {
    CMatrix4<float> m;
    getMatrix(m);
    out = m.getRotationDegrees();
}

// 0x50eeb4 glitch::core::quaternion::operator=(glitch::core::CMatrix4<float> const&)
quaternion& quaternion::operator=(const CMatrix4<float>& m) {
    const float* a = m.M;
    const float v2 = a[0];
    const float v3 = a[5];
    const float v4 = a[10];
    const float v7 = (v2 + v3) + v4;
    if (v7 > 0.0) {
        const float v12 = std::sqrt(static_cast<float>(v7 + 1.0));
        W = static_cast<float>(v12 * 0.5);
        X = (a[9] - a[6]) * static_cast<float>(0.5 / v12);
        Y = (a[2] - a[8]) * static_cast<float>(0.5 / v12);
        Z = (a[4] - a[1]) * static_cast<float>(0.5 / v12);
    } else if (v2 <= v3 || v2 <= v4) {
        if (v3 > v4) {
            const float v11 = std::sqrt(static_cast<float>(static_cast<float>(v3 + 1.0) - v2) - v4);
            Y = static_cast<float>(v11 * 0.5);
            X = (a[1] + a[4]) * static_cast<float>(0.5 / v11);
            Z = (a[6] + a[9]) * static_cast<float>(0.5 / v11);
            W = (a[2] - a[8]) * static_cast<float>(0.5 / v11);
        } else {
            const float v9 = std::sqrt(static_cast<float>(static_cast<float>(v4 + 1.0) - v2) - v3);
            Z = static_cast<float>(v9 * 0.5);
            X = (a[2] + a[8]) * static_cast<float>(0.5 / v9);
            Y = (a[6] + a[9]) * static_cast<float>(0.5 / v9);
            W = (a[4] - a[1]) * static_cast<float>(0.5 / v9);
        }
    } else {
        const float v8 = std::sqrt(static_cast<float>(static_cast<float>(v2 + 1.0) - v3) - v4);
        X = static_cast<float>(v8 * 0.5);
        Y = (a[1] + a[4]) * static_cast<float>(0.5 / v8);
        Z = (a[8] + a[2]) * static_cast<float>(0.5 / v8);
        W = (a[9] - a[6]) * static_cast<float>(0.5 / v8);
    }
    return normalize();
}

// 0x5602d0 glitch::core::quaternion::getMatrix_transposed(glitch::core::CMatrix4<float> &) const
void quaternion::getMatrix_transposed(CMatrix4<float>& out) const {
    const RotationEntries r = rotationEntries(X, Y, Z, W);
    out.flag = false;  // +0x40
    out.M[0] = r.r00;
    out.M[1] = r.r10;
    out.M[2] = r.r20;
    out.M[3] = 0.0f;
    out.M[4] = r.r01;
    out.M[5] = r.r11;
    out.M[6] = r.r21;
    out.M[7] = 0.0f;
    out.M[8] = r.r02;
    out.M[9] = r.r12;
    out.M[10] = r.r22;
    out.M[11] = 0.0f;
    out.M[12] = 0.0f;
    out.M[13] = 0.0f;
    out.M[14] = 0.0f;
    out.M[15] = 1.0f;
}

// 0x60cdbc glitch::core::quaternion::fromAngleAxis(float,glitch::core::vector3d<float> const&)
quaternion quaternion::fromAngleAxis(float angle, const vector3d<float>& axis) {
    quaternion r;
    const float v5 = angle * 0.5f;
    const float v6 = std::sin(v5);
    r.W = std::cos(v5);
    r.X = axis.X * v6;
    r.Y = axis.Y * v6;
    r.Z = axis.Z * v6;
    return r;
}

// 0x60dd34 glitch::core::quaternion::operator*(glitch::core::quaternion const&) const
// Hamilton product, this * other. The listing first stores (0, 0, 0, 1) into the result; those
// stores are overwritten below and are not kept.
quaternion quaternion::operator*(const quaternion& other) const {
    quaternion r;
    r.W = ((((W * other.W) - (X * other.X)) - (Y * other.Y)) - (Z * other.Z));
    r.X = ((((X * other.W) + (W * other.X)) + (Z * other.Y)) - (Y * other.Z));
    r.Y = ((((Y * other.W) + (W * other.Y)) + (X * other.Z)) - (Z * other.X));
    r.Z = ((((Z * other.W) + (W * other.Z)) + (Y * other.X)) - (X * other.Y));
    return r;
}

// 0x612d00 glitch::core::quaternion::slerp(glitch::core::quaternion,glitch::core::quaternion,float)
// The listing negates the FIRST quaternion when the dot product is negative (not the second), and
// the near-equal branch (v16 + 1 <= 0.05) can only be reached with a NaN, since v16 is made
// non-negative first. Both are kept as the listing has them.
quaternion quaternion::slerp(quaternion from, quaternion to, float t) {
    float v10 = from.X;
    float v12 = from.Y;
    float v13 = from.Z;
    float v14 = from.W;
    const float v15 = ((from.X * to.X) + (from.Y * to.Y)) + (from.Z * to.Z);
    float v16 = v15 + (from.W * to.W);
    if (v16 < 0.0f) v16 = -v16;
    if ((v15 + (from.W * to.W)) < 0.0f) {
        v10 = -from.X;
        v12 = -from.Y;
        v13 = -from.Z;
        v14 = -from.W;
    }
    quaternion r;
    if (static_cast<float>(v16 + 1.0) <= 0.05) {
        const float v22 = std::sin(static_cast<float>((0.5 - t) * 3.1416));
        const float v23 = std::sin(static_cast<float>(t * 3.1416));
        r.X = (v22 * v10) + ((-v12) * v23);
        r.Y = (v22 * v12) + (v23 * v10);
        r.Z = (v22 * v13) + ((-v14) * v23);
        r.W = (v22 * v14) + (v23 * v13);
        return r;
    }
    if (static_cast<float>(1.0 - v16) < 0.05) {
        const float omt = static_cast<float>(1.0 - t);
        r.X = (omt * v10) + (t * to.X);
        r.Y = (omt * v12) + (t * to.Y);
        r.Z = (omt * v13) + (t * to.Z);
        r.W = (omt * v14) + (t * to.W);
        r.normalize();
    return r;
    }
    const float v25 = std::acos(v16);
    const float v26 = static_cast<float>(1.0 / std::sin(v25));
    const float omt = static_cast<float>(1.0 - t);
    const float v17 = std::sin(v25 * omt) * v26;
    const float v18 = std::sin(v25 * t) * v26;
    r.X = (v17 * v10) + (v18 * to.X);
    r.Y = (v17 * v12) + (v18 * to.Y);
    r.Z = (v17 * v13) + (v18 * to.Z);
    r.W = (v17 * v14) + (v18 * to.W);
    return r;
}

// 0x6d162c glitch::core::quaternion::getMatrix(void) const
// The listing returns the matrix through the result pointer (r0) and reads the quaternion from
// r1, so the transposed matrix is what it returns.
CMatrix4<float> quaternion::getMatrix() const {
    CMatrix4<float> out;
    getMatrix_transposed(out);
    return out;
}

}  // namespace glitch::core
