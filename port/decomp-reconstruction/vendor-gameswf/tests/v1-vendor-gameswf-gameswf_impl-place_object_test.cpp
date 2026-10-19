// Test for the gameswf_impl pass, part 1: gameswf::place_object_2 (src/v1-vendor-gameswf-gameswf_impl-0.cpp).
//
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_impl-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/gameswf_impl_stubs.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack5-64b2da-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack7-2f63b3-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_shape_character_def-7e2b97-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_movie_def.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_styles.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_shape.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_morph2.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_types.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_stream.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/tu_file.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/membuf.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack0-157e56-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack15-a0a47d-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_ref_counted-0eb785-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-5.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-6.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_bitmap_info-d3c4c6-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_render_handler-1ca9d1-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_membuf-3351d8-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_image_alpha-621a91-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_core_stubs.cpp
//
// (The first four are this pass's: the class under test, the real action_buffer::read for the event records, and the two files of weak
// aborting stand-ins for the object runtime. The rest is the "core link set" of the pack4 test: the movie definition, the reader, the
// string cache, the base library. The pack4 test header explains it.)
//
// What runs for real: place_object_2::read, execute, execute_state, execute_state_reverse, get_depth_id_of_replace_or_add_tag, the
// destructor, the tail layout (offset bytes), the reader (stream, matrix, cxform), the permanent string cache (the name), the
// per-depth tables of movie_def_impl, action_buffer::read (pack17) for the event records and the counted_buffer.
// Stand-ins in this file: the character (it records the calls execute makes), read_filter_list (the filter reader, 0x758ca8, is a
// different unit), effect::~effect, s_empty_name, and the constructor of as_s_function (the event handler function: the test records
// the action buffer it receives).
//
// Not covered: the call of place_object_2_loader (it is in gameswf_impl.cpp, which cannot be linked in a test: it needs zlib) and the
// content of the filter list (read_filter_list belongs to gameswf_filters.cpp).
//
// Returns non-zero on failure.

#include <cmath>
#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>
#include <vector>

#include "base/tu_file.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/effect.hpp"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/permanent_string_cache.hpp"
#include "vendor-gameswf/player_context.hpp"

using namespace gameswf;

static int g_failures = 0;
static int g_checks = 0;

#define CHECK(cond)                                                    \
	do {                                                               \
		++g_checks;                                                    \
		if (!(cond)) {                                                 \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
			++g_failures;                                              \
		}                                                              \
	} while (0)

// ---- stand-ins ----

static std::string g_errors;

namespace gameswf {

void log_msg(const char*, ...) {}

void log_error(const char* fmt, ...) {
	char buf[512];
	va_list ap;
	va_start(ap, fmt);
	std::vsnprintf(buf, sizeof(buf), fmt, ap);
	va_end(ap);
	g_errors += buf;
}

::tu_string s_empty_name;

effect::~effect() { m_filters.resize(0); }

// 0x758ca8. The filter reader of the tag: one count byte, then that many default filters. The count of calls and the blend mode that
// was in the effect when the call happened are recorded.
static int g_filter_calls = 0;
void read_filter_list(stream* in, effect& fx) {
	++g_filter_calls;
	int count = in->read_u8();
	for (int i = 0; i < count; i++) {
		filter f;
		f.type = i + 1;
		fx.m_filters.push_back(f);
	}
}

// The event handler function: the constructor of as_s_function (pack21) needs the object runtime; the test keeps what it is given.
static int g_functions_made = 0;
static int g_function_length[32];
static int g_function_offset[32];

}  // namespace gameswf

// ---- bytes ----

namespace {

struct bit_writer {
	std::vector<unsigned char> bytes;
	int used = 0;  // bits used in the last byte (0 = the last byte is complete)

