// gameswf DH2 hash<> sizing: explicit set_raw_capacity specializations for the instantiations of batch
// v1-vendor-gameswf-pack5-64b2da-0. Declarations, the ln 2 constant and the table-size accessor. Bodies:
// vendor-gameswf/src/v1-vendor-gameswf-pack5-64b2da-0.cpp.
//
// The binary's hash<>::set_raw_capacity is the upstream algorithm (base/container.h, the generic member) with
// three changes: the table minimum is 4 entries (upstream 16), the power of two is taken from single-precision
// logf / ln 2 (the float 0x3F317218, dh2_hash_access::kLn2), and the table storage is malloc_internal / free_internal.
// Each instantiation is its own binary
// function, so each one gets an explicit specialization here, and all of them run the same shared body
// (dh2_hash_access::set_raw_capacity). The generic upstream member still serves every other instantiation.
//
// These declarations must be seen by every translation unit that adds to one of these tables, or that TU
// instantiates the upstream generic member instead. Declaring a specialization needs only the names of the
// value types. The definitions are in the batch sources, where the value types are complete.
//
// hash<stringi_pointer, int, string_pointer_hash_functor<stringi_pointer> >::set_raw_capacity (0x767824), the table of
// movie_def_impl::m_named_frames and sprite_definition::m_named_frames, is declared at the end of this file.
#pragma once

#include <cmath>
#include <cstddef>

#include "base/container.h"                   // hash<>, fixed_size_hash<>, tu_stringi, stringi_hash_functor (global)
#include "vendor-gameswf/gameswf_alloc.hpp"        // gameswf::malloc_internal, gameswf::free_internal, swf::MEM_UNRECOVERED
#include "base/smart_ptr.h"                   // smart_ptr<T> (global in upstream)
#include "gameswf/gameswf.h"                  // gameswf::sound_sample, font, character_def, as_object (forward)
#include "vendor-gameswf/as_value.hpp"        // gameswf::as_value (DH2 layout)
#include "vendor-gameswf/permanent_string_cache.hpp"  // gameswf::stringi_pointer, gameswf::string_pointer_hash_functor

namespace gameswf {

struct bitmap_character_def;  // gameswf_impl.h (upstream); forward only

}  // namespace gameswf

// DH2: the shared rehash body. A friend of hash<> (base/container.h, marked DH2 there), so it may use the table.
struct dh2_hash_access {
	// DH2: ln 2 as the binary's single-precision constant, bit pattern 0x3F317218 (the binary loads it with
	// MOV R1,#0x3F317218 before __aeabi_fdiv). Hex-Rays prints it rounded as 0.69315. The decimal 0.69315f is 0x3F317247,
	// a different float: it gives half the table for every request 2^k + 1 (5 gives 4 instead of 8, 33 gives 32 instead of 64).
	static constexpr float kLn2 = 0.693147182464599609375f;

	template <class H>
	static void set_raw_capacity(H& self, int new_size);

	// DH2: slot count of the table (0 when there is no table). The table is private to hash<>; the tests read it here.
	template <class H>
	static int table_size(const H& self) {
		return self.m_table == nullptr ? 0 : self.m_table->m_size_mask + 1;
	}
};

// 0x7665dc gameswf::hash<int, gameswf::smart_ptr<gameswf::sound_sample>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, smart_ptr<gameswf::sound_sample>, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x766960 gameswf::hash<int, gameswf::smart_ptr<gameswf::bitmap_character_def>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, smart_ptr<gameswf::bitmap_character_def>, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x766d10 gameswf::hash<int, gameswf::smart_ptr<gameswf::font>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, smart_ptr<gameswf::font>, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x767094 gameswf::hash<int, gameswf::smart_ptr<gameswf::character_def>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, smart_ptr<gameswf::character_def>, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x767e40 gameswf::hash<int, gameswf::tu_string, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, tu_string, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x768254 gameswf::hash<gameswf::tu_stringi, bool, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, bool, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);

// 0x7687ac gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::character_def>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, smart_ptr<gameswf::character_def>, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);

// 0x769610 gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >::set_raw_capacity(int)
template <>
void hash<gameswf::as_object*, bool, fixed_size_hash<gameswf::as_object*> >::set_raw_capacity(int new_size);

// 0x76a2f8 gameswf::hash<gameswf::tu_stringi, gameswf::as_value, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
template <>
void hash<tu_stringi, gameswf::as_value, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);

