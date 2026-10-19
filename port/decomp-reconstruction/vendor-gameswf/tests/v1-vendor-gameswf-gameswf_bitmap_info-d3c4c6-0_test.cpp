// Test for batch v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0 (gameswf::bitmap_info).
//
// The bitmap_info bodies need gameswf::ref_counted (its constructor and destructor are in the
// ref_counted batch). This test supplies the same callees that the ref_counted test supplies, so the
// virtual forwarding and the destructor can run on their own:
//   gameswf::free_internal, gameswf::destruct<ref_counted>, operator new(size_t, swf::MemHint)
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>

#include "core-platform/deps/swf_types.hpp"
#include "gameswf/gameswf.h"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
	do {                                                                         \
		if (!(cond)) {                                                           \
			std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
			++g_failures;                                                        \
		}                                                                        \
	} while (0)

// A subclass that supplies sizes, as a render handler's bitmap_info does.
struct sized_bitmap : public gameswf::bitmap_info {
	int get_width() const override { return 123; }
	int get_height() const override { return 45; }
};

}  // namespace

namespace gameswf {

void free_internal(void* p, unsigned int size) {
	(void)size;
	std::free(p);
}

template <class T>
void destruct(const T* object) {
	delete const_cast<T*>(object);
}

template void destruct<ref_counted>(const ref_counted* object);

}  // namespace gameswf

void* operator new(std::size_t size, swf::MemHint) {
	return std::malloc(size);
}

// The gameswf.h include chain emits inline tu_string members (kept by their .pdata entries), and those
// call five out-of-line tu_string members from base/container.cpp. This test never runs them, so they
// abort if reached. The ref_counted test has no such dependency.
bool tu_string::operator==(const tu_string&) const { std::abort(); }
void tu_string::operator+=(const char*) { std::abort(); }
void tu_string::operator+=(const tu_string&) { std::abort(); }
void tu_string::resize(int) { std::abort(); }
int tu_string::utf8_char_count(const char*, int) { std::abort(); }

int main() {
	// 1. Base object: get_internal_width and get_internal_height forward to the base get_width and
	//    get_height, which return 0 in upstream.
	gameswf::bitmap_info* plain = new gameswf::bitmap_info();
	CHECK(plain->get_internal_width() == 0);
	CHECK(plain->get_internal_height() == 0);

	// 2. The DH2 flags: lock and is_layout return 0. The empty members run without effect.
	CHECK(plain->lock() == 0);
	CHECK(plain->is_layout() == 0);
	plain->layout();
	plain->unlayout();
	plain->activate();
	plain->set_writable();
	plain->unlock();
	plain->set_texture(nullptr);
	plain->set_min_filter(static_cast<gameswf::bitmap_info::filter_mode>(0));
	plain->set_mag_filter(static_cast<gameswf::bitmap_info::filter_mode>(0));
	CHECK(plain->get_width() == 0);
	CHECK(plain->get_height() == 0);

	// 3. The deleting path: delete through the base pointer runs the virtual destructor.
	delete plain;

	// 4. Dispatch: get_internal_width and get_internal_height call the virtual get_width and
	//    get_height, so a subclass override is used.
	gameswf::bitmap_info* sized = new sized_bitmap();
	CHECK(sized->get_internal_width() == 123);
	CHECK(sized->get_internal_height() == 45);
	CHECK(sized->get_width() == 123);
	CHECK(sized->get_height() == 45);
	delete sized;

	if (g_failures != 0) {
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("bitmap_info: all checks passed\n");
	return 0;
}
