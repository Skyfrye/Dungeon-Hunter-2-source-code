// gameswf_sprite.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Some implementation code for the gameswf SWF player library.


#ifndef GAMESWF_SPRITE_H
#define GAMESWF_SPRITE_H


#include "gameswf/gameswf.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_as_classes/as_mcloader.h"
#include "gameswf/gameswf_dlist.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite_def.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_canvas.h"

#include "base/container.h"
#include "base/utility.h"
#include <stdarg.h>

// DH2: a global function in the binary (0x7a8cd8, symbol _Z38sprite_can_handle_mouse_event_callbackPN7gameswf9characterE),
// DH2: a thunk to CanHandleMouseEvent(gameswf::character*), a game function of core-platform.
int sprite_can_handle_mouse_event_callback(gameswf::character* ch);

namespace gameswf
{
	struct as_transform;	// DH2: vendor-gameswf/as_transform.hpp

	// DH2: layout of the DH2 binary (ARM32 offsets in comments), 0x100 bytes: the 0xa0-byte character base, then the
	// DH2: members below. Settled from the constructors (0x780718 C1, 0x781074 C2), the destructor (0x78146c, 0x7815d0),
	// DH2: recycle (0x780f3c) and the accessors. The vtable has 96 slots (384 bytes): the character slots plus
	// DH2: attach_display_callback(const char*, void (*)(render_state&, void*), void*) at +0x174. Declared in slot order.
	// DH2: Differences from r1714: the definition is a smart pointer, the environment, the init-action block and the
	// DH2: frame-script table are heap objects created on demand (get_environment 0x780bb0, add_script 0x77e738), the
	// DH2: flags are single bytes (m_play_state is a byte, m_current_frame an int16), the canvas and the transform are
	// DH2: smart pointers, and there is no mask clip.
	struct sprite_instance : public character
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_SPRITE };
		virtual bool is(int class_id) const override;	// DH2: +0x08, 0x77ddc4; true for the class ids 2, 1 and 0

		#if 0 /* DH2: replaced by the members below, which follow the binary's order */
		gc_ptr<movie_definition_sub>	m_def;
		root*	m_root;

		display_list	m_display_list;
		array<action_buffer*>	m_action_list;
		array<action_buffer*>	m_goto_frame_action_list;

		play_state	m_play_state;
		int		m_current_frame;
		bool		m_update_frame;
		array<bool>	m_init_actions_executed;	// a bit-array class would be ideal for this

		as_environment	m_as_environment;

		enum mouse_state
		{
			UP = 0,
			DOWN,
			OVER
		};
		mouse_state m_mouse_state;
		bool m_enabled;
		bool m_on_event_load_called;
		gc_ptr<character> m_canvas;

		// flash9
		hash<int, gc_ptr<as_function> >* m_script;	// <frame, script>
		gc_ptr<as_function> m_frame_script;	// current script

		// for setMask
		weak_ptr<sprite_instance> m_mask_clip;
		#endif /* DH2 */

		// DH2: nested class at +0xdc, 0x20 bytes (operator new(0x20, 0) in the constructor). The two members are
		// DH2: the pending init actions of the movie and the "init actions done" flag of every frame. The bytes at
		// DH2: +0x0c and +0x1c are the m_borrowed members of the two arrays.
		struct init_actions
		{
			~init_actions();	// DH2: 0x780ea0
			array<action_buffer*>	m_actions;	// DH2: +0x00, run by do_init_actions through execute_actions
			array<bool>	m_executed;	// DH2: +0x10, one entry per frame (r1714: sprite_instance::m_init_actions_executed)
		};

		smart_ptr<movie_definition_sub>	m_def;	// +0xa0, counted (player::create_sprite_instance sets it through set_ref)
		root*	m_root;	// +0xa4

		display_list	m_display_list;	// +0xa8, 20 bytes
		array<action_buffer*>	m_action_list;	// +0xbc, the actions waiting for do_actions (16 bytes)
		array<action_buffer*>	m_goto_frame_action_list;	// +0xcc, actions of the frame goto_frame moved to (16 bytes)

		init_actions*	m_init_actions;	// +0xdc, allocated by the constructor when m_def->has_init_actions()
		as_environment*	m_as_environment;	// +0xe0, allocated by get_environment()

		Sint16	m_current_frame;	// +0xe4, r1714: int
		// +0xe5 padding
		Uint8	m_play_state;	// +0xe6, play_state; goto_frame sets STOP
		bool	unk_e7;	// +0xe7, cleared by the constructor and recycle, never read by the sprite (r1714's m_mouse_state slot?)
		bool	m_update_frame;	// +0xe8, set by the constructor and recycle; the value is inferred from r1714's initial value
		bool	m_has_on_enter_frame;	// +0xe9, set by notify_set_member for "onEnterFrame"; advance sends ENTER_FRAME
		bool	m_enabled;	// +0xea, the "enabled" property
		bool	m_constructed;	// +0xeb, set by construct()
		bool	m_on_event_load_called;	// +0xec
		// +0xed .. +0xef padding

		smart_ptr<character>	m_canvas;	// +0xf0, created by get_canvas() (r1714: gc_ptr)
		smart_ptr<as_transform>	m_transform;	// +0xf4, created by get_transform()

		// flash9
		hash<int, smart_ptr<as_function> >* m_script;	// +0xf8, <frame, script>; created by add_script
		smart_ptr<as_function> m_frame_script;	// +0xfc, current script

		sprite_instance(player* player, movie_definition_sub* def, root* r, character* parent, int id);	// DH2: 0x780718 (C1), 0x781074 (C2)
		virtual ~sprite_instance();	// DH2: +0x00 (D1 0x7815d0, D2 0x78146c), +0x04 (D0 0x781734)

		virtual const char*	_typeof() override;	// DH2: +0x18, 0x77de68
		virtual bool	set_member(const tu_stringi& name, const as_value& val) override;	// DH2: +0x1c, 0x780968
		virtual bool	get_member(const tu_stringi& name, as_value* val) override;	// DH2: +0x20, 0x77ffbc
		virtual bool	on_event(const event_id& id) override;	// DH2: +0x2c, 0x77f4a0
		virtual	void enumerate(as_environment* env) override;	// DH2: +0x30, 0x77e9a4
		virtual void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr) override;	// DH2: +0x40, 0x77ea10
		virtual void this_alive() override;	// DH2: +0x44, 0x780594
		virtual void dump(tu_string& tabs) override;	// DH2: +0x4c, 0x77f1c8
		virtual as_environment*	get_environment() override;	// DH2: +0x58, 0x780bb0
		virtual void advance(float delta_time) override;	// DH2: +0x5c, 0x78240c
		virtual void notify_set_member(const tu_stringi& name, const as_value& val) override;	// DH2: +0x60, 0x77fe60
		virtual void	recycle(character* parent, int id) override;	// DH2: +0x64, 0x780f3c
		virtual character* get_topmost_mouse_entity(float x, float y) override;	// DH2: +0x68, 0x77f00c; returns the entity or this/null
		virtual bool	hit_test(float x, float y) override;	// DH2: +0x6c, 0x7830ec (forwards to the three-argument form with 1)
		virtual void	get_mouse_state(int* x, int* y, int* buttons) override;	// DH2: +0x70, 0x77de4c (the root's)
		virtual float	get_pixel_scale() const override;	// DH2: +0x78, 0x77de30 (the root's)
		virtual character*	get_character(int character_id) override;	// DH2: +0x7c, 0x77de28; returns null
		virtual movie_definition*	get_movie_definition() override;	// DH2: +0x80, 0x77ddf0
		virtual character_def*	find_exported_resource(const tu_string& symbol) override;	// DH2: +0x84, 0x780528
		virtual const char*	call_method_args(const char* method_name, const char* method_arg_fmt, va_list args) override;	// DH2: +0x8c, 0x77f41c
		virtual tu_string	call_method(const char* method_name, as_value * arguments, int argument_count ) override;	// DH2: +0x90, 0x77ec44
		virtual void	set_play_state(play_state s) override;	// DH2: +0x94, 0x77fe10
		virtual play_state	get_play_state() const override;	// DH2: +0x98, 0x77de78
		virtual bool	goto_labeled_frame(const tu_stringi& label) override;	// DH2: +0x9c, 0x77dfd8 (r1714: const char*)
		virtual execute_tag*	find_previous_replace_or_add_tag(int frame, int depth, int id) override;	// DH2: +0xa0, 0x77de80
		virtual void	clear_display_objects() override;	// DH2: +0xa4, 0x77ed58
		virtual void	remove_display_object(character* ch) override;	// DH2: +0xa8, 0x77ec94
		virtual character* replace_me(character_def*	def) override;	// DH2: +0xac, 0x781750
		virtual character* replace_me(movie_definition*	md) override;	// DH2: +0xb0, 0x781d24
		virtual character*	add_display_object( Uint16 character_id, const tu_string& name,
			const array<swf_event*>& event_handlers, int depth, bool replace_if_depth_is_occupied,
			const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth) override;	// DH2: +0xb4, 0x77ed84
		virtual void	move_display_object( int depth, const cxform* color_transform, const matrix* mat, const effect* fx,
			float ratio, Uint16 clip_depth) override;	// DH2: +0xb8, 0x77ed68
		virtual void	replace_display_object( Uint16 character_id, const char* name, int depth, const cxform* color_transform,
			const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth) override;	// DH2: +0xbc, 0x77fb64
		virtual void	replace_display_object( character* ch, const char* name, int depth, const cxform* color_transform,
			const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth) override;	// DH2: +0xc0, 0x77f7e8
		virtual void	remove_display_object(int depth, int id) override;	// DH2: +0xc4, 0x77ed60
		virtual void	execute_frame_tags(int frame, bool state_only = false) override;	// DH2: +0xc8, 0x78215c (virtual: goto_frame calls it through the vtable)
		virtual void	add_action_buffer(action_buffer* a) override;	// DH2: +0xcc, 0x77e874
		virtual void do_actions(const array<action_buffer*>& action_list) override;	// DH2: +0xd0, 0x77ecd8
		virtual character*	clone_display_object(const tu_string& newname, int depth) override;	// DH2: +0xd4, 0x782a04
		virtual void	remove_display_object(const tu_string& name) override;	// DH2: +0xd8, 0x77ec9c
		virtual int	get_drag_state(drag_state* ds) override;	// DH2: +0xdc, 0x77e02c
		virtual void	set_drag_state(const drag_state& state) override;	// DH2: +0xe0, 0x77fdd0
		virtual void	stop_drag() override;	// DH2: +0xe4, 0x77ecd0
		virtual void	call_frame_actions(const as_value& frame_spec) override;	// DH2: +0xe8, 0x781898
		virtual void	set_background_color(const rgba& color) override;	// DH2: +0xec, 0x77e17c (the root's)
		virtual float	get_background_alpha() const override;	// DH2: +0xf4, 0x77e174 (the root's)
		virtual void	set_variable(const char* path_to_var, const char* new_value) override;	// DH2: +0x108, 0x77f6cc
		virtual void	set_variable(const char* path_to_var, const wchar_t* new_value) override;	// DH2: +0x10c, 0x77fcbc
		virtual const char*	get_variable(const char* path_to_var) const override;	// DH2: +0x110, 0x77f8d0
		virtual void	update_world_matrix() override;	// DH2: +0x118, 0x77e1d0
		virtual void	update_world_cxform() override;	// DH2: +0x11c, 0x77e184
		virtual void	display() override;	// DH2: +0x120, 0x7801e4
		virtual void get_bound(rect* bound) override;	// DH2: +0x12c, 0x77eac4
		virtual character_def* get_character_def() override;	// DH2: +0x130, 0x77dde8
		virtual character*	get_root_movie() override;	// DH2: +0x134, 0x77e16c (the root's)
		virtual int	get_current_frame() const override;	// DH2: +0x138, 0x77ddf8
		virtual int	get_frame_count() const override;	// DH2: +0x13c, 0x77de00
		virtual int get_loading_frame() const override;	// DH2: +0x140, 0x77de1c
		virtual void	construct() override;	// DH2: +0x148, 0x77efd8
		virtual int	goto_frame(int target_frame_number) override;	// DH2: +0x14c, 0x781a3c; 1 when the frame moved, 0 when the request was rejected
		virtual bool has_keypress_event() override;	// DH2: +0x158, 0x77f614
		virtual bool can_handle_mouse_event() override;	// DH2: +0x15c, 0x77f188
		virtual	bool is_enabled() const override;	// DH2: +0x170, 0x782de4
		using character::attach_display_callback;	// DH2: the +0x114 form (void (*)(void*)) stays reachable
		virtual void	attach_display_callback(const char* path_to_object, void (*callback)(render_state&, void*), void* user_ptr);	// DH2: +0x174, 0x77fa34

		// used in loadMovieClip()
		void	set_root(root* mroot) { m_root = mroot; }
		uint32	get_file_bytes() const;	// DH2: 0x77eaa4
		uint32	get_loaded_bytes() const;	// DH2: 0x77ea84

		#if 0 /* DH2: r1714's inline accessors; the binary has the virtual overrides declared above */
		root*	get_root() { return m_root; }
		virtual character_def* get_character_def() { return m_def.get_ptr();	}
		movie_definition*	get_movie_definition() { return m_def.get_ptr(); }
		#endif /* DH2 */

		character* add_empty_movieclip(const char* name, int depth);	// DH2: 0x7812c4

		#if 0 /* DH2: replaced by v1-vendor-gameswf-gameswf_sprite_instance-d5206d-0.cpp */
		character*	get_character(int character_id)
		{
			//			return m_def->get_character_def(character_id);
			// @@ TODO -- look through our dlist for a match
			if (character_id >= m_display_list.size())
			{
				return NULL;
			}

			return m_display_list.get_character(character_id);
		}
		#endif /* DH2 */

		//		virtual bool	has_looped() const { return m_has_looped; }

		inline int	transition(int a, int b) const
			// Combine the flags to avoid a conditional. It would be faster with a macro.
		{
			return (a << 2) | b;
		}

		void	execute_frame_tags_reverse(int frame);	// DH2: 0x77f390
		void	execute_remove_tags(int frame);	// DH2: 0x77df14
		int	get_frameid_from_label(const tu_stringi& label);	// DH2: 0x77df9c; -1 when the label is unknown
		void	set_frame_script(int frame);	// flash9; DH2: 0x77e2a8
		void	do_init_actions();	// DH2: 0x78069c
		void	do_actions();	// DH2: 0x781eac
		int	goto_frame(const tu_string& target_frame);	// DH2: 0x77ef6c, returns the result of the numeric goto (vtable +0x14c) or of the label lookup (+0x9c) (the int overload above is the virtual)

		int	get_id_at_depth(int depth);	// DH2: 0x77ed34
		int	get_highest_depth();	// DH2: 0x77ed2c

		//
		// ActionScript support
		//

		bool	hit_test(character* target);	// DH2: 0x782c94
		#if 0 /* DH2: the binary's overload takes floats (0x782f6c) */
		virtual bool	hit_test(double x, double y, bool shape_flag);
		#endif /* DH2 */
		bool	hit_test(float x, float y, bool shape_flag);	// DH2: 0x782f6c (r1714: double, double, bool)
		sprite_instance* attach_movie(const tu_string& id, const tu_string name, int depth);	// DH2: 0x782e60

		void local_to_global(as_object* pt);	// no out-of-line symbol in the binary
		void global_to_local(as_object* pt);	// no out-of-line symbol in the binary

		character* create_text_field(const char* name, int depth, int x, int y, int width, int height);	// DH2: 0x780c28

		// gameSWF extension
		void	set_fps(float fps);	// DH2: 0x77ea08

		// drawing API
		canvas* get_canvas();	// DH2: 0x7803c8

		as_transform* get_transform();	// DH2: 0x77ff40

		// flash9
		void add_script(int frame, as_function* func);	// DH2: 0x77e738
	};
}

#endif
