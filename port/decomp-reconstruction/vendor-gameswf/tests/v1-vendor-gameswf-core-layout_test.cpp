// Test for the settled core layouts of the vendored gameswf (integrator pass, no batch).
//
// The host build has 8-byte pointers, so the 32-bit offsets of the binary cannot be asserted. What can be checked on any
// width: the order of the members, the sizes of the fixed-size members between them (cxform 32 bytes, matrix 24 bytes,
// tu_string 20 bytes plus the host pointer padding, effect 4 bytes plus an array) and the behaviour of the container
// changes: array<T> keeps a borrowed flag that stops reserve(), its resize never shrinks the buffer, gc_ptr is a counted
// pointer.
//
// Stand-ins for the upstream units that Track B does not build (gameswf_types.cpp: matrix and cxform constructors).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp

#include <cstddef>
#include <cstdio>

#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_object.h"

// array<T> reaches its members through this struct (friend in base/container.h).
struct dh2_array_access
{
	template <class T>
	static bool borrowed(const array<T>& a) { return a.m_borrowed; }
	template <class T>
	static void set_borrowed(array<T>& a, bool b) { a.m_borrowed = b; }
	template <class T>
	static int capacity(const array<T>& a) { return a.m_buffer_size; }
};

namespace gameswf {
effect::~effect() { m_filters.resize(0); m_filters.reserve(0); }  // the body of pack1 (0x758af8), not linked here
matrix matrix::identity;
cxform cxform::identity;
matrix::matrix() { set_identity(); }
void matrix::set_identity()
{
	m_[0][0] = 1.0f; m_[0][1] = 0.0f; m_[0][2] = 0.0f;
	m_[1][0] = 0.0f; m_[1][1] = 1.0f; m_[1][2] = 0.0f;
}
cxform::cxform()
{
	for (int i = 0; i < 4; ++i) { m_[i][0] = 1.0f; m_[i][1] = 0.0f; }
}
}  // namespace gameswf

