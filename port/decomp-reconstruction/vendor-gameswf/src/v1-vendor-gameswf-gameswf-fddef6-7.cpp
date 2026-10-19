// Batch v1-vendor-gameswf-gameswf-fddef6-7 (vendor-gameswf, part 8 of 8). Five binary symbols, one ledger row each
// (vendor-gameswf ledger).
//
// Reconstructed and compiled here (1):
//   gameswf::destruct<gameswf::image_alpha>(gameswf::image_alpha const*)    0x7d0444
//
// Partial, compiled and tested (1):
//   gameswf::get_color_transform_member(gameswf::tu_stringi const&)         0x7da144
//     The table build and every lookup result follow the binary (tests/v1-vendor-gameswf-gameswf-fddef6-7_test.cpp).
//     Not reproduced: the binary caches the key's hash in the key (tu_stringi +0x10, written through the const
//     reference), and it probes its own table inline. Upstream tu_stringi has no cache field, so the probe is
//     hash::get (upstream find_index, the same functor on both sides).
//
// Also compiled here (3):
//   gameswf::create_render_handler_irrlicht(void*)                          0x7d6658
//     render_handler_glitch is concrete now that gameswf::render_handler carries the DH2 vtable.
//   gameswf::transform_point(gameswf::as_object*, gameswf::matrix const&)   0x7c1574 (Gameloft, not in upstream)
//   gameswf::mouse_event_init(gameswf::player*)                             0x7daea4
//     (the CLICK value is the interned "click" of the player's permanent string cache)
//
// Vtable slots (tools/decomp_vtable.py gameswf::as_object): +0x1c set_member(tu_stringi const&, as_value const&),
// +0x20 get_member(tu_stringi const&, as_value*). transform_point uses those two.
//
// Layout note: the binary's allocations use the 32-bit object sizes (0x494 for render_handler_glitch, 0x38 for
// as_mouse_event). The host allocations use sizeof(T), as in batch fddef6-5 (create_alpha).

#include <cstddef>
#include <new>

#include "vendor-gameswf/as_color_transform_dh2.hpp"  // gameswf::as_color_transform_member, get_color_transform_member, the set_raw_capacity specialization
#include "vendor-gameswf/gameswf_alloc.hpp"          // swf::MemHint, swf::MEM_UNRECOVERED, free_internal
#include "vendor-gameswf/image_alpha.hpp"            // gameswf::image_alpha
#include "vendor-gameswf/ref_counted.hpp"            // gameswf::destruct<T> (primary template: fddef6-1)
#include "vendor-gameswf/render_handler_glitch.hpp"  // render_handler_glitch and its constructor (fd003c-1)

#include "gameswf/gameswf_as_classes/as_mouse_event.h"  // gameswf::as_mouse_event, mouse_event_init (upstream)
#include "gameswf/gameswf_object.h"                     // gameswf::as_object (upstream, with DH2 declarations)
#include "vendor-gameswf/as_value.hpp"                  // gameswf::as_value (DH2 layout)

// The binary's operator new(size, swf::MemHint) (core-platform/src/memory.cpp:141). core-platform/memory.hpp is not
// included: it clashes with the glitch headers that render_handler_glitch.hpp uses (see fd003c-0).
void* operator new(std::size_t size, swf::MemHint hint);

