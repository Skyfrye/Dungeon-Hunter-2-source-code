// Batch v1-vendor-gameswf-gameswf_button-7c6b4c-0: gameswf::button_character_instance and the button definition (DH2).
//
// The button instance (0xc0 bytes) is declared in gameswf_button.h (r1714 keeps it local to gameswf_button.cpp):
//   +0xa0 m_def (smart pointer), +0xa4 m_record_character (array<smart_ptr<character>>), +0xb4 m_last_mouse_flags,
//   +0xb8 m_mouse_flags, +0xbc m_mouse_state. There is no enabled flag.
// The definition is 0x48 bytes: m_menu +0x20, m_button_records +0x24, m_button_actions +0x34, m_sound +0x44.
// A button record is 0x64 bytes (the r1714 record, the effect holding the filter list at +0x4c, the blend mode at +0x60).
//
// Rows whose home is another batch file: pack19-4d4603-0 has hit_test, ~button_character_instance, get_root_movie,
// get_mouse_state, the button_record copy constructor and the button_sound_def destructor; pack20-97b00f-0 has the
// button_character_definition constructors.
//
// The button sounds go through the DH2 sound_handler declaration (gameswf.h): play_sound takes the sound handle and the
// loop count (slot +0x0c) and stop_sound the handle (slot +0x14).

#include <cfloat>
#include <new>

#include "gameswf/gameswf_button.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_button_dh2.hpp"

