// Batch v1-vendor-gameswf-pack17-c88d12-0 (vendor-gameswf, DH2 gameswf r1714 with Gameloft changes).
//
// Binary functions in eight owners (the rows are in the ledger part gameswf-core-asruntime.csv):
//   instance_info D1 (0x7b9938), traits_info D1 (0x7b9c18), do_action execute (0x7ba664), is_action_tag (0x7ba684),
//   get_action_offset (0x7ba68c), call_method with the debug label (0x7ba904) and do_action D1 (0x7bb234), action_buffer C1 (0x7bae08) and C2 (0x7bae5c), read (0x7bafa4),
//   operator= (0x7bb1e4), process_decl_dict (0x7bb9a0), execute(as_environment*) (0x7c0690),
//   event_id::get_function_name (0x7baef8), array<tu_stringi>::~array (0x7bb410),
//   hash<tu_string, tu_loadlib*, string_hash_functor<tu_string> >::set_raw_capacity (0x7bb580),
//   as_function _typeof (0x7c2894), clear_refs (0x7c28c8), get_member (0x7c2990), set_member (0x7c29f0),
//   D1 (0x7c2fc4), this_alive (0x7c40a4).
//
// Deleting destructors (D0) are compiler-generated and are skipped, as in pack6 and pack8: 0x7b99d0, 0x7ba5e4, 0x7bb274,
// 0x7c316c. The binary's D0 runs D1 and then frees the object, which C++ delete does.
//
// Layouts used here (32-bit binary offsets; host pointers are 8 bytes, see TRACK-B decision 2):
//   ref_counted (vendor-gameswf/ref_counted.hpp): 12 bytes, vptr +0x00, count +0x04, weak proxy +0x08.
//   array<T> (base/container.h): buffer +0x00, size +0x04, buffer size +0x08, borrowed flag +0x0c (16 bytes).
//   instance_info (0x40 bytes) and traits_info (0x34 bytes): gameswf_abc.h and gameswf_avm2.h (vendor-gameswf/abc_info.hpp
//     pulls them in). do_action (16 bytes) and action_buffer (12 bytes): vendor-gameswf/do_action.hpp and action_buffer.hpp.
//     The decl_dict table is counted_buffer::m_dictionary (counted_buffer.hpp), not part of the action_buffer.
//   tu_stringi and tu_string: 20 bytes. A tu_string with first byte -1 keeps its heap text pointer at +0x0c.
//
// Not recorded here: the array<T>::~array change (0x7bb410) is in base/container.h, marked DH2. It is the same two steps
// as every array destructor in the binary (clear, then reserve(0)), so one edit covers all instantiations.

#include <cstddef>

#include "base/container.h"
#include "vendor-gameswf/abc_info.hpp"
#include "vendor-gameswf/action_buffer.hpp"
#include "vendor-gameswf/do_action.hpp"
#include "vendor-gameswf/as_function.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"  // gameswf::malloc_internal, gameswf::free_internal, swf::MEM_UNRECOVERED
#include "core-platform/memory.hpp"  // operator new(std::size_t, swf::MemHint), the counted buffer's allocation (0x7bae08)
#include "vendor-gameswf/gameswf_hash_dh2.hpp"  // dh2_hash::bucket_count, and the tu_loadlib hash declaration
#include "gameswf/gameswf_action.h"       // event_id, with_stack_entry
#include "gameswf/gameswf_character.h"    // character::add_action_buffer
#include "gameswf/gameswf_environment.h"  // with_stack_entry
#include "gameswf/gameswf_log.h"          // log_error
#include "gameswf/gameswf_player.h"       // player::m_permanent_strings, m_garbage_count
#include "gameswf/gameswf_stream.h"       // stream

