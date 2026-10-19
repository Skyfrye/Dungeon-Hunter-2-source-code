// gameswf::action_buffer as the DH2 binary has it (Gameloft). Replaces the upstream struct in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_action.h (wrapped in #if 0 there). Upstream keeps the byte
// code in gc_ptr<counted_buffer> and has an array<tu_string> dictionary next to it. The binary keeps a plain
// counted_buffer* with a manual reference count, and the dictionary is inside that counted buffer
// (counted_buffer::m_dictionary, see counted_buffer.hpp), so the three words here are all there is.
//
// Layout, 12 bytes (32-bit offsets; the pointer is host width):
//   +0x00  m_buffer                  counted_buffer*, reference counted by hand (count 1 after the constructor)
//   +0x04  m_decl_dict_processed_at  int, -1 after the constructor (upstream's initial value)
//   +0x08  m_action_offset           int, 0 after the constructor; read() sets it to the stream position of the first
//                                    action byte; returned by do_action::get_action_offset
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp: the constructor (0x7bae08, 0x7bae5c), read (0x7bafa4),
// operator= (0x7bb1e4), process_decl_dict (0x7bb9a0) and execute(env) (0x7c0690). Upstream bodies in gameswf_action.cpp
// that match the binary: enumerate (0x7bad44), load_as_plugin (0x7bb8e4), execute(env, start_pc, ...) (0x7bc230; its PUSH
// dictionary branches and the decl_dict call carry the DH2 changes, marked there).

#pragma once

#include "base/container.h"                  // array<>
#include "vendor-gameswf/counted_buffer.hpp" // gameswf::counted_buffer (DH2)

namespace gameswf {

struct as_environment;    // gameswf_environment.h
struct as_object;         // gameswf_environment.h
struct as_value;          // as_value.hpp (DH2)
struct with_stack_entry;  // gameswf_environment.h; used by value in array<> only inside the .cpp
struct player;            // gameswf.h
struct stream;            // gameswf.h

struct action_buffer {
	action_buffer();  // 0x7bae08 (C1), 0x7bae5c (C2). Same body.

	// No out-of-line destructor in the binary: the release below is the inlined code at the end of do_action::~do_action
	// (0x7bb234) and as_s_function::~as_s_function (0x7d2c8c) - drop the reference on the counted buffer when there is one.
	// The object cannot be copied by value (it would share the counted buffer without taking a reference); operator=
	// below is the only way to share a buffer.
	~action_buffer() {
		if (m_buffer != nullptr) {
			m_buffer->drop_ref();
		}
	}
	action_buffer(const action_buffer&) = delete;

	// 0x7bafa4. Reads the action records of one tag into the buffer (reserve for the rest of the tag first) and records
	// where the first record starts in m_action_offset.
	void read(stream* in);

	// 0x7c0690. Runs the whole buffer with an empty with-stack.
	void execute(as_environment* env);

	// 0x7bc230 (upstream gameswf_action.cpp).
	void execute(as_environment* env, int start_pc, int exec_bytes, as_value* retval,
	             const array<with_stack_entry>& initial_with_stack, bool is_function2) const;

	// 0x7bb8e4 (upstream gameswf_action.cpp).
	static as_object* load_as_plugin(player* plugin_player, const tu_string& classname,
	                                 const array<as_value>& params);

	int get_length() const { return m_buffer->size(); }  // upstream inline

	// 0x7bb1e4. Shares the other buffer (reference counted by hand) and copies the two ints; the dictionary travels
	// with the buffer.
	void operator=(const action_buffer& ab);

	counted_buffer* m_buffer;             // +0x00
	int m_decl_dict_processed_at;         // +0x04
	int m_action_offset;                  // +0x08 (do_action::get_action_offset returns this word at do_action +0x0c)

private:
	// 0x7bb9a0. The third argument is the player whose permanent string cache interns the dictionary strings (r1714 takes
	// two arguments and points into the buffer).
	void process_decl_dict(int start_pc, int stop_pc, player* p);
	static void enumerate(as_environment* env, as_object* object);  // 0x7bad44 (upstream)
};

}  // namespace gameswf