	void bits(unsigned value, int count) {
		for (int i = count - 1; i >= 0; --i) {
			if (used == 0) {
				bytes.push_back(0);
			}
			if ((value >> i) & 1u) {
				bytes.back() = static_cast<unsigned char>(bytes.back() | (0x80 >> used));
			}
			used = (used + 1) & 7;
		}
	}
	void sbits(int value, int count) { bits(static_cast<unsigned>(value) & ((1u << count) - 1u), count); }
	void align() { used = 0; }
	void u8(int v) {
		align();
		bytes.push_back(static_cast<unsigned char>(v));
	}
	void u16(int v) {
		u8(v & 0xFF);
		u8((v >> 8) & 0xFF);
	}
	void u32(unsigned v) {
		u16(static_cast<int>(v & 0xFFFF));
		u16(static_cast<int>(v >> 16));
	}
	void cstr(const char* s) {
		align();
		while (*s) {
			bytes.push_back(static_cast<unsigned char>(*s++));
		}
		bytes.push_back(0);
	}
	// A matrix with no scale and no rotation: 12-bit translation.
	void matrix_translate(int tx, int ty) {
		bits(0, 1);
		bits(0, 1);
		bits(12, 5);
		sbits(tx, 12);
		sbits(ty, 12);
		align();
	}
	// A matrix with a scale (16.16 in 20 bits) and 12-bit translation.
	void matrix_scale_translate(int sx_16_16, int sy_16_16, int tx, int ty) {
		bits(1, 1);
		bits(20, 5);
		sbits(sx_16_16, 20);
		sbits(sy_16_16, 20);
		bits(0, 1);
		bits(12, 5);
		sbits(tx, 12);
		sbits(ty, 12);
		align();
	}
	// The colour transform of PlaceObject (tag 4): multipliers /255 and additions, 3 values each.
	void cxform_rgb(bool has_add, bool has_mult, int nbits, const int (&mult)[3], const int (&add)[3]) {
		align();
		bits(has_add ? 1 : 0, 1);
		bits(has_mult ? 1 : 0, 1);
		bits(nbits, 4);
		if (has_mult) {
			for (int i = 0; i < 3; i++) sbits(mult[i], nbits);
		}
		if (has_add) {
			for (int i = 0; i < 3; i++) sbits(add[i], nbits);
		}
		align();
	}
	// PlaceObject2's colour transform: multipliers /256 and additions, 4 values each.
	void cxform_rgba(bool has_add, bool has_mult, int nbits, const int (&mult)[4], const int (&add)[4]) {
		align();
		bits(has_add ? 1 : 0, 1);
		bits(has_mult ? 1 : 0, 1);
		bits(nbits, 4);
		if (has_mult) {
			for (int i = 0; i < 4; i++) sbits(mult[i], nbits);
		}
		if (has_add) {
			for (int i = 0; i < 4; i++) sbits(add[i], nbits);
		}
		align();
	}
};

// One tag: the record header (short form), then the body.
std::vector<unsigned char> make_tag(int tag_type, const std::vector<unsigned char>& body) {
	std::vector<unsigned char> out;
	const unsigned header = (static_cast<unsigned>(tag_type) << 6) | (body.size() < 63 ? static_cast<unsigned>(body.size()) : 63u);
	out.push_back(static_cast<unsigned char>(header & 0xFF));
	out.push_back(static_cast<unsigned char>(header >> 8));
	if (body.size() >= 63) {
		const unsigned n = static_cast<unsigned>(body.size());
		out.push_back(static_cast<unsigned char>(n & 0xFF));
		out.push_back(static_cast<unsigned char>((n >> 8) & 0xFF));
		out.push_back(static_cast<unsigned char>((n >> 16) & 0xFF));
		out.push_back(static_cast<unsigned char>((n >> 24) & 0xFF));
	}
	out.insert(out.end(), body.begin(), body.end());
	return out;
}

template <class T, class... A>
T* heap_new(A... args) {
	void* mem = operator new(sizeof(T), static_cast<swf::MemHint>(0));
	return new (mem) T(args...);
}

player* fake_player(int first_id) {
	player* p = static_cast<player*>(std::calloc(1, sizeof(player)));
	player_context* c = static_cast<player_context*>(std::calloc(1, sizeof(player_context)));
	c->unk_24 = first_id;
	p->m_context = c;
	return p;
}

// Reads one tag from the bytes with place_object_2::read. The tag header is consumed by open_tag, as the movie reader does.
place_object_2* read_place(player* p, movie_definition_sub* m, const std::vector<unsigned char>& tag_bytes, int version,
						   int* tag_type_out = nullptr, int* end_position_out = nullptr, int* stop_position_out = nullptr) {
	tu_file file(tu_file::memory_buffer);
	file.write_bytes(tag_bytes.data(), static_cast<int>(tag_bytes.size()));
	file.set_position(0);
	stream in(&file);
	const int tag_type = in.open_tag();
	if (tag_type_out) *tag_type_out = tag_type;
	place_object_2* tag = place_object_2::read(p, &in, tag_type, version, m);
	if (end_position_out) *end_position_out = in.get_tag_end_position();
	if (stop_position_out) *stop_position_out = in.get_position();
	return tag;
}

void drop(place_object_2* tag) { destruct<execute_tag>(tag); }

}  // namespace

// ---- the event handler function and the character ----

namespace gameswf {

as_s_function::as_s_function(player* p, const action_buffer* ab, int start, const array<with_stack_entry>& with_stack)
	: as_function(p), m_with_stack(with_stack), m_start_pc(start), m_length(0), m_is_function2(false), m_local_register_count(0),
	  m_function2_flags(0) {
	m_action_buffer = *ab;
	if (g_functions_made < 32) {
		g_function_offset[g_functions_made] = ab->m_action_offset;
	}
	++g_functions_made;
}

as_s_function::~as_s_function() {}

// The character's constructor and destructor (670fee-2, 670fee-1) need the whole object runtime; the recording character below only
// needs a base that can be built and torn down.
character::character(player* p, character* parent, int id, int kind) : as_object(p), m_id(id) {
	(void)parent;
	(void)kind;
}
character::~character() {}
as_object::as_object(player*) {}
as_object::~as_object() {}

}  // namespace gameswf

namespace {

// A character that records what the tags ask of it.
struct recording_character : character {
	struct call {
		std::string what;
		int character_id = 0;
		std::string name;
		int depth = 0;
		bool replace = false;
		int id = 0;
		const cxform* cx = nullptr;
		const matrix* mat = nullptr;
		const effect* fx = nullptr;
		float ratio = 0;
		int clip_depth = 0;
		int events = -1;
		int event_ids[8] = {0, 0, 0, 0, 0, 0, 0, 0};
		int event_keys[8] = {0, 0, 0, 0, 0, 0, 0, 0};
	};
	std::vector<call> calls;
	execute_tag* previous_tag = nullptr;
	int previous_frame = -1, previous_depth = -1, previous_id = -2;

	explicit recording_character(player* p) : character(p, nullptr, 0, AS_CHARACTER) {}

