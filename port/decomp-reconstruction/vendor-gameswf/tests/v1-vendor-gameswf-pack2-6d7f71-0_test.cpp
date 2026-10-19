// Test for batch v1-vendor-gameswf-pack2-6d7f71-0. Returns non-zero when a check fails.
//
// The batch .cpp defines the D1 destructors and the virtual methods of the tag classes, so its vtables refer to the
// virtuals that other batches own. This test defines those as empty stubs. It also stubs the allocator
// (free_internal and malloc_internal) and the membuf base (base/membuf.cpp is not in this batch). free_internal only
// records the call, so the test frees its own allocations. hash::clear reaches free through tu_free (base/utility.h).
//
// Covered: the execute_tag and place_object_2 return values (through virtual dispatch), counted_buffer's reference
// count and its destructor (the dictionary array is released, then the membuf base), and the bucket
// count and rehash of the cxform and matrix tables (DH2 minimum 4, values kept across growth and clear).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

#include "base/container.h"
#include "base/membuf.h"
#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/counted_buffer.hpp"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_hash_dh2.hpp"

namespace {

int g_failures = 0;
int g_free_calls = 0;
unsigned int g_last_free_size = 0xffffffffu;
void* g_last_free_ptr = nullptr;
int g_membuf_dtor_calls = 0;

void reset_counters() {
	g_free_calls = 0;
	g_last_free_size = 0xffffffffu;
	g_last_free_ptr = nullptr;
	g_membuf_dtor_calls = 0;
}

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

// hash's only data member is m_table (a table* whose first two ints are the entry count and the size mask).
// Returns the size mask, or -1 when there is no table.
int table_mask(const void* hash_object) {
	void* table = *static_cast<void* const*>(hash_object);
	return table != nullptr ? static_cast<const int*>(table)[1] : -1;
}

int g_values[100];

}  // namespace

// ---- membuf base (upstream base/membuf.cpp, not in this batch) ----

membuf::membuf() : m_size(0), m_capacity(0), m_data(nullptr), m_read_only(false) {}

membuf::~membuf() {
	++g_membuf_dtor_calls;
	m_data = nullptr;
}

// ---- link stubs ----

namespace gameswf {

void* malloc_internal(unsigned int size, swf::MemHint) {
	return std::malloc(size ? size : 1);
}

void free_internal(void* p, unsigned int size) {
	++g_free_calls;
	g_last_free_ptr = p;
	g_last_free_size = size;
}

// The arrays grow through realloc_internal (container.h); the old block is released with the C heap here, not recorded.
void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint) {
	void* block = std::malloc(new_size ? new_size : 1);
	if (p != nullptr) {
		std::memcpy(block, p, old_size < new_size ? old_size : new_size);
		std::free(p);
	}
	return block;
}

// Tag classes: the virtuals that the batch's vtables refer to and that other batches define. (execute_tag's own virtuals,
// including execute_state_reverse, is_remove_tag, is_action_tag and get_depth_id_of_replace_or_add_tag, are in the batch.)
place_object_2::~place_object_2() {}
void place_object_2::execute(character*) {}
void place_object_2::execute_state(character*) {}
void place_object_2::execute_state_reverse(character*, int) {}
std::uint32_t place_object_2::get_depth_id_of_replace_or_add_tag() const { return 0; }

void remove_object_2::execute(character*) {}
void remove_object_2::execute_state(character*) {}
void remove_object_2::execute_state_reverse(character*, int) {}
bool remove_object_2::is_remove_tag() const { return true; }

void set_background_color::execute(character*) {}
void set_background_color::execute_state(character*) {}

}  // namespace gameswf

// tu_string members that container.h declares out of line. Inline code in container.h (the tu_string copy
// constructor, which the hash and membuf headers reach) refers to them, so this translation unit needs them to
// link. The test never calls them, so they abort (as in the fddef6-1 test).
void tu_string::resize(int) { std::abort(); }
void tu_string::operator+=(const char*) { std::abort(); }
void tu_string::operator+=(char) { std::abort(); }
void tu_string::operator+=(const tu_string&) { std::abort(); }
bool tu_string::operator==(const tu_string&) const { std::abort(); }
int tu_string::utf8_char_count(const char*, int) { std::abort(); }

// ---- tests ----

static void test_execute_tags() {
	gameswf::execute_tag tag;
	CHECK(tag.get_depth() == -1);
	CHECK(tag.get_action_offset() == -1);
	CHECK(!tag.is_place_tag());

	gameswf::place_object_2 place;
	place.m_depth = 7;
	CHECK(place.get_depth() == 7);
	CHECK(place.is_place_tag());

	place.m_depth = 0xFFFF;  // u16 at +0x0c: zero-extended, not sign-extended
	gameswf::execute_tag* base = &place;
	CHECK(base->get_depth() == 65535);
	CHECK(base->is_place_tag());
	CHECK(base->get_action_offset() == -1);  // inherited from execute_tag

	gameswf::remove_object_2 removed;
	gameswf::execute_tag* removed_base = &removed;
	CHECK(removed_base->is_remove_tag());
	CHECK(!removed_base->is_place_tag());

	// The four virtuals that r1714 defines inline in gameswf_impl.h: false, false, all ones, and a call of execute_state.
	CHECK(!tag.is_remove_tag());
	CHECK(!tag.is_action_tag());
	CHECK(tag.get_depth_id_of_replace_or_add_tag() == 0xFFFFFFFFu);
	CHECK(!place.is_remove_tag());   // inherited by place_object_2
	CHECK(!place.is_action_tag());

	// execute_state_reverse(m, frame) forwards to the virtual execute_state(m), whatever the frame. set_background_color does
	// not override it, so it also goes through the base.
	struct recorder : gameswf::execute_tag {
		int state_calls = 0;
		gameswf::character* last = nullptr;
		void execute_state(gameswf::character* m) override { ++state_calls; last = m; }
	};
	recorder rec;
	gameswf::character* fake = reinterpret_cast<gameswf::character*>(&rec);  // never dereferenced
	rec.execute_state_reverse(fake, 7);
	CHECK(rec.state_calls == 1 && rec.last == fake);
	gameswf::execute_tag& rec_base = rec;
	rec_base.execute_state_reverse(nullptr, -3);
	CHECK(rec.state_calls == 2 && rec.last == nullptr);
}

