// Pure helpers for gameswf::shape_character_def::display (DH2 build, 0x77a990).
//
// Used by vendor-gameswf/src/v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0.cpp. This header
// has no gameswf or core types, so the batch test compiles it on its own. Each helper keeps the
// binary's float operations and comparison order, including its NaN behaviour.
#pragma once

#include <cmath>

namespace gameswf {
namespace dh2 {

// Max scale of the 2x2 part of a matrix (binary: inlined matrix::get_max_scale). a = m00, b = m01,
// c = m10, d = m11. The squared length of each basis vector is summed, the larger one is kept, and the
// root is taken. The binary runs fcmplt(s1, s2) and keeps s2 only when that is nonzero (MOVEQ moves s1
// otherwise), so the select is v = (s1 < s2) ? s2 : s1. That is tu_fmax(s1, s2) from upstream
// base/utility.h, which upstream matrix::get_max_scale also calls. A NaN in s1 therefore propagates, and
// a NaN in s2 is ignored.
inline float shape_matrix_max_scale(float a, float b, float c, float d)
{
	const float s1 = a * a + b * b;
	const float s2 = c * c + d * d;
	const float v = (s1 < s2) ? s2 : s1;
	return std::sqrt(v);
}

// The binary returns early when fabs(max_scale) < 1e-6f: the sign-cleared sqrt result goes to
// __aeabi_fcmplt against the float constant 0x358637BD (1e-6f). A NaN makes that compare false, so
// the binary keeps drawing it, and this helper does too.
inline bool shape_scale_is_drawable(float max_scale)
{
	return !(std::fabs(max_scale) < 1e-6f);
}

// Object-space error for the current scale: ((20 / max_scale) / pixel_scale) * curve_max_pixel_error.
inline float shape_object_space_error(float max_scale, float pixel_scale, float curve_max_pixel_error)
{
	return ((20.0f / max_scale) / pixel_scale) * curve_max_pixel_error;
}

// Tolerance of a new mesh_set: three quarters of the object-space error (binary: err * 0.75 as a float).
inline float shape_new_mesh_tolerance(float object_space_error)
{
	return object_space_error * 0.75f;
}

// Index of the cached mesh the binary displays for this error, or -1 when it builds a new mesh_set.
// count is the number of cached meshes, sorted with the highest error first. tolerance_at(i) returns
// cached mesh i's error tolerance (its first float, mesh_set::get_error_tolerance). The binary's tests
// are fcmplt and fcmpgt, so a NaN makes each one false. In the binary:
//   - when there are no meshes, or the first one has tol * 3 < err (more than 3x finer than needed),
//     nothing is reusable and a mesh is built;
//   - the first mesh is displayed when err > tol (it is accurate enough);
//   - later meshes stop the search when tol * 3 < err (too fine, and so are all the rest), and are
//     displayed when err > tol.
template <class ToleranceAt>
int shape_select_cached_mesh(int count, float object_space_error, ToleranceAt tolerance_at)
{
	if (count <= 0)
	{
		return -1;
	}
	const float first = tolerance_at(0);
	if (first * 3.0f < object_space_error)
	{
		return -1;
	}
	if (object_space_error > first)
	{
		return 0;
	}
	for (int i = 1; i < count; ++i)
	{
		const float tol = tolerance_at(i);
		if (tol * 3.0f < object_space_error)
		{
			break;
		}
		if (object_space_error > tol)
		{
			return i;
		}
	}
	return -1;
}

}  // namespace dh2
}  // namespace gameswf
