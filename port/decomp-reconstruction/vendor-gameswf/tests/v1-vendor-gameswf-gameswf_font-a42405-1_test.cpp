// Test for src/v1-vendor-gameswf-gameswf_font-a42405-1.cpp (the set_raw_capacity bodies of the two font tables) and for the
// defaults of the DH2 glyph, text_style and edit_text_character::text_attributes structs, which the font and text bodies rely
// on (advance 512, index -1, white colour, the resolve-font flag set).
//
// set_raw_capacity is private in base/container.h, so the tables are resized through the public set_capacity(), which calls it.
// The allocator and ref_counted bodies are other batches, so host stand-ins are defined below.
//
// Returns non-zero when a check fails.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_font-a42405-1.cpp

#include <cstdio>
#include <cstdlib>

#include "gameswf/gameswf_text.h"
#include "vendor-gameswf/gameswf_alloc.hpp"

namespace gameswf {
void* malloc_internal(unsigned int size, swf::MemHint) { return std::malloc(size); }
void free_internal(void* p, unsigned int) { std::free(p); }
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) { return std::realloc(p, new_size); }
// The glyph, the text style and the text attributes hold counted pointers that stay empty in these tests.
void ref_counted::add_ref() const {}
void ref_counted::drop_ref() {}
}  // namespace gameswf

namespace {

int g_failures = 0;

void check(bool ok, const char* what, int line) {
	if (!ok) {
		++g_failures;
		std::printf("FAIL line %d: %s\n", line, what);
	}
}

#define CHECK(expr) check((expr), #expr, __LINE__)

typedef hash<Uint16, Sint16, gameswf::font::simple_code_hash<Uint16> > code_table;
typedef hash<gameswf::font::kerning_pair, float> kerning_table;

void test_code_table_rebuild() {
	code_table t;
	for (int i = 0; i < 40; i++) {
		t.add((Uint16) (0x20 + i), (Sint16) i);
	}
	CHECK(t.size() == 40);

	// Grow: every entry survives the rebuild and keeps its glyph index.
	t.set_capacity(200);
	CHECK(t.size() == 40);
	bool all_found = true;
	for (int i = 0; i < 40; i++) {
		Sint16 index = -1;
		all_found = all_found && t.get((Uint16) (0x20 + i), &index) && index == i;
	}
	CHECK(all_found);

	// Shrink to the smallest table that holds all of them.
	t.set_capacity(1);
	CHECK(t.size() == 40);
	all_found = true;
	for (int i = 0; i < 40; i++) {
		Sint16 index = -1;
		all_found = all_found && t.get((Uint16) (0x20 + i), &index) && index == i;
	}
	CHECK(all_found);

	Sint16 missing = 0;
	CHECK(t.get((Uint16) 0x7000, &missing) == false);

	t.clear();
	CHECK(t.size() == 0);
}

void test_kerning_table_rebuild() {
	kerning_table t;
	for (int i = 0; i < 25; i++) {
		gameswf::font::kerning_pair k;
		k.m_char0 = (Uint16) ('A' + i);
		k.m_char1 = (Uint16) ('a' + i);
		t[k] = (float) (i - 12);
	}
	CHECK(t.size() == 25);

	t.set_capacity(100);
	CHECK(t.size() == 25);
	bool all_found = true;
	for (int i = 0; i < 25; i++) {
		gameswf::font::kerning_pair k;
		k.m_char0 = (Uint16) ('A' + i);
		k.m_char1 = (Uint16) ('a' + i);
		float adjustment = 1000.0f;
		all_found = all_found && t.get(k, &adjustment) && adjustment == (float) (i - 12);
	}
	CHECK(all_found);

	gameswf::font::kerning_pair absent;
	absent.m_char0 = 'z';
	absent.m_char1 = 'z';
	float none = 0.0f;
	CHECK(t.get(absent, &none) == false);

	t.clear();
	CHECK(t.size() == 0);
}

void test_defaults() {
	gameswf::glyph g;
	CHECK(g.m_glyph_advance == 512.0f);
	CHECK(g.m_glyph_index == -1);
	CHECK(g.m_fontsize == 0);
	CHECK(g.m_code == 0);
	CHECK(g.m_type == 0);
	CHECK(g.m_entity == NULL);
	CHECK(g.m_bitmap_info == NULL);
	CHECK(g.is_renderable() == false);

	gameswf::text_style style;
	CHECK(style.m_font_id == -1);
	CHECK(style.m_font == NULL);
	CHECK(style.m_color.m_r == 255 && style.m_color.m_g == 255 && style.m_color.m_b == 255 && style.m_color.m_a == 255);
	CHECK(style.m_underline == false);
	CHECK(style.m_x_offset == 0.0f && style.m_y_offset == 0.0f);
	CHECK(style.m_text_height == 1.0f);
	CHECK(style.m_has_x_offset == false && style.m_has_y_offset == false);
	CHECK(style.unk_1e == true);

	gameswf::edit_text_character::text_attributes attributes;
	CHECK(attributes.m_font == NULL);
	CHECK(attributes.m_height == 12);
	CHECK(attributes.m_color.m_r == 0 && attributes.m_color.m_g == 0 && attributes.m_color.m_b == 0 && attributes.m_color.m_a == 1);
	CHECK(attributes.m_underline == false);
}

}  // namespace

int main() {
	test_code_table_rebuild();
	test_kerning_table_rebuild();
	test_defaults();
	if (g_failures != 0) {
		std::printf("%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("all checks passed\n");
	return 0;
}
