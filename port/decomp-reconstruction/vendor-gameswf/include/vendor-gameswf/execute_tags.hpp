// gameswf execute tags as the DH2 binary has them: gameswf::execute_tag and the three tag classes of
// gameswf_impl.cpp (place_object_2, remove_object_2, set_background_color).
//
// Replaces the upstream struct execute_tag in vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_impl.h
// (wrapped in #if 0 there) and the three tag structs of upstream gameswf_impl.cpp (wrapped in #if 0 or
// reduced to out-of-line members there).
//
// execute_tag vtable (vtables-001.json, 52 bytes; offsets from the address point, after offset-to-top and typeinfo):
//   +0x00 D1 (0x759ac4)     +0x04 D0 (0x759ff0, compiler-generated)   +0x08 execute
//   +0x0c execute_state     +0x10 execute_state_reverse               +0x14 is_remove_tag
//   +0x18 is_action_tag     +0x1c get_depth_id_of_replace_or_add_tag  +0x20 get_depth
//   +0x24 get_action_offset +0x28 is_place_tag
// Upstream r1714 declares an execute_now slot before execute_state. The binary has no such slot.
//
// remove_object_2 (0x0c bytes) and set_background_color (0x08 bytes) are plain: a vptr and their fields.
//
// place_object_2 is not the r1714 struct. The binary keeps it as one variable-size block (read allocates 0x1c bytes plus the
// parts that the tag carries, at most 0x54 bytes for PlaceObject and 0x1c + 24 + 32 + 4 + 20 + 16 for PlaceObject2/3). The
// block starts with a 0x1c-byte header; the matrix, the colour transform, the name pointer, the effect and the event handler
// array follow it in that order, each present only when the tag has it, and five byte fields of the header (+0x04..+0x08)
// give the offset of each part from the start of the object (0 = absent). Execution passes the addresses of the parts to the
// character, or null. See the comments on the members.
//
// On the host the vptr and the two pointers are 8 bytes wide, so the header is larger and the parts are aligned; the byte
// offsets are computed at read time (place_object_2::read), the accessors below turn an offset into a typed pointer. The
// 32-bit offsets in the member comments are the binary's.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp (execute_tag, the D1 of remove_object_2 and
// set_background_color, the two place_object_2 getters), vendor-gameswf/src/v1-vendor-gameswf-gameswf_impl-0.cpp (the rest of
// place_object_2) and upstream gameswf_impl.cpp (the other members of remove_object_2 and set_background_color).

#pragma once

#include <cstddef>
#include <cstdint>

#include "gameswf/gameswf_types.h"  // gameswf::rgba, and gameswf.h: matrix, cxform, stream, player
#include "vendor-gameswf/effect.hpp"          // gameswf::effect (blend mode and filter list), base/container.h: array<>
#include "vendor-gameswf/gameswf_alloc.hpp"   // operator new(size, swf::MemHint), free_internal

namespace gameswf {

struct character;
struct movie_definition_sub;
struct swf_event;  // gameswf_impl.h

struct execute_tag {
	// DH2: the tags live on the gameswf heap: the binary allocates them with operator new(size, MemHint 0) and
	// DH2: releases them with free_internal (destruct<execute_tag>, 0x763e6c, and the deleting destructors, which call the
	// DH2: allocator's free). The class-level forms make a plain `new T` of any tag the same allocation.
	static void* operator new(std::size_t size) { return ::operator new(size, swf::MEM_UNRECOVERED); }
	static void* operator new(std::size_t size, swf::MemHint hint) { return ::operator new(size, hint); }
	static void* operator new(std::size_t, void* where) noexcept { return where; }
	static void operator delete(void* p) { if (p != nullptr) { free_internal(p, 0u); } }
	static void operator delete(void* p, swf::MemHint) { if (p != nullptr) { free_internal(p, 0u); } }
	static void operator delete(void*, void*) noexcept {}

	virtual ~execute_tag();                                            // +0x00 D1 0x759ac4
	virtual void execute(character* m);                                // +0x08 0x759ac8
	virtual void execute_state(character* m);                          // +0x0c 0x759acc
	virtual void execute_state_reverse(character* m, int frame);       // +0x10 0x759ad0
	virtual bool is_remove_tag() const;                                // +0x14 0x759ae4
	virtual bool is_action_tag() const;                                // +0x18 0x759aec
	virtual std::uint32_t get_depth_id_of_replace_or_add_tag() const;  // +0x1c 0x759af4
	virtual int get_depth() const;                                     // +0x20 0x759afc, returns -1
	virtual int get_action_offset() const;                             // +0x24 0x759b04, returns -1
	virtual bool is_place_tag() const;                                 // +0x28 0x759b0c, returns false
};

// PlaceObject (tag 4), PlaceObject2 (26) and PlaceObject3 (70). Vtable (off_98FE20): the destructors, execute, execute_state,
// execute_state_reverse, get_depth_id_of_replace_or_add_tag, get_depth and is_place_tag are the class's own; is_remove_tag,
// is_action_tag and get_action_offset are inherited.
struct place_object_2 : public execute_tag {
	// The value of m_place_type. r1714's enum place_type has the same order.
	enum place_type {
		PLACE = 0,    // tag 4, or tag 26/70 with a character and no move flag (also when neither flag is set)
		MOVE = 1,     // tag 26/70 with the move flag and no character
		REPLACE = 2,  // tag 26/70 with a character and the move flag
	};

