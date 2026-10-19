// gameswf_font.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// A font type for gameswf.


#ifndef GAMESWF_FONT_H
#define GAMESWF_FONT_H


#include "base/container.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_impl.h"
#if 0 /* DH2: the font does not use the FreeType provider of r1714 (the DH2 glyph_provider is in vendor-gameswf/glyph_provider.hpp, and its canvas is a different class from gameswf_canvas.h) */
#include "gameswf/gameswf_freetype.h"
#endif
#include "gameswf/gameswf_shape.h"	// DH2: shape_character_def (the glyph shapes) was reached through gameswf_freetype.h
#include "vendor-gameswf/ref_counted.hpp"	// DH2: gameswf::ref_counted, the entity pointer held by glyph
#include "vendor-gameswf/gameswf_hash_dh2.hpp"	// DH2: dh2_hash::bucket_count for the two table specializations below

class tu_file;

namespace gameswf
{
	struct shape_character_def;
	struct stream;
	struct bitmap_info;

	// Struct for holding (cached) textured glyph info.
	//
	// DH2: the binary's glyph is 36 bytes (array<glyph>::resize and push_back use the 36-byte stride). The advance is
	// DH2: first, there is no shape pointer (the shape glyph of r1714 is gone; static text draws the font's shape by
	// DH2: index), and the glyph index and the character code are 16-bit. Offsets from font::get_glyph (0x7d01bc),
	// DH2: text_glyph_record::read (0x78b858), display_glyph_records (0x78faa0) and edit_text_character::append_text.
	struct glyph
	{
		float m_glyph_advance;	// +0x00, 512.0 by default
		smart_ptr<bitmap_info> m_bitmap_info;	// +0x04
		rect m_bounds;	// +0x08, the origin of the glyph box, in uv coords: x_min, x_max, y_min, y_max
		ref_counted* m_entity;	// +0x18 DH2: the bitmap_font_entity or face_entity that produced the bitmap (borrowed; passed to the glyph texture caches)
		Sint16 m_fontsize;	// +0x1c
		Sint16 m_glyph_index;	// +0x1e, -1 when the glyph is not in the font
		Uint16 m_code;	// +0x20 DH2: the character code, read by edit_text_character::preload_glyphs
		Uint8 m_type;	// +0x22 DH2: 2 for the inline image made by edit_text_character::append_image, 0 otherwise

#if 0 /* DH2: replaced by the layout above (no shape pointer; index, size and code are 16-bit) */
		int m_glyph_index;
		float m_glyph_advance;
		gc_ptr<shape_character_def>	m_shape_glyph;
		gc_ptr<bitmap_info> m_bitmap_info;
		rect m_bounds;	// the origin of the glyph box, in uv coords
		int m_fontsize;
#endif

		glyph() :
			m_glyph_advance(512),
			m_entity(NULL),
			m_fontsize(0),
			m_glyph_index(-1),
			m_code(0),
			m_type(0)
		{
		}

		~glyph()
		{
		}

		bool	is_renderable() const
		// Return true if this can be used for rendering.
		{
			return m_bitmap_info != NULL;
		}

		void	set_bitmap_info(bitmap_info* bi)
		{
			m_bitmap_info = bi;
		}

	};

	// DH2: layout of the binary (ARM32 offsets in comments), 0x88 bytes (edit_text_character_def::edit_text_character_def
	// DH2: allocates it with operator new(0x88)). The array<T> members are 16 bytes (buffer, size, capacity, m_borrowed):
	// DH2: the bytes that earlier revisions of this header named unk_2c, unk_6c and unk_84 are the m_borrowed bytes of
	// DH2: m_glyphs (+0x2c), m_advance_table (+0x6c) and m_zone_table (+0x84).
	struct font : public character_def
	{
		font(player* player);	// DH2: 0x7cf8d8 (C1), 0x7cf984 (C2)
		~font();	// DH2: 0x7cf314 (D1), 0x7cf228 (D2), 0x7cf400 (D0)

		// Unique id of a gameswf resource
		enum { m_class_id = AS_FONT };
		virtual bool is(int class_id) const	// DH2: +0x08, 0x7ce39c
		{
			if (m_class_id == class_id) return true;
			else return character_def::is(class_id);
		}

		int	get_glyph_count() const { return m_glyphs.size(); }
		shape_character_def*	get_glyph_by_index(int glyph_index) const;	// DH2: 0x7ce3b8
#if 0 /* DH2: not in the binary (r1714 only used it to fill the shape glyph of text_character_def::display) */
		int	get_code_by_index(int glyph_index) const;
#endif

		void	read(stream* in, int tag_type, movie_definition_sub* m);
		void	read_font_info(stream* in, int tag_type);
		void	read_font_alignzones(stream* in, int tag_type);

		virtual void	output_cached_data(tu_file* out, const cache_options& options);	// DH2: +0x1c, 0x7ce3d0
		virtual void	input_cached_data(tu_file* in);	// DH2: +0x20, 0x7ce3d4

