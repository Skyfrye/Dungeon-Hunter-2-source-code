// Batch v1-vendor-gameswf-gameswf_impl-0 (category vendor-gameswf, gameswf r1714 with Gameloft changes): gameswf::place_object_2.
//
// Replaces the struct place_object_2 of upstream gameswf_impl.cpp (wrapped in #if 0 there). The DH2 tag is not the r1714 struct:
// it is one variable-size block (execute_tags.hpp) that place_object_2::read allocates and fills, so the whole class is rebuilt
// here and the loader (place_object_2_loader, 0x75f498, in gameswf_impl.cpp) only calls read and adds the result to the movie.
//
// Rows (all in vendor-gameswf/ledger.d/gameswf-core-impl.csv):
//   0x75cb6c read, 0x75d8d8 execute, 0x759de4 execute_state, 0x75a648 execute_state_reverse,
//   0x759df8 get_depth_id_of_replace_or_add_tag, 0x75e230 D1 (0x75e338, the deleting destructor, is compiler-generated).
// get_depth (0x759b14) and is_place_tag (0x759b1c) are in v1-vendor-gameswf-pack2-6d7f71-0.cpp.
//
// What differs from r1714:
//   - read makes the object (the loader does not), keeps the 16-bit ratio raw, and leaves out the parts the tag does not carry;
//   - PlaceObject (tag 4) always has a matrix and a colour transform (the identity one when the tag ends before it);
//   - the per-depth tables of the movie (movie_definition_sub::m_depth_matrices, m_depth_cxforms) hold the matrix and the
//     colour transform of the latest tag at each depth. The tag takes the entries that were there before it (m_previous_*) and
//     then registers its own, if it has them. execute_state_reverse of a MOVE moves back to the previous ones;
//   - the effect (blend mode byte and filter list) is a part of the block; r1714's blend-mode logic against the character's own
//     blend mode is not in the binary;
//   - PlaceObject3's filter list and blend mode are read in the order r1714 reads them (filter list, then blend mode);
//   - the event records keep the stream position of their first byte in the action buffer's m_action_offset;
//   - execute passes pointers (null = absent) and a copy of the event handler array (empty when the tag has none);
//   - execute_state_reverse of a PLACE removes the character only by id for tag 4 (r1714 always passes the id), and a MOVE moves
//     to the previous transform instead of the tag's own.

#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_environment.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/permanent_string.hpp"
#include "vendor-gameswf/permanent_string_cache.hpp"

#include <cstddef>
#include <cstdint>
#include <new>

namespace gameswf {

// 0x758ca8 gameswf::read_filter_list(gameswf::stream*, gameswf::effect&): appends the filters of the tag to the effect (gameswf_filters.cpp).
void read_filter_list(stream* in, effect& fx);

namespace {

// Where the parts of a tag go. The header comes first; each part follows at the next offset that suits its type. The offsets are
// bytes from the start of the object (execute_tags.hpp), so they must stay below 256.
struct part_layout {
	std::size_t cursor;  // the end of the parts placed so far

	explicit part_layout(std::size_t header_size) : cursor(header_size) {}

