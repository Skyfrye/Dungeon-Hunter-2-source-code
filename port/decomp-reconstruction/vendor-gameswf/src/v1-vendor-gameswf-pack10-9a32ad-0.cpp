// Batch v1-vendor-gameswf-pack10-9a32ad-0 (vendor-gameswf, part 1 of 1). Eighteen binary functions, one ledger row each
// (ledger.d/gameswf-core-sprite-text.csv).
//
// Reconstructed and compiled here (3):
//   hash<tu_stringi, tu_string, stringi_hash_functor<tu_stringi>>::set_raw_capacity(int)  0x78c6cc
//   hash<texture_cache::region*, region*, fixed_size_hash<region*>>::set_raw_capacity(int)  0x7939dc
//   html_reader::parse_tag(stringi_hash<tu_string>&, char const*)                            0x78e060
//   (the two set_raw_capacity declarations are in vendor-gameswf/gameswf_hash_dh2.hpp and texture_cache.hpp; the
//   parse_tag declaration is in vendor-gameswf/html_reader.hpp).
//
// Moved to vendor-gameswf/src/v1-vendor-gameswf-gameswf_edit_text_character-77beb0-1.cpp, so that the test of this file
// links without the text classes' vtables:
//   text_character_def::~text_character_def() D1 0x78be3c, text_character_def::display(character*) 0x790a7c and
//   html_reader::parse(edit_text_character*) 0x78e354 (all three have bodies there).
//
// Upstream, no body here (6):
//   cxform::concatenate(cxform const&)              0x794d38  gameswf_types.cpp:372
//   cxform::transform(rgba) const                   0x794f8c  gameswf_types.cpp:389
//   cxform::clamp()                                  0x795130  gameswf_types.cpp:459
//   rect::enclose_transformed_rect(matrix, rect)    0x795600  gameswf_types.cpp:632
//   These match upstream on every value the DH2 layout can hold: cxform and matrix entries are tu_float, whose
//   operator= maps values outside +/-3.4028e38 (and NaN) to 0, the same guard the binary applies to each result.
//   The binary's clamp return value is a leftover comparison flag, so void is kept. The binary's transform packs the
//   four channels into an int, the same bits as upstream rgba. Each row names its upstream definition.
//   text_character_def ctor C1 0x78dc40 and C2 0x78dd68: now a DH2 body in the 77beb0-1 file (the layout note about
//   m_is_glyphs_drawn was wrong: the binary has no such member).
//
// Skipped (2): the deleting destructors D0 at 0x78bde0 (text_character_def) and 0x78c560 (edit_text_character_def).
//   Compiler-generated: each runs the complete destructor, then operator delete (LC_API_FREE_0).
//
// edit_text_character_def D1 0x78c4dc / D2 0x78c57c and the (player*, int, int) constructors C1 0x78d970 / C2 0x78dad8 are
// upstream (gameswf_text.cpp): the layout of the definition is r1714's (the earlier notes took the hash cache words of the
// two tu_string members for an rgba and other fields).

#include <cmath>
#include <cstddef>
#include <cstring>

#include "base/container.h"
#include "vendor-gameswf/gameswf_alloc.hpp"     // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_hash_dh2.hpp"  // hash<tu_stringi, tu_string> declaration; dh2_hash::bucket_count
#include "vendor-gameswf/html_reader.hpp"       // gameswf::html_reader
#include "vendor-gameswf/texture_cache.hpp"     // gameswf::texture_cache::region and the region table declaration

// ---------------------------------------------------------------------------------------------------------------------
// hash<> rebuild, shared shape for the two tables below (binary: the table of set_raw_capacity, one body each).
//   new_size <= 0: clear() and return.
//   buckets = dh2_hash::bucket_count(new_size). If the table exists with that many buckets, return (no change).
//   Otherwise build a table of sizeof(table) + sizeof(entry) * buckets bytes with every next_in_chain set to -2 and
//   entry_count 0, mask buckets - 1. Each live entry of the old table (next != -2 and hash != -1) is add()ed to the new
//   table; its key and value are then destroyed (the binary frees their heap text) and the slot is marked empty (next
//   -2, hash 0). The old table is freed and the new one is installed.
// The binary passes one argument to malloc_internal in the decompile. The DH2 allocator ignores the hint, so
// MEM_UNRECOVERED is passed (vendor-gameswf/gameswf_alloc.hpp). free_internal ignores its size argument.
// ---------------------------------------------------------------------------------------------------------------------