static void test_counted_buffer() {
	// drop_ref: count 2 -> 1 (no destruction); 1 -> 0 runs the destructor and then free_internal(this, 0).
	void* mem = std::malloc(sizeof(gameswf::counted_buffer));
	gameswf::counted_buffer* cb = new (mem) gameswf::counted_buffer();
	cb->m_ref_count = 2;
	reset_counters();
	cb->drop_ref();
	CHECK(cb->m_ref_count == 1);
	CHECK(g_free_calls == 0);
	CHECK(g_membuf_dtor_calls == 0);
	cb->drop_ref();
	CHECK(g_membuf_dtor_calls == 1);
	CHECK(g_free_calls == 1);
	CHECK(g_last_free_ptr == mem);
	CHECK(g_last_free_size == 0u);
	std::free(mem);  // free_internal only records

	// The dictionary (array<const tu_string*> at +0x14) is released by the destructor with reserve(0): a buffer that was
	// allocated is freed once, through free_internal, with the capacity in bytes; an empty dictionary frees nothing.
	void* mem2 = std::malloc(sizeof(gameswf::counted_buffer));
	gameswf::counted_buffer* cb2 = new (mem2) gameswf::counted_buffer();
	static const tu_string kText;
	cb2->m_dictionary.push_back(&kText);
	cb2->m_dictionary.push_back(&kText);
	CHECK(cb2->m_dictionary.size() == 2);
	CHECK(cb2->m_dictionary[1] == &kText);
	const void* dictionary_buffer = &cb2->m_dictionary[0];
	reset_counters();
	cb2->~counted_buffer();
	CHECK(g_free_calls == 1);
	CHECK(g_last_free_ptr == dictionary_buffer);
	CHECK(g_membuf_dtor_calls == 1);
	std::free(mem2);

	// A fresh counted buffer has count 0 and an empty dictionary.
	void* mem3 = std::malloc(sizeof(gameswf::counted_buffer));
	gameswf::counted_buffer* cb3 = new (mem3) gameswf::counted_buffer();
	CHECK(cb3->m_ref_count == 0);
	CHECK(cb3->m_dictionary.size() == 0);
	reset_counters();
	cb3->~counted_buffer();
	CHECK(g_free_calls == 0);
	CHECK(g_membuf_dtor_calls == 1);
	std::free(mem3);
}

// Bucket count and rehash for the cxform and matrix tables. set_capacity(n) asks for raw capacity 3n/2, which
// reaches set_raw_capacity. The DH2 minimum is 4 buckets (upstream uses 16), so set_capacity(4) (raw 6, log2(5)+1 = 3.3)
// gives 8 buckets, mask 7.
static void test_cxform_hash() {
	typedef hash<int, gameswf::cxform*, fixed_size_hash<int> > cxform_hash;
	cxform_hash h;
	h.set_capacity(4);
	CHECK(table_mask(&h) == 7);
	h.set_capacity(4);  // same bucket count: no rebuild
	CHECK(table_mask(&h) == 7);

	cxform_hash small;
	small.set_capacity(1);  // raw 1: minimum 4 buckets
	CHECK(table_mask(&small) == 3);
	small.set_capacity(0);  // raw 0: clear
	CHECK(table_mask(&small) == -1);
	CHECK(small.is_empty());

	// Growth keeps every value. Keys are 1 + 7*i.
	cxform_hash grown;
	for (int i = 0; i < 100; ++i) {
		grown.add(1 + 7 * i, reinterpret_cast<gameswf::cxform*>(&g_values[i]));
	}
	CHECK(grown.size() == 100);
	for (int i = 0; i < 100; ++i) {
		gameswf::cxform* out = nullptr;
		CHECK(grown.get(1 + 7 * i, &out));
		CHECK(out == reinterpret_cast<gameswf::cxform*>(&g_values[i]));
	}
	CHECK(!grown.get(3, nullptr));  // 3 is not a key
}

static void test_matrix_hash() {
	typedef hash<int, gameswf::matrix*, fixed_size_hash<int> > matrix_hash;
	matrix_hash h;
	h.set_capacity(4);
	CHECK(table_mask(&h) == 7);

	matrix_hash small;
	small.set_capacity(2);  // raw 3: minimum 4 buckets
	CHECK(table_mask(&small) == 3);

	matrix_hash grown;
	for (int i = 0; i < 100; ++i) {
		grown.add(1 + 7 * i, reinterpret_cast<gameswf::matrix*>(&g_values[i]));
	}
	CHECK(grown.size() == 100);
	for (int i = 0; i < 100; ++i) {
		gameswf::matrix* out = nullptr;
		CHECK(grown.get(1 + 7 * i, &out));
		CHECK(out == reinterpret_cast<gameswf::matrix*>(&g_values[i]));
	}
}

int main() {
	test_execute_tags();
	test_counted_buffer();
	test_cxform_hash();
	test_matrix_hash();
	if (g_failures != 0) {
		std::fprintf(stderr, "%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("pack2-6d7f71-0: all checks passed\n");
	return 0;
}
