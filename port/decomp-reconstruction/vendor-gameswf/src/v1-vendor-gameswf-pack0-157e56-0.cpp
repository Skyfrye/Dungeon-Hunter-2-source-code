// Batch v1-vendor-gameswf-pack0-157e56-0 (vendor-gameswf, gameswf r1714 with Gameloft changes).
//
// Compiled by default:
//   matrix::concatenate, get_x_scale, set_lerp, transform(rect*), set_inverse  (DH2 bodies; the r1714
//       definitions in upstream/gameswf-r1714/gameswf/gameswf_types.cpp are wrapped in #if 0, and
//       set_lerp and set_inverse return bool in gameswf.h)
//   smart_ptr_proxy::operator=(weak_proxy*)              (include/vendor-gameswf/smart_ptr_proxy.hpp)
//   permanent_string::~permanent_string()                (inline in include/vendor-gameswf/permanent_string.hpp)
//   filter_texture_cache::get_region_size_requirement_cellsize (include/vendor-gameswf/filter_texture_cache.hpp)
//
// Also compiled: character::custom ctor and dtor (the members are declared at the binary's offsets in
//   gameswf_character.h, so their default constructors write what the binary writes) and
//   display_list::remove_display_object.
//
// Also here: display_list::remove_display_object(character*), the string_pointer hash rehash (0x755f94) and
//   filter_texture_cache::get_character_region (0x758a80).
// No body here: display_list::construct and ~display_list (vendor-gameswf/src/v1-vendor-gameswf-gameswf_dlist-d5206d-2.cpp) and
//   weak_ptr<character>::get_ptr (the upstream template of base/weak_ptr.h).
//
// Skipped (compiler clones, body identical to a function in this batch or in another batch):
//   0x43c404, 0x7c1330 smart_ptr_proxy::operator=(weak_proxy*) [clone] (argument folded to nullptr)
//   0x421f74, 0x42da98 weak_ptr<character>::operator=(character*) [clone] (argument folded to nullptr)

#include <cfloat>
#include <cmath>
#include <cstdint>

#include "gameswf/gameswf.h"
#include "vendor-gameswf/filter_texture_cache.hpp"
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity
#include "vendor-gameswf/permanent_string_cache.hpp"  // stringi_pointer, string_pointer_hash_functor
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/permanent_string.hpp"
#include "vendor-gameswf/smart_ptr_proxy.hpp"

#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_dlist.h"

