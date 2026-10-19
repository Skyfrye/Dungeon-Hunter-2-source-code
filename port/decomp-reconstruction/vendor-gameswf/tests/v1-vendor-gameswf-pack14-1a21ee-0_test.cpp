// Test for batch v1-vendor-gameswf-pack14-1a21ee-0: the RenderFX search index hash, set_raw_capacity specialization (0x7aa8f0).
// The container, utf8 and tu_string sources give tu_string its out-of-line members (the hash keys need operator== and the
// constructors). The batch source also holds the as_transform bodies, which reach the object runtime; the stubs file defines
// those symbols as weak aborting functions (this test never constructs an object).
//
// set_raw_capacity is private, so the test drives it through the public API, the way the game does:
//   - set_capacity(c) calls set_raw_capacity(c * 3 / 2). set_capacity(6) calls set_raw_capacity(9).
//   - add() calls check_expand() before it counts the entry. An empty table gets set_raw_capacity(16). A table with
//     3 * entries > 2 * slots is doubled.
// Every table is allocated by gameswf::malloc_internal, and this test counts those calls (of table size: the heap text of a key
// is allocated by the same function). A table is allocated only by
// set_raw_capacity, so the add() that causes a growth is the one where the count changes. With S slots the first growth is
// add number floor(2 * S / 3) + 2, which gives the slot count without reading private members.
//
// The binary's rule (asm of 0x7aa8f0): slots = max(4, smallest power of two greater than n - 1). For example raw 9 gives 16
// slots, not 8. Returns non-zero on failure.
//
// The allocator is the test's own (std::malloc / std::free). The stubs below cover the symbols that the batch source
// references and this test does not run. default_bitmap_font_entity's constructor stub matches the declaration in
// include/vendor-gameswf/bitmap_glyph_provider.hpp. Do not link this test with the pack19 source, which defines that
// constructor and the glyph hash's set_raw_capacity.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack14-1a21ee-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "base/container.h"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"  // declarations of the symbols stubbed below
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/render_fx_search_hash.hpp"

namespace RenderFX {
namespace SearchIndex {
struct Entry {
	int id;
};
}  // namespace SearchIndex
}  // namespace RenderFX

namespace {

int g_failures = 0;
int g_table_allocs = 0;  // malloc_internal calls: one per table set_raw_capacity makes

}  // namespace

// The allocator. Tables come from malloc_internal, and the generic hash::clear releases them through tu_free, which is
// dlfree and so the C free (base/utility.h maps dlfree to free). Both use the C library heap here.
namespace gameswf {
void* malloc_internal(unsigned int size, swf::MemHint) {
	// The heap text of a key (tu_string longer than 14 bytes) comes from here too; a table is at least four 32-byte entries.
	if (size >= 96) {
		g_table_allocs++;
	}
	return std::malloc(size);
}
void free_internal(void* p, unsigned int) {
	std::free(p);
}
}  // namespace gameswf

// Link stubs for the symbols the batch's other bodies reference. This test never runs them. The membuf and the bitmap font
// entity members are built only inside default_bitmap_font_entity's constructor stub, which aborts.
membuf::membuf() {}
membuf::~membuf() {}

namespace gameswf {
bitmap_font_entity::~bitmap_font_entity() {}
default_bitmap_font_entity::~default_bitmap_font_entity() {}
int default_bitmap_font_entity::get_char_image(bitmap_glyph_data*, std::uint16_t, int, bitmap_glyph_metrics*) {
	std::abort();
}
bitmap_font_entity* bitmap_glyph_provider::get_font_entity_impl(const ::tu_string&) {
	std::abort();
}
default_bitmap_font_entity::default_bitmap_font_entity(bitmap_glyph_provider*, const ::tu_string&) {
	std::abort();
}
ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
void ref_counted::add_ref() const {}
void ref_counted::drop_ref() {}
void texture_cache::reset() {}
texture_cache::~texture_cache() {}
}  // namespace gameswf

// Global, NOT gameswf:: -- this is what the batch calls and what bitmap_glyph_provider.hpp:123 declares
// (the binary's symbol is _Z12get_fontfilePKcbbPci 0x42b38c). Inside namespace gameswf this definition
// was a different, unreferenced symbol and the symbol actually linked came from the link stubs.
bool get_fontfile(const char*, bool, bool, char*, int) {
	std::abort();
}

// The glyph table's set_raw_capacity (bitmap_hash_dh2.hpp). Its body is in the pack19 source. This test does not reach it.
template <>
void hash<tu_stringi, smart_ptr<gameswf::bitmap_font_entity>, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int) {
	std::abort();
}

