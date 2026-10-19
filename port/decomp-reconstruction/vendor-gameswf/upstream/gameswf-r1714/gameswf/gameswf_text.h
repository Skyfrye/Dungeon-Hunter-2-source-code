// gameswf_text.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Code for the text tags.


//TODO: csm_textsetting() is common for text_def & edit_text_def
//	therefore make new base class for text_def & edit_text_def
//	and move csm_textsetting() to it.

#ifndef GAMESWF_TEXT_H	// DH2: the header has no guard in r1714; html_reader.hpp includes it as well
#define GAMESWF_TEXT_H

#include "base/utf8.h"
#include "base/utility.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_font.h"
#include "gameswf/gameswf_render.h"
#include "gameswf/gameswf_as_classes/as_textformat.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_movie_def.h"
#include "vendor-gameswf/render_cache.hpp"	// DH2: edit_text_character::m_render_cache

namespace gameswf
{


	void	as_global_textfield_ctor(const fn_call& fn);

	struct filter;
	struct player_context;

	// DH2: Gameloft helpers of the text code, defined in src/v1-vendor-gameswf-gameswf-fddef6-3.cpp.
	void	removeHTML(tu_string& text);	// 0x78b4d8
	int	preload_glyph_codes(player_context* context, Uint16* codes, int count, font* fnt, int size, const filter* flt);	// 0x78b240

	struct text_glyph_record;
	// DH2: 0x78faa0 (static in the binary). Renders the records; color_override replaces the RGB and scales the alpha of every
	// glyph colour, blur, offset_x and offset_y select the filtered glyph image of the glyph texture cache (all zero for no filter).
	void	display_glyph_records(const matrix* this_mat, character* inst, array<text_glyph_record>& records, movie_definition_sub* root_def, rgba* color_override, Uint8 blur, Uint8 offset_x, Uint8 offset_y);

	// Helper struct.
	//
	// DH2: 0x20 bytes (the glyph record is 48 bytes: this style, then the glyph array at +0x20). Offsets from
	// DH2: text_character_def::read (0x78be90), the copy constructor (0x78a8b8), resolve_font (0x78ae50) and
	// DH2: display_glyph_records (0x78faa0). r1714 has the scale, the leading and the last font here; the DH2 style
	// DH2: has an underline flag, a counted font and one more flag byte instead.
	struct text_style
	{
		int	m_font_id;	// +0x00
		smart_ptr<font>	m_font;	// +0x04 DH2: counted (r1714: mutable font*)
		rgba	m_color;	// +0x08
		bool	m_underline;	// +0x0c DH2: display_glyph_records draws a line under the glyph run when set
		float	m_x_offset;	// +0x10
		float	m_y_offset;	// +0x14
		float	m_text_height;	// +0x18
		bool	m_has_x_offset;	// +0x1c
		bool	m_has_y_offset;	// +0x1d
		bool	unk_1e;	// +0x1e DH2: resolve_font only looks the font up when this is set; set to 1 by the constructor, text_character_def::read and edit_text_character::append_text

#if 0 /* DH2: replaced by the layout above (no last font, scale or leading in the binary's style) */
		int	m_font_id;
		mutable font*	m_font;
		mutable font*   m_lastfont;
		rgba	m_color;
		float	m_x_offset;
		float	m_y_offset;
		float	m_text_height;
		bool	m_has_x_offset;
		bool	m_has_y_offset;
		float m_scale;
		float m_leading;
#endif

		text_style() :
			m_font_id(-1),
			m_font(NULL),
			m_underline(false),
			m_x_offset(0),
			m_y_offset(0),
			m_text_height(1.0f),
			m_has_x_offset(false),
			m_has_y_offset(false),
			unk_1e(true)
		{
		}

		void	resolve_font(movie_definition_sub* root_def)	// DH2: 0x78ae50, not const (r1714: const with a mutable font)
		{
			if (m_font == NULL && unk_1e)
			{
				m_font = root_def->get_font(m_font_id);
				if (m_font == NULL)
				{
					log_error("error: text style with undefined font; font_id = %d\n", m_font_id);
				}
			}
		}
	};


	// Helper structs.

