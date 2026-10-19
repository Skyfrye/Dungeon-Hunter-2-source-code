// Batch v1-vendor-gameswf-gameswf-fddef6-3 (vendor-gameswf, owner gameswf, part 4 of 8).
//
// gameswf r1714 with Gameloft changes, as built into libDungeonHunter2.so (32-bit ARM).
// Per-function status and notes are in ledger.d/v1-vendor-gameswf-gameswf-fddef6-3.csv.
//
// Compile scope. Everything in this file compiles with the core headers (no guard macro). The ADPCM decoder is in
// vendor-gameswf/adpcm_dh2.hpp and is compiled and tested on its own.
//
// Upstream definitions replaced by this file (each wrapped in #if 0 in the upstream source):
//   gameswf_as_classes/as_boolean.cpp  as_boolean_valueof (binary is empty, upstream asserts)
//   gameswf_as_classes/as_key.cpp      key_init (binary presizes the member hash, see 0x79f3c4)
//   gameswf_sound.cpp                  define_sound_loader (binary decodes ADPCM inline; upstream
//                                      uses adpcm_expand, and the binary has no byte swap)
//   gameswf_shape.cpp                  write_le<float>, read_le<float> (binary writes and reads the raw
//                                      4 bytes through the file callbacks; upstream calls write_float32/read_float32)
// Upstream bodies that match the binary are not repeated here and are ledgered upstream: broadcaster_init,
// flash_init, geom_init, as_global_get_version, math_floor and math_fabs.

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "base/container.h"   // tu_string (global scope in upstream)
#include "base/tu_file.h"     // tu_file
#include "vendor-gameswf/adpcm_dh2.hpp"

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_font.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_object.h"
#include "gameswf/gameswf_as_classes/as_key.h"
#include "gameswf/gameswf_as_classes/as_array.h"
#include "gameswf/gameswf_as_classes/as_global.h"
#include "gameswf/gameswf_as_classes/as_math.h"
#include "gameswf/gameswf_as_classes/as_boolean.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sound.h"
#include "gameswf/gameswf_text.h"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/bitmap_glyph_texture_cache.hpp"
#include "vendor-gameswf/filter.hpp"
#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/glyph_texture_cache.hpp"
#include "vendor-gameswf/player_context.hpp"
#include "vendor-gameswf/final_shape.hpp"
#include "vendor-gameswf/tesselator_accepter.hpp"

namespace gameswf {

// ---------------------------------------------------------------------------------------------
// Needs only base/container.h and base/tu_file.h.
// ---------------------------------------------------------------------------------------------

// Declared for the specializations below (the primary templates have no generic body).
template <typename T>
void write_le(::tu_file* out, T value);
template <typename T>
T read_le(::tu_file* in);

// 0x77b59c void gameswf::write_le<float>(gameswf::tu_file*, float)
template <>
void write_le<float>(::tu_file* out, float value)
{
	// The binary passes the 4 bytes of the float straight to the file's write callback, as
	// (*(out + 12))(&value, 4, *out). The header's write_bytes() calls the same callback (m_write, which the
	// DH2 layout places at +0x0c; base/tu_file.h notes the extra field). Host order, as the binary.
	out->write_bytes(&value, static_cast<int>(sizeof(value)));
}

// 0x77b84c float gameswf::read_le<float>(gameswf::tu_file*)
template <>
float read_le<float>(::tu_file* in)
{
	// The binary reads 4 bytes into an int and returns it. The float return is the same 32 bits.
	float value = 0.0f;
	in->read_bytes(&value, static_cast<int>(sizeof(value)));
	return value;
}

// 0x79b298 gameswf::as_boolean_valueof(gameswf::fn_call const&)
// The binary is a bare return. The upstream body (gameswf_as_classes/as_boolean.cpp) is assert(0) and is
// #if 0 there. The fn_call type is only named here, so this does not need the gameswf core headers.
struct fn_call;
void as_boolean_valueof(const fn_call& fn)
{
	(void)fn;
}

// 0x78b4d8 void gameswf::removeHTML(gameswf::tu_string&)
// Keeps the text between the nearest '>' before the first "</" and that "</". Binary (checked in the
// disassembly):
//   - empty string: unchanged.
//   - no "</": unchanged (strstr returns null).
//   - the backward scan from the '<' of "</" compares the pointer to the string start at each step, but
//     both pointers move together, so the bound never ends the loop. The binary reads below the string
//     when no '>' precedes "</". That is undefined; this body stops at the start of the string and leaves
//     the string unchanged. Partial for that case only (undefined in the binary).
//   - the first test of the byte at the '<' against '>' is dead (it is '<'), and is not written.
//   - text length zero: the string becomes "".
// The binary's tu_string layout (+0 length-or-0xFF, +1 inline text, +0x0c heap text) is handled by
// length() and c_str(), so this follows the upstream interface.
void removeHTML(tu_string& text)
{
	const int length = text.length();
	if (length <= 0) {
		return;
	}
	const char* start = text.c_str();
	const char* open_close = std::strstr(start, "</");
	if (open_close == nullptr) {
		return;
	}

	const char* gt = open_close - 1;
	while (gt >= start && *gt != '>') {
		--gt;
	}
	if (gt < start) {
		return;  // binary: undefined (no bound on the scan); see the comment above
	}

	const char* after = gt + 1;
	const int count = static_cast<int>(open_close - after);
	if (count <= 0) {
		text = "";
	} else {
		const std::string kept(after, static_cast<std::size_t>(count));
		text = kept.c_str();
	}
}

}  // namespace gameswf