// 0x78c6cc gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, tu_string, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size)
{
	if (new_size <= 0) {
		clear();  // binary: the clear() at LABEL_21
		return;
	}

	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<tu_stringi, tu_string, stringi_hash_functor<tu_stringi> > rebuilt;  // holds the new table until it is installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;  // binary: *(v12[0] + 8 + 48 * i) = -2
	}

	if (m_table != nullptr) {
		// Binary loop: skip empty slots (next == -2) and tombstones (hash == -1).
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (e.is_empty() || e.is_tombstone()) {
				continue;
			}
			rebuilt.add(e.first, e.second);
			e.first.~tu_stringi();  // binary: free the key's heap text if its tag byte is -1
			e.second.~tu_string();  // binary: free the value's heap text if its tag byte is -1
			e.m_next_in_chain = -2;
			e.m_hash_value = 0;     // binary: v11[1] = 0
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;  // binary: *v2 = v12[0]; v12[0] = 0
	rebuilt.m_table = nullptr;
}

// 0x7939dc gameswf::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int)
// The keys and values are pointers, so the binary releases nothing when it empties an old slot.
template <>
void ::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*,
            ::fixed_size_hash<gameswf::texture_cache::region*> >::set_raw_capacity(int new_size)
{
	using region_hash = ::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*,
	                           ::fixed_size_hash<gameswf::texture_cache::region*> >;

	if (new_size <= 0) {
		clear();
		return;
	}

	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;
	}

	region_hash rebuilt;
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
			if (e.is_empty() || e.is_tombstone()) {
				continue;
			}
			rebuilt.add(e.first, e.second);
			e.m_next_in_chain = -2;
			e.m_hash_value = 0;
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;
}

// ---------------------------------------------------------------------------------------------------------------------
// html_reader::parse_tag
// ---------------------------------------------------------------------------------------------------------------------

namespace gameswf {

// 0x78e060 gameswf::html_reader::parse_tag(gameswf::stringi_hash<gameswf::tu_string>&, char const*)
//
// Binary (Hex-Rays, 704 bytes):
//   '/' first: return 0.
//   name_end = first ' ', else first '/', else end of string. attrs.set("name", [tag, name_end)).
//   eq = first '='. None: return 1.
//   Loop, with cur = the '=' being read (binary v7; v8 is the same position, the end of the name):
//     start of the name = the character after the last ' ' before cur (binary's backward scan for v10).
//     q1 = first '"' at or after cur, q2 = first '\'' at or after cur. Neither: break (return 0).
//     open = the earlier of q1 and q2 (the one present, if only one is). close = next occurrence of *open after open.
//     No close: break (return 0).
//     attrs.set(name = [start, cur), value = (open, close)).
//     cur = next '=' at or after close. None: return 1.
// The binary scans back from cur without a bound, which reads before the string when no ' ' precedes the '='. Here the
// scan stops at the start of the tag, so the name then begins at the tag. Only malformed input differs.
// The space-before-'=' branch in the Hex-Rays output cannot run: cur always points at a '='.
int html_reader::parse_tag(stringi_hash<tu_string>& attrs, const char* tag)
{
	if (*tag == '/') {
		return 0;  // closing tag
	}

	const char* name_end = std::strchr(tag, ' ');
	if (name_end == nullptr) {
		name_end = std::strchr(tag, '/');
		if (name_end == nullptr) {
			name_end = tag + std::strlen(tag);
		}
	}
	attrs.set(tu_stringi("name"), tu_string(tag, static_cast<int>(name_end - tag)));

	const char* eq = std::strchr(tag, '=');
	if (eq == nullptr) {
		return 1;
	}

	std::ptrdiff_t cur = eq - tag;  // index of the '=' being read
	for (;;) {
		// Name start: the character after the last ' ' before cur. Index -1 means there is no space.
		std::ptrdiff_t space = cur - 1;
		while (space >= 0 && tag[space] != ' ') {
			--space;
		}
		const std::ptrdiff_t name_start = space + 1;

		const char* q1 = std::strchr(tag + cur, '"');
		const char* q2 = std::strchr(tag + cur, '\'');
		if (q1 == nullptr && q2 == nullptr) {
			return 0;  // binary: break, no quote after the '='
		}

		const char* open;
		if (q1 != nullptr && q2 != nullptr) {
			open = (q1 >= q2) ? q2 : q1;  // binary: v16 = min(v11, v12)
		} else {
			open = (q1 != nullptr) ? q1 : q2;
		}

		const char* close = std::strchr(open + 1, *open);
		if (close == nullptr) {
			return 0;  // binary: break, no matching quote
		}

		attrs.set(tu_stringi(tu_string(tag + name_start, static_cast<int>(cur - name_start))),
		          tu_string(open + 1, static_cast<int>(close - open - 1)));

		const char* next_eq = std::strchr(close, '=');
		if (next_eq == nullptr) {
			return 1;  // binary: LABEL_30
		}
		cur = next_eq - tag;
	}
}

}  // namespace gameswf
