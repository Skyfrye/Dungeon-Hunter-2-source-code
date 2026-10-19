#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// v1-vendor-gameswf-gameswf_sprite_instance-d5206d-0.cpp
//
// Track B batch v1-vendor-gameswf-gameswf_sprite_instance-d5206d-0: gameswf::sprite_instance, part 1 of 2.
// Gameloft (DH2) bodies for the class declared in vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_sprite.h.
//
// Layout (settled in gameswf_sprite.h, 32-bit offsets in the comments there): m_def +0xa0 (smart pointer), m_root +0xa4,
// display list +0xa8 (20 bytes), action list +0xbc, goto-frame action list +0xcc, init-action block +0xdc, environment
// +0xe0, int16 frame +0xe4, the flag bytes +0xe6..+0xec, canvas +0xf0, transform +0xf4, frame-script table +0xf8, frame
// script +0xfc. The object is 0x100 bytes.
//
// Part 2 of the class is v1-vendor-gameswf-gameswf_sprite_instance-d5206d-1.cpp (the frame machinery: advance, goto_frame,
// execute_frame_tags, do_actions, hit tests). The display list itself is v1-vendor-gameswf-gameswf_dlist-d5206d-2.cpp.
//
// Upstream definitions in gameswf_sprite.cpp that these bodies replace are wrapped in #if 0 there.

#include <cstdio>
#include <cstring>
#include <new>

#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_text.h"      // edit_text_character_def (create_text_field)
#include "gameswf/gameswf_as_classes/as_color_transform.h"
#include "gameswf/gameswf_as_classes/as_matrix.h"
#include "vendor-gameswf/as_transform.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_scene_node.hpp"  // scene_node::get_local_mouse