namespace gameswf
{

// The event ids the helpers in gameswf_button_dh2.hpp assume.
static_assert(event_id::PRESS == 1 && event_id::RELEASE == 2 && event_id::RELEASE_OUTSIDE == 3 && event_id::ROLL_OVER == 4
	&& event_id::ROLL_OUT == 5 && event_id::DRAG_OVER == 6 && event_id::DRAG_OUT == 7 && event_id::KEY_PRESS == 8,
	"event_id::id_code values");

// DH2: gameswf::read_filter_list(gameswf::stream*, gameswf::effect&) at 0x758ca8. The DH2 form takes the effect that receives the
// filters; r1714's (gameswf_filters.h) has no effect argument. Defined by the filter batch.
void read_filter_list(stream* in, effect& fx);

// 0x7c6b4c _ZN7gameswf25button_character_instance18has_keypress_eventEv
// True when one of the actions has a key press condition (the high seven bits of the condition word).
bool button_character_instance::has_keypress_event()
{
	for (int i = 0; i < m_def->m_button_actions.size(); i++)
	{
		if (m_def->m_button_actions[i].m_conditions & 0xFE00)	// check up on CondKeyPress: UB[7]
		{
			return true;
		}
	}
	return false;
}

// 0x7c6bcc _ZN7gameswf25button_character_instance9get_boundEPNS_4rectE
// The union of the bounds of the characters the current mouse state shows, in this button's matrix. The bound is
// set to the empty rectangle only when the button has records.
void button_character_instance::get_bound(rect* bound)
{
	int n = m_def->m_button_records.size();
	if (n != 0)
	{
		bound->m_x_min = FLT_MAX;
		bound->m_x_max = -FLT_MAX;
		bound->m_y_min = FLT_MAX;
		bound->m_y_max = -FLT_MAX;

		matrix m = get_matrix();
		for (int i = 0; i < n; i++)
		{
			button_record& rec = m_def->m_button_records[i];
			if (m_record_character[i].get_ptr() == nullptr)
			{
				continue;
			}
			if ((m_mouse_state == UP && rec.m_up)
				|| (m_mouse_state == DOWN && rec.m_down)
				|| (m_mouse_state == OVER && rec.m_over))
			{
				rect ch_bound;
				m_record_character[i]->get_bound(&ch_bound);	// vtable +0x12c

				m.transform(&ch_bound);

				bound->expand_to_rect(ch_bound);
			}
		}
	}
}

// 0x7c6cec _ZN7gameswf25button_character_instance7displayEv
// Draws the characters of the records the current mouse state shows, then runs the display callback.
void button_character_instance::display()
{
	for (int i = 0; i < m_def->m_button_records.size(); i++)
	{
		button_record& rec = m_def->m_button_records[i];
		if (m_record_character[i].get_ptr() == nullptr)
		{
			continue;
		}
		if ((m_mouse_state == UP && rec.m_up)
			|| (m_mouse_state == DOWN && rec.m_down)
			|| (m_mouse_state == OVER && rec.m_over))
		{
			m_record_character[i]->display();	// vtable +0x120
		}
	}

	if (m_custom != nullptr && m_custom->m_display_callback != nullptr)
	{
		do_display_callback();
	}
}

// 0x7c6dd0 _ZN7gameswf25button_character_instance18execute_frame_tagsEib
// Runs the frame tags of every record character (the button is kept alive meanwhile).
void button_character_instance::execute_frame_tags(int frame, bool state_only)
{
	// Keep this alive during execution.
	smart_ptr<as_object> this_ptr(this);
	for (int i = 0; i < m_def->m_button_records.size(); i++)
	{
		if (m_record_character[i].get_ptr() != nullptr)
		{
			m_record_character[i]->execute_frame_tags(frame, state_only);	// vtable +0xc8
		}
	}
}

// 0x7c6e50 _ZN7gameswf25button_character_instance24get_topmost_mouse_entityEff
// This button when the point (in the parent's coordinates) is inside the hit shape of one of its records, else null. An
// invisible button is not hit; the binary does not look at an enabled flag.
character* button_character_instance::get_topmost_mouse_entity(float x, float y)
{
	if (get_visible())
	{
		point p;
		get_matrix().transform_by_inverse(&p, point(x, y));

		for (int i = 0; i < m_def->m_button_records.size(); i++)
		{
			button_record& rec = m_def->m_button_records[i];
			if (rec.m_character_id < 0 || rec.m_hit_test == false)
			{
				continue;
			}

			// Find the mouse position in button-record space.
			point sub_p;
			rec.m_button_matrix.transform_by_inverse(&sub_p, p);

			if (rec.m_character_def->point_test_local(sub_p.m_x, sub_p.m_y))	// vtable +0x10
			{
				// The mouse is inside the shape.
				return this;
			}
		}
	}
	return nullptr;
}

// 0x7c6f40 _ZN7gameswf25button_character_instance7advanceEf
// Advances the characters of the records that the current mouse state shows; the others are marked alive for the garbage
// collector instead (this_alive, vtable +0x44; r1714 calls alive()). The drag, if any, is stepped first.
void button_character_instance::advance(float delta_time)
{
	do_mouse_drag();
	matrix mat = *get_world_matrix();

	for (int i = 0; i < m_def->m_button_records.size(); i++)
	{
		button_record& rec = m_def->m_button_records[i];
		if (m_record_character[i].get_ptr() == nullptr)
		{
			continue;
		}

		// Matrix (computed, not used)
		matrix sub_matrix = mat;
		sub_matrix.concatenate(rec.m_button_matrix);

		// Advance characters that are activated by the new mouse state
		if (((m_mouse_state == UP) && (rec.m_up)) ||
			((m_mouse_state == DOWN) && (rec.m_down)) ||
			((m_mouse_state == OVER) && (rec.m_over)))
		{
			m_record_character[i]->advance(delta_time);	// vtable +0x5c
		}
		else
		{
			m_record_character[i]->this_alive();	// vtable +0x44
		}
	}
}

// 0x7c84d8 _ZN7gameswf25button_character_instanceC1EPNS_6playerEPNS_27button_character_definitionEPNS_9characterEi
// One character per record, made from the record's definition (resolved through the movie on first use) with the record's
// matrix and colour transform. The binary calls set_matrix and set_cxform on a null character when a definition makes none
// (it dereferences null there); that case only stores null here.
button_character_instance::button_character_instance(player* p, button_character_definition* def, character* parent, int id) :
	character(p, parent, id, AS_CHARACTER),
	m_def(def),
	m_last_mouse_flags(IDLE),
	m_mouse_flags(IDLE),
	m_mouse_state(UP)
{
	int r_num = m_def->m_button_records.size();
	m_record_character.resize(r_num);

	movie_definition_sub* movie_def = cast_to<movie_definition_sub>(get_movie_definition());

	for (int r = 0; r < r_num; r++)
	{
		button_record* bdef = &m_def->m_button_records[r];

		if (bdef->m_character_def == nullptr)
		{
			// Resolve the character id.
			bdef->m_character_def = movie_def->get_character_def(bdef->m_character_id);
		}

		smart_ptr<character> ch(bdef->m_character_def->create_character_instance(this, id));	// vtable +0x18
		m_record_character[r] = ch;
		if (ch.get_ptr() != nullptr)
		{
			ch->set_matrix(bdef->m_button_matrix);
			ch->set_cxform(bdef->m_button_cxform);
		}
	}
}

// 0x7c7b40 _ZN7gameswf25button_character_instance8on_eventERKNS_8event_idE
// Mouse and key events. A key press runs the actions whose key condition matches the event (a table of the special keys, the
// ASCII range above 31). The other events set the mouse state, play the button transition sound and run the actions whose
// condition bit the event stands for. The button and its parent are kept alive. Returns whether an action ran.
bool button_character_instance::on_event(const event_id& id)
{
	// Keep this & parent alive during execution.
	smart_ptr<as_object> this_ptr(this);
	smart_ptr<character> parent(get_parent());

	// 'this' or 'parent' object is dead
	if (parent.get_ptr() == nullptr || m_def.get_ptr() == nullptr)
	{
		return false;
	}

	const smart_ptr<button_character_definition> def(m_def);

	bool called = false;
	if (id.m_id == event_id::KEY_PRESS)
	{
		static const event_id s_key[32] =
		{
			event_id(),
			event_id(event_id::KEY_PRESS, key::LEFT),
			event_id(event_id::KEY_PRESS, key::RIGHT),
			event_id(event_id::KEY_PRESS, key::HOME),
			event_id(event_id::KEY_PRESS, key::END),
			event_id(event_id::KEY_PRESS, key::INSERT),
			event_id(event_id::KEY_PRESS, key::DELETEKEY),
			event_id(),
			event_id(event_id::KEY_PRESS, key::BACKSPACE),	//8
			event_id(),
			event_id(),
			event_id(),
			event_id(),
			event_id(event_id::KEY_PRESS, key::ENTER),	//13
			event_id(event_id::KEY_PRESS, key::UP),
			event_id(event_id::KEY_PRESS, key::DOWN),
			event_id(event_id::KEY_PRESS, key::PGUP),
			event_id(event_id::KEY_PRESS, key::PGDN),
			event_id(event_id::KEY_PRESS, key::TAB),
			// 32-126 follows ASCII
		};

		// Execute appropriate actions
		for (int i = 0; i < def->m_button_actions.size(); i++)
		{
			int keycode = dh2::button_key_code_of_condition(def->m_button_actions[i].m_conditions);
			event_id key_event = keycode < 32 ? s_key[keycode] : event_id(event_id::KEY_PRESS, (key::code) keycode);
			if (key_event == id)
			{
				parent->do_actions(def->m_button_actions[i].m_actions);	// vtable +0xd0
				called = true;
			}
		}
		return called;
	}

	// Set our mouse state (so we know how to render).
	int new_state = dh2::button_state_for_event(id.m_id);
	if (new_state < 0)
	{
		return false;	// unhandled event, like setfocus, ...
	}
	m_mouse_state = static_cast<e_mouse_state>(new_state);

	// Button transition sounds.
	if (def->m_sound != nullptr)
	{
		sound_handler* s = get_sound_handler();
		if (s != nullptr)
		{
			int bi = dh2::button_sound_index_for_event(id.m_id);	// button sound array index [0..3]
			if (bi >= 0)
			{
				button_character_definition::button_sound_info& bs = def->m_sound->m_button_sounds[bi];
				// character zero is considered as null character
				if (bs.m_sound_id > 0)
				{
					if (bs.m_sound_style.m_stop_playback)
					{
						s->stop_sound(bs.m_sam->m_sound_handler_id);
					}
					else
					{
						s->play_sound(bs.m_sam->m_sound_handler_id, bs.m_sound_style.m_loop_count);
					}
				}
			}
		}
	}

	int c = dh2::button_condition_for_event(id.m_id);

	// Execute appropriate actions
	for (int i = 0; i < def->m_button_actions.size(); i++)
	{
		if (def->m_button_actions[i].m_conditions & c)
		{
			parent->do_actions(def->m_button_actions[i].m_actions);	// vtable +0xd0
			called = true;
		}
	}
	return called;
}

// 0x7c7614 _ZN7gameswf13button_actionD1Ev
// 0x7c7770 _ZN7gameswf13button_actionD2Ev
// D1 and D2 are one body: every action buffer is released (its counted byte code, then the object) and the array emptied.
button_action::~button_action()
{
	for (int i = 0, n = m_actions.size(); i < n; i++)
	{
		action_buffer* a = m_actions[i];
		if (a)
		{
			if (a->m_buffer)
			{
				a->m_buffer->drop_ref();
			}
			gameswf::free_internal(a, 0);
		}
	}
	m_actions.clear();
}

// 0x7c74c0 _ZN7gameswf13button_action4readEPNS_6streamEi
// Reads the condition flags (an old button tag, 7, has the fixed OVER_DOWN_TO_OVER_UP condition) and the action buffer.
void button_action::read(stream* in, int tag_type)
{
	if (tag_type == 7)
	{
		m_conditions = OVER_DOWN_TO_OVER_UP;
	}
	else
	{
		m_conditions = in->read_u16();
	}

	action_buffer* a = new (swf::MEM_UNRECOVERED) action_buffer();
	a->read(in);
	m_actions.push_back(a);
}

// 0x7c753c _ZN7gameswf13button_record4readEPNS_6streamEiPNS_20movie_definition_subE
// Return true if we read a record; false if this is a null record.
bool button_record::read(stream* in, int tag_type, movie_definition_sub* m)
{
	int flags = in->read_u8();
	if (flags == 0)
	{
		return false;
	}
	m_has_blend_mode = (flags & 0x20) != 0;
	m_has_filter_list = (flags & 0x10) != 0;
	m_hit_test = (flags & 8) != 0;
	m_down = (flags & 4) != 0;
	m_over = (flags & 2) != 0;
	m_up = (flags & 1) != 0;

	m_character_id = in->read_u16();
	m_character_def = nullptr;
	m_button_layer = in->read_u16();
	m_button_matrix.read(in);

	if (tag_type == 34)
	{
		m_button_cxform.read_rgba(in);

		if (m_has_filter_list)
		{
			read_filter_list(in, m_effect);
		}

		if (m_has_blend_mode)
		{
			m_blend_mode = in->read_u8();
		}
	}

	return true;
}

// 0x7c732c _ZN7gameswf27button_character_definition10sound_info4readEPNS_6streamE
void button_character_definition::sound_info::read(stream* in)
{
	m_in_point = m_out_point = m_loop_count = 0;
	in->read_uint(2);	// skip reserved bits.
	m_stop_playback = in->read_uint(1) ? true : false;
	m_no_multiple = in->read_uint(1) ? true : false;
	m_has_envelope = in->read_uint(1) ? true : false;
	m_has_loops = in->read_uint(1) ? true : false;
	m_has_out_point = in->read_uint(1) ? true : false;
	m_has_in_point = in->read_uint(1) ? true : false;
	if (m_has_in_point) m_in_point = in->read_u32();
	if (m_has_out_point) m_out_point = in->read_u32();
	if (m_has_loops) m_loop_count = in->read_u16();
	if (m_has_envelope)
	{
		int nPoints = in->read_u8();
		m_envelopes.resize(nPoints);
		for (int i = 0; i < nPoints; i++)
		{
			m_envelopes[i].m_mark44 = in->read_u32();
			m_envelopes[i].m_level0 = in->read_u16();
			m_envelopes[i].m_level1 = in->read_u16();
		}
	}
	else
	{
		m_envelopes.resize(0);
	}
}

// 0x7c8090 _ZN7gameswf27button_character_definition4readEPNS_6streamEiPNS_20movie_definition_subE
// Initialize from the given stream: tag 7 (the old button: records, then one action), tag 17 (the button sounds: four sound
// ids with their styles), tag 34 (button2: the menu flag, the records, then the conditional actions).
void button_character_definition::read(stream* in, int tag_type, movie_definition_sub* m)
{
	if (tag_type == 7)
	{
		// Old button tag. Read button character records.
		for (;;)
		{
			button_record r;
			if (r.read(in, tag_type, m) == false)
			{
				// Null record; marks the end of button records.
				break;
			}
			m_button_records.push_back(r);
		}

		// Read actions.
		m_button_actions.resize(m_button_actions.size() + 1);
		m_button_actions.back().read(in, tag_type);
	}
	else if (tag_type == 17)
	{
		m_sound = new (swf::MEM_UNRECOVERED) button_sound_def();
		for (int i = 0; i < 4; i++)
		{
			button_sound_info& bs = m_sound->m_button_sounds[i];
			bs.m_sound_id = in->read_u16();
			if (bs.m_sound_id > 0)
			{
				bs.m_sam = m->get_sound_sample(bs.m_sound_id);	// vtable +0xa0
				bs.m_sound_style.read(in);
			}
		}
	}
	else if (tag_type == 34)
	{
		// Read the menu flag.
		m_menu = in->read_u8() != 0;

		int button_2_action_offset = in->read_u16();
		int next_action_pos = in->get_position() + button_2_action_offset - 2;

		// Read button records.
		for (;;)
		{
			button_record r;
			if (r.read(in, tag_type, m) == false)
			{
				// Null record; marks the end of button records.
				break;
			}
			m_button_records.push_back(r);
		}

		if (button_2_action_offset > 0)
		{
			in->set_position(next_action_pos);

			// Read Button2ActionConditions
			for (;;)
			{
				int next_action_offset = in->read_u16();
				next_action_pos = in->get_position() + next_action_offset - 2;

				m_button_actions.resize(m_button_actions.size() + 1);
				m_button_actions.back().read(in, tag_type);

				if (next_action_offset == 0
					|| in->get_position() >= in->get_tag_end_position())
				{
					// done.
					break;
				}

				// seek to next action.
				in->set_position(next_action_pos);
			}
		}
	}
}

// 0x7c78d4 _ZN7gameswf27button_character_definitionD1Ev
// 0x7c797c _ZN7gameswf27button_character_definitionD2Ev
// D1 and D2 are one body. The sound table (if tag 17 made one) is destroyed and freed; the action and record arrays are
// released by the members.
button_character_definition::~button_character_definition()
{
	if (m_sound)
	{
		m_sound->~button_sound_def();
		gameswf::free_internal(m_sound, 0);
	}
}

// 0x7c86b4 _ZN7gameswf27button_character_definition25create_character_instanceEPNS_9characterEi
// A mutable instance of this definition (operator new(0xC0) in the binary).
character* button_character_definition::create_character_instance(character* parent, int id)
{
	return new (swf::MEM_UNRECOVERED) button_character_instance(get_player(), this, parent, id);
}

}  // namespace gameswf