	std::uint8_t place(std::size_t size, std::size_t alignment) {
		cursor = (cursor + alignment - 1) / alignment * alignment;
		const std::uint8_t offset = static_cast<std::uint8_t>(cursor);
		cursor += size;
		return offset;
	}
};

// The largest block: every part, each at the widest alignment. The offset bytes must still be able to name the last one.
static_assert(sizeof(place_object_2) + sizeof(matrix) + sizeof(cxform) + sizeof(permanent_string*) + sizeof(effect) +
				  sizeof(array<swf_event*>) + 4 * alignof(std::max_align_t) <= 255,
			  "the parts of a place_object_2 are addressed by one byte offsets");

// Makes the block: size bytes from the gameswf heap, with the header zeroed. The binary writes the header fields one by one
// in read; the constructor does the same zeroing.
place_object_2* make_tag(std::size_t size) {
	void* memory = malloc_internal(static_cast<unsigned int>(size), swf::MEM_UNRECOVERED);
	return new (memory) place_object_2();
}

}  // namespace

// The interned name, or the shared empty name.
const ::tu_string* place_object_2::get_name() const {
	if (m_name_offset != 0) {
		permanent_string* name = *part<permanent_string*>(m_name_offset);
		if (name != nullptr) {
			return name;
		}
	}
	return &s_empty_name;
}

// 0x75cb6c gameswf::place_object_2::read(gameswf::player*, gameswf::stream*, int, int, gameswf::movie_definition_sub*)
//   (_ZN7gameswf14place_object_24readEPNS_6playerEPNS_6streamEiiPNS_20movie_definition_subE)
// The binary's locals are an identity matrix, an identity colour transform, an empty tu_string for the name and an empty
// effect; all of them are released at the end. Returns the new block, or null for a tag type that is not 4, 26 or 70.
place_object_2* place_object_2::read(player* p, stream* in, int tag_type, int movie_version, movie_definition_sub* m) {
	matrix mat;
	cxform color_transform;
	tu_string name;
	effect fx;
	place_object_2* tag = nullptr;

	if (tag_type == 4) {
		// Original place_object tag; very simple. The character id comes first, then the depth.
		Uint16 character_id = in->read_u16();
		Uint16 depth = in->read_u16();
		mat.read(in);

		matrix* previous_matrix = nullptr;
		m->m_depth_matrices.get(depth, &previous_matrix);
		cxform* previous_cxform = nullptr;
		m->m_depth_cxforms.get(depth, &previous_cxform);

		if (in->get_position() < in->get_tag_end_position()) {
			color_transform.read_rgb(in);
		}

		part_layout layout(sizeof(place_object_2));
		const std::uint8_t matrix_offset = layout.place(sizeof(matrix), alignof(matrix));
		const std::uint8_t cxform_offset = layout.place(sizeof(cxform), alignof(cxform));
		tag = make_tag(layout.cursor);
		tag->m_clip_depth = 0;
		tag->m_character_id = character_id;
		tag->m_previous_matrix = previous_matrix;
		tag->m_previous_cxform = previous_cxform;
		tag->m_matrix_offset = matrix_offset;
		tag->m_cxform_offset = cxform_offset;
		tag->m_name_offset = 0;
		tag->m_effect_offset = 0;
		tag->m_event_handlers_offset = 0;
		tag->m_place_type = PLACE;
		tag->m_ratio = 0;
		tag->m_tag_type = 4;
		tag->m_depth = depth;
		new (tag->get_matrix()) matrix(mat);
		new (tag->get_cxform()) cxform(color_transform);

		// This tag is now the latest at its depth.
		m->m_depth_matrices.set(static_cast<int>(depth), tag->get_matrix());
		m->m_depth_cxforms.set(static_cast<int>(depth), tag->get_cxform());
	} else if (tag_type == 26 || tag_type == 70) {
		in->align();

		bool has_actions = in->read_uint(1) ? true : false;
		bool has_clip_bracket = in->read_uint(1) ? true : false;
		bool has_name = in->read_uint(1) ? true : false;
		bool has_ratio = in->read_uint(1) ? true : false;
		bool has_cxform = in->read_uint(1) ? true : false;
		bool has_matrix = in->read_uint(1) ? true : false;
		bool has_char = in->read_uint(1) ? true : false;
		bool flag_move = in->read_uint(1) ? true : false;

		bool has_filter_list = false;
		bool has_blend_mode = false;
		if (tag_type == 70) {
			in->read_uint(3);  // unused
			in->read_uint(1);  // has_image
			in->read_uint(1);  // has_class_name
			in->read_uint(1);  // has_cache_asbitmap
			has_blend_mode = in->read_uint(1) ? true : false;
			has_filter_list = in->read_uint(1) ? true : false;
		}

		Uint16 depth = in->read_u16();
		Uint16 character_id = has_char ? in->read_u16() : 0;
		if (has_matrix) {
			mat.read(in);
		}
		if (has_cxform) {
			color_transform.read_rgba(in);
		}
		Uint16 ratio = has_ratio ? in->read_u16() : 0;
		if (has_name) {
			in->read_string(&name);
		}
		Uint16 clip_depth = has_clip_bracket ? in->read_u16() : 0;
		if (has_filter_list) {
			read_filter_list(in, fx);
		}
		if (has_blend_mode) {
			fx.m_blend_mode = in->read_u8();
		}

		matrix* previous_matrix = nullptr;
		m->m_depth_matrices.get(depth, &previous_matrix);
		cxform* previous_cxform = nullptr;
		m->m_depth_cxforms.get(depth, &previous_cxform);

		const bool has_effect = has_filter_list || has_blend_mode;
		part_layout layout(sizeof(place_object_2));
		const std::uint8_t matrix_offset = has_matrix ? layout.place(sizeof(matrix), alignof(matrix)) : 0;
		const std::uint8_t cxform_offset = has_cxform ? layout.place(sizeof(cxform), alignof(cxform)) : 0;
		const std::uint8_t name_offset = has_name ? layout.place(sizeof(permanent_string*), alignof(permanent_string*)) : 0;
		const std::uint8_t effect_offset = has_effect ? layout.place(sizeof(effect), alignof(effect)) : 0;
		const std::uint8_t events_offset = has_actions ? layout.place(sizeof(array<swf_event*>), alignof(array<swf_event*>)) : 0;

		tag = make_tag(layout.cursor);
		tag->m_tag_type = static_cast<std::uint16_t>(tag_type);
		tag->m_place_type = PLACE;
		tag->m_character_id = character_id;
		tag->m_previous_cxform = previous_cxform;
		tag->m_previous_matrix = previous_matrix;
		tag->m_clip_depth = clip_depth;
		tag->m_name_offset = 0;
		tag->m_cxform_offset = 0;
		tag->m_ratio = ratio;
		tag->m_matrix_offset = 0;
		tag->m_effect_offset = 0;
		tag->m_event_handlers_offset = 0;
		tag->m_depth = depth;

		if (has_matrix) {
			tag->m_matrix_offset = matrix_offset;
			new (tag->get_matrix()) matrix(mat);
			m->m_depth_matrices.set(static_cast<int>(depth), tag->get_matrix());
		}
		if (has_cxform) {
			tag->m_cxform_offset = cxform_offset;
			new (tag->get_cxform()) cxform(color_transform);
			m->m_depth_cxforms.set(static_cast<int>(depth), tag->get_cxform());
		}
		if (has_name) {
			tag->m_name_offset = name_offset;
			*tag->part<permanent_string*>(name_offset) = p->m_permanent_strings.get(name);
		}
		if (has_effect) {
			tag->m_effect_offset = effect_offset;
			effect* placed = new (tag->get_effect()) effect();
			placed->m_blend_mode = fx.m_blend_mode;
			placed->m_filters.resize(fx.m_filters.size());
			for (int i = 0; i < placed->m_filters.size(); i++) {
				placed->m_filters[i] = fx.m_filters[i];
			}
		}
		if (has_actions) {
			tag->m_event_handlers_offset = events_offset;
			array<swf_event*>* event_handlers = new (tag->get_event_handlers()) array<swf_event*>();

			in->read_u16();  // reserved

			// The logical 'or' of all the following handlers; not used.
			if (movie_version > 5) {
				in->read_u32();
			} else {
				in->read_u16();
			}

			// Read swf_events.
			for (;;) {
				in->align();
				const int record_position = in->get_position();  // the DH2 build keeps where each record starts

				Uint32 flags = (movie_version > 5) ? in->read_u32() : in->read_u16();
				if (flags == 0) {
					// Done with events.
					break;
				}

				Uint32 event_length = in->read_u32();
				Uint8 ch = key::INVALID;
				if (flags & (1 << 17)) {  // has keypress event
					ch = in->read_u8();
					event_length--;
				}

				// Read the actions for event(s)
				action_buffer action;
				action.read(in);
				action.m_action_offset = record_position;

				if (action.get_length() != static_cast<int>(event_length)) {
					log_error("swf_event::read(), event_length = %d, but read %d\n", event_length, action.get_length());
					break;
				}

				// 13 bits reserved, 19 bits used
				static const event_id s_code_bits[19] = {
					event_id::LOAD,
					event_id::ENTER_FRAME,
					event_id::UNLOAD,
					event_id::MOUSE_MOVE,
					event_id::MOUSE_DOWN,
					event_id::MOUSE_UP,
					event_id::KEY_DOWN,
					event_id::KEY_UP,
					event_id::DATA,
					event_id::INITIALIZE,
					event_id::PRESS,
					event_id::RELEASE,
					event_id::RELEASE_OUTSIDE,
					event_id::ROLL_OVER,
					event_id::ROLL_OUT,
					event_id::DRAG_OVER,
					event_id::DRAG_OUT,
					event_id(event_id::KEY_PRESS, key::CONTROL),
					event_id::CONSTRUCT};

				// Let's see if the event flag we received is for an event that we know of
				if (static_cast<Uint32>(1 << (sizeof(s_code_bits) / sizeof(s_code_bits[0]))) < flags) {
					log_error("swf_event::read() -- unknown event type received, flags = 0x%x\n", flags);
				}

				for (int i = 0, mask = 1; i < int(sizeof(s_code_bits) / sizeof(s_code_bits[0])); i++, mask <<= 1) {
					if (flags & mask) {
						swf_event* ev = new (swf::MEM_UNRECOVERED) swf_event;
						ev->m_event = s_code_bits[i];

						if (i == 17) {  // has keypress event ?
							ev->m_event.m_key_code = ch;
						}

						// Create a function to execute the actions.
						array<with_stack_entry> empty_with_stack;
						as_s_function* func = new as_s_function(p, &action, 0, empty_with_stack);
						func->set_length(action.get_length());

						ev->m_method.set_as_object(func);

						event_handlers->push_back(ev);
					}
				}
			}
		}

		if (has_char == true && flag_move == true) {
			// Remove whatever's at m_depth, and put m_character there.
			tag->m_place_type = REPLACE;
		} else if (has_char == false && flag_move == true) {
			// Moves the object at m_depth to the new location.
			tag->m_place_type = MOVE;
		}
		// has_char && !flag_move: put the character at m_depth (PLACE, the value the header started with). Neither flag: the
		// binary leaves PLACE as well.
	}

	return tag;
}

// 0x75e230 gameswf::place_object_2::~place_object_2()   (_ZN7gameswf14place_object_2D1Ev)
// The effect goes first (its filter array is emptied and released), then the event handlers: each one is destroyed (its as_value
// drops its reference) and freed, and the array is emptied and released. The name is owned by the string cache, the matrix and
// the colour transform need nothing.
place_object_2::~place_object_2() {
	if (m_effect_offset != 0) {
		get_effect()->~effect();
	}
	if (m_event_handlers_offset != 0) {
		array<swf_event*>* event_handlers = get_event_handlers();
		for (int i = 0, n = event_handlers->size(); i < n; i++) {
			swf_event* ev = (*event_handlers)[i];
			if (ev != nullptr) {
				ev->~swf_event();
				free_internal(ev, 0u);
			}
		}
		event_handlers->resize(0);
		event_handlers->reserve(0);
	}
}

// 0x75d8d8 gameswf::place_object_2::execute(gameswf::character*)   (_ZN7gameswf14place_object_27executeEPNS_9characterE)
// Place/move/whatever our object in the given movie. A part that the tag does not have is passed as null.
void place_object_2::execute(character* m) {
	switch (m_place_type) {
		default:
			break;

		case PLACE: {
			const ::tu_string* name = get_name();
			array<swf_event*> event_handlers;  // a copy of the tag's handlers (empty when it has none)
			if (m_event_handlers_offset != 0) {
				event_handlers = *get_event_handlers();
			}
			m->add_display_object(m_character_id, *name, event_handlers, m_depth, m_tag_type != 4, get_cxform(), get_matrix(),
								  get_effect(), get_ratio(), m_clip_depth);
			event_handlers.release_buffer();
			break;
		}

		case MOVE:
			m->move_display_object(m_depth, get_cxform(), get_matrix(), get_effect(), get_ratio(), m_clip_depth);
			break;

		case REPLACE:
			m->replace_display_object(m_character_id, get_name()->c_str(), m_depth, get_cxform(), get_matrix(), get_effect(),
									  get_ratio(), m_clip_depth);
			break;
	}
}

// 0x759de4 gameswf::place_object_2::execute_state(gameswf::character*)   (_ZN7gameswf14place_object_213execute_stateEPNS_9characterE)
// asm: the virtual execute (vtable +0x08) with the same arguments.
void place_object_2::execute_state(character* m) {
	execute(m);
}

// 0x75a648 gameswf::place_object_2::execute_state_reverse(gameswf::character*, int)
//   (_ZN7gameswf14place_object_221execute_state_reverseEPNS_9characterEi)
void place_object_2::execute_state_reverse(character* m, int frame) {
	switch (m_place_type) {
		default:
			break;

		case PLACE:
			// reverse of add is remove. PlaceObject removes the character by id (it is the only way to tell the characters at one
			// depth apart); the later tags remove whatever is at the depth.
			m->remove_display_object(m_depth, m_tag_type == 4 ? m_character_id : -1);
			break;

		case MOVE:
			// reverse of move is move, back to the transform that the previous tag at this depth left
			m->move_display_object(m_depth, m_previous_cxform != nullptr ? m_previous_cxform : &cxform::identity,
								   m_previous_matrix != nullptr ? m_previous_matrix : &matrix::identity, get_effect(), get_ratio(),
								   m_clip_depth);
			break;

		case REPLACE: {
			// reverse of replace is to re-add the previous object.
			execute_tag* last_add = m->find_previous_replace_or_add_tag(frame, m_depth, -1);
			if (last_add) {
				last_add->execute_state(m);
			} else {
				log_error("reverse REPLACE can't find previous replace or add tag(%d, %d)\n", frame, m_depth);
			}
			break;
		}
	}
}

// 0x759df8 gameswf::place_object_2::get_depth_id_of_replace_or_add_tag() const
//   (_ZNK7gameswf14place_object_234get_depth_id_of_replace_or_add_tagEv)
// "depth_id" is the 16-bit depth & id packed into one 32-bit int. A PlaceObject names its character; the later tags do not (0xffff).
std::uint32_t place_object_2::get_depth_id_of_replace_or_add_tag() const {
	if (m_place_type == PLACE || m_place_type == REPLACE) {
		return (static_cast<std::uint32_t>(m_depth) << 16) | (m_tag_type == 4 ? m_character_id : 0xFFFFu);
	}
	return static_cast<std::uint32_t>(-1);
}

}  // namespace gameswf