namespace gameswf
{

// Upstream (gameswf_impl.cpp:96).
void execute_actions(as_environment* env, const array<action_buffer*>& action_list);

namespace
{
// The numbering of the DH2 binary's as_standard_member (see fddef6-2: "enabled" 40, "transform" 41). The r1714 enum in
// gameswf_action.h stops at M_MOUSE_MOVE (39) and does not have these two.
const int kStandardMemberEnabled = 40;
const int kStandardMemberTransform = 41;

// The 8 handler names of gameswf::FN_NAMES (a local table in the binary, .data.rel.ro 0x95a... ; r1714 has nine, with onMouseMove).
const char* const FN_NAMES[8] = {
	"onKeyPress",
	"onRelease",
	"onDragOver",
	"onDragOut",
	"onPress",
	"onReleaseOutside",
	"onRollout",
	"onRollover",
};
}  // namespace

// 0x77ddc4 _ZNK7gameswf15sprite_instance2isEi
// Binary: `return a2 == 2 || a2 == 1 || a2 == 0`. The class ids of sprite, character and object.
bool sprite_instance::is(int class_id) const
{
	return class_id == m_class_id || class_id == character::m_class_id || class_id == as_object::m_class_id;
}

// 0x77dde8 _ZN7gameswf15sprite_instance17get_character_defEv
character_def* sprite_instance::get_character_def()
{
	return m_def.get_ptr();
}

// 0x77ddf0 _ZN7gameswf15sprite_instance20get_movie_definitionEv
movie_definition* sprite_instance::get_movie_definition()
{
	return m_def.get_ptr();
}

// 0x77ddf8 _ZNK7gameswf15sprite_instance17get_current_frameEv
int sprite_instance::get_current_frame() const
{
	return m_current_frame;
}

// 0x77de00 _ZNK7gameswf15sprite_instance15get_frame_countEv
int sprite_instance::get_frame_count() const
{
	return m_def->get_frame_count();
}

// 0x77de1c _ZNK7gameswf15sprite_instance17get_loading_frameEv
int sprite_instance::get_loading_frame() const
{
	return m_def->get_loading_frame();
}

// 0x77de28 _ZN7gameswf15sprite_instance13get_characterEi
// Virtual override (vtable +0x7c). Returns null without searching the display list.
character* sprite_instance::get_character(int character_id)
{
	return nullptr;
}

// 0x77de30 _ZNK7gameswf15sprite_instance15get_pixel_scaleEv
float sprite_instance::get_pixel_scale() const
{
	return m_root->get_pixel_scale();
}

// 0x77de4c _ZN7gameswf15sprite_instance15get_mouse_stateEPiS1_S1_
void sprite_instance::get_mouse_state(int* x, int* y, int* buttons)
{
	m_root->get_mouse_state(x, y, buttons);
}

// 0x77de68 _ZN7gameswf15sprite_instance7_typeofEv
// Virtual (vtable +0x18). The ActionScript type name.
const char* sprite_instance::_typeof()
{
	return "movieclip";
}

// 0x77de78 _ZNK7gameswf15sprite_instance14get_play_stateEv
character::play_state sprite_instance::get_play_state() const
{
	return static_cast<play_state>(static_cast<signed char>(m_play_state));
}

// 0x77de80 _ZN7gameswf15sprite_instance32find_previous_replace_or_add_tagEiii
// Searches the previous frames, newest first, for the place/replace tag that put the character with this depth and id on
// the list (r1714: gameswf_sprite.cpp, find_previous_replace_or_add_tag).
execute_tag* sprite_instance::find_previous_replace_or_add_tag(int frame, int depth, int id)
{
	uint32 depth_id = (static_cast<uint32>(depth) << 16) | (static_cast<uint32>(id) & 0xFFFF);

	for (int f = frame - 1; f >= 0; f--)
	{
		const array<execute_tag*>& playlist = m_def->get_playlist(f);
		for (int i = playlist.size() - 1; i >= 0; i--)
		{
			execute_tag* e = playlist[i];
			if (e->get_depth_id_of_replace_or_add_tag() == depth_id)
			{
				return e;
			}
		}
	}
	return nullptr;
}

// 0x77df14 _ZN7gameswf15sprite_instance19execute_remove_tagsEi
// Runs the state part of every remove tag of the frame.
void sprite_instance::execute_remove_tags(int frame)
{
	const array<execute_tag*>& playlist = m_def->get_playlist(frame);
	for (int i = 0; i < playlist.size(); i++)
	{
		execute_tag* e = playlist[i];
		if (e->is_remove_tag())
		{
			e->execute_state(this);
		}
	}
}

// 0x77df9c _ZN7gameswf15sprite_instance22get_frameid_from_labelERKNS_10tu_stringiE
// The frame of the label, or -1. The label is looked up through the definition (vtable +0x60).
int sprite_instance::get_frameid_from_label(const tu_stringi& label)
{
	int frame_number = -1;
	if (m_def->get_labeled_frame(label, &frame_number))
	{
		return frame_number;
	}
	return -1;
}

// 0x77dfd8 _ZN7gameswf15sprite_instance18goto_labeled_frameERKNS_10tu_stringiE
bool sprite_instance::goto_labeled_frame(const tu_stringi& label)
{
	int frame_number = -1;
	if (m_def->get_labeled_frame(label, &frame_number))
	{
		goto_frame(frame_number);
		return true;
	}
	return false;
}

// 0x77e16c _ZN7gameswf15sprite_instance14get_root_movieEv
character* sprite_instance::get_root_movie()
{
	return m_root->get_root_movie();
}

// 0x77e174 _ZNK7gameswf15sprite_instance20get_background_alphaEv
float sprite_instance::get_background_alpha() const
{
	return m_root->get_background_alpha();
}

// 0x77e17c _ZN7gameswf15sprite_instance20set_background_colorERKNS_4rgbaE
void sprite_instance::set_background_color(const rgba& color)
{
	m_root->set_background_color(color);
}

// 0x77e184 _ZN7gameswf15sprite_instance19update_world_cxformEv
// The base refreshes this character's own colour transform; the children are refreshed through their virtual.
void sprite_instance::update_world_cxform()
{
	character::update_world_cxform();
	for (int i = 0, n = m_display_list.size(); i < n; i++)
	{
		character* ch = m_display_list.get_character(i);
		if (ch)
		{
			ch->update_world_cxform();	// vtable +0x11c
		}
	}
}

// 0x77e1d0 _ZN7gameswf15sprite_instance19update_world_matrixEv
// As update_world_cxform, for the matrix (vtable +0x118). The binary returns int (the last call's result); it is void here.
void sprite_instance::update_world_matrix()
{
	character::update_world_matrix();
	for (int i = 0, n = m_display_list.size(); i < n; i++)
	{
		character* ch = m_display_list.get_character(i);
		if (ch)
		{
			ch->update_world_matrix();	// vtable +0x118
		}
	}
}

// 0x77e2a8 _ZN7gameswf15sprite_instance16set_frame_scriptEi
// flash9: makes the script of the frame the current frame script (or none).
void sprite_instance::set_frame_script(int frame)
{
	m_frame_script = static_cast<as_function*>(nullptr);
	if (m_script)
	{
		m_script->get(frame, &m_frame_script);
	}
}

// 0x77e738 _ZN7gameswf15sprite_instance10add_scriptEiPNS_11as_functionE
// flash9: frame is 0-based. The script table is created on first use (operator new(4) in the binary).
void sprite_instance::add_script(int frame, as_function* func)
{
	if (frame >= 0 && frame < m_def->get_frame_count())
	{
		if (m_script == nullptr)
		{
			m_script = new (swf::MEM_UNRECOVERED) hash<int, smart_ptr<as_function> >();
		}
		m_script->set(frame, smart_ptr<as_function>(func));

		if (frame == m_current_frame)
		{
			set_frame_script(frame);
		}
	}
}

// 0x77e874 _ZN7gameswf15sprite_instance17add_action_bufferEPNS_13action_bufferE
// Appends the buffer to the actions waiting for the next do_actions (r1714: gameswf_sprite.cpp).
void sprite_instance::add_action_buffer(action_buffer* a)
{
	m_action_list.push_back(a);
}

// 0x77e9a4 _ZN7gameswf15sprite_instance9enumerateEPNS_14as_environmentE
// Character enumeration (variables), then the names of the children.
void sprite_instance::enumerate(as_environment* env)
{
	character::enumerate(env);

	for (int i = 0, n = m_display_list.size(); i < n; i++)
	{
		character* ch = m_display_list.get_character(i);
		if (ch)
		{
			const tu_string& name = ch->get_name();
			if (name.length() > 0)
			{
				env->push(name);
			}
		}
	}
}

// 0x77ea08 _ZN7gameswf15sprite_instance7set_fpsEf
void sprite_instance::set_fps(float fps)
{
	m_root->set_frame_rate(fps);
}

// 0x77ea10 _ZN7gameswf15sprite_instance10clear_refsEPNS_4hashIPNS_9as_objectEbNS_15fixed_size_hashIS3_EEEES3_
void sprite_instance::clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr)
{
	// Is it a reentrance?
	if (visited_objects->get(this, nullptr))
	{
		return;
	}

	as_object::clear_refs(visited_objects, this_ptr);
	m_display_list.clear_refs(visited_objects, this_ptr);
	if (m_as_environment)
	{
		m_as_environment->clear_refs(visited_objects, this_ptr);
	}
}