namespace gameswf {
namespace {

// The binary's range check on float results: __aeabi_fcmpge against -FLT_MAX (0xFF7FFFFF), then
// __aeabi_fcmple against +FLT_MAX (0x7F7FFFFF). A value outside [-FLT_MAX, +FLT_MAX] becomes 0. NaN also
// becomes 0, because the fcmpge is false for NaN. This is the test tu_float::operator= applies in gameswf.h.
inline bool in_range(float v)
{
	return v >= -FLT_MAX && v <= FLT_MAX;
}

inline float range_or_zero(float v)
{
	return in_range(v) ? v : 0.0f;
}

}  // namespace

// 0x4165b8 gameswf::matrix::concatenate(gameswf::matrix const&)
// Binary: m happens first, then *this. Each result is range-checked, then all six are stored.
// Result order in the binary: r00, r10, r01, r11, r02, r12.
void matrix::concatenate(const matrix& m)
{
	const float a00 = m_[0][0], a01 = m_[0][1], a02 = m_[0][2];
	const float a10 = m_[1][0], a11 = m_[1][1], a12 = m_[1][2];
	const float b00 = m.m_[0][0], b01 = m.m_[0][1], b02 = m.m_[0][2];
	const float b10 = m.m_[1][0], b11 = m.m_[1][1], b12 = m.m_[1][2];

	const float r00 = range_or_zero((a00 * b00) + (a01 * b10));
	const float r10 = range_or_zero((a10 * b00) + (a11 * b10));
	const float r01 = range_or_zero((a00 * b01) + (a01 * b11));
	const float r11 = range_or_zero((a10 * b01) + (a11 * b11));
	const float r02 = range_or_zero(((a00 * b02) + (a01 * b12)) + a02);
	const float r12 = range_or_zero(((a10 * b02) + (a11 * b12)) + a12);

	m_[0][0] = r00;
	m_[1][0] = r10;
	m_[0][1] = r01;
	m_[1][1] = r11;
	m_[0][2] = r02;
	m_[1][2] = r12;
}

// 0x75329c gameswf::matrix::get_x_scale() const
// Binary: sqrt(m00^2 + m01^2), the norm of row 0, negated when the determinant is below zero. The r1714
// source uses column 0 (m00, m10) and differs.
float matrix::get_x_scale() const
{
	const float m00 = m_[0][0], m01 = m_[0][1];
	const float m10 = m_[1][0], m11 = m_[1][1];

	float scale = std::sqrt((m00 * m00) + (m01 * m01));
	if (((m00 * m11) - (m10 * m01)) < 0.0f)
	{
		scale = -scale;
	}
	return scale;
}

// 0x7947b8 gameswf::matrix::set_lerp(gameswf::matrix const&, gameswf::matrix const&, float)
// Each element is a + t * (b - a), range-checked. Returns whether the last element (m12, before the
// check) is in range. Every element reads only its own index, so the reads happen before the stores.
bool matrix::set_lerp(const matrix& m1, const matrix& m2, float t)
{
	const float v00 = m1.m_[0][0] + (t * (m2.m_[0][0] - m1.m_[0][0]));
	const float v10 = m1.m_[1][0] + (t * (m2.m_[1][0] - m1.m_[1][0]));
	const float v01 = m1.m_[0][1] + (t * (m2.m_[0][1] - m1.m_[0][1]));
	const float v11 = m1.m_[1][1] + (t * (m2.m_[1][1] - m1.m_[1][1]));
	const float v02 = m1.m_[0][2] + (t * (m2.m_[0][2] - m1.m_[0][2]));
	const float v12 = m1.m_[1][2] + (t * (m2.m_[1][2] - m1.m_[1][2]));

	m_[0][0] = range_or_zero(v00);
	m_[1][0] = range_or_zero(v10);
	m_[0][1] = range_or_zero(v01);
	m_[1][1] = range_or_zero(v11);
	m_[0][2] = range_or_zero(v02);
	m_[1][2] = range_or_zero(v12);

	return in_range(v12);
}

// 0x794a14 gameswf::matrix::transform(gameswf::rect*) const
// Replaces the rect with the box of its four transformed corners. Corners in the binary's order: A (x0,y0),
// B (x1,y0), C (x0,y1), D (x1,y1). The binary's last compare (max y of A, B, D < y of C) is left in r0 and
// is not a designed return, so the function is void (as in the r1714 source).
void matrix::transform(rect* bound) const
{
	const float m00 = m_[0][0], m01 = m_[0][1], m02 = m_[0][2];
	const float m10 = m_[1][0], m11 = m_[1][1], m12 = m_[1][2];

	const float x0 = bound->m_x_min, x1 = bound->m_x_max;
	const float y0 = bound->m_y_min, y1 = bound->m_y_max;

	const float xA = ((x0 * m00) + (y0 * m01)) + m02;
	const float yA = ((x0 * m10) + (y0 * m11)) + m12;
	const float xB = ((x1 * m00) + (y0 * m01)) + m02;
	const float yB = ((x1 * m10) + (y0 * m11)) + m12;
	const float xC = ((x0 * m00) + (y1 * m01)) + m02;
	const float yC = ((x0 * m10) + (y1 * m11)) + m12;
	const float xD = ((x1 * m00) + (y1 * m01)) + m02;
	const float yD = ((x1 * m10) + (y1 * m11)) + m12;

	// Box of A and B.
	float mnx = (xA < xB) ? xA : xB;
	float mxx = (xA < xB) ? xB : xA;
	float mny = (yA < yB) ? yA : yB;
	float mxy = (yA < yB) ? yB : yA;

	// Fold in D, then C, with the binary's compare order.
	mnx = (mnx >= xD) ? xD : mnx;
	mny = (mny >= yD) ? yD : mny;
	mxx = (mxx >= xD) ? mxx : xD;
	mxy = (mxy >= yD) ? mxy : yD;
	mnx = (mnx >= xC) ? xC : mnx;
	mny = (mny >= yC) ? yC : mny;
	mxx = (mxx >= xC) ? mxx : xC;
	mxy = (mxy >= yC) ? mxy : yC;

	bound->m_x_min = mnx;
	bound->m_x_max = mxx;
	bound->m_y_min = mny;
	bound->m_y_max = mxy;
}

// 0x795adc gameswf::matrix::set_inverse(gameswf::matrix const&)
// Inverse of [[m00 m01 m02] [m10 m11 m12]]. A zero determinant does not give the identity: the result is
// [[1 0 -m02] [0 1 -m12]]. Otherwise the inverse is computed with the range-checked intermediates the
// binary uses. Returns whether the last element (before the check) is in range.
bool matrix::set_inverse(const matrix& m)
{
	const float m00 = m.m_[0][0], m01 = m.m_[0][1], m02 = m.m_[0][2];
	const float m10 = m.m_[1][0], m11 = m.m_[1][1], m12 = m.m_[1][2];

	const float det = (m11 * m00) - (m01 * m10);
	if (det == 0.0f)
	{
		const float v02 = -m02;
		const float v12 = -m12;
		m_[0][0] = 1.0f;
		m_[0][1] = 0.0f;
		m_[1][0] = 0.0f;
		m_[1][1] = 1.0f;
		m_[0][2] = range_or_zero(v02);
		m_[1][2] = range_or_zero(v12);
		return in_range(v12);
	}

	const float inv = 1.0f / det;
	const float v00 = range_or_zero(inv * m11);     // m11 / det
	const float v11 = range_or_zero(inv * m00);     // m00 / det
	const float v01 = range_or_zero((-m01) * inv);  // -m01 / det
	const float v10 = range_or_zero((-m10) * inv);  // -m10 / det
	const float v02 = range_or_zero(-((v00 * m02) + (v01 * m12)));
	const float v12 = -((v10 * m02) + (v11 * m12));

	m_[0][0] = v00;
	m_[1][1] = v11;
	m_[0][1] = v01;
	m_[1][0] = v10;
	m_[0][2] = v02;
	m_[1][2] = range_or_zero(v12);
	return in_range(v12);
}

// 0x41fe84 gameswf::smart_ptr_proxy::operator=(gameswf::weak_proxy*)
// The DH2 weak_proxy count is the int at +0. Release at zero is free_internal, not delete.
void smart_ptr_proxy::operator=(weak_proxy* p)
{
	weak_proxy* old = m_proxy;
	if (p != old)
	{
		if (old != nullptr)
		{
			if (old->m_ref_count-- == 1)
			{
				free_internal(old, 0);
			}
		}
		m_proxy = p;
		if (p != nullptr)
		{
			++p->m_ref_count;
		}
	}
}

// 0x752e64 gameswf::permanent_string::~permanent_string()
// Defined inline in include/vendor-gameswf/permanent_string.hpp: permanent_string is a tu_string, and ~tu_string frees the
// heap text exactly as the binary does (0x41fed8).

// 0x755f94 gameswf::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int)
// The display list's name table. The same rehash as the other DH2 tables (minimum 4 entries, power of two from the
// single-precision logf; 16-byte entries with the one-word key at +8 and the character pointer at +12; each live entry
// is add()ed to the new table and cleared), through the shared body.
// The specialization is of the global ::hash, so it is defined outside namespace gameswf (clang requires the enclosing scope).
}  // namespace gameswf
template <>
void ::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int new_size)
{
	dh2_hash_access::set_raw_capacity(*this, new_size);
}
namespace gameswf {

// 0x758a80 gameswf::filter_texture_cache::get_character_region(gameswf::character*, int, int)
// The key is four words: the character pointer, its sign extension (zero for the pointers of the 32-bit build; the
// host key keeps the pointer at pointer width) and two zero words. A hit returns the stored region (the table value,
// whatever it is). A miss rounds the size up to whole cells and takes a free region of that size; the table is not
// changed here (filter_engine::run stores the region in its own cache).
texture_cache::region* filter_texture_cache::get_character_region(character* ch, int width, int height)
{
	int w = width;
	int h = height;
	key lookup;
	lookup.unk_0 = reinterpret_cast<std::uintptr_t>(ch);
	region* found = nullptr;
	if (m_used.get(lookup, &found))
	{
		return found;
	}
	get_region_size_requirement_cellsize(w, h);
	return find_available_region(w, h);
}

// 0x756cdc gameswf::filter_texture_cache::get_region_size_requirement_cellsize(int&, int&)
// Both sizes are rounded up to whole 16-pixel cells, minimum 16. Returns the remainder of the original
// height (the binary computes it before the height is stored).
int filter_texture_cache::get_region_size_requirement_cellsize(int& width, int& height)
{
	int cells = width / 16;
	if (width % 16 > 0)
	{
		++cells;
	}
	int w = 16 * cells;
	if (w < 16)
	{
		w = 16;
	}
	width = w;

	const int remainder = height % 16;
	int cells_h = height / 16;
	if (remainder > 0)
	{
		++cells_h;
	}
	int h = 16 * cells_h;
	if (h < 16)
	{
		h = 16;
	}
	height = h;

	// The binary repeats the minimum clamp on both sizes. It is a no-op after the rounding above.
	if (width < 16)
	{
		width = 16;
	}
	if (height < 16)
	{
		height = 16;
	}
	return remainder;
}

// 0x412160 gameswf::character::custom::custom()
// The members are declared in gameswf_character.h at the offsets of the binary: an identity colour transform
// (+0x00), an identity matrix (+0x20), an empty effect (+0x38, blend mode 0 and an empty filter array), an empty
// tu_string name (+0x4c, hash cache "not computed" with the interned bit clear) and three zeroed words (+0x60 the
// display callback, +0x64 its user pointer, +0x68 the scene node). The default constructors of those members write
// exactly what the binary writes.
character::custom::custom() :
	m_display_callback(nullptr),
	m_display_callback_user_ptr(nullptr),
	m_scene_node(nullptr)
{
}

// 0x7533c0 gameswf::character::custom::~custom()
// The binary frees the name's heap buffer (flag 0xff at +0x4c, pointer at +0x58) and then empties the filter array
// at +0x3c (it zeroes the elements of a negative count, then reserve(0)). The members do the same in reverse
// declaration order: m_name, then m_effect (effect::~effect), then the matrix and the colour transform.
character::custom::~custom()
{
}

// 0x756564 gameswf::display_list::remove_display_object(gameswf::character*)
// The binary returns the index from get_character_by_ptr when it is negative (an int function
// in Hex-Rays), and otherwise the r0 of the tail call to remove(). Upstream remove is void, so the
// function is void here and the negative-index return value is dropped.
void display_list::remove_display_object(character* ch)
{
	const int index = get_character_by_ptr(ch);
	if (index >= 0)
	{
		remove(index);
	}
}

}  // namespace gameswf