namespace gameswf {

// 0x7b9938 gameswf::instance_info::~instance_info()   [D1]
// Binary: vptr store; the array<smart_ptr<traits_info>> at +0x30 is resized to 0 and reserved to 0; the array<int> at +0x1c
// has its size set to 0 and is reserved to 0; then ref_counted::~ref_counted. C++ destroys m_trait and then m_interface
// after this body, in reverse declaration order, with the same two steps each (the array destructor is clear() then
// reserve(0)). The base destructor runs last.
instance_info::~instance_info() {}

// 0x7b9c18 gameswf::traits_info::~traits_info()   [D1]
// Binary: vptr store; the array<int> at +0x24 is resized to 0 and reserved to 0; then ref_counted::~ref_counted.
traits_info::~traits_info() {}

// 0x7ba904 gameswf::call_method(gameswf::as_value const&, gameswf::as_environment*, gameswf::as_value const&, int, int, char const*)
// The only call_method in the binary. The result starts undefined. When the method converts to a function (to_function(), null
// for anything that is not a function object), the function is called through its virtual operator() with a fn_call built from
// the result, the this value, the environment, the argument count, the stack index of the first argument and the debug label.
// A method that is not a function leaves the result undefined; the binary logs nothing. r1714 had two five-argument forms with
// a verbose-only error log: they remain in gameswf_action.cpp as forwarders that pass the label "???".
as_value call_method(const as_value& method, as_environment* env, const as_value& this_ptr, int nargs,
                     int first_arg_bottom_index, const char* name) {
	as_value val;
	as_function* func = method.to_function();
	if (func) {
		(*func)(fn_call(&val, this_ptr, env, nargs, first_arg_bottom_index, name));
	}
	return val;
}

// 0x7ba68c gameswf::do_action::get_action_offset() const
// Binary: returns the word at this+0x0c, which is m_buf.m_action_offset (action_buffer +0x08).
int do_action::get_action_offset() const {
	return m_buf.m_action_offset;
}

// 0x7bb234 gameswf::do_action::~do_action()   [D1]
// Binary: vptr store; if the counted buffer at +0x04 is set, drop its reference (counted_buffer::drop_ref, the manual count).
// That is the inlined destructor of the action_buffer member, which runs after this empty body; then ~execute_tag.
do_action::~do_action() {}

// 0x7ba664 gameswf::do_action::execute(gameswf::character*)
// Binary: a virtual call on the character at vtable +0xcc (add_action_buffer) with the address of the action buffer (this+4).
void do_action::execute(character* m) {
	m->add_action_buffer(&m_buf);
}

// 0x7ba684 gameswf::do_action::is_action_tag() const
// Binary: returns 1.
bool do_action::is_action_tag() const {
	return true;
}

// 0x7bae08 gameswf::action_buffer::action_buffer()   [C1]
// 0x7bae5c gameswf::action_buffer::action_buffer()   [C2]
// Same body in both. Binary: operator new(0x24, swf::MemHint 0) (SwfAlloc) for the counted buffer; its membuf base constructor;
// the count and the dictionary array (+0x10..+0x20) zeroed; the pointer stored in this+0x00 and the count incremented (the
// reference this object holds). Then this+0x04 = -1 and this+0x08 = 0.
// The block is freed by counted_buffer::drop_ref through free_internal (SwfFree), so it is allocated with the same hint,
// swf::MEM_UNRECOVERED, not with the plain global new. The host sizeof(counted_buffer) stands in for 0x24 (TRACK-B decision 2).
action_buffer::action_buffer()
	:
	m_buffer(new (swf::MEM_UNRECOVERED) counted_buffer()),
	m_decl_dict_processed_at(-1),
	m_action_offset(0)
{
	++m_buffer->m_ref_count;
}

// 0x7bafa4 gameswf::action_buffer::read(gameswf::stream*)
// Reads the action records of one tag into the counted buffer. First the buffer is reserved for the rest of the tag
// (its size plus tag end minus current position). Then m_action_offset is the stream position of the first record, plus 8
// when the stream's flag byte (+0x00, the second constructor argument) is set. Then the records are read as in r1714: one
// action byte appended, and for an action byte with bit 7 set a 16-bit length (low byte, high byte) and that many data
// bytes; an action byte of 0 ends the buffer.
void action_buffer::read(stream* in) {
	counted_buffer* buffer = m_buffer;
	const int tag_end_position = in->get_tag_end_position();
	const int position = in->get_position();
	buffer->reserve(buffer->size() + tag_end_position - position);
	m_action_offset = in->unk_00 ? in->get_position() + 8 : in->get_position();

	for (;;) {
		const int action_id = in->read_u8();
		buffer->append(static_cast<Uint8>(action_id));
		if (action_id & 0x80) {
			const int length = in->read_u16();
			buffer->append(static_cast<Uint8>(length & 0xFF));
			buffer->append(static_cast<Uint8>((length >> 8) & 0xFF));
			for (int i = 0; i < length; i++) {
				buffer->append(static_cast<Uint8>(in->read_u8()));
			}
		}
		if (action_id == 0) {
			break;
		}
	}
}

// 0x7bb1e4 gameswf::action_buffer::operator=(gameswf::action_buffer const&)
// Shares the other buffer: when it is a different pointer, the current buffer (if any) loses a reference, the pointer is
// taken and the new buffer (if any) gains one by hand. The two ints (m_decl_dict_processed_at and m_action_offset) are
// always copied. The dictionary is inside the shared buffer.
void action_buffer::operator=(const action_buffer& ab) {
	counted_buffer* other = ab.m_buffer;
	if (other != m_buffer) {
		if (m_buffer != nullptr) {
			m_buffer->drop_ref();
		}
		m_buffer = other;
		if (other != nullptr) {
			++other->m_ref_count;
		}
	}
	m_decl_dict_processed_at = ab.m_decl_dict_processed_at;
	m_action_offset = ab.m_action_offset;
}

// 0x7bb9a0 gameswf::action_buffer::process_decl_dict(int, int, gameswf::player*)
// Interprets the decl_dict opcode at start_pc; the first one found is remembered in m_decl_dict_processed_at and the same
// opcode again does nothing. A different opcode later logs an error and is ignored. The dictionary has count entries
// (the 16-bit word at start_pc+3), each the interned (permanent) copy of one NUL-terminated string from the opcode data,
// found through the player's permanent string cache. A string that runs past stop_pc logs "action buffer dict length
// exceeded" and fills the remaining entries (this one included) with the interned text "<invalid>".
void action_buffer::process_decl_dict(int start_pc, int stop_pc, player* p) {
	counted_buffer* buffer = m_buffer;
	if (m_decl_dict_processed_at == start_pc) {
		return;
	}
	if (m_decl_dict_processed_at != -1) {
		log_error("error: process_decl_dict(%d, %d): decl_dict was already processed at %d\n", start_pc, stop_pc,
		          m_decl_dict_processed_at);
		return;
	}
	m_decl_dict_processed_at = start_pc;

	const Uint8* data = static_cast<const Uint8*>(buffer->data());
	const int count = data[start_pc + 3] | (data[start_pc + 4] << 8);
	buffer->m_dictionary.resize(count);

	int i = start_pc + 2;
	for (int ct = 0; ct < count; ct++) {
		buffer->m_dictionary[ct] = p->m_permanent_strings.get(tu_string(reinterpret_cast<const char*>(&data[3 + i])));
		if (data[3 + i] != 0) {
			bool exceeded = stop_pc <= i;
			int j = i + 1;
			while (!exceeded && data[3 + j] != 0) {
				j++;
				if (j == stop_pc + 1) {
					exceeded = true;
				}
			}
			if (exceeded) {
				log_error("error: action buffer dict length exceeded\n");
				for (; ct < count; ct++) {
					buffer->m_dictionary[ct] = p->m_permanent_strings.get(tu_string("<invalid>"));
				}
				return;
			}
			i = j;
		}
		i++;
	}
}

// 0x7bb410 gameswf::array<gameswf::tu_stringi>::~array()
// No separate body here. The binary calls resize(0) and then reserve(0). The DH2 array destructor in base/container.h does
// the same (clear, then reserve(0)), and it is the one used by every array instantiation.

}  // namespace gameswf