// 0x77ea84 _ZNK7gameswf15sprite_instance16get_loaded_bytesEv
uint32 sprite_instance::get_loaded_bytes() const
{
	movie_def_impl* root_def = cast_to<movie_def_impl>(m_def.get_ptr());
	if (root_def)
	{
		return root_def->get_loaded_bytes();
	}
	return 0;
}

// 0x77eaa4 _ZNK7gameswf15sprite_instance14get_file_bytesEv
uint32 sprite_instance::get_file_bytes() const
{
	movie_def_impl* root_def = cast_to<movie_def_impl>(m_def.get_ptr());
	if (root_def)
	{
		return root_def->get_file_bytes();
	}
	return 0;
}

// 0x77eac4 _ZN7gameswf15sprite_instance9get_boundEPNS_4rectE
// The bound is set to the empty rectangle (+FLT_MAX, -FLT_MAX) first, then every child with a non-empty bound is
// transformed by this clip's matrix and added.
void sprite_instance::get_bound(rect* bound)
{
	bound->m_x_min = FLT_MAX;
	bound->m_x_max = -FLT_MAX;
	bound->m_y_min = FLT_MAX;
	bound->m_y_max = -FLT_MAX;

	int n = m_display_list.size();
	if (n != 0)
	{
		const matrix& m = get_matrix();
		for (int i = 0; i < n; i++)
		{
			character* ch = m_display_list.get_character(i);
			if (ch != nullptr)
			{
				rect ch_bound;
				ch->get_bound(&ch_bound);
				if ((ch_bound.m_x_max - ch_bound.m_x_min) > 0.0f && (ch_bound.m_y_max - ch_bound.m_y_min) > 0.0f)
				{
					m.transform(&ch_bound);
					bound->expand_to_rect(ch_bound);
				}
			}
		}
	}
}

// 0x77ec44 _ZN7gameswf15sprite_instance11call_methodEPKcPNS_8as_valueEi
tu_string sprite_instance::call_method(const char* method_name, as_value* arguments, int argument_count)
{
	return gameswf::call_method(get_environment(), this, method_name, arguments, argument_count);
}

// 0x77ec94 _ZN7gameswf15sprite_instance21remove_display_objectEPNS_9characterE
void sprite_instance::remove_display_object(character* ch)
{
	m_display_list.remove_display_object(ch);
}

// 0x77ec9c _ZN7gameswf15sprite_instance21remove_display_objectERKNS_9tu_stringE
// Removes the object with the name by its depth and id (through the virtual of vtable +0xc4).
void sprite_instance::remove_display_object(const tu_string& name)
{
	character* ch = m_display_list.get_character_by_name(name);
	if (ch)
	{
		remove_display_object(ch->get_depth(), ch->get_id());
	}
}

// 0x77ecd0 _ZN7gameswf15sprite_instance9stop_dragEv
void sprite_instance::stop_drag()
{
	m_root->stop_drag();
}

// 0x77ecd8 _ZN7gameswf15sprite_instance10do_actionsERKNS_5arrayIPNS_13action_bufferEEE
void sprite_instance::do_actions(const array<action_buffer*>& action_list)
{
	for (int i = 0; i < action_list.size(); i++)
	{
		action_list[i]->execute(get_environment());
	}
}

// 0x77ed2c _ZN7gameswf15sprite_instance17get_highest_depthEv
int sprite_instance::get_highest_depth()
{
	return m_display_list.get_highest_depth();
}

// 0x77ed34 _ZN7gameswf15sprite_instance15get_id_at_depthEi
// For debugging: the id of the character at the depth, or -1.
int sprite_instance::get_id_at_depth(int depth)
{
	int index = m_display_list.get_display_index(depth);
	if (index == -1)
	{
		return -1;
	}
	return m_display_list.get_character(index)->get_id();
}

// 0x77ed58 _ZN7gameswf15sprite_instance21clear_display_objectsEv
void sprite_instance::clear_display_objects()
{
	m_display_list.clear();
}

// 0x77ed60 _ZN7gameswf15sprite_instance21remove_display_objectEii
void sprite_instance::remove_display_object(int depth, int id)
{
	m_display_list.remove_display_object(depth, id);
}

// 0x77ed68 _ZN7gameswf15sprite_instance19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
void sprite_instance::move_display_object(int depth, const cxform* color_transform, const matrix* mat, const effect* fx,
	float ratio, Uint16 clip_depth)
{
	m_display_list.move_display_object(depth, color_transform, mat, fx, ratio, clip_depth);
}

