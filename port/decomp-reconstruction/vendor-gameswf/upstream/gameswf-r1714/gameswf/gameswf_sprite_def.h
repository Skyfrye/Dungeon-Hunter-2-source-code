// gameswf_sprite_def.cpp	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Some implementation for SWF player.

// Useful links:
//
// http://sswf.sourceforge.net/SWFalexref.html
// http://www.openswf.org

//
// sprite_definition
//


// A sprite is a mini movie-within-a-movie.  It doesn't define
// its own characters; it uses the characters from the parent
// movie, but it has its own frame counter, display list, etc.
//
// The sprite implementation is divided into a
// sprite_definition and a sprite_instance.  The _definition
// holds the immutable data for a sprite, while the _instance
// contains the state for a specific instance being updated
// and displayed in the parent movie's display list.

#ifndef GAMESWF_SPRITE_DEF_H
#define GAMESWF_SPRITE_DEF_H


#include "gameswf/gameswf.h"
#include "gameswf/gameswf_movie_def.h"	// DH2: movie_definition_sub (the header is now self-contained)
#include "base/container.h"
#include "vendor-gameswf/permanent_string_cache.hpp"	// DH2: gameswf::stringi_pointer, the key of m_named_frames

namespace gameswf
{

	struct sprite_definition : public movie_definition_sub
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_SPRITE_DEF };
		virtual bool is(int class_id) const	// DH2: +0x08, 0x7830f4
		{
			if (m_class_id == class_id) return true;
			else return movie_definition_sub::is(class_id);
		}

		// DH2: 0x5c bytes (operator new(0x5C) in sprite_instance::add_empty_movieclip). The members start at +0x44,
		// DH2: after movie_definition_sub (constructor 0x783650, destructor 0x783338/0x783534).
		movie_definition_sub*	     m_movie_def;		// +0x44, parent movie (a plain pointer: the constructor adds no reference).
		array<array<execute_tag*> >  m_playlist;	// +0x48, movie control events for each frame (16 bytes).
		#if 0 /* DH2: replaced by the stringi_pointer table below */
		stringi_hash<int>	     m_named_frames;	// stores 0-based frame #'s
		#endif /* DH2 */
		hash<stringi_pointer, int, string_pointer_hash_functor<stringi_pointer> >	m_named_frames;	// DH2: +0x58, stores 0-based frame #'s; the key points at an interned string (permanent_string_cache)

		sprite_definition(player* player, movie_definition_sub* m);	// DH2: 0x783764 (C1), 0x783650 (C2)
		virtual ~sprite_definition();	// DH2: +0x00 (D1 0x783534, D2 0x783338), +0x04 (D0 0x7835f0)

		// DH2: the overrides below are in vtable slot order (200-byte vtable).

		// overloads from character_def
		virtual character*	create_character_instance(character* parent, int id) override;	// DH2: +0x18, 0x75f5d0

		virtual void	output_cached_data(tu_file* out, const cache_options& options)	// DH2: +0x1c, 0x783258 (bx lr)
		{
			// Nothing to do.
			return;
		}
		virtual void	input_cached_data(tu_file* in)	// DH2: +0x20, 0x78325c (bx lr)
		{
			// Nothing to do.
			return;
		}

		// overloads from movie_definition
		virtual int	get_version() const	// DH2: +0x2c, 0x783158
		{
			if (m_movie_def)
			{
				return m_movie_def->get_version();
			}
			return 0;
		}
		virtual float	get_width_pixels() const { return 1; }	// DH2: +0x30, 0x78311c
		virtual float	get_height_pixels() const { return 1; }	// DH2: +0x34, 0x783124
		// +0x38 get_frame_count is movie_definition_sub's
		virtual float	get_frame_rate() const	// DH2: +0x3c, 0x78312c
		{
			if (m_movie_def)
			{
				return m_movie_def->get_frame_rate();
			}
			return 0;
		}
		virtual root*	create_instance()	// DH2: +0x40, 0x783260
		{
			return NULL;
		}

#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0.cpp */
		virtual void	visit_imported_movies(import_visitor* v) { assert(0); }
#endif
		virtual void	visit_imported_movies(import_visitor* v);	// DH2: +0x44, 0x783238, out-of-line (bx lr)

		// @@ would be nicer to not inherit these...
		virtual int	get_bitmap_info_count() const { assert(0); return 0; }	// DH2: +0x48, 0x783204
		virtual bitmap_info*	get_bitmap_info(int i) const { assert(0); return NULL; }	// DH2: +0x4c, 0x78320c

		const array<execute_tag*>&	get_playlist(int frame_number)	// DH2: +0x50, 0x783270
		// frame_number is 0-based
		{
			return m_playlist[frame_number];
		}

		virtual const array<execute_tag*>*	get_init_actions(int frame_number)	// DH2: +0x54, 0x78327c
		{
			// Sprites do not have init actions in their
			// playlists!  Only the root movie
			// (movie_def_impl) does (@@ correct?)
			return NULL;
		}

		virtual character_def*	get_exported_resource(const tu_string& sym) { return m_movie_def->get_exported_resource(sym); }	// DH2: +0x58, 0x783218
		virtual character_def*	get_character_def(int id)	// DH2: +0x5c, 0x78323c
		{
			return m_movie_def->get_character_def(id);
		}

		/* sprite_definition */
		bool	get_labeled_frame(const char* label, int* frame_number)
			// Returns 0-based frame #
		{
			tu_string	text(label);
			return m_named_frames.get(stringi_pointer{&text}, frame_number);
		}
		// DH2: the binary has no const char* version; its vtable slot is the tu_stringi form below. This r1714 form is no
		// longer an override (movie_definition_sub declares the tu_stringi form); it stays for r1714 callers.
		// DH2: Gameloft signature (vtable +0x60, 0x7832e4). Out-of-line in the batch .cpp.
		virtual bool	get_labeled_frame(const tu_stringi& label, int* frame_number) override;