	struct text_glyph_record
	{
		text_style	m_style;	// +0x00
		array<glyph>	m_glyphs;	// +0x20 (buffer, size at +0x24, capacity, borrowed byte +0x2c)

		text_glyph_record()
		{
		}

		text_glyph_record(const text_glyph_record& rec);	// DH2: 0x78a8b8
		~text_glyph_record();	// DH2: 0x78a5b8

		void	read(stream* in, int glyph_count, int glyph_bits, int advance_bits)	// 0x78b858
		{
			m_glyphs.resize(glyph_count);
			for (int i = 0; i < glyph_count; i++)
			{
				m_glyphs[i].m_glyph_index = in->read_uint(glyph_bits);
				m_glyphs[i].m_glyph_advance = (float) in->read_sint(advance_bits);
			}
		}
	};

	//
	// text_character_def
	//

	// DH2: 0x6c bytes; the object has no m_is_glyphs_drawn (display draws the records directly).
	struct text_character_def : public character_def
	{
		movie_definition_sub*	m_root_def;	// +0x20
		rect	m_rect;	// +0x24
		matrix	m_matrix;	// +0x34
		array<text_glyph_record>	m_text_glyph_records;	// +0x4c (buffer, size at +0x50, capacity, borrowed byte +0x58)

		// Flash 8
		bool m_use_flashtype;	// +0x5c
		int m_grid_fit;	// +0x60
		float m_thickness;	// +0x64
		float m_sharpness;	// +0x68

#if 0 /* DH2: not in the binary (text_character_def::display no longer renders glyphs on startup) */
		// it's used to draw glyphs on startup
		bool m_is_glyphs_drawn;
#endif

		text_character_def(player* player, movie_definition_sub* root_def);	// DH2: 0x78dc40 (C1), 0x78dd68 (C2)
		virtual ~text_character_def();	// DH2: +0x00 0x78be3c (D1), +0x04 0x78bde0 (D0)

		void	read(stream* in, int tag_type, movie_definition_sub* m);	// 0x78be90
		virtual void	display(character* inst);	// DH2: +0x0c, 0x790a7c
		virtual void get_bound(rect* bound);	// +0x14, 0x78a324
		virtual void	csm_textsetting(stream* in, int tag_type);	// +0x24, 0x78b474
	};

	//
	// edit_text_character_def
	//

	// DH2: 0xa0 bytes, allocated by sprite_instance::create_text_field. The members are in the order of r1714; the
	// DH2: tu_string members are 20 bytes each (their hash cache words sit at +0x44 and +0x8c).
	struct edit_text_character_def : public character_def
	// A definition for a text display character, whose text can
	// be changed at runtime (by script or host).
	{
		movie_definition_sub*	m_root_def;	// +0x20
		rect			m_rect;	// +0x24
		tu_string		m_var_name;	// +0x34
		bool			m_word_wrap;	// +0x48
		bool			m_multiline;	// +0x49
		bool			m_password;	// +0x4a, show asterisks instead of actual characters
		bool			m_readonly;	// +0x4b
		bool			m_auto_size;	// +0x4c, resize our bound to fit the text
		bool			m_no_select;	// +0x4d
		bool			m_border;	// +0x4e, forces white background and black border -- silly, but sometimes used
		bool			m_html;	// +0x4f
		bool			m_use_outlines;	// +0x50, when true, use specified SWF internal font.  Otherwise, renderer picks a default font
		int				m_font_id;	// +0x54
		font*			m_font;	// +0x58, raw: the constructors and create_character_instance store it without a count
		float			m_text_height;	// +0x5c
		rgba			m_color;	// +0x60
		int				m_max_length;	// +0x64

		enum alignment
		{
			ALIGN_LEFT = 0,
			ALIGN_RIGHT,
			ALIGN_CENTER,
			ALIGN_JUSTIFY	// probably don't need to implement...
		};
		alignment	m_alignment;	// +0x68

		float			m_left_margin;	// +0x6c, extra space between box border and text
		float			m_right_margin;	// +0x70
		float			m_indent;	// +0x74, how much to indent the first line of multiline text
		float			m_leading;	// +0x78, extra space between lines (in addition to default font line spacing)
		tu_string	m_default_text;	// +0x7c

		// Flash 8
		bool			m_use_flashtype;	// +0x90
		int				m_grid_fit;	// +0x94
		float			m_thickness;	// +0x98
		float			m_sharpness;	// +0x9c

		edit_text_character_def(player* player, int width, int height);	// DH2: 0x78d970 (C1), 0x78dad8 (C2)
		edit_text_character_def(player* player, movie_definition_sub* root_def);	// DH2: 0x78d6d0 (C1), 0x78d874 (C2)
		virtual ~edit_text_character_def();	// DH2: +0x00 0x78c4dc (D1) and 0x78c57c (D2), +0x04 0x78c560 (D0)

		virtual void get_bound(rect* bound) {	*bound = m_rect; }	// +0x14, 0x78a2e4
		virtual character*	create_character_instance(character* parent, int id);	// +0x18, 0x78cad4
		virtual void	csm_textsetting(stream* in, int tag_type);	// +0x24, 0x78b410
		void	read(stream* in, int tag_type, movie_definition_sub* m);	// 0x78b610
	};