// 0x77ed84 _ZN7gameswf15sprite_instance18add_display_objectEtRKNS_9tu_stringERKNS_5arrayIPNS_9swf_eventEEEibPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Adds the character of the definition with this id at the depth. A character already at the depth with the same id and name
// is moved instead and null is returned. A new character gets the name and the event handlers, joins the display list and
// receives the CONSTRUCT event (the r1714 code leaves that event commented out).
character* sprite_instance::add_display_object(Uint16 character_id, const tu_string& name,
	const array<swf_event*>& event_handlers, int depth, bool replace_if_depth_is_occupied,
	const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
	character_def* cdef = m_def->get_character_def(character_id);
	if (cdef == nullptr)
	{
		log_error("sprite::add_display_object(): unknown cid = %d\n", character_id);
		return nullptr;
	}

	// If we already have this object on this plane, then move it instead of replacing it.
	character* existing_char = m_display_list.get_character_at_depth(depth);
	if (existing_char && character_id == existing_char->get_id()
		&& (&name == &existing_char->get_name() || strcmp(name.c_str(), existing_char->get_name().c_str()) == 0))
	{
		move_display_object(depth, color_transform, mat, fx, ratio, clip_depth);
		return nullptr;
	}

	smart_ptr<character> ch(cdef->create_character_instance(this, character_id));
	ch->set_name(name);

	// Attach event handlers (if any).
	for (int i = 0, n = event_handlers.size(); i < n; i++)
	{
		const tu_stringi& handler_name = event_handlers[i]->m_event.get_function_name().to_tu_stringi();
		ch->set_member(handler_name, event_handlers[i]->m_method);
	}

	m_display_list.add_display_object(ch.get_ptr(), depth, replace_if_depth_is_occupied, color_transform, mat, fx,
		ratio, clip_depth);

	ch->on_event(event_id(event_id::CONSTRUCT));
	return ch.get_ptr();
}

// 0x77ef6c _ZN7gameswf15sprite_instance10goto_frameERKNS_9tu_stringE
// A number selects the frame (1-based, from ActionScript), anything else is a label.
int sprite_instance::goto_frame(const tu_string& target_frame)
{
	double number_value;

	// try the string as a number
	if (string_to_number(&number_value, target_frame.c_str()))
	{
		// DH2 host: the binary converts with __aeabi_d2iz, which saturates (NaN gives 0). A plain (int) cast of NaN or a huge value is undefined and on
		// x86-64 gives INT_MIN (float-cast-overflow trap in the host runner, from the loading movie's gotoAndStop).
		int frame_number = 0;
		if (number_value >= 2147483647.0) frame_number = 2147483647;
		else if (number_value <= -2147483648.0) frame_number = (-2147483647 - 1);
		else if (number_value == number_value) frame_number = (int) number_value;
		return goto_frame(frame_number - 1);	// vtable +0x14c; convert to 0-based
	}
	return goto_labeled_frame(target_frame.to_tu_stringi());	// vtable +0x9c
}

// 0x77efd8 _ZN7gameswf15sprite_instance9constructEv
// Runs once: the registered class constructor of the definition, then construct() on every child.
void sprite_instance::construct()
{
	if (!m_constructed)
	{
		m_def->instanciate_registered_class(this);
		m_display_list.construct();
		m_constructed = true;
	}
}

// 0x77f00c _ZN7gameswf15sprite_instance24get_topmost_mouse_entityEff
// Hit testing for the mouse. Children are tried from the top. A child entity that can handle mouse events wins at once; one
// that cannot only gives this clip the focus; a child named "hitzone" ends the search. The result is this clip when it can
// handle mouse events itself, else the entity found (the last one tried when none handled them).
character* sprite_instance::get_topmost_mouse_entity(float x, float y)
{
	if (!get_visible())
	{
		return nullptr;
	}

	if (m_custom != nullptr && m_custom->m_scene_node != nullptr)
	{
		m_custom->m_scene_node->get_local_mouse(this, x, y);
	}

	point p;
	get_matrix().transform_by_inverse(&p, point(x, y));

	int n = m_display_list.size();
	if (n - 1 < 0)
	{
		return nullptr;
	}

	character* last_te = nullptr;
	character* top_te = nullptr;
	bool this_has_focus = false;
	bool found = false;

	// Go backwards, to check higher objects first.
	for (int i = n - 1; i >= 0; i--)
	{
		character* ch = m_display_list.get_character(i);
		if (ch != nullptr && ch->get_visible())
		{
			last_te = ch->get_topmost_mouse_entity(p.m_x, p.m_y);	// vtable +0x68
			if (last_te)
			{
				if (last_te->can_handle_mouse_event())	// vtable +0x15c
				{
					top_te = last_te;
					found = true;
					break;
				}
				this_has_focus = true;
			}
			if (strcmp(ch->get_name().c_str(), "hitzone") == 0)
			{
				break;
			}
		}
	}

	if (!found)
	{
		if (!this_has_focus)
		{
			return last_te;
		}
		top_te = nullptr;
	}

	if (can_handle_mouse_event())
	{
		return this;
	}
	return top_te ? top_te : last_te;
}

// 0x782de4 _ZNK7gameswf15sprite_instance10is_enabledEv
// Enabled when the clip is and its parent is (a parentless clip only needs its own flag).
bool sprite_instance::is_enabled() const
{
	if (m_enabled)
	{
		// check parent
		character* parent = get_parent();
		if (parent)
		{
			return parent->is_enabled();
		}
		return true;
	}
	return false;
}

// 0x77f188 _ZN7gameswf15sprite_instance22can_handle_mouse_eventEv
bool sprite_instance::can_handle_mouse_event()
{
	if (is_enabled())
	{
		if (m_has_mouse_handler)
		{
			return true;
		}
		return sprite_can_handle_mouse_event_callback(this) != 0;
	}
	return false;
}

