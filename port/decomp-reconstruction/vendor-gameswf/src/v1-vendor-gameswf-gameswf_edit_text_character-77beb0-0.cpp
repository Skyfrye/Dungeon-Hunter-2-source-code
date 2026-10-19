// Batch v1-vendor-gameswf-gameswf_edit_text_character-77beb0-0: gameswf::edit_text_character (DH2 bodies).
//
// Layout (32-bit offsets, settled in gameswf_text.h; the object is 0x198 bytes): the character base ends at +0xa0;
// +0xa0 m_def, +0xa4 m_text_glyph_records, +0xb4 m_dummy_style, +0xc4 m_dummy_line_style, +0xd8 the DH2 render cache (0x50
// bytes, vendor-gameswf/render_cache.hpp), +0x128 m_text_bounding_box, +0x138 m_text (tu_string), +0x14c m_has_focus,
// +0x150 m_cursor, +0x154 m_xcursor, +0x158 m_ycursor, +0x15c m_x, +0x160 m_y, +0x164 m_last_line_start_record, +0x168
// m_last_space_record, +0x16c m_last_space_glyph, +0x170 m_color, +0x174 m_text_height, +0x178 m_font, +0x17c m_alignment,
// +0x180 m_left_margin, +0x184 m_right_margin, +0x188 m_indent, +0x18c m_leading, +0x190 m_letter_spacing, +0x194
// m_background_color.
//
// Upstream rows (no body here): the upstream definitions in gameswf_text.cpp match the binary.
//   0x78a2f8 is, 0x78a31c get_character_def   inline in gameswf_text.h
//   0x78a338 can_handle_mouse_event, 0x78a364 get_var_name, 0x78a370 reset_bounding_box, 0x78a384 advance,
//   0x78a398 align_line, 0x78b128 show_cursor, 0x78dde8 get_root
//
// Gameloft rows defined below: constructors 0x7916bc / 0x791964, destructors 0x78c328 / 0x78c410, init 0x7914dc,
// recycle 0x7916a4, hit_test 0x78a348, get_topmost_mouse_entity 0x78bb58, update_world_* 0x78ae10 / 0x78ae30,
// append_text 0x78cb90, append_image 0x78a990, preload_glyphs 0x78c0ec / 0x78c2d0, set_text 0x78f1ec, set_text_value
// 0x790ab0, to_string 0x791ac4, format_text 0x78efb8, get_member 0x78aee0, set_member 0x790ca4.
//
// Skipped row: 0x78c3f4, the deleting destructor. The compiler emits it from the class destructor.
//
// Also defined below: reset_format 0x78f288, on_event 0x790f58 and display 0x7928cc (partial: one store is missing).

#include <cmath>
#include <cstring>

#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_player.h"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/glyph_provider.hpp"        // glyph_provider::m_scale
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"   // s_texture_loader_callback
#include "vendor-gameswf/filter_engine.hpp"
#include "vendor-gameswf/html_reader.hpp"
#include "vendor-gameswf/player_context.hpp"

