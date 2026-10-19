// Batch v1-vendor-gameswf-gameswf_edit_text_character-77beb0-1: the text definitions and records of gameswf_text.h (DH2 bodies).
//
// Layouts (32-bit offsets, settled in gameswf_text.h):
//   text_style         0x20 bytes: +0x00 m_font_id, +0x04 m_font (counted), +0x08 m_color, +0x0c m_underline, +0x10 m_x_offset,
//                      +0x14 m_y_offset, +0x18 m_text_height, +0x1c m_has_x_offset, +0x1d m_has_y_offset, +0x1e unk_1e
//   text_glyph_record  0x30 bytes: the style, then +0x20 m_glyphs (array<glyph>)
//   text_character_def 0x6c bytes: +0x20 m_root_def, +0x24 m_rect, +0x34 m_matrix, +0x4c m_text_glyph_records, +0x5c
//                      m_use_flashtype, +0x60 m_grid_fit, +0x64 m_thickness, +0x68 m_sharpness (no m_is_glyphs_drawn)
//   edit_text_character_def 0xa0 bytes, the r1714 member order (see gameswf_text.h)
//
// Upstream rows (no body here, the upstream definitions in gameswf_text.cpp match the binary):
//   0x78a2e4 edit_text_character_def::get_bound    inline in gameswf_text.h
//   0x78a324 text_character_def::get_bound         gameswf_text.cpp
//   0x78ae50 text_style::resolve_font, 0x78b858 text_glyph_record::read   inline in gameswf_text.h
//   0x78b410 edit_text_character_def::csm_textsetting, 0x78b474 text_character_def::csm_textsetting
//   0x78be90 text_character_def::read
//   0x78d6d0 / 0x78d874 edit_text_character_def(player*, movie_definition_sub*) and 0x78d970 / 0x78dad8
//     edit_text_character_def(player*, int, int): the member initialisers of gameswf_text.cpp store what the binary stores
//     (the 20-byte tu_string members have their hash cache words at +0x44 and +0x8c; the earlier notes took these for an rgba
//     and other fields). The (player*, int, int) form allocates a font (operator new(0x88)) and stores it uncounted.
//   0x78c4dc / 0x78c57c ~edit_text_character_def: the member destructors (m_default_text, then m_var_name), then the base
//   0x78d7cc define_edit_text_loader, 0x78dcc0 define_text_loader, 0x79181c as_global_textfield_ctor, 0x78f9f0 set_textformat
// Skipped (compiler-generated deleting destructors): 0x78bde0 text_character_def, 0x78c560 edit_text_character_def.

#include <cctype>
#include <cstring>

#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_player.h"
#include "vendor-gameswf/html_reader.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/bitmap_glyph_texture_cache.hpp"
#include "vendor-gameswf/player_context.hpp"

