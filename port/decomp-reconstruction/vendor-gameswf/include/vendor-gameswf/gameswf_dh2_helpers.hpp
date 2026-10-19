// DH2 helpers for batch v1-vendor-gameswf-gameswf-fddef6-2 (gameswf r1714 with Gameloft changes).
//
// Pure code only: no gameswf or glitch types, so the batch's test can compile it on its own.
// The batch file (src/v1-vendor-gameswf-gameswf-fddef6-2.cpp) calls these from the functions
// that touch the engine.
#ifndef VENDOR_GAMESWF_DH2_HELPERS_HPP
#define VENDOR_GAMESWF_DH2_HELPERS_HPP

#include <cstddef>
#include <cstdint>
#include <cstring>

namespace gameswf {
namespace dh2 {

// Body of gameswf::sort_by_decreasing_error after the two element pointers are loaded.
// a and b point at the first float of each mesh set (+0x00 m_error_tolerance, no vtable).
// The assembly (0x7797e4) is: BL __aeabi_fcmplt(a, b); if nonzero return 1. Otherwise
// BL __aeabi_fcmpgt(a, b); return -1 when it is nonzero, else 0. So the larger error
// sorts first, equal values give 0, and an unordered pair (either side NaN) gives 0.
// Hex-Rays prints this as "a < b -> 1; a <= b -> 0; else -1", which is wrong for NaN.
inline int compare_decreasing_error(const float* a, const float* b)
{
	if (*a < *b)
	{
		return 1;
	}
	if (*a > *b)
	{
		return -1;
	}
	return 0;
}

// Reads one T at p with no alignment assumption.
template <typename T>
inline T load_unaligned(const std::uint8_t* p)
{
	T v;
	std::memcpy(&v, p, sizeof(T));
	return v;
}

// Body of gameswf::collect<T>. base is the mapped buffer pointer plus the stream offset;
// stride is the per-vertex byte stride (SVertexStream::field0e). Each vertex contributes
// x at +0 and y at +sizeof(T). Output is 6 floats (3 points) per triangle, written at out.
//
// indices != nullptr: count is a triangle count. Each index triple (i0, i1, i2) writes
//                     vertices i2, i1, i0 in that order.
// indices == nullptr: count is a vertex count. Triangles are built from consecutive
//                     vertices (i+2, i+1, i) and i advances by 3 until it reaches count.
//
// Both loops run at least once when count is non-zero, as in the binary, so the
// indexed branch may write fewer triangles than count suggests in the null case.
template <typename T>
inline void collect_triangle_points(const std::uint8_t* base, std::uint16_t stride,
                                    const std::uint32_t* indices, std::uint32_t count, float* out)
{
	auto put = [base, stride](std::uint32_t vertex, float* dst) {
		const std::uint8_t* v = base + static_cast<std::size_t>(vertex) * stride;
		dst[0] = static_cast<float>(load_unaligned<T>(v));
		dst[1] = static_cast<float>(load_unaligned<T>(v + sizeof(T)));
	};

	if (indices)
	{
		if (count == 0)
		{
			return;
		}
		for (std::uint32_t t = 0; t < count; ++t, out += 6)
		{
			const std::uint32_t* idx = indices + 3 * static_cast<std::size_t>(t);
			put(idx[2], out);
			put(idx[1], out + 2);
			put(idx[0], out + 4);
		}
		return;
	}

	if (count == 0)
	{
		return;
	}
	std::uint32_t i = 0;
	for (;;)
	{
		put(i + 2, out);
		put(i + 1, out + 2);
		put(i, out + 4);
		i += 3;
		if (count <= i)
		{
			break;
		}
		out += 6;
	}
}

}  // namespace dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_DH2_HELPERS_HPP