namespace gameswf
{

// The DH2 numbering of the standard member ids (src/v1-vendor-gameswf-gameswf-fddef6-2.cpp, kStandardMembers).
// The r1714 enum in gameswf_action.h has no htmlText or textHeight, so its values from textWidth on differ.
static const int kMemberText = 22;
static const int kMemberHtmlText = 23;
static const int kMemberTextWidth = 24;
static const int kMemberTextHeight = 25;
static const int kMemberTextColor = 26;
static const int kMemberBorder = 27;
static const int kMemberMultiline = 28;
static const int kMemberWordWrap = 29;
static const int kMemberType = 30;
static const int kMemberBackgroundColor = 31;

// The builtin method table of text fields (setTextFormat, getTextFormat): get_builtin id 6 in the binary
// (the r1714 builtin_object enum stops at 4; see src/v1-vendor-gameswf-gameswf-fddef6-2.cpp).
static const int kBuiltinTextfieldMethod = 6;

// 0x7916bc _ZN7gameswf19edit_text_characterC1EPNS_6playerEPNS_9characterEPNS_23edit_text_character_defEi
// 0x791964 _ZN7gameswf19edit_text_characterC2EPNS_6playerEPNS_9characterEPNS_23edit_text_character_defEi (same body)
// Binary: character(player, parent, id, 32); m_def = def (counted); the arrays, the render cache blocks and m_text zeroed or
// empty; the two clock pairs of the render cache set to -1; m_has_focus, the cursor and layout state zeroed, the last space
// glyph -1; m_color and m_background_color white; then init(). The member initialisers produce the zeroing.
edit_text_character::edit_text_character(player* p, character* parent, edit_text_character_def* def, int id) :
	character(p, parent, id, AS_EDIT_TEXT),
	m_def(def),
	m_has_focus(false),
	m_cursor(0),
	m_xcursor(0.0f),
	m_ycursor(0.0f),
	m_x(0.0f),
	m_y(0.0f),
	m_last_line_start_record(0),
	m_last_space_record(0),
	m_last_space_glyph(-1)
{
	m_render_cache.m_bitmap_clock[0] = -1;	// +0xe0
	m_render_cache.m_bitmap_clock[1] = -1;
	m_render_cache.m_texture_clock[0] = -1;	// +0xd8
	m_render_cache.m_texture_clock[1] = -1;
	init();
}

// 0x78c328 _ZN7gameswf19edit_text_characterD1Ev
// 0x78c410 _ZN7gameswf19edit_text_characterD2Ev (identical body; one C++ destructor serves both)
// The binary releases, in order: m_font (+0x178), m_text (heap buffer when its byte 0 is -1), the render cache (+0xd8),
// m_dummy_line_style, m_dummy_style and m_text_glyph_records (each resize(0) then reserve(0)), m_def, and then runs
// character::~character. That is the order in which C++ destroys the members declared in gameswf_text.h, so the body is
// empty.
edit_text_character::~edit_text_character()
{
}

// 0x7914dc _ZN7gameswf19edit_text_character4initEv
// Resets the instance from its definition. Besides the members, it stores (length of get_var_name() > 0) in the character's
// m_need_advance (byte +0x9d), the flag that makes the parent chain call advance. The Hex-Rays return value (the
// get_var_name() reference left in r0) is not a contract; this is void.
void edit_text_character::init()
{
	m_last_space_glyph = -1;	// +0x16c
	m_last_space_record = 0;	// +0x168
	m_has_focus = false;	// +0x14c
	m_cursor = 0;	// +0x150
	m_xcursor = 0.0f;	// +0x154
	m_ycursor = 0.0f;	// +0x158
	m_x = 0.0f;	// +0x15c
	m_y = 0.0f;	// +0x160
	m_last_line_start_record = 0;	// +0x164
	m_color = m_def->m_color;	// +0x170, definition +0x60
	m_text_height = m_def->m_text_height;	// +0x174, definition +0x5c
	m_font = m_def->m_font;	// +0x178, definition +0x58 (counted here)
	m_alignment = m_def->m_alignment;	// +0x17c, definition +0x68
	m_left_margin = m_def->m_left_margin;	// +0x180, definition +0x6c
	m_right_margin = m_def->m_right_margin;	// +0x184, definition +0x70
	m_indent = m_def->m_indent;	// +0x188, definition +0x74
	m_background_color.set(255, 255, 255, 255);	// +0x194
	m_letter_spacing = 0.0f;	// +0x190
	m_leading = m_def->m_leading;	// +0x18c, definition +0x78

	// Default text, then the variable value.
	set_text(tu_string(m_def->m_default_text.c_str()), false);
	set_text_value(tu_string(to_string()), false);

	// Dummy fill style: resize(0), then push one default fill_style.
	m_dummy_style.resize(0);
	m_dummy_style.push_back(fill_style());

	m_need_advance = get_var_name().length() > 0;	// +0x9d
}

// 0x7916a4 _ZN7gameswf19edit_text_character7recycleEPNS_9characterEi
// The character base recycle runs first, then init().
void edit_text_character::recycle(character* parent, int id)
{
	character::recycle(parent, id);
	init();
}

// 0x78a348 _ZN7gameswf19edit_text_character8hit_testEff
// Override of character::hit_test (vtable +0x6c). The binary calls vtable slot +0x68 with the same two floats and tests the
// result against NULL: that slot is edit_text_character::get_topmost_mouse_entity(float, float).
bool edit_text_character::hit_test(float x, float y)
{
	return get_topmost_mouse_entity(x, y) != NULL;
}

// 0x78bb58 _ZN7gameswf19edit_text_character24get_topmost_mouse_entityEff
// Returns this when the field is visible and the point, taken through the inverse of the local matrix (+0x4c), lies inside the
// definition's rectangle; otherwise NULL.
edit_text_character* edit_text_character::get_topmost_mouse_entity(float x, float y)
{
	if (get_visible() == false)
	{
		return NULL;
	}

	point p;
	get_matrix().transform_by_inverse(&p, point(x, y));

	const rect& bound = m_def->m_rect;
	if (p.m_x >= bound.m_x_min && p.m_x <= bound.m_x_max && p.m_y >= bound.m_y_min && p.m_y <= bound.m_y_max)
	{
		return this;
	}
	return NULL;
}

// 0x78ae10 _ZN7gameswf19edit_text_character19update_world_cxformEv
// The character base update, then both clock pairs of the render cache are set to -1 (the 64-bit words at +0xe0 and +0xd8,
// in that order), so the cached batch is rebuilt. The base returns int in the binary (r0 left over); this override is void.
void edit_text_character::update_world_cxform()
{
	character::update_world_cxform();
	m_render_cache.m_bitmap_clock[0] = -1;	// +0xe0
	m_render_cache.m_bitmap_clock[1] = -1;
	m_render_cache.m_texture_clock[0] = -1;	// +0xd8
	m_render_cache.m_texture_clock[1] = -1;
}

// 0x78ae30 _ZN7gameswf19edit_text_character19update_world_matrixEv
// Same shape as update_world_cxform. The base returns int in the binary (the result is the function's own return); not kept.
void edit_text_character::update_world_matrix()
{
	character::update_world_matrix();
	m_render_cache.m_bitmap_clock[0] = -1;	// +0xe0
	m_render_cache.m_bitmap_clock[1] = -1;
	m_render_cache.m_texture_clock[0] = -1;	// +0xd8
	m_render_cache.m_texture_clock[1] = -1;
}

// 0x78f1ec _ZN7gameswf19edit_text_character8set_textERKNS_9tu_stringEb
// Local. Sets the text when it differs from the current one (the same object, or an equal string, is ignored), cuts it to the
// definition's maximum length, and formats it (as HTML when the flag is set).
void edit_text_character::set_text(const tu_string& new_text, bool html)
{
	if (&m_text != &new_text)
	{
		if (strcmp(m_text.c_str(), new_text.c_str()) != 0)
		{
			m_text = new_text;
			int max_length = m_def->m_max_length;
			if (max_length > 0)
			{
				if (max_length < m_text.length())
				{
					m_text.resize(max_length);
				}
			}
			format_text(html);
		}
	}
}

// 0x790ab0 _ZN7gameswf19edit_text_character14set_text_valueERKNS_9tu_stringEb
// Sets the text, then writes it to the variable the field is bound to (the definition's variable name, resolved against the
// parent: a path part selects another target through find_target).
void edit_text_character::set_text_value(const tu_string& new_text, bool html)
{
	set_text(new_text, html);

	if (get_var_name().length() > 0)
	{
		as_object* target = get_parent();	// target, default is parent
		tu_string path;
		tu_string var = get_var_name();
		if (as_environment::parse_path(get_var_name(), &path, &var))
		{
			target = target->find_target(path.c_str());
		}

		if (target)
		{
			as_value value;
			value.set_string(new_text.c_str());
			target->set_member(tu_stringi(var), value);
		}
	}
}

// 0x791ac4 _ZN7gameswf19edit_text_character9to_stringEv
// Reads the bound variable and, when its value is a different string (and not this field itself), takes it as the new text.
// Returns the text. The Hex-Rays result is lost to a register reuse; the callers (init, advance) use the side effect.
const char* edit_text_character::to_string()
{
	if (get_var_name().length() > 0)
	{
		as_object* target = get_parent();	// target, default is parent
		tu_string path;
		tu_string var = get_var_name();
		if (as_environment::parse_path(get_var_name(), &path, &var))
		{
			target = target->find_target(path.c_str());
		}

		if (target)
		{
			as_value value;
			if (target->get_member(tu_stringi(var), &value) && value.to_object() != this)
			{
				if (strcmp(value.to_tu_string().c_str(), m_text.c_str()) != 0)
				{
					set_text(tu_string(value.to_tu_string().c_str()), false);
				}
			}
		}
	}

	return m_text.c_str();
}

// 0x78efb8 _ZN7gameswf19edit_text_character11format_textEb
// Converts the text into glyph records. Resets the layout state (both render cache clocks, the records, the position and the
// bounding box), and when the field has a font: HTML text goes through html_reader::parse, plain text through one
// append_text with the field's own attributes (font, height in twips, colour); then the last line is aligned. A single-line
// field with more than one record has its records moved vertically by a common amount (the centring below). When the root
// asks for it, the glyphs are preloaded.
void edit_text_character::format_text(bool html)
{
	m_render_cache.m_bitmap_clock[0] = -1;	// +0xe0
	m_render_cache.m_bitmap_clock[1] = -1;
	m_render_cache.m_texture_clock[0] = -1;	// +0xd8
	m_render_cache.m_texture_clock[1] = -1;
	m_text_glyph_records.resize(0);
	m_last_space_glyph = -1;	// +0x16c
	m_x = 0.0f;	// +0x15c
	m_y = 0.0f;	// +0x160
	m_last_line_start_record = 0;	// +0x164
	m_last_space_record = 0;	// +0x168
	reset_bounding_box(0.0f, 0.0f);

	if (m_font != NULL)
	{
		if (html)
		{
			html_reader reader;
			reader.parse(this);
		}
		else
		{
			text_attributes attributes;
			attributes.m_font = m_font;
			attributes.m_height = (int) m_text_height;
			attributes.m_color = m_color;
			append_text(m_text, attributes, false);
		}

		align_line(m_alignment, m_last_line_start_record, m_x);

		if (m_def->m_multiline == false)
		{
			int count = m_text_glyph_records.size();
			if (count > 1)
			{
				// The largest y offset of the records (starting from 0).
				float max_y = 0.0f;
				for (int i = 0; i < count; i++)
				{
					const text_style& style = m_text_glyph_records[i].m_style;
					if (style.m_has_y_offset && style.m_y_offset > max_y)
					{
						max_y = style.m_y_offset;
					}
				}

				const text_style& first = m_text_glyph_records[0].m_style;
				float shift = (max_y * -0.5f) + ((first.m_text_height * -0.5f) + first.m_y_offset);
				for (int i = 0; i < m_text_glyph_records.size(); i++)
				{
					text_style& style = m_text_glyph_records[i].m_style;
					if (style.m_has_y_offset)
					{
						style.m_y_offset += shift;
					}
				}
			}
		}

		if (get_root()->unk_87)
		{
			preload_glyphs();
		}
	}
}

// 0x78cb90 _ZN7gameswf19edit_text_character11append_textERKNS_9tu_stringERNS0_15text_attributesEb
// Appends text to the glyph records, starting where the previous call ended (m_x, m_y and the last record's style), one
// Unicode character at a time. In order: the kerning adjustment against the previous character; 10 and 13 start a new line
// (13 followed by 10 counts once); 8 backs up over the previous glyph; 17 and 32 are word breaks (17 has zero width); 160
// is a space that is not a break; '&' followed by "nbsp;" (HTML text only) is the same non-breaking space. Each glyph is
// fetched with font::get_glyph; its advance is (advance + letter spacing) * scale, 1.1 times that above U+1000. When the glyph
// would pass the right margin (minus the 80 twips fudge) the line is wrapped: the current record is closed, and either the
// last glyph or the glyphs after the last word break move to a new record on the next line. The layout state that r1714 keeps
// in locals (last line start record, last space record and glyph) is in members, so that consecutive calls share it.
void edit_text_character::append_text(const tu_string& text, text_attributes& attributes, bool html)
{
	static int s_log_count = 0;

	const float height = (float) attributes.m_height;	// text height in twips

	// Scale from font units to twips: the height over (glyph provider scale * 1024), a twentieth of it for DefineFont3 fonts.
	float scale = height / (get_player()->m_context->m_glyph_provider->m_scale * 1024.0f);
	if (attributes.m_font->is_define_font3())
	{
		scale = scale / 20.0f;
	}

	// Line height: the text height times the font's height over its units per em; the height itself when that is zero.
	float units_per_em = attributes.m_font->get_units_per_em();
	float line_height = height * (attributes.m_font->get_height() / units_per_em);
	if (line_height == 0.0f)
	{
		line_height = (float) attributes.m_height;
	}

	font* fnt = attributes.m_font.get_ptr();
	text_glyph_record rec;	// holds the current run of glyphs; a new text_style has font_id -1, white, height 1

	float baseline = height + m_y;
	baseline = baseline + (fnt->get_leading() - fnt->get_descent()) * scale;
	if (m_text_glyph_records.size() <= 0)
	{
		rec.m_style.m_y_offset = baseline;
	}
	else
	{
		// Continue with the style of the last record. When the new baseline is lower, the records of the last line follow it.
		rec.m_style = m_text_glyph_records[m_text_glyph_records.size() - 1].m_style;
		if (baseline > rec.m_style.m_y_offset)
		{
			int i = m_text_glyph_records.size() - 1;
			if (i >= 0 && m_text_glyph_records[i].m_style.m_y_offset == rec.m_style.m_y_offset)
			{
				for (;;)
				{
					m_text_glyph_records[i].m_style.m_y_offset = baseline;
					if (i == 0)
					{
						break;
					}
					if (m_text_glyph_records[i - 1].m_style.m_y_offset != rec.m_style.m_y_offset)
					{
						break;
					}
					i--;
				}
			}
			rec.m_style.m_y_offset = baseline;
		}
		fnt = attributes.m_font.get_ptr();
	}

	float x = m_left_margin + m_indent;
	if (x <= 0.0f)
	{
		x = 0.0f;
	}
	rec.m_style.m_x_offset = x;
	rec.m_style.m_font = attributes.m_font;
	rec.m_style.m_color = attributes.m_color;
	rec.m_style.m_underline = attributes.m_underline;
	rec.m_style.m_text_height = (float) attributes.m_height;
	rec.m_style.unk_1e = true;
	rec.m_style.m_has_x_offset = true;
	rec.m_style.m_has_y_offset = true;

	const float start_x = x + m_x;
	rec.m_style.m_x_offset = start_x;
	const float start_y = rec.m_style.m_y_offset;
	const float line_advance = (scale * fnt->get_leading()) + m_leading;	// extra space after each line
	m_xcursor = start_x;
	m_ycursor = start_y;

	x = start_x;
	float y = start_y;
	int last_code = -1;
	int char_index = 0;
	const char* text_ptr = text.c_str();

	while (Uint32 c = utf8::decode_next_unicode_character(&text_ptr))
	{
		x = x + (attributes.m_font->get_kerning_adjustment(last_code, (int) c) * scale);
		int current = (int) c;

		if (c == 10 || c == 13)
		{
			// New line. A 10 right after a 13 is the second half of a DOS line end and does nothing.
			if (last_code != 13 || c != 10)
			{
				m_text_glyph_records.push_back(rec);
				align_line(m_alignment, m_last_line_start_record, x);
				x = m_left_margin + m_indent;
				if (x <= 0.0f)
				{
					x = 0.0f;
				}
				y = y + (line_height + line_advance);
				rec.m_glyphs.resize(0);
				last_code = (int) c;
				rec.m_style.m_font = attributes.m_font;
				rec.m_style.m_color = attributes.m_color;
				rec.m_style.m_underline = attributes.m_underline;
				rec.m_style.m_y_offset = y;
				rec.m_style.m_x_offset = x;
				rec.m_style.m_text_height = (float) attributes.m_height;
				rec.m_style.unk_1e = true;
				rec.m_style.m_has_x_offset = true;
				rec.m_style.m_has_y_offset = true;
				m_last_space_glyph = -1;
				m_last_line_start_record = m_text_glyph_records.size();
				m_last_space_record = m_text_glyph_records.size();
				continue;
			}
			last_code = current;
			continue;
		}

		if (c == 8)
		{
			// Backspace: the previous glyph of the record gives its advance back and gets none.
			if (rec.m_glyphs.size() > 0)
			{
				int last = rec.m_glyphs.size() - 1;
				x = x - rec.m_glyphs[last].m_glyph_advance;
				rec.m_glyphs[last].m_glyph_advance = 0.0f;
			}
			last_code = current;
			continue;
		}

		Uint16 code;
		float width_scale = 1.0f;
		bool word_break = false;
		if (c == 17)
		{
			width_scale = 0.0f;	// a break opportunity that has no width
			word_break = true;
		}
		else if (c == 32)
		{
			word_break = true;
		}
		else if (c == 0xA0)
		{
			current = 32;
			code = 32;
			c = 32;
		}
		else if (c == 38)	// '&'
		{
			if (html == false || strncmp(text_ptr, "nbsp;", 5) != 0)
			{
				current = 38;
				code = 38;
			}
			else
			{
				text_ptr += 5;
				current = 32;
				code = 32;
				c = 32;
			}
		}
		else
		{
			code = (Uint16) c;
		}

		if (word_break)
		{
			m_last_space_record = m_text_glyph_records.size();
			m_last_space_glyph = rec.m_glyphs.size();
			current = 32;
			code = 32;
			c = 32;
		}

		glyph g;
		if (attributes.m_font->get_glyph(&g, code, (int) ((float) attributes.m_height / 20.0f)) == false && s_log_count <= 9)
		{
			s_log_count++;
			log_error("edit_text_character::display() -- missing glyph for char %d "
				"-- make sure character shapes for font %s are being exported "
				"into your SWF file!\n",
				(int) c,
				attributes.m_font->get_name().c_str());
		}

		g.m_glyph_advance = (g.m_glyph_advance + m_letter_spacing) * (scale * width_scale);
		if (c > 0x1000)
		{
			g.m_glyph_advance = g.m_glyph_advance * 1.1;
		}
		g.m_fontsize = (int) ((float) attributes.m_height / 20.0f);
		g.m_code = code;
		rec.m_glyphs.push_back(g);

		const float next_x = x + g.m_glyph_advance;
		if (((m_def->m_rect.m_x_max - m_def->m_rect.m_x_min) - m_right_margin) - 80.0f <= next_x)
		{
			// Past the right margin: close this record and continue on a new line.
			m_text_glyph_records.push_back(rec);
			y = y + (line_height + line_advance);
			x = m_left_margin;
			rec.m_glyphs.resize(0);
			rec.m_style.m_font = attributes.m_font;
			rec.m_style.m_underline = attributes.m_underline;
			rec.m_style.m_color = attributes.m_color;
			rec.m_style.m_x_offset = x;
			rec.m_style.m_y_offset = y;
			rec.m_style.m_text_height = (float) attributes.m_height;
			rec.m_style.m_has_y_offset = true;
			rec.m_style.m_has_x_offset = true;

			const int last_index = m_text_glyph_records.size() - 1;
			text_glyph_record& last_line = m_text_glyph_records[last_index];
			float previous_x;
			if (m_last_space_glyph == -1)
			{
				// No word break on the line: pull the previous glyph down onto the new line.
				if (last_line.m_glyphs.size() > 0)
				{
					int last = last_line.m_glyphs.size() - 1;
					rec.m_glyphs.push_back(last_line.m_glyphs[last]);
					float advance = last_line.m_glyphs[last].m_glyph_advance;
					x = x + advance;
					last_line.m_glyphs.resize(last_line.m_glyphs.size() - 1);
					previous_x = next_x - advance;
				}
				else
				{
					previous_x = next_x;
				}
			}
			else
			{
				// Move the glyphs after the last word break down onto the next line.
				previous_x = next_x - m_text_glyph_records[m_last_space_record].m_glyphs[m_last_space_glyph].m_glyph_advance;
				int first = (m_last_space_record == last_index) ? m_last_space_glyph + 1 : 0;
				for (int i = first; i < last_line.m_glyphs.size(); i++)
				{
					rec.m_glyphs.push_back(last_line.m_glyphs[i]);
					float advance = last_line.m_glyphs[i].m_glyph_advance;
					x = x + advance;
					previous_x = previous_x - advance;
				}
				int keep = (last_index == m_last_space_record) ? m_last_space_glyph : 0;
				last_line.m_glyphs.resize(keep);
			}

			align_line(m_alignment, m_last_line_start_record, previous_x);
			m_last_space_glyph = -1;
			m_last_line_start_record = m_text_glyph_records.size();
			m_last_space_record = m_text_glyph_records.size();
		}
		else
		{
			x = x + g.m_glyph_advance;
		}

		if (char_index < m_cursor)
		{
			m_xcursor = x;
			m_ycursor = y;
		}
		char_index++;

		// Expand the bounding box to the lower-right corner of each glyph.
		m_text_bounding_box.expand_to_point(x, (scale * attributes.m_font->get_descent()) + y);

		last_code = current;
	}

	m_xcursor = m_xcursor + (scale * attributes.m_font->get_leading());
	m_ycursor = m_ycursor - ((float) attributes.m_height + ((attributes.m_font->get_leading() - attributes.m_font->get_descent()) * scale));

	// Add this line to our output.
	m_text_glyph_records.push_back(rec);

	m_x = m_x + (x - start_x);
	m_y = m_y + (y - start_y);
}

// 0x78a990 _ZN7gameswf19edit_text_character12append_imageERKNS_9tu_stringEii
// Appends one inline image as a glyph record of its own. The image is an exported bitmap character named by the string, or,
// when there is none, the texture that the host's loader callback returns for the name and size (wrapped by the render
// handler). A width or height that is not positive is taken from the bitmap. The glyph is type 2 with the image's bounds in
// twips, its advance is the width in twips, the record starts at the current x and its bottom at the current y.
void edit_text_character::append_image(const tu_string& name, int width, int height)
{
	bitmap_info* bitmap;
	character_def* resource = find_exported_resource(name);
	if (resource && resource->is(AS_BITMAP_CHARACTER))
	{
		bitmap = static_cast<bitmap_character_def*>(resource)->get_bitmap_info();
	}
	else
	{
		if (s_texture_loader_callback == NULL)
		{
			return;
		}
		glitch::video::ITexture* texture = s_texture_loader_callback(name.c_str(), width, height);
		if (texture == NULL)
		{
			return;
		}
		bitmap = s_render_handler->create_bitmap_info_texture(texture);
	}

	if (width <= 0)
	{
		width = bitmap->get_width();
	}
	if (height <= 0)
	{
		height = bitmap->get_height();
	}

	glyph g;
	g.m_type = 2;
	g.m_bitmap_info = bitmap;
	g.m_fontsize = 1024;
	g.m_code = 0xFFFF;
	g.m_glyph_advance = (float) width * 20.0f;
	g.m_bounds.m_x_min = 0.0f;
	g.m_bounds.m_x_max = g.m_glyph_advance;
	g.m_bounds.m_y_min = 0.0f;
	g.m_bounds.m_y_max = (float) height * 20.0f;

	text_glyph_record rec;
	const float baseline = g.m_bounds.m_y_max + m_y;
	if (m_text_glyph_records.size() > 0)
	{
		// Continue with the style of the last record; the records of the last line follow a lower baseline.
		rec.m_style = m_text_glyph_records[m_text_glyph_records.size() - 1].m_style;
		if (baseline > rec.m_style.m_y_offset)
		{
			int i = m_text_glyph_records.size() - 1;
			if (i >= 0 && m_text_glyph_records[i].m_style.m_y_offset == rec.m_style.m_y_offset)
			{
				for (;;)
				{
					m_text_glyph_records[i].m_style.m_y_offset = baseline;
					if (i == 0)
					{
						break;
					}
					if (m_text_glyph_records[i - 1].m_style.m_y_offset != rec.m_style.m_y_offset)
					{
						break;
					}
					i--;
				}
			}
			rec.m_style.m_y_offset = baseline;
		}
	}
	else
	{
		rec.m_style.m_y_offset = baseline;
	}

	float margin = m_left_margin + m_indent;
	if (margin <= 0.0f)
	{
		margin = 0.0f;
	}
	rec.m_style.m_x_offset = m_x + margin;
	rec.m_style.m_font = NULL;
	rec.m_style.m_text_height = 1024.0f;
	rec.m_style.m_has_y_offset = true;
	rec.m_style.unk_1e = false;
	rec.m_style.m_font_id = -1;
	rec.m_style.m_underline = false;
	rec.m_style.m_has_x_offset = true;

	m_x = m_x + ((float) width * 20.0f);
	rec.m_glyphs.push_back(g);
	m_text_glyph_records.push_back(rec);
}

// 0x78c0ec _ZN7gameswf19edit_text_character12preload_glyphsEPKNS_6filterE
// For every record: the character codes of its glyphs are collected (the record's array is reset for each record) and passed
// to preload_glyph_codes with the player's context, the record's font, its text height in points (twips / 20) and the filter.
void edit_text_character::preload_glyphs(const filter* flt)
{
	array<Uint16> codes;
	for (int r = 0; r < m_text_glyph_records.size(); r++)
	{
		codes.resize(0);
		text_glyph_record& rec = m_text_glyph_records[r];
		if (rec.m_glyphs.size() > 0)
		{
			for (int i = 0; i < rec.m_glyphs.size(); i++)
			{
				codes.push_back(rec.m_glyphs[i].m_code);
			}
			preload_glyph_codes(get_player()->m_context, &codes[0], codes.size(), rec.m_style.m_font.get_ptr(),
				(int) (rec.m_style.m_text_height / 20.0f), flt);
		}
	}
}

// 0x78c2d0 _ZN7gameswf19edit_text_character12preload_glyphsEv
// Preloads the glyphs for every filter of the character's effect (the record array at +0x50), then once with no filter.
void edit_text_character::preload_glyphs()
{
	for (int i = 0; i < m_effect->m_filters.size(); i++)
	{
		preload_glyphs(&m_effect->m_filters[i]);
	}
	preload_glyphs(NULL);
}

// 0x790ca4 _ZN7gameswf19edit_text_character10set_memberERKNS_8tu_stringiERKNS_8as_valueE
// The text field's own members; every id falls through to character::set_member. The ids are the DH2 numbering of the
// standard members. text and htmlText set the text (the second as HTML), textColor and backgroundColor take 0xRRGGBB, border,
// multiline and wordWrap are flags of the definition, type "input" makes the field editable and "dynamic" read-only.
bool edit_text_character::set_member(const tu_stringi& name, const as_value& val)
{
	switch (static_cast<int>(get_standard_member(name)))
	{
		case kMemberText:
		{
			// 0x790ca4: the value goes through to_string(tu_string&), which turns numbers and booleans into text
			// (to_tu_string() would give an empty string for them)
			tu_string text_buf;
			set_text_value(val.to_string(text_buf), false);
			break;
		}

		case kMemberHtmlText:
		{
			tu_string text_buf;
			set_text_value(val.to_string(text_buf), true);
			break;
		}

		case kMemberTextColor:
		{
			// The argument is in 0xRRGGBB format.
			int rgb = (int) val.to_number();
			m_color.m_g = (Uint8) (rgb >> 8);
			m_color.m_b = (Uint8) rgb;
			m_color.m_r = (Uint8) (rgb >> 16);
			m_color.m_a = 255;
			format_text(false);
			break;
		}

		case kMemberBorder:
			m_def->m_border = val.to_bool();
			format_text(false);
			break;

		case kMemberMultiline:
			m_def->m_multiline = val.to_bool();
			format_text(false);
			break;

		case kMemberWordWrap:
			m_def->m_word_wrap = val.to_bool();
			format_text(false);
			break;

		case kMemberType:
			// "dynamic" is a field that cannot be edited by the user, "input" one that can.
			if (tu_string::stricmp(val.to_tu_string().c_str(), "input") != 0)
			{
				if (tu_string::stricmp(val.to_tu_string().c_str(), "dynamic") == 0)
				{
					m_def->m_readonly = true;
				}
			}
			else
			{
				m_def->m_readonly = false;
			}
			break;

		case kMemberBackgroundColor:
		{
			int rgb = (int) val.to_number();
			m_background_color.m_a = 255;
			m_background_color.m_b = (Uint8) rgb;
			m_background_color.m_g = (Uint8) (rgb >> 8);
			m_background_color.m_r = (Uint8) (rgb >> 16);
			format_text(false);
			break;
		}

		default:
			break;
	}

	return character::set_member(name, val);
}

// 0x78aee0 _ZN7gameswf19edit_text_character10get_memberERKNS_8tu_stringiEPNS_8as_valueE
// The text field's own members, in the DH2 numbering of the standard members. text and htmlText answer the text; textWidth and
// textHeight the size of the laid-out text in pixels; textColor and backgroundColor 0xRRGGBB; border, multiline and wordWrap
// the flags of the definition; type "dynamic" or "input". As in the binary, a case does not return: the builtin text field
// methods and then character::get_member are asked as well, and their result is the result.
bool edit_text_character::get_member(const tu_stringi& name, as_value* val)
{
	switch (static_cast<int>(get_standard_member(name)))
	{
		case kMemberText:
		case kMemberHtmlText:
			val->set_tu_string(m_text);
			break;

		case kMemberTextWidth:
			val->set_double((float) ((m_text_bounding_box.m_x_max - m_text_bounding_box.m_x_min) / 20.0));
			break;

		case kMemberTextHeight:
			val->set_double((float) ((m_text_bounding_box.m_y_max - m_text_bounding_box.m_y_min) / 20.0));
			break;

		case kMemberTextColor:
			// Return color in 0xRRGGBB format
			val->set_double((double) ((m_color.m_g << 8) + (m_color.m_r << 16) + m_color.m_b));
			break;

		case kMemberBorder:
			val->set_bool(m_def->m_border);
			break;

		case kMemberMultiline:
			val->set_bool(m_def->m_multiline);
			break;

		case kMemberWordWrap:
			val->set_bool(m_def->m_word_wrap);
			break;

		case kMemberType:
			val->set_tu_string(tu_string(m_def->m_readonly ? "dynamic" : "input"));
			break;

		case kMemberBackgroundColor:
			val->set_double((double) ((m_background_color.m_g << 8) | (m_background_color.m_r << 16) | m_background_color.m_b));
			break;

		default:
			break;
	}

	if (get_builtin(static_cast<builtin_object>(kBuiltinTextfieldMethod), name, val))
	{
		return true;
	}
	return character::get_member(name, val);
}

// 0x78f288 _ZN7gameswf19edit_text_character12reset_formatEPNS_12as_textformatE
// Takes the text format's members that are set: leftMargin, indent, rightMargin, leading and letterSpacing (pixels, stored
// in twips), color (0xRRGGBB), size (pixels), align, and the font (face, bold, italic). A font that differs from the current
// one in name, bold or italic is looked up among the exported resources, and a new font is made when there is none. Then
// the text is formatted again.
void edit_text_character::reset_format(as_textformat* tf)
{
	as_value val;

	if (tf->get_member("leftMargin", &val))
	{
		m_left_margin = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("indent", &val))
	{
		m_indent = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("rightMargin", &val))
	{
		m_right_margin = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("leading", &val))
	{
		m_leading = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("letterSpacing", &val))
	{
		m_letter_spacing = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("color", &val))
	{
		int rgb = val.to_int();
		Uint8 r = (rgb >> 16) & 0xFF;
		Uint8 g = (rgb >> 8) & 0xFF;
		Uint8 b = rgb & 0xFF;
		m_color.set(r, g, b, 255);
	}

	if (tf->get_member("size", &val))
	{
		m_text_height = PIXELS_TO_TWIPS(val.to_float());
	}

	if (tf->get_member("align", &val))
	{
		if (strcmp(val.to_tu_string().c_str(), "left") == 0)
		{
			m_alignment = edit_text_character_def::ALIGN_LEFT;
		}
		else if (val.to_tu_string() == "center")
		{
			m_alignment = edit_text_character_def::ALIGN_CENTER;
		}
		else if (val.to_tu_string() == "right")
		{
			m_alignment = edit_text_character_def::ALIGN_RIGHT;
		}
		else if (val.to_tu_string() == "justify")
		{
			m_alignment = edit_text_character_def::ALIGN_JUSTIFY;
		}
	}

	tu_string fontname = m_font->get_name();
	if (tf->get_member("font", &val))
	{
		fontname = val.to_tu_string();
	}

	bool bold = m_font->is_bold();
	if (tf->get_member("bold", &val))
	{
		bold = val.to_bool();
	}

	bool italic = m_font->is_italic();
	if (tf->get_member("italic", &val))
	{
		italic = val.to_bool();
	}

	if (italic != m_font->is_italic() ||
		bold != m_font->is_bold() ||
		strcmp(fontname.c_str(), m_font->get_name().c_str()) != 0)
	{
		// try to find embedded font
		character_def* res = find_exported_resource(fontname);
		if (res && res->is(AS_FONT))
		{
			// we have embedded font
			m_font = static_cast<font*>(res);
		}
		else
		{
			m_font = new font(get_player());
		}
		m_font->set_bold(bold);
		m_font->set_italic(italic);
		m_font->set_name(fontname);
	}

	format_text(false);
}

// 0x790f58 _ZN7gameswf19edit_text_character8on_eventERKNS_8event_idE
// Nothing happens for a read-only field. SETFOCUS makes the field the root's active entity and, when it was not focused,
// calls the script handler onSetFocus, adds the field to the root's key press listeners, puts the cursor at the end and
// formats the text. KILLFOCUS (when focused) calls onKillFocus, removes the field from the listeners and formats the text. A
// key press edits a copy of the text: backspace and delete remove the character before and at the cursor, the cursor keys
// move the cursor (home, page up and up to the start; end, page down and down to the end), and any other key code is
// inserted as a character at the cursor. SETFOCUS and KILLFOCUS answer true, everything else false.
bool edit_text_character::on_event(const event_id& id)
{
	if (m_def->m_readonly)
	{
		return false;
	}

	switch (id.m_id)
	{
		case event_id::SETFOCUS:
		{
			get_root()->set_active_entity(this);
			if (m_has_focus)
			{
				return true;
			}

			// Invoke user defined event handler
			as_value function;
			if (get_member("onSetFocus", &function))
			{
				as_environment env(get_player());
				env.push(as_value());	// oldfocus, TODO
				gameswf::call_method(function, &env, as_value(this), 1, env.get_top_index(), "???");
			}

			get_root()->m_keypress_listener.add(this);
			m_has_focus = true;
			m_cursor = m_text.length();
			format_text(false);
			return true;
		}

		case event_id::KILLFOCUS:
		{
			if (m_has_focus)
			{
				// Invoke user defined event handler
				as_value function;
				if (get_member("onKillFocus", &function))
				{
					as_environment env(get_player());
					env.push(as_value());	// newfocus, TODO
					gameswf::call_method(function, &env, as_value(this), 1, env.get_top_index(), "???");
				}

				m_has_focus = false;
				get_root()->m_keypress_listener.remove(this);
				format_text(false);
			}
			return true;
		}

		case event_id::KEY_PRESS:
		{
			tu_string s(m_text);

			// may be m_text is changed in ActionScript
			if (m_text.length() < m_cursor)
			{
				m_cursor = m_text.length();
			}

			switch (id.m_key_code)
			{
				case key::BACKSPACE:
					if (m_cursor > 0)
					{
						s.erase(m_cursor - 1, 1);
						m_cursor--;
						set_text_value(s, false);
					}
					break;

				case key::PGDN:
				case key::END:
				case key::DOWN:
					m_cursor = m_text.length();
					format_text(false);
					break;

				case key::PGUP:
				case key::HOME:
				case key::UP:
					m_cursor = 0;
					format_text(false);
					break;

				case key::LEFT:
					m_cursor = m_cursor > 0 ? m_cursor - 1 : 0;
					format_text(false);
					break;

				case key::RIGHT:
					m_cursor = m_cursor >= m_text.length() ? m_text.length() : m_cursor + 1;
					format_text(false);
					break;

				case key::DELETEKEY:
					if (m_cursor < s.length())
					{
						s.erase(m_cursor, 1);
						set_text_value(s, false);
					}
					break;

				default:
					s.insert(m_cursor, (char) id.m_key_code);
					m_cursor++;
					set_text_value(s, false);
					break;
			}
			return false;
		}

		default:
			return false;
	}
}

// 0x7928cc _ZN7gameswf19edit_text_character7displayEv
// Before the text is drawn the byte at +0x04 of the render handler (render_handler::unk_04, which draw_bitmap reads to round
// the quad corners to whole pixels) is set: 0 when the glyph provider's scale is not 1.0, otherwise (definition's grid
// fit != 0).
// Flow: with the root's buffering flag (+0x85) set outside the flush, the field is queued for the flush and nothing is
// drawn. A bordered field first draws its background strip (m_background_color) and a black outline of the definition's
// rectangle. When the player caches renders (player +0x98), a valid render cache is replayed through the render handler; an
// invalid one is rebuilt while the handler records into it. The records are drawn once per filter of the character's effect
// (or of the nearest ancestor with filters; skipped when the filter engine exists): glow (2) and drop shadow (0) draw an
// extra coloured pass first, blur (1) draws the glyphs blurred instead of sharp. Then the cursor, and the display callback.
void edit_text_character::display()
{
	root* r = get_player()->get_root();
	if (r->m_shift_key_state /* +0x85, the flag that makes text fields wait for root::flush_buffered_text */ && !r->m_flushing_buffered_text)
	{
		r->m_buffered_text.push_back(smart_ptr<character>(this));
		return;
	}

	if (m_def->m_border)
	{
		matrix mat = *get_world_matrix();
		if (s_render_handler)
		{
			s_render_handler->set_matrix(mat);
		}

		const rect& b = m_def->m_rect;
		float strip[8] = { b.m_x_min, b.m_y_min, b.m_x_max, b.m_y_min, b.m_x_min, b.m_y_max, b.m_x_max, b.m_y_max };
		float outline[10] = { b.m_x_min, b.m_y_min, b.m_x_max, b.m_y_min, b.m_x_max, b.m_y_max, b.m_x_min, b.m_y_max, b.m_x_min, b.m_y_min };
		if (s_render_handler)
		{
			s_render_handler->fill_style_color(0, m_background_color);
			s_render_handler->draw_mesh_strip(strip, 4);
			s_render_handler->line_style_color(rgba(0, 0, 0, 255));
			s_render_handler->line_style_width(0.0f);
			s_render_handler->draw_line_strip(outline, 5);
		}
	}

	if (get_player()->m_context->m_glyph_provider->m_scale != 1.0f)
	{
		if (s_render_handler)
		{
			s_render_handler->unk_04 = 0;
		}
	}
	else if (s_render_handler)
	{
		s_render_handler->unk_04 = m_def->m_grid_fit != 0;
	}

	if (get_player()->unk_98 /* +0x98: the player caches renders */)
	{
		if (m_render_cache.is_valid(this))
		{
			if (s_render_handler)
			{
				s_render_handler->draw(&m_render_cache);
			}
			if (m_has_focus)
			{
				show_cursor();
			}
			if (m_custom && m_custom->m_display_callback)
			{
				do_display_callback();
			}
			return;
		}
	}
	if (get_player()->unk_98 && s_render_handler)
	{
		s_render_handler->set_render_cache(&m_render_cache);
	}

	bool plain_pass = true;
	if (filter_engine::s_instance == NULL)
	{
		// The character's own filters, or those of the nearest ancestor that has some.
		character* owner = this;
		int count = m_effect->m_filters.size();
		if (count <= 0)
		{
			character* c = this;
			for (;;)
			{
				character* parent = c->get_parent();
				if (parent == NULL)
				{
					break;
				}
				c = parent;
				if (parent->m_effect->m_filters.size() > 0)
				{
					owner = parent;
					count = parent->m_effect->m_filters.size();
					break;
				}
			}
		}

		// Last filter first.
		for (int k = 0; k < count; k++)
		{
			const filter& f = owner->m_effect->m_filters[count - 1 - k];
			if (f.type == 2)
			{
				// glow: a coloured pass blurred by the larger radius, its alpha scaled by the strength (/ 10)
				rgba color;
				color.m_b = f.color[0];
				color.m_g = f.color[1];
				color.m_r = f.color[2];
				int strength;
				std::memcpy(&strength, f.pad_0010, sizeof(strength));	// the word at filter +0x10, not named in filter.hpp
				int alpha = (int) ((float) f.color[3] * ((float) strength / 10.0f));
				if (alpha <= 254)
				{
					color.m_a = (Uint8) alpha;
					if ((Uint8) alpha == 0)
					{
						continue;
					}
				}
				else
				{
					color.m_a = 255;
				}
				matrix mat;
				mat.concatenate_translation((float) (-(int) f.blur_x) * 20.0f, (float) (-(int) f.blur_y) * 20.0f);
				float blur = f.blur_y;
				if (f.blur_x >= blur)
				{
					blur = f.blur_x;
				}
				display_glyph_records(&mat, this, m_text_glyph_records, m_def->m_root_def, &color, (Uint8) (unsigned int) blur, 0, 0);
			}
			else if (f.type == 1)
			{
				// blur: the glyphs are drawn once, blurred
				int blur_x = (Uint8) (unsigned int) f.blur_x;
				unsigned int blur_y = (unsigned int) f.blur_y;
				if (((Uint8) blur_y | blur_x) != 0)
				{
					matrix mat;
					mat.concatenate_translation((float) -blur_x * 20.0f, (float) -(int) (Uint8) blur_y * 20.0f);
					display_glyph_records(&mat, this, m_text_glyph_records, m_def->m_root_def, NULL, 0, (Uint8) blur_x, (Uint8) blur_y);
					plain_pass = false;
				}
			}
			else if (f.type == 0)
			{
				// drop shadow: a coloured pass shifted by the distance along the angle
				int offset_x = (int) f.blur_x;
				int offset_y = (int) f.blur_y;
				float angle = f.angle;
				float distance = f.distance;
				float dx = (float) -offset_x + (distance * cosf(angle));
				float dy = ((float) -offset_y + (distance * sinf(angle))) * 20.0f;
				rgba color;
				color.m_b = f.color[0];
				color.m_g = f.color[1];
				color.m_r = f.color[2];
				color.m_a = f.color[3];
				matrix mat;
				mat.concatenate_translation(dx * 20.0f, dy);
				display_glyph_records(&mat, this, m_text_glyph_records, m_def->m_root_def, &color, 0, (Uint8) offset_x, (Uint8) offset_y);
			}
		}
	}

	if (plain_pass)
	{
		if (m_text_glyph_records.size() > 0)
		{
			display_glyph_records(NULL, this, m_text_glyph_records, m_def->m_root_def, NULL, 0, 0, 0);
		}
	}

	if (get_player()->unk_98 && s_render_handler)
	{
		s_render_handler->set_render_cache(NULL);
	}

	if (m_has_focus)
	{
		show_cursor();
	}
	if (m_custom && m_custom->m_display_callback)
	{
		do_display_callback();
	}
}

// 0x78c3f4 _ZN7gameswf19edit_text_characterD0Ev
// Skipped: compiler-generated deleting destructor (call the complete destructor, then operator delete).
// It is emitted by the compiler from the class destructor above, not written by hand.

// 0x78a398 align_line, 0x78b128 show_cursor, 0x78dde8 get_root, 0x78a364 get_var_name, 0x78a370 reset_bounding_box,
// 0x78a384 advance, 0x78a338 can_handle_mouse_event: upstream definitions in gameswf_text.cpp (they match the binary).

}  // namespace gameswf
