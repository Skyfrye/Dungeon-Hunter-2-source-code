// Batch v1-vendor-gameswf-gameswf_font-a42405-0: gameswf::font (DH2 bodies).
//
// Batch functions and where each one lives:
//   0x7ce3d0 output_cached_data, 0x7ce3d4 input_cached_data   upstream (gameswf_font.cpp, empty body; the DH2 binary is bx lr)
//   0x7ce628 copy_from                                        DH2 addition; defined below
//   0x7cf228 ~font (D2), 0x7cf314 ~font (D1)                  upstream (gameswf_font.cpp): the body is m_glyphs.resize(0), which is the
//                                                             binary's first action, then the member destructors in the binary's order
//   0x7cf41c get_units_per_em, 0x7cf520 get_height            DH2 additions; defined below
//   0x7cf8d8 font(player*) (C1), 0x7cf984 font(player*) (C2)  DH2 constructor; defined below (upstream one is #if 0)
//   0x7d01bc get_glyph                                        DH2 body (bitmap provider, glyph provider, code table); defined below
//
// DH2 layout of gameswf::font (32-bit offsets, settled in gameswf_font.h; the object is 0x88 bytes):
//   +0x00 vptr; the character_def base ends at +0x20 (m_player weak pointer proxy at +0x18, pointer at +0x1c)
//   +0x20 m_glyphs (array<smart_ptr<shape_character_def>>, 16 bytes: buffer, size, capacity, borrowed byte at +0x2c)
//   +0x30 m_fontname (tu_string, 20 bytes)
//   +0x44 m_owning_movie
//   +0x48 m_has_layout (not set by the constructor)
//   +0x49 m_unicode_chars, +0x4a m_shift_jis_chars, +0x4b m_ansi_chars, +0x4c m_is_italic, +0x4d m_is_bold, +0x4e m_wide_codes
//   +0x50 m_code_table (hash<unsigned short, short, simple_code_hash>: one table pointer, 12-byte entries)
//   +0x54 m_ascent, +0x58 m_descent, +0x5c m_leading
//   +0x60 m_advance_table (array<float>, 16 bytes, borrowed byte at +0x6c)
//   +0x70 m_kerning_pairs (hash<kerning_pair, float>: one table pointer, 16-byte entries)
//   +0x74 m_table_hint (byte)
//   +0x78 m_zone_table (array<zone_record>, 16 bytes, borrowed byte at +0x84; zone_record is 20 bytes)
//
// The bytes that earlier revisions called unk_2c, unk_6c and unk_84 are the m_borrowed bytes of the three arrays (the DH2
// array<T> is 16 bytes), so the constructor's stores to them are the arrays' own initialisation.

#include "gameswf/gameswf_font.h"
#include "gameswf/gameswf_player.h"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"  // bitmap_glyph_provider, bitmap_font_entity
#include "vendor-gameswf/glyph_provider.hpp"         // glyph_provider, face_entity
#include "vendor-gameswf/player_context.hpp"         // player_context