// 0x77f1c8 _ZN7gameswf15sprite_instance4dumpERNS_9tu_stringE
void sprite_instance::dump(tu_string& tabs)
{
	tabs += "  ";
	printf("%s*** movieclip 0x%p ***\n", tabs.c_str(), (void*) this);
	as_object::dump(tabs);
	m_display_list.dump(tabs);
	tabs.resize(tabs.length() - 2);
}

// 0x77f41c _ZN7gameswf15sprite_instance16call_method_argsEPKcS2_St9__va_list
const char* sprite_instance::call_method_args(const char* method_name, const char* method_arg_fmt, va_list args)
{
	// Keep this alive during any method calls.
	smart_ptr<as_object> this_ptr(this);
	return call_method_parsed(get_environment(), this, method_name, method_arg_fmt, args);
}

// 0x77f4a0 _ZN7gameswf15sprite_instance8on_eventERKNS_8event_idE
// Dispatches the event handler, if any. The name is looked up in the object's own members (as_object::get_member, not the
// virtual: the display list and the character properties are not searched). The event arguments are pushed in reverse and
// dropped after the call.
bool sprite_instance::on_event(const event_id& id)
{
	// Keep this alive during any method calls.
	smart_ptr<as_object> this_ptr(this);

	const tu_string& function_name = id.get_function_name();
	as_value method;
	if (as_object::get_member(function_name.to_tu_stringi(), &method))
	{
		int nargs = 0;
		if (id.m_args)
		{
			nargs = id.m_args->size();
			for (int i = nargs - 1; i >= 0; i--)
			{
				get_environment()->push((*id.m_args)[i]);
			}
		}

		as_environment* env = get_environment();
		as_value this_value(this);
		gameswf::call_method(method, env, this_value, nargs, get_environment()->get_top_index(), function_name.c_str());

		get_environment()->drop(nargs);
		return true;
	}
	return false;
}

// 0x77f614 _ZN7gameswf15sprite_instance18has_keypress_eventEv
bool sprite_instance::has_keypress_event()
{
	as_value unused;
	return get_member(tu_stringi("onKeyPress"), &unused);
}

// 0x77f6cc _ZN7gameswf15sprite_instance12set_variableEPKcS2_
void sprite_instance::set_variable(const char* path_to_var, const char* new_value)
{
	if (path_to_var == nullptr)
	{
		log_error("error: NULL path_to_var passed to set_variable()\n");
		return;
	}
	if (new_value == nullptr)
	{
		log_error("error: NULL passed to set_variable('%s', NULL)\n", path_to_var);
		return;
	}

	array<with_stack_entry> empty_with_stack;
	tu_string path(path_to_var);
	as_value val;
	val.set_string(new_value);

	get_environment()->set_variable(path, val, empty_with_stack);
}

// 0x77fcbc _ZN7gameswf15sprite_instance12set_variableEPKcPKw
void sprite_instance::set_variable(const char* path_to_var, const wchar_t* new_value)
{
	if (path_to_var == nullptr)
	{
		log_error("error: NULL path_to_var passed to set_variable()\n");
		return;
	}
	if (new_value == nullptr)
	{
		log_error("error: NULL passed to set_variable('%s', NULL)\n", path_to_var);
		return;
	}

	array<with_stack_entry> empty_with_stack;
	tu_string path(path_to_var);
	as_value val(new_value);

	get_environment()->set_variable(path, val, empty_with_stack);
}

// 0x77f8d0 _ZNK7gameswf15sprite_instance12get_variableEPKc
const char* sprite_instance::get_variable(const char* path_to_var) const
{
	array<with_stack_entry> empty_with_stack;
	tu_string path(path_to_var);

	// NOTE: this is static so that the string value won't go away after we return. It goes away during the next call.
	static as_value val;

	val = const_cast<sprite_instance*>(this)->get_environment()->get_variable(path, empty_with_stack, nullptr);

	return val.to_string();
}

// 0x77f7e8 _ZN7gameswf15sprite_instance22replace_display_objectEPNS_9characterEPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
void sprite_instance::replace_display_object(character* ch, const char* name, int depth, const cxform* color_transform,
	const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
	if (name != nullptr && name[0] != 0)
	{
		ch->set_name(tu_string(name));
	}

	m_display_list.replace_display_object(ch, depth, color_transform, mat, fx, ratio, clip_depth);
}

// 0x77fb64 _ZN7gameswf15sprite_instance22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
void sprite_instance::replace_display_object(Uint16 character_id, const char* name, int depth,
	const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
	character_def* cdef = m_def->get_character_def(character_id);
	if (cdef == nullptr)
	{
		log_error("sprite::replace_display_object(): unknown cid = %d\n", character_id);
		return;
	}

	smart_ptr<character> ch(cdef->create_character_instance(this, character_id));

	if (name != nullptr && name[0] != 0)
	{
		ch->set_name(tu_string(name));
	}

	m_display_list.replace_display_object(ch.get_ptr(), depth, color_transform, mat, fx, ratio, clip_depth);
}

// 0x77fa34 _ZN7gameswf15sprite_instance23attach_display_callbackEPKcPFvRNS_12render_stateEPvES5_
// Attaches the render-state callback to the character the path names.
void sprite_instance::attach_display_callback(const char* path_to_object, void (*callback)(render_state&, void*),
	void* user_ptr)
{
	array<with_stack_entry> dummy;
	as_value obj = get_environment()->get_variable(tu_string(path_to_object), dummy, nullptr);

	if (obj.is_object())
	{
		character* m = cast_to<character>(obj.to_object());
		if (m)
		{
			m->set_display_callback(callback, user_ptr);	// vtable +0x154
		}
	}
}