	character* add_display_object(Uint16 character_id, const tu_string& name, const array<swf_event*>& event_handlers, int depth,
								  bool replace_if_depth_is_occupied, const cxform* color_transform, const matrix* mat, const effect* fx,
								  float ratio, Uint16 clip_depth) override {
		call c;
		c.what = "add";
		c.character_id = character_id;
		c.name = name.c_str();
		c.depth = depth;
		c.replace = replace_if_depth_is_occupied;
		c.cx = color_transform;
		c.mat = mat;
		c.fx = fx;
		c.ratio = ratio;
		c.clip_depth = clip_depth;
		c.events = event_handlers.size();
		for (int i = 0; i < event_handlers.size() && i < 8; i++) {
			c.event_ids[i] = event_handlers[i]->m_event.m_id;
			c.event_keys[i] = event_handlers[i]->m_event.m_key_code;
		}
		calls.push_back(c);
		return nullptr;
	}
	void move_display_object(int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio,
							 Uint16 clip_depth) override {
		call c;
		c.what = "move";
		c.depth = depth;
		c.cx = color_transform;
		c.mat = mat;
		c.fx = fx;
		c.ratio = ratio;
		c.clip_depth = clip_depth;
		calls.push_back(c);
	}
	void replace_display_object(Uint16 character_id, const char* name, int depth, const cxform* color_transform, const matrix* mat,
								const effect* fx, float ratio, Uint16 clip_depth) override {
		call c;
		c.what = "replace";
		c.character_id = character_id;
		c.name = name;
		c.depth = depth;
		c.cx = color_transform;
		c.mat = mat;
		c.fx = fx;
		c.ratio = ratio;
		c.clip_depth = clip_depth;
		calls.push_back(c);
	}
	void remove_display_object(int depth, int id) override {
		call c;
		c.what = "remove";
		c.depth = depth;
		c.id = id;
		calls.push_back(c);
	}
	execute_tag* find_previous_replace_or_add_tag(int current_frame, int depth, int id) override {
		previous_frame = current_frame;
		previous_depth = depth;
		previous_id = id;
		return previous_tag;
	}
};

// A tag that counts execute_state calls (the "previous add" that execute_state_reverse of a REPLACE re-executes).
struct state_counter : execute_tag {
	int states = 0;
	character* last = nullptr;
	void execute_state(character* m) override {
		++states;
		last = m;
	}
};

movie_def_impl* make_movie(player* p) {
	movie_def_impl* m = heap_new<movie_def_impl>(p, DO_LOAD_BITMAPS, DO_LOAD_FONT_SHAPES);
	m->add_ref();
	return m;
}

const int kNoCx3[3] = {0, 0, 0};
const int kNoCx4[4] = {0, 0, 0, 0};

// ---- tests ----

void test_place_object_tag4() {
	player* p = fake_player(1);
	movie_def_impl* m = make_movie(p);

	// PlaceObject: character 7 at depth 3, translation (100, -40) twips, no colour transform (the tag ends after the matrix).
	bit_writer body;
	body.u16(7);
	body.u16(3);
	body.matrix_translate(100, -40);
	int tag_type = 0;
	place_object_2* tag = read_place(p, m, make_tag(4, body.bytes), 8, &tag_type);
	CHECK(tag_type == 4);
	CHECK(tag != nullptr);
	CHECK(tag->m_tag_type == 4);
	CHECK(tag->m_character_id == 7);
	CHECK(tag->m_depth == 3);
	CHECK(tag->get_depth() == 3);
	CHECK(tag->m_place_type == place_object_2::PLACE);
	CHECK(tag->is_place_tag());
	CHECK(!tag->is_remove_tag() && !tag->is_action_tag());
	CHECK(tag->get_action_offset() == -1);
	CHECK(tag->m_ratio == 0 && tag->get_ratio() == 0.0f);
	CHECK(tag->m_clip_depth == 0);
	// PlaceObject always has a matrix and a colour transform; nothing else.
	CHECK(tag->m_matrix_offset != 0 && tag->m_cxform_offset != 0);
	CHECK(tag->m_name_offset == 0 && tag->m_effect_offset == 0 && tag->m_event_handlers_offset == 0);
	CHECK(tag->get_name() == &s_empty_name);
	CHECK(tag->get_effect() == nullptr && tag->get_event_handlers() == nullptr);
	CHECK(tag->m_previous_cxform == nullptr && tag->m_previous_matrix == nullptr);
	// The parts are inside the block, after the header, in the order matrix then colour transform.
	const unsigned char* base = reinterpret_cast<const unsigned char*>(tag);
	CHECK(reinterpret_cast<const unsigned char*>(tag->get_matrix()) == base + tag->m_matrix_offset);
	CHECK(tag->m_matrix_offset >= sizeof(place_object_2));
	CHECK(tag->m_cxform_offset >= tag->m_matrix_offset + sizeof(matrix));
	CHECK(tag->get_matrix()->m_[0][2] == 100.0f && tag->get_matrix()->m_[1][2] == -40.0f);
	CHECK(tag->get_matrix()->m_[0][0] == 1.0f && tag->get_matrix()->m_[1][1] == 1.0f);
	// The colour transform is the identity.
	for (int i = 0; i < 4; i++) {
		CHECK(tag->get_cxform()->m_[i][0] == 1.0f && tag->get_cxform()->m_[i][1] == 0.0f);
	}
	// depth_id: the depth in the high half, the character id in the low half (PlaceObject names its character).
	CHECK(tag->get_depth_id_of_replace_or_add_tag() == ((3u << 16) | 7u));
	// The tag is the latest at its depth in the movie's tables.
	matrix* in_table_matrix = nullptr;
	cxform* in_table_cxform = nullptr;
	CHECK(m->m_depth_matrices.get(3, &in_table_matrix) && in_table_matrix == tag->get_matrix());
	CHECK(m->m_depth_cxforms.get(3, &in_table_cxform) && in_table_cxform == tag->get_cxform());
	CHECK(m->m_depth_matrices.size() == 1 && m->m_depth_cxforms.size() == 1);

	// A second PlaceObject at the same depth, now with a colour transform (multiply 128/255 on red, add 10 on green).
	const int mult[3] = {128, 255, 255};
	const int add[3] = {0, 10, 0};
	bit_writer body2;
	body2.u16(9);
	body2.u16(3);
	body2.matrix_scale_translate(2 << 16, 1 << 16, 5, 6);
	body2.cxform_rgb(true, true, 9, mult, add);
	place_object_2* second = read_place(p, m, make_tag(4, body2.bytes), 8);
	CHECK(second != nullptr);
	CHECK(second->m_character_id == 9);
	// It took the entries of the first tag as its previous ones, then replaced them in the table.
	CHECK(second->m_previous_matrix == tag->get_matrix());
	CHECK(second->m_previous_cxform == tag->get_cxform());
	CHECK(m->m_depth_matrices.get(3, &in_table_matrix) && in_table_matrix == second->get_matrix());
	CHECK(m->m_depth_cxforms.get(3, &in_table_cxform) && in_table_cxform == second->get_cxform());
	CHECK(second->get_matrix()->m_[0][0] == 2.0f && second->get_matrix()->m_[1][1] == 1.0f);
	CHECK(second->get_matrix()->m_[0][2] == 5.0f && second->get_matrix()->m_[1][2] == 6.0f);
	CHECK(std::fabs(second->get_cxform()->m_[0][0] - 128.0f / 255.0f) < 1e-6f);
	CHECK(second->get_cxform()->m_[1][0] == 1.0f && second->get_cxform()->m_[3][0] == 1.0f);
	CHECK(second->get_cxform()->m_[1][1] == 10.0f && second->get_cxform()->m_[0][1] == 0.0f);

	// A tag at another depth does not disturb depth 3 and has no previous entries.
	bit_writer body3;
	body3.u16(1);
	body3.u16(4);
	body3.matrix_translate(0, 0);
	place_object_2* third = read_place(p, m, make_tag(4, body3.bytes), 8);
	CHECK(third->m_previous_matrix == nullptr && third->m_previous_cxform == nullptr);
	CHECK(m->m_depth_matrices.size() == 2);

	// Execution of a PlaceObject: add_display_object with the id, the empty name, replace flag false (tag 4), pointers to the parts.
	recording_character ch(p);
	tag->execute(&ch);
	CHECK(ch.calls.size() == 1);
	if (ch.calls.size() == 1) {
		const recording_character::call& c = ch.calls[0];
		CHECK(c.what == "add");
		CHECK(c.character_id == 7 && c.depth == 3 && !c.replace);
		CHECK(c.name == "");
		CHECK(c.cx == tag->get_cxform() && c.mat == tag->get_matrix() && c.fx == nullptr);
		CHECK(c.ratio == 0.0f && c.clip_depth == 0 && c.events == 0);
	}
	// execute_state is the same call.
	ch.calls.clear();
	tag->execute_state(&ch);
	CHECK(ch.calls.size() == 1 && ch.calls[0].what == "add");

	// Reverse of a PlaceObject: remove the character at the depth by id.
	ch.calls.clear();
	tag->execute_state_reverse(&ch, 5);
	CHECK(ch.calls.size() == 1 && ch.calls[0].what == "remove" && ch.calls[0].depth == 3 && ch.calls[0].id == 7);

	drop(tag);
	drop(second);
	drop(third);
}

void test_place_object_tag4_truncated_cxform() {
	player* p = fake_player(1);
	movie_def_impl* m = make_movie(p);
	// The colour transform is read only when the tag has bytes left after the matrix.
	bit_writer with_cx;
	with_cx.u16(2);
	with_cx.u16(1);
	with_cx.matrix_translate(1, 2);
	const int mult[3] = {0, 0, 0};
	const int add[3] = {-5, 6, 7};
	with_cx.cxform_rgb(true, false, 5, mult, add);
	int end_pos = 0, stop_pos = 0;
	place_object_2* t = read_place(p, m, make_tag(4, with_cx.bytes), 8, nullptr, &end_pos, &stop_pos);
	CHECK(stop_pos == end_pos);  // everything consumed
	CHECK(t->get_cxform()->m_[0][1] == -5.0f && t->get_cxform()->m_[1][1] == 6.0f && t->get_cxform()->m_[2][1] == 7.0f);
	// no multiplier: all four are 1
	for (int i = 0; i < 4; i++) CHECK(t->get_cxform()->m_[i][0] == 1.0f);
	drop(t);
}

void test_place_object2_flags() {
	player* p = fake_player(1);
	movie_def_impl* m = make_movie(p);
	recording_character ch(p);

	// PlaceObject2 with a character, no move: PLACE. Fields: ratio, name, clip depth.
	// flags: has_name | has_ratio | has_char, and has_clip_bracket. bit order: actions clip name ratio cxform matrix char move
	{
		bit_writer b;
		b.u8(0x40 | 0x20 | 0x10 | 0x02);  // clip, name, ratio, char
		b.u16(11);                         // depth
		b.u16(21);                         // character id
		b.u16(0x8000);                     // ratio
		b.cstr("hero");                    // name
		b.u16(15);                         // clip depth
		int end_pos = 0, stop_pos = 0;
		place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8, nullptr, &end_pos, &stop_pos);
		CHECK(t != nullptr && stop_pos == end_pos);
		CHECK(t->m_tag_type == 26);
		CHECK(t->m_place_type == place_object_2::PLACE);
		CHECK(t->m_depth == 11 && t->m_character_id == 21 && t->m_ratio == 0x8000 && t->m_clip_depth == 15);
		CHECK(t->m_matrix_offset == 0 && t->m_cxform_offset == 0 && t->m_effect_offset == 0 && t->m_event_handlers_offset == 0);
		CHECK(t->m_name_offset != 0);
		CHECK(std::strcmp(t->get_name()->c_str(), "hero") == 0);
		CHECK(std::fabs(t->get_ratio() - 32768.0f / 65535.0f) < 1e-7f);
		CHECK(t->get_matrix() == nullptr && t->get_cxform() == nullptr);
		// Tags of this kind do not touch the per-depth tables (no matrix, no cxform).
		CHECK(m->m_depth_matrices.size() == 0 && m->m_depth_cxforms.size() == 0);
		// depth_id: the id is not part of it for PlaceObject2 (0xffff).
		CHECK(t->get_depth_id_of_replace_or_add_tag() == ((11u << 16) | 0xFFFFu));

		// execute: add_display_object with the name object, replace flag true (not tag 4), the ratio as a float.
		ch.calls.clear();
		t->execute(&ch);
		CHECK(ch.calls.size() == 1);
		if (ch.calls.size() == 1) {
			const recording_character::call& c = ch.calls[0];
			CHECK(c.what == "add" && c.character_id == 21 && c.depth == 11 && c.replace);
			CHECK(c.name == "hero");
			CHECK(c.cx == nullptr && c.mat == nullptr && c.fx == nullptr);
			CHECK(std::fabs(c.ratio - 32768.0f / 65535.0f) < 1e-7f);
			CHECK(c.clip_depth == 15 && c.events == 0);
		}
		// Reverse of a PLACE of a PlaceObject2: remove by depth only (id -1).
		ch.calls.clear();
		t->execute_state_reverse(&ch, 2);
		CHECK(ch.calls.size() == 1 && ch.calls[0].what == "remove" && ch.calls[0].depth == 11 && ch.calls[0].id == -1);

		// The same name in a second tag is the same interned string.
		bit_writer b2;
		b2.u8(0x20 | 0x02);
		b2.u16(12);
		b2.u16(22);
		b2.cstr("hero");
		place_object_2* t2 = read_place(p, m, make_tag(26, b2.bytes), 8);
		CHECK(t2->get_name() == t->get_name());
		// A different name is another string.
		bit_writer b3;
		b3.u8(0x20 | 0x02);
		b3.u16(13);
		b3.u16(23);
		b3.cstr("villain");
		place_object_2* t3 = read_place(p, m, make_tag(26, b3.bytes), 8);
		CHECK(t3->get_name() != t->get_name() && std::strcmp(t3->get_name()->c_str(), "villain") == 0);
		drop(t);
		drop(t2);
		drop(t3);
	}

