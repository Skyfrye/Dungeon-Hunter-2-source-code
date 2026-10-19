// Batch v1-vendor-gameswf-pack1-607ee7-0 (vendor-gameswf, part 1 of 1). Fourteen binary functions:
//   gameswf::hash<character*, filter_cache_infos, fixed_size_hash<character*> >::set_raw_capacity(int)  0x7586b8
//   gameswf::effect::~effect()                                    0x758af8 (D1)
//   gameswf::generic_character::is(int) const                     0x7599cc
//   gameswf::generic_character::hit_test(float, float)            0x7599f8
//   gameswf::generic_character::generic_character(...)            0x75b75c
//   gameswf::generic_character::~generic_character()              0x75dde0 (D1), 0x75de28 (D0)
//   gameswf::bitmap_character::is(int) const                      0x759a14
//   gameswf::bitmap_character::point_test_local(float, float)     0x759a30
//   gameswf::bitmap_character::get_bound(gameswf::rect*)          0x759aa8
//   gameswf::bitmap_character::~bitmap_character()               0x75df40 (D1), 0x75dfd8 (D0)
//   gameswf::bitmap_character::bitmap_character(...)              0x75eaa4 (clone, rect argument NULL), 0x7ae1c8
//
// Compiled here: the helper arithmetic in vendor-gameswf/gameswf_character_dh2_helpers.hpp (tested) and the member
// bodies. filter_cache_infos (vendor-gameswf/filter_engine.hpp), gameswf::effect (effect.hpp) and gameswf::filter
// (filter.hpp) are declared in the tree.
//
// Layouts (settled in gameswf_impl.h, the sprite/text/button agent; the effect and hash rows below are the integrator's):
//   generic_character (0xa4 bytes): smart_ptr<character_def> m_def at +0xa0 (the pool code sets it with
//     smart_ptr<character_def>::set_ref). The byte at +0x9d is character::m_need_advance, which the constructor clears.
//     The base character is the 4-argument form (player, parent, id, kind 3).
//   bitmap_character (0x34 bytes): smart_ptr<bitmap_info> m_bitmap_info at +0x20, rect m_rect at +0x24..+0x33
//     (x_min, x_max, y_min, y_max). The bitmap_character_def base has the 0x20-byte character_def layout.
//   effect: array<filter> m_filters at +0x04 (buffer, size at +0x08, capacity), 20 bytes in all. The
//     filter element is 44 bytes. effect.hpp (filter_engine batch) describes that 44-byte element, not effect.
//
// Upstream definitions replaced by the bodies below are wrapped in #if 0 in gameswf_impl.h and gameswf_impl.cpp.

#include "vendor-gameswf/gameswf_character_dh2_helpers.hpp"

#include <cstring>

#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::free_internal, gameswf::malloc_internal

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_impl.h"

