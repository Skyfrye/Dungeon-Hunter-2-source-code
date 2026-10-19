// gameswf::root as the DH2 binary has it (Gameloft). This replaces the upstream struct in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_root.h, which is wrapped in #if 0.
//
// The binary's layout differs from r1714 from +0x24 on (display bounds, pointer position, drag state, mouse button
// state, buffered text, two listener blocks). The object is 0xd0 bytes; offsets below are the binary's (+0xNN) and
// come from the constructor (0x775da0, 0x775f70), the destructor (0x774ebc, 0x774fc4) and the accessors.
//
// Owner batch: vendor-gameswf/src/v1-vendor-gameswf-gameswf_root-d24935-0.cpp. The rows that match r1714 are
// defined in upstream/gameswf-r1714/gameswf/gameswf_root.cpp.
//
// Virtual slots (vptr offsets, from vtables-001.json, _ZTVN7gameswf4rootE), declared below in this order:
// +0x00 D1, +0x04 D0, +0x08 get_mouse_state, +0x0c get_pixel_scale, +0x10 has_looped, +0x14 goto_labeled_frame,
// +0x18 set_play_state, +0x1c get_play_state, +0x20 set_variable(char const*, char const*),
// +0x24 set_variable(char const*, wchar_t const*), +0x28 get_variable, +0x2c call_method(varargs),
// +0x30 call_method_args, +0x34 call_method(as_value*, int), +0x38 set_visible, +0x3c get_visible,
// +0x40 get_userdata, +0x44 set_userdata, +0x48 attach_display_callback, +0x4c get_movie_version,
// +0x50 get_movie_width, +0x54 get_movie_height, +0x58 get_movie_fps.

#pragma once

#include <cstdint>
#include <stdarg.h>  // va_list (the binary's call_method_args takes std::__va_list)

#include "base/smart_ptr.h"    // smart_ptr<T> (upstream)
#include "base/weak_ptr.h"     // weak_ptr<T> (upstream): proxy at +0x00, cached pointer at +0x04
#include "base/container.h"    // array<T>: 16 bytes (buffer, size, capacity, borrowed flag)
#include "gameswf/gameswf.h"   // rect, point, key, player, movie_def_impl (forward), render_handler (upstream)
#include "gameswf/gameswf_types.h"   // rgba (upstream)
#include "vendor-gameswf/ref_counted.hpp"  // DH2 ref_counted (12 bytes)
#include "gameswf/gameswf_character.h"  // character, character::drag_state, character::play_state (upstream)
#include "gameswf/gameswf_listener.h"   // listener (upstream, DH2: a 16-byte block with no ref_counted base)

namespace gameswf {

// DH2: scale modes of set_display_bounds. Values 1 and 2 are the only ones the binary reads; the
// enumerators are not recovered (same treatment as bitmap_info::filter_mode).
enum scale_mode : int {};

// DH2: the root's mouse state as the binary has it (12 bytes, embedded in root at +0x78). generate_mouse_button_events
// (0x774a04) reads and writes these five fields only; r1714 also kept the pointer position here (m_x, m_y, m_x_last,
// m_y_last), the DH2 build does not.
struct mouse_button_state
{
	smart_ptr<character> m_active_entity;	// +0x00 entity that currently owns the mouse pointer
	smart_ptr<character> m_topmost_entity;	// +0x04 what's underneath the mouse right now

	bool	m_mouse_button_state_last;		// +0x08 previous state of mouse button
	bool	m_mouse_button_state_current;		// +0x09 current state of mouse button
	bool	m_mouse_inside_entity_last;		// +0x0a whether mouse was inside the active_entity last frame

