// Matrix builders of glitch::core (free function templates, row-major CMatrix4 as in the deps
// header). Both follow the upstream Irrlicht 1.8.5 forms that the original code matches
// instruction for instruction; the row-vector convention (v' = v * M) is the one the original uses.
#pragma once

#include <cmath>

#include "glitch-core-io/deps/glitch_core.hpp"

namespace glitch::core {

// 0x6e377c buildTextureTransform<float>(float, vector2d const&, vector2d const&, vector2d const&).
// Rotation about rotateCenter, then translate, with the scale applied to the rotated axes.
template <typename T>
CMatrix4<T> buildTextureTransform(T rotateRadAngle, const vector2d<T>& rotateCenter,
                                  const vector2d<T>& translate, const vector2d<T>& scale) {
    const T c = std::cos(rotateRadAngle);
    const T s = std::sin(rotateRadAngle);
    CMatrix4<T> m{};
    m.M[0] = c * scale.X;
    m.M[1] = s * scale.Y;
    m.M[2] = 0;
    m.M[3] = 0;
    m.M[4] = -s * scale.X;
    m.M[5] = c * scale.Y;
    m.M[6] = 0;
    m.M[7] = 0;
    // +0x20 and +0x24: rotation about the centre, scaled, then the translation.
    m.M[8] = ((rotateCenter.X - c * rotateCenter.X) + s * rotateCenter.Y) * scale.X + translate.X;
    m.M[9] = ((rotateCenter.Y - s * rotateCenter.X) - c * rotateCenter.Y) * scale.Y + translate.Y;
    m.M[10] = 1;
    m.M[11] = 0;
    m.M[12] = 0;
    m.M[13] = 0;
    m.M[14] = 0;
    m.M[15] = 1;
    m.flag = false;  // +0x40 cleared, as the original does
    return m;
}

// 0x35f188 buildShadowMatrix<float>(vector3d const&, plane3d, float) (GCC clone). The clone
// never reads its last argument: the w of the light is 1 in the compiled body, so the
// argument is accepted and ignored here as well.
template <typename T>
CMatrix4<T> buildShadowMatrix(const vector3d<T>& light, plane3d<T> plane, T /*unused in the clone*/) {
    vector3d<T>& n = plane.Normal;
    const T len2 = n.X * n.X + n.Y * n.Y + n.Z * n.Z;
    if (len2 != 0) {
        const T inv = static_cast<T>(1) / std::sqrt(len2);
        n.X *= inv;
        n.Y *= inv;
        n.Z *= inv;
    }
    const T d = n.X * light.X + n.Y * light.Y + n.Z * light.Z;
    CMatrix4<T> m{};
    m.M[0] = -n.X * light.X + d;
    m.M[1] = -n.X * light.Y;
    m.M[2] = -n.X * light.Z;
    m.M[3] = -n.X;
    m.M[4] = -n.Y * light.X;
    m.M[5] = -n.Y * light.Y + d;
    m.M[6] = -n.Y * light.Z;
    m.M[7] = -n.Y;
    m.M[8] = -n.Z * light.X;
    m.M[9] = -n.Z * light.Y;
    m.M[10] = -n.Z * light.Z + d;
    m.M[11] = -n.Z;
    m.M[12] = -plane.D * light.X;
    m.M[13] = -plane.D * light.Y;
    m.M[14] = -plane.D * light.Z;
    m.M[15] = -plane.D + d;
    m.flag = false;  // +0x40 cleared
    return m;
}

// 0x582c88 buildProjectionMatrixPerspectiveFov<float>(float, float, float, float): perspective
// projection from the vertical field of view (radians), the aspect ratio, zNear and zFar.
// Definition in src/tb_core-io-glitch_core-0.cpp.
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFov(T fieldOfViewRadians, T aspectRatio, T zNear, T zFar);

// 0x582d90 buildProjectionMatrixPerspectiveFovInfinity<float>(float, float, float): perspective
// projection with zFar at infinity. Definition in src/tb_core-io-glitch_core-0.cpp.
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFovInfinity(T fieldOfViewRadians, T aspectRatio, T zNear);

// 0x582e64 buildCameraLookAtMatrix<float>(vector3d const&, vector3d const&, vector3d const&): view
// matrix for an eye position, a target and an up vector. Definition in src/tb_core-io-glitch_core-0.cpp.
template <typename T>
CMatrix4<T> buildCameraLookAtMatrix(const vector3d<T>& position, const vector3d<T>& target,
                                    const vector3d<T>& up);

// 0x58359c buildProjectionMatrixOrtho<float>(float, float, float, float): orthographic projection of
// a view volume of the given width and height between zNear and zFar. Definition in
// src/tb_core-io-glitch_core-0.cpp.
template <typename T>
CMatrix4<T> buildProjectionMatrixOrtho(T widthOfViewVolume, T heightOfViewVolume, T zNear, T zFar);

}  // namespace glitch::core
