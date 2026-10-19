// Batch v1-vendor-gameswf-pack22-8e8f27-0 (vendor-gameswf, part 1 of 1). Fourteen binary symbols, one ledger row each
// (vendor-gameswf/ledger.csv; the as_color_transform and as_event rows in ledger.d/gameswf-core-asruntime.csv).
//
// Reconstructed and compiled here (1):
//   hash<tu_stringi, as_color_transform_member, stringi_hash_functor<tu_stringi>>::set_raw_capacity(int)  0x7d9f98
//   (declared in vendor-gameswf/as_color_transform_dh2.hpp).
//
// Reconstructed and compiled here (4, all complete):
//   gameswf::as_color_transform::as_color_transform(player*, cxform const*)   C1 0x7d9818, C2 0x7d9890 (same body)
//   gameswf::as_event::as_event(player*)                                       C2 0x7dabbc, C1 0x7dac60 (same body)
//   The as_color_transform constructor is declared in upstream gameswf_as_classes/as_color_transform.h (DH2 line).
//   The as_event constructor replaces the upstream one in as_event.cpp, which is wrapped in #if 0 (DH2 comment there).
//
// Upstream, no body here (6). Each is the implicit or inline definition that the upstream header gives, or the
// upstream definition in the listed file:
//   gameswf::as_color_transform::~as_color_transform() D1 0x7d97a8: no user destructor upstream; vptr, then ~as_object.
//   gameswf::stringi_hash<as_color_transform_member>::~stringi_hash() 0x7d9d88: implicit destructor of upstream
//     stringi_hash<U> (base/container.h); its body is hash::clear(), as in the binary.
//   gameswf::as_event::~as_event() D1 0x7daaf4: no user destructor upstream; vptr, then ~as_object.
//   gameswf::as_mouse_event::as_mouse_event(player*) C1 0x7dae08, C2 0x7dae3c: upstream as_mouse_event.cpp:27, base
//     constructor then vptr.
//   gameswf::as_mouse_event::~as_mouse_event() D1 0x7dae70: implicit. The base destructor is inlined, so the vptr store that
//     remains is the as_event vtable (checked in the disassembly), then ~as_object.
//
// Skipped (3): the deleting destructors D0 at 0x7d9cac (as_color_transform), 0x7dac24 (as_event), 0x7dafb8
//   (as_mouse_event). Each runs the complete destructor, then operator delete (LC_API_FREE_0). C++ delete through the
//   virtual destructor produces them.
//
// Layout (32-bit offsets, comments only; host pointers are 8 bytes):
//   as_color_transform: cxform m_color_transform at +0x38, eight tu_float words: +0x38 m_[0][0] (red multiplier),
//   +0x3c m_[0][1], +0x40 m_[1][0], +0x44 m_[1][1], +0x48 m_[2][0], +0x4c m_[2][1], +0x50 m_[3][0], +0x54 m_[3][1].
//   The binary writes the identity first, then copies the eight words of the cxform when the pointer is not null.
//
// The hash table: the binary's entry is 32 bytes (next_in_chain at +0, hash at +4, tu_stringi key at +8, value at +28).
// The rebuild below follows the same steps as the tu_stringi/tu_string specialization in
// v1-vendor-gameswf-pack10-9a32ad-0.cpp. Its value type is an enum with no destructor, so the binary releases only
// the key.

#include <cmath>
#include <cstddef>

#include "base/container.h"
#include "vendor-gameswf/as_color_transform_dh2.hpp"  // gameswf::as_color_transform_member; the set_raw_capacity declaration
#include "vendor-gameswf/gameswf_alloc.hpp"           // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_hash_dh2.hpp"        // gameswf::dh2_hash::bucket_count (binary rounding of the bucket count)

// ---------------------------------------------------------------------------------------------------------------------
// hash<> rebuild for the as_color_transform member table. Same steps as the binary's set_raw_capacity:
//   new_size <= 0: clear() and return.
//   buckets = dh2_hash::bucket_count(new_size). If the table already has that many buckets, return (no change).
//   Otherwise build a table of sizeof(table) + sizeof(entry) * buckets bytes with every next_in_chain set to -2 and
//   entry_count 0, mask buckets - 1. Each live entry of the old table (next != -2 and hash != -1) is add()ed to the new
//   table; its key is then destroyed (the binary frees the key's heap text when its tag byte is -1) and the slot is
//   marked empty (next -2, hash 0). The old table is freed and the new one is installed.
// ---------------------------------------------------------------------------------------------------------------------

