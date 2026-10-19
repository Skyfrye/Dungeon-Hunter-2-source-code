// Batch v1-vendor-gameswf-pack2-6d7f71-0 (category vendor-gameswf, gameswf r1714 with Gameloft changes).
//
// Reconstructed here (rows in vendor-gameswf/ledger.csv, with the counted_buffer and string-cache rows in ledger.d/gameswf-core-asruntime.csv):
//   execute_tag: D1, execute, execute_state, get_depth, get_action_offset, is_place_tag  (execute_tags.hpp)
//     and, added by the gameswf_impl pass (their r1714 bodies were inline in the struct that execute_tags.hpp replaces):
//     execute_state_reverse, is_remove_tag, is_action_tag, get_depth_id_of_replace_or_add_tag
//   place_object_2: get_depth, is_place_tag; remove_object_2 and set_background_color: D1 (execute_tags.hpp). The rest of
//     place_object_2 (read, execute, execute_state, execute_state_reverse, get_depth_id_of_replace_or_add_tag, D1) is in
//     v1-vendor-gameswf-gameswf_impl-0.cpp; the other members of remove_object_2 and set_background_color are in upstream
//     gameswf_impl.cpp.
//   counted_buffer: D1 and drop_ref (counted_buffer.hpp)
//   hash<int, cxform*> and hash<int, matrix*>: set_raw_capacity (gameswf_hash_dh2.hpp)
// Skipped: the three deleting destructors (D0) at 0x759ff0 (execute_tag), 0x75a004 (remove_object_2) and 0x75a018
//   (set_background_color). Each is PUSH, BL LC_API_FREE_0 (operator delete, 0x30e2b0), POP, which the compiler
//   generates from the virtual destructor. They are not rebuilt.
//   hash<gameswf::string_pointer, gameswf::permanent_string*, ...>::set_raw_capacity (0x75c0e8): the string cache's table
//   (permanent_string_cache.hpp), through the shared rehash body of gameswf_dh2_hash.hpp.
//
// set_raw_capacity: the bucket count is computed in single precision with the binary's constant 0x3F317218 (ln 2).
// The loader table in v1-vendor-gameswf-gameswf-fddef6-1.cpp divides by the same float (0x3F317218), so the two agree.
// The decimal 0.69315f is 0x3F317247, a different float, and would give a different bucket count for new_size 5, 9,
// 17, 33, ...

#include <cmath>
#include <cstdint>

#include "base/container.h"
#include "base/membuf.h"
#include "core-platform/deps/swf_types.hpp"  // swf::MemHint, swf::MEM_UNRECOVERED
#include "vendor-gameswf/counted_buffer.hpp"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_dh2_hash.hpp"  // dh2_hash_access::set_raw_capacity
#include "vendor-gameswf/gameswf_hash_dh2.hpp"
#include "vendor-gameswf/permanent_string_cache.hpp"  // string_pointer, string_pointer_hash_functor

namespace {

// The binary's float constant for ln 2 (0x3F317218). Used as a single-precision divisor.
constexpr float kLn2 = 0.693147182464599609375f;

// Bucket count for a raw capacity request. Binary (0x75aa70): if new_size <= 0 the table is cleared (handled by the
// caller). Otherwise v3 = 1 << (int)(float)(logf((float)(new_size - 1)) / ln2 + 1.0f), and v3 < 4 becomes 4.
// The ARM listing is __aeabi_i2f, logf, __aeabi_fdiv by 0x3F317218, __aeabi_fadd 1.0, __aeabi_f2iz, LSL, then
// CMP #4 / MOVLT #4. For new_size 1, log(0) is -inf, f2iz gives INT_MIN, and LSL uses only the low byte of that
// (0), so the shift is 1 and the minimum applies. This helper returns 4 for new_size <= 1 for the same reason.
int dh2_hash_bucket_count(int new_size) {
	if (new_size <= 1) {
		return 4;
	}
	const float q = std::logf(static_cast<float>(new_size - 1)) / kLn2;
	const float r = q + 1.0f;
	const int bits = static_cast<int>(r);
	const unsigned int pow2 = (bits >= 0 && bits < 32) ? (1u << bits) : 0u;  // ARM LSL by 32 or more gives 0
	const int buckets = static_cast<int>(pow2);
	return buckets < 4 ? 4 : buckets;
}

}  // namespace

