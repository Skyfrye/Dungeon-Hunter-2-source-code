// gameswf_character.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Some implementation code for the gameswf SWF player library.


#ifndef GAMESWF_CHARACTER_H
#define GAMESWF_CHARACTER_H

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_function.h"
#include <assert.h>
#include "base/container.h"
#include "base/utility.h"
#include "base/weak_ptr.h"
#include "vendor-gameswf/effect.hpp"	// DH2: gameswf::effect, held by pointer and inside character::custom
#include "vendor-gameswf/render_state.hpp"	// DH2: gameswf::render_state, passed to display callbacks
#include <stdarg.h>

namespace glitch { namespace scene { class ISceneNode; } }	// DH2: attach_scene_node
namespace glitch { namespace core { template <class T> struct dimension2d; } }	// DH2: attach_scene_node (by value, complete only where it is called)

namespace gameswf
{
	struct root;
	struct swf_event;
	struct as_mcloader;
	struct scene_node;	// DH2: vendor-gameswf/gameswf_scene_node.hpp
	extern ::tu_string s_empty_name;	// DH2: the interned empty name that character::m_name points at by default (static initialiser 0x753318)

	// A character_def is the immutable data representing the template of a
	// movie element.
	//
	// @@ This is not really a public interface.  It's here so it
	// can be mixed into movie_definition, movie_definition_sub,
	// and sprite_definition, without using multiple inheritance.
	struct character_def : public as_object_interface
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_CHARACTER_DEF };
		virtual bool is(int class_id) const
		{
			return m_class_id == class_id;
		}

		character_def(player* player)	:
			m_id(-1),
			m_player(player)
		{
			assert(player);
		}

		virtual ~character_def() {}

		virtual void	display(character* instance_info) {}
		virtual bool	point_test_local(float x, float y) { return false; }
		virtual void get_bound(rect* bound) { assert(0); };

		// Should stick the result in a gc_ptr immediately.
		virtual character*	create_character_instance(character* parent, int id);	// default is to make a generic_character

		//
		// Caching.
		//

		virtual void	output_cached_data(tu_file* out, const cache_options& options) {}
		virtual void	input_cached_data(tu_file* in) {}

		// for definetext, definetext2 & defineedittext tags
		virtual void	csm_textsetting(stream* in, int tag_type) { assert(0); };

		void set_registered_class_constructor(const as_value & value);
		void instanciate_registered_class(character * ch);
		player* get_player() const { return m_player.get_ptr(); }

		// flash9
		virtual as_function* instanciate_class(character* ch) const { return NULL; }

		private:

		int	m_id;
		weak_ptr<as_function> m_registered_class_constructor;
		weak_ptr<player> m_player;

	};

	// Information about how to display a character.
	struct display_info
	{
		int	m_depth;
		cxform	m_color_transform;
		matrix	m_matrix;
		float	m_ratio;
		Uint16	m_clip_depth;

		display_info() :
			m_depth(0),
			m_ratio(0.0f),
			m_clip_depth(0)
		{
		}

		void	concatenate(const display_info& di)
		// Concatenate the transforms from di into our
		// transforms.
		{
			m_depth = di.m_depth;
			m_color_transform.concatenate(di.m_color_transform);
			m_matrix.concatenate(di.m_matrix);
			m_ratio = di.m_ratio;
			m_clip_depth = di.m_clip_depth;
		}
	};

	// character is a live, stateful instance of a character_def.
	// It represents a single active element in a movie.
	// internal interface
	//
	// DH2: the layout is the one of the DH2 binary (ARM32 offsets in comments; the constructor is 0x754a1c,
	// DH2: recycle 0x754958, the object is 0xa0 bytes). The local colour transform, matrix and effect are held
	// DH2: by pointer and default to the shared identity objects; set_cxform, set_matrix and set_effect move them
	// DH2: into the lazily allocated `custom` block. The world transforms are cached inline and refreshed on
	// DH2: demand (update_world_matrix, update_world_cxform) when the changed flags are set. The virtual
	// DH2: functions are declared in vtable slot order (380-byte vtable, 95 slots).
	struct character : public as_object
	{

		// Unique id of a gameswf resource
		enum { m_class_id = AS_CHARACTER };
		virtual bool is(int class_id) const	// DH2: +0x08, 0x752c28
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		// +0x00 vptr, +0x04 m_ref_count, +0x08 m_weak_proxy, +0x0c .. +0x37 as_object
		int		m_id;				// +0x38
		weak_ptr<character>		m_parent;	// +0x3c weak proxy, +0x40 raw pointer
		const tu_string*	m_name;			// +0x44, &s_empty_name by default; interned names are stored by address
		const cxform*	m_local_cxform;			// +0x48, &cxform::identity by default
		const matrix*	m_local_matrix;			// +0x4c, &matrix::identity by default
		const effect*	m_effect;			// +0x50, &effect::identity by default
		struct custom;
		custom*		m_custom;			// +0x54, allocated by set_matrix, set_cxform, set_effect, set_name, ...
		cxform		m_world_cxform;			// +0x58, 32 bytes, refreshed by update_world_cxform
		matrix		m_world_matrix;			// +0x78, 24 bytes, refreshed by update_world_matrix
		float		m_ratio;			// +0x90
		Uint16		m_depth;			// +0x94
		Uint16		m_clip_depth;			// +0x96
		signed char	m_kind;				// +0x98, the class id passed to the 4-argument constructor (AS_SPRITE, AS_GENERIC_CHARACTER, AS_EDIT_TEXT ...)
		bool		m_matrix_changed;		// +0x99, the world matrix needs update_world_matrix
		bool		m_cxform_changed;		// +0x9a, the world colour transform needs update_world_cxform
		bool		m_visible;			// +0x9b
		bool		m_has_mouse_handler;		// +0x9c, set by sprite_instance::notify_set_member for an on* handler name
		bool		m_need_advance;			// +0x9d, cleared by advance, set on the parent chain by notify_need_advance
		// +0x9e, +0x9f padding

		// DH2: nested drag state, 32 bytes. The fields are those of the binary's constructor and
		// DH2: do_mouse_drag (0x75e3a8); r1714 has the lock flag and the bound flag in another order, and the
		// DH2: bound rectangle as x_min, x_max, y_min, y_max.
		struct drag_state
		{
			character*	m_character;		// +0x00
			bool		m_dragging;		// +0x04, set by do_mouse_drag after the first step
			bool		m_lock_center;		// +0x05
			bool		m_bound;		// +0x06
			float		m_bound_x0;		// +0x08
			float		m_bound_y0;		// +0x0c
			float		m_bound_x1;		// +0x10
			float		m_bound_y1;		// +0x14
			float		m_offset_x;		// +0x18
			float		m_offset_y;		// +0x1c

			drag_state() :
				m_character(NULL),
				m_dragging(false),
				m_lock_center(false),
				m_bound(false),
				m_bound_x0(0.0f),
				m_bound_y0(0.0f),
				m_bound_x1(1.0f),
				m_bound_y1(1.0f),
				m_offset_x(0.0f),
				m_offset_y(0.0f)
			{
			}

			void Reset()
			{
				m_bound = false;
				m_character = NULL;
				m_lock_center = false;
			}

			bool IsLockCentered() const
			{
				return m_lock_center;
			}

			void SetLockCentered(bool locked)
			{
				m_lock_center = locked;
			}

			void SetOffset(float x, float y)
			{
				m_offset_x = x;
				m_offset_y = y;
			}

			float OffsetX() const { return m_offset_x; }
			float OffsetY() const { return m_offset_y; }

			bool GetBounds(rect* bounds) const
			{
				if (m_bound)
				{
					bounds->m_x_min = m_bound_x0;
					bounds->m_y_min = m_bound_y0;
					bounds->m_x_max = m_bound_x1;
					bounds->m_y_max = m_bound_y1;
					return true;
				}
				return false;
			}

			void SetBounds(float x0, float y0, float x1, float y1)
			{
				m_bound_x0 = x0;
				m_bound_y0 = y0;
				m_bound_x1 = x1;
				m_bound_y1 = y1;
				m_bound = true;
			}

			character* GetCharacter() const
			{
				return m_character;
			}

			void SetCharacter(character* ch)
			{
				m_character = ch;
			}
		};

		enum play_state
		{
			PLAY,
			STOP
		};

		character(player* player, character* parent, int id, int kind);	// DH2: 0x754a1c (C1), 0x754b28 (C2); generic_character passes AS_GENERIC_CHARACTER
		virtual ~character();	// DH2: +0x00 (D1 0x753470, D2 0x75dd74), +0x04 (D0 0x7534ec)

		// DH2: +0x64, 0x754958. Brings a pooled instance back into the state of a new one (the player keeps
		// DH2: unused sprite, generic and edit-text instances); sprite_instance and edit_text_character override it.
		virtual void	recycle(character* parent, int id);

		//
		// Mouse/Button interface.
		//
		virtual character* get_topmost_mouse_entity(float x, float y) { return NULL; }	// DH2: +0x68, 0x752c40
		virtual bool	hit_test(float x, float y);	// DH2: +0x6c, 0x752c48, always false in the base

		// The host app uses this to tell the movie where the
		// user's mouse pointer is.
		virtual void	get_mouse_state(int* x, int* y, int* buttons)	// DH2: +0x70, 0x754d70
		{
			get_parent()->get_mouse_state(x, y, buttons);
		}

		virtual bool	get_track_as_menu() const { return false; }	// DH2: +0x74

		virtual float			get_pixel_scale() const { return 1.0f; }	// DH2: +0x78
		virtual character*		get_character(int id) { return NULL; }	// DH2: +0x7c

		virtual movie_definition*	get_movie_definition()	// DH2: +0x80, 0x754df0
		{
			character* ch = get_parent();
			if (ch)
			{
				return ch->get_movie_definition();
			}
			return NULL;
		}

		virtual character_def*	find_exported_resource(const tu_string& symbol)	// DH2: +0x84, 0x754d08
		{
			character* ch = get_parent();
			if (ch)
			{
				return ch->find_exported_resource(symbol);
			}
			return NULL;
		}


		// @@ do we want a version that returns a number?

		// ActionScript method call.  Return value points to a
		// static string buffer with the result; caller should
		// use the value immediately before making more calls
		// to gameswf.

		// NOT THREAD SAFE!!!
		//
		// DO NOT USE TO CALL CLASS MEMBER!!!
		//
		// method_name is the name of the method (possibly namespaced).
		//
		// method_arg_fmt is a printf-style declaration of
		// the method call, where the arguments are
		// represented by { %d, %s, %f, %ls }, followed by the
		// vararg list of actual arguments.
		//
		// E.g.
		//
		// m->call_method("path.to.method_name", "%d, %s, %f", i, "hello", 2.7f);
		//
		// The format args are a small subset of printf, namely:
		//
		// %d -- integer arg
		// %s -- 0-terminated char* string arg
		// %ls -- 0-terminated wchar_t* string arg
		// %f -- float/double arg
		//
		// Whitespace and commas in the format string are ignored.
		//
		// This is not an ActionScript language parser, it
		// doesn't recognize expressions or anything tricky.

//#ifdef __GNUC__
		// use the following to catch errors: (only with gcc)
//		virtual const char*	call_method(const char* method_name, const char* method_arg_fmt, ...)
//			__attribute__((format (printf, 3, 4))) = 0;	// "this" is an implied param, so fmt is 3 and ... is 4!
//#else	// not __GNUC__
//		virtual const char*	call_method(const char* method_name, const char* method_arg_fmt, ...) = 0;
//#endif	// not __GNUC__

		// Forward vararg call to version taking va_list.
		virtual const char*	call_method(const char* method_name, const char* method_arg_fmt, ...)	// DH2: +0x88, 0x752e94
		{
			va_list	args;
			va_start(args, method_arg_fmt);
			const char*	result = call_method_args(method_name, method_arg_fmt, args);
			va_end(args);

			return result;
		}

		virtual const char*	call_method_args(const char* method_name, const char* method_arg_fmt, va_list args)	// DH2: +0x8c, 0x752c68
		// Override this if you implement call_method.
		{
			assert(0);
			return NULL;
		}

		virtual tu_string	call_method(const char* method_name, as_value * arguments, int argument_count )	// DH2: +0x90, 0x752c70
			// Override this if you implement call_method.
		{
			assert(0);
			return tu_string();
		}

		virtual void	set_play_state(play_state s) {}	// DH2: +0x94
		virtual play_state	get_play_state() const { assert(0); return STOP; }	// DH2: +0x98

		// Returns true if labeled frame is found.
		virtual bool	goto_labeled_frame(const tu_stringi& label) { assert(0); return false; }	// DH2: +0x9c, takes a tu_stringi (r1714: const char*)

		//
		// display-list management.
		//

		virtual execute_tag*	find_previous_replace_or_add_tag(int current_frame, int depth, int id)	// DH2: +0xa0
		{
			return NULL;
		}

		virtual void	clear_display_objects() { /* assert(0); */ }	// DH2: +0xa4
		virtual void	remove_display_object(character* ch) { assert(0); }	// DH2: +0xa8

		// replaces 'this' on md->create_instance()
		virtual character* replace_me(character_def*	def) { assert(0); return NULL; }	// DH2: +0xac
		virtual character* replace_me(movie_definition*	md) { assert(0); return NULL; }	// DH2: +0xb0

		// DH2: +0xb4, 0x752cdc. The colour transform, the matrix and the effect are optional pointers
		// DH2: (r1714: use flags and values), and the blend mode moved into the effect.
		virtual character*	add_display_object( Uint16 character_id, const tu_string& name, const array<swf_event*>& event_handlers, int depth, bool replace_if_depth_is_occupied, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
		{
			return NULL;
		}

		virtual void	move_display_object(int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth);	// DH2: +0xb8, 0x752ce4
		virtual void	replace_display_object(Uint16 character_id, const char* name, int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth);	// DH2: +0xbc, 0x752ce8
		virtual void	replace_display_object(character* ch, const char* name, int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth);	// DH2: +0xc0, 0x752cec

		virtual void	remove_display_object(int depth, int id)	{}	// DH2: +0xc4

		virtual void	execute_frame_tags(int frame, bool state_only = false) {}	// DH2: +0xc8
		virtual void	add_action_buffer(action_buffer* a) { assert(0); }	// DH2: +0xcc
		virtual void	do_actions(const array<action_buffer*>& action_list) { assert(0); }	// DH2: +0xd0

		virtual character*	clone_display_object(const tu_string& newname, int depth)	// DH2: +0xd4
		{
			assert(0);
			return NULL;
		}

		virtual void	remove_display_object(const tu_string& name) { assert(0); }	// DH2: +0xd8

		virtual int	get_drag_state(drag_state* ds);	// DH2: +0xdc, 0x754824; forwards to the parent (sprite_instance overrides at 0x77e02c)
		virtual void	set_drag_state(const drag_state& state);	// DH2: +0xe0, 0x752d0c
		virtual void	stop_drag() { assert(0); }	// DH2: +0xe4
		virtual void	call_frame_actions(const as_value& frame_spec) { assert(0); }	// DH2: +0xe8

		virtual void	set_background_color(const rgba& color) {}	// DH2: +0xec

		// Set to 0 if you don't want the movie to render its
		// background at all.  1 == full opacity.
		virtual void	set_background_alpha(float alpha) {}	// DH2: +0xf0

		virtual float	get_background_alpha() const { return 1.0f; }	// DH2: +0xf4

		// move/scale the movie...
		virtual void	set_display_viewport(int x0, int y0, int width, int height) {}	// DH2: +0xf8
		virtual void	set_display_bounds(int x0, int y0, int x1, int y1);	// DH2: +0xfc, 0x752d2c

		//
		// external
		//

		// Set and get userdata, that's useful for the fs_command handler.
		virtual void * get_userdata() { assert(0); return NULL; }	// DH2: +0x100
		virtual void set_userdata(void *) { assert(0); }	// DH2: +0x104

		// Set an ActionScript variable within this movie.
		// You can use this to set the value of text fields,
		// ordinary variables, or properties of characters
		// within the script.
		//
		// This version accepts UTF-8
		virtual void	set_variable(const char* path_to_var, const char* new_value)	// DH2: +0x108
		{
			assert(0);
		}

		// This version accepts UCS-2 or UCS-4, depending on sizeof(wchar_t)
		virtual void	set_variable(const char* path_to_var, const wchar_t* new_value)	// DH2: +0x10c
		{
			assert(0);
		}

		// @@ do we want versions that take a number?

		// Get the value of an ActionScript variable.
		//
		// Value is ephemeral & not thread safe!!!  Use it or
		// copy it immediately.
		//
		// Returns UTF-8
		virtual const char*	get_variable(const char* path_to_var) const	// DH2: +0x110
		{
			assert(0);
			return "";
		}

		// Display callbacks, for client rendering.  Callback
		// is called after rendering the object it's attached
		// to.
		//
		// Attach NULL to disable the callback.
		virtual void	attach_display_callback(const char* path_to_object, void (*callback)(void*), void* user_ptr)	// DH2: +0x114; sprite_instance has a separate overload taking the render_state callback
		{
			assert(0);
		}

		virtual void	update_world_matrix();	// DH2: +0x118, 0x754c34; binary returns int (r0 left over)
		virtual void	update_world_cxform();	// DH2: +0x11c, 0x75488c

		// Movie interfaces.  By default do nothing.  sprite_instance and some others override these.
		virtual void	display() {}	// DH2: +0x120
		virtual float	get_height();	// DH2: +0x124, 0x752e20
		virtual float	get_width();	// DH2: +0x128, 0x752ddc
		virtual void get_bound(rect* bound);	// DH2: +0x12c, 0x753264
		virtual character_def* get_character_def() { assert(0); return 0; }	// DH2: +0x130
		virtual character*	get_root_movie();	// DH2: +0x134, 0x7547b4, non-const (r1714: const)

		// Frame counts in this API are 0-based (unlike ActionScript)
		virtual int	get_current_frame() const { return -1; }	// DH2: +0x138
		virtual int	get_frame_count() const { return -1; }	// DH2: +0x13c
		virtual int get_loading_frame() const { return -1; }	// DH2: +0x140

		virtual bool	has_looped() const { assert(0); return false; }	// DH2: +0x144
		virtual void	construct();	// DH2: +0x148, 0x752d84, empty body
		virtual int	goto_frame(int target_frame);	// DH2: +0x14c, 0x752d94, returns 0 here (sprite_instance returns 1 when the frame moved)
		virtual bool	get_accept_anim_moves() const { return true; }	// DH2: +0x150

		virtual void	set_display_callback(void (*callback)(render_state&, void*), void* user_ptr);	// DH2: +0x154, 0x753508; stores into the custom block

		virtual bool has_keypress_event()	// DH2: +0x158
		{
			return false;
		}

		virtual bool can_handle_mouse_event() { return false; }	// DH2: +0x15c

		// Movie info
		virtual int	get_movie_version() { return 0; }	// DH2: +0x160
		virtual int	get_movie_width() { return 0; }	// DH2: +0x164
		virtual int	get_movie_height() { return 0; }	// DH2: +0x168
		virtual float	get_movie_fps() { return 0.0f; }	// DH2: +0x16c

		virtual	bool	is_enabled() const { return true; }	// DH2: +0x170

		// as_object virtuals overridden here (their slots are in the as_object range):
		virtual bool	get_member(const tu_stringi& name, as_value* val);	// DH2: +0x20, 0x75409c
		virtual bool	set_member(const tu_stringi& name, const as_value& val);	// DH2: +0x1c, 0x75361c
		using as_object::get_member;	// DH2: keeps the integer-id overloads of as_object (+0x24, +0x28) visible
		using as_object::set_member;
		virtual	void enumerate(as_environment* env);	// DH2: +0x30, 0x753260
		virtual void	advance(float delta_time);	// DH2: +0x5c, 0x752d88, clears the need-advance flag

		// Non-virtual functions of the DH2 class.

		// Accessors for basic display info.

		int	get_id() const { return m_id; }
		character*	get_parent() const { return m_parent.get_ptr(); }
		void	notify_need_advance();	// DH2: 0x7750e8, sets the flag on this character and every ancestor
		character*	get_world_cxform_root_change();	// DH2: 0x753e34, nearest-to-root ancestor with m_cxform_changed
		character*	get_world_matrix_root_change();	// DH2: 0x753ee8, nearest-to-root ancestor with m_matrix_changed
		void set_parent(character* parent) { m_parent = parent; }  // for extern movie
		int	get_depth() const { return m_depth; }
		void	set_depth(int d) { m_depth = (Uint16) d; }
		const matrix&	get_matrix() const { return *m_local_matrix; }
		const cxform&	get_cxform() const { return *m_local_cxform; }
		const effect&	get_effect() const { return *m_effect; }
		void	set_matrix(const matrix& m);	// DH2: 0x4121f8, stores into the custom block
		void	set_cxform(const cxform& cx);	// DH2: 0x75355c, stores into the custom block
		void	set_effect(const effect& fx);	// DH2: 0x755cf8, copies into the custom block
		void	set_name(const tu_string& name);	// DH2: 0x7535b8, an interned name is kept by address
		const tu_string&	get_name() const { return *m_name; }
		float	get_ratio() const { return m_ratio; }
		void	set_ratio(float f) { m_ratio = f; }
		Uint16	get_clip_depth() const { return m_clip_depth; }
		void	set_clip_depth(Uint16 d) { m_clip_depth = d; }

		// DH2: the world transforms are cached in the object and returned by pointer. Both refresh the cache
		// DH2: first when the changed flag is set on this character or an ancestor.
		const matrix*	get_world_matrix();	// DH2: 0x753f74
		const cxform*	get_world_cxform();	// DH2: 0x753ec0

		// Visibility is a plain flag in the DH2 build.
		void	set_visible(bool visible) { m_visible = visible; }
		bool	get_visible() const { return m_visible; }

		void	do_display_callback();	// DH2: 0x753f9c; builds a render_state and calls the custom block's callback
		void	attach_scene_node(glitch::scene::ISceneNode* parent, glitch::core::dimension2d<int> size, bool reset);	// DH2: 0x753c10
		void	detach_scene_node();	// DH2: 0x7531e4
		int	do_mouse_drag();	// DH2: 0x75e3a8

		// DH2: the binary has no such function; where it asks (as_s_function::operator(), 0x7d2fe8) it inlines "the depth is not 0, or there is no
		// DH2: parent and the id is -1 (the root)". r1714 asks m_depth > 0.
		bool is_alive() const { return m_depth != 0 || (get_parent() == NULL && m_id == -1); }

		custom*	ensure_custom();	// DH2: allocates the custom block when m_custom is null (the binary inlines this in every setter)

		// DH2: Gameloft per-character block, 0x6c bytes (operator new(0x6c) with hint 0, constructor 0x412160,
		// DH2: destructor 0x7533c0). It is allocated on the first set_matrix, set_cxform, set_effect, set_name,
		// DH2: set_display_callback or attach_scene_node and lives until the character is destroyed.
		struct custom
		{
			custom();	// DH2: 0x412160
			~custom();	// DH2: 0x7533c0

			cxform	m_cxform;		// +0x00 local colour transform (identity)
			matrix	m_matrix;		// +0x20 local matrix (identity)
			effect	m_effect;		// +0x38 local effect: blend mode +0x38, filters +0x3c (20 bytes)
			tu_string	m_name;		// +0x4c own copy of a non-interned name (20 bytes)
			void	(*m_display_callback)(render_state&, void*);	// +0x60
			void*	m_display_callback_user_ptr;	// +0x64
			scene_node*	m_scene_node;	// +0x68, the glitch scene node this character is drawn through
		};
	};

}

#endif
