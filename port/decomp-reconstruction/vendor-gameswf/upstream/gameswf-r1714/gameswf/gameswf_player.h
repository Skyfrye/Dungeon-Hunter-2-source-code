// gameswf.cpp	-- Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// gameswf player implementation
// Here are collected all static variables,
// init_action() and clear_libray()


#ifndef GAMESWF_PLAYER_H
#define GAMESWF_PLAYER_H

#include "base/utility.h"
#include "base/tu_loadlib.h"
#include "gameswf/gameswf_object.h"
#include "vendor-gameswf/permanent_string_cache.hpp"	// DH2: player::m_permanent_strings
#include "vendor-gameswf/player_context.hpp"	// DH2: player::m_context

namespace gameswf
{
	typedef exported_module as_object* (*gameswf_module_init)(player* player, const array<as_value>& params);

	as_value	get_property(as_object* obj, int prop_number);
	void	set_property(as_object* obj, int prop_number, const as_value& val);

	fscommand_callback	get_fscommand_callback();
	void	register_fscommand_callback(fscommand_callback handler);

	string_hash<tu_loadlib*>* get_shared_libs();
	void clear_shared_libs();

	void register_type_handler( const tu_string& type_name, gameswf_module_init type_init_func );
	void clear_registered_type_handlers();
	gameswf_module_init find_type_handler( const tu_string& type_name );

	// DH2: forward declarations for the Gameloft instance pools (player::create_*).
	struct edit_text_character;  // DH2
	struct edit_text_character_def;  // DH2
	struct generic_character;  // DH2
	struct sprite_instance;  // DH2
	struct movie_definition_sub;  // DH2

	// DH2: the layout of the binary (ARM32 offsets in the comments, the object is 0xe0 bytes; the vtable has the two
	// DH2: destructor slots only: ~player D1 +0x00 and D0 +0x04). Members are in binary order. The r1714 members that
	// DH2: the Gameloft build replaced stay under #if 0 where they were declared.
	struct player : public ref_counted
	{
		// +0x00 vptr, +0x04 m_ref_count, +0x08 m_weak_proxy (ref_counted)
#if 0 /* DH2: replaced by the array m_heap below (0x76d3d0 clear_heap and 0x76d2f8 clear_garbage walk an array; every as_object registers itself in its constructor) */
		hash<gc_ptr<as_object>, bool> m_heap;
#endif /* DH2 */
		array<smart_ptr<as_object> > m_heap;	// DH2: +0x0c, every live as_object (as_object::as_object appends this)
		array<smart_ptr<character> > m_construct_stack;	// DH2: +0x1c, display_list::construct (0x755a10) pushes the display list and pops it calling construct
		permanent_string_cache m_permanent_strings;	// DH2: +0x2c, interned strings (permanent_string_cache::get 0x75c2cc), 4 bytes (the hash table pointer)
		int m_garbage_count;	// DH2: +0x30, 1 at construction, incremented by set_as_garbage(); copied to as_object::m_alive_stamp (+0x34) by this_alive and by the create_* pools
#if 0 /* DH2: replaced by smart_ptr below */
		gc_ptr<as_object>	m_global;
#endif /* DH2 */
		smart_ptr<as_object>	m_global;	// +0x34 (get_global 0x76c7dc)
		smart_ptr<as_object>	m_stage;	// DH2: +0x38 (get_stage 0x76c7e4); an as_stage, built by the constructor
		// DH2: +0x3c padding (the 64-bit field below is 8-byte aligned)
		Uint64 m_start_ticks;	// DH2: +0x40, tu_timer::get_ticks() at action_init; the ActionGetTimer opcode (0x34) subtracts it
		weak_ptr<root> m_current_root;	// +0x48 weak proxy, +0x4c cached pointer (get_root 0x76d5b4)
		tu_string m_workdir;	// +0x50 (get_workdir 0x76c7ec)
#if 0 /* DH2: the binary's library table is case-insensitive (hash<tu_stringi, smart_ptr<character_def>, stringi_hash_functor>) */
		string_hash<gc_ptr<character_def> > m_chardef_library;
#endif /* DH2 */
		stringi_hash<gc_ptr<character_def> > m_chardef_library;	// +0x64 (get_chardef_library 0x76c800)
		tu_string m_flash_vars;	// +0x68 (set_flash_vars 0x76d5ac; root::advance passes it to root::set_flash_vars)
		as_value unk_7c;	// DH2: +0x7c, set to a new plain as_object by the constructor; no other reader
		as_value m_movieclip_ctor;	// DH2: +0x88, the C function as_global_movieclip_ctor; the constructor sets it
		void* m_render_fx;	// DH2: +0x94, the RenderFX that loaded this player (RenderFX::Load stores it; ClearFonts reads it), cleared by the constructor
		bool unk_98;	// DH2: +0x98, cleared by the constructor; no reader
#if 0 /* DH2: no counterpart in the binary (no accessor row in the queue, and the bytes at +0x94 and +0x98 are not these) */
		bool m_force_realtime_framerate;