namespace gameswf {

// ---- generic_character ----

// 0x7599cc gameswf::generic_character::is(int) const
// binary: return a2 == 3 || a2 == 1 || a2 == 0. A DH2 override of character::is (vtable +0x08).
bool generic_character::is(int class_id) const {
	return dh2_character::generic_is(class_id);
}

// 0x7599f8 gameswf::generic_character::hit_test(float, float)
// binary: return (*(vtable + 0x68))(this, x, y) != 0. Slot +0x68 is the two-float overload
// get_topmost_mouse_entity(float, float) (0x75b6fc), which returns a character* (this, or NULL), not a bool.
// The test is against NULL. This overrides character::hit_test (vtable +0x6c).
bool generic_character::hit_test(float x, float y) {
	return get_topmost_mouse_entity(x, y) != nullptr;
}

// 0x75b75c gameswf::generic_character::generic_character(gameswf::player*, gameswf::character_def*, gameswf::character*, int)
// binary: character(player, parent, id, 3) (the 4-argument character constructor, C1 0x754a1c); vptr = generic vtable;
// m_def (+0xa0) = def; if def is not NULL, def->add_ref(); the byte at +0x9d = 0.
// The smart_ptr member counts the definition; the byte at +0x9d is m_need_advance (the character constructor sets it).
generic_character::generic_character(player* p, character_def* def, character* parent, int id)
	: character(p, parent, id, AS_GENERIC_CHARACTER),
	  m_def(def)
{
	m_need_advance = false;	// +0x9d
}

// 0x75dde0 gameswf::generic_character::~generic_character()   [D1, complete object]
// binary: vptr = generic vtable; if (m_def) ref_counted::drop_ref(m_def); then character::~character().
// The base destructor runs after this body, as in C++.
// 0x75de28 is the deleting destructor (D0): it runs D1 and then operator delete. The compiler generates it
// from this definition, so it is not rebuilt (skipped in the ledger). The smart_ptr member drops the definition.
generic_character::~generic_character() {
}

// ---- bitmap_character ----

// 0x759a14 gameswf::bitmap_character::is(int) const
// binary: return a2 == 33 || a2 == 10. A DH2 override of character::is (vtable +0x08).
bool bitmap_character::is(int class_id) const {
	return dh2_character::bitmap_is(class_id);
}

// 0x759a30 gameswf::bitmap_character::point_test_local(float, float)
// binary: rejects (returns false) when x < +0x24, x > +0x28, y < +0x2c or y > +0x30 (the stored rect), using
// __aeabi_fcmplt / __aeabi_fcmpgt. A NaN coordinate is not rejected, so the result is true. The rule lives in
// dh2_character::bitmap_point_test. The upstream body in gameswf_impl.cpp recomputes the rect from the bitmap
// size and calls rect::point_test; this replaces it.
bool bitmap_character::point_test_local(float x, float y) {
	return dh2_character::bitmap_point_test(m_rect.m_x_min, m_rect.m_x_max, m_rect.m_y_min, m_rect.m_y_max, x, y);
}

// 0x759aa8 gameswf::bitmap_character::get_bound(gameswf::rect*)
// binary: the four words at +0x24..+0x33 are copied to *bound (no recomputation). Upstream recomputes the
// rect from the bitmap size, so the upstream body in gameswf_impl.cpp is wrapped in #if 0.
void bitmap_character::get_bound(rect* bound) {
	bound->m_x_min = m_rect.m_x_min;
	bound->m_x_max = m_rect.m_x_max;
	bound->m_y_min = m_rect.m_y_min;
	bound->m_y_max = m_rect.m_y_max;
}

// 0x75df40 gameswf::bitmap_character::~bitmap_character()   [D1, complete object]
// binary: vptr = bitmap vtable (_ZTVN7gameswf16bitmap_characterE+8); if (m_bitmap_info) ref_counted::drop_ref(m_bitmap_info);
// then vptr = bitmap_character_def vtable (_ZTVN7gameswf20bitmap_character_defE+8, off_98FC30) and a direct call to
// character_def::~character_def (D2). In C++ the base destructor supplies that second vptr store.
// 0x75dfd8 is the deleting destructor (D0): compiler-generated, skipped. The smart_ptr member drops the bitmap.
bitmap_character::~bitmap_character() {
}

// 0x7ae1c8 gameswf::bitmap_character::bitmap_character(gameswf::player*, gameswf::bitmap_info*, gameswf::rect*)
// 0x75eaa4 gameswf::bitmap_character::bitmap_character(gameswf::player*, gameswf::bitmap_info*, gameswf::rect*) [clone.1]
// The clone is this same constructor with the rect argument NULL (the compiler folded the test). It has no
// separate C++ definition; see its ledger row.
// binary order: character_def(player); m_bitmap_info (+0x20) = bi; vptr = bitmap vtable; if (bi) bi->add_ref();
// m_rect.x_min = 0 (+0x24); m_rect.x_max = twips(bi->get_width()) (+0x28, vtable +0x24);
// m_rect.y_min = 0 (+0x2c); m_rect.y_max = twips(bi->get_height()) (+0x30, vtable +0x28);
// then, if r is not NULL, the four words of *r are copied over +0x24..+0x33.
// The direct base is bitmap_character_def (upstream: bitmap_character_def : character_def). Its constructor only forwards to
// character_def(player) and sets a vptr that the bitmap_character vptr below overwrites, so the binary's direct
// call to character_def(player) has the same effect. The smart_ptr member counts the bitmap.
bitmap_character::bitmap_character(player* p, bitmap_info* bi, rect* r)
	: bitmap_character_def(p),
	  m_bitmap_info(bi)
{
	m_rect.m_x_min = 0.0f;
	m_rect.m_x_max = dh2_character::pixels_to_twips(m_bitmap_info->get_width());
	m_rect.m_y_min = 0.0f;
	m_rect.m_y_max = dh2_character::pixels_to_twips(m_bitmap_info->get_height());
	if (r != nullptr) {
		m_rect.m_x_min = r->m_x_min;
		m_rect.m_x_max = r->m_x_max;
		m_rect.m_y_min = r->m_y_min;
		m_rect.m_y_max = r->m_y_max;
	}
}

// 0x75aea0 gameswf::bitmap_character::display(gameswf::character*)
// Draws the stored rectangle with the whole bitmap (uv 0..1) through the render handler (vtable +0x80, draw_bitmap), with the
// character's world matrix and the world colour transform applied to white (the same colour the rgba default constructor
// gives). Nothing is drawn without a render handler. r1714 recomputes the rectangle from the bitmap size.
void bitmap_character::display(character* ch) {
	rect uv_coords;
	uv_coords.m_x_min = 0.0f;
	uv_coords.m_x_max = 1.0f;
	uv_coords.m_y_min = 0.0f;
	uv_coords.m_y_max = 1.0f;

	cxform cx = *ch->get_world_cxform();
	rgba color = cx.transform(rgba());
	matrix m = *ch->get_world_matrix();
	if (s_render_handler) {
		s_render_handler->draw_bitmap(m, m_bitmap_info.get_ptr(), m_rect, uv_coords, color);
	}
}

// 0x759abc gameswf::bitmap_character::get_bitmap_info()
bitmap_info* bitmap_character::get_bitmap_info() {
	return m_bitmap_info.get_ptr();
}

}  // namespace gameswf