#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0.cpp */
		virtual void	add_abc(tu_string& name, abc_def* abc) { assert(0); };
		virtual void	add_symbol_class(int character_id, const tu_string& class_name) { assert(0); };
		virtual void	add_scene(int character_id, const tu_string& class_name) { assert(0); };
		virtual void	add_frame_label(int character_id, const tu_string& class_name) { assert(0); };
#endif
		// DH2: the bodies are out-of-line in the batch .cpp. The binary bodies are bx lr (no assert).
		virtual void	add_symbol_class(int character_id, const tu_string& class_name);	// DH2: +0x64, 0x783188
		virtual void	add_scene(int character_id, const tu_string& class_name);	// DH2: +0x68, 0x78318c
		virtual void	add_frame_label(int character_id, const tu_string& class_name);	// DH2: +0x6c, 0x783190
		virtual void	add_abc(tu_string& name, abc_def* abc);	// DH2: +0x70, 0x783184
		virtual void	add_character(int id, character_def* ch) { log_error("add_character tag appears in sprite tags!\n"); }	// DH2: +0x74, 0x7832d4
		virtual void	add_font(int id, font* ch) { log_error("add_font tag appears in sprite tags!\n"); }	// DH2: +0x78, 0x7832c4
		virtual font*	get_font(int id) { return m_movie_def->get_font(id); }	// DH2: +0x7c, 0x783194

		/* sprite_definition */
		virtual void	add_execute_tag(execute_tag* c)	// DH2: +0x80, 0x7834ec
		{
			m_playlist[get_loading_frame()].push_back(c);
		}

		/* sprite_definition */
		virtual void	add_init_action(int sprite_id, execute_tag* c)	// DH2: +0x84, 0x7832b4
		{
			// Sprite def's should not have do_init_action tags in them!  (@@ correct?)
			log_error("sprite_definition::add_init_action called!  Ignored.\n");
		}

		// DH2: Gameloft virtual (vtable +0x88, 0x783268); the binary returns 0. Out-of-line in the batch .cpp.
		virtual int	has_init_actions() override;

		/* sprite_definition */
		#if 0 /* DH2: replaced by the out-of-line form below (the label is interned through the player's permanent_string_cache) */
		virtual void	add_frame_name(const char* name)
			// Labels the frame currently being loaded with the
			// given name.	A copy of the name string is made and
			// kept in this object.
		{
			tu_string	n = name;
			int	currently_assigned = 0;
			if (m_named_frames.get(n, &currently_assigned) == true)
			{
				log_error("add_frame_name(%d, '%s') -- frame name already assigned to frame %d; overriding\n",
					get_loading_frame(),
					name,
					currently_assigned);
			}
			m_named_frames.set(n, get_loading_frame());	// stores 0-based frame #
		}
		#endif /* DH2 */
		virtual void	add_frame_name(const char* name);	// DH2: +0x8c, 0x783878. Out-of-line in the batch .cpp.

#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0.cpp */
		virtual void	set_jpeg_loader(jpeg::input* j_in) { assert(0); }
#endif
		virtual void	set_jpeg_loader(jpeg::input* j_in);	// DH2: +0x90, 0x7831b0, out-of-line in the batch .cpp (bx lr)
		virtual jpeg::input*	get_jpeg_loader() { return NULL; }	// DH2: +0x94, 0x7831b4
		virtual bitmap_character_def*	get_bitmap_character(int id) { return m_movie_def->get_bitmap_character(id); }	// DH2: +0x98, 0x7831bc
		virtual void	add_bitmap_character(int id, bitmap_character_def* ch) { log_error("add_bc appears in sprite tags!\n"); }	// DH2: +0x9c, 0x7832a4
		virtual sound_sample*	get_sound_sample(int id) { return m_movie_def->get_sound_sample(id); }	// DH2: +0xa0, 0x7831d8
		virtual void	add_sound_sample(int id, sound_sample* sam) { log_error("add sam appears in sprite tags!\n"); }	// DH2: +0xa4, 0x783294

		virtual void	export_resource(const tu_string& symbol, character_def* res) { log_error("can't export from sprite\n"); }	// DH2: +0xa8, 0x783284
#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0.cpp */
		virtual void	add_import(const tu_string& source_url, int id, const tu_string& symbol) { assert(0); }
#endif
		virtual void	add_import(const tu_string& source_url, int id, const tu_string& symbol);	// DH2: +0xac, 0x783234, out-of-line (bx lr)
#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0.cpp */
		virtual void	add_bitmap_info(bitmap_info* bi) { assert(0); }
#endif
		virtual void	add_bitmap_info(bitmap_info* bi);	// DH2: +0xb0, 0x783214, out-of-line in the batch .cpp (bx lr)

		virtual create_bitmaps_flag	get_create_bitmaps() const { assert(0); return DO_LOAD_BITMAPS; }	// DH2: +0xb4, 0x7831f4
		virtual create_font_shapes_flag	get_create_font_shapes() const { assert(0); return DO_LOAD_FONT_SHAPES; }	// DH2: +0xb8, 0x7831fc
		// +0xbc is_multithread is movie_definition_sub's

		void	read(stream* in);	// DH2: 0x7833f4
		// Read the sprite info.  Consists of a series of tags.
	};
}

#endif