	mouse_button_state() :
		m_mouse_button_state_last(false),
		m_mouse_button_state_current(false),
		m_mouse_inside_entity_last(false)
	{
	}
};

struct root : public ref_counted {
	// +0x00 vptr, +0x04 m_ref_count, +0x08 m_weak_proxy (ref_counted)
	smart_ptr<movie_def_impl>	m_def;				// +0x0c
	smart_ptr<character>		m_movie;			// +0x10
	int		m_viewport_x0;						// +0x14 set_display_viewport (ctor 0)
	int		m_viewport_y0;						// +0x18 (ctor 0)
	int		m_viewport_width;					// +0x1c (ctor 1); also the scale of the scene_node uv in logical_to_screen
	int		m_viewport_height;					// +0x20 (ctor 1)
	int		m_display_x;						// +0x24 set_display_bounds: a2 (not set by ctor)
	int		m_display_y;						// +0x28 set_display_bounds: a3
	int		m_display_width;					// +0x2c set_display_bounds: a4
	int		m_display_height;					// +0x30 set_display_bounds: a5
	float	m_pixel_scale;						// +0x34 (ctor 1.0), max(w/frame_w, h/frame_h)
	rgba	m_background_color;					// +0x38 (ctor 0,0,0,255)
	int		m_mouse_x;							// +0x3c notify_mouse_state (ctor 0)
	int		m_mouse_y;							// +0x40 notify_mouse_state (ctor 0)
	int		m_mouse_buttons;					// +0x44 notify_mouse_state (ctor 0)
	float	m_pointer_x;						// +0x48 screen position that scene_node::update_inverse_transform casts a ray through; zeroed by the ctor, no gameswf function writes it
	float	m_pointer_y;						// +0x4c
	int		m_active_controller;				// +0x50 returned by as_global_get_active_controller (0x79e700); zeroed by the ctor, no gameswf function writes it
	void*	m_userdata;							// +0x54 (get_userdata 0x774434, set_userdata 0x77443c)
	character::drag_state	m_drag_state;		// +0x58 .. +0x77 (32 bytes: start_drag writes the character, flags and bound; stop_drag clears the character)
	mouse_button_state m_mouse_button_state;	// +0x78 .. +0x83
	bool		m_on_event_load_called;			// +0x84 advance(): event 10 sent once
	bool		m_shift_key_state;				// +0x85
	bool		m_flushing_buffered_text;		// +0x86 set during flush_buffered_text
	bool		unk_87;							// +0x87 cleared by the ctor; no reader

	smart_ptr<character>	m_current_active_entity;	// +0x88 set_active_entity
	float	m_time_remainder;					// +0x8c advance() accumulator (ctor 1.0)
	float	m_frame_time;						// +0x90 1 / frame rate (ctor 1.0, then 1 / get_frame_rate())
	float	m_garbage_timer;					// +0x94 advance(): counts down, reset to 2.0

	array<smart_ptr<character> >	m_buffered_text;	// +0x98 flush_buffered_text (16 bytes)

	// listeners (r1714 also had m_mouse_listener, the DH2 root does not)
	listener m_keypress_listener;				// +0xa8 notify_key_event (event 8), display_list::add_keypress_listener
	listener m_listener;						// +0xb8 advance() and alive(); as_timer adds its timers here

	weak_ptr<player>	m_player;				// +0xc8 proxy at +0xc8, cached player at +0xcc

	root(player* player, movie_def_impl* def);	// 0x775da0 (C1), 0x775f70 (C2)
	virtual ~root();							// 0x774ebc (D2), 0x774fc4 (D1), 0x7750cc (D0, compiler-generated)

