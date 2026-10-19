// gameswf::permanent_string_cache as the DH2 binary has it (Gameloft). Not in gameswf r1714.
//
// The binary calls the hash methods on the cache object itself (find_index 0x75a918, operator[] 0x75c274, add
// 0x75bf20), and the cache destructor ends with hash::clear() on the same object. So the cache is the upstream hash<>
// with the table pointer at +0x00, and it derives from that hash at offset 0 (4 bytes in the binary; player::
// m_permanent_strings at +0x2c and the global gameswf::s_static_strings are instances). Table header: int entry
// count (+0x00), int size mask (+0x04). Entries are 16 bytes from +0x08: int next in chain (+0x00), size_t hash
// (+0x04), key (+0x08), value (+0x0c).
//
// The key is a string_pointer (one tu_string pointer, 4 bytes; the binary passes the address of a tu_string* to
// find_index). The hash is the case-folded 24-bit tu_string hash (tu_string::get_hashi, the value that find_index
// computes inline and stores in the string's hash cache word). Equality is the pointer, then a case-sensitive text
// compare (find_index calls strcmp after the pointer test). stringi_pointer is the same key with a case-insensitive
// compare (find_index of hash<stringi_pointer, character*, ...> at 0x755da0 calls tu_string::stricmp); the
// display_list name table and the sprite_definition label table use it.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp (get, clear, destructor).

#pragma once

#include <cstddef>
#include <cstring>

#include "base/container.h"                   // hash<> and tu_string (upstream, global namespace)
#include "vendor-gameswf/permanent_string.hpp"

namespace gameswf {

// Key of the cache: one pointer to a tu_string.
struct string_pointer {
	const ::tu_string* m_string;  // +0x00

	// Same pointer, or the same text (strcmp). find_index tests the pointers first.
	bool operator==(const string_pointer& other) const {
		return m_string == other.m_string || std::strcmp(m_string->c_str(), other.m_string->c_str()) == 0;
	}
};

// Case-insensitive key (stringi_pointer): the same pointer or equal text ignoring ASCII case.
struct stringi_pointer {
	const ::tu_string* m_string;  // +0x00

	bool operator==(const stringi_pointer& other) const {
		return m_string == other.m_string || ::tu_string::stricmp(m_string->c_str(), other.m_string->c_str()) == 0;
	}
};

// Hash functor of the caches: the case-folded text hash of the string behind the pointer. The value is sign-extended
// from 24 bits, as tu_string::get_hashi returns it. The hash table maps the all-ones value to another one itself.
template <class T>
struct string_pointer_hash_functor {
	std::size_t operator()(const T& key) const {
		return static_cast<std::size_t>(static_cast<std::ptrdiff_t>(key.m_string->get_hashi()));
	}
};

struct character;  // gameswf.h

}  // namespace gameswf

// DH2: the rehash of the two string_pointer tables (table minimum 4, power of two from the single-precision logf, gameswf
// allocator), each its own binary function. Declared here so that every translation unit that adds to one of the tables
// uses them instead of the generic upstream member (which has a 16-entry minimum). Bodies:
// vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp (the cache) and v1-vendor-gameswf-pack0-157e56-0.cpp (the
// display list's name table), both through dh2_hash_access::set_raw_capacity (gameswf_dh2_hash.hpp).
// 0x75c0e8 gameswf::hash<string_pointer, permanent_string*, string_pointer_hash_functor<string_pointer> >::set_raw_capacity(int)
template <>
void ::hash<gameswf::string_pointer, gameswf::permanent_string*, gameswf::string_pointer_hash_functor<gameswf::string_pointer> >::set_raw_capacity(int new_size);
// 0x755f94 gameswf::hash<stringi_pointer, character*, string_pointer_hash_functor<stringi_pointer> >::set_raw_capacity(int)
template <>
void ::hash<gameswf::stringi_pointer, gameswf::character*, gameswf::string_pointer_hash_functor<gameswf::stringi_pointer> >::set_raw_capacity(int new_size);

namespace gameswf {

class permanent_string_cache
	: public ::hash<string_pointer, permanent_string*, string_pointer_hash_functor<string_pointer> > {
public:
	// 0x75c2cc gameswf::permanent_string_cache::get(gameswf::tu_string const&)
	// Returns the interned copy of the text, making it (and storing it under its own address) on first use.
	permanent_string* get(const ::tu_string& name);

	// 0x76c8ac gameswf::permanent_string_cache::clear()
	void clear();

	// 0x76c990 gameswf::permanent_string_cache::~permanent_string_cache()   [D1]
	~permanent_string_cache();
};

// The binary's global cache (gameswf::s_static_strings, in .bss), the one get_static_string (0x76d594) interns in. The
// players keep their own cache each (player::m_permanent_strings). Defined in pack3.
extern permanent_string_cache s_static_strings;

}  // namespace gameswf
