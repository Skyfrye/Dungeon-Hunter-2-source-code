// Declarations of the glitch::core matrix builders that the camera calls. The definitions, and the explicit
// instantiations for float, are in glitch-core-io (core/matrix_builders.hpp and
// src/tb_core-io-glitch_core-0.cpp); the declarations are repeated here, as tb/glitch_scene_SViewFrustum.hpp does
// for setbyproduct, so this category does not include glitch-core-io's headers. The signatures must stay the same
// as the ones there.
#pragma once

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::core {

// 0x582c88 buildProjectionMatrixPerspectiveFov<float>(float, float, float, float)
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFov(T fieldOfViewRadians, T aspectRatio, T zNear, T zFar);

// 0x582d90 buildProjectionMatrixPerspectiveFovInfinity<float>(float, float, float)
template <typename T>
CMatrix4<T> buildProjectionMatrixPerspectiveFovInfinity(T fieldOfViewRadians, T aspectRatio, T zNear);

// 0x582e64 buildCameraLookAtMatrix<float>(vector3d const&, vector3d const&, vector3d const&): eye position, target, up
template <typename T>
CMatrix4<T> buildCameraLookAtMatrix(const vector3d<T>& position, const vector3d<T>& target, const vector3d<T>& up);

// 0x58359c buildProjectionMatrixOrtho<float>(float, float, float, float)
template <typename T>
CMatrix4<T> buildProjectionMatrixOrtho(T widthOfViewVolume, T heightOfViewVolume, T zNear, T zFar);

}  // namespace glitch::core