// ---------------------------------------------------------------------------------------------
// Needs the gameswf core headers.
// ---------------------------------------------------------------------------------------------

namespace gameswf {

// External to this batch. The DH2 sound handler pointer is gameswf_sound.cpp's static (local in the binary).
extern sound_handler* s_sound_handler;
int get_sample_rate(int index);
void as_global_array_ctor(const fn_call& fn);
void as_global_textformat_ctor(const fn_call& fn);
void as_global_point_ctor(const fn_call& fn);
void as_global_matrix_ctor(const fn_call& fn);
void as_global_transform_ctor(const fn_call& fn);
void as_global_color_transform_ctor(const fn_call& fn);
void as_broadcaster_initialize(const fn_call& fn);
void key_add_listener(const fn_call& fn);
void key_get_ascii(const fn_call& fn);
void key_get_code(const fn_call& fn);
void key_is_down(const fn_call& fn);
void key_is_toggled(const fn_call& fn);
void key_remove_listener(const fn_call& fn);

// 0x77d0d0 void gameswf::define_sound_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)
// DH2 DefineSound (tag 14). Header fields are read even when no sound handler is set, as the binary does.
// ADPCM (format 1) is decoded here and handed to the handler as native 16-bit (format 7). Format 3 with
// 16-bit samples is also sent as format 7, with no byte swap (the binary is little-endian).
// Partial: the sound_sample object is built as the binary does (player pointer from m_player, then
// add_sound_sample), but the weak-pointer release that the binary inlines before the call is
// represented by get_player(). The sound_sample layout (0x24 bytes, vtable off_990668) is not declared here.
void define_sound_loader(stream* in, int tag_type, movie_definition_sub* m)
{
	(void)tag_type;
	const int character_id = in->read_u16();
	int format = in->read_uint(4);
	const int rate_code = in->read_uint(2);
	const bool sample_16bit = in->read_uint(1) != 0;
	const bool stereo = in->read_uint(1) != 0;
	const int sample_count = static_cast<int>(in->read_u32());

	if (!s_sound_handler) {
		return;
	}

	std::vector<unsigned char> data;
	int data_bytes = 0;
	if (format == 1) {
		// ADPCM: sample_count frames, two bytes per sample, two samples per frame in stereo.
		std::vector<std::int16_t> samples(static_cast<std::size_t>(sample_count) * (stereo ? 2u : 1u));
		dh2::adpcm_expand(*in, samples.data(), sample_count, stereo);
		data_bytes = static_cast<int>(samples.size() * sizeof(std::int16_t));
		data.resize(static_cast<std::size_t>(data_bytes));
		if (data_bytes > 0) {
			std::memcpy(data.data(), samples.data(), static_cast<std::size_t>(data_bytes));
		}
		format = 7;  // FORMAT_NATIVE16
	} else {
		const int tag_bytes = in->get_tag_end_position() - in->get_position();
		data_bytes = tag_bytes > 0 ? tag_bytes : 0;
		data.resize(static_cast<std::size_t>(data_bytes));
		for (int i = 0; i < data_bytes; ++i) {
			data[static_cast<std::size_t>(i)] = in->read_u8();
		}
		if (format == 3 && sample_16bit) {
			format = 7;  // FORMAT_NATIVE16
		}
	}

	const int handler_id = s_sound_handler->create_sound(
		data.data(), data_bytes, sample_count,
		static_cast<sound_handler::format_type>(format),
		get_sample_rate(rate_code), stereo);

	sound_sample* sam = new sound_sample(m->get_player(), handler_id);
	m->add_sound_sample(character_id, sam);
}

// 0x789d98 void gameswf::execute_tesselate(gameswf::mesh_set*, gameswf::shape_character_def const*, float)
// Tesselates a shape into the mesh set. The listing types its arguments as (gameswf* this, mesh_set*, shape*, float); the
// real ones are the mesh set (r0), the shape (r1) and the error tolerance (r2), which is 1.0 when it is not above zero.
// Two accepters are built: fills (strip 0, direct 0) and lines (strip 0, direct 1). One final_shape is made for each fill
// style (at least one) with keep flag 0, style = its index and the tolerance, and one for each line style with keep flag 1.
// The mesh set starts a new layer. For each path that has edges, each of the three styles in turn (fill 0, fill 1, line)
// that is not 0 (the final_shape of style - 1, from the fills for the first two and the lines for the third) gets the path:
// the start point is stored as its pen position and its first point, each edge is added as a straight point when its control
// point equals its anchor and as a quadratic curve from the pen position otherwise, and the path is ended. After a path the
// lines are always flushed; the fills are flushed when the path is the last one or the next path starts a new shape (its
// m_new_shape flag, which the listing reads as +76 from this path, +36 of the next 40-byte element); a new shape also starts
// a new layer after the flushes. Fills go through the fill accepter and lines through the line accepter. The arrays and the
// accepters are released in the reverse order of their construction (lines, fills, line accepter, fill accepter).
void execute_tesselate(mesh_set* ms, const shape_character_def* sh, float error_tolerance)
{
	tesselator_accepter fill_tess(false, false, false);
	tesselator_accepter line_tess(false, true, false);

	const float tolerance = error_tolerance > 0.0f ? error_tolerance : 1.0f;

	array<final_shape> fills;
	int fill_count = sh->get_fill_styles().size();
	if (fill_count < 1)
	{
		fill_count = 1;
	}
	fills.resize(fill_count);
	for (int i = 0; i < fills.size(); i++)
	{
		fills[i].m_keep_segments = false;
		fills[i].m_style = i;
		fills[i].m_tolerance = tolerance;
	}

	array<final_shape> lines;
	lines.resize(sh->get_line_styles().size());
	for (int i = 0; i < lines.size(); i++)
	{
		lines[i].m_keep_segments = true;
		lines[i].m_style = i;
		lines[i].m_tolerance = tolerance;
	}

	ms->new_layer();

	const array<path>& paths = sh->get_paths();
	const int path_count = paths.size();
	for (int p = 0; p < path_count; p++)
	{
		const path& cur = paths[p];
		if (cur.m_edges.size() == 0)
		{
			continue;
		}

		bool new_layer_after;
		bool flush_lines;
		bool flush_fills;
		if (path_count > p + 1 && paths[p + 1].m_new_shape)
		{
			new_layer_after = true;
			flush_lines = true;
			flush_fills = true;
		}
		else if (path_count == p + 1)
		{
			new_layer_after = false;
			flush_lines = true;
			flush_fills = true;
		}
		else
		{
			new_layer_after = false;
			flush_lines = false;
			flush_fills = false;
		}

		for (int k = 0; k != 3; k++)
		{
			int style;
			if (k == 0)
			{
				style = cur.m_fill0;
			}
			else
			{
				style = (k == 1) ? cur.m_fill1 : cur.m_line;
				if (k != 1)
				{
					flush_lines = true;
				}
			}
			const int index = style - 1;
			if (index == -1)
			{
				continue;
			}

			final_shape& target = (k == 2) ? lines[index] : fills[index];
			target.m_last.m_x = cur.m_ax;
			target.m_last.m_y = cur.m_ay;
			const int first = target.m_cur.m_points.size();
			target.m_cur.m_points.push_back(point(cur.m_ax, cur.m_ay));
			target.m_last = target.m_cur.m_points[first];

			for (int e = 0; e < cur.m_edges.size(); e++)
			{
				const edge& ed = cur.m_edges[e];
				if (ed.m_cx == ed.m_ax && ed.m_cy == ed.m_ay)
				{
					const int at = target.m_cur.m_points.size();
					target.m_cur.m_points.push_back(point(ed.m_ax, ed.m_ay));
					target.m_last = target.m_cur.m_points[at];
				}
				else
				{
					target.add_curve(target.m_last.m_x, target.m_last.m_y, ed.m_cx, ed.m_cy, ed.m_ax, ed.m_ay);
				}
			}
			target.end_path();
		}

		if (flush_fills)
		{
			for (int m = 0; m < fills.size(); m++)
			{
				fills[m].flush(ms, fill_tess);
			}
		}
		if (flush_lines)
		{
			for (int n = 0; n < lines.size(); n++)
			{
				lines[n].flush(ms, line_tess);
			}
		}
		if (new_layer_after)
		{
			ms->new_layer();
		}
	}
}

// 0x78b240 int gameswf::preload_glyph_codes(gameswf::player_context*, unsigned short*, int, gameswf::font*, int, gameswf::filter const*)
// Puts the glyphs of a code list into the glyph textures. Each code is looked up in the font at the given size
// (font::get_glyph fills a local glyph whose bitmap tells which texture it lives in). Nothing happens when the context
// has neither a glyph texture cache nor a bitmap glyph texture cache. A glyph whose bitmap is the glyph texture cache's
// own texture goes to glyph_texture_cache::get_glyph_region with a three byte filter record: for a glow filter
// (type 2) the blur byte is the larger of the two blur radii, for a drop shadow or blur (types 0 and 1) the two offset bytes
// are the horizontal and vertical radii; without a filter all three are zero. Any other glyph goes to
// bitmap_glyph_texture_cache::get_glyph_region of the bitmap glyph provider. The result is the code count (0 for a
// count that is not positive). The binary reads through the glyph texture cache and through the bitmap glyph texture
// cache without testing either for null after the first test; this version skips the glyph in that case.
int preload_glyph_codes(player_context* ctx, std::uint16_t* codes, int count, font* f, int size, const filter* flt)
{
	if (count <= 0)
	{
		return 0;
	}

	glyph g;	// advance 512.0, no bitmap, index -1
	g.m_fontsize = static_cast<Sint16>(size);
	for (int i = 0; i < count; ++i)
	{
		g.m_code = codes[i];
		if (!f->get_glyph(&g, g.m_code, size))
		{
			continue;
		}

		glyph_texture_cache* glyph_cache = ctx->m_glyph_provider->m_texture_cache;	// glyph provider +0x28
		texture_cache* bitmap_cache = ctx->m_bitmap_glyph_provider->m_texture_cache;	// bitmap glyph provider +0x0c
		if (glyph_cache == nullptr && bitmap_cache == nullptr)
		{
			continue;
		}

		rect bounds;
		if (glyph_cache != nullptr && g.m_bitmap_info.get_ptr() == glyph_cache->m_texture.get_ptr())
		{
			glyph_texture_cache::filter_info record = {0, 0, 0};
			if (flt)
			{
				if (flt->type == 2)
				{
					record.blur = static_cast<std::uint8_t>(static_cast<unsigned int>(
						flt->blur_x > flt->blur_y ? flt->blur_x : flt->blur_y));
				}
				else if (flt->type >= 0 && flt->type <= 1)
				{
					record.offset_x = static_cast<std::uint8_t>(static_cast<unsigned int>(flt->blur_x));
					record.offset_y = static_cast<std::uint8_t>(static_cast<unsigned int>(flt->blur_y));
				}
			}
			glyph_cache->get_glyph_region(g.m_code, g.m_entity, g.m_fontsize, record, bounds);
		}
		else if (bitmap_cache != nullptr)
		{
			static_cast<bitmap_glyph_texture_cache*>(bitmap_cache)->get_glyph_region(g.m_code, g.m_entity,
				g.m_fontsize, bounds);
		}
	}
	return count;
}

// 0x791d48 void gameswf::get_textformat(gameswf::fn_call const&)
// Builds the TextFormat object of an edit text field (the this pointer, when it is an edit text character, class id 32).
// as_global_textformat_ctor creates the object in fn.result; its members are then set, in this order: leftMargin,
// indent, rightMargin, leading and letterSpacing (twips / 20), color (red << 16 | alpha << 24 | blue | green << 8 as an
// int, from the four colour bytes at +0x170), size (twips / 20), align (the interned "left", "right", "center" or
// "justify" from the player's permanent string cache; an alignment value above 3 sets nothing), font (the interned font
// name of the font at +0x178), bold and italic (booleans from the font). The string values are the cache's interned
// strings, so as_value::set_tu_string stores the pointers instead of copies. The binary does not check the cast of the
// this pointer or the font pointer.
void get_textformat(const fn_call& fn)
{
	edit_text_character* field = nullptr;
	if (fn.this_ptr && fn.this_ptr->is(AS_EDIT_TEXT))
	{
		field = static_cast<edit_text_character*>(fn.this_ptr);
	}

	as_global_textformat_ctor(fn);
	as_object* format = fn.result->to_object();

	auto set_number = [format](const char* name, double number)
	{
		as_value v;
		v.set_double(number);
		format->set_member(name, v);
	};
	auto set_text = [format, &fn](const char* name, const char* text)
	{
		as_value v;
		v.set_tu_string(*fn.get_player()->m_permanent_strings.get(tu_string(text)));
		format->set_member(name, v);
	};

	set_number("leftMargin", field->m_left_margin / 20.0f);
	set_number("indent", field->m_indent / 20.0f);
	set_number("rightMargin", field->m_right_margin / 20.0f);
	set_number("leading", field->m_leading / 20.0f);
	set_number("letterSpacing", field->m_letter_spacing / 20.0f);
	set_number("color", static_cast<double>(static_cast<int>(
		(static_cast<unsigned int>(field->m_color.m_r) << 16) | (static_cast<unsigned int>(field->m_color.m_a) << 24) |
		static_cast<unsigned int>(field->m_color.m_b) | (static_cast<unsigned int>(field->m_color.m_g) << 8))));
	set_number("size", field->m_text_height / 20.0f);

	switch (static_cast<int>(field->m_alignment))
	{
	case 0:
		set_text("align", "left");
		break;
	case 1:
		set_text("align", "right");
		break;
	case 2:
		set_text("align", "center");
		break;
	case 3:
		set_text("align", "justify");
		break;
	default:
		break;
	}

	{
		as_value v;
		v.set_tu_string(*fn.get_player()->m_permanent_strings.get(field->m_font->get_name()));
		format->set_member("font", v);
	}
	{
		as_value v;
		v.set_bool(field->m_font->is_bold());
		format->set_member("bold", v);
	}
	{
		as_value v;
		v.set_bool(field->m_font->is_italic());
		format->set_member("italic", v);
	}
}

// 0x798204 void gameswf::as_array_reverse(gameswf::fn_call const&)
// Reverses the array of this_ptr in place: swaps element i with element n-1-i for i < n/2, through a temporary
// as_value (the binary's three operator= calls). Partial only in the member name: the array is read at +0x4c
// (buffer) and +0x50 (size), which is the as_array array member.
void as_array_reverse(const fn_call& fn)
{
	as_array* arr = cast_to<as_array>(fn.this_ptr);
	const int n = arr->m_array.size();
	for (int i = 0; i < n / 2; ++i) {
		as_value tmp = arr->m_array[i];
		arr->m_array[i] = arr->m_array[n - 1 - i];
		arr->m_array[n - 1 - i] = tmp;
	}
}

// 0x798e44 as_c_function* gameswf::array_init(gameswf::player*)
// Creates the Array constructor (0x40 bytes, as_global_array_ctor) with the sort-option constants:
// CASEINSENSITIVE 1, DESCENDING 2, UNIQUESORT 4, RETURNINDEXEDARRAY 8, NUMERIC 16 (all numbers).
// Matches the binary's double constants (1.0, 2.0, 4.0, 8.0, 16.0).
as_c_function* array_init(player* p)
{
	as_c_function* ctor = new as_c_function(p, as_global_array_ctor);
	static const struct {
		const char* name;
		double value;
	} kConstants[] = {
		{"CASEINSENSITIVE", 1.0},
		{"DESCENDING", 2.0},
		{"UNIQUESORT", 4.0},
		{"RETURNINDEXEDARRAY", 8.0},
		{"NUMERIC", 16.0},
	};
	for (const auto& c : kConstants) {
		as_value v;
		v.set_double(c.value);
		ctor->builtin_member(tu_string(c.name), v);
	}
	return ctor;
}

// 0x79e700 void gameswf::as_global_get_active_controller(gameswf::fn_call const&)
// The player of the environment (weak pointer), its root, and the root's active controller number as the result.
// The binary does not test the player or the root for null.
void as_global_get_active_controller(const fn_call& fn)
{
	const root* r = fn.env->get_player()->get_root();
	fn.result->set_double(static_cast<double>(r->m_active_controller));
}

// 0x79f3c4 as_key* gameswf::key_init(gameswf::player*)
// Upstream gameswf_as_classes/as_key.cpp:107 is #if 0 for this body. Same members as upstream, in binary order:
// the 18 key codes (BACKSPACE 8, CAPSLOCK 20, CONTROL 17, DELETEKEY 46, DOWN 40, END 35, ENTER 13, ESCAPE 27,
// HOME 36, INSERT 45, LEFT 37, PGDN 33, PGUP 34, RIGHT 39, SHIFT 16, SPACE 32, TAB 9, UP 38), then the six
// methods. Before the constants the binary presizes the member hash to max(entry count, 32) * 3 / 2 (48 for an empty
// table), as player::action_init does for the global object.
as_key* key_init(player* p)
{
	as_key* key_obj = new as_key(p);
	const int member_count = key_obj->m_members.size();
	key_obj->m_members.set_capacity(member_count < 32 ? 32 : member_count);

	static const struct {
		const char* name;
		double code;
	} kKeyCodes[] = {
		{"BACKSPACE", 8.0},  {"CAPSLOCK", 20.0}, {"CONTROL", 17.0},  {"DELETEKEY", 46.0}, {"DOWN", 40.0},
		{"END", 35.0},       {"ENTER", 13.0},    {"ESCAPE", 27.0},   {"HOME", 36.0},      {"INSERT", 45.0},
		{"LEFT", 37.0},      {"PGDN", 33.0},     {"PGUP", 34.0},     {"RIGHT", 39.0},    {"SHIFT", 16.0},
		{"SPACE", 32.0},     {"TAB", 9.0},       {"UP", 38.0},
	};
	for (const auto& k : kKeyCodes) {
		as_value v;
		v.set_double(k.code);
		key_obj->set_member(tu_string(k.name), v);
	}

	struct {
		const char* name;
		as_c_function_ptr fn;
	} const kMethods[] = {
		{"addListener", key_add_listener},  {"getAscii", key_get_ascii},     {"getCode", key_get_code},
		{"isDown", key_is_down},            {"isToggled", key_is_toggled},   {"removeListener", key_remove_listener},
	};
	for (const auto& m : kMethods) {
		as_value v;
		v.set_as_c_function(m.fn);
		key_obj->builtin_member(tu_string(m.name), v);
	}
	return key_obj;
}

// 0x7a01d8 void gameswf::math_min(gameswf::fn_call const&)
// DH2 addition (the r1714 two-argument math functions are #if 0). Reads arg(0) then arg(1) (env bottom
// first_arg_bottom_index, then one below), and returns the smaller. NaN in arg(0) is kept, as the binary's
// compare does.
void math_min(const fn_call& fn)
{
	double a = fn.arg(0).to_number();
	const double b = fn.arg(1).to_number();
	if (a >= b) {
		a = b;
	}
	fn.result->set_double(a);
}

// 0x7a0254 void gameswf::math_max(gameswf::fn_call const&)
// DH2 addition, same argument order as math_min. Returns the larger.
void math_max(const fn_call& fn)
{
	double a = fn.arg(0).to_number();
	const double b = fn.arg(1).to_number();
	if (a <= b) {
		a = b;
	}
	fn.result->set_double(a);
}

}  // namespace gameswf