// 0x77fdd0 _ZN7gameswf15sprite_instance14set_drag_stateERKNS_9character10drag_stateE
// Copies the eight words of the drag state into the root's drag state (m_root +0x58) and flags the dragged character.
void sprite_instance::set_drag_state(const drag_state& state)
{
	m_root->m_drag_state = state;
	if (state.m_character)
	{
		state.m_character->notify_need_advance();
	}
}

// 0x77e02c _ZN7gameswf15sprite_instance14get_drag_stateEPNS_9character10drag_stateE
// Copies the root's drag state out. The binary's return value is a leftover word (r0 after the copy: the float bits of the
// bound's x_max), which the callers (character::do_mouse_drag) do not read; 0 here.
int sprite_instance::get_drag_state(drag_state* ds)
{
	*ds = m_root->m_drag_state;
	return 0;
}

// 0x77fe10 _ZN7gameswf15sprite_instance14set_play_stateENS_9character10play_stateE
void sprite_instance::set_play_state(play_state s)
{
	// pauses stream sound
	sound_handler* sound = get_sound_handler();
	if (sound)
	{
		if (m_def->m_ss_id >= 0)
		{
			sound->pause(m_def->m_ss_id, m_play_state == PLAY ? true : false);
		}
	}
	m_play_state = static_cast<Uint8>(s);
	notify_need_advance();
}

// 0x77fe60 _ZN7gameswf15sprite_instance17notify_set_memberERKNS_10tu_stringiERKNS_8as_valueE
// The handler names the sprite reacts to: "onEnterFrame" sets m_has_on_enter_frame (advance sends the event) and any of the
// mouse and key handler names (compared without case) flags the character as a mouse-event handler.
void sprite_instance::notify_set_member(const tu_stringi& name, const as_value& val)
{
	if (strcmp(name.c_str(), "onEnterFrame") != 0)
	{
		if (strncmp(name.c_str(), "on", 2) == 0)
		{
			for (int i = 0; i < 8; i++)
			{
				if (tu_string::stricmp(name.c_str(), FN_NAMES[i]) == 0)
				{
					m_has_mouse_handler = true;
					return;
				}
			}
		}
	}
	else
	{
		m_has_on_enter_frame = true;
		notify_need_advance();
	}
}

// 0x77ff40 _ZN7gameswf15sprite_instance13get_transformEv
// The transform object, created on first use.
as_transform* sprite_instance::get_transform()
{
	if (m_transform.get_ptr() == nullptr)
	{
		m_transform = new (swf::MEM_UNRECOVERED) as_transform(m_player.get_ptr(), this);
	}
	return m_transform.get_ptr();
}

// 0x77ffbc _ZN7gameswf15sprite_instance10get_memberERKNS_10tu_stringiEPNS_8as_valueE
// First the display list (a child with the name), then the character's own members, the built-in sprite methods, and the
// frame and enabled properties; "transform" gives the transform object (initialised first).
bool sprite_instance::get_member(const tu_stringi& name, as_value* val)
{
	character* ch = m_display_list.get_character_by_name_i(name);
	if (ch)
	{
		val->set_as_object(ch);
		return true;
	}

	if (character::get_member(name, val) || get_builtin(BUILTIN_SPRITE_METHOD, name, val))
	{
		return true;
	}

	int n;
	switch (get_standard_member(name))
	{
		case M_CURRENTFRAME:
			n = get_current_frame();
			if (n < 0)
			{
				val->set_undefined();
				return true;
			}
			val->set_double(n + 1);
			return true;

		case M_TOTALFRAMES:
			n = get_frame_count();
			if (n < 0)
			{
				val->set_undefined();
				return true;
			}
			val->set_double(n);
			return true;

		case M_FRAMESLOADED:
			n = get_loading_frame();
			if (n < 0)
			{
				val->set_undefined();
				return true;
			}
			val->set_double(n);
			return true;

		default:
			break;
	}

	switch (static_cast<int>(get_standard_member(name)))
	{
		case kStandardMemberEnabled:
			val->set_bool(m_enabled);
			return true;

		case kStandardMemberTransform:
			get_transform()->init();
			val->set_as_object(get_transform());
			return true;

		default:
			return false;
	}
}

// 0x780528 _ZN7gameswf15sprite_instance22find_exported_resourceERKNS_9tu_stringE
character_def* sprite_instance::find_exported_resource(const tu_string& symbol)
{
	movie_def_impl* def = cast_to<movie_def_impl>(get_movie_definition());
	if (def)
	{
		character_def* res = def->get_exported_resource(symbol);
		if (res)
		{
			return res;
		}
	}

	// try the parent
	character* parent = get_parent();
	if (parent)
	{
		return parent->find_exported_resource(symbol);
	}
	return nullptr;
}