// The RenderFX search index table (0x7aa8f0, hash<tu_string, array<RenderFX::SearchIndex::Entry>*, string_hash_functor<tu_string>>)
// is declared in vendor-gameswf/render_fx_search_hash.hpp, not here: RenderFX is a class in the game headers
// (dh2/RenderFX.hpp), and this header is reached from gameswf_movie_def.h by every game translation unit.

// 0x76a6ec gameswf::hash<gameswf::tu_stringi, gameswf::as_object::as_watch, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
// Needs gameswf::as_object complete (as_object::as_watch is nested in it).
#include "gameswf/gameswf_object.h"
template <>
void hash<tu_stringi, gameswf::as_object::as_watch, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);

// 0x77e3b8 gameswf::hash<int, gameswf::smart_ptr<gameswf::as_function>, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// sprite_instance::m_script (+0xf8, <frame, script>). Its own body (not the shared one): vendor-gameswf/src/v1-vendor-gameswf-pack8-c43a3a-0.cpp.
// Declared here so that the sprite translation units use it instead of instantiating the generic member (link-1: both were emitted).
template <>
void hash<int, smart_ptr<gameswf::as_function>, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x767824 gameswf::hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int)
// The frame label table of movie_def_impl and sprite_definition. Entries are 16 bytes (stringi_pointer key at +8, int at
// +12); neither has a destructor. Body: vendor-gameswf/src/v1-vendor-gameswf-pack5-64b2da-0.cpp.
template <>
void hash<gameswf::stringi_pointer, int, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int new_size);

// The shared body. H is one of the hash<> instantiations above (it is defined here, in the header, so that every translation unit that
// defines one of the specializations can use it). Reaches the table's private members through the
// friend declared in base/container.h.
template <class H>
void dh2_hash_access::set_raw_capacity(H& self, int new_size) {
	using entry = typename H::entry;
	using table = typename H::table;

	if (new_size <= 0) {
		// Binary: clear() and return.
		self.clear();
		return;
	}

	// Binary: v3 = 1 << (int)(float)((float)(logf((float)(a2 - 1)) / ln2) + 1.0); then v3 = max(v3, 4). ln2 is the
	// single-precision constant 0x3F317218 (MOV R1,#0x3F317218 before __aeabi_fdiv), which is kLn2 below.
	// new_size == 1 gives logf(0) = -inf in the binary. The ARM shift then uses the low byte of the converted value,
	// which is 0, so the result is 1 and the minimum makes it 4. The explicit guard gives the same result.
	int size = 4;
	if (new_size > 1) {
		const float q = std::logf(static_cast<float>(new_size - 1)) / kLn2;
		const int bits = static_cast<int>(q + 1.0f);
		const unsigned int pow2 = (bits >= 0 && bits < 32) ? (1u << bits) : 0u;
		size = static_cast<int>(pow2);
		if (size < 4) {
			size = 4;  // DH2 minimum (upstream: 16)
		}
	}

	// Binary: if the table exists and already has this many slots, there is nothing to do.
	if (self.m_table != nullptr && size == self.m_table->m_size_mask + 1) {
		return;
	}

	// Binary: malloc_internal(16 * size + 8): entry count 0, size mask size - 1, and next_in_chain = -2 on every entry.
	H new_hash;
	new_hash.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * static_cast<std::size_t>(size)), swf::MEM_UNRECOVERED));
	new_hash.m_table->m_entry_count = 0;
	new_hash.m_table->m_size_mask = size - 1;
	for (int i = 0; i < size; i++) {
		new_hash.E(i).m_next_in_chain = -2;
	}

	if (self.m_table != nullptr) {
		// Binary: in index order, each live entry (not empty, not tombstone) goes into the new table. Its key and
		// value are then destroyed and the slot is marked empty.
		for (int i = 0, n = self.m_table->m_size_mask; i <= n; i++) {
			entry* e = &self.E(i);
			if (!e->is_empty() && !e->is_tombstone()) {
				new_hash.add(e->first, e->second);
				e->clear();
			}
		}
		// Binary: free_internal(old table).
		gameswf::free_internal(self.m_table, 0);
	}

	// Binary: the new table is stolen. The temporary is left empty, so its destructor does nothing.
	self.m_table = new_hash.m_table;
	new_hash.m_table = nullptr;
}