	// PlaceObject2 with a matrix and a colour transform and the move flag, no character: MOVE.
	{
		const int mult[4] = {256, 128, 64, 256};
		const int add[4] = {0, 0, 0, 5};
		bit_writer b;
		b.u8(0x08 | 0x04 | 0x01);  // cxform, matrix, move
		b.u16(5);                  // depth
		b.matrix_translate(7, 8);
		b.cxform_rgba(true, true, 10, mult, add);
		place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8);
		CHECK(t->m_place_type == place_object_2::MOVE);
		CHECK(t->m_character_id == 0 && t->m_depth == 5);
		CHECK(t->m_matrix_offset != 0 && t->m_cxform_offset != 0 && t->m_name_offset == 0);
		CHECK(t->get_matrix()->m_[0][2] == 7.0f && t->get_matrix()->m_[1][2] == 8.0f);
		CHECK(t->get_cxform()->m_[0][0] == 1.0f && t->get_cxform()->m_[1][0] == 0.5f && t->get_cxform()->m_[2][0] == 0.25f);
		CHECK(t->get_cxform()->m_[3][0] == 1.0f && t->get_cxform()->m_[3][1] == 5.0f);
		// the parts are laid out matrix, then cxform
		CHECK(t->m_cxform_offset >= t->m_matrix_offset + sizeof(matrix));
		// Not a place for depth_id.
		CHECK(t->get_depth_id_of_replace_or_add_tag() == 0xFFFFFFFFu);
		CHECK(t->is_place_tag());  // the class answers true whatever the type
		matrix* mt = nullptr;
		cxform* ct = nullptr;
		CHECK(m->m_depth_matrices.get(5, &mt) && mt == t->get_matrix());
		CHECK(m->m_depth_cxforms.get(5, &ct) && ct == t->get_cxform());

