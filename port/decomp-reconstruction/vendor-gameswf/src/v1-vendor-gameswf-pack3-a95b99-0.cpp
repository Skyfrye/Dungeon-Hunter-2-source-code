// Batch v1-vendor-gameswf-pack3-a95b99-0: Gameloft additions and changes in the vendored gameswf (DH2 binary).
//
// Reconstructed here: permanent_string_cache::clear and its destructor, array<swf_event*>::release_buffer,
// as_environment::pop and as_environment::get_player. The compiler-generated destructors (D1) of
// as_object_interface and bitmap_character_def are upstream rows (no body is written). The base_fill_style and
// base_line_style D1 destructors are the empty inline destructors of gameswf_styles.h. The D0 (deleting)
// destructors are compiler-generated and skipped.
// The other as_environment rows of this batch are bodies in upstream gameswf_environment.cpp (DH2 edits there): the destructor
// (the members release themselves), get_root, set_target(character*) and add_frame_barrier. listener::alive is in upstream
// gameswf_listener.cpp.
// permanent_string_cache::get and destruct<permanent_string> (0x76c870) are written here.

#include "vendor-gameswf/as_environment.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"           // free_internal (0x752b38)
#include "vendor-gameswf/permanent_string_cache.hpp"  // permanent_string_cache, string_pointer, destruct<T>

namespace gameswf {

struct swf_event;  // gameswf_sprite_instance / gameswf_event (Gameloft); not declared in the upstream tree

}  // namespace gameswf

// 0x75d89c gameswf::array<gameswf::swf_event*>::release_buffer()
//
// Upstream array<T> has no release_buffer. The DH2 member is declared in base/container.h (DH2 line), and this
// explicit specialization gives the binary's body for the swf_event* instantiation. Hex-Rays shows a loop over
// a negative m_size before the reset: it writes null slots from m_size up to -1. That is the inlined "construct
// new elements" loop of resize(0), so it runs only for a negative count. The count is then zero, and reserve(0)
// frees the buffer.
template <>
void array<gameswf::swf_event*>::release_buffer() {
	for (int i = m_size; i < 0; ++i) {
		m_buffer[i] = nullptr;
	}
	m_size = 0;
	reserve(0);
}

namespace gameswf {

// gameswf::s_static_strings: the global cache of get_static_string (0x76d594); a data symbol, so it has no queue row.
permanent_string_cache s_static_strings;

// 0x76c870 void gameswf::destruct<gameswf::permanent_string>(gameswf::permanent_string const*)
//
// Null check, then ~permanent_string (the binary frees the heap text when the flag byte is 0xff, which is what the
// tu_string destructor does), then free_internal of the object itself.
template <>
void destruct<permanent_string>(const permanent_string* object) {
	if (object) {
		object->~permanent_string();
		free_internal(const_cast<permanent_string*>(object), 0);
	}
}

// 0x75c2cc gameswf::permanent_string_cache::get(gameswf::tu_string const&)
//
// Looks the text up through the hash (find_index, 0x75a918). A hit returns the stored permanent string. A miss builds a
// 20-byte permanent_string (operator new with the gameswf heap hint in the binary) from the text, which sets the interned
// bit, stores it in the table under a key that points at the string itself (operator[], 0x75c274), and returns it.
permanent_string* permanent_string_cache::get(const ::tu_string& name) {
	const string_pointer key = {&name};
	permanent_string* found = nullptr;
	if (::hash<string_pointer, permanent_string*, string_pointer_hash_functor<string_pointer> >::get(key, &found)) {
		return found;
	}
	permanent_string* interned = new (swf::MEM_UNRECOVERED) permanent_string(name);	// operator new(0x14, hint 0): destruct<permanent_string> frees it with free_internal
	const string_pointer own_key = {interned};
	(*this)[own_key] = interned;
	return interned;
}

// 0x76c8ac gameswf::permanent_string_cache::clear()
//
// Destructs the permanent string of each occupied entry (destruct<permanent_string>, 0x76c870, another batch),
// in slot order from 0 to the size mask. Empty slots and tombstones are skipped by the iterator, which is the
// rule of the binary's loop. Then the base hash is cleared (hash::clear, 0x75a03c, upstream), which frees the
// table and leaves m_table null.
void permanent_string_cache::clear() {
	for (iterator it = begin(); it != end(); ++it) {
		destruct<permanent_string>(it->second);
	}
	::hash<string_pointer, permanent_string*, string_pointer_hash_functor<string_pointer> >::clear();
}

// 0x76c990 gameswf::permanent_string_cache::~permanent_string_cache()   [D1, complete object]
//
// The binary calls clear() on the cache and then hash::clear() on the same object (the inlined ~hash()). The base
// destructor runs after this body and calls hash::clear() again, which does nothing once m_table is null.
permanent_string_cache::~permanent_string_cache() {
	clear();
	::hash<string_pointer, permanent_string*, string_pointer_hash_functor<string_pointer> >::clear();
}

// 0x7997c4 gameswf::as_environment::pop()
//
// Returns the top value of the stack and removes it. The binary copies the element into the result (flags and
// type are zeroed first, which the copy constructor does too) and then resizes the stack by one. resize destructs
// the removed element.
as_value as_environment::pop() {
	as_value result(m_stack[m_stack.size() - 1]);
	m_stack.resize(m_stack.size() - 1);
	return result;
}

// 0x7bc1dc gameswf::as_environment::get_player() const
//
// The player pointer is valid while its weak proxy is alive. When the proxy has died, the binary drops its count
// (the proxy is freed by free_internal at zero) and clears both fields, then returns null. The members are mutable
// because the binary writes them from a const method.
player* as_environment::get_player() const {
	// weak_ptr::get_ptr tests the proxy: a dead proxy loses one reference (freed at zero) and both fields
	// are cleared, which is the sequence of the binary.
	return m_player.get_ptr();
}

}  // namespace gameswf