		// it's used to watch texture memory
		bool m_log_bitmap_info;

		// Players count to release all static stuff at the right time
		static int s_player_count;
#endif /* DH2 */
		array<int> m_blend_mode_stack;	// DH2: +0x9c, array<blend_mode::id>; sprite_instance::display pushes the sprite's blend mode around the display list
		player_context* m_context;	// DH2: +0xac, set by the constructor; the render handler, glyph providers and video driver are reached through it

#if 0 /* DH2: replaced by the constructor taking the context */
		exported_module  player();
#endif /* DH2 */
		exported_module  player(player_context* context);	// DH2: 0x76f180 (C1), 0x76f3a0 (C2)
		exported_module  ~player();

		// external interface
		exported_module root* get_root();
		exported_module void set_root(root* m);
		exported_module character*	get_root_movie() const;	// DH2: no binary row (r1714 callers remain in action and array code)
		exported_module void notify_key_event(key::code k, bool down);
		exported_module void verbose_action(bool val);
		exported_module void verbose_parse(bool val);
		exported_module void set_flash_vars(const tu_string& param);
		exported_module const char* get_workdir() const;
		exported_module void set_workdir(const char* dir);
		exported_module	bool use_separate_thread();
		exported_module void set_separate_thread(bool flag);

		// @@ Hm, need to think about these creation API's.  Perhaps
		// divide it into "low level" and "high level" calls.  Also,
		// perhaps we need a "context" object that contains all
		// global-ish flags, libraries, callback pointers, font
		// library, etc.
		//
		// Create a gameswf::movie_definition from the given file name.
		// Normally, will also try to load any cached data file
		// (".gsc") that corresponds to the given movie file.  This
		// will still work even if there is no cache file.  You can
		// disable the attempts to load cache files by calling
		// gameswf::use_cache_files(false).
		//
		// Uses the registered file-opener callback to read the files
		// themselves.
		//
		// This calls add_ref() on the newly created definition; call
		// drop_ref() when you're done with it.
		// Or use smart_ptr<T> from base/smart_ptr.h if you want.
		exported_module movie_definition*	create_movie(const char* filename);
		exported_module	gc_ptr<root>  load_file(const char* filename);


		// Create/hook built-ins.
		exported_module void action_init();

		// Clean up any stray heap stuff we've allocated.
		exported_module void	action_clear();

		// library stuff, for sharing resources among different movies.
		stringi_hash<gc_ptr<character_def> >* get_chardef_library();	// DH2: stringi_hash (r1714: string_hash)
		const char* get_root_filename(const character_def* rdef);
		void clear_library();

		as_object* get_global() const;
		void notify_key_object(key::code k, bool down);

#if 0 /* DH2: no counterpart in the binary */
		exported_module const bool get_force_realtime_framerate() const;
		exported_module void set_force_realtime_framerate(const bool force_realtime_framerate);
		exported_module bool get_log_bitmap_info() const { return m_log_bitmap_info; }
		exported_module void set_log_bitmap_info(bool log_bitmap_info) { m_log_bitmap_info = log_bitmap_info; }
#endif /* DH2 */

		// the garbage manager
#if 0 /* DH2: no counterpart in the binary: an as_object registers itself in m_heap when it is constructed, and is alive when its m_alive_stamp equals m_garbage_count */
		void set_alive(as_object* obj);
		bool is_garbage(as_object* obj);
#endif /* DH2 */
		void clear_heap();
		void set_as_garbage();
		void clear_garbage();
		// DH2: Gameloft additions (not in upstream r1714). Binary offsets are in comments.
		as_object* get_stage() const;  // DH2: 0x76c7e4, returns m_stage (+0x38)
		void clear_unused_instances();  // DH2: 0x76c9d8
		edit_text_character* create_edit_text_character(edit_text_character_def* def, character* parent, int id);  // DH2: 0x76cb44
		generic_character* create_generic_character(character_def* def, character* parent, int id);  // DH2: 0x76cc00
		sprite_instance* create_sprite_instance(movie_definition_sub* def, root* r, character* parent, int id);  // DH2: 0x76ccf0
		void notify_unused_instance(character* ch);  // DH2: 0x773268

		// DH2: the recycled instance pools, the last three members of the object. create_* takes the last element, notify_unused_instance appends.
		array<smart_ptr<character> > m_unused_sprites;  // DH2: +0xb0, recycled sprite_instance pool
		array<smart_ptr<character> > m_unused_generic_characters;  // DH2: +0xc0, recycled generic_character pool
		array<smart_ptr<character> > m_unused_edit_text_characters;  // DH2: +0xd0, recycled edit_text_character pool
	};
}

#endif	// GAMESWF_PLAYER_H