namespace gameswf {

// ---- execute_tag ----

// 0x759ac4 gameswf::execute_tag::~execute_tag()   (_ZN7gameswf11execute_tagD1Ev)
// asm: BX LR. Empty body (the upstream inline virtual ~execute_tag() {} gives the same code).
execute_tag::~execute_tag() {}

// 0x759ac8 gameswf::execute_tag::execute(gameswf::character*)   (_ZN7gameswf11execute_tag7executeEPNS_9characterE)
// asm: BX LR. Empty.
void execute_tag::execute(character* /*m*/) {}

// 0x759acc gameswf::execute_tag::execute_state(gameswf::character*)   (_ZN7gameswf11execute_tag13execute_stateEPNS_9characterE)
// asm: BX LR. Empty.
void execute_tag::execute_state(character* /*m*/) {}

// 0x759ad0 gameswf::execute_tag::execute_state_reverse(gameswf::character*, int)   (_ZN7gameswf11execute_tag21execute_state_reverseEPNS_9characterEi)
// asm: PUSH {R4,LR}; LDR R3,[R0]; LDR PC,[R3,#0xC] (a call of the virtual execute_state with the same arguments); POP.
// Added by the gameswf_impl pass: r1714 defines it inline in gameswf_impl.h (execute_state_reverse calls execute_state), and
// that struct is replaced by execute_tags.hpp.
void execute_tag::execute_state_reverse(character* m, int /*frame*/) {
	execute_state(m);
}

// 0x759ae4 gameswf::execute_tag::is_remove_tag() const   (_ZNK7gameswf11execute_tag13is_remove_tagEv)
// asm: MOV R0, #0; BX LR.
bool execute_tag::is_remove_tag() const {
	return false;
}

// 0x759aec gameswf::execute_tag::is_action_tag() const   (_ZNK7gameswf11execute_tag13is_action_tagEv)
// asm: MOV R0, #0; BX LR.
bool execute_tag::is_action_tag() const {
	return false;
}

// 0x759af4 gameswf::execute_tag::get_depth_id_of_replace_or_add_tag() const   (_ZNK7gameswf11execute_tag34get_depth_id_of_replace_or_add_tagEv)
// asm: MOV R0, #0xFFFFFFFF; BX LR. "depth_id" is the 16-bit depth and 16-bit id packed in one word; a tag that is neither a
// place nor a replace has none.
std::uint32_t execute_tag::get_depth_id_of_replace_or_add_tag() const {
	return static_cast<std::uint32_t>(-1);
}

// 0x759afc gameswf::execute_tag::get_depth() const   (_ZNK7gameswf11execute_tag9get_depthEv)
// asm: MOV R0, #0xFFFFFFFF; BX LR. Returns -1 (the tag has no depth).
int execute_tag::get_depth() const {
	return -1;
}

// 0x759b04 gameswf::execute_tag::get_action_offset() const   (_ZNK7gameswf11execute_tag17get_action_offsetEv)
// asm: MOV R0, #0xFFFFFFFF; BX LR. Returns -1.
int execute_tag::get_action_offset() const {
	return -1;
}

// 0x759b0c gameswf::execute_tag::is_place_tag() const   (_ZNK7gameswf11execute_tag12is_place_tagEv)
// asm: MOV R0, #0; BX LR. Hex-Rays shows int, the values are 0 and 1, so bool here (as is_remove_tag upstream).
bool execute_tag::is_place_tag() const {
	return false;
}

// 0x759ff0 gameswf::execute_tag::~execute_tag()   (_ZN7gameswf11execute_tagD0Ev)
// SKIPPED. Compiler-generated deleting destructor: PUSH {R4,LR}; BL LC_API_FREE_0 (operator delete on this); POP.
// It is the D0 entry of the vtable at +0x04.

// ---- place_object_2 ----

// 0x759b14 gameswf::place_object_2::get_depth() const   (_ZNK7gameswf14place_object_29get_depthEv)
// asm: LDRH R0, [R0, #0xC]; BX LR. Returns the u16 at +0x0c, which is m_depth (execute_tags.hpp).
int place_object_2::get_depth() const {
	return m_depth;
}

// 0x759b1c gameswf::place_object_2::is_place_tag() const   (_ZNK7gameswf14place_object_212is_place_tagEv)
// asm: MOV R0, #1; BX LR.
bool place_object_2::is_place_tag() const {
	return true;
}

// ---- remove_object_2 ----

// 0x759fe8 gameswf::remove_object_2::~remove_object_2()   (_ZN7gameswf15remove_object_2D1Ev)
// asm: BX LR. Empty body. The class has no destructor work in the binary.
remove_object_2::~remove_object_2() {}

// 0x75a004 gameswf::remove_object_2::~remove_object_2()   (_ZN7gameswf15remove_object_2D0Ev)
// SKIPPED. Compiler-generated deleting destructor: PUSH {R4,LR}; BL LC_API_FREE_0 (operator delete on this); POP.

// ---- set_background_color ----

// 0x759fec gameswf::set_background_color::~set_background_color()   (_ZN7gameswf20set_background_colorD1Ev)
// asm: BX LR. Empty body.
set_background_color::~set_background_color() {}

// 0x75a018 gameswf::set_background_color::~set_background_color()   (_ZN7gameswf20set_background_colorD0Ev)
// SKIPPED. Compiler-generated deleting destructor: PUSH {R4,LR}; BL LC_API_FREE_0 (operator delete on this); POP.

// ---- counted_buffer ----

// 0x75b974 gameswf::counted_buffer::~counted_buffer()   (_ZN7gameswf14counted_bufferD1Ev)
// asm, in order:
//   1. If the size word at +0x18 is negative, store 0 into the words from that index up to -1 (the inlined resize(0) of the
//      dictionary array; a valid array never has a negative size).
//   2. Read the byte at +0x20 (the array's borrowed flag), then store 0 to +0x18 (size).
//   3. If the borrowed flag is zero: read +0x1c (capacity), store 0 to it, then if the buffer at +0x14 is not null,
//      free_internal(buffer, capacity << 2). Then store 0 to +0x14. (The inlined reserve(0).)
//   4. Tail into the base destructor, gameswf::membuf::~membuf (upstream base/membuf.cpp).
// All four steps are the destructor of the m_dictionary member (array<const tu_string*>: clear(), then reserve(0)) and the
// ::membuf base destructor, which C++ runs after this empty body.
counted_buffer::~counted_buffer() {
}

// 0x75b9f4 gameswf::counted_buffer::drop_ref()   (_ZN7gameswf14counted_buffer8drop_refEv)
// asm: R4 = [+0x10] - 1; store R4 to [+0x10]; if R4 != 0 return. Else D1 on this, then tail-call
// free_internal(this, 0).
void counted_buffer::drop_ref() {
	m_ref_count -= 1;
	if (m_ref_count == 0) {
		this->~counted_buffer();
		free_internal(this, 0u);
	}
}

}  // namespace gameswf

