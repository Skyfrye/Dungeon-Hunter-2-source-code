// Batch v1-vendor-gameswf-pack20-97b00f-0 (gameswf r1714 in libDungeonHunter2.so, Gameloft build).
// Ledger: vendor-gameswf/ledger.d/v1-vendor-gameswf-pack20-97b00f-0.csv (one row per batch function).
//
// Rows that need no body here (the notes in the ledger give the upstream definition):
//   upstream:
//     (button_character_definition D1 0x7c78d4, D2 0x7c797c are reconstructed in v1-vendor-gameswf-gameswf_button-7c6b4c-0.cpp:
//      the DH2 destructor destroys and frees the sound table, which r1714's delete does not)
//     canvas D1 0x7c8aa0, D2 0x7c8b00, C1 0x7c8b3c, C2 0x7c8b98      gameswf_canvas.cpp:13 and :23
//     inst_info_avm2 operator= 0x7c9b24, D1 0x7c9bc8                 implicit members, vendor-gameswf/inst_info_avm2.hpp
//     hash<tu_string, face_entity>::entry ctor 0x7d081c, copy 0x7d0858  generic entry, base/container.h
//   skipped:
//     canvas D0 0x7c8ae4: deleting destructor. PUSH, BL D1, BL LC_API_FREE_0, POP. Compiler-generated.
//   reconstructed here: button_character_definition C1 0x7c7a08, C2 0x7c7a64 (layout in gameswf_button.h)
//   reconstructed here: hash<int, inst_info_avm2>::set_raw_capacity 0x7ca120 (inst_info_avm2 moved to inst_info_avm2.hpp)
//   upstream: hash<int, inst_info_avm2>::entry copy 0x7c9cd8, the generic entry copy constructor of base/container.h
//   moved: hash<ushort, short, font::simple_code_hash>::set_raw_capacity 0x7ce694 and hash<kerning_pair, float>::set_raw_capacity
//     0x7ce998 are written with the font in v1-vendor-gameswf-gameswf_font-a42405-1.cpp now that gameswf_font.h declares
//     simple_code_hash and kerning_pair.
//
// Rebuilt here:
//   hash<tu_string, smart_ptr<face_entity>>::set_raw_capacity 0x7d0a20 (the face table m_faces of glyph_provider).
//   hash<int, inst_info_avm2>::set_raw_capacity 0x7ca120 (the AVM2 disassembler's instruction table).

#include <cmath>
#include <cstddef>

#include "base/container.h"                     // ::hash<>, ::string_hash_functor<>, ::tu_string
#include "gameswf/gameswf_button.h"             // button_character_definition
#include "vendor-gameswf/inst_info_avm2.hpp"     // gameswf::inst_info_avm2 and the table declaration
#include "base/smart_ptr.h"                     // ::smart_ptr<T>
#include "core-platform/deps/swf_types.hpp"     // swf::MemHint, swf::MEM_UNRECOVERED
#include "vendor-gameswf/gameswf_alloc.hpp"     // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_hash_dh2.hpp"  // gameswf::dh2_hash::bucket_count
#include "vendor-gameswf/glyph_provider.hpp"    // gameswf::face_entity and the m_faces table declaration

// 0x7d0a20 gameswf::hash<gameswf::tu_string, gameswf::smart_ptr<gameswf::face_entity>, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
//   (_ZN7gameswf4hashINS_9tu_stringENS_9smart_ptrINS_11face_entityEEENS_19string_hash_functorIS1_EEE16set_raw_capacityEi)
// Asm checked: the bucket count uses logf, then __aeabi_fdiv by 0x3F317218 (ln 2), then + 1.0 and the float to int
// conversion, so gameswf::dh2_hash::bucket_count applies. Entry size 32 bytes (malloc 32 * n + 8), key at +8, value at +28.
// Steps, as in the binary: new_size <= 0 clears and returns. If the table exists with the same bucket count, return.
// Else build a new table: entry count 0, mask buckets - 1, next = -2 on every entry. Each live entry of the old table
// (next != -2 and hash != -1), in index order, is added to the new table and cleared. The old table is freed (the
// binary's second argument to free_internal is ignored) and the new table is installed.
template <>
void hash<::tu_string, smart_ptr<gameswf::face_entity>, ::string_hash_functor<::tu_string> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<::tu_string, smart_ptr<gameswf::face_entity>, ::string_hash_functor<::tu_string> > rebuilt;  // holds the new table
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

// 0x7ca120 gameswf::hash<int, gameswf::inst_info_avm2, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// Same shape as 0x7d0a20 above: the entry is 32 bytes (key at +0x08, the inst_info_avm2 value at +0x0c, its format array
// ending at +0x1f), 32 * n + 8 bytes of storage. Each moved entry's value is destroyed (the format array released) and the
// slot marked empty; the old table is freed. The bucket count uses single-precision logf / ln 2 as everywhere.
template <>
void hash<int, gameswf::inst_info_avm2, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<int, gameswf::inst_info_avm2, fixed_size_hash<int> > rebuilt;  // holds the new table until it is installed
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

namespace gameswf {

// 0x7c7a08 gameswf::button_character_definition::button_character_definition(gameswf::player*)   [C1]
// 0x7c7a64 gameswf::button_character_definition::button_character_definition(gameswf::player*)   [C2, same body]
// character_def(player); the sound table pointer (+0x44) and the two arrays (+0x24, +0x34) are zeroed. The binary does not
// write the menu flag (+0x20); it is cleared here.
button_character_definition::button_character_definition(player* p) :
	character_def(p),
	m_menu(false),
	m_sound(nullptr) {
}

}  // namespace gameswf