		ch.calls.clear();
		t->execute(&ch);
		CHECK(ch.calls.size() == 1);
		if (ch.calls.size() == 1) {
			const recording_character::call& c = ch.calls[0];
			CHECK(c.what == "move" && c.depth == 5);
			CHECK(c.cx == t->get_cxform() && c.mat == t->get_matrix() && c.fx == nullptr);
		}

		// A second MOVE at the same depth takes this tag's parts as its previous ones; its reverse moves back to them.
		bit_writer b2;
		b2.u8(0x04 | 0x01);
		b2.u16(5);
		b2.matrix_translate(70, 80);
		place_object_2* t2 = read_place(p, m, make_tag(26, b2.bytes), 8);
		CHECK(t2->m_previous_matrix == t->get_matrix() && t2->m_previous_cxform == t->get_cxform());
		CHECK(t2->get_cxform() == nullptr);
		ch.calls.clear();
		t2->execute_state_reverse(&ch, 3);
		CHECK(ch.calls.size() == 1);
		if (ch.calls.size() == 1) {
			const recording_character::call& c = ch.calls[0];
			CHECK(c.what == "move" && c.depth == 5);
			CHECK(c.cx == t->get_cxform() && c.mat == t->get_matrix());
		}
		// With no previous tag, the reverse of a MOVE moves to the identities.
		bit_writer b3;
		b3.u8(0x04 | 0x01);
		b3.u16(6);
		b3.matrix_translate(1, 1);
		place_object_2* t3 = read_place(p, m, make_tag(26, b3.bytes), 8);
		CHECK(t3->m_previous_matrix == nullptr && t3->m_previous_cxform == nullptr);
		ch.calls.clear();
		t3->execute_state_reverse(&ch, 3);
		CHECK(ch.calls.size() == 1 && ch.calls[0].cx == &cxform::identity && ch.calls[0].mat == &matrix::identity);
		drop(t);
		drop(t2);
		drop(t3);
	}

	// PlaceObject2 with a character and the move flag: REPLACE. Execute replaces; reverse re-executes the previous add.
	{
		bit_writer b;
		b.u8(0x20 | 0x02 | 0x01);  // name, char, move
		b.u16(9);
		b.u16(33);
		b.cstr("swap");
		place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8);
		CHECK(t->m_place_type == place_object_2::REPLACE);
		CHECK(t->get_depth_id_of_replace_or_add_tag() == ((9u << 16) | 0xFFFFu));
		ch.calls.clear();
		t->execute(&ch);
		CHECK(ch.calls.size() == 1);
		if (ch.calls.size() == 1) {
			const recording_character::call& c = ch.calls[0];
			CHECK(c.what == "replace" && c.character_id == 33 && c.depth == 9 && c.name == "swap");
			CHECK(c.cx == nullptr && c.mat == nullptr && c.fx == nullptr && c.ratio == 0.0f && c.clip_depth == 0);
		}
		state_counter previous;
		ch.previous_tag = &previous;
		ch.calls.clear();
		t->execute_state_reverse(&ch, 12);
		CHECK(ch.previous_frame == 12 && ch.previous_depth == 9 && ch.previous_id == -1);
		CHECK(previous.states == 1 && previous.last == &ch);
		CHECK(ch.calls.empty());
		// No previous add: the log says so, nothing is executed.
		ch.previous_tag = nullptr;
		g_errors.clear();
		t->execute_state_reverse(&ch, 13);
		CHECK(g_errors == "reverse REPLACE can't find previous replace or add tag(13, 9)\n");
		CHECK(previous.states == 1);
		ch.previous_tag = nullptr;
		drop(t);
	}

	// Neither a character nor the move flag: the type stays PLACE (and the tag has a depth and nothing else).
	{
		bit_writer b;
		b.u8(0x00);
		b.u16(40);
		place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8);
		CHECK(t->m_place_type == place_object_2::PLACE && t->m_depth == 40 && t->m_character_id == 0);
		CHECK(t->get_depth_id_of_replace_or_add_tag() == ((40u << 16) | 0xFFFFu));
		drop(t);
	}

	// An unknown tag type gives null and reads nothing.
	{
		bit_writer b;
		b.u16(1);
		place_object_2* t = read_place(p, m, make_tag(27, b.bytes), 8);
		CHECK(t == nullptr);
	}
}