	//
	// edit_text_character
	//

	// DH2: 0x198 bytes (player::create_edit_text_character allocates it with operator new(0x198)); 32-bit offsets in
	// DH2: comments. The upstream members that the DH2 build dropped are under #if 0. The text layout state
	// DH2: (m_last_line_start_record, m_last_space_record, m_last_space_glyph) that r1714 keeps in locals of
	// DH2: format_plain_text is a member here, because append_text is called once per run of text.
	struct edit_text_character : public character
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_EDIT_TEXT };
		virtual bool is(int class_id) const	// DH2: +0x08, 0x78a2f8
		{
			if (m_class_id == class_id) return true;
			else return character::is(class_id);
		}

		// DH2: a run of text with its attributes, 16 bytes. format_text builds one from the character's own
		// DH2: colour, height and font; html_reader::parse keeps a stack of them (<font>, <b>, ...).
		struct text_attributes
		{
			smart_ptr<font>	m_font;	// +0x00
			int	m_height;	// +0x04, in twips
			rgba	m_color;	// +0x08
			bool	m_underline;	// +0x0c

			text_attributes() :
				m_height(12),
				m_color(0, 0, 0, 1),
				m_underline(false)
			{
			}
		};

		gc_ptr<edit_text_character_def>	m_def;	// +0xa0
		array<text_glyph_record>	m_text_glyph_records;	// +0xa4 (buffer, size at +0xa8, capacity, borrowed byte +0xb0)
		array<fill_style>	m_dummy_style;	// +0xb4, used to pass a color on to shape_character::display()
		array<line_style>	m_dummy_line_style;	// +0xc4
		// +0xd4 padding
		render_cache	m_render_cache;	// +0xd8 DH2: 0x50 bytes; the two clock pairs are set to -1 by the constructor and by update_world_*
		rect	m_text_bounding_box;	// +0x128, bounds of dynamic text, as laid out (x_min, x_max, y_min, y_max)
		tu_string	m_text;	// +0x138
		bool	m_has_focus;	// +0x14c
		// +0x14d..+0x14f padding. r1714 has bool m_password here; the binary neither reads nor writes a byte at +0x14d.
		int	m_cursor;	// +0x150
		float	m_xcursor;	// +0x154
		float	m_ycursor;	// +0x158
		float	m_x;	// +0x15c, current X drawing position
		float	m_y;	// +0x160, current Y drawing position
		int	m_last_line_start_record;	// +0x164 DH2: first record of the current line, passed to align_line
		int	m_last_space_record;	// +0x168 DH2: record index (size of m_text_glyph_records) when the last space was seen
		int	m_last_space_glyph;	// +0x16c DH2: glyph index of that space in its record, -1 when there is none on the line

#if 0 /* DH2: replaced by the members above */
		Sint64	unk_d8;
		Sint64	unk_e0;
		bool m_password;
		int unk_168;
		int unk_16c;