// 0x780594 _ZN7gameswf15sprite_instance10this_aliveEv
// Marks this clip and its children as reachable for the current garbage-collection pass: the children are visited only when
// this clip's stamp is behind the player's count.
void sprite_instance::this_alive()
{
	player* p = m_player.get_ptr();
	// The binary reads the count through the player without a null test.
	if (p != nullptr && m_alive_stamp != p->m_garbage_count)
	{
		as_object::this_alive();
		for (int i = 0, n = m_display_list.size(); i < n; i++)
		{
			character* ch = m_display_list.get_character(i);
			if (ch)
			{
				player* cur = m_player.get_ptr();
				if (cur != nullptr && ch->m_alive_stamp != cur->m_garbage_count)
				{
					ch->this_alive();	// vtable +0x44
				}
			}
		}
	}
}

// 0x78069c _ZN7gameswf15sprite_instance15do_init_actionsEv
// Runs the init actions collected for the movie, then empties the list.
void sprite_instance::do_init_actions()
{
	if (m_init_actions)
	{
		add_ref();
		execute_actions(get_environment(), m_init_actions->m_actions);
		m_init_actions->m_actions.clear();
		drop_ref();
	}
}

// 0x780718 _ZN7gameswf15sprite_instanceC1EPNS_6playerEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
// 0x781074 _ZN7gameswf15sprite_instanceC2EPNS_6playerEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
// The binary's C1 and C2 are one body. character(player, parent, id, AS_SPRITE); the definition is counted; the stamp is
// the player's garbage count; the object constructor is the player's movieclip constructor (player +0x88). When the definition
// has init actions, the block is built with one "executed" flag per frame.
sprite_instance::sprite_instance(player* p, movie_definition_sub* def, root* r, character* parent, int id) :
	character(p, parent, id, AS_SPRITE),
	m_def(def),
	m_root(r),
	m_init_actions(nullptr),
	m_as_environment(nullptr),
	m_current_frame(0),
	m_play_state(0),
	unk_e7(false),
	m_update_frame(true),
	m_has_on_enter_frame(false),
	m_enabled(true),
	m_constructed(false),
	m_on_event_load_called(false),
	m_script(nullptr)
{
	if (m_def->has_init_actions())
	{
		m_init_actions = new (swf::MEM_UNRECOVERED) init_actions();
		int frame_count = m_def->get_frame_count();
		m_init_actions->m_executed.resize(frame_count);
		if (m_init_actions->m_executed.size() > 0)
		{
			std::memset(&m_init_actions->m_executed[0], 0, m_init_actions->m_executed.size());
		}
	}

	player* pl = m_player.get_ptr();
	m_alive_stamp = pl->m_garbage_count;	// +0x34
	set_ctor(pl->m_movieclip_ctor);
}

// 0x780968 _ZN7gameswf15sprite_instance10set_memberERKNS_10tu_stringiERKNS_8as_valueE
bool sprite_instance::set_member(const tu_stringi& name, const as_value& val)
{
	int std_member = get_standard_member(name);
	if (std_member == kStandardMemberEnabled)
	{
		m_enabled = val.to_bool();
		return true;
	}
	if (std_member == kStandardMemberTransform)
	{
		// A transform object: it takes this clip as its target, then its matrix and colour transform are applied.
		if (val.is_object())
		{
			as_object* obj = val.to_object();
			if (obj && obj->is(AS_TRANSFORM))
			{
				// The binary also stores this clip as the transform's movie (weak pointer); get_transform() made the
				// transform for this clip, so that store changes nothing and is not repeated.
				obj->copy_to(get_transform());

				as_value member;
				obj->get_member(tu_stringi("matrix"), &member);
				if (member.is_object())
				{
					as_object* m = member.to_object();
					if (m && m->is(AS_MATRIX))
					{
						set_matrix(static_cast<as_matrix*>(m)->m_matrix);
					}
				}
				member.set_undefined();

				obj->get_member(tu_stringi("colorTransform"), &member);
				if (member.is_object())
				{
					as_object* c = member.to_object();
					if (c && c->is(AS_COLOR_TRANSFORM))
					{
						set_cxform(static_cast<as_color_transform*>(c)->m_color_transform);
					}
				}
			}
		}
		return true;
	}
	return character::set_member(name, val);
}

// 0x780bb0 _ZN7gameswf15sprite_instance15get_environmentEv
// The environment is created on first use, with this clip as its target.
as_environment* sprite_instance::get_environment()
{
	if (m_as_environment == nullptr)
	{
		m_as_environment = new (swf::MEM_UNRECOVERED) as_environment(m_player.get_ptr());
		m_as_environment->set_target(this);
	}
	return m_as_environment;
}

// 0x780c28 _ZN7gameswf15sprite_instance17create_text_fieldEPKciiiii
// Creates an empty text field as a child (the field's size is the width and height, its position x and y in pixels).
character* sprite_instance::create_text_field(const char* name, int depth, int x, int y, int width, int height)
{
	edit_text_character_def* textdef = new (swf::MEM_UNRECOVERED) edit_text_character_def(m_player.get_ptr(), width, height);

	character* textfield = textdef->create_character_instance(this, 0);	// vtable +0x18
	textfield->set_name(tu_string(name));

	matrix m;
	m.concatenate_translation(PIXELS_TO_TWIPS(x), PIXELS_TO_TWIPS(y));

	m_display_list.add_display_object(textfield, depth, true, &cxform::identity, &matrix::identity, &effect::identity, 0.0f, 0);
	textfield->set_matrix(m);
	return textfield;
}