	// The binary has no constructor: place_object_2::read (0x75cb6c) writes every header field itself. This one zeroes the
	// header, which is what read does before it fills the fields in.
	place_object_2()
		: m_name_offset(0), m_cxform_offset(0), m_matrix_offset(0), m_effect_offset(0), m_event_handlers_offset(0),
		  m_place_type(PLACE), m_ratio(0), m_depth(0), m_character_id(0), m_clip_depth(0), m_tag_type(0),
		  m_previous_cxform(nullptr), m_previous_matrix(nullptr) {}

	~place_object_2() override;                                         // +0x00 D1 0x75e230 (D0 0x75e338 is compiler-generated)
	void execute(character* m) override;                                // +0x08 0x75d8d8
	void execute_state(character* m) override;                          // +0x0c 0x759de4
	void execute_state_reverse(character* m, int frame) override;       // +0x10 0x75a648
	std::uint32_t get_depth_id_of_replace_or_add_tag() const override;  // +0x1c 0x759df8
	int get_depth() const override;                                     // +0x20 0x759b14, returns the u16 at +0x0c
	bool is_place_tag() const override;                                 // +0x28 0x759b1c, returns true

	// 0x75cb6c gameswf::place_object_2::read(player*, stream*, int, int, movie_definition_sub*). Reads one tag and returns the new
	// block (null for a tag type other than 4, 26 and 70). r1714 reads into an object that the loader makes; the binary's read makes
	// the object itself, because its size depends on the parts the tag has. `m` supplies the per-depth tables (m_depth_matrices and
	// m_depth_cxforms) and the movie version comes from the loader; `p` owns the permanent string cache that interns the name.
	static place_object_2* read(player* p, stream* in, int tag_type, int movie_version, movie_definition_sub* m);

	// ---- header ----
	std::uint8_t m_name_offset;           // +0x04: offset of the name pointer (a permanent_string*), 0 = no name
	std::uint8_t m_cxform_offset;         // +0x05: offset of the colour transform, 0 = none
	std::uint8_t m_matrix_offset;         // +0x06: offset of the matrix, 0 = none
	std::uint8_t m_effect_offset;         // +0x07: offset of the effect (blend mode and filters), 0 = none
	std::uint8_t m_event_handlers_offset; // +0x08: offset of the array<swf_event*>, 0 = none
	std::uint8_t m_place_type;            // +0x09: place_type
	std::uint16_t m_ratio;                // +0x0a: the 16-bit ratio as read (the float is ratio / 65535, or 0 when the field is 0)
	std::uint16_t m_depth;                // +0x0c
	std::uint16_t m_character_id;         // +0x0e: 0 when the tag has no character
	std::uint16_t m_clip_depth;           // +0x10
	std::uint16_t m_tag_type;             // +0x12: 4, 26 or 70
	cxform* m_previous_cxform;            // +0x14: the colour transform the previous tag at this depth left (movie m_depth_cxforms), or null
	matrix* m_previous_matrix;            // +0x18: the same for the matrix (m_depth_matrices)
	// +0x1c: the parts, in this order, each aligned for its type on the host:
	//   matrix (24 bytes), cxform (32 bytes), name pointer (4 bytes), effect (20 bytes), array<swf_event*> (16 bytes)

	// ---- the parts ----
	// A part is addressed by its offset byte from the start of the object. Nothing else in the tag does offset arithmetic.
	cxform* get_cxform() const { return part<cxform>(m_cxform_offset); }
	matrix* get_matrix() const { return part<matrix>(m_matrix_offset); }
	effect* get_effect() const { return part<effect>(m_effect_offset); }
	array<swf_event*>* get_event_handlers() const { return part<array<swf_event*> >(m_event_handlers_offset); }
	// The interned name, or &s_empty_name when the tag has none (the binary tests both the offset and the stored pointer).
	const ::tu_string* get_name() const;
	// The ratio as the character takes it.
	float get_ratio() const { return m_ratio != 0 ? static_cast<float>(m_ratio) / 65535.0f : 0.0f; }

	template <class T>
	T* part(std::uint8_t offset) const {
		return offset != 0 ? reinterpret_cast<T*>(reinterpret_cast<std::uint8_t*>(const_cast<place_object_2*>(this)) + offset) : nullptr;
	}
};

// PlaceObject's Remove (tag 5, with the character id) and RemoveObject2 (tag 28).
struct remove_object_2 : public execute_tag {
	remove_object_2() : m_depth(-1), m_id(-1) {}  // 0x75a804 (inlined in remove_object_2_loader)

	~remove_object_2() override;                                        // +0x00 D1 0x759fe8
	void execute(character* m) override;                                // +0x08 0x759e2c
	void execute_state(character* m) override;                          // +0x0c 0x759e4c
	void execute_state_reverse(character* m, int frame) override;       // +0x10 0x75a5e4
	bool is_remove_tag() const override;                                // +0x14 0x759e60

	void read(stream* in, int tag_type);  // r1714 member, inlined into the loader in the binary (no symbol)

	int m_depth;  // +0x04, the 16-bit depth read from the tag
	int m_id;     // +0x08, the 16-bit character id of RemoveObject (tag 5 only)
};

// SetBackgroundColor (tag 9).
struct set_background_color : public execute_tag {
	set_background_color() {}  // 0x75b0a8 (inlined in set_background_color_loader): the colour is rgba's default, then read_rgb

	~set_background_color() override;                                   // +0x00 D1 0x759fec
	void execute(character* m) override;                                // +0x08 0x759c78
	void execute_state(character* m) override;                          // +0x0c 0x759cc8

	void read(stream* in);  // r1714 member, inlined into the loader in the binary (no symbol)

	rgba m_color;  // +0x04
};

}  // namespace gameswf