	// Virtuals, in vtable slot order.
	virtual void	get_mouse_state(int* x, int* y, int* buttons);	// 0x774138 (+0x08)
	virtual float	get_pixel_scale() const;	// 0x7741bc (+0x0c)
	virtual bool	has_looped() const;			// 0x77427c (+0x10)
	virtual bool	goto_labeled_frame(const tu_stringi& label);	// 0x7742f4 (+0x14)
	virtual void	set_play_state(character::play_state s);	// 0x774340 (+0x18)
	virtual character::play_state	get_play_state() const;		// 0x77435c (+0x1c)
	virtual void	set_variable(const char* path_to_var, const char* new_value);	// 0x774378 (+0x20)
	virtual void	set_variable(const char* path_to_var, const wchar_t* new_value);	// 0x774394 (+0x24)
	virtual const char*	get_variable(const char* path_to_var) const;	// 0x7743b0 (+0x28)
	virtual const char*	call_method(const char* method_name, const char* method_arg_fmt, ...);	// 0x7744a4 (+0x2c)
	virtual const char*	call_method_args(const char* method_name, const char* method_arg_fmt, va_list args);	// 0x7743cc (+0x30)
	virtual tu_string	call_method(const char* method_name, as_value* arguments, int argument_count);	// 0x7743e8 (+0x34)
	virtual void	set_visible(bool visible);	// 0x77441c (+0x38)
	virtual bool	get_visible() const;		// 0x774428 (+0x3c)
	virtual void*	get_userdata();				// 0x774434 (+0x40)
	virtual void	set_userdata(void* ud);		// 0x77443c (+0x44)
	virtual void	attach_display_callback(const char* path_to_object, void (*callback)(void* user_ptr), void* user_ptr);	// 0x774444 (+0x48)
	virtual int		get_movie_version();		// 0x773d48 (+0x4c)
	virtual int		get_movie_width();			// 0x773d64 (+0x50)
	virtual int		get_movie_height();			// 0x773d84 (+0x54)
	virtual float	get_movie_fps();			// 0x773da4 (+0x58)

	float	screen_to_logical(point& p);		// 0x773dc0
	float	logical_to_screen(point& p);		// 0x773f50
	void	notify_mouse_state(int x, int y, int buttons);	// 0x774128
	void	end_display();						// 0x774298
	void	notify_key_event(player* player, key::code k, bool down);	// 0x774544
	void	flush_buffered_text();				// 0x7748b8
	void	set_active_entity(character* ch);	// 0x774918
	void	start_drag(character* ch, bool lock_center, bool bound, rect& r);	// 0x775154
	void	begin_display();					// 0x7751bc
	void	advance(float delta_time, bool fixed_step);	// 0x775304
	void	display();							// 0x775574
	void	set_display_bounds(int x, int y, int w, int h, scale_mode mode);	// 0x7755f4
	void	set_display_viewport(int x0, int y0, int w, int h);	// 0x775d38

	void	stop_drag();						// 0x77415c
	character*	get_root_movie();				// 0x774154 (binary symbol is not const; r1714 had it const)
	movie_definition*	get_movie_definition();	// 0x774168
	int		get_current_frame() const;			// 0x774184
	int		get_frame_count() { return get_root_movie()->get_frame_count(); }
	float	get_frame_rate() const;				// 0x7741a0
	void	set_frame_rate(float rate);			// 0x7744e0
	character*	get_character(int character_id);	// 0x7741c4
	void	set_background_color(const rgba& color);	// 0x7741e0
	void	set_background_alpha(float alpha);	// 0x7741f4
	float	get_background_alpha() const;		// 0x774244
	void	goto_frame(int target_frame_number);	// 0x774260
	void	set_root_movie(character* root_movie);	// 0x77453c
	void	set_flash_vars(const tu_string& vars);	// 0x774660
	void	generate_mouse_button_events(mouse_button_state* ms);	// 0x774a04

	// The listener calls on the two blocks. The binary calls gameswf::listener::add(root+0xb8, obj) from the as_timer
	// constructors (0x7a6f24, 0x7a7064) and listener::remove(root+0xb8, obj) from as_timer::clear (0x7a6da8), and
	// display_list::add_keypress_listener (0x755bb0) calls add(root+0xa8, character).
	void add_listener(as_object* obj)  { m_listener.add(obj); }
	bool remove_listener(as_object* obj) { return m_listener.remove(obj); }
	void add_keypress_listener(as_object* obj)  { m_keypress_listener.add(obj); }
	bool remove_keypress_listener(as_object* obj) { return m_keypress_listener.remove(obj); }
};

}  // namespace gameswf
