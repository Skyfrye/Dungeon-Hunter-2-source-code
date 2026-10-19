// Test for batch v1-vendor-gameswf-pack22-8e8f27-0: hash<tu_stringi, as_color_transform_member, stringi_hash_functor<tu_stringi>>
// ::set_raw_capacity (0x7d9f98), and the stringi_hash<as_color_transform_member> table that uses it (its destructor is the
// implicit one, which calls hash::clear()).
// The container, utf8 and tu_string sources give tu_string its out-of-line members (tu_stringi and the hash keys need them).
// The batch source also defines the as_color_transform and as_event constructors; the object runtime they reach (as_object,
// the vtables of those classes) is defined by test-support/dh2_as_runtime_stubs.cpp as weak aborting functions, because this
// test never constructs an object.
//
// Covers the state changes that run without the engine: growing, rehashing and shrinking the table keeps every key and its
// value, repeated sizing with the same bucket count keeps the table, lookups ignore case, and clear() empties the table.
// Bucket counts are chosen away from the power-of-two boundaries where the single-precision log rounds (see gameswf_hash_dh2.hpp).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack22-8e8f27-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstdio>
#include <cstdlib>

#include "vendor-gameswf/as_color_transform_dh2.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                 \
	do {                                                                            \
		if (!(cond)) {                                                              \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
			++g_failures;                                                           \
		}                                                                           \
	} while (0)

struct NamedMember {
	const char* name;
	gameswf::as_color_transform_member value;
};

const NamedMember kMembers[] = {
	{"redMultiplier", gameswf::redMultiplier},
	{"greenMultiplier", gameswf::greenMultiplier},
	{"blueMultiplier", gameswf::blueMultiplier},
	{"alphaMultiplier", gameswf::alphaMultiplier},
	{"redOffset", gameswf::redOffset},
	{"greenOffset", gameswf::greenOffset},
	{"blueOffset", gameswf::blueOffset},
	{"alphaOffset", gameswf::alphaOffset},
	{"rgb", gameswf::rgb},
};
const int kCount = static_cast<int>(sizeof(kMembers) / sizeof(kMembers[0]));

typedef hash<tu_stringi, gameswf::as_color_transform_member, stringi_hash_functor<tu_stringi> > member_table;

// Every name must be present with its own value.
void check_all(const member_table& t, const char* when) {
	CHECK(t.size() == kCount);
	for (int i = 0; i < kCount; i++) {
		gameswf::as_color_transform_member v = gameswf::invalidMember;
		const bool found = t.get(kMembers[i].name, &v);
		if (!found || v != kMembers[i].value) {
			std::fprintf(stderr, "FAIL %s: member %s\n", when, kMembers[i].name);
			++g_failures;
		}
	}
}

// 0 buckets requested on an empty table is a no-op. Growth from the minimum table, a rehash to a larger table, a second
// sizing with the same bucket count, and a shrink to a smaller table each keep all entries.
void test_growth_rehash_shrink() {
	member_table t;
	CHECK(t.size() == 0);
	CHECK(t.is_empty());

	t.set_capacity(0);  // raw capacity 0: clear, nothing to do
	CHECK(t.is_empty());

	t.set_capacity(3);  // raw capacity 4 (the minimum table)
	for (int i = 0; i < kCount; i++) {
		t.add(kMembers[i].name, kMembers[i].value);  // grows through check_expand, which calls set_raw_capacity
	}
	check_all(t, "after add with growth");

	t.set_capacity(40);  // raw capacity 60, so 64 buckets: a rehash to a larger table
	check_all(t, "after rehash to 64 buckets");

	t.set_capacity(40);  // the same bucket count again: no change
	check_all(t, "after repeated sizing to 64 buckets");

	t.set_capacity(2);   // new_size is raised to the size (9), raw 13, 16 buckets: a shrink
	check_all(t, "after shrink to 16 buckets");

	t.clear();
	CHECK(t.is_empty());
	CHECK(t.size() == 0);
	gameswf::as_color_transform_member v = gameswf::invalidMember;
	CHECK(!t.get("rgb", &v));
}

// Lookups fold case, as the stringi table does in the binary.
void test_case_insensitive_lookup() {
	member_table t;
	t.set_capacity(12);
	t.add("alphaOffset", gameswf::alphaOffset);
	gameswf::as_color_transform_member v = gameswf::invalidMember;
	CHECK(t.get("ALPHAOFFSET", &v));
	CHECK(v == gameswf::alphaOffset);
	CHECK(!t.get("alphaMultiplier", &v));
}

// The stringi_hash<as_color_transform_member> wrapper: its destructor (implicit) clears the table and frees its storage.
void test_stringi_hash_destructor() {
	for (int round = 0; round < 3; round++) {
		stringi_hash<gameswf::as_color_transform_member> t;
		t.set_capacity(10);
		for (int i = 0; i < kCount; i++) {
			t.add(kMembers[i].name, kMembers[i].value);
		}
		CHECK(t.size() == kCount);
	}
}

}  // namespace

// Test-only stand-ins for the game's allocator. The batch source calls these through the gameswf_alloc.hpp declarations.
namespace gameswf {

void* malloc_internal(unsigned int size, swf::MemHint /*hint*/) { return std::malloc(size); }
void free_internal(void* p, unsigned int /*size*/) { std::free(p); }

}  // namespace gameswf

int main() {
	test_growth_rehash_shrink();
	test_case_insensitive_lookup();
	test_stringi_hash_destructor();

	if (g_failures == 0) {
		std::printf("pack22-8e8f27-0 as_color_transform member table tests: all passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