namespace gameswf
{

// 0x7ce628 gameswf::font::copy_from(gameswf::font*)   (_ZN7gameswf4font9copy_fromEPS0_)
// Binary: tu_string::operator= (m_fontname), then byte copies of +0x49..+0x4e, dword copies of +0x54, +0x58,
// +0x5c, and a byte copy of +0x74. The binary leaves tu_string::operator='s result in r0. Hex-Rays shows a
// pointer return for that reason; a void function compiles to the same code, so this is void.
void font::copy_from(font* src)
{
	m_fontname = src->m_fontname;	// +0x30 tu_string
	m_unicode_chars = src->m_unicode_chars;	// +0x49
	m_shift_jis_chars = src->m_shift_jis_chars;	// +0x4a
	m_ansi_chars = src->m_ansi_chars;	// +0x4b
	m_is_italic = src->m_is_italic;	// +0x4c
	m_is_bold = src->m_is_bold;	// +0x4d
	m_wide_codes = src->m_wide_codes;	// +0x4e
	m_ascent = src->m_ascent;	// +0x54
	m_descent = src->m_descent;	// +0x58
	m_leading = src->m_leading;	// +0x5c
	m_table_hint = src->m_table_hint;	// +0x74
}

// 0x7cf8d8 gameswf::font::font(gameswf::player*)   (_ZN7gameswf4fontC1EPNS_6playerE)
// 0x7cf984 gameswf::font::font(gameswf::player*)   (_ZN7gameswf4fontC2EPNS_6playerE)
// Binary: character_def(player); vptr; m_glyphs zeroed (its borrowed byte at +0x2c too); m_fontname = "Times New Roman"
// (the constant is in the tu_string(const char*) clone, which is the upstream default); m_has_layout is not written; the
// unicode, shift-jis, ansi (=1), italic, bold and wide-code bytes; m_owning_movie = NULL; m_code_table, m_ascent,
// m_descent, m_leading, m_advance_table (+ borrowed byte +0x6c), m_kerning_pairs, m_table_hint and m_zone_table
// (+ borrowed byte +0x84) zeroed. The member initialisers below produce exactly those stores.
font::font(player* p) :
	character_def(p),
	m_fontname("Times New Roman"),	// default
	m_owning_movie(NULL),
	m_unicode_chars(false),
	m_shift_jis_chars(false),
	m_ansi_chars(true),
	m_is_italic(false),
	m_is_bold(false),
	m_wide_codes(false),
	m_ascent(0.0f),
	m_descent(0.0f),
	m_leading(0.0f),
	m_table_hint(0)
{
}

// 0x7cf41c gameswf::font::get_units_per_em() const   (_ZNK7gameswf4font16get_units_per_emEv)
// Binary: the inlined weak-pointer check on m_player (a dead proxy is dropped, which get_player() does), then the player's
// context at player+0xac without a NULL test. If the bitmap glyph provider (context+0x10) has a font entity for this font,
// the answer is 1024.0. Otherwise, if the glyph provider (context+0x0c) has a face for it, the answer is the face's
// units_per_EM (u16 at +0x44 of the FT_Face that the face entity holds at +0x24). Otherwise 1.0.
float font::get_units_per_em() const
{
	player_context* context = get_player()->m_context;

	bitmap_glyph_provider* bitmap_provider = context->m_bitmap_glyph_provider;
	if (bitmap_provider)
	{
		if (bitmap_provider->get_font_entity(m_fontname, m_is_bold, m_is_italic))
		{
			return 1024.0f;
		}
	}

	glyph_provider* provider = context->m_glyph_provider;
	if (provider)
	{
		face_entity* face = provider->get_face_entity(m_fontname, m_is_bold, m_is_italic);
		if (face)
		{
			return (float) face->m_face->units_per_EM;
		}
	}
	return 1.0f;
}

// 0x7cf520 gameswf::font::get_height() const   (_ZNK7gameswf4font10get_heightEv)
// Same two lookups as get_units_per_em. A bitmap font entity answers its scale (+0x28) * 20.0; a face answers
// ascender - descender (the s16 values at +0x46 and +0x48 of the FT_Face). Otherwise 0.0.
float font::get_height() const
{
	player_context* context = get_player()->m_context;

	bitmap_glyph_provider* bitmap_provider = context->m_bitmap_glyph_provider;
	if (bitmap_provider)
	{
		ref_counted* entity = bitmap_provider->get_font_entity(m_fontname, m_is_bold, m_is_italic);
		if (entity)
		{
			return static_cast<bitmap_font_entity*>(entity)->m_scale * 20.0f;
		}
	}

	glyph_provider* provider = context->m_glyph_provider;
	if (provider)
	{
		face_entity* face = provider->get_face_entity(m_fontname, m_is_bold, m_is_italic);
		if (face)
		{
			return (float) (face->m_face->ascender - face->m_face->descender);
		}
	}
	return 0.0f;
}

// 0x7d01bc gameswf::font::get_glyph(gameswf::glyph*, unsigned short, int) const   (_ZNK7gameswf4font9get_glyphEPNS_5glyphEti)
// Binary order: defaults (advance 512.0, index -1); the bitmap glyph provider's font entity (type byte cleared, entity stored
// in the glyph) and its get_char_image; if that gives no bitmap, the glyph provider's get_char_image and get_face_entity (the
// face goes into the glyph even when the bitmap is missing); and if there is still no bitmap, the font's own code table: a
// code that is not in the table fails, a code with an advance-table entry returns with that advance (no scaling), and a code
// without one falls out to the common exit. The common exit multiplies the advance by 20 for a DefineFont3 font (zone table
// present) and returns true.
bool font::get_glyph(glyph* g, Uint16 code, int fontsize) const
{
	g->m_glyph_advance = 512.0f;
	g->m_glyph_index = -1;

	player_context* context = get_player()->m_context;

	bitmap_glyph_provider* bitmap_provider = context->m_bitmap_glyph_provider;
	if (bitmap_provider)
	{
		g->m_type = 0;
		ref_counted* entity = bitmap_provider->get_font_entity(m_fontname, m_is_bold, m_is_italic);
		g->m_entity = entity;
		if (entity)
		{
			g->m_bitmap_info = static_cast<bitmap_font_entity*>(entity)->get_char_image(code, fontsize, &g->m_bounds, &g->m_glyph_advance);
			if (g->m_bitmap_info != NULL)
			{
				goto done;
			}
		}
	}

	{
		glyph_provider* provider = context->m_glyph_provider;
		bool found_bitmap = false;
		if (provider)
		{
			g->m_type = 0;
			g->m_bitmap_info = provider->get_char_image(code, m_fontname, m_is_bold, m_is_italic, fontsize, &g->m_bounds, &g->m_glyph_advance);
			g->m_entity = provider->get_face_entity(m_fontname, m_is_bold, m_is_italic);
			found_bitmap = (g->m_bitmap_info != NULL);
		}
		if (found_bitmap == false)
		{
			Sint16 index;
			if (m_code_table.get(code, &index) == false)
			{
				return false;
			}
			g->m_glyph_index = index;
			if (index < m_advance_table.size())
			{
				g->m_glyph_advance = m_advance_table[index];
				return true;
			}
		}
	}

done:
	if (m_zone_table.size())
	{
		g->m_glyph_advance *= 20.0f;
	}
	return true;
}

// 0x7ce3d0 gameswf::font::output_cached_data(gameswf::tu_file*, gameswf::cache_options const&)
// 0x7ce3d4 gameswf::font::input_cached_data(gameswf::tu_file*)
// Both are upstream functions (gameswf_font.cpp). The upstream bodies are compiled out (#if 0, "@@ Disabled"),
// and the DH2 binary is bx lr for both, so they are not redefined here.

// The destructors (0x7cf228, 0x7cf314) are upstream: font::~font() { m_glyphs.resize(0); } plus the implicit
// member destructors, which run in the binary's order (zone table, kerning hash, advance table, code table,
// m_fontname, m_glyphs), then the base destructor. Not redefined here.

}	// end namespace gameswf