#endif

		// instance specific
		rgba	m_color;	// +0x170
		float	m_text_height;	// +0x174
		gc_ptr<font>	m_font;	// +0x178
		edit_text_character_def::alignment	m_alignment;	// +0x17c
		float	m_left_margin;	// +0x180
		float	m_right_margin;	// +0x184
		float	m_indent;	// +0x188
		float	m_leading;	// +0x18c
		float	m_letter_spacing;	// +0x190 DH2: TextFormat.letterSpacing (twips), added to every glyph advance by append_text
		rgba	m_background_color;	// +0x194

#if 0 /* DH2: not in the binary (the base character caches the world matrix) */
		matrix m_world_matrix;	// current world matrix, for dynamic scaling
#endif

		edit_text_character(player* player, character* parent, edit_text_character_def* def, int id);	// DH2: 0x7916bc (C1), 0x791964 (C2)
		virtual ~edit_text_character();	// DH2: +0x00 0x78c410 (D2) and 0x78c328 (D1), +0x04 0x78c3f4 (D0)

		void reset_format(as_textformat* tf);	// 0x78f288

#if 0 /* DH2: the binary names the virtual _typeof (as_object) and has no override here */
		const char *type_of() { return "edittext";}
#endif

		root* get_root();	// 0x78dde8
		void show_cursor();	// 0x78b128

		virtual const char*	to_string();	// +0x0c, 0x791ac4
		virtual bool	set_member(const tu_stringi& name, const as_value& val);	// +0x1c, 0x790ca4
		virtual bool	get_member(const tu_stringi& name, as_value* val);	// +0x20, 0x78aee0
		virtual bool on_event(const event_id& id);	// +0x2c, 0x790f58
		virtual void advance(float delta_time);	// +0x5c, 0x78a384
		virtual void recycle(character* parent, int id);	// +0x64, 0x7916a4; the base recycle, then init()
#if 0 /* DH2: replaced by the 2-argument form below (vtable +0x68) */
		virtual bool get_topmost_mouse_entity( character * &te, float x, float y);
#endif
		virtual edit_text_character* get_topmost_mouse_entity(float x, float y);	// +0x68, 0x78bb58: this or NULL (covariant with character*)
		virtual bool hit_test(float x, float y);	// +0x6c, 0x78a348
		virtual void update_world_matrix();	// +0x118, 0x78ae30 (the binary returns int, r0 left over)
		virtual void update_world_cxform();	// +0x11c, 0x78ae10
		virtual void display();	// +0x120, 0x7928cc
		virtual character_def* get_character_def() { return m_def.get_ptr();	}	// +0x130, 0x78a31c
		virtual bool can_handle_mouse_event();	// +0x15c, 0x78a338

		void	init();	// 0x7914dc, resets the instance from its definition; the constructor and recycle call it
		const tu_string&	get_var_name() const;	// 0x78a364
		void	reset_bounding_box(float x, float y);	// 0x78a370
		void	set_text_value(const tu_string& new_text, bool html);	// 0x790ab0
		void	align_line(edit_text_character_def::alignment align, int last_line_start_record, float x);	// 0x78a398

		void	format_text(bool html);	// 0x78efb8
		void	append_text(const tu_string& text, text_attributes& attributes, bool html);	// 0x78cb90
		void	append_image(const tu_string& name, int width, int height);	// 0x78a990
		void	preload_glyphs(const filter* flt);	// 0x78c0ec
		void	preload_glyphs();	// 0x78c2d0

#if 0 /* DH2: replaced by append_text and html_reader::parse (the binary has none of these) */
		void	set_text_value(const tu_string& new_text);
		bool	format_html_text(text_glyph_record& rec);
		void	format_plain_text(const tu_string& text, text_glyph_record& rec);
		const char* html_paragraph(const char* p, text_glyph_record& rec);
		const char* html_font(const char* p, text_glyph_record& rec);
		const char* html_text(const char* p, text_glyph_record& rec);
#endif

	private:

#if 0 /* DH2: replaced by the 2-argument form below */
		void	set_text(const tu_string& new_text);
#endif
		void	set_text(const tu_string& new_text, bool html);	// 0x78f1ec; formats the text (as HTML when the flag is set) when it changed

	};

}	// end namespace gameswf


#endif	// GAMESWF_TEXT_H

// Local Variables:
// mode: C++
// c-basic-offset: 8
// tab-width: 8
// indent-tabs-mode: t
// End:
