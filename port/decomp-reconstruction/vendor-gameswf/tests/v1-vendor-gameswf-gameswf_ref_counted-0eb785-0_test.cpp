// Test for batch v1-vendor-gameswf-gameswf_ref_counted-0eb785-0 (gameswf::ref_counted).
//
// The test supplies the callees that are not in this batch, so the reference-count, proxy and
// destructor logic can run on its own:
//   gameswf::free_internal (0x752b38)           records the call (pointer, size) and frees with free()
//   gameswf::destruct<ref_counted> (0x75a214)   records the call and deletes the object
//   operator new(size_t, swf::MemHint) (0x752ba8) allocates with malloc()
//
// Every ref_counted object is allocated by operator new(size, MemHint) and its block is released by free_internal(block, 0)
// (the class-level operator new and delete of vendor-gameswf/ref_counted.hpp), so deleting an object frees its own block as
// well as the proxy it may own: the checks below count both and name which pointer each free was for.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>

#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/ref_counted.hpp"

namespace {

int g_failures = 0;
int g_free_calls = 0;
int g_destruct_calls = 0;
std::uintptr_t g_free_value = 0;       // pointer of the last free_internal call
std::uintptr_t g_free_prev_value = 0;  // pointer of the call before it
unsigned int g_free_size = 0xffffffffu;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

}  // namespace

namespace gameswf {

void free_internal(void* p, unsigned int size) {
	++g_free_calls;
	g_free_prev_value = g_free_value;
	g_free_value = reinterpret_cast<std::uintptr_t>(p);
	g_free_size = size;
	std::free(p);
}

template <class T>
void destruct(const T* object) {
	++g_destruct_calls;
	delete const_cast<T*>(object);
}

template void destruct<ref_counted>(const ref_counted* object);

}  // namespace gameswf

void* operator new(std::size_t size, swf::MemHint) {
	return std::malloc(size);
}

int main() {
	// 1. Count: two add_ref calls and one drop leave the count at 1, so no destruct. The next drop
	//    reaches zero and destructs the object (it is deleted, so it is not touched again). Deleting it
	//    releases the object's own block with free_internal(block, 0).
	gameswf::ref_counted* a = new gameswf::ref_counted;
	const std::uintptr_t a_value = reinterpret_cast<std::uintptr_t>(a);
	a->add_ref();
	a->add_ref();
	a->drop_ref();
	CHECK(g_destruct_calls == 0);
	CHECK(g_free_calls == 0);
	a->drop_ref();
	CHECK(g_destruct_calls == 1);
	CHECK(g_free_calls == 1);
	CHECK(g_free_value == a_value);
	CHECK(g_free_size == 0);

	// 2. add_ref is const. Count 0 -> 1 through a const pointer, then drop reaches zero. No proxy exists, so
	//    the only free is the object's block.
	gameswf::ref_counted* b = new gameswf::ref_counted;
	const std::uintptr_t b_value = reinterpret_cast<std::uintptr_t>(b);
	const gameswf::ref_counted* cb = b;
	cb->add_ref();
	CHECK(g_destruct_calls == 1);
	b->drop_ref();
	CHECK(g_destruct_calls == 2);
	CHECK(g_free_calls == 2);
	CHECK(g_free_value == b_value);

	// 3. get_weak_proxy creates the proxy alive. The second call returns the same proxy and adds no
	//    reference, so one detach frees it.
	gameswf::ref_counted* c = new gameswf::ref_counted;
	const std::uintptr_t c_value = reinterpret_cast<std::uintptr_t>(c);
	weak_proxy* p1 = c->get_weak_proxy();
	CHECK(p1 != nullptr);
	CHECK(p1->is_alive());
	const std::uintptr_t p1_value = reinterpret_cast<std::uintptr_t>(p1);
	weak_proxy* p2 = c->get_weak_proxy();
	CHECK(p2 == p1);
	CHECK(g_free_calls == 2);

	// 4. detach marks the proxy dead, drops its count to zero and frees it with free_internal(proxy, 0).
	//    The stored pointer is cleared, so a second detach does nothing.
	c->detach_weak_proxy();
	CHECK(g_free_calls == 3);
	CHECK(g_free_value == p1_value);
	CHECK(g_free_size == 0);
	c->detach_weak_proxy();
	CHECK(g_free_calls == 3);

	// 5. The object still has count 0. add_ref then drop destructs it and frees its block (the proxy is
	//    already gone, so there is one free).
	c->add_ref();
	c->drop_ref();
	CHECK(g_destruct_calls == 3);
	CHECK(g_free_calls == 4);
	CHECK(g_free_value == c_value);
	CHECK(g_free_size == 0);

	// 6. Deleting an object with a live proxy (count 1) frees the proxy through free_internal(proxy, 0)
	//    (in the destructor) and then the object's block (operator delete).
	gameswf::ref_counted* d = new gameswf::ref_counted;
	const std::uintptr_t d_value = reinterpret_cast<std::uintptr_t>(d);
	weak_proxy* pd = d->get_weak_proxy();
	CHECK(pd->is_alive());
	const std::uintptr_t pd_value = reinterpret_cast<std::uintptr_t>(pd);
	const int free_before_d = g_free_calls;
	delete d;
	CHECK(g_free_calls == free_before_d + 2);
	CHECK(g_free_prev_value == pd_value);
	CHECK(g_free_value == d_value);
	CHECK(g_free_size == 0);

	// 7. A proxy with an extra reference outlives the object. The destructor marks it dead and drops
	//    the count to one, so the proxy is not freed: only the object's block is. The test then releases
	//    the last reference itself, which frees the proxy.
	gameswf::ref_counted* e = new gameswf::ref_counted;
	const std::uintptr_t e_value = reinterpret_cast<std::uintptr_t>(e);
	weak_proxy* pe = e->get_weak_proxy();
	const std::uintptr_t pe_value = reinterpret_cast<std::uintptr_t>(pe);
	pe->add_ref();
	const int free_before_e = g_free_calls;
	delete e;
	CHECK(g_free_calls == free_before_e + 1);
	CHECK(g_free_value == e_value);
	CHECK(!pe->is_alive());
	pe->drop_ref();
	CHECK(g_free_calls == free_before_e + 2);
	CHECK(g_free_value == pe_value);

	if (g_failures == 0) {
		std::printf("ref_counted tests passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
