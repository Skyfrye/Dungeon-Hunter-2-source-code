// Batch v1-vendor-gameswf-gameswf_membuf-3351d8-0: DH2 bodies for gameswf::membuf (gameswf r1714 with
// Gameloft changes).
//
// The vendored header base/membuf.h declares membuf at global scope (the binary's symbols are
// gameswf::membuf::*, same convention as the tu_string batch). Layout, 32-bit offsets (base/membuf.h):
//   +00 int m_size
//   +04 int m_capacity
//   +08 void* m_data        (host width here)
//   +0C bool m_read_only
//
// Reconstructed here (DH2 bodies):
//   0x7b6260 capacity(int)    Gameloft static member: 256-byte blocks. Upstream base/membuf.cpp has a
//                             file-static capacity with 4096-byte blocks, wrapped in #if 0 there.
//   0x7b6344 shrink()         Gameloft addition.
//   0x7b6380 reserve(int)     Gameloft addition.
//
// Upstream rows with no body here (ledger.d/v1-vendor-gameswf-gameswf_membuf-3351d8-0.csv). Each is the
// same logic as the upstream definition in base/membuf.cpp (checked against the ARM listing):
//   0x7b62dc operator!=(membuf const&) const, 0x7b6310 operator==(membuf const&) const
//   0x7b644c / 0x7b6474 membuf(tu_string const&)   (C1 / C2)
//   0x7b64a8 / 0x7b64d0 membuf(membuf const&)      (C1 / C2)
//   0x7b64f8 / 0x7b6520 membuf(void const*, int)   (C1 / C2)

#include <cstddef>

#include "base/membuf.h"
#include "core-platform/deps/swf_types.hpp"  // swf::MemHint
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::malloc_internal, gameswf::realloc_internal

// 0x7b6260 gameswf::membuf::capacity(int)   (_ZN7gameswf6membuf8capacityEi)
// The decompiler shows a `this` argument, but the body reads only the int in r0 (the ARM listing:
// CMP R0,#0 / ADDNE R0,R0,#0xFF / MOVEQ R0,#0x100 / BICNE R0,R0,#0xFF). So it is a static member.
// Its only caller in the binary is membuf::resize(int), which passes the size.
// Size 0 gives 256. Otherwise round up to a multiple of 256 (the upstream file-static uses 4096).
int membuf::capacity(int size)
{
	if (size == 0) {
		return 256;
	}
	// Unsigned arithmetic: the binary wraps at 32 bits, and so does this.
	return static_cast<int>((static_cast<unsigned int>(size) + 255u) & ~255u);
}

// 0x7b6380 gameswf::membuf::reserve(int)   (_ZN7gameswf6membuf7reserveEi)
// Returns the data pointer. With no data: malloc(new_capacity, hint 0). With data and
// new_capacity > capacity: realloc(data, new_capacity, capacity, hint 0). Then capacity = new_capacity,
// even when that shrinks the recorded capacity (the binary does not check). The ARM listing passes
// the hint as 0 (MOV R3,#0 before the realloc call; MOV R1,R0 with R0 = NULL before the malloc call).
void* membuf::reserve(int new_capacity)
{
	void* result = m_data;
	if (result != nullptr) {
		const int old_capacity = m_capacity;
		if (new_capacity > old_capacity) {
			result = gameswf::realloc_internal(result, static_cast<unsigned int>(new_capacity),
			                                   static_cast<unsigned int>(old_capacity), swf::MemHint(0));
			m_data = result;
		}
	} else {
		result = gameswf::malloc_internal(static_cast<unsigned int>(new_capacity), swf::MemHint(0));
		m_data = result;
	}
	m_capacity = new_capacity;
	return result;
}

// 0x7b6344 gameswf::membuf::shrink()   (_ZN7gameswf6membuf6shrinkEv)
// If capacity != size and the data pointer is set: m_data = realloc(m_data, size, capacity, hint 0),
// then capacity = size. Otherwise nothing changes.
// The decompiler's return value (size_t*) is r0 left over from the body: the membuf pointer on the
// no-op path, NULL or the new data pointer otherwise. The symbol gives no return type, and the source
// is taken as void, so r0 is not part of this function's contract.
void membuf::shrink()
{
	if (m_capacity == m_size || m_data == nullptr) {
		return;
	}
	m_data = gameswf::realloc_internal(m_data, static_cast<unsigned int>(m_size),
	                                   static_cast<unsigned int>(m_capacity), swf::MemHint(0));
	m_capacity = m_size;
}
