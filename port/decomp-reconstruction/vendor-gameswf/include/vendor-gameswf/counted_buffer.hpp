// gameswf::counted_buffer as the DH2 binary has it. Replaces the upstream stub in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_action.h (wrapped in #if 0 there). The upstream base
// gc_object is not in the binary's layout: the reference count is a plain int at +0x10, and the class has no
// vtable (neither the destructor nor drop_ref stores one).
//
// Layout, 0x24 bytes (32-bit offsets; host widths apply to pointers):
//   +0x00..+0x0f  ::membuf (base/membuf.h, 16 bytes, no vptr)
//   +0x10         m_ref_count     drop_ref() decrements it and destroys the object at zero
//   +0x14         m_dictionary    array<const tu_string*>, 16 bytes (buffer +0x14, size +0x18, capacity +0x1c, borrowed
//                                 flag +0x20). The decl_dict table of the action buffer: process_decl_dict (0x7bb9a0)
//                                 fills it with the interned strings of the player's permanent string cache, one per
//                                 dictionary entry, and the PUSH opcodes read it. r1714 keeps an array<tu_string> in the
//                                 action_buffer itself; the binary keeps it here, so every action_buffer that shares
//                                 this buffer shares the dictionary.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp (0x75b974 D1, 0x75b9f4 drop_ref).

#pragma once

#include "base/container.h"  // array<>, tu_string
#include "base/membuf.h"     // ::membuf

namespace gameswf {

class counted_buffer : public ::membuf {
public:
	counted_buffer() : m_ref_count(0) {}  // the construction inlined in action_buffer::action_buffer (0x7bae08): the count and the array are zero
	~counted_buffer();  // 0x75b974 (D1). Non-virtual: the binary has no vtable for this class.
	void drop_ref();    // 0x75b9f4

	int m_ref_count;                          // +0x10
	array<const tu_string*> m_dictionary;     // +0x14
};

}  // namespace gameswf