namespace {

int g_failures = 0;

void check(bool ok, const char* what, int line)
{
	if (!ok) {
		std::printf("FAIL line %d: %s\n", line, what);
		++g_failures;
	}
}

#define CHECK(expr) check((expr), #expr, __LINE__)

#pragma GCC diagnostic ignored "-Winvalid-offsetof"

template <class T, class M>
std::size_t off(M T::*member)
{
	return reinterpret_cast<std::size_t>(&(static_cast<T*>(nullptr)->*member));
}

// array<T>: 16 bytes in the binary (buffer, size, capacity, borrowed byte). On the host the layout is pointer, two ints
// and a bool.
void test_array()
{
	array<int> a;
	CHECK(!dh2_array_access::borrowed(a));
	for (int i = 0; i < 10; ++i) {
		a.push_back(i);
	}
	CHECK(a.size() == 10);
	const int capacity_at_10 = dh2_array_access::capacity(a);
	CHECK(capacity_at_10 >= 10);

	// resize never shrinks the buffer (the binary's rule); clear keeps it, the destructor releases it.
	a.resize(2);
	CHECK(a.size() == 2);
	CHECK(dh2_array_access::capacity(a) == capacity_at_10);
	a.resize(0);
	CHECK(a.size() == 0);
	CHECK(dh2_array_access::capacity(a) == capacity_at_10);
	a.reserve(0);  // an explicit reserve(0) frees it
	CHECK(dh2_array_access::capacity(a) == 0);

	// Growth: a larger request reserves one and a half times the size.
	a.resize(10);
	CHECK(dh2_array_access::capacity(a) == 15);

	// A borrowed array keeps its buffer: reserve() does nothing.
	array<int> b;
	b.push_back(7);
	const int capacity_b = dh2_array_access::capacity(b);
	dh2_array_access::set_borrowed(b, true);
	CHECK(dh2_array_access::borrowed(b));
	b.reserve(100);
	CHECK(dh2_array_access::capacity(b) == capacity_b);
	b.reserve(0);
	CHECK(dh2_array_access::capacity(b) == capacity_b);
	dh2_array_access::set_borrowed(b, false);  // so the destructor frees the buffer

	// A copy starts with the flag clear.
	array<int> c;
	c.push_back(1);
	dh2_array_access::set_borrowed(c, true);
	array<int> d(c);
	CHECK(!dh2_array_access::borrowed(d));
	CHECK(d.size() == 1 && d[0] == 1);
	dh2_array_access::set_borrowed(c, false);
}

// tu_string: 20 bytes in the binary. On the host the members keep the order flag/inline text, then the hash cache.
void test_tu_string_layout()
{
	tu_string s("abc");
	CHECK(s.length() == 3);
	CHECK(sizeof(tu_string) >= 20);
	CHECK(sizeof(tu_string) <= 32);
	CHECK(!s.is_interned());
	s.set_interned(true);
	CHECK(s.is_interned());
	tu_string copy(s);
	CHECK(!copy.is_interned());
	CHECK(copy == s);
}

// effect: the blend mode first, then the filter array; 20 bytes in the binary.
void test_effect()
{
	gameswf::effect fx;
	CHECK(fx.m_blend_mode == 0);
	CHECK(fx.m_filters.size() == 0);
	CHECK(off(&gameswf::effect::m_blend_mode) < off(&gameswf::effect::m_filters));
	CHECK(sizeof(gameswf::filter) == 0x2c);
	fx.m_filters.resize(2);
	fx.m_filters[1].blur_x = 3.0f;
	gameswf::effect copy = fx;
	CHECK(copy.m_filters.size() == 2);
	CHECK(copy.m_filters[1].blur_x == 3.0f);
}

// The character members follow the binary's order, with the fixed-size members at their binary distances.
void test_character_layout()
{
	using gameswf::character;
	const std::size_t o_id = off(&character::m_id);
	const std::size_t o_parent = off(&character::m_parent);
	const std::size_t o_name = off(&character::m_name);
	const std::size_t o_cx = off(&character::m_local_cxform);
	const std::size_t o_mx = off(&character::m_local_matrix);
	const std::size_t o_fx = off(&character::m_effect);
	const std::size_t o_custom = off(&character::m_custom);
	const std::size_t o_wcx = off(&character::m_world_cxform);
	const std::size_t o_wmx = off(&character::m_world_matrix);
	const std::size_t o_ratio = off(&character::m_ratio);
	CHECK(o_id < o_parent);
	CHECK(o_parent < o_name);
	CHECK(o_name < o_cx);
	CHECK(o_cx < o_mx);
	CHECK(o_mx < o_fx);
	CHECK(o_fx < o_custom);
	CHECK(o_custom < o_wcx);
	CHECK(o_wcx + sizeof(gameswf::cxform) == o_wmx);    // +0x58 and +0x78
	CHECK(sizeof(gameswf::cxform) == 32);
	CHECK(o_wmx + sizeof(gameswf::matrix) == o_ratio);  // +0x78 and +0x90
	CHECK(sizeof(gameswf::matrix) == 24);
	CHECK(o_ratio < off(&character::m_depth));
	CHECK(off(&character::m_depth) < off(&character::m_clip_depth));
	CHECK(off(&character::m_clip_depth) < off(&character::m_kind));
	CHECK(off(&character::m_kind) + 1 == off(&character::m_matrix_changed));
	CHECK(off(&character::m_matrix_changed) + 1 == off(&character::m_cxform_changed));
	CHECK(off(&character::m_cxform_changed) + 1 == off(&character::m_visible));
	CHECK(off(&character::m_visible) + 1 == off(&character::m_has_mouse_handler));
	CHECK(off(&character::m_has_mouse_handler) + 1 == off(&character::m_need_advance));

	// character::custom: cxform, matrix, effect, name, callback, user pointer, scene node.
	using custom = character::custom;
	CHECK(off(&custom::m_cxform) == 0);
	CHECK(off(&custom::m_matrix) == 32);                                        // +0x20
	CHECK(off(&custom::m_effect) == 56);                                        // +0x38
	CHECK(off(&custom::m_effect) + sizeof(gameswf::effect) <= off(&custom::m_name));
	CHECK(off(&custom::m_name) < off(&custom::m_display_callback));
	CHECK(off(&custom::m_display_callback) < off(&custom::m_display_callback_user_ptr));
	CHECK(off(&custom::m_display_callback_user_ptr) < off(&custom::m_scene_node));

	// drag_state: 0x20 bytes of 32-bit words and bytes; every member is 4 bytes or a byte, so the size is the same on the host.
	CHECK(sizeof(character::drag_state) == 0x28 || sizeof(character::drag_state) == 0x20);
	character::drag_state ds;
	CHECK(ds.m_character == nullptr);
	CHECK(!ds.m_dragging && !ds.m_lock_center && !ds.m_bound);
	CHECK(ds.m_bound_x1 == 1.0f && ds.m_bound_y1 == 1.0f);  // the binary's default rectangle (0, 0, 1, 1)
	CHECK(ds.m_offset_x == 0.0f && ds.m_offset_y == 0.0f);
	gameswf::rect bounds;
	CHECK(!ds.GetBounds(&bounds));
	ds.SetBounds(1.0f, 2.0f, 3.0f, 4.0f);
	CHECK(ds.GetBounds(&bounds));
	CHECK(bounds.m_x_min == 1.0f && bounds.m_y_min == 2.0f && bounds.m_x_max == 3.0f && bounds.m_y_max == 4.0f);
}

// as_object: m_ctor (an as_value) comes before the watch table, the alive stamp is the last member.
void test_as_object_layout()
{
	using gameswf::as_object;
	CHECK(off(&as_object::m_members) < off(&as_object::m_ctor));
	CHECK(off(&as_object::m_ctor) < off(&as_object::m_watch));
	CHECK(off(&as_object::m_watch) < off(&as_object::m_this_ptr));
	CHECK(off(&as_object::m_this_ptr) < off(&as_object::m_proto));
	CHECK(off(&as_object::m_proto) < off(&as_object::m_player));
	CHECK(off(&as_object::m_player) < off(&as_object::m_alive_stamp));
}

// gc_ptr is a counted pointer (smart_ptr): copies add references.
struct counted : gameswf::ref_counted
{
	static int destroyed;
	~counted() override { ++destroyed; }
};
int counted::destroyed = 0;

}  // namespace

// destruct<T> for the ref_counted drop (batch gameswf_ref_counted): the test frees what it allocated with new.
template <>
void gameswf::destruct<gameswf::ref_counted>(const gameswf::ref_counted* object)
{
	delete object;
}

namespace {

void test_gc_ptr()
{
	{
		gameswf::gc_ptr<counted> p(new counted);
		CHECK(p.get() != nullptr);
		CHECK(p->get_ref_count() == 1);
		gameswf::gc_ptr<counted> q = p;
		CHECK(p->get_ref_count() == 2);
		q = nullptr;
		CHECK(p->get_ref_count() == 1);
		CHECK(counted::destroyed == 0);
	}
	CHECK(counted::destroyed == 1);
}

}  // namespace

int main()
{
	test_array();
	test_tu_string_layout();
	test_effect();
	test_character_layout();
	test_as_object_layout();
	test_gc_ptr();
	if (g_failures == 0) {
		std::printf("core layout checks passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
