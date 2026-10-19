#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Batch v1-vendor-gameswf-gameswf_sprite_instance-d5206d-1: gameswf::sprite_instance, part 2 of 2 (DH2).
//
// The frame machinery of the class: advance, goto_frame, execute_frame_tags (and the reverse walk), do_actions, display, the
// hit tests, clone and attach. The layout is settled in gameswf_sprite.h (offsets in the comments there); part 1 is
// v1-vendor-gameswf-gameswf_sprite_instance-d5206d-0.cpp. The frame-walk arithmetic of goto_frame is in
// vendor-gameswf/include/vendor-gameswf/gameswf_sprite_goto.hpp, which the batch test checks.
//
// The binary builds a local copy of an action list in a 32-entry stack buffer (a borrowed array, heap-backed from 32
// entries on); the copies below are ordinary arrays with the same entries in the same order. The binary empties lists with
// size = 0 and keeps the buffer; array::clear() releases it. The contents are identical.

#include <cfloat>
#include <cstring>

#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_text.h"
#include "vendor-gameswf/gameswf_sprite_goto.hpp"

namespace gameswf
{

// Upstream (gameswf_impl.cpp:96). Same prototype as gameswf_sprite.cpp:28.
void execute_actions(as_environment* env, const array<action_buffer*>& action_list);

// The six-argument gameswf::call_method(const as_value&, as_environment*, const as_value&, int, int, const char*) is
// declared in gameswf_action.h (DH2, binary 0x7ba904). do_actions() calls it with the frame script as the method, the
// sprite as this, nargs 0, first argument 0 and the debug name "???". Its body is not in the tree.

// 0x781a3c _ZN7gameswf15sprite_instance10goto_frameEi
// Moves to target_frame_number (0-based). A request for a bad frame (past the last frame, negative, or the current one)
// only stops the clip and returns 0. Otherwise the pending actions move to the goto list, the display list is walked from the
// current frame (reverse tags going back, state-only tags going forward), the target frame's tags run, the clip stops, the
// target frame's actions are appended to the goto list (advance runs them) and 1 is returned. The two walks call
// execute_frame_tags through the vtable (+0xc8), as the binary does.
int sprite_instance::goto_frame(int target_frame_number)
{
	if (dh2::sprite_goto_rejected(target_frame_number, m_current_frame, m_def->get_frame_count()))
	{
		m_play_state = STOP;
		return 0;
	}

	// The pending list (+0xbc) becomes the goto list (+0xcc). The binary copies it over the goto list, then
	// empties the pending list before walking the frames.
	m_goto_frame_action_list = m_action_list;
	m_action_list.clear();

	const int current = m_current_frame;
	if (target_frame_number < current)
	{
		const dh2::frame_run run = dh2::sprite_goto_reverse_run(current, target_frame_number);
		for (int k = 0; k < run.count; ++k)
		{
			execute_frame_tags_reverse(run.first - k);
		}
	}
	else
	{
		const dh2::frame_run run = dh2::sprite_goto_forward_run(current, target_frame_number);
		for (int k = 0; k < run.count; ++k)
		{
			execute_frame_tags(run.first + k, true);
		}
	}

	// Actions queued while walking are dropped here (the binary zeroes +0xc0 again).
	m_action_list.clear();
	execute_frame_tags(target_frame_number, false);
	m_current_frame = static_cast<Sint16>(target_frame_number);	// +0xe4
	m_play_state = STOP;	// +0xe6

	// The target frame's actions are appended to the goto list.
	if (m_action_list.size() > 0)
	{
		m_goto_frame_action_list.append(m_action_list);
	}
	m_action_list.clear();
	notify_need_advance();
	return 1;
}

// 0x781eac _ZN7gameswf15sprite_instance10do_actionsEv
// Runs the pending actions (+0xbc), then the frame script (+0xfc). The binary copies the pending list and empties it before the
// run, so actions queued during the run wait for the next pass. The sprite is kept alive across both.
void sprite_instance::do_actions()
{
	if (m_action_list.size() > 0)
	{
		m_need_advance = true;	// +0x9d
		add_ref();
		{
			array<action_buffer*> list = m_action_list;
			m_action_list.clear();
			execute_actions(get_environment(), list);
		}
		drop_ref();
	}

	if (m_frame_script.get_ptr() != nullptr)
	{
		add_ref();
		{
			as_value method(m_frame_script.get_ptr());	// type-5 value holding the script (the ctor adds a ref)
			as_environment* env = get_environment();
			as_value this_value(this);	// type-5 value holding this (the ctor adds a ref)
			gameswf::call_method(method, env, this_value, 0, 0, "???");	// the result is discarded
		}
		m_frame_script = static_cast<as_function*>(nullptr);	// smart_ptr::set_ref(this + 0xfc, 0)
		drop_ref();
	}
}

// 0x78215c _ZN7gameswf15sprite_instance18execute_frame_tagsEib
// Runs the tags of a frame (0-based). The sprite is kept alive. The frame's init actions run once: the tags of the definition
// at that frame, after which any action buffer they queued moves from the pending list to the init-action block (do_init_actions
// runs it). Then the frame's tags run, in state-only mode when state_only is set. The stream sound starts at the frame the
// definition says (only when state_only is clear). Last the frame script is looked up.
// The stream sound calls go through the DH2 sound_handler declaration (gameswf.h): slot +0x14 (stop_sound with the handle) and
// slot +0x0c (play_sound with the handle and loop count 0).
void sprite_instance::execute_frame_tags(int frame, bool state_only)
{
	// Keep this (particularly the environment) alive during execution.
	smart_ptr<as_object> this_ptr(this);

	m_def->wait_frame(frame);

	// Execute this frame's init actions, if necessary.
	if (m_init_actions != nullptr && m_init_actions->m_executed[frame] == false)
	{
		const array<execute_tag*>* init_actions = m_def->get_init_actions(frame);
		if (init_actions && init_actions->size() > 0)
		{
			// Need to execute these actions.
			for (int i = 0; i < init_actions->size(); i++)
			{
				(*init_actions)[i]->execute(this);
			}

			// Mark this frame done, so we never execute these init actions again.
			m_init_actions->m_executed[frame] = true;
		}

		// The actions the init tags queued wait in the init-action block.
		if (m_action_list.size() > 0)
		{
			m_init_actions->m_actions.append(m_action_list);
		}
		m_action_list.clear();
	}

	const array<execute_tag*>& playlist = m_def->get_playlist(frame);
	for (int i = 0; i < playlist.size(); i++)
	{
		execute_tag* e = playlist[i];

		if (state_only)
		{
			e->execute_state(this);
		}
		else
		{
			e->execute(this);
		}
	}

	// start stream sound
	if (state_only == false)
	{
		sound_handler* sound = get_sound_handler();
		if (sound)
		{
			if (m_def->m_ss_start == frame && m_def->m_ss_id >= 0)
			{
				sound->stop_sound(m_def->m_ss_id);
				sound->play_sound(m_def->m_ss_id, 0);
			}
		}
	}

	// flash9
	set_frame_script(frame);
}

// 0x77f390 _ZN7gameswf15sprite_instance26execute_frame_tags_reverseEi
// Executes the tags of the frame IN REVERSE, last first: an "add" tag does a "remove". The sprite is kept alive.
void sprite_instance::execute_frame_tags_reverse(int frame)
{
	smart_ptr<as_object> this_ptr(this);

	const array<execute_tag*>& playlist = m_def->get_playlist(frame);
	for (int i = playlist.size() - 1; i >= 0; i--)
	{
		execute_tag* e = playlist[i];
		e->execute_state_reverse(this, frame);
	}
}

// 0x78240c _ZN7gameswf15sprite_instance7advanceEf
// Per frame update. A clip that has not loaded yet is constructed and sent LOAD first. An invisible clip that has loaded does
// nothing. Otherwise: the actions of a goto run (up to 11 passes while the actions queue more goto actions), a playing clip
// steps to its next frame (wrapping to 0) once it has loaded, running the frame's tags (frame 0 of a multi-frame clip first
// clears the characters the frame does not place), ENTER_FRAME is sent when the clip has an onEnterFrame handler, the pending
// actions run, the children advance, and the need-advance flag collects whether anything still needs advancing.
void sprite_instance::advance(float delta_time)
{
	if (!m_on_event_load_called)
	{
		construct();
		on_event(event_id(event_id::LOAD));
	}

	if (get_visible() || !m_on_event_load_called)
	{
		m_need_advance = m_goto_frame_action_list.size() > 0;
		do_mouse_drag();

		// execute actions from gotoAndPlay(n) or gotoAndStop(n) frame
		if (m_goto_frame_action_list.size() > 0)
		{
			for (int pass = 0; ; pass++)
			{
				array<action_buffer*> list = m_goto_frame_action_list;
				m_goto_frame_action_list.clear();
				execute_actions(get_environment(), list);
				if (pass == dh2::kSpriteGotoActionPassLimit)
				{
					log_msg("stop recursive loop gotoAndPlay/gotoAndStop (more than 10)");
					break;
				}
				if (m_goto_frame_action_list.size() <= 0)
				{
					break;
				}
			}
		}

		// Update current and next frames.
		if (m_play_state == PLAY)
		{
			bool need_advance = m_need_advance;
			m_need_advance = m_def->get_frame_count() > 1 ? true : need_advance;
			int prev_frame = static_cast<Uint16>(m_current_frame);
			if (m_on_event_load_called)
			{
				const dh2::advance_step step = dh2::sprite_advance_step(prev_frame, m_def->get_frame_count());
				m_current_frame = static_cast<Sint16>(step.next_frame);

				if (step.changed)
				{
					// Execute the current frame's tags.
					// Macromedia Flash does not call remove display object tag for the 1st frame, therefore we do it.
					if (step.clear_before_tags)
					{
						// affected depths
						const array<execute_tag*>& playlist = m_def->get_playlist(0);
						array<int> affected_depths;
						for (int i = 0; i < playlist.size(); i++)
						{
							int depth = (playlist[i]->get_depth_id_of_replace_or_add_tag()) >> 16;
							affected_depths.push_back(depth);
						}

						if (affected_depths.size() > 0)
						{
							m_display_list.clear_unaffected(affected_depths);
						}
						else
						{
							m_display_list.clear();
						}
					}
					execute_frame_tags(m_current_frame);
					m_need_advance = true;
				}
			}
		}

		if (m_has_on_enter_frame)
		{
			if (m_on_event_load_called)
			{
				on_event(event_id(event_id::ENTER_FRAME));
			}
			m_need_advance = true;
		}

		do_actions();

		// Advance everything in the display list.
		if (m_display_list.advance(delta_time))
		{
			m_need_advance = true;
		}

		m_on_event_load_called = true;
	}
}

// 0x7801e4 _ZN7gameswf15sprite_instance7displayEv
// Draws the clip: a clip that has not loaded is advanced once first. The display list is drawn inside the clip's blend mode
// when it has one and no blend mode is active (the player keeps the stack), then the character's display callback runs. A
// clip drawn through a scene node is not drawn here.
void sprite_instance::display()
{
	if (get_visible() == false)
	{
		return;
	}

	if (m_custom != nullptr && m_custom->m_scene_node != nullptr)
	{
		return;
	}

	// force advance just loaded (by loadMovie(...)) movie
	if (!m_on_event_load_called)
	{
		advance(1.0f);
	}

	if (m_display_list.size() != 0)
	{
		blend_mode::id mode = static_cast<blend_mode::id>(m_effect->m_blend_mode);
		player* p = m_player.get_ptr();
		if (!mode || p->m_blend_mode_stack.size() != 0)
		{
			m_display_list.display();
		}
		else
		{
			p->m_blend_mode_stack.push_back(mode);
			if (s_render_handler)
			{
				s_render_handler->set_blend_mode(mode);
			}
			m_display_list.display();
			p = m_player.get_ptr();
			p->m_blend_mode_stack.resize(p->m_blend_mode_stack.size() - 1);
			if (s_render_handler)
			{
				s_render_handler->set_blend_mode(static_cast<blend_mode::id>(0));
			}
		}
	}

	if (m_custom != nullptr && m_custom->m_display_callback != nullptr)
	{
		do_display_callback();
	}
}

// 0x7803c8 _ZN7gameswf15sprite_instance10get_canvasEv
// The drawing canvas, created on first use as a child at the top depth.
canvas* sprite_instance::get_canvas()
{
	if (m_canvas.get_ptr() == nullptr)
	{
		canvas* canvas_def = new (swf::MEM_UNRECOVERED) canvas(m_player.get_ptr());
		m_canvas = canvas_def->create_character_instance(this, -1);

		m_display_list.add_display_object(m_canvas.get_ptr(), get_highest_depth(), true, &cxform::identity,
			&matrix::identity, &effect::identity, 0.0f, 0);
	}
	return cast_to<canvas>(m_canvas->get_character_def());
}

// 0x782a04 _ZN7gameswf15sprite_instance20clone_display_objectERKNS_9tu_stringEi
// Duplicates this clip as a child of its parent at the depth with the new name. The copy takes this clip's transforms and
// members (copy_to); a clip with a canvas gets a copy of it.
character* sprite_instance::clone_display_object(const tu_string& newname, int depth)
{
	character* parent_char = get_parent();
	sprite_instance* parent = parent_char ? cast_to<sprite_instance>(parent_char) : nullptr;
	if (parent == nullptr)
	{
		log_error("can't clone _root\n");
		return nullptr;
	}

	sprite_instance* ch;
	if (get_id() == -1)
	{
		// clone a previous external loaded movie
		ch = m_player.get_ptr()->create_sprite_instance(cast_to<movie_def_impl>(m_def.get_ptr()), m_root, parent, -1);
		ch->set_parent(parent);
		ch->set_root(m_root);
		ch->set_name(newname);
	}
	else
	{
		ch = m_player.get_ptr()->create_sprite_instance(m_def.get_ptr(), m_root, parent, 0);
		ch->set_parent(parent);
		ch->set_root(m_root);
		ch->set_name(newname);

		if (m_canvas.get_ptr() != nullptr)
		{
			canvas* dst = ch->get_canvas();
			canvas* src = get_canvas();
			static_cast<shape_character_def&>(*dst) = *src;
			dst->m_current_x = src->m_current_x;
			dst->m_current_y = src->m_current_y;
			dst->m_current_fill = src->m_current_fill;
			dst->m_current_line = src->m_current_line;
			dst->m_current_path = src->m_current_path;
		}
	}

	parent->m_display_list.add_display_object(ch, depth, true, &cxform::identity, &matrix::identity, &effect::identity,
		get_ratio(), get_clip_depth());
	ch->set_cxform(get_cxform());
	ch->set_matrix(get_matrix());
	ch->set_effect(get_effect());

	// copy this's members to the new character
	copy_to(ch);

	return ch;
}

// 0x781d24 _ZN7gameswf15sprite_instance10replace_meEPNS_16movie_definitionE
// Replaces this clip in its parent with an instance of the movie, or, for the root, makes the movie's own instance the root.
character* sprite_instance::replace_me(movie_definition* md)
{
	character* parent = get_parent();

	// is 'this' the root?
	if (parent != nullptr)
	{
		sprite_instance* sprite = m_player.get_ptr()->create_sprite_instance(cast_to<movie_def_impl>(md), m_root, parent, -1);

		sprite->set_parent(parent);
		sprite->set_root(m_root);

		parent->replace_display_object(sprite, get_name().c_str(), get_depth(), nullptr, nullptr, nullptr, get_ratio(),
			get_clip_depth());

		return sprite;
	}

	root* new_inst = md->create_instance();
	character* ch = new_inst->get_root_movie();
	m_player.get_ptr()->set_root(new_inst);

	return ch;
}

// 0x782c94 _ZN7gameswf15sprite_instance8hit_testEPNS_9characterE
// Overlap of the world bounds of the two characters (a plain rectangle test; r1714 draws both into the stencil buffer).
bool sprite_instance::hit_test(character* ch)
{
	rect this_bound;
	get_bound(&this_bound);
	if (character* parent = get_parent())
	{
		parent->get_world_matrix()->transform(&this_bound);
	}

	rect ch_bound;
	ch->get_bound(&ch_bound);
	if (character* ch_parent = ch->get_parent())
	{
		ch_parent->get_world_matrix()->transform(&ch_bound);
	}

	return this_bound.m_x_max >= ch_bound.m_x_min && this_bound.m_x_min <= ch_bound.m_x_max
		&& this_bound.m_y_max >= ch_bound.m_y_min && this_bound.m_y_min <= ch_bound.m_y_max;
}

// 0x782f6c _ZN7gameswf15sprite_instance8hit_testEffb
// With the shape flag: the point is tested against the visible children (each child's two-float hit test), in the clip's
// local coordinates. Without it: against this clip's bound in world coordinates.
bool sprite_instance::hit_test(float x, float y, bool test_shape)
{
	if (test_shape)
	{
		if (get_visible())
		{
			point p;
			get_matrix().transform_by_inverse(&p, point(x, y));

			for (int i = 0, n = m_display_list.size(); i < n; )
			{
				character* ch = m_display_list.get_character(i);
				i++;
				if (ch && ch->get_visible())
				{
					if (ch->hit_test(p.m_x, p.m_y))	// vtable +0x6c
					{
						return true;
					}
					n = m_display_list.size();
				}
			}
		}
		return false;
	}

	rect this_bound;
	get_bound(&this_bound);
	if (character* parent = get_parent())
	{
		parent->get_world_matrix()->transform(&this_bound);
	}

	if (x >= this_bound.m_x_min && x <= this_bound.m_x_max && y >= this_bound.m_y_min)
	{
		return y <= this_bound.m_y_max;
	}
	return false;
}

// 0x7830ec _ZN7gameswf15sprite_instance8hit_testEff
// Forwards to hit_test(float, float, bool) at 0x782f6c with the shape flag set.
bool sprite_instance::hit_test(float x, float y)
{
	return hit_test(x, y, true);
}

// 0x782e60 _ZN7gameswf15sprite_instance12attach_movieERKNS_9tu_stringES1_i
// Attaches the exported sprite definition as a child (with this clip's transforms) and advances it once.
sprite_instance* sprite_instance::attach_movie(const tu_string& id, const tu_string name, int depth)
{
	// check the import.
	character_def* res = find_exported_resource(id);
	if (res == nullptr)
	{
		return nullptr;
	}

	sprite_definition* sdef = cast_to<sprite_definition>(res);
	if (sdef == nullptr)
	{
		return nullptr;
	}

	sprite_instance* sprite = m_player.get_ptr()->create_sprite_instance(sdef, m_root, this, -1);
	sprite->set_name(name);

	m_display_list.add_display_object(sprite, depth, true, m_local_cxform, m_local_matrix, m_effect, 0.0f, 0);

	sprite->advance(1.0f);	// force advance
	return sprite;
}

// local_to_global and global_to_local have no out-of-line symbol in the binary (their bodies are inlined into the sprite
// natives, gameswf_as_sprite.cpp). The r1714 bodies are kept on the DH2 world matrix (a pointer) for those natives.
void sprite_instance::local_to_global(as_object* obj)
{
	as_value x;
	obj->get_member("x", &x);
	as_value y;
	obj->get_member("y", &y);
	if (x.is_number() == false || y.is_number() == false)
	{
		return;
	}

	point pt(x.to_float(), y.to_float());
	pt.pixels_to_twips();
	point result;
	get_world_matrix()->transform(&result, pt);
	result.twips_to_pixels();

	obj->set_member("x", result.m_x);
	obj->set_member("y", result.m_y);
}

void sprite_instance::global_to_local(as_object* obj)
{
	as_value x;
	obj->get_member("x", &x);
	as_value y;
	obj->get_member("y", &y);
	if (x.is_number() == false || y.is_number() == false)
	{
		return;
	}

	point pt(x.to_float(), y.to_float());
	pt.pixels_to_twips();
	point result;
	matrix m;
	m.set_inverse(*get_world_matrix());
	m.transform(&result, pt);
	result.twips_to_pixels();

	obj->set_member("x", result.m_x);
	obj->set_member("y", result.m_y);
}

}  // namespace gameswf
