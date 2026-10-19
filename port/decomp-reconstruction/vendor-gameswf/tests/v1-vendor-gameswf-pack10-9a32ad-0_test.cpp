// Test for batch v1-vendor-gameswf-pack10-9a32ad-0. Checks the bucket-count rule behind hash<>::set_raw_capacity,
// that the rebuilt tables keep every entry (tu_stringi key, region-pointer key), and html_reader::parse_tag.
// set_raw_capacity is private in base/container.h, so the tables are resized through the public set_capacity(),
// which calls it. Returns non-zero when a check fails.
//
// The stand-ins below replace the allocator and ref_counted bodies, which are other batches.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack10-9a32ad-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp

#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_hash_dh2.hpp"
#include "vendor-gameswf/html_reader.hpp"
#include "vendor-gameswf/texture_cache.hpp"

// Host stand-ins for the DH2 allocator. Its bodies are in another batch's source file, which this test does not link.
namespace gameswf {
void* malloc_internal(unsigned int size, swf::MemHint) { return std::malloc(size); }
void free_internal(void* p, unsigned int) { std::free(p); }
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) { return std::realloc(p, new_size); }
// html_reader holds an array of edit_text_character::text_attributes, whose font pointer calls drop_ref when the array
// destroys an element. The reader in these tests never holds an element, so the counting functions are never reached.
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

// True when attrs holds key with exactly the text want.
bool attr_is(stringi_hash<tu_string>& attrs, const char* key, const char* want) {
	tu_string value;
	if (!attrs.get(tu_stringi(key), &value)) {
		return false;
	}
	return std::strcmp(value.c_str(), want) == 0;
}

void test_bucket_count() {
	// Binary rule: 1 << (int)(logf(n - 1) / ln2 + 1), at least 4. Values chosen away from the powers of two, where the
	// last bit of the libm result could move the answer (see gameswf_hash_dh2.hpp).
	CHECK(gameswf::dh2_hash::bucket_count(0) == 4);
	CHECK(gameswf::dh2_hash::bucket_count(1) == 4);
	CHECK(gameswf::dh2_hash::bucket_count(2) == 4);
	CHECK(gameswf::dh2_hash::bucket_count(4) == 4);
	CHECK(gameswf::dh2_hash::bucket_count(6) == 8);
	CHECK(gameswf::dh2_hash::bucket_count(7) == 8);
	CHECK(gameswf::dh2_hash::bucket_count(10) == 16);
	CHECK(gameswf::dh2_hash::bucket_count(20) == 32);
	CHECK(gameswf::dh2_hash::bucket_count(100) == 128);
}

void test_parse_tag() {
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "font face='Arial' color=\"#ff0000\" size='12'") == 1);
		CHECK(attrs.size() == 4);
		CHECK(attr_is(attrs, "name", "font"));
		CHECK(attr_is(attrs, "face", "Arial"));
		CHECK(attr_is(attrs, "color", "#ff0000"));
		CHECK(attr_is(attrs, "size", "12"));
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "/font") == 0);  // closing tag: nothing is read
		CHECK(attrs.size() == 0);
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "br") == 1);  // no '=': only the name
		CHECK(attrs.size() == 1);
		CHECK(attr_is(attrs, "name", "br"));
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "br/") == 1);  // name ends at '/'
		CHECK(attr_is(attrs, "name", "br"));
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		// width=32 has no quote after its '=': the scan stops there with 0, keeping the attributes read before it.
		CHECK(reader.parse_tag(attrs, "img src=\"a.png\" width=32") == 0);
		CHECK(attrs.size() == 2);
		CHECK(attr_is(attrs, "src", "a.png"));
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "p align='left") == 0);  // unmatched quote
		CHECK(attrs.size() == 1);
	}
	{
		gameswf::html_reader reader;
		stringi_hash<tu_string> attrs;
		CHECK(reader.parse_tag(attrs, "a href=\"x\" title='y'") == 1);  // quote kinds may differ per attribute
		CHECK(attr_is(attrs, "href", "x"));
		CHECK(attr_is(attrs, "title", "y"));
	}
}

void test_tu_stringi_table_rebuild() {
	stringi_hash<tu_string> h;
	char key[16];
	char value[16];
	for (int i = 0; i < 10; i++) {
		std::snprintf(key, sizeof key, "k%d", i);
		std::snprintf(value, sizeof value, "v%d", i);
		h.set(tu_stringi(key), tu_string(value));
	}
	CHECK(h.size() == 10);

	// Grow: every entry survives the rebuild.
	h.set_capacity(40);
	CHECK(h.size() == 10);
	bool all_found = true;
	for (int i = 0; i < 10; i++) {
		std::snprintf(key, sizeof key, "k%d", i);
		std::snprintf(value, sizeof value, "v%d", i);
		tu_string got;
		all_found = all_found && h.get(tu_stringi(key), &got) && std::strcmp(got.c_str(), value) == 0;
	}
	CHECK(all_found);

	// Shrink to the smallest table that still holds all ten entries (set_capacity never goes below size()).
	h.set_capacity(1);
	CHECK(h.size() == 10);
	all_found = true;
	for (int i = 0; i < 10; i++) {
		std::snprintf(key, sizeof key, "k%d", i);
		tu_string got;
		all_found = all_found && h.get(tu_stringi(key), &got);
	}
	CHECK(all_found);

	h.clear();
	CHECK(h.size() == 0);
}

void test_region_table_rebuild() {
	gameswf::texture_cache::region regions[20];
	::hash<gameswf::texture_cache::region*, gameswf::texture_cache::region*,
	       ::fixed_size_hash<gameswf::texture_cache::region*> > h;
	for (int i = 0; i < 20; i++) {
		h.add(&regions[i], &regions[(i + 1) % 20]);
	}
	CHECK(h.size() == 20);

	h.set_capacity(20);  // raw 30 -> 32 buckets
	CHECK(h.size() == 20);
	bool all_found = true;
	for (int i = 0; i < 20; i++) {
		gameswf::texture_cache::region* got = nullptr;
		all_found = all_found && h.get(&regions[i], &got) && got == &regions[(i + 1) % 20];
	}
	CHECK(all_found);

	h.set_capacity(40);  // raw 60 -> 64 buckets
	CHECK(h.size() == 20);
	h.clear();
	CHECK(h.size() == 0);
}

}  // namespace

int main() {
	test_bucket_count();
	test_parse_tag();
	test_tu_stringi_table_rebuild();
	test_region_table_rebuild();
	if (g_failures != 0) {
		std::printf("%d check(s) failed\n", g_failures);
		return 1;
	}
	std::printf("all checks passed\n");
	return 0;
}
