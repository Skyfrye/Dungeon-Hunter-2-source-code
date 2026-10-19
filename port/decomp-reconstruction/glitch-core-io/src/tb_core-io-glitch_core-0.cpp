// Batch e1-glitch-core-io-glitch_core-0 (class glitch::core, category glitch-core-io).
// Functions: hashString, the four matrix builders instantiated for float, and the
// CMatrix4 * SMatrix product. Declarations are in core/strings.hpp, core/matrix_builders.hpp
// and core/matrix4_operators.hpp.

#include <cmath>
#include <cstddef>
#include <cstring>

#include "glitch-core-io/core/matrix4_operators.hpp"
#include "glitch-core-io/core/matrix_builders.hpp"
#include "glitch-core-io/core/strings.hpp"

namespace glitch::core {

// 0x37c164 _ZN6glitch4core10hashStringEPKc
// The original builds a std::string copy of the text and folds its bytes. Each byte is read with
// ldrsb (signed char); the step is h ^= c + 0x9e3779b9 + (h << 6) + (h >> 2) in 32-bit unsigned
// arithmetic. The function-local boost::hash guard object (sStringHash) is never read, so it is
// not reproduced.
unsigned int hashString(const char* text) {
    unsigned int hash = 0;
    const std::size_t length = std::strlen(text);
    for (std::size_t i = 0; i < length; ++i) {
        const int c = static_cast<signed char>(text[i]);
        hash ^= static_cast<unsigned int>(c) + 0x9E3779B9u + (hash << 6) + (hash >> 2);
    }
    return hash;
}

// 0x582c88 buildProjectionMatrixPerspectiveFov<float>(float, float, float, float)
// cot = 1 / tan(fov * 0.5) is computed in double (the listing promotes a2 * 0.5 to double) and
// stored as float where the listing stores it. M[0] = cot / aspect, M[5] = cot, M[10] = zFar / (zFar - zNear),
// M[11] = 1, M[14] = (-zNear * zFar) / (zFar - zNear), M[15] = 0, flag cleared.
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFov(T fieldOfViewRadians, T aspectRatio, T zNear, T zFar) {
    const double cot = 1.0 / std::tan(static_cast<double>(fieldOfViewRadians) * 0.5);
    CMatrix4<T> m{};
    m.M[0] = static_cast<T>(cot / aspectRatio);
    m.M[1] = 0;
    m.M[2] = 0;
    m.M[3] = 0;
    m.M[4] = 0;
    m.M[5] = static_cast<T>(cot);
    m.M[6] = 0;
    m.M[7] = 0;
    m.M[8] = 0;
    m.M[9] = 0;
    m.M[10] = zFar / (zFar - zNear);
    m.M[11] = 1;
    m.M[12] = 0;
    m.M[13] = 0;
    m.M[14] = ((-zNear) * zFar) / (zFar - zNear);
    m.M[15] = 0;
    m.flag = false;  // +0x40
    return m;
}

// 0x582d90 buildProjectionMatrixPerspectiveFovInfinity<float>(float, float, float)
// Same as the finite form with zFar at infinity: M[10] = 1, M[11] = 1, M[14] = -zNear, M[15] = 0.
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFovInfinity(T fieldOfViewRadians, T aspectRatio, T zNear) {
    const double cot = 1.0 / std::tan(static_cast<double>(fieldOfViewRadians) * 0.5);
    CMatrix4<T> m{};
    m.M[0] = static_cast<T>(cot / aspectRatio);
    m.M[1] = 0;
    m.M[2] = 0;
    m.M[3] = 0;
    m.M[4] = 0;
    m.M[5] = static_cast<T>(cot);
    m.M[6] = 0;
    m.M[7] = 0;
    m.M[8] = 0;
    m.M[9] = 0;
    m.M[10] = 1;
    m.M[11] = 1;
    m.M[12] = 0;
    m.M[13] = 0;
    m.M[14] = -zNear;
    m.M[15] = 0;
    m.flag = false;  // +0x40
    return m;
}

// 0x582e64 buildCameraLookAtMatrix<float>(vector3d const&, vector3d const&, vector3d const&)
// The listing takes the eye position as the first argument (it is the one used for the
// translation column), the target as the second and the up vector as the third. The forward
// axis is z = normalize(target - position). The first axis x is the listing's
// (-up.y * z.z + up.z * z.y, -up.z * z.x + up.x * z.z, -up.x * z.y + up.y * z.x), normalized
// when its squared length is non-zero. The second axis y is written from the listing's
// expressions (M[1], M[5], M[9]) with no further change. Translation column:
// -dot(x, pos), -dot(y, pos), -dot(z, pos). M[15] = 1, flag cleared.
template <typename T>
CMatrix4<T> buildCameraLookAtMatrix(const vector3d<T>& position, const vector3d<T>& target,
                                    const vector3d<T>& up) {
    // Forward axis: z = target - position, normalized when non-zero.
    T zx = target.X - position.X;
    T zy = target.Y - position.Y;
    T zz = target.Z - position.Z;
    const T len2 = ((zx * zx) + (zy * zy)) + (zz * zz);
    if (len2 != 0) {
        const T inv = static_cast<T>(1.0 / std::sqrt(len2));
        zx = zx * inv;
        zy = zy * inv;
        zz = zz * inv;
    }

    const T ux = up.X;
    const T uy = up.Y;
    const T uz = up.Z;

    // First axis before normalization (listing v13, v16, v17).
    T xx = (zz * -uy) + (zy * uz);
    const T t14 = zx * -uz;
    T xy = t14 + (zz * ux);
    T xz = (zy * -ux) + (zx * uy);
    const T len2x = ((xx * xx) + (xy * xy)) + (xz * xz);
    if (len2x != 0) {
        const T inv = static_cast<T>(1.0 / std::sqrt(len2x));
        xx = xx * inv;
        xy = xy * inv;
        xz = xz * inv;
    }

    // Second axis (listing xa = M[1], v23 = M[5], and M[9]).
    const T yX = (xz * -zy) + (zz * xy);
    const T yY = (xx * -zz) + (xz * zx);
    const T yZ = (xy * -zx) + (zy * xx);

    const T px = position.X;
    const T py = position.Y;
    const T pz = position.Z;

    CMatrix4<T> m{};
    m.M[0] = xx;
    m.M[1] = yX;
    m.M[2] = zx;
    m.M[3] = 0;
    m.M[4] = xy;
    m.M[5] = yY;
    m.M[6] = zy;
    m.M[7] = 0;
    m.M[8] = xz;
    m.M[9] = yZ;
    m.M[10] = zz;
    m.M[11] = 0;
    m.M[12] = -(((xx * px) + (xy * py)) + (xz * pz));
    m.M[13] = -(((yX * px) + (yY * py)) + (yZ * pz));
    m.M[14] = -(((zx * px) + (zy * py)) + (zz * pz));
    m.M[15] = 1;
    m.flag = false;  // +0x40
    return m;
}

// 0x58359c buildProjectionMatrixOrtho<float>(float, float, float, float)
// M[0] = 2 / width, M[5] = 2 / height, M[10] = 1 / (zFar - zNear), M[14] = zNear / (zNear - zFar),
// M[15] = 1, every other element 0, flag cleared.
template <typename T>
CMatrix4<T> buildProjectionMatrixOrtho(T widthOfViewVolume, T heightOfViewVolume, T zNear, T zFar) {
    CMatrix4<T> m{};
    m.M[0] = static_cast<T>(2.0 / widthOfViewVolume);
    m.M[1] = 0;
    m.M[2] = 0;
    m.M[3] = 0;
    m.M[4] = 0;
    m.M[5] = static_cast<T>(2.0 / heightOfViewVolume);
    m.M[6] = 0;
    m.M[7] = 0;
    m.M[8] = 0;
    m.M[9] = 0;
    m.M[10] = static_cast<T>(1.0 / static_cast<T>(zFar - zNear));
    m.M[11] = 0;
    m.M[12] = 0;
    m.M[13] = 0;
    m.M[14] = zNear / static_cast<T>(zNear - zFar);
    m.M[15] = 1;
    m.flag = false;  // +0x40
    return m;
}

// 0x6651a0 operator*<float, glitch::collada::SMatrix>(CMatrix4<float> const&, SMatrix const&)
// The rhs is any type indexable as 16 floats (the listing reads a3[0..15] and never reads a flag); the instance is for
// glitch::collada::SMatrix (matrix4_operators.hpp). The lhs identity flag selects a plain copy of the rhs. Otherwise the 4x4
// product is taken with the rows and columns of the listing, and the translation column adds the lhs translation.
template <typename T, typename Rhs>
CMatrix4<T> operator*(const CMatrix4<T>& lhs, const Rhs& rhs) {
    CMatrix4<T> out{};
    if (lhs.flag) {
        for (int i = 0; i < 16; ++i) {
            out.flag = false;
            out.M[i] = static_cast<T>(rhs[i]);
        }
        out.flag = false;
        return out;
    }

    const T* a = lhs.M;
    for (int c = 0; c < 3; ++c) {
        for (int r = 0; r < 3; ++r) {
            out.M[r + 4 * c] = ((a[r] * static_cast<T>(rhs[4 * c])) + (a[r + 4] * static_cast<T>(rhs[4 * c + 1]))) +
                               (a[r + 8] * static_cast<T>(rhs[4 * c + 2]));
        }
    }
    out.M[3] = 0;
    out.M[7] = 0;
    out.M[11] = 0;
    for (int r = 0; r < 3; ++r) {
        out.M[12 + r] = (((a[r] * static_cast<T>(rhs[12])) + (a[r + 4] * static_cast<T>(rhs[13]))) +
                         (a[r + 8] * static_cast<T>(rhs[14]))) +
                        a[12 + r];
    }
    out.M[15] = 1;
    out.flag = false;  // +0x40
    return out;
}

// 0x35e998 _ZNK6glitch4core8CMatrix4IfEmlERKS2_: the member product (matrix4_operators.hpp) for float, emitted here.
template CMatrix4<float> CMatrix4<float>::operator*(const CMatrix4<float>&) const;

// The instance the binary emits: _ZN6glitch4core...operator*<float, glitch::collada::SMatrix> (0x6651a0), reached from the skin
// techniques' prepareCache (IColladaSkinTechnique).
template CMatrix4<float> operator*<float, glitch::collada::SMatrix>(const CMatrix4<float>&, const glitch::collada::SMatrix&);

// Instantiations for float, the only type the original builds.
template CMatrix4<float> buildProjectionMatrixPerspectiveFov<float>(float, float, float, float);
template CMatrix4<float> buildProjectionMatrixPerspectiveFovInfinity<float>(float, float, float);
template CMatrix4<float> buildCameraLookAtMatrix<float>(const vector3d<float>&, const vector3d<float>&,
                                                        const vector3d<float>&);
template CMatrix4<float> buildProjectionMatrixOrtho<float>(float, float, float, float);

}  // namespace glitch::core