namespace gameswf {

// 0x7d0444 gameswf::destruct<gameswf::image_alpha>(gameswf::image_alpha const*)
// Binary: if (a1) { call vtable slot 0 (the complete-object destructor, D1); free_internal(a1); }. The second argument of
// free_internal is not read, and 0 is passed (as in fddef6-1). The primary template is defined in fddef6-1, which this
// TU does not see, so the instance for image_alpha is an explicit specialization here.
template <>
void destruct<image_alpha>(const image_alpha* p) {
	if (p != nullptr) {
		p->~image_alpha();
		free_internal(const_cast<image_alpha*>(p), 0);
	}
}


// 0x7d6658 gameswf::create_render_handler_irrlicht(void*)
// Binary: operator new(0x494, MemHint 0), then render_handler_glitch's constructor with the argument as the driver,
// then return the object. The argument is the IVideoDriver pointer (the Hex-Rays view types it as the object's this).
render_handler_glitch* create_render_handler_irrlicht(void* driver) {
	void* mem = ::operator new(sizeof(render_handler_glitch), swf::MEM_UNRECOVERED);
	return new (mem) render_handler_glitch(static_cast<glitch::video::IVideoDriver*>(driver));
}


// ---- get_color_transform_member (0x7da144) ----

// The member table. In the binary it is a stringi_hash<as_color_transform_member> (its destructor, 0x7d9d88, is the
// implicit one). The binary's first test is "table pointer null, or entry count 0", which is hash::is_empty() upstream.
static ::stringi_hash<as_color_transform_member> s_color_transform_member_map;

// 0x7da144 gameswf::get_color_transform_member(gameswf::tu_stringi const&)
// Build: when the table is empty, set the raw capacity to 16 and add the nine names in binary order
// (redMultiplier=1 .. rgb=9). If the table is still empty after that, the binary returns invalidMember (10). The
// private set_raw_capacity is reached through set_capacity(11): (11 * 3) / 2 = 16, so the table is the same.
// Lookup: the binary probes its own table inline and returns the stored value or invalidMember. This body calls hash::get,
// which gives the same value for every key. The binary also caches the key's hash in the key (tu_string +0x10 of the
// tu_stringi), which the DH2 tu_string::get_hashi does when the hash functor asks for it.
as_color_transform_member get_color_transform_member(const ::tu_stringi& name) {
	if (s_color_transform_member_map.is_empty()) {
		s_color_transform_member_map.set_capacity(11);
		s_color_transform_member_map.add(::tu_stringi("redMultiplier"), redMultiplier);
		s_color_transform_member_map.add(::tu_stringi("greenMultiplier"), greenMultiplier);
		s_color_transform_member_map.add(::tu_stringi("blueMultiplier"), blueMultiplier);
		s_color_transform_member_map.add(::tu_stringi("alphaMultiplier"), alphaMultiplier);
		s_color_transform_member_map.add(::tu_stringi("redOffset"), redOffset);
		s_color_transform_member_map.add(::tu_stringi("greenOffset"), greenOffset);
		s_color_transform_member_map.add(::tu_stringi("blueOffset"), blueOffset);
		s_color_transform_member_map.add(::tu_stringi("alphaOffset"), alphaOffset);
		s_color_transform_member_map.add(::tu_stringi("rgb"), rgb);
		if (s_color_transform_member_map.is_empty()) {
			return invalidMember;
		}
	}

	as_color_transform_member result = invalidMember;
	s_color_transform_member_map.get(name, &result);  // leaves result alone when the name is absent
	return result;
}


// 0x7c1574 gameswf::transform_point(gameswf::as_object*, gameswf::matrix const&)
// Binary order: start x and y as number 0, read x and y
// with get_member (+0x20), take each as (float)(value * 20.0) (twips), apply the matrix (row 0 gives the x result, row 1
// the y result, each with the translation last), then write x and y back with set_member (+0x1c), each as
// (float)(result / 20.0) stored in a double. The matrix is read as its six floats in order a, b, tx, c, d, ty. The
// Hex-Rays view has an unused third argument; the symbol takes two.
void transform_point(as_object* obj, const matrix& m) {
	if (obj == nullptr) {
		return;
	}

	as_value x_value;
	x_value.set_double(0.0);
	obj->get_member(::tu_stringi("x"), &x_value);
	as_value y_value;
	y_value.set_double(0.0);
	obj->get_member(::tu_stringi("y"), &y_value);

	const float px = static_cast<float>(x_value.to_number() * 20.0);
	const float py = static_cast<float>(y_value.to_number() * 20.0);

	const float m00 = m.m_[0][0];  // binary a2[0]
	const float m01 = m.m_[0][1];  // binary a2[1]
	const float m02 = m.m_[0][2];  // binary a2[2]
	const float m10 = m.m_[1][0];  // binary a2[3]
	const float m11 = m.m_[1][1];  // binary a2[4]
	const float m12 = m.m_[1][2];  // binary a2[5]

	const float x_product_a = px * m00;
	const float x_product_b = py * m01;
	const float rx = (x_product_a + x_product_b) + m02;  // binary v15
	const float y_product_a = px * m10;
	const float y_product_b = py * m11;
	const float ry = (y_product_a + y_product_b) + m12;  // binary v16

	as_value new_x;
	new_x.set_double(static_cast<double>(static_cast<float>(rx / 20.0)));
	obj->set_member(::tu_stringi("x"), new_x);
	as_value new_y;
	new_y.set_double(static_cast<double>(static_cast<float>(ry / 20.0)));
	obj->set_member(::tu_stringi("y"), new_y);
}

// 0x7daea4 gameswf::mouse_event_init(gameswf::player*)
// Binary: operator new(0x38, MemHint 0), as_mouse_event(player) (0x7dae08), then builtin_member("CLICK", v) where v
// is set to the interned "click" from the player's permanent_string_cache (player +0x2c, player::m_permanent_strings):
// the member's value points at the cache's string instead of holding a copy.
as_mouse_event* mouse_event_init(player* p) {
	as_mouse_event* obj = new (::operator new(sizeof(as_mouse_event), swf::MEM_UNRECOVERED)) as_mouse_event(p);

	as_value click_value;
	click_value.set_tu_string(*p->m_permanent_strings.get(::tu_string("click")));
	obj->builtin_member(::tu_string("CLICK"), click_value);
	return obj;
}


}  // namespace gameswf