namespace {

using entry_ptr = array<RenderFX::SearchIndex::Entry>*;
using index_hash = hash<tu_string, entry_ptr, string_hash_functor<tu_string> >;

void fail(const char* what) {
	std::printf("FAIL: %s\n", what);
	g_failures++;
}

void check(bool ok, const char* what) {
	if (!ok) {
		fail(what);
	}
}

void make_key(int i, char* out, unsigned int out_size) {
	std::snprintf(out, out_size, "render_search_key_%d", i);
}

// Every key 0..count-1 must be found with its own value.
bool all_present(const index_hash& h, const entry_ptr* values, int count) {
	for (int i = 0; i < count; i++) {
		char key[64];
		make_key(i, key, sizeof(key));
		entry_ptr got = nullptr;
		if (!h.get(tu_string(key), &got) || got != values[i]) {
			return false;
		}
	}
	return true;
}

// The add number whose check_expand() first grows a table of `slots` slots: growth when 3 * entries > 2 * slots, and the
// entry count at that point is add - 1.
int growth_add_for_slots(int slots) {
	return (2 * slots) / 3 + 2;
}

// set_capacity(capacity) makes a table; this adds keys until add() allocates a new table, and returns that add number.
int first_growth_add(int capacity) {
	index_hash h;
	h.set_capacity(capacity);
	const int before = g_table_allocs;
	for (int k = 1; k <= 5000; k++) {
		char key[64];
		make_key(k, key, sizeof(key));
		h.add(tu_string(key), nullptr);
		if (g_table_allocs != before) {
			return k;
		}
	}
	return -1;
}

struct SlotCase {
	int capacity;  // argument of set_capacity; set_raw_capacity gets capacity * 3 / 2
	int raw;       // that raw size
	int slots;     // the binary's table size for raw: max(4, smallest power of two greater than raw - 1)
};

// Raw 9, 33, 129 and 513 are 2^k + 1. The binary gives twice the power of two for those (16, 64, 256, 1024).
const SlotCase kSlotCases[] = {
	{1, 1, 4},
	{2, 3, 4},
	{4, 6, 8},
	{6, 9, 16},
	{11, 16, 16},
	{22, 33, 64},
	{43, 64, 64},
	{44, 66, 128},
	{86, 129, 256},
	{342, 513, 1024},
};

}  // namespace

int main() {
	// 1. The table size for each set_capacity argument, read back through the add number of the first growth.
	for (const SlotCase& c : kSlotCases) {
		const int got = first_growth_add(c.capacity);
		const int want = growth_add_for_slots(c.slots);
		if (got != want) {
			std::printf("FAIL: set_capacity(%d) (raw %d): first growth at add %d, expected %d (table of %d slots)\n",
			            c.capacity, c.raw, got, want, c.slots);
			g_failures++;
		}
	}

	// 2. Rehash through set_capacity keeps the live entries and their values. set_capacity(2) makes 4 slots (raw 3), three
	// keys go in, and set_capacity(6) rehashes to 16 slots (raw 9). Eight more keys must not allocate, and the next one must.
	{
		RenderFX::SearchIndex::Entry dummy[12];
		entry_ptr values[12];
		for (int i = 0; i < 12; i++) {
			dummy[i].id = i;
			values[i] = reinterpret_cast<entry_ptr>(&dummy[i]);
		}

		index_hash h;
		h.set_capacity(2);
		for (int i = 0; i < 3; i++) {
			char key[64];
			make_key(i, key, sizeof(key));
			h.add(tu_string(key), values[i]);
		}
		const int before_rehash = g_table_allocs;
		h.set_capacity(6);
		check(g_table_allocs == before_rehash + 1, "set_capacity(6) rehashes the table once");
		check(h.size() == 3, "rehash keeps the three entries");
		check(all_present(h, values, 3), "rehash keeps every key with its value");

		const int before_fill = g_table_allocs;
		for (int i = 3; i < 11; i++) {
			char key[64];
			make_key(i, key, sizeof(key));
			h.add(tu_string(key), values[i]);
		}
		check(g_table_allocs == before_fill, "eight adds into a 16-slot table do not allocate");
		char key11[64];
		make_key(11, key11, sizeof(key11));
		h.add(tu_string(key11), values[11]);
		check(g_table_allocs == before_fill + 1, "the twelfth entry grows the 16-slot table");
		check(h.size() == 12 && all_present(h, values, 12), "all twelve keys survive the growth");
	}

	// 3. set_capacity with the size the table already has allocates nothing (set_raw_capacity returns early).
	{
		index_hash h;
		h.set_capacity(6);
		const int before = g_table_allocs;
		h.set_capacity(6);
		check(g_table_allocs == before, "set_capacity to the current size does not reallocate");
	}

	// 4. set_capacity(0) on an empty table (raw 0 clears) allocates nothing and leaves it empty.
	{
		index_hash h;
		const int before = g_table_allocs;
		h.set_capacity(0);
		check(h.is_empty(), "set_capacity(0) leaves the table empty");
		check(g_table_allocs == before, "set_capacity(0) allocates nothing");
	}

	// 5. Functional check from an empty table: 100 keys force several growths (16, 32, 64, 128 slots).
	{
		const int kCount = 100;
		RenderFX::SearchIndex::Entry dummy[kCount];
		entry_ptr values[kCount];
		for (int i = 0; i < kCount; i++) {
			dummy[i].id = i;
			values[i] = reinterpret_cast<entry_ptr>(&dummy[i]);
		}

		index_hash h;
		check(h.is_empty(), "new table is empty");
		for (int i = 0; i < kCount; i++) {
			char key[64];
			make_key(i, key, sizeof(key));
			h.add(tu_string(key), values[i]);
			if (i == 0 || i == 2 || i == 9 || i == 40) {
				check(all_present(h, values, i + 1), "keys present after an add that may grow the table");
			}
		}
		check(all_present(h, values, kCount), "all keys present after growth");
		check(h.size() == kCount, "size() counts every key");

		entry_ptr none = nullptr;
		check(!h.get(tu_string("never_added"), &none), "absent key is not found");

		h.clear();
		check(h.is_empty(), "clear() empties the table");
		char first_key[64];
		make_key(0, first_key, sizeof(first_key));
		check(!h.get(tu_string(first_key), &none), "a key added before clear() is gone after it");
	}

	if (g_failures == 0) {
		std::printf("pack14 hash test: OK\n");
		return 0;
	}
	return 1;
}
