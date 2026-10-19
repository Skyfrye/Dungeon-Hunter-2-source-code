// Test for batch v1-vendor-gameswf-pack0-157e56-0. Build and run with the link line at the end of this comment.
//
// The test supplies two definitions that live in other batches: gameswf::free_internal (fddef6-0,
// the allocator) and gameswf::matrix::matrix() (the r1714 default constructor). free_internal counts
// the frees and releases the block with std::free, so every block the test hands it must come from
// std::malloc.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp

#include <cfloat>
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_dlist.h"
#include "vendor-gameswf/effect.hpp"
#include "vendor-gameswf/filter_texture_cache.hpp"
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity, the shared rehash body
#include "vendor-gameswf/permanent_string.hpp"
#include "vendor-gameswf/smart_ptr_proxy.hpp"

namespace {

int g_failures = 0;
int g_frees = 0;
void* g_last_freed = nullptr;

#define CHECK(cond)                                                         \
	do                                                                      \
	{                                                                       \
		if (!(cond))                                                        \
		{                                                                   \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);             \
			++g_failures;                                                   \
		}                                                                   \
	} while (0)

bool approx(float a, float b)
{
	return std::fabs(a - b) < 1e-4f;
}

void set_m(gameswf::matrix& m, float a, float b, float c, float d, float e, float f)
{
	m.m_[0][0] = a;
	m.m_[0][1] = b;
	m.m_[0][2] = c;
	m.m_[1][0] = d;
	m.m_[1][1] = e;
	m.m_[1][2] = f;
}

void set_rect(gameswf::rect& r, float x0, float x1, float y0, float y1)
{
	r.m_x_min = x0;
	r.m_x_max = x1;
	r.m_y_min = y0;
	r.m_y_max = y1;
}

void test_matrix()
{
	// concatenate: A then B. r02 = 2*5 + 0*6 + 1 = 11, r12 = 0*5 + 3*6 + 4 = 22.
	gameswf::matrix a;
	gameswf::matrix b;
	set_m(a, 2, 0, 1, 0, 3, 4);
	set_m(b, 1, 0, 5, 0, 1, 6);
	a.concatenate(b);
	CHECK(approx(a.m_[0][0], 2));
	CHECK(approx(a.m_[0][1], 0));
	CHECK(approx(a.m_[0][2], 11));
	CHECK(approx(a.m_[1][0], 0));
	CHECK(approx(a.m_[1][1], 3));
	CHECK(approx(a.m_[1][2], 22));

	// get_x_scale: norm of row 0 (5), negated when the determinant is below zero.
	gameswf::matrix s;
	set_m(s, 3, 4, 0, 0, 1, 0);
	CHECK(approx(s.get_x_scale(), 5.0f));
	set_m(s, 3, 4, 0, 0, -1, 0);
	CHECK(approx(s.get_x_scale(), -5.0f));

	// set_lerp: halfway between identity and a translation by (2, 3).
	gameswf::matrix id;
	gameswf::matrix tr;
	gameswf::matrix out;
	set_m(id, 1, 0, 0, 0, 1, 0);
	set_m(tr, 1, 0, 2, 0, 1, 3);
	CHECK(out.set_lerp(id, tr, 0.5f) == true);
	CHECK(approx(out.m_[0][2], 1.0f));
	CHECK(approx(out.m_[1][2], 1.5f));
	CHECK(approx(out.m_[0][0], 1.0f));
	// An overflowing last element gives 0 and a false return.
	gameswf::matrix big;
	set_m(big, 0, 0, 0, 0, 0, 1e38f);
	CHECK(out.set_lerp(id, big, 10.0f) == false);
	CHECK(approx(out.m_[1][2], 0.0f));

	// transform(rect): a 90 degree rotation maps (0..10, 0..5) to (-5..0, 0..10).
	gameswf::matrix rot;
	set_m(rot, 0, -1, 0, 1, 0, 0);
	gameswf::rect r;
	set_rect(r, 0, 10, 0, 5);
	rot.transform(&r);
	CHECK(approx(r.m_x_min, -5.0f));
	CHECK(approx(r.m_x_max, 0.0f));
	CHECK(approx(r.m_y_min, 0.0f));
	CHECK(approx(r.m_y_max, 10.0f));

	// transform(rect): a translation by (1, 2).
	gameswf::matrix mv;
	set_m(mv, 1, 0, 1, 0, 1, 2);
	set_rect(r, 0, 10, 0, 5);
	mv.transform(&r);
	CHECK(approx(r.m_x_min, 1.0f));
	CHECK(approx(r.m_x_max, 11.0f));
	CHECK(approx(r.m_y_min, 2.0f));
	CHECK(approx(r.m_y_max, 7.0f));

	// set_inverse: [[2 0 4] [0 2 6]] inverts to [[0.5 0 -2] [0 0.5 -3]].
	gameswf::matrix src;
	gameswf::matrix inv;
	set_m(src, 2, 0, 4, 0, 2, 6);
	CHECK(inv.set_inverse(src) == true);
	CHECK(approx(inv.m_[0][0], 0.5f));
	CHECK(approx(inv.m_[1][1], 0.5f));
	CHECK(approx(inv.m_[0][2], -2.0f));
	CHECK(approx(inv.m_[1][2], -3.0f));

	// A zero determinant gives [[1 0 -m02] [0 1 -m12]].
	gameswf::matrix sing;
	set_m(sing, 0, 0, 4, 0, 0, 6);
	CHECK(inv.set_inverse(sing) == true);
	CHECK(approx(inv.m_[0][0], 1.0f));
	CHECK(approx(inv.m_[1][1], 1.0f));
	CHECK(approx(inv.m_[0][2], -4.0f));
	CHECK(approx(inv.m_[1][2], -6.0f));
}