namespace gameswf
{

// 0x78a5b8 _ZN7gameswf17text_glyph_recordD1Ev
// Binary: the glyph array is resized to 0 and its buffer released, then the style's font is dropped.
text_glyph_record::~text_glyph_record()
{
	m_glyphs.resize(0);
	m_glyphs.reserve(0);
}

// 0x78a8b8 _ZN7gameswf17text_glyph_recordC1ERKS0_
// Binary: the style fields are copied one by one (the font is counted), the glyph array starts empty and is then assigned
// from the source's.
text_glyph_record::text_glyph_record(const text_glyph_record& rec)
{
	m_style.m_font_id = rec.m_style.m_font_id;
	m_style.m_font = rec.m_style.m_font;
	m_style.m_color = rec.m_style.m_color;
	m_style.m_underline = rec.m_style.m_underline;
	m_style.m_x_offset = rec.m_style.m_x_offset;
	m_style.m_y_offset = rec.m_style.m_y_offset;
	m_style.m_text_height = rec.m_style.m_text_height;
	m_style.m_has_x_offset = rec.m_style.m_has_x_offset;
	m_style.m_has_y_offset = rec.m_style.m_has_y_offset;
	m_style.unk_1e = rec.m_style.unk_1e;
	m_glyphs = rec.m_glyphs;
}

// 0x78dc40 _ZN7gameswf18text_character_defC1EPNS_6playerEPNS_21movie_definition_subE
// 0x78dd68 _ZN7gameswf18text_character_defC2EPNS_6playerEPNS_21movie_definition_subE (same body)
// Binary: character_def(player); the matrix is the identity (the matrix constructor); m_root_def; the array and the
// Flash 8 members zeroed. m_rect is not written (the rect constructor zeroes it here). There is no assertion on root_def.
text_character_def::text_character_def(player* p, movie_definition_sub* root_def) :
	character_def(p),
	m_root_def(root_def),
	m_use_flashtype(false),
	m_grid_fit(0),
	m_thickness(0.0f),
	m_sharpness(0.0f)
{
}

// 0x78be3c _ZN7gameswf18text_character_defD1Ev
// Binary: the vtable store (the compiler's), then the record array is resized to 0 and its buffer released, then the base
// destructor. The array's own destructor does the same; the calls are kept as the binary has them.
text_character_def::~text_character_def()
{
	m_text_glyph_records.resize(0);
	m_text_glyph_records.reserve(0);
}

// 0x790a7c _ZN7gameswf18text_character_def7displayEPNS_9characterE
// Draws the records with the definition's matrix and no colour override or glyph cache offsets. The r1714 glyph-provider
// preamble (m_is_glyphs_drawn) is not in the binary.
void text_character_def::display(character* inst)
{
	display_glyph_records(&m_matrix, inst, m_text_glyph_records, m_root_def, NULL, 0, 0, 0);
}

// 0x78b610 _ZN7gameswf23edit_text_character_def4readEPNS_6streamEiPNS_21movie_definition_subE
// As r1714, and the default text is run through removeHTML after it is read.
void edit_text_character_def::read(stream* in, int tag_type, movie_definition_sub* m)
{
	m_rect.read(in);

	in->align();
	bool	has_text = in->read_uint(1) ? true : false;
	m_word_wrap = in->read_uint(1) ? true : false;
	m_multiline = in->read_uint(1) ? true : false;
	m_password = in->read_uint(1) ? true : false;
	m_readonly = in->read_uint(1) ? true : false;
	bool	has_color = in->read_uint(1) ? true : false;
	bool	has_max_length = in->read_uint(1) ? true : false;
	bool	has_font = in->read_uint(1) ? true : false;

	in->read_uint(1);	// reserved
	m_auto_size = in->read_uint(1) ? true : false;
	bool	has_layout = in->read_uint(1) ? true : false;
	m_no_select = in->read_uint(1) ? true : false;
	m_border = in->read_uint(1) ? true : false;
	in->read_uint(1);	// reserved
	m_html = in->read_uint(1) ? true : false;
	m_use_outlines = in->read_uint(1) ? true : false;

	if (has_font)
	{
		m_font_id = in->read_u16();
		m_text_height = (float) in->read_u16();
	}

	if (has_color)
	{
		m_color.read_rgba(in);
	}

	if (has_max_length)
	{
		m_max_length = in->read_u16();
	}

	if (has_layout)
	{
		m_alignment = (alignment) in->read_u8();
		m_left_margin = (float) in->read_u16();
		m_right_margin = (float) in->read_u16();
		m_indent = (float) in->read_s16();
		m_leading = (float) in->read_s16();
	}

	in->read_string(&m_var_name);

	if (has_text)
	{
		in->read_string(&m_default_text);
		removeHTML(m_default_text);
	}
}

// 0x78cad4 _ZN7gameswf23edit_text_character_def25create_character_instanceEPNS_9characterEi
// Resolves the font on first use (log_error when the movie has none), then takes the instance from the player: a pooled
// edit_text_character when there is one, a new one otherwise (player::create_edit_text_character, 0x76cb44).
character* edit_text_character_def::create_character_instance(character* parent, int id)
{
	if (m_font == NULL)
	{
		// Resolve the font, if possible.
		if (m_root_def)
		{
			m_font = m_root_def->get_font(m_font_id);
			if (m_font == NULL)
			{
				log_error("error: text style with undefined font; font_id = %d\n", m_font_id);
			}
		}
	}

	return get_player()->create_edit_text_character(this, parent, id);
}

// 0x78e354 _ZN7gameswf11html_reader5parseEPNS_19edit_text_characterE
// Reads the field's text (m_text, HTML) and appends it to the field, one stretch of text or one tag at a time. The first stack
// entry holds the field's own font, height and colour. Tags (the tag body is cut out into a 512-byte buffer and read with
// parse_tag):
//   </...>  pops one entry when more than one is on the stack
//   <p>     writes a newline before every paragraph but the first (nothing is pushed)
//   <font>  pushes a copy with face (a new font with that name), color (#RRGGBB, or a decimal number) and size (a percentage
//           of the current size, "+n" or "-n" points relative to it, or an absolute size in points)
//   <b> <i> push a copy with a new font that is bold or italic; <u> pushes a copy with the underline set
//   <img>   appends the image src with the given width and height
// Other tags are ignored. A '<' without a '>' ends the text.
void html_reader::parse(edit_text_character* ch)
{
	if (ch->m_text.length() == 0)
	{
		return;
	}

	edit_text_character::text_attributes initial;
	initial.m_font = ch->m_font;
	initial.m_height = (int) ch->m_text_height;
	initial.m_color = ch->m_color;
	m_stack.push_back(initial);

	const char* base = ch->m_text.c_str();
	int position = 0;
	int paragraph_count = 0;

	for (;;)
	{
		if (position >= ch->m_text.length())
		{
			return;
		}

		const char* current = base + position;
		if (*current != '<')
		{
			// Text up to the next tag, or to the end.
			const char* next_tag = strchr(current, '<');
			if (next_tag == NULL)
			{
				tu_string rest(current, (int) ((base + ch->m_text.length()) - current));
				ch->append_text(rest, m_stack[m_stack.size() - 1], true);
				return;
			}
			tu_string chunk(current, (int) (next_tag - current));
			ch->append_text(chunk, m_stack[m_stack.size() - 1], true);
			position = (int) (next_tag - base);
			continue;
		}

		const char* tag_end = strchr(current, '>');
		if (tag_end == NULL)
		{
			return;
		}
		if (position + 1 >= ch->m_text.length())
		{
			return;
		}

		const char* tag = current + 1;
		if (*tag == '/')
		{
			// A closing tag.
			if (m_stack.size() > 1)
			{
				m_stack.resize(m_stack.size() - 1);
			}
			position = (int) ((tag_end + 1) - base);
			continue;
		}

		char tag_buffer[512];
		memset(tag_buffer, 0, sizeof(tag_buffer));
		memcpy(tag_buffer, tag, (size_t) (tag_end - current - 1));

		stringi_hash<tu_string> attrs;
		parse_tag(attrs, tag_buffer);

		// The attributes of the new entry start as a copy of the top of the stack.
		edit_text_character::text_attributes attributes;
		{
			const edit_text_character::text_attributes& top = m_stack[m_stack.size() - 1];
			attributes.m_font = top.m_font;
			attributes.m_height = top.m_height;
			attributes.m_color = top.m_color;
			attributes.m_underline = top.m_underline;
		}

		tu_string name;
		if (attrs.get(tu_stringi("name"), &name))
		{
			if (strcmp(name.c_str(), "p") == 0)
			{
				if (paragraph_count)
				{
					ch->append_text(tu_string("\n"), m_stack[m_stack.size() - 1], true);
				}
				paragraph_count++;
			}
			else if (name == "font")
			{
				tu_string face;
				if (attrs.get(tu_stringi("face"), &face))
				{
					font* f = new font(ch->get_player());
					f->copy_from(attributes.m_font.get_ptr());
					f->set_name(face);
					attributes.m_font = f;
				}

				tu_string color;
				if (attrs.get(tu_stringi("color"), &color) && color.length() > 0)
				{
					int rgb;
					if (color.c_str()[0] == '#')
					{
						// #RRGGBB: the digits are read from the end, four bits each; the '#' at index 0 is not read, and a
						// character that is not a hex digit leaves its four bits zero.
						rgb = (int) 0xFF000000;
						int index = color.length() - 1;
						if (index > 0)
						{
							int shift = 0;
							for (;;)
							{
								int digit = tolower((unsigned char) color.c_str()[index]);
								if ((Uint8) (digit - '0') > 9)
								{
									if ((Uint8) (digit - 'a') <= 5)
									{
										rgb |= (digit - 'a' + 10) << shift;
									}
								}
								else
								{
									rgb |= (digit - '0') << shift;
								}
								if (--index == 0)
								{
									break;
								}
								shift += 4;
							}
						}
					}
					else
					{
						rgb = atoi(color.c_str()) | (int) 0xFF000000;
					}
					attributes.m_color.m_a = 255;
					attributes.m_color.m_g = (Uint8) (rgb >> 8);
					attributes.m_color.m_b = (Uint8) rgb;
					attributes.m_color.m_r = (Uint8) (rgb >> 16);
				}

				tu_string size;
				if (attrs.get(tu_stringi("size"), &size))
				{
					if (strchr(size.c_str(), '%'))
					{
						// A percentage of the current size; the '%' is cut off before atoi.
						size.erase(size.length() - 1, 1);
						attributes.m_height = m_stack[m_stack.size() - 1].m_height * atoi(size.c_str()) / 100;
					}
					else if (strchr(size.c_str(), '+') == size.c_str())
					{
						attributes.m_height = (int) ((float) atoi(size.c_str() + 1) * 20.0f) + m_stack[m_stack.size() - 1].m_height;
					}
					else if (strchr(size.c_str(), '-') == size.c_str())
					{
						attributes.m_height = m_stack[m_stack.size() - 1].m_height - (int) ((float) atoi(size.c_str() + 1) * 20.0f);
					}
					else if (atoi(size.c_str()) > 0)
					{
						attributes.m_height = (int) ((float) atoi(size.c_str()) * 20.0f);
					}
				}
				m_stack.push_back(attributes);
			}
			else if (name == "b")
			{
				font* f = new font(ch->get_player());
				f->copy_from(attributes.m_font.get_ptr());
				f->set_bold(true);
				attributes.m_font = f;
				m_stack.push_back(attributes);
			}
			else if (name == "i")
			{
				font* f = new font(ch->get_player());
				f->copy_from(attributes.m_font.get_ptr());
				f->set_italic(true);
				attributes.m_font = f;
				m_stack.push_back(attributes);
			}
			else if (name == "u")
			{
				attributes.m_underline = true;
				m_stack.push_back(attributes);
			}
			else if (name == "img")
			{
				tu_string src;
				tu_string width;
				tu_string height;
				attrs.get(tu_stringi("src"), &src);
				attrs.get(tu_stringi("width"), &width);
				attrs.get(tu_stringi("height"), &height);
				int w = atoi(width.c_str());
				int h = atoi(height.c_str());
				ch->append_image(src, w, h);
			}
		}

		position = (int) ((tag_end + 1) - base);
	}
}

// 0x78faa0 _ZN7gameswfL20display_glyph_recordsEPKNS_6matrixEPNS_9characterERNS_5arrayINS_17text_glyph_recordEEEPNS_20movie_definition_subEPNS_4rgbaEhhh
// (static in the binary; declared in gameswf_text.h here because edit_text_character::display calls it from another file)
// Renders the glyph records through the render handler. Per record: the style's font is resolved; the glyph scale is the text
// height over 1024 times the glyph provider's scale (a twentieth of it for a DefineFont3 font); the position comes from the
// style's offsets; the colour is the style's colour through the world colour transform, with its RGB replaced by color_override
// and its alpha multiplied by the override's when one is given. Per glyph: an invalid glyph is drawn as an empty box; a
// glyph of a style with the underline flag first gets a line under it; a glyph without a bitmap is drawn as the font's shape; a
// glyph with a bitmap (device font, or the inline image of append_image, type 2) is drawn through draw_bitmap with the
// texture rectangle from the glyph or bitmap glyph texture cache. blur, offset_x and offset_y select the filtered glyph
// image in the glyph texture cache and widen the rectangle by the filter's extent (drop shadow and glow passes of
// edit_text_character::display).
void display_glyph_records(const matrix* this_mat, character* inst, array<text_glyph_record>& records,
	movie_definition_sub* root_def, rgba* color_override, Uint8 blur, Uint8 offset_x, Uint8 offset_y)
{
	render_handler* rh = s_render_handler;
	if (rh == NULL)
	{
		return;
	}

	player_context* context = inst->get_player()->m_context;
	glyph_texture_cache* glyph_cache = context->m_glyph_provider->m_texture_cache;
	bitmap_glyph_texture_cache* bitmap_cache = static_cast<bitmap_glyph_texture_cache*>(context->m_bitmap_glyph_provider->m_texture_cache);

	glyph_texture_cache::filter_info offset_filter = { 0, offset_x, offset_y };
	glyph_texture_cache::filter_info no_filter = { 0, 0, 0 };

	static const float s_empty_char_box[5 * 2] =
	{
		32,   32,
		480,   32,
		480, -656,
		32, -656,
		32,   32
	};

	array<fill_style>	dummy_style;	// used to pass a color on to shape_character::display()
	array<line_style>	dummy_line_style;
	dummy_style.resize(1);

	matrix base_matrix = *inst->get_world_matrix();
	if (this_mat)
	{
		base_matrix.concatenate(*this_mat);
	}
	const cxform* world_cxform = inst->get_world_cxform();
	float pixel_scale = inst->get_pixel_scale();

	const float em_scale = context->m_glyph_provider->m_scale;
	const float em_size = em_scale * 1024.0f;
	const float offset_extent_x = ((float) offset_x + (float) offset_x) * em_scale;
	const float offset_extent_y = ((float) offset_y + (float) offset_y) * em_scale;
	const float blur_extent = ((float) blur + (float) blur) * em_scale;

	float x = 0.0f;
	float y = 0.0f;
	for (int r = 0; r < records.size(); r++)
	{
		text_glyph_record& rec = records[r];
		rec.m_style.resolve_font(root_def);
		font* fnt = rec.m_style.m_font.get_ptr();

		float scale;
		if (fnt)
		{
			scale = rec.m_style.m_text_height / em_size;
			if (fnt->is_define_font3())
			{
				scale = scale / 20.0f;
			}
		}
		else
		{
			if (rec.m_style.unk_1e)
			{
				continue;	// the font could not be resolved
			}
			scale = rec.m_style.m_text_height / em_size;
		}

		if (rec.m_style.m_has_x_offset)
		{
			x = rec.m_style.m_x_offset;
		}
		if (rec.m_style.m_has_y_offset)
		{
			y = rec.m_style.m_y_offset;
		}

		dummy_style[0].set_color(rec.m_style.m_color);

		rgba transformed_color = world_cxform->transform(rec.m_style.m_color);
		if (color_override)
		{
			int64_t alpha = 2155905153LL * transformed_color.m_a * color_override->m_a;	// divides by 255
			transformed_color.m_a = (Uint8) ((int) ((uint64_t) alpha >> 32) >> 7);
			transformed_color.m_r = color_override->m_r;
			transformed_color.m_g = color_override->m_g;
			transformed_color.m_b = color_override->m_b;
		}

		for (int j = 0; j < rec.m_glyphs.size(); j++)
		{
			const glyph& g = rec.m_glyphs[j];

			matrix mat = base_matrix;
			mat.concatenate_translation(x, y);
			mat.concatenate_scale(scale);

			bool drawn_as_box = false;
			if (g.m_glyph_index == -1 && g.m_bitmap_info == NULL)
			{
				// Invalid glyph; render it as an empty box.
				rh->set_matrix(mat);
				rh->line_style_color(transformed_color);
				rh->draw_line_strip(s_empty_char_box, 5);
				drawn_as_box = true;
			}

			if (drawn_as_box == false)
			{
				if (rec.m_style.m_underline)
				{
					rh->set_matrix(mat);
					rh->line_style_color(transformed_color);
					float underline[4];
					underline[0] = 0.0f;
					underline[1] = 50.0f;
					underline[2] = g.m_glyph_advance / scale;
					underline[3] = 50.0f;
					rh->draw_line_strip(underline, 2);
				}

				bitmap_info* bmp = g.m_bitmap_info.get_ptr();
				if (bmp == NULL)
				{
					if (g.m_glyph_index >= 0)
					{
						// static text
						shape_character_def* sh = fnt->get_glyph_by_index(g.m_glyph_index);
						if (sh)
						{
							sh->display(mat, *world_cxform, pixel_scale, dummy_style, dummy_line_style);
						}
					}
				}
				else if (g.m_type == 2)
				{
					// inline image: the whole bitmap, hanging from the baseline
					rect coords;
					coords.m_x_min = 0.0f;
					coords.m_x_max = g.m_bounds.m_x_max;
					coords.m_y_min = -g.m_bounds.m_y_max;
					coords.m_y_max = 0.0f;
					rect uv;
					uv.m_x_min = 0.0f;
					uv.m_x_max = 1.0f;
					uv.m_y_min = 0.0f;
					uv.m_y_max = 1.0f;
					rh->draw_bitmap(mat, bmp, coords, uv, transformed_color);
				}
				else if (g.m_bounds.m_x_max > 0.0f && g.m_bounds.m_y_max > 0.0f)
				{
					// device font glyph
					rect bounds;
					bounds.m_x_min = -g.m_bounds.m_x_min;
					bounds.m_x_max = g.m_bounds.m_x_max - g.m_bounds.m_x_min;
					bounds.m_y_min = -g.m_bounds.m_y_min;
					bounds.m_y_max = g.m_bounds.m_y_max - g.m_bounds.m_y_min;
					const float em = 1024.0f / (float) (Uint16) g.m_fontsize;

					rect uv;
					float width_scale;
					float height_scale;
					if (glyph_cache == NULL && bitmap_cache == NULL)
					{
						uv.m_x_min = 0.0f;
						uv.m_x_max = g.m_bounds.m_x_max;
						uv.m_y_min = 0.0f;
						uv.m_y_max = g.m_bounds.m_y_max;
						width_scale = (float) bmp->get_width() * em;
						height_scale = (float) bmp->get_height() * em;
					}
					else
					{
						// The binary reads the glyph cache's texture without a NULL test here.
						const bool in_glyph_cache = (glyph_cache != NULL) && (bmp == glyph_cache->m_texture.get_ptr());
						if (in_glyph_cache)
						{
							glyph_cache->get_glyph_region(g.m_code, g.m_entity, (Uint16) g.m_fontsize, no_filter, uv);
						}
						else
						{
							bitmap_cache->get_glyph_region(g.m_code, g.m_entity, (Uint16) g.m_fontsize, uv);
						}
						width_scale = em * (uv.m_x_max - uv.m_x_min);
						height_scale = em * (uv.m_y_max - uv.m_y_min);

						float x_min;	// the x origin of the rectangle that is divided by the texture width below
						if ((offset_y | offset_x) != 0 && in_glyph_cache)
						{
							rect filtered;
							glyph_cache->get_glyph_region(g.m_code, g.m_entity, (Uint16) g.m_fontsize, offset_filter, filtered);
							float w = uv.m_x_max - uv.m_x_min;
							x_min = filtered.m_x_min;
							uv.m_x_min = filtered.m_x_min;
							float h = uv.m_y_max - uv.m_y_min;
							float x_end = w + filtered.m_x_min;
							uv.m_x_max = x_end;
							uv.m_y_min = filtered.m_y_min;
							float y_end = h + filtered.m_y_min;
							float height = y_end - filtered.m_y_min;
							uv.m_y_max = y_end;
							bounds.m_x_max = bounds.m_x_max + (offset_extent_x / (x_end - filtered.m_x_min));
							bounds.m_y_max = bounds.m_y_max + (offset_extent_y / height);
							uv.m_x_max = x_end - (((1.0f - g.m_bounds.m_x_max) * (x_end - filtered.m_x_min)) - offset_extent_x);
							uv.m_y_max = y_end - (((1.0f - g.m_bounds.m_y_max) * height) - offset_extent_y);
						}
						else if (blur != 0 && in_glyph_cache)
						{
							glyph_texture_cache::filter_info blur_filter = { blur, 0, 0 };
							rect filtered;
							glyph_cache->get_glyph_region(g.m_code, g.m_entity, (Uint16) g.m_fontsize, blur_filter, filtered);
							float w = uv.m_x_max - uv.m_x_min;
							x_min = filtered.m_x_min;
							uv.m_x_min = filtered.m_x_min;
							float h = uv.m_y_max - uv.m_y_min;
							float x_end = w + filtered.m_x_min;
							uv.m_x_max = x_end;
							uv.m_y_min = filtered.m_y_min;
							float y_end = h + filtered.m_y_min;
							float height = y_end - filtered.m_y_min;
							uv.m_y_max = y_end;
							bounds.m_x_max = bounds.m_x_max + (blur_extent / (x_end - filtered.m_x_min));
							bounds.m_y_max = bounds.m_y_max + (blur_extent / height);
							uv.m_x_max = x_end - (((1.0f - g.m_bounds.m_x_max) * (x_end - filtered.m_x_min)) - blur_extent);
							uv.m_y_max = y_end - (((1.0f - g.m_bounds.m_y_max) * height) - blur_extent);
						}
						else
						{
							uv.m_x_max = uv.m_x_max - ((1.0f - g.m_bounds.m_x_max) * (uv.m_x_max - uv.m_x_min));
							uv.m_y_max = uv.m_y_max - ((1.0f - g.m_bounds.m_y_max) * (uv.m_y_max - uv.m_y_min));
							x_min = uv.m_x_min;
						}

						// To texture coordinates.
						uv.m_x_min = x_min / (float) bmp->get_width();
						uv.m_y_min = uv.m_y_min / (float) bmp->get_height();
						uv.m_x_max = uv.m_x_max / (float) bmp->get_width();
						uv.m_y_max = uv.m_y_max / (float) bmp->get_height();
					}

					if (fnt && fnt->is_define_font3())
					{
						width_scale = width_scale * 20.0f;
						height_scale = height_scale * 20.0f;
					}
					bounds.m_x_min = bounds.m_x_min * width_scale;
					bounds.m_x_max = bounds.m_x_max * width_scale;
					bounds.m_y_min = bounds.m_y_min * height_scale;
					bounds.m_y_max = bounds.m_y_max * height_scale;
					rh->draw_bitmap(mat, bmp, bounds, uv, transformed_color);
				}
			}

			x += rec.m_glyphs[j].m_glyph_advance;
		}
	}
}

}  // namespace gameswf