void test_place_object3_effect() {
	player* p = fake_player(1);
	movie_def_impl* m = make_movie(p);
	recording_character ch(p);

	// PlaceObject3 with a blend mode only: has_blend_mode in the second flag byte (bit 0x02). The effect part holds the mode.
	{
		bit_writer b;
		b.u8(0x02);       // char
		b.u8(0x02);       // blend mode (the second flag byte: 3 unused, image, class name, cache, blend, filters)
		b.u16(2);         // depth
		b.u16(77);        // character id
		b.u8(13);         // blend mode byte
		g_filter_calls = 0;
		int end_pos = 0, stop_pos = 0;
		place_object_2* t = read_place(p, m, make_tag(70, b.bytes), 8, nullptr, &end_pos, &stop_pos);
		CHECK(t->m_tag_type == 70 && t->m_effect_offset != 0);
		CHECK(stop_pos == end_pos);
		CHECK(g_filter_calls == 0);
		CHECK(t->get_effect() != nullptr && t->get_effect()->m_blend_mode == 13 && t->get_effect()->m_filters.size() == 0);
		ch.calls.clear();
		t->execute(&ch);
		CHECK(ch.calls.size() == 1 && ch.calls[0].what == "add" && ch.calls[0].fx == t->get_effect());
		drop(t);
	}

	// With a filter list: read_filter_list runs before the blend mode byte is read, and the filters are copied into the part.
	{
		bit_writer b;
		b.u8(0x02);
		b.u8(0x03);       // blend mode and filter list
		b.u16(2);
		b.u16(78);
		b.u8(3);          // the stand-in reader: three filters
		b.u8(5);          // blend mode byte
		g_filter_calls = 0;
		int end_pos = 0, stop_pos = 0;
		place_object_2* t = read_place(p, m, make_tag(70, b.bytes), 8, nullptr, &end_pos, &stop_pos);
		CHECK(g_filter_calls == 1);
		CHECK(stop_pos == end_pos);
		effect* fx = t->get_effect();
		CHECK(fx != nullptr && fx->m_blend_mode == 5 && fx->m_filters.size() == 3);
		if (fx != nullptr && fx->m_filters.size() == 3) {
			CHECK(fx->m_filters[0].type == 1 && fx->m_filters[1].type == 2 && fx->m_filters[2].type == 3);
		}
		drop(t);
	}

	// A filter list alone has an effect with blend mode 0; a tag of type 26 has no such flags.
	{
		bit_writer b;
		b.u8(0x02);
		b.u8(0x01);       // filter list
		b.u16(2);
		b.u16(79);
		b.u8(1);
		place_object_2* t = read_place(p, m, make_tag(70, b.bytes), 8);
		CHECK(t->get_effect() != nullptr && t->get_effect()->m_blend_mode == 0 && t->get_effect()->m_filters.size() == 1);
		drop(t);
	}
	{
		bit_writer b;
		b.u8(0x02);
		b.u16(2);
		b.u16(80);
		g_filter_calls = 0;
		place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8);
		CHECK(t->m_effect_offset == 0 && g_filter_calls == 0);
		drop(t);
	}

	// All the parts at once: matrix, cxform, name, effect and event array each have their own offset, in this order, and the
	// parts are aligned for their types.
	{
		const int mult[4] = {256, 256, 256, 256};
		bit_writer b;
		b.u8(0x80 | 0x20 | 0x08 | 0x04 | 0x02);  // actions, name, cxform, matrix, char
		b.u8(0x02);                              // blend mode
		b.u16(2);
		b.u16(81);
		b.matrix_translate(3, 4);
		b.cxform_rgba(false, true, 10, mult, kNoCx4);
		b.cstr("all");
		b.u8(9);                                 // blend mode byte
		b.u16(0);                                // actions: reserved
		b.u32(0);                                // all flags
		b.u32(0);                                // no records
		place_object_2* t = read_place(p, m, make_tag(70, b.bytes), 8);
		CHECK(t->m_matrix_offset >= sizeof(place_object_2));
		CHECK(t->m_cxform_offset >= t->m_matrix_offset + sizeof(matrix));
		CHECK(t->m_name_offset >= t->m_cxform_offset + sizeof(cxform));
		CHECK(t->m_effect_offset >= t->m_name_offset + sizeof(permanent_string*));
		CHECK(t->m_event_handlers_offset >= t->m_effect_offset + sizeof(effect));
		CHECK(t->m_matrix_offset % alignof(matrix) == 0 && t->m_cxform_offset % alignof(cxform) == 0);
		CHECK(t->m_name_offset % alignof(permanent_string*) == 0 && t->m_effect_offset % alignof(effect) == 0);
		CHECK(t->m_event_handlers_offset % alignof(array<swf_event*>) == 0);
		CHECK(t->get_event_handlers() != nullptr && t->get_event_handlers()->size() == 0);
		CHECK(std::strcmp(t->get_name()->c_str(), "all") == 0);
		CHECK(t->get_effect()->m_blend_mode == 9);
		CHECK(t->get_matrix()->m_[0][2] == 3.0f && t->get_matrix()->m_[1][2] == 4.0f);
		// Execution passes all of them, and an (empty) copy of the event handlers.
		ch.calls.clear();
		t->execute(&ch);
		CHECK(ch.calls.size() == 1);
		if (ch.calls.size() == 1) {
			const recording_character::call& c = ch.calls[0];
			CHECK(c.cx == t->get_cxform() && c.mat == t->get_matrix() && c.fx == t->get_effect() && c.events == 0);
			CHECK(c.name == "all" && c.character_id == 81 && c.replace);
		}
		drop(t);
	}
}