// 0x7d9f98 gameswf::hash<gameswf::tu_stringi, gameswf::as_color_transform_member, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, gameswf::as_color_transform_member, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size)
{
	if (new_size <= 0) {
		clear();  // binary: the clear() at LABEL_19
		return;
	}

	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // binary: v4 != 0 and v4[1] + 1 == v3, so no change in raw capacity
	}

	hash<tu_stringi, gameswf::as_color_transform_member, stringi_hash_functor<tu_stringi> > rebuilt;  // holds the new table until installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;  // binary: the first word of each entry is -2 (empty)
	}

	if (m_table != nullptr) {
		// Binary loop: skip empty slots (next == -2) and tombstones (hash == -1).
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (e.is_empty() || e.is_tombstone()) {
				continue;
			}
			rebuilt.add(e.first, e.second);
			e.first.~tu_stringi();  // binary: free the key's heap text if its tag byte (+8) is -1
			e.m_next_in_chain = -2;
			e.m_hash_value = 0;     // binary: v11[1] = 0
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;  // binary: *v2 = v12[0]; v12[0] = 0
	rebuilt.m_table = nullptr;
}

#include "gameswf/gameswf_as_classes/as_color_transform.h"  // gameswf::as_color_transform (upstream, with the DH2 constructor)
#include "gameswf/gameswf_as_classes/as_event.h"            // gameswf::as_event (upstream)
#include "gameswf/gameswf_listener.h"                       // gameswf::listener

namespace gameswf {

// 0x7d9818 gameswf::as_color_transform::as_color_transform(gameswf::player*, gameswf::cxform const*)   (C1)
// 0x7d9890 gameswf::as_color_transform::as_color_transform(gameswf::player*, gameswf::cxform const*)   (C2, same body)
as_color_transform::as_color_transform(player* p, const cxform* cx)
	: as_object(p)
{
	// The binary writes the identity first (+0x38 .. +0x54), then copies the eight words of *cx when cx is not null.
	m_color_transform.m_[0][0] = 1.0f;  // +0x38 red multiplier
	m_color_transform.m_[0][1] = 0.0f;  // +0x3c red offset
	m_color_transform.m_[1][0] = 1.0f;  // +0x40 green multiplier
	m_color_transform.m_[1][1] = 0.0f;  // +0x44 green offset
	m_color_transform.m_[2][0] = 1.0f;  // +0x48 blue multiplier
	m_color_transform.m_[2][1] = 0.0f;  // +0x4c blue offset
	m_color_transform.m_[3][0] = 1.0f;  // +0x50 alpha multiplier
	m_color_transform.m_[3][1] = 0.0f;  // +0x54 alpha offset
	if (cx != nullptr) {
		// cxform's implicit copy assignment copies each tu_float bit for bit. The binary copies the words raw too, so
		// the sanitising tu_float::operator=(float) is not involved.
		m_color_transform = *cx;
	}
}

// 0x7dabbc gameswf::as_event::as_event(gameswf::player*)   (C2)
// 0x7dac60 gameswf::as_event::as_event(gameswf::player*)   (C1, same body)
as_event::as_event(player* p)
	: as_object(p)
{
	// The binary zeroes a 16-byte local (the listener: an array<weak_ptr<as_object>> with its borrowed flag) and destroys it
	// at once with array::resize(0) and array::reserve(0). An empty array frees nothing, so neither call has an effect.
	// The upstream as_event.cpp declares the same local. The vptr store (the as_event vtable) is the implicit one.
	listener unused;
}

}  // namespace gameswf


// Not written here (no body in this batch; see the header comment): the destructors at 0x7d97a8, 0x7d9cac, 0x7d9d88,
// 0x7daaf4, 0x7dac24, 0x7dae70, 0x7dafb8, and the as_mouse_event constructors at 0x7dae08 and 0x7dae3c.
