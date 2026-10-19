// gameswf::do_action as the DH2 binary has it (Gameloft). Replaces the upstream struct in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_action.cpp (line 274, a struct defined in the .cpp; wrapped in
// #if 0 there). The base is execute_tag (execute_tags.hpp, DH2 vtable), so the do_action vtable is a second vptr at +0x00.
//
// Layout, 16 bytes: vptr +0x00 (do_action vtable, off_991260), m_buf +0x04 (action_buffer, 12 bytes, see action_buffer.hpp).
// read() is the upstream forwarder to m_buf.read(in) that the do_action_loader and do_init_action_loader functions in
// gameswf_action.cpp call (inline in the binary: no symbol). Unlike r1714 the binary has no execute_now slot.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp (0x7ba664, 0x7ba684, 0x7ba68c, 0x7bb234; the deleting
// destructor 0x7bb274 is compiler-generated).

#pragma once

#include "vendor-gameswf/action_buffer.hpp"  // gameswf::action_buffer (DH2)
#include "vendor-gameswf/execute_tags.hpp"   // gameswf::execute_tag (DH2)

namespace gameswf {

struct do_action : public execute_tag {
	~do_action() override;  // 0x7bb234 (D1). The empty body: m_buf releases its buffer (inlined drop_ref), then ~execute_tag. 0x7bb274 (D0) is compiler-generated.

	void execute(character* m) override;  // 0x7ba664, hands the action buffer to the character (character vtable +0xcc add_action_buffer)
	bool is_action_tag() const override;  // 0x7ba684, true
	int get_action_offset() const override;  // 0x7ba68c, returns m_buf.m_action_offset (do_action +0x0c)

	void read(stream* in) { m_buf.read(in); }  // upstream do_action::read, forwards to m_buf.read(in) (0x7bafa4)

	action_buffer m_buf;  // +0x04
};

}  // namespace gameswf