void test_place_object3_events() {
	player* p = fake_player(1);
	movie_def_impl* m = make_movie(p);
	recording_character ch(p);

	// Two event records. Record 1: ENTER_FRAME and LOAD (bits 0 and 1 of the flags), actions "stop; end". Record 2: the key press
	// bit (1 << 17, and the CONSTRUCT bit 1 << 18) with the key code 0x25, actions "play; end" (length 2 + the key byte).
	bit_writer b;
	b.u8(0x80 | 0x02);  // actions, char
	b.u16(8);           // depth
	b.u16(90);          // character id
	b.u16(0);           // reserved
	b.u32(0x60003);     // all flags
	// record 1 starts here
	const int record1_offset = static_cast<int>(b.bytes.size());
	b.u32((1u << 0) | (1u << 1));
	b.u32(2);           // length of the actions
	b.u8(0x07);         // stop
	b.u8(0x00);         // end
	const int record2_offset = static_cast<int>(b.bytes.size());
	b.u32((1u << 17) | (1u << 18));
	b.u32(3);           // the key code byte counts in the length
	b.u8(0x25);         // key code
	b.u8(0x06);         // play
	b.u8(0x00);         // end
	b.u32(0);           // terminator
	const int tag_header = 2;
	g_functions_made = 0;
	g_errors.clear();
	int end_pos = 0, stop_pos = 0;
	place_object_2* t = read_place(p, m, make_tag(26, b.bytes), 8, nullptr, &end_pos, &stop_pos);
	CHECK(g_errors.empty());
	CHECK(t != nullptr && stop_pos == end_pos);
	array<swf_event*>* events = t->get_event_handlers();
	CHECK(events != nullptr && events->size() == 4);
	if (events != nullptr && events->size() == 4) {
		// one swf_event per set bit, in bit order: ENTER_FRAME... the table of the binary starts with LOAD (bit 0) and ENTER_FRAME (bit 1)
		CHECK((*events)[0]->m_event.m_id == event_id::LOAD);
		CHECK((*events)[1]->m_event.m_id == event_id::ENTER_FRAME);
		CHECK((*events)[2]->m_event.m_id == event_id::KEY_PRESS && (*events)[2]->m_event.m_key_code == 0x25);
		CHECK((*events)[3]->m_event.m_id == event_id::CONSTRUCT);
		CHECK((*events)[3]->m_event.m_key_code == 0);
	}
	// One function per event; each got the action buffer of its record: the length counts the action bytes only, and the action offset
	// is the stream position of the first byte of the record (tag header 2 bytes + the bytes before the record in the body).
	CHECK(g_functions_made == 4);
	if (g_functions_made == 4) {
		const int body_start = tag_header;
		CHECK(g_function_offset[0] == body_start + record1_offset && g_function_offset[1] == body_start + record1_offset);
		CHECK(g_function_offset[2] == body_start + record2_offset && g_function_offset[3] == body_start + record2_offset);
	}
	// Execute hands the character a copy of the handlers: four of them, with their ids.
	ch.calls.clear();
	t->execute(&ch);
	CHECK(ch.calls.size() == 1 && ch.calls[0].events == 4);
	if (ch.calls.size() == 1 && ch.calls[0].events == 4) {
		CHECK(ch.calls[0].event_ids[0] == event_id::LOAD && ch.calls[0].event_ids[3] == event_id::CONSTRUCT);
		CHECK(ch.calls[0].event_keys[2] == 0x25);
	}
	drop(t);  // releases the four swf_events

	// A movie version before 6: 16-bit event flags (and the 16-bit all-flags word).
	{
		bit_writer b5;
		b5.u8(0x80 | 0x02);
		b5.u16(8);
		b5.u16(91);
		b5.u16(0);        // reserved
		b5.u16(0x0004);   // all flags (16 bits)
		b5.u16(1u << 2);  // record: UNLOAD
		b5.u32(2);
		b5.u8(0x07);
		b5.u8(0x00);
		b5.u16(0);        // terminator (16 bits)
		g_functions_made = 0;
		int e = 0, s = 0;
		place_object_2* t5 = read_place(p, m, make_tag(26, b5.bytes), 5, nullptr, &e, &s);
		CHECK(t5 != nullptr && s == e);
		CHECK(t5->get_event_handlers()->size() == 1 && (*t5->get_event_handlers())[0]->m_event.m_id == event_id::UNLOAD);
		drop(t5);
	}

	// A record whose length does not match the actions read: logged, the loop stops, the events made so far stay, the tag is complete.
	{
		bit_writer bad;
		bad.u8(0x80 | 0x02);
		bad.u16(8);
		bad.u16(92);
		bad.u16(0);
		bad.u32(1);
		bad.u32(1);       // the first record is right: length 2 would be needed here, 1 is claimed -> mismatch
		bad.u32(1);
		bad.u32(7);
		bad.u8(0x07);
		bad.u8(0x00);
		g_errors.clear();
		g_functions_made = 0;
		place_object_2* tb = read_place(p, m, make_tag(26, bad.bytes), 8);
		CHECK(tb != nullptr);
		CHECK(g_errors.find("swf_event::read(), event_length = 1, but read 2") == 0);
		CHECK(tb->get_event_handlers()->size() == 0 && g_functions_made == 0);
		CHECK(tb->m_place_type == place_object_2::PLACE);
		drop(tb);
	}

	// A flag word with bits above the known 19 is reported, the known bits still make events.
	{
		bit_writer hi;
		hi.u8(0x80 | 0x02);
		hi.u16(8);
		hi.u16(93);
		hi.u16(0);
		hi.u32(0);
		hi.u32((1u << 20) | (1u << 0));
		hi.u32(2);
		hi.u8(0x07);
		hi.u8(0x00);
		hi.u32(0);
		g_errors.clear();
		place_object_2* th = read_place(p, m, make_tag(26, hi.bytes), 8);
		CHECK(g_errors.find("swf_event::read() -- unknown event type received, flags = 0x100001") == 0);
		CHECK(th->get_event_handlers()->size() == 1 && (*th->get_event_handlers())[0]->m_event.m_id == event_id::LOAD);
		drop(th);
	}
}

}  // namespace

int main() {
	test_place_object_tag4();
	test_place_object_tag4_truncated_cxform();
	test_place_object2_flags();
	test_place_object3_effect();
	test_place_object3_events();
	if (g_failures != 0) {
		std::printf("%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("gameswf_impl place_object_2: all %d checks passed\n", g_checks);
	return 0;
}