void test_range_check()
{
	// The binary keeps a float result in [-FLT_MAX, +FLT_MAX], including the endpoints and values above
	// 3.4028e38 (the endpoint is FLT_MAX, not 3.4028e38).
	gameswf::matrix ident;
	set_m(ident, 1, 0, 0, 0, 1, 0);

	gameswf::matrix edge;
	set_m(edge, 1, 0, FLT_MAX, 0, 1, 0);
	gameswf::matrix r = edge;
	r.concatenate(ident);
	CHECK(static_cast<float>(r.m_[0][2]) == FLT_MAX);

	set_m(edge, 1, 0, -FLT_MAX, 0, 1, 0);
	r = edge;
	r.concatenate(ident);
	CHECK(static_cast<float>(r.m_[0][2]) == -FLT_MAX);

	const float between = 3.40282e38f;  // above 3.4028e38, below FLT_MAX
	CHECK(between > 3.4028e38f && between < FLT_MAX);
	set_m(edge, 1, 0, between, 0, 1, 0);
	r = edge;
	r.concatenate(ident);
	CHECK(static_cast<float>(r.m_[0][2]) == between);

	// A product that overflows to inf, and inf - inf gives NaN. The binary's range check turns NaN into 0.
	gameswf::matrix big_a;
	gameswf::matrix big_b;
	set_m(big_a, 1e30f, -1e30f, 0, 0, 1, 0);
	set_m(big_b, 0, 0, 1e30f, 0, 1, 1e30f);
	big_a.concatenate(big_b);
	CHECK(static_cast<float>(big_a.m_[0][2]) == 0.0f);

	// set_lerp: a last element of exactly FLT_MAX is in range (true); an overflowing one is out (false).
	gameswf::matrix start;
	gameswf::matrix end_max;
	gameswf::matrix out;
	set_m(start, 1, 0, 0, 0, 1, 0);
	set_m(end_max, 1, 0, 0, 0, 1, FLT_MAX);
	CHECK(out.set_lerp(start, end_max, 1.0f) == true);
	CHECK(static_cast<float>(out.m_[1][2]) == FLT_MAX);
}

void test_smart_ptr_proxy()
{
	// Two handles on one proxy: the free happens only when the last one drops it.
	void* raw_p = std::malloc(8);
	void* raw_q = std::malloc(8);
	weak_proxy* p = new (raw_p) weak_proxy();
	weak_proxy* q = new (raw_q) weak_proxy();

	gameswf::smart_ptr_proxy h1;
	gameswf::smart_ptr_proxy h2;
	g_frees = 0;

	h1 = p;  // p count 1
	h2 = p;  // p count 2
	CHECK(h1.get_proxy() == p);
	CHECK(h2.get_proxy() == p);
	h1 = nullptr;  // p count 1, no free
	CHECK(g_frees == 0);
	CHECK(h1.get_proxy() == nullptr);
	h2 = nullptr;  // p count 0, freed
	CHECK(g_frees == 1);
	CHECK(g_last_freed == raw_p);

	// Reassigning to a different proxy releases the first.
	h1 = q;   // q count 1
	h1 = q;   // same proxy, nothing changes
	CHECK(g_frees == 1);
	h1 = h2.get_proxy();  // nullptr: releases q, count 0, freed
	CHECK(g_frees == 2);
	CHECK(g_last_freed == raw_q);
	CHECK(h1.get_proxy() == nullptr);
}

void test_permanent_string()
{
	// A permanent_string is a tu_string that is always interned (bit 0 of byte +0x13). An empty one keeps its text
	// inline, so the destructor frees nothing (the heap buffer is only freed when the flag byte is 0xff, by ~tu_string).
	g_frees = 0;
	gameswf::permanent_string* inline_text = new gameswf::permanent_string();
	CHECK(inline_text->is_interned());
	CHECK(inline_text->length() == 0);
	const ::tu_string& as_tu_string = *inline_text;  // converts to its base for every consumer
	CHECK(as_tu_string.is_interned());
	delete inline_text;
	CHECK(g_frees == 0);

	// A plain tu_string is not interned.
	::tu_string plain;
	CHECK(!plain.is_interned());
}

