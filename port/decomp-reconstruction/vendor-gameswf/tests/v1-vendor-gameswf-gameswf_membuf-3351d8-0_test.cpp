// Test for batch v1-vendor-gameswf-gameswf_membuf-3351d8-0 (gameswf::membuf capacity, reserve, shrink).
//
// The test supplies what is not in this batch, so the sizing and reallocation logic runs on its own:
//   gameswf::malloc_internal(size, hint) (0x752b9c)            records the call, uses malloc()
//   gameswf::realloc_internal(p, new, old, hint) (0x752bac)    records the call, copies min(old, new)
//                                                              bytes to a new block, frees p when old > 0
//   membuf default, read-only constructors and destructor      (base/membuf.cpp, not in this batch)
// The read-only constructor sets size() without a capacity, which reaches shrink() with capacity != size.
// Capacity is not public, so it is observed through the old_size argument of realloc_internal.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_membuf-3351d8-0.cpp

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "base/membuf.h"
#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"

namespace {

int g_failures = 0;
int g_malloc_calls = 0;
unsigned int g_malloc_size = 0;
int g_malloc_hint = -1;
int g_realloc_calls = 0;
unsigned int g_realloc_new = 0;
unsigned int g_realloc_old = 0;
int g_realloc_hint = -1;

void reset_counters() {
	g_malloc_calls = 0;
	g_malloc_size = 0;
	g_malloc_hint = -1;
	g_realloc_calls = 0;
	g_realloc_new = 0;
	g_realloc_old = 0;
	g_realloc_hint = -1;
}

#define CHECK(cond)                                                     \
	do {                                                                \
		if (!(cond)) {                                                  \
			std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
			++g_failures;                                               \
		}                                                               \
	} while (0)

}  // namespace

namespace gameswf {

void* malloc_internal(unsigned int size, swf::MemHint hint) {
	++g_malloc_calls;
	g_malloc_size = size;
	g_malloc_hint = static_cast<int>(hint);
	return std::malloc(size ? size : 1);
}

void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint hint) {
	++g_realloc_calls;
	g_realloc_new = new_size;
	g_realloc_old = old_size;
	g_realloc_hint = static_cast<int>(hint);
	void* np = std::malloc(new_size ? new_size : 1);
	const unsigned int n = old_size < new_size ? old_size : new_size;
	if (p != nullptr && np != nullptr && n > 0) {
		std::memcpy(np, p, n);
	}
	if (p != nullptr && old_size > 0) {
		std::free(p);
	}
	return np;
}

}  // namespace gameswf

// Not in this batch: upstream base/membuf.cpp. The test needs them so objects can be built and destroyed.
membuf::membuf() : m_size(0), m_capacity(0), m_data(nullptr), m_read_only(false) {}

membuf::membuf(read_only_enum, const void* data, int size)
    : m_size(size), m_capacity(0), m_data(const_cast<void*>(data)), m_read_only(true) {}

membuf::~membuf() {
	if (!m_read_only && m_data != nullptr) {
		std::free(m_data);
	}
	m_data = nullptr;
}

int main() {
	// capacity: size 0 gives 256; otherwise round up to a multiple of 256.
	CHECK(membuf::capacity(0) == 256);
	CHECK(membuf::capacity(1) == 256);
	CHECK(membuf::capacity(255) == 256);
	CHECK(membuf::capacity(256) == 256);
	CHECK(membuf::capacity(257) == 512);
	CHECK(membuf::capacity(4096) == 4096);
	CHECK(membuf::capacity(4097) == 4352);

	// reserve on an empty membuf allocates with hint 0 and returns the new data pointer.
	{
		reset_counters();
		membuf m;
		void* p = m.reserve(100);
		CHECK(g_malloc_calls == 1);
		CHECK(g_malloc_size == 100);
		CHECK(g_malloc_hint == 0);
		CHECK(p != nullptr);
		CHECK(p == m.data());
		CHECK(m.size() == 0);

		// Growing reallocates: realloc(data, new, old, hint 0).
		void* q = m.reserve(300);
		CHECK(g_realloc_calls == 1);
		CHECK(g_realloc_new == 300);
		CHECK(g_realloc_old == 100);
		CHECK(g_realloc_hint == 0);
		CHECK(q == m.data());

		// A smaller request does not reallocate, but still records the request as the capacity.
		void* r = m.reserve(50);
		CHECK(g_realloc_calls == 1);
		CHECK(g_malloc_calls == 1);
		CHECK(r == q);

		// shrink(): capacity 50 != size 0, data set, so realloc(data, 0, 50, hint 0).
		m.shrink();
		CHECK(g_realloc_calls == 2);
		CHECK(g_realloc_new == 0);
		CHECK(g_realloc_old == 50);
		CHECK(g_realloc_hint == 0);

		// Now capacity == size, so shrink() does nothing.
		m.shrink();
		CHECK(g_realloc_calls == 2);
	}

	// A read-only membuf has size 100 and capacity 0. shrink() reallocates to the size.
	{
		reset_counters();
		static const char kBytes[100] = {0};
		membuf m(membuf::READ_ONLY, kBytes, 100);
		CHECK(m.size() == 100);
		m.shrink();
		CHECK(g_realloc_calls == 1);
		CHECK(g_realloc_new == 100);
		CHECK(g_realloc_old == 0);
		const membuf& cm = m;
		CHECK(cm.data() != nullptr);
		CHECK(cm.data() != static_cast<const void*>(kBytes));

		// capacity now equals size, so the second shrink() does nothing.
		m.shrink();
		CHECK(g_realloc_calls == 1);
	}

	if (g_failures != 0) {
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("membuf tests passed\n");
	return 0;
}
