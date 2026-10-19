// gameswf_dlist.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// A list of active characters.


#ifndef GAMESWF_DLIST_H
#define GAMESWF_DLIST_H


#include "base/container.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_impl.h"
#include "vendor-gameswf/permanent_string_cache.hpp"	// DH2: gameswf::stringi_pointer, the key of the name table


namespace gameswf
{

	#define ADJUST_DEPTH_VALUE 16384

	// A struct to serve as an entry in the display list.
	//
	// DH2: the element is ONE smart pointer (4 bytes in the binary, array<display_object_info> has 4-byte
	// DH2: elements: array<display_object_info>::reserve 0x75552c, resize 0x7555a8, remove 0x755644, insert 0x7556b8).
	struct display_object_info
	{
		#if 0 /* DH2: r1714 holds gc_ptr<character>; the DH2 binary holds smart_ptr<character> */
		gc_ptr<character>	m_character;	// state is held in here
		#endif /* DH2 */
		smart_ptr<character>	m_character;	// DH2: +0x00, state is held in here

		display_object_info()
		{
		}

		display_object_info(const display_object_info& di)
		{
			*this = di;
		}

		~display_object_info()
		{
		}

		void	operator=(const display_object_info& di)
		{
			m_character = di.m_character;
		}

		void	set_character(character* ch)
		{
			m_character = ch;
		}

		static int compare(const void* _a, const void* _b); // For qsort().	DH2: 0x754e58
	};


	// A list of active characters.
	//
	// DH2: 20 bytes. It is the member at sprite_instance +0xa8: the character array, then the name table that
	// DH2: maps a character's name (by pointer) to the character, which get_character_by_name_i and
	// DH2: sprite_instance::get_member use. add_display_object enters a non-empty name, remove erases it.
	struct display_list
	{
		// DH2: the transform arguments of add_, move_ and replace_display_object are optional pointers (a null
		// DH2: pointer means "keep"/"identity"), as in character::add_display_object (gameswf_character.h).

		// TODO use better names!
		int	find_display_index(int depth);	// DH2: 0x754e80
		int	get_display_index(int depth);	// DH2: 0x754f68

		#if 0 /* DH2: replaced by the pointer forms below (binary 0x756588, 0x755c0c, 0x7567cc) */
		void	add_display_object( character* ch, int depth, bool replace_if_depth_is_occupied,
				const cxform& color_xform, const matrix& mat, float ratio, Uint16 clip_depth, Uint8 blend_mode);
		void	move_display_object( int depth, bool use_cxform, const cxform& color_xform, bool use_matrix,
				const matrix& mat, float ratio, Uint16 clip_depth, Uint8 blend_mode);
		void	replace_display_object( character* ch, int depth, bool use_cxform, const cxform& color_xform,
				bool use_matrix, const matrix& mat, float ratio, Uint16 clip_depth, Uint8 blend_mode);
		#endif /* DH2 */
		void	add_display_object( character* ch, int depth, bool replace_if_depth_is_occupied,
				const cxform* color_xform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth);	// DH2: 0x756588
		void	move_display_object( int depth, const cxform* color_xform, const matrix* mat, const effect* fx,
				float ratio, Uint16 clip_depth);	// DH2: 0x755c0c
		void	replace_display_object( character* ch, int depth, const cxform* color_xform, const matrix* mat,
				const effect* fx, float ratio, Uint16 clip_depth);	// DH2: 0x7567cc


		void	remove_display_object(character* ch);	// DH2: 0x756564
		~display_list();  // DH2: 0x77f288
		void	construct();  // DH2: 0x755a10, runs construct() on every child through the player's construct queue
		void	remove_display_object(int depth, int id);	// DH2: 0x7564ac

		void add_keypress_listener(character* ch);	// DH2: 0x755bb0
		void remove_keypress_listener(character* ch);	// DH2: 0x755b68

		// clear the display list.
		void	clear();	// DH2: 0x75647c

		// advance referenced characters.
		#if 0 /* DH2: the binary returns the OR of the advanced children's need-advance flags (0x755908) */
		void	advance(float delta_time);
		#endif /* DH2 */
		int	advance(float delta_time);	// DH2: 0x755908

		// display the referenced characters.
		void	display();	// DH2: 0x7552ac; r1714's display(const display_info&) is not in the binary

		int	size() { return m_display_object_array.size(); }
		character*	get_character(int index) { return m_display_object_array[index].m_character.get_ptr(); }

		// May return NULL.
		character*	get_character_at_depth(int depth);	// DH2: 0x754fa0

		// May return NULL.
		// If there are multiples, returns the *first* match only!
		character*	get_character_by_name(const tu_string& name);	// DH2: 0x756a68

		// returns index of ch
		int	get_character_by_ptr(const character* ch);	// DH2: 0x754fc0

		// May return NULL.
		// If there are multiples, returns the *first* match only!
		// DH2: looked up in the name table (0x755f58).
		character*	get_character_by_name_i(const tu_stringi& name);

		inline const display_object_info&	get_display_object(int idx) const
		// get the display object at the given position.
		{
			return m_display_object_array[idx];
		}

		void clear_unaffected(array<int>& affected_depths);	// DH2: 0x7563f8
		void swap_characters(character* ch, character* ch2);	// DH2: 0x7551cc
		void change_character_depth(character* ch, int depth);	// DH2: 0x755728
		int get_highest_depth();	// DH2: 0x755008

		void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);	// DH2: 0x755048
		void dump(tu_string& tabs);	// DH2: 0x756ae0

	private:

		void remove(int index);	// DH2: 0x7562e8

		array<display_object_info> m_display_object_array;	// DH2: +0x00, 16 bytes (the borrowed flag is the array's own)
		hash<stringi_pointer, character*, string_pointer_hash_functor<stringi_pointer> > m_name_table;	// DH2: +0x10, one table pointer; key is character::m_name
	};


}


#endif // GAMESWF_DLIST_H



// Local Variables:
// mode: C++
// c-basic-offset: 8
// tab-width: 8
// indent-tabs-mode: t
// End:
