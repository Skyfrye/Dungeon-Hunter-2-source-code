// Batch e1-glitch-core-io-glitch_core_CMatrix4_float-0 (glitch::core::CMatrix4<float>, 20 functions).
//
// Layout (CMatrix4<float>, 65 bytes): M[16] row-major at +0x00..+0x3c, identity flag at +0x40.
// The float specialisations are declared in glitch-shared/glitch_core.hpp, after the struct.
#include <cmath>

#include "glitch-shared/glitch_core.hpp"

namespace glitch::core {

// 0x50fbb0, 0x563b54, 0x586a14, 0x591444, 0x5aaef8, 0x5baa94, 0x5caf48, 0x5d402c, 0x60a2cc,
// 0x60ce24, 0x63ccc8, 0x669d4c: the same GCC clone at twelve addresses. The clone is the
// EM4CONST_COPY path; the constructor argument is not read, as in the clones. The body clears
// the flag, then memcpy's 65 bytes, so the flag is copied with the values.
template <>
CMatrix4<float>::CMatrix4(const CMatrix4<float>& other, CMatrix4<float>::eConstructor /*constructor*/) {
    for (int i = 0; i < 16; ++i) M[i] = other.M[i];
    flag = other.flag;
}

// 0x312bf8 glitch::core::CMatrix4<float>::multiplyWith1x4Matrix(float*) const
// Row vector x = (x0, x1, x2, x3) in place: x := x * this. Each output is summed left to right.
template <>
float CMatrix4<float>::multiplyWith1x4Matrix(float* row) const {
    const float v0 = row[0];
    const float v1 = row[1];
    const float v2 = row[2];
    const float v3 = row[3];
    row[0] = ((v0 * M[0] + v1 * M[4]) + v2 * M[8]) + v3 * M[12];
    row[1] = ((v0 * M[1] + v1 * M[5]) + v2 * M[9]) + v3 * M[13];
    row[2] = ((v0 * M[2] + v1 * M[6]) + v2 * M[10]) + v3 * M[14];
    const float result = ((v0 * M[3] + v1 * M[7]) + v2 * M[11]) + v3 * M[15];
    row[3] = result;
    return result;
}

// 0x3232c0 glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) const
// Flagged (identity) matrices copy straight across and return 1. Otherwise the cofactors of the
// 4x4 are written to out and scaled by 1/det; a determinant with |det| <= 1e-6 returns 0 and
// leaves out untouched. out's flag is set to this flag's value (0 on the inverting path).
template <>
int CMatrix4<float>::getInverse(CMatrix4<float>& out) const {
    if (flag) {
        for (int i = 0; i < 16; ++i) out.M[i] = M[i];
        out.flag = flag;
        return 1;
    }
    const float a10 = M[10], a11 = M[11], a14 = M[14];
    const float c25 = (a10 * M[15]) - (a11 * a14);                 // v25
    const float a7 = M[7];
    const float c26 = (M[15] * M[6]) - (a14 * a7);                 // v26
    const float c27 = (a11 * M[6]) - (a10 * a7);                   // v27
    const float a2 = M[2], a3 = M[3];
    const float c28 = (M[15] * a2) - (a14 * a3);                   // v28
    const float c29 = (a11 * a2) - (a10 * a3);                     // v29
    const float c23 = (a7 * a2) - (M[6] * a3);                     // v23
    const float a8 = M[8], a13 = M[13], a9 = M[9], a12 = M[12];
    const float c30 = (a8 * a13) - (a9 * a12);                     // v30
    const float c14 = (a13 * M[4]) - (a12 * M[5]);                 // v14
    const float c15 = (a9 * M[4]) - (a8 * M[5]);                   // v15
    const float c18 = (a13 * M[0]) - (a12 * M[1]);                 // v18
    const float c19 = (a9 * M[0]) - (a8 * M[1]);                   // v19
    const float c20 = (M[5] * M[0]) - (M[4] * M[1]);               // v20
    const float det = ((((c25 * c20) - (c26 * c19)) + (c27 * c18)) + (c28 * c15)) - (c29 * c14) + (c23 * c30);
    // The original expression is ((((c25*c20 - c26*c19) + c27*c18) + c28*c15) - c29*c14) + c23*c30.
    if (!(std::fabs(det) > 0.000001)) {
        return 0;
    }
    out.M[0] = ((c25 * M[5]) - (c26 * M[9])) + (c27 * M[13]);
    out.M[1] = ((c28 * M[9]) - (c25 * M[1])) - (c29 * M[13]);
    out.M[2] = ((c26 * M[1]) - (c28 * M[5])) + (c23 * M[13]);
    out.M[3] = ((c29 * M[5]) - (c27 * M[1])) - (c23 * M[9]);
    out.M[4] = ((c26 * M[8]) - (c25 * M[4])) - (c27 * M[12]);
    out.M[5] = ((c25 * M[0]) - (c28 * M[8])) + (c29 * M[12]);
    out.M[6] = ((c28 * M[4]) - (c26 * M[0])) - (c23 * M[12]);
    out.M[7] = ((c27 * M[0]) - (c29 * M[4])) + (c23 * M[8]);
    out.M[8] = ((c30 * M[7]) - (c14 * a11)) + (c15 * M[15]);
    out.M[9] = ((c18 * a11) - (c30 * a3)) - (c19 * M[15]);
    out.M[10] = ((c14 * a3) - (c18 * M[7])) + (c20 * M[15]);
    out.M[11] = ((c19 * M[7]) - (c15 * a3)) - (c20 * a11);
    out.M[12] = ((c14 * a10) - (c30 * M[6])) - (c15 * a14);
    out.M[13] = ((c30 * a2) - (c18 * a10)) + (c19 * a14);
    out.M[14] = ((c18 * M[6]) - (c14 * a2)) - (c20 * a14);
    out.M[15] = ((c15 * a2) - (c19 * M[6])) + (c20 * a10);
    const float inv = static_cast<float>(1.0 / det);
    for (int i = 0; i < 16; ++i) out.M[i] = out.M[i] * inv;
    out.flag = false;
    return 1;
}

// 0x432bbc glitch::core::CMatrix4<float>::getRotationDegrees() const
// Euler angles from the rotation part. The pitch comes from asinf of M[2] with its sign flipped.
// The listing calls atan2 and cos with double arguments, so the arithmetic is done in double.
template <>
vector3d<float> CMatrix4<float>::getRotationDegrees() const {
    constexpr double kRadToDeg = 57.29577951308232;
    const double pitch = static_cast<double>(-std::asin(M[2]));  // v4
    const double cosPitch = std::cos(pitch);                     // v5
    double angleY = pitch * kRadToDeg;                           // v6
    double angleX = 0.0;                                         // v8
    double angleZ = 0.0;                                         // v9
    // The listing branches on !(|cos| > 1e-8) (dcmpgt), so a NaN pitch (|M[2]| > 1) takes the gimbal-lock path too.
    if (!(std::fabs(cosPitch) > 0.00000001)) {
        angleZ = std::atan2(static_cast<double>(-M[4]), static_cast<double>(M[5])) * kRadToDeg;
    } else {
        const double inv = 1.0 / cosPitch;
        angleX = std::atan2(static_cast<double>(M[6]) * inv, static_cast<double>(M[10]) * inv) * kRadToDeg;
        angleZ = std::atan2(static_cast<double>(M[1]) * inv, static_cast<double>(M[0]) * inv) * kRadToDeg;
        if (angleX < 0.0) angleX = angleX + 360.0;
    }
    if (angleY < 0.0) angleY = angleY + 360.0;
    if (angleZ < 0.0) angleZ = angleZ + 360.0;
    return {static_cast<float>(angleX), static_cast<float>(angleY), static_cast<float>(angleZ)};
}

// 0x5822f8 glitch::core::CMatrix4<float>::makeInverse(void)
// Identity matrices return 1 unchanged. Otherwise the inverse goes to a temporary, and this
// takes its values (65 bytes, flag included) only when the inversion succeeded.
template <>
int CMatrix4<float>::makeInverse() {
    if (flag) return 1;
    CMatrix4<float> inverse{};
    if (!getInverse(inverse)) return 0;
    for (int i = 0; i < 16; ++i) M[i] = inverse.M[i];
    flag = inverse.flag;
    return 1;
}

// 0x587398 glitch::core::CMatrix4<float>::transformBox(glitch::core::aabbox3d<float>&) const
// Identity (flag set): nothing. Otherwise MinEdge and MaxEdge are transformed as points, and each
// axis is swapped back if the transformed min came out above the transformed max. The listing's
// int return is leftover register state, so the port returns void.
template <>
void CMatrix4<float>::transformBox(aabbox3d<float>& box) const {
    if (flag) return;
    const float minX = box.MinEdge.X, minY = box.MinEdge.Y, minZ = box.MinEdge.Z;
    const float maxX = box.MaxEdge.X, maxY = box.MaxEdge.Y, maxZ = box.MaxEdge.Z;
    const float tminX = ((minX * M[0] + minY * M[4]) + minZ * M[8]) + M[12];
    const float tminY = ((minX * M[1] + minY * M[5]) + minZ * M[9]) + M[13];
    const float tminZ = ((minX * M[2] + minY * M[6]) + minZ * M[10]) + M[14];
    const float tmaxX = ((maxX * M[0] + maxY * M[4]) + maxZ * M[8]) + M[12];
    const float tmaxY = ((maxX * M[1] + maxY * M[5]) + maxZ * M[9]) + M[13];
    const float tmaxZ = ((maxX * M[2] + maxY * M[6]) + maxZ * M[10]) + M[14];
    box.MinEdge.X = tminX;
    box.MinEdge.Y = tminY;
    box.MinEdge.Z = tminZ;
    box.MaxEdge.X = tmaxX;
    box.MaxEdge.Y = tmaxY;
    box.MaxEdge.Z = tmaxZ;
    if (tminX > tmaxX) {
        box.MinEdge.X = tmaxX;
        box.MaxEdge.X = tminX;
    }
    if (tminY > tmaxY) {
        box.MinEdge.Y = tmaxY;
        box.MaxEdge.Y = tminY;
    }
    if (tminZ > tmaxZ) {
        box.MinEdge.Z = tmaxZ;
        box.MaxEdge.Z = tminZ;
    }
}

// 0x597548 glitch::core::CMatrix4<float>::transformBoxEx(glitch::core::aabbox3d<float>&) const
// Irrlicht's transformBoxEx. Each output starts at the translation (M[12], M[13], M[14]). For each
// row i and column j, a = M[i + 4j] * min[j] and b = M[i + 4j] * max[j]; the smaller goes to the
// new min and the larger to the new max. Reads come from the box before any write, as in the
// listing. The identity flag is not checked (none in the listing).
template <>
void CMatrix4<float>::transformBoxEx(aabbox3d<float>& box) const {
    const float amin[3] = {box.MinEdge.X, box.MinEdge.Y, box.MinEdge.Z};
    const float amax[3] = {box.MaxEdge.X, box.MaxEdge.Y, box.MaxEdge.Z};
    float bmin[3] = {M[12], M[13], M[14]};
    float bmax[3] = {M[12], M[13], M[14]};
    for (int i = 0; i < 3; ++i) {
        for (int j = 0; j < 3; ++j) {
            const float m = M[i + 4 * j];
            const float a = m * amin[j];
            const float b = m * amax[j];
            if (a < b) {
                bmin[i] = bmin[i] + a;
                bmax[i] = bmax[i] + b;
            } else {
                bmin[i] = bmin[i] + b;
                bmax[i] = bmax[i] + a;
            }
        }
    }
    box.MinEdge.X = bmin[0];
    box.MinEdge.Y = bmin[1];
    box.MinEdge.Z = bmin[2];
    box.MaxEdge.X = bmax[0];
    box.MaxEdge.Y = bmax[1];
    box.MaxEdge.Z = bmax[2];
}

// 0x597788 glitch::core::CMatrix4<float>::postScale(const glitch::core::vector3d<float>&)
// Identity (flag set): the matrix becomes diag(x, y, z) with the other elements left as they are.
// Otherwise row 0 (M[0..2]) scales by x, row 1 (M[4..6]) by y and row 2 (M[8..10]) by z.
template <>
void CMatrix4<float>::postScale(const vector3d<float>& scale) {
    if (flag) {
        flag = false;
        M[0] = scale.X;
        M[5] = scale.Y;
        M[10] = scale.Z;
        return;
    }
    flag = false;
    M[0] = M[0] * scale.X;
    M[1] = M[1] * scale.X;
    M[2] = M[2] * scale.X;
    M[4] = M[4] * scale.Y;
    M[5] = M[5] * scale.Y;
    M[6] = M[6] * scale.Y;
    M[8] = M[8] * scale.Z;
    M[9] = M[9] * scale.Z;
    M[10] = M[10] * scale.Z;
}

// 0x663ce8 glitch::core::CMatrix4<float>::getInverse(glitch::core::CMatrix4<float>&) [clone]
// NOT RECONSTRUCTED (ledger partial). This is the 0x3232c0 inverse specialised to the global
// glitch::core::IdentityMatrix (byte 0x9f65b0 is its flag): its listing reads the global's sixteen
// values directly, and the global is not declared in this category. Its return value is
// char* (1 or the flag byte), not an int. Not written until the global's storage is declared.

}  // namespace glitch::core