void test_filter_texture_cache()
{
	// The body does not read the object, so a suitably sized and aligned buffer stands in for it.
	alignas(gameswf::filter_texture_cache) unsigned char storage[sizeof(gameswf::filter_texture_cache)] = {};
	auto* self = reinterpret_cast<gameswf::filter_texture_cache*>(storage);

	int w = 1;
	int h = 17;
	int r = self->get_region_size_requirement_cellsize(w, h);
	CHECK(w == 16);
	CHECK(h == 32);
	CHECK(r == 1);

	w = 0;
	h = 0;
	r = self->get_region_size_requirement_cellsize(w, h);
	CHECK(w == 16);
	CHECK(h == 16);
	CHECK(r == 0);

	w = 33;
	h = 16;
	r = self->get_region_size_requirement_cellsize(w, h);
	CHECK(w == 48);
	CHECK(h == 16);
	CHECK(r == 0);
}

// filter_texture_cache::get_character_region: a hit in the used-region table returns the stored region, a miss rounds the size up
// to whole cells and asks the texture cache for a free region of that size.
int g_find_calls = 0;
int g_find_w = 0;
int g_find_h = 0;
gameswf::texture_cache::region g_sentinel_region;

void test_get_character_region()
{
	alignas(gameswf::filter_texture_cache) unsigned char storage[sizeof(gameswf::filter_texture_cache)] = {};
	auto* self = reinterpret_cast<gameswf::filter_texture_cache*>(storage);
	auto* ch = reinterpret_cast<gameswf::character*>(static_cast<std::uintptr_t>(0x1000));

	// Miss: 20 x 20 pixels becomes 32 x 32 (2 x 2 cells); the region comes from find_available_region.
	gameswf::texture_cache::region* got = self->get_character_region(ch, 20, 20);
	CHECK(got == &g_sentinel_region);
	CHECK(g_find_calls == 1);
	CHECK(g_find_w == 32 && g_find_h == 32);

	// Hit: the key is the character pointer; the stored value is returned whatever the size, and the free list is not asked.
	gameswf::texture_cache::region stored;
	gameswf::texture_cache::key k;
	k.unk_0 = reinterpret_cast<std::uintptr_t>(ch);
	self->m_used.add(k, &stored);
	got = self->get_character_region(ch, 99, 99);
	CHECK(got == &stored);
	CHECK(g_find_calls == 1);

	// Another character is still a miss.
	got = self->get_character_region(reinterpret_cast<gameswf::character*>(static_cast<std::uintptr_t>(0x2000)), 1, 1);
	CHECK(got == &g_sentinel_region);
	CHECK(g_find_calls == 2);
	CHECK(g_find_w == 16 && g_find_h == 16);
	self->m_used.clear();
}

}  // namespace

// The region lookup behind get_character_region lives in the texture_cache batch; the test counts the calls.
gameswf::texture_cache::region* gameswf::texture_cache::find_available_region(int width, int height)
{
	++g_find_calls;
	g_find_w = width;
	g_find_h = height;
	return &g_sentinel_region;
}

// The used-region table's rehash (pack19 defines it with the font machinery): the shared body.
template <>
void hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int new_size)
{
	dh2_hash_access::set_raw_capacity(*this, new_size);
}

// Stand-ins for definitions in other batches (see the header comment above).
namespace gameswf {

void free_internal(void* p, unsigned int)
{
	++g_frees;
	g_last_freed = p;
	std::free(p);
}

matrix::matrix() {}

// The allocator entry points that the arrays in the same source reach (the test never grows an array).
void* malloc_internal(unsigned int size, swf::MemHint)
{
	return std::malloc(size);
}
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint)
{
	return std::realloc(p, new_size);
}

// The character::custom constructor and destructor in the same source reach these. The test never builds a custom block.
cxform::cxform() {}
effect::~effect() {}
int display_list::get_character_by_ptr(const character*)
{
	std::abort();
	return 0;
}
void display_list::remove(int)
{
	std::abort();
}

}  // namespace gameswf

// tu_string members that live in the tu_string batch and are not defined here. Inline code in gameswf.h
// reaches them, but this test never calls them, so they abort if they are ever reached.
void tu_string::resize(int)
{
	std::abort();
}

int tu_string::utf8_char_count(const char*, int)
{
	std::abort();
	return 0;
}

bool tu_string::operator==(const tu_string&) const
{
	std::abort();
	return false;
}

void tu_string::operator+=(const tu_string&)
{
	std::abort();
}

void tu_string::operator+=(const char*)
{
	std::abort();
}

// The case-insensitive compare behind stringi_pointer::operator== (the display list's name table, rehashed by the batch).
int tu_string::stricmp(const char* a, const char* b)
{
	for (;; ++a, ++b)
	{
		const int ca = (*a >= 'A' && *a <= 'Z') ? *a + 32 : *a;
		const int cb = (*b >= 'A' && *b <= 'Z') ? *b + 32 : *b;
		if (ca != cb || ca == 0)
		{
			return ca - cb;
		}
	}
}

int main()
{
	test_matrix();
	test_range_check();
	test_smart_ptr_proxy();
	test_permanent_string();
	test_filter_texture_cache();
	test_get_character_region();
	if (g_failures != 0)
	{
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("all checks passed\n");
	return 0;
}
