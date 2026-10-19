// Batch v1-vendor-gameswf-gameswf_font-a42405-1: the two hash<> tables of gameswf::font (DH2 set_raw_capacity bodies).
//
//   0x7ce694 hash<unsigned short, short, font::simple_code_hash<unsigned short>>::set_raw_capacity(int)  (m_code_table, +0x50;
//            entries are 12 bytes: next +0, hash +4, key +8, value +10)
//   0x7ce998 hash<font::kerning_pair, float, fixed_size_hash<font::kerning_pair>>::set_raw_capacity(int)  (m_kerning_pairs,
//            +0x70; entries are 16 bytes: next +0, hash +4, key +8, value +12)
//
// Both bodies in the binary are the same: new_size <= 0 clears the table and returns; the bucket count is
// dh2_hash::bucket_count(new_size); a table that already has that many buckets is left alone; otherwise a table of
// sizeof(table) + sizeof(entry) * buckets bytes is built with every next_in_chain at -2 and entry count 0, every live entry
// of the old table (next != -2 and hash != -1) is add()ed to it and then marked empty (next -2, hash 0), the old table is
// freed and the new one installed. The keys and values are plain data, so nothing is destroyed. The declarations are at the
// end of gameswf_font.h.

#include "core-platform/deps/swf_types.hpp"     // swf::MemHint, swf::MEM_UNRECOVERED
#include "gameswf/gameswf_font.h"
#include "vendor-gameswf/gameswf_alloc.hpp"     // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_hash_dh2.hpp"  // gameswf::dh2_hash::bucket_count

// 0x7ce694 gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::set_raw_capacity(int)
template <>
void hash<Uint16, Sint16, gameswf::font::simple_code_hash<Uint16> >::set_raw_capacity(int new_size)
{
	if (new_size <= 0) {
		clear();
		return;
	}

	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<Uint16, Sint16, gameswf::font::simple_code_hash<Uint16> > rebuilt;  // holds the new table until it is installed
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

// 0x7ce998 gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::set_raw_capacity(int)
template <>
void hash<gameswf::font::kerning_pair, float, fixed_size_hash<gameswf::font::kerning_pair> >::set_raw_capacity(int new_size)
{
	if (new_size <= 0) {
		clear();
		return;
	}

	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;
	}

	hash<gameswf::font::kerning_pair, float, fixed_size_hash<gameswf::font::kerning_pair> > rebuilt;
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