// 0x780f3c _ZN7gameswf15sprite_instance7recycleEPNS_9characterEi
// Brings a pooled instance back to the state of a new one: the base recycle, the flags, the init-action block and the
// environment destroyed (they are made again on demand), both action lists emptied, and the canvas, the transform and the
// frame-script table released.
void sprite_instance::recycle(character* parent, int id)
{
	character::recycle(parent, id);

	m_update_frame = true;
	m_play_state = 0;
	m_current_frame = 0;
	m_has_on_enter_frame = false;
	if (m_init_actions)
	{
		m_init_actions->~init_actions();
		gameswf::free_internal(m_init_actions, 0);
		m_init_actions = nullptr;
	}
	if (m_as_environment)
	{
		m_as_environment->~as_environment();
		gameswf::free_internal(m_as_environment, 0);
		m_as_environment = nullptr;
	}
	m_enabled = true;
	unk_e7 = false;
	m_constructed = false;
	m_on_event_load_called = false;
	m_goto_frame_action_list.clear();	// the binary sets the size to 0 and keeps the buffer
	m_action_list.clear();
	m_canvas = static_cast<character*>(nullptr);
	m_transform = static_cast<as_transform*>(nullptr);
	if (m_script)
	{
		m_script->clear();
		gameswf::free_internal(m_script, 0);
		m_script = nullptr;
	}
}

// 0x7812c4 _ZN7gameswf15sprite_instance19add_empty_movieclipEPKci
// Creates an empty movie clip (an empty sprite definition) as a child.
character* sprite_instance::add_empty_movieclip(const char* name, int depth)
{
	sprite_definition* empty_sprite_def = new (swf::MEM_UNRECOVERED) sprite_definition(m_player.get_ptr(), nullptr);

	sprite_instance* sprite = m_player.get_ptr()->create_sprite_instance(empty_sprite_def, m_root, this, 0);
	sprite->set_name(tu_string(name));

	m_display_list.add_display_object(sprite, depth, true, &cxform::identity, &matrix::identity, &effect::identity, 0.0f, 0);

	return sprite;
}

// 0x78146c _ZN7gameswf15sprite_instanceD2Ev
// 0x7815d0 _ZN7gameswf15sprite_instanceD1Ev
// D2 and D1 are one body. The frame-script table is cleared and freed, the init-action block and the environment are destroyed
// and freed, the frame script, the transform and the canvas are released (the smart-pointer members do that), both action
// lists are emptied and the display list is destroyed; the definition is released last, then the character base.
sprite_instance::~sprite_instance()
{
	if (m_script)
	{
		m_script->clear();
		gameswf::free_internal(m_script, 0);
		m_script = nullptr;
	}
	if (m_init_actions)
	{
		m_init_actions->~init_actions();
		gameswf::free_internal(m_init_actions, 0);
		m_init_actions = nullptr;
	}
	if (m_as_environment)
	{
		m_as_environment->~as_environment();
		gameswf::free_internal(m_as_environment, 0);
		m_as_environment = nullptr;
	}
	// m_frame_script (+0xfc), m_transform (+0xf4), m_canvas (+0xf0), the action lists (+0xcc, +0xbc), the display list (+0xa8)
	// and m_def (+0xa0) are released by their member destructors, in that order, then ~character.
}

// 0x781750 _ZN7gameswf15sprite_instance10replace_meEPNS_13character_defE
// Replaces this clip in its parent with an instance of the definition.
character* sprite_instance::replace_me(character_def* def)
{
	character* parent = get_parent();

	// is 'this' root?
	if (parent == nullptr)
	{
		log_error("character can't replace _root\n");
		return nullptr;
	}

	character* ch = def->create_character_instance(parent, 0);

	ch->set_parent(parent);
	parent->replace_display_object(ch, get_name().c_str(), get_depth(), nullptr, nullptr, nullptr, get_ratio(), get_clip_depth());

	return ch;
}

// 0x781898 _ZN7gameswf15sprite_instance18call_frame_actionsERKNS_8as_valueE
// Executes the action tags of a frame (given as a number, 1-based, or as a label) at once; the actions they queue run before
// the call returns.
void sprite_instance::call_frame_actions(const as_value& frame_spec)
{
	int frame_number = -1;

	// Figure out what frame to call.
	if (frame_spec.is_string())
	{
		if (m_def->get_labeled_frame(frame_spec.to_tu_string().to_tu_stringi(), &frame_number) == false)
		{
			// Try converting to integer.
			frame_number = (int) frame_spec.to_number();
		}
	}
	else
	{
		// convert from 1-based to 0-based
		frame_number = (int) frame_spec.to_number() - 1;
	}

	if (frame_number < 0 || frame_number >= m_def->get_frame_count())
	{
		// No dice.
		log_error("error: call_frame('%s') -- unknown frame\n", frame_spec.to_string());
		return;
	}

	int top_action = m_action_list.size();

	// Execute the actions.
	const array<execute_tag*>& playlist = m_def->get_playlist(frame_number);
	for (int i = 0; i < playlist.size(); i++)
	{
		execute_tag* e = playlist[i];
		if (e->is_action_tag())
		{
			e->execute(this);
		}
	}

	// Execute any new actions triggered by the tags, leaving existing actions to be executed.
	while (top_action < m_action_list.size())
	{
		action_buffer* buffer = m_action_list[top_action];
		buffer->execute(get_environment());
		m_action_list.remove(top_action);
	}
}

// 0x781734 _ZN7gameswf15sprite_instanceD0Ev
// Deleting destructor D0: compiler-generated (the complete destructor, then operator delete).

}  // namespace gameswf