// ---- hash<int, cxform*> and hash<int, matrix*> ----
// Both bodies have the same shape in the binary (the cxform and matrix listings differ only in their labels and BL
// targets), so each is written out in full. Each is an explicit specialization declared in gameswf_hash_dh2.hpp.
// The table is the upstream layout (table header of entry count and size mask, then 16-byte entries in the binary;
// sizeof on the host). Next-in-chain -2 marks an empty entry, hash value -1 a tombstone (upstream entry::is_*).

// 0x75aa70 gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
//   (_ZN7gameswf4hashIiPNS_6cxformENS_15fixed_size_hashIiEEE16set_raw_capacityEi)
// asm: new_size <= 0 clears the table. Otherwise compute the bucket count (dh2_hash_bucket_count). If a table exists
// with that count, return. Else build a new table (malloc_internal, hint MEM_UNRECOVERED, with the entry count 0 and
// mask buckets-1, every entry's next set to -2). Each live entry of the old table (next != -2 and hash != -1) is added
// to the new table and cleared. The old table is freed. The new table is installed.
template <>
void hash<int, gameswf::cxform*, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = dh2_hash_bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<int, gameswf::cxform*, fixed_size_hash<int> > rebuilt;  // holds the new table until it is installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				rebuilt.add(e.first, e.second);
				e.clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;  // rebuilt's destructor (clear) now does nothing
}

// 0x75baf8 gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
//   (_ZN7gameswf4hashIiPNS_6matrixENS_15fixed_size_hashIiEEE16set_raw_capacityEi)
// Same body as 0x75aa70 (see above).
template <>
void hash<int, gameswf::matrix*, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = dh2_hash_bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<int, gameswf::matrix*, fixed_size_hash<int> > rebuilt;  // holds the new table until it is installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				rebuilt.add(e.first, e.second);
				e.clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;  // rebuilt's destructor (clear) now does nothing
}

// ---- hash<gameswf::string_pointer, gameswf::permanent_string*> ----
// 0x75c0e8 gameswf::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::set_raw_capacity(int)
// The same rehash as 0x75aa70 (minimum 4 entries, power of two from the single-precision logf, 16-byte entries: next at
// +0, hash at +4, the one-word key at +8, the value at +12; each live entry is add()ed to the new table, which hashes
// the key with the case-folded text hash, and then cleared). The shared body is dh2_hash_access::set_raw_capacity.
template <>
void hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::set_raw_capacity(int new_size) {
	dh2_hash_access::set_raw_capacity(*this, new_size);
}
