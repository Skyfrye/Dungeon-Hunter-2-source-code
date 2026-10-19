// gameswf::permanent_string (Gameloft, not in gameswf r1714).
//
// An interned string. The binary allocates it with operator new(0x14) in permanent_string_cache::get (0x75c2cc),
// builds it with the tu_string copy constructor and then sets bit 0 of byte +0x13 (the interned bit of the hash
// cache word at +0x10). Its destructor (0x752e64, 40 bytes) frees the heap text when the flag byte at +0x00 is 0xff,
// which is what ~tu_string does, and destruct<permanent_string> (0x76c870) runs the same test before it frees the
// object itself. So the class has no members of its own: it is a ::tu_string (20 bytes in the binary) that is always
// interned. gameswf::s_empty_name (static initialiser 0x753318) is built the same way but is declared as a plain
// ::tu_string in gameswf_character.h; a permanent_string converts to ::tu_string& for every consumer
// (character::m_name, as_value::set_tu_string ...), and a ::tu_string converts to a permanent_string by copying
// (the copy is interned).
//
// Body: inline here (~permanent_string), vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp (destruct<permanent_string>).

#pragma once

#include "base/container.h"                // ::tu_string (upstream, global namespace)
#include "vendor-gameswf/ref_counted.hpp"  // gameswf::destruct<T>

namespace gameswf {

struct permanent_string : public ::tu_string {
	// What the binary does after the tu_string copy constructor: sets the interned bit (+0x13 bit 0).
	permanent_string() { set_interned(true); }
	permanent_string(const ::tu_string& text) : ::tu_string(text) { set_interned(true); }  // 0x75c2cc

	// 0x752e64 gameswf::permanent_string::~permanent_string() (D1, no vtable). The binary tests the flag byte for 0xff and
	// frees the heap text (+0x0c); the ~tu_string that runs after this empty body does exactly that.
	~permanent_string() {}
};

// 0x76c870 void gameswf::destruct<gameswf::permanent_string>(gameswf::permanent_string const*):
// null check, ~permanent_string, free_internal(p). Defined in pack3 next to permanent_string_cache::clear.
template <>
void destruct<permanent_string>(const permanent_string* object);

}  // namespace gameswf