// 0x7bb580 gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
// hash, tu_string and string_hash_functor are global in the vendored source (base/container.h), so this specialization is at
// global scope, as in the other DH2 hash batches. Same algorithm as the other DH2 tables (dh2_hash::bucket_count, gameswf_hash_dh2.hpp): new_size <= 0 clears the table;
// otherwise the bucket count comes from the rule, and an existing table of that size is kept. The new table holds
// 32-byte entries from malloc_internal with next_in_chain = -2 on every slot. Live entries (not empty, not tombstones) are
// added to the new table in index order, and the old entry's key and value are destroyed (entry::clear). The old table is
// freed, and the new one is stolen. The temporary is left with no table, so its destructor does nothing.
template <>
void hash<tu_string, tu_loadlib*, string_hash_functor<tu_string> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}

	const int size = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && size == m_table->m_size_mask + 1) {
		return;
	}

	hash new_hash;
	new_hash.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * static_cast<std::size_t>(size)), swf::MEM_UNRECOVERED));
	new_hash.m_table->m_entry_count = 0;
	new_hash.m_table->m_size_mask = size - 1;
	for (int i = 0; i < size; i++) {
		new_hash.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry* e = &E(i);
			if (!e->is_empty() && !e->is_tombstone()) {
				new_hash.add(e->first, e->second);
				e->clear();
			}
		}
		gameswf::free_internal(m_table, 0);
	}

	m_table = new_hash.m_table;
	new_hash.m_table = nullptr;
}

