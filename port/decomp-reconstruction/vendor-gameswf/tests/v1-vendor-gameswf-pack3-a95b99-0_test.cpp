// Test for batch v1-vendor-gameswf-pack3-a95b99-0.
//
// Covered: array<swf_event*>::release_buffer (0x75d89c), permanent_string_cache::get (0x75c2cc), clear (0x76c8ac) and its
// destructor (0x76c990), and destruct<permanent_string> (0x76c870). as_environment::pop and get_player need a
// constructed as_environment, which needs as_object and the as_value bodies, so they are not run here.
//
// The test supplies the callees that are not in this batch:
//   gameswf::free_internal (0x752b38) counts the call and frees with free(); gameswf::malloc_internal and
//   realloc_internal (the gameswf heap) forward to malloc and realloc, so every block that reaches free_internal
//   comes from malloc (the permanent strings are built by the cache with operator new, which this test replaces with
//   malloc for the same reason)
//   gameswf::as_value::operator= and drop_refs (the as_value batch): no-ops, so the array copy is unused here
//   tu_string::resize (the tu_string batch): a malloc based version for the heap case
//   hash<string_pointer, permanent_string*>::set_raw_capacity (pack2, 0x75c0e8): the shared rehash body, as a weak definition
//   operator new(size_t, swf::MemHint): test-support/dh2_test_support.cpp (weak, the C heap), which the cache's blocks and tables use
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>

#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity, the shared rehash body
#include "vendor-gameswf/permanent_string_cache.hpp"

namespace {

int g_failures = 0;
int g_frees = 0;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

}  // namespace

// The cache builds its strings with plain new. Route it through malloc so that free_internal can release them.
void* operator new(std::size_t size) {
	void* p = std::malloc(size);
	if (!p) {
		throw std::bad_alloc();
	}
	return p;
}
void operator delete(void* p) noexcept {
	std::free(p);
}
void operator delete(void* p, std::size_t) noexcept {
	std::free(p);
}

namespace gameswf {

struct swf_event;  // only pointers are stored in the test array

void free_internal(void* p, unsigned int size) {
	(void)size;
	++g_frees;
	std::free(p);
}

void* malloc_internal(unsigned int size, swf::MemHint) {
	return std::malloc(size);
}

void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) {
	return std::realloc(p, new_size);
}

void as_value::operator=(const as_value& v) {
	(void)v;
}

void as_value::drop_refs() {}

}  // namespace gameswf

// The cache table's rehash (0x75c0e8) is pack2's, whose object also defines the tag classes' virtuals and is not linked here.
// permanent_string_cache::get adds to the table, so the table needs it: the shared rehash body is the same function (pack2 runs
// exactly this call). Weak, so that the real body wins wherever pack2 is linked as well.
template <>
__attribute__((weak)) void ::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::set_raw_capacity(int new_size) {
	dh2_hash_access::set_raw_capacity(*this, new_size);
}

// release_buffer drops the buffer and the count. The array stays usable afterwards.
void test_release_buffer() {
	::array<gameswf::swf_event*> events;
	int a = 0;
	int b = 0;
	events.push_back(reinterpret_cast<gameswf::swf_event*>(&a));
	events.push_back(reinterpret_cast<gameswf::swf_event*>(&b));
	CHECK(events.size() == 2);

	events.release_buffer();
	CHECK(events.size() == 0);

	events.push_back(static_cast<gameswf::swf_event*>(nullptr));
	CHECK(events.size() == 1);
	CHECK(events[0] == nullptr);
}

// get() interns: the same text gives the same object (found by text, not by address), another text gives another
// object, and every object is interned. The text is copied, so the cache does not depend on the argument's lifetime.
void test_get_interns() {
	gameswf::permanent_string_cache cache;
	::tu_string a1("alpha");
	::tu_string a2("alpha");
	::tu_string b("beta");

	gameswf::permanent_string* p1 = cache.get(a1);
	CHECK(p1 != nullptr);
	CHECK(p1 != static_cast<const ::tu_string*>(&a1));
	CHECK(p1->is_interned());
	CHECK(std::strcmp(p1->c_str(), "alpha") == 0);
	CHECK(cache.size() == 1);

	CHECK(cache.get(a2) == p1);
	CHECK(cache.size() == 1);
	CHECK(cache.get(*p1) == p1);  // looking up the interned string itself finds it by pointer

	gameswf::permanent_string* p2 = cache.get(b);
	CHECK(p2 != p1);
	CHECK(std::strcmp(p2->c_str(), "beta") == 0);
	CHECK(cache.size() == 2);

	// Text is compared case sensitively (strcmp), although the hash folds case.
	::tu_string upper("ALPHA");
	gameswf::permanent_string* p3 = cache.get(upper);
	CHECK(p3 != p1);
	CHECK(std::strcmp(p3->c_str(), "ALPHA") == 0);
	CHECK(cache.size() == 3);
}

// clear() destructs the permanent string of each entry once (a short text lives inline: one free_internal for the
// object), then the table is empty. It takes new entries afterwards, and clear() on an empty cache frees nothing.
void test_clear_destructs_entries() {
	g_frees = 0;
	gameswf::permanent_string_cache cache;
	::tu_string t1("alpha");
	::tu_string t2("beta");
	::tu_string t3("gamma");
	cache.get(t1);
	cache.get(t2);
	cache.get(t3);
	CHECK(cache.size() == 3);

	g_frees = 0;
	cache.clear();
	CHECK(g_frees == 3 + 1);  // three objects, and the hash table block
	CHECK(cache.size() == 0);
	CHECK(cache.is_empty());

	cache.get(t1);
	CHECK(cache.size() == 1);
	g_frees = 0;
	cache.clear();
	CHECK(g_frees == 1 + 1);
	g_frees = 0;
	cache.clear();
	CHECK(g_frees == 0);
}

// A text longer than the inline capacity (14 characters) lives on the heap: clearing frees the text as well.
void test_heap_text_is_freed() {
	gameswf::permanent_string_cache cache;
	::tu_string longtext("a string that is longer than fourteen characters");
	gameswf::permanent_string* p = cache.get(longtext);
	CHECK(std::strcmp(p->c_str(), "a string that is longer than fourteen characters") == 0);

	g_frees = 0;
	cache.clear();
	CHECK(g_frees == 2 + 1);  // the heap text, the object, and the hash table block
}

// The destructor runs clear(): each entry's permanent string is destructed once.
void test_destructor_destructs_entries() {
	::tu_string t1("one");
	::tu_string t2("two");
	gameswf::permanent_string_cache* cache = new gameswf::permanent_string_cache;
	cache->get(t1);
	cache->get(t2);
	g_frees = 0;
	delete cache;
	CHECK(g_frees == 2 + 1);
}

// destruct<permanent_string>: null is ignored; an object is destroyed and released with free_internal.
void test_destruct() {
	g_frees = 0;
	gameswf::destruct<gameswf::permanent_string>(nullptr);
	CHECK(g_frees == 0);

	gameswf::permanent_string* p = new gameswf::permanent_string(::tu_string("x"));
	gameswf::destruct<gameswf::permanent_string>(p);
	CHECK(g_frees == 1);
}

int main() {
	test_release_buffer();
	test_get_interns();
	test_clear_destructs_entries();
	test_heap_text_is_freed();
	test_destructor_destructs_entries();
	test_destruct();

	if (g_failures == 0) {
		std::printf("OK v1-vendor-gameswf-pack3-a95b99-0 tests\n");
		return 0;
	}
	std::printf("%d failure(s)\n", g_failures);
	return 1;
}