		const tu_string& get_name() const { return m_fontname; }
		void	set_name(const tu_string& name) { m_fontname = name; }
		bool	is_bold() const { return m_is_bold; }
		void	set_bold(bool bold) { m_is_bold = bold; }
		bool	is_italic() const { return m_is_italic; }
		void	set_italic(bool italic) { m_is_italic = italic; }

		movie_definition_sub*	get_owning_movie() const { return m_owning_movie; }

		bool	get_glyph(glyph* g, Uint16 code, int fontsize) const;	// DH2: 0x7d01bc
		float	get_kerning_adjustment(int last_code, int this_code) const;	// DH2: 0x7ce4a8
		float	get_leading() const { return m_leading; }
		float	get_descent() const { return m_descent; }
		// DH2: Gameloft additions (not in r1714).
		float	get_units_per_em() const;	// DH2: 0x7cf41c
		float	get_height() const;	// DH2: 0x7cf520
		void	copy_from(font* src);	// DH2: 0x7ce628, copies name, flag bytes, ascent, descent, leading, table hint
		bool	is_define_font3() const { return m_zone_table.size() == 0 ? false : true; }

		// DH2: the nested types are public here because the explicit hash<> specializations of the binary
		// DH2: (set_raw_capacity 0x7ce694 and 0x7ce998 and the others in the queue) name them from outside the class.

		// This table maps from Unicode character number to glyph index.
		// m_code_table[character_code] = glyph_index
		//
		// @@ TODO: avoid little allocs; replace this with a flat hash, or else a sorted array (binary search)
		template<class T>
		struct simple_code_hash
		// Dummy hash functor.
		{
			size_t	operator()(const T& data) const { return data; }
		};

		// @@ replace this with a flat hash, or else a sorted array (binary search)
		struct kerning_pair
		{
			Uint16	m_char0, m_char1;

			bool	operator==(const kerning_pair& k) const
			{
				return m_char0 == k.m_char0 && m_char1 == k.m_char1;
			}
		};

		// Alignment zones
		struct zone_record
		{
			struct zone_data
			{
				float m_alignment_coord;
				float m_range;
			};
			array<zone_data> m_zone_data;	// +0x00, 16 bytes

			bool m_has_maskx;	// +0x10
			bool m_has_masky;	// +0x11
		};	// 20 bytes

	private:
		void	read_code_table(stream* in);

		array<gc_ptr<shape_character_def> >	m_glyphs;	// +0x20 (buffer, size at +0x24, capacity, borrowed byte +0x2c)
		tu_string	m_fontname;	// +0x30
		movie_definition_sub*	m_owning_movie;	// +0x44
		bool	m_has_layout;	// +0x48
		bool	m_unicode_chars;	// +0x49
		bool	m_shift_jis_chars;	// +0x4a
		bool	m_ansi_chars;	// +0x4b
		bool	m_is_italic;	// +0x4c
		bool	m_is_bold;	// +0x4d
		bool	m_wide_codes;	// +0x4e

#if 0 /* DH2: the binary's code table maps to 16-bit glyph indices (12-byte entries) */
		hash<Uint16, int, simple_code_hash<Uint16> > m_code_table;
#endif
		hash<Uint16, Sint16, simple_code_hash<Uint16> > m_code_table;	// +0x50 DH2: value type short, entries are 12 bytes

		// Layout stuff.
		float	m_ascent;	// +0x54
		float	m_descent;	// +0x58
		float	m_leading;	// +0x5c
		array<float>	m_advance_table;	// +0x60 (buffer, size at +0x64, capacity, borrowed byte +0x6c)
		// @@ we don't seem to use this thing at all, so don't bother keeping it.
		// array<rect>	m_bounds_table;	// @@ this thing should be optional.

		hash<kerning_pair, float>	m_kerning_pairs;	// +0x70

		// Font thickness hint. Refers to the thickness of the typical stroke used in the font
		// 0 = thin, 1 = medium, 2 = thick
		Uint8 m_table_hint;	// +0x74

		array<zone_record> m_zone_table;	// +0x78 (buffer, size at +0x7c, capacity, borrowed byte +0x84)
	};

}	// end namespace gameswf

// DH2: explicit set_raw_capacity for the two font tables (the DH2 4-bucket minimum, as the other DH2 tables). Every translation
// unit that adds to m_code_table or m_kerning_pairs must see these declarations first. Bodies:
// vendor-gameswf/src/v1-vendor-gameswf-gameswf_font-a42405-1.cpp.
// 0x7ce694 gameswf::hash<unsigned short, short, gameswf::font::simple_code_hash<unsigned short> >::set_raw_capacity(int)
template <>
void hash<Uint16, Sint16, gameswf::font::simple_code_hash<Uint16> >::set_raw_capacity(int new_size);
// 0x7ce998 gameswf::hash<gameswf::font::kerning_pair, float, gameswf::fixed_size_hash<gameswf::font::kerning_pair> >::set_raw_capacity(int)
template <>
void hash<gameswf::font::kerning_pair, float, fixed_size_hash<gameswf::font::kerning_pair> >::set_raw_capacity(int new_size);

#endif // GAMESWF_FONT_H

// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