// ---------------------------------------------------------------------------------------------------------------------
// action_buffer::execute(as_environment*) and event_id::get_function_name.
// ---------------------------------------------------------------------------------------------------------------------

namespace gameswf {

// 0x7c0690 gameswf::action_buffer::execute(gameswf::as_environment*)
// Binary: a with-stack array of three words, zeroed, then execute(env, start 0, the buffer size, retval NULL, the empty
// with-stack, is_function2 false), then the array's resize(0) and reserve(0). The byte that Hex-Rays shows at [sp+0x1c]
// is never read, so it is not written. The array destructor does the resize and reserve steps.
void action_buffer::execute(as_environment* env) {
	array<with_stack_entry> empty_with_stack;
	execute(env, 0, m_buffer->size(), nullptr, empty_with_stack, false);
}

namespace {

// binary: gameswf::s_function_names, .data, 108 bytes: 27 pointers. The strings were read from the binary (IDA, read only).
// They differ from upstream's gameswf_action.cpp table (for example "onRelease_Outside" and "onRoll_Over"), and the table
// has no entry for ON_SOUND_COMPLETE.
const char* const s_function_names[27] = {
	"INVALID",         "onPress",          "onRelease",        "onRelease_Outside", "onRoll_Over",
	"onRoll_Out",      "onDrag_Over",      "onDrag_Out",       "onKeyPress",        "onInitialize",
	"onLoad",          "onUnload",         "onEnterFrame",     "onMouseDown",       "onMouseUp",
	"onMouseMove",     "onKeyDown",        "onKeyUp",          "onData",            "onConstruct",
	"onSetFocus",      "onKillFocus",      "onLoadComplete",   "onLoadError",       "onLoadInit",
	"onLoadProgress",  "onLoadStart",
};

}  // namespace

// binary: gameswf::s_fnames_string, array<tu_stringi> (.bss). Filled on first use by event_id::get_function_name.
// External linkage (link-1): the binary's object is internal to its unit; gameswf::clear_standard_fnames
// (src/v1-vendor-gameswf-gameswf-fddef6-6.cpp) clears it from another batch file.
array<tu_stringi> s_fnames_string;

// 0x7baef8 gameswf::event_id::get_function_name() const
// Binary: on first use (size 0), reserve(27), then one element per table entry in order, each constructed in place from the
// C string. The binary's growth branch (reserve when the count would pass the capacity) cannot run after reserve(27), so
// it is not written. The element at index m_id is returned.
// m_id 27 (ON_SOUND_COMPLETE in upstream's enum) is past the 27-entry table: the binary reads the memory after the table
// there (no defined result), and operator[] asserts here. Every m_id inside the table gives the binary's string.
const tu_string& event_id::get_function_name() const {
	if (s_fnames_string.size() == 0) {
		s_fnames_string.reserve(27);
		for (int i = 0; i < 27; ++i) {
			s_fnames_string.push_back(tu_stringi(s_function_names[i]));
		}
	}
	return s_fnames_string[m_id].to_tu_string();
}

}  // namespace gameswf

// ---------------------------------------------------------------------------------------------------------------------
// as_function: the Gameloft additions to the r1714 struct (m_prototype at +0x38, the _typeof, clear_refs, get_member,
// set_member and this_alive overrides). The class is in gameswf_function.h (vendor-gameswf/as_function.hpp pulls it in).
// ---------------------------------------------------------------------------------------------------------------------

namespace gameswf {

// 0x7c2894 gameswf::as_function::_typeof()
const char* as_function::_typeof() {
	return "function";
}

// 0x7c28c8 gameswf::as_function::clear_refs(gameswf::hash<gameswf::as_object*, bool, gameswf::fixed_size_hash<gameswf::as_object*> >*, gameswf::as_object*)
// Binary: if this object is not in the visited table, the base clear_refs runs. Then the prototype at +0x38 is handled: when
// it is this_ptr, its reference is released (set to null); otherwise it is walked with the same arguments (virtual slot +0x40).
void as_function::clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr) {
	as_object* self = this;
	if (!visited_objects->get(self, nullptr)) {  // binary: hash::find_index(this) < 0 (find_index is private; get with a null value gives the same test)
		as_object::clear_refs(visited_objects, this_ptr);
		as_object* proto = m_prototype.get_ptr();
		if (proto != nullptr) {
			if (proto == this_ptr) {
				m_prototype = static_cast<as_object*>(nullptr);  // binary: smart_ptr<as_object>::set_ref(0); set_ref is private, operator= is the public form
			} else {
				proto->clear_refs(visited_objects, this_ptr);
			}
		}
	}
}

// 0x7c2990 gameswf::as_function::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
// Binary: a case-insensitive compare with "prototype"; any other name goes to as_object::get_member. For "prototype" the
// value becomes the object at +0x38 (set_as_object, even when null) and the result is 1.
bool as_function::get_member(const tu_stringi& name, as_value* val) {
	if (tu_string::stricmp(name.c_str(), "prototype") != 0) {
		return as_object::get_member(name, val);
	}
	val->set_as_object(m_prototype.get_ptr());
	return true;
}

// 0x7c29f0 gameswf::as_function::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
// Binary: other names go to as_object::set_member. For "prototype" the stored object becomes the value's object when the
// value's type byte is 5 (object), otherwise null; the prototype reference is replaced, and the result is 1.
bool as_function::set_member(const tu_stringi& name, const as_value& val) {
	if (tu_string::stricmp(name.c_str(), "prototype") != 0) {
		return as_object::set_member(name, val);
	}
	m_prototype = val.to_object();  // binary: smart_ptr<as_object>::set_ref(object or 0); set_ref is private, operator=(T*) is the public form
	return true;
}

// 0x7c2fc4 gameswf::as_function::~as_function()   [D1]
// Binary: vptr store; the prototype's reference is dropped (drop_ref on the pointer at +0x38); then as_object::~as_object.
// C++ does the same through m_prototype's destructor and the base destructor, so the body is empty.
as_function::~as_function() {}

// 0x7c40a4 gameswf::as_function::this_alive()
// Binary: reads the player through as_object::m_player (+0x2c proxy, +0x30 player; a dead proxy is released and both words
// cleared), and returns at once when the player is set and its garbage count (player +0x30) equals this object's alive stamp
// (+0x34). Otherwise as_object::this_alive() runs, and then this_alive() (vtable +0x44) on the prototype at +0x38 when set.
void as_function::this_alive() {
	player* p = m_player.get_ptr();
	if (p != nullptr && m_alive_stamp == p->m_garbage_count) {
		return;
	}
	as_object::this_alive();
	if (m_prototype.get_ptr() != nullptr) {
		m_prototype->this_alive();
	}
}

}  // namespace gameswf