// The layout of the table entry is the binary's, not the upstream entry struct (upstream entry: int next, size_t
// hash, key, value; the binary: next at +0, hash at +4, key at +8, value at +12, 40 bytes per entry, hash value -1
// marks a tombstone). filter_cache_infos (28 bytes) and the specialization's declaration are in filter_engine.hpp.
#include "vendor-gameswf/filter_engine.hpp"

// 0x7586b8 gameswf::hash<gameswf::character*, gameswf::filter_cache_infos, gameswf::fixed_size_hash<gameswf::character*> >::set_raw_capacity(int)
// (hash is global in the vendored source, so this specialization sits outside namespace gameswf.)
// binary: a request <= 0 clears the table (clear on this). Otherwise, if the table is missing or its size
// differs from the rule in dh2_character::hash_raw_capacity (divisor dh2_character::kHashCapacityLn2 = float
// 0x3F317218, not 0.69315f), a new table is allocated (8 * (5 * size + 1)
// bytes, hint 0) with every entry's next = -2. Live entries (next != -2 and hash != -1) are added to the new
// table, then cleared (next = -2, hash = 0). The old table is freed with 8 * (5 * (mask + 1) + 1) bytes. The
// new table is then handed to this, and clear() runs on the temporary, whose table is now NULL.
// Declared in vendor-gameswf/filter_engine.hpp.
template <>
void hash<gameswf::character*, gameswf::filter_cache_infos, fixed_size_hash<gameswf::character*> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int size = gameswf::dh2_character::hash_raw_capacity(new_size);
	if (m_table != nullptr && size == m_table->m_size_mask + 1) {
		return;
	}
	hash<gameswf::character*, gameswf::filter_cache_infos, fixed_size_hash<gameswf::character*> > fresh;
	fresh.m_table = static_cast<table*>(gameswf::malloc_internal(gameswf::dh2_character::hash_table_bytes(size), static_cast<swf::MemHint>(0)));
	fresh.m_table->m_entry_count = 0;
	fresh.m_table->m_size_mask = size - 1;
	for (int i = 0; i < size; i++) {
		fresh.E(i).m_next_in_chain = -2;
	}
	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				fresh.add(e.first, e.second);
				e.m_next_in_chain = -2;  // binary: *v11 = -2
				e.m_hash_value = 0;      // binary: v11[1] = 0
			}
		}
		gameswf::free_internal(m_table, gameswf::dh2_character::hash_table_bytes(m_table->m_size_mask + 1));
	}
	m_table = fresh.m_table;
	fresh.m_table = nullptr;
	fresh.clear();  // binary: clear() on the temporary, whose table is NULL here
}

// 0x758af8 gameswf::effect::~effect()   [D1; no base, not polymorphic: no vptr]
// binary: n = m_filters.m_size (+0x08). If n < 0, each of the -n elements at index n .. -1 has its 44 bytes zeroed. The
// count is then set to 0 and m_filters.reserve(0) runs, which frees the buffer. The negative-count loop is the inlined
// tail of resize(0) and is only reached when the count is negative, which an array never has; array::resize(0) and
// reserve(0) are the same sequence.
namespace gameswf {
effect::~effect() {
	m_filters.resize(0);
	m_filters.reserve(0);
}
}  // namespace gameswf
