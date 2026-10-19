// Test for batch v1-vendor-gameswf-gameswf-fddef6-7: gameswf::get_color_transform_member (0x7da144) and
// gameswf::destruct<gameswf::image_alpha> (0x7d0444).
//
// The batch source is linked with the pack22 source, which supplies hash<tu_stringi, as_color_transform_member>::
// set_raw_capacity (the table this batch builds). The tu_string batch and the two upstream base units give tu_string and
// tu_stringi their out-of-line members. The allocator is the test's own (std::malloc / std::free), as in pack22.
//
// The destructor test uses a fake object: its first word is a vtable whose slot 0 is a recording stand-in, which is what
// the virtual destructor call reaches. The image_alpha constructor and its vtable are in another batch and are not linked.
//
// create_render_handler_irrlicht, transform_point and mouse_event_init are not tested. They need objects that are not built in
// this tree (see the batch header comment): the as_object runtime, as_mouse_event and render_handler_glitch constructors they
// name are the weak aborting stubs of test-support/dh2_as_runtime_stubs.cpp.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-7.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack22-8e8f27-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "vendor-gameswf/as_color_transform_dh2.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/image_alpha.hpp"
#include "vendor-gameswf/ref_counted.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                 \
	do {                                                                            \
		if (!(cond)) {                                                              \
			std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);    \
			++g_failures;                                                           \
		}                                                                           \
	} while (0)

// Recording stand-ins for the allocator and for the image_alpha vtable slot the destructor reaches.
int g_free_calls = 0;
void* g_last_freed = nullptr;
int g_dtor_calls = 0;
void* g_dtor_self = nullptr;

void fake_dtor_slot0(void* self) {  // the complete-object destructor (slot 0), called with this
	++g_dtor_calls;
	g_dtor_self = self;
}

void fake_dtor_slot1(void* self) {  // the deleting destructor (slot 1), not called by destruct<T>
	(void)self;
}

struct FakeVtable {
	void (*slot[2])(void*);
};

FakeVtable g_fake_vtable = {{&fake_dtor_slot0, &fake_dtor_slot1}};

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

gameswf::as_color_transform_member lookup(const char* name) {
	return gameswf::get_color_transform_member(::tu_stringi(name));
}

// The enumerators are the binary's values: redMultiplier = 1 .. rgb = 9, invalidMember = 10.
void test_enumerator_values() {
	CHECK(gameswf::redMultiplier == 1);
	CHECK(gameswf::alphaOffset == 8);
	CHECK(gameswf::rgb == 9);
	CHECK(gameswf::invalidMember == 10);
}

// Every name is found with its own value, on the first call (which builds the table) and on later calls.
void test_member_lookup() {
	for (int pass = 0; pass < 2; pass++) {
		for (int i = 0; i < kCount; i++) {
			if (lookup(kMembers[i].name) != kMembers[i].value) {
				std::fprintf(stderr, "FAIL pass %d: member %s\n", pass, kMembers[i].name);
				++g_failures;
			}
		}
	}
}

// Lookups fold case, as the stringi table does in the binary.
void test_case_insensitive_lookup() {
	CHECK(lookup("REDMULTIPLIER") == gameswf::redMultiplier);
	CHECK(lookup("rGb") == gameswf::rgb);
	CHECK(lookup("AlphaOffset") == gameswf::alphaOffset);
	CHECK(lookup("greenoffset") == gameswf::greenOffset);
}

// Unknown names give invalidMember: empty, a prefix or a longer name, a near miss, and a name with a space.
void test_unknown_names() {
	CHECK(lookup("") == gameswf::invalidMember);
	CHECK(lookup("red") == gameswf::invalidMember);
	CHECK(lookup("redMultipliers") == gameswf::invalidMember);
	CHECK(lookup("rgb ") == gameswf::invalidMember);
	CHECK(lookup("transform") == gameswf::invalidMember);
	CHECK(lookup("alpha") == gameswf::invalidMember);
	// The table still answers after misses.
	CHECK(lookup("blueOffset") == gameswf::blueOffset);
}

// destruct<image_alpha>(nullptr) does nothing: no destructor call and no free.
void test_destruct_null() {
	const int dtor_before = g_dtor_calls;
	const int free_before = g_free_calls;
	gameswf::destruct<gameswf::image_alpha>(static_cast<const gameswf::image_alpha*>(nullptr));
	CHECK(g_dtor_calls == dtor_before);
	CHECK(g_free_calls == free_before);
}

// destruct<image_alpha>(p) calls the destructor (vtable slot 0) on p, then frees p with free_internal.
void test_destruct_object() {
	void* obj = std::malloc(sizeof(gameswf::image_alpha));
	*static_cast<void**>(obj) = static_cast<void*>(&g_fake_vtable.slot[0]);  // the vptr, as the first word
	g_dtor_calls = 0;
	g_dtor_self = nullptr;
	g_free_calls = 0;
	g_last_freed = nullptr;

	gameswf::destruct<gameswf::image_alpha>(static_cast<const gameswf::image_alpha*>(obj));

	CHECK(g_dtor_calls == 1);
	CHECK(g_dtor_self == obj);
	CHECK(g_free_calls == 1);
	CHECK(g_last_freed == obj);
}

}  // namespace

// Test-only stand-ins for the game's allocator. The batch sources and pack22 call these through gameswf_alloc.hpp.
namespace gameswf {

void* malloc_internal(unsigned int size, swf::MemHint /*hint*/) { return std::malloc(size); }

void free_internal(void* p, unsigned int /*size*/) {
	++g_free_calls;
	g_last_freed = p;
	std::free(p);
}

}  // namespace gameswf

int main() {
	test_enumerator_values();
	test_member_lookup();
	test_case_insensitive_lookup();
	test_unknown_names();
	test_destruct_null();
	test_destruct_object();

	if (g_failures == 0) {
		std::printf("fddef6-7 get_color_transform_member and destruct<image_alpha> tests: all passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
