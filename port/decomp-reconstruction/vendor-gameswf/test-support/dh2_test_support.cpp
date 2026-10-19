// Link support for the vendor-gameswf tests, run with tools/trackb/check_tu.sh --test (not a test by itself, and outside
// tests/ so that the CMake test glob does not make an executable of it; the CMake build links the batch allocator).
//
// The containers of the vendored gameswf (array, hash, tu_string) allocate through gameswf::malloc_internal,
// realloc_internal and free_internal (upstream/gameswf-r1714/compatibility_include.h maps tu_malloc, tu_realloc and
// tu_free to them), as the DH2 binary does. The real bodies are in src/v1-vendor-gameswf-gameswf-fddef6-0.cpp and
// forward to the core-platform allocator. A test that does not link that batch links this file instead.
//
// The definitions are weak: when the batch source (or a stand-in of the test itself) is linked, its strong definition
// wins and nothing else changes. The bodies use the C heap, like the batch's forwards do on the host.

#include <cstddef>
#include <cstdlib>
#include <cstring>

#include "core-platform/deps/swf_types.hpp"

namespace gameswf {

__attribute__((weak)) void free_internal(void* p, unsigned int) {
	std::free(p);
}

__attribute__((weak)) void* malloc_internal(unsigned int size, swf::MemHint) {
	return std::malloc(size);
}

__attribute__((weak)) void* realloc_internal(void* p, unsigned int new_size, unsigned int old_size, swf::MemHint hint) {
	void* block = std::malloc(new_size);
	if (block != nullptr && p != nullptr) {
		std::memcpy(block, p, old_size < new_size ? old_size : new_size);
	}
	std::free(p);
	return block;
}

}  // namespace gameswf

__attribute__((weak)) void* operator new(std::size_t size, swf::MemHint) {
	return std::malloc(size);
}
