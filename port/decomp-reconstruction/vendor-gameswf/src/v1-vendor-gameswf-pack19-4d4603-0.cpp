// Batch v1-vendor-gameswf-pack19-4d4603-0 (category vendor-gameswf, Gameloft bitmap font code and button records).
//
// Reconstructed (6, compiled here):
//   0x7c4698 default_bitmap_font_entity::get_char_image (the virtual override in bitmap_glyph_provider.hpp)
//   0x7c6488 and 0x7c6570 default_bitmap_font_entity::~default_bitmap_font_entity (D1 and D2, one body)
//   0x7c5020 hash<texture_cache::key, region*, fixed_size_hash<key>>::set_raw_capacity (declared in texture_cache.hpp)
//   0x7c56ec hash<int, glyph_entity*, fixed_size_hash<int>>::set_raw_capacity (declared in bitmap_hash_dh2.hpp)
//   0x7c5e58 hash<tu_stringi, smart_ptr<bitmap_font_entity>, stringi_hash_functor<tu_stringi>>::set_raw_capacity
//            (declared in bitmap_hash_dh2.hpp)
// Reconstructed (2): 0x7c663c and 0x7c68c4 default_bitmap_font_entity constructors (C2 and C1, one body). The stores the
//   binary makes into the name bytes first are the inlined tu_string default constructor (see the comment on the constructor).
// Upstream, no body here (2): hash<tu_stringi, smart_ptr<bitmap_font_entity>>::entry constructors 0x7c5c10 (key, value,
//   next, hash) and 0x7c5c4c (copy). Both are base/container.h's inline entry members, instantiated for this table.
// Reconstructed (6, at the end of this file): button_character_instance::hit_test (0x7c6ba0), ~button_character_instance
//   (0x7c7ac0), get_root_movie (0x7c8020), get_mouse_state (0x7c873c), button_record copy constructor (0x7c708c) and
//   button_character_definition::button_sound_def destructor (0x7c72ec). The classes are declared in gameswf_button.h.
// Skipped (2): deleting destructors 0x7c6554 (default_bitmap_font_entity D0) and 0x7c7b24 (button_character_instance D0).
//   Each is D1 followed by the delete of the object, which the compiler emits from delete.
//
// Offsets are the 32-bit binary's and appear only in comments and in the structs of bitmap_glyph_provider.hpp.
// The glyph hash and the used-region hash use the DH2 set_raw_capacity: the bucket count (power of two, minimum 4)
// comes from the single-precision ln 2 constant 0x3F317218 (gameswf_hash_dh2.hpp), the table storage is malloc_internal
// with the MEM_UNRECOVERED hint, and every live entry is added to the new table and then cleared.

#include <cstddef>
#include <cstdint>

#include "base/container.h"
#include "gameswf/gameswf_button.h"  // button_character_instance, button_record, button_sound_def
#include "base/membuf.h"
#include "base/smart_ptr.h"
#include "base/tu_file.h"
#include "vendor-gameswf/bitmap_glyph_decode.hpp"  // decode and scaled_advance: the inline arithmetic of get_char_image
#include "vendor-gameswf/bitmap_glyph_provider.hpp"  // default_bitmap_font_entity, bitmap_font_entity, bitmap_glyph_provider
#include "vendor-gameswf/bitmap_hash_dh2.hpp"      // the set_raw_capacity declarations for the glyph tables
#include "vendor-gameswf/gameswf_alloc.hpp"        // gameswf::malloc_internal, gameswf::free_internal
#include "vendor-gameswf/gameswf_hash_dh2.hpp"     // gameswf::dh2_hash::bucket_count (0x3F317218 ln 2)
#include "vendor-gameswf/glyph_provider.hpp"       // gameswf::glyph_entity
#include "vendor-gameswf/texture_cache.hpp"        // gameswf::texture_cache::key and region

// ---- hash<> tables: set_raw_capacity -------------------------------------------------------------------------------
// Each body is the upstream generic member (base/container.h) with the DH2 changes: minimum 4 buckets, power of two from
// bucket_count, malloc_internal storage, and the old table freed. Entries are 32 bytes (texture key and tu_stringi key)
// or 16 bytes (int key) in the binary. The host layout is the upstream one. The three bodies below differ only in types.

// 0x7c5020 gameswf::hash<gameswf::texture_cache::key, gameswf::texture_cache::region*, gameswf::fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int)
// Binary: new_size <= 0 clears the table. Otherwise bucket count b. If a table exists with b buckets, return. Else build a
// new table with every next_in_chain set to -2. Each live entry (not empty, not a tombstone) of the old table is added to
// the new one and cleared, in index order. The old table is freed and the new table installed. Keys are 16 bytes, values
// region pointers (no destructors).
template <>
void hash<gameswf::texture_cache::key, gameswf::texture_cache::region*,
          fixed_size_hash<gameswf::texture_cache::key> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<gameswf::texture_cache::key, gameswf::texture_cache::region*,
	     fixed_size_hash<gameswf::texture_cache::key> > rebuilt;  // holds the new table until it is installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				rebuilt.add(e.first, e.second);
				e.clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;  // rebuilt's destructor (clear) now does nothing
}

// 0x7c56ec gameswf::hash<int, gameswf::glyph_entity*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// Same body as 0x7c5020. Entries are 16 bytes (int key at +8, glyph_entity pointer at +12). The value has no destructor.
template <>
void hash<int, gameswf::glyph_entity*, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<int, gameswf::glyph_entity*, fixed_size_hash<int> > rebuilt;  // holds the new table until it is installed
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				rebuilt.add(e.first, e.second);
				e.clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;  // rebuilt's destructor (clear) now does nothing
}

// 0x7c5e58 gameswf::hash<gameswf::tu_stringi, gameswf::smart_ptr<gameswf::bitmap_font_entity>, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
// Same body as 0x7c5020. Entries are 32 bytes (tu_stringi key at +8, smart_ptr value at +28). Each entry is released with
// entry::clear(), which destroys the key (its text) and the value (drop_ref through smart_ptr). The binary calls the
// entry clear for each moved entry, as this body does.
template <>
void hash<tu_stringi, smart_ptr<gameswf::bitmap_font_entity>, stringi_hash_functor<tu_stringi> >::set_raw_capacity(
    int new_size) {
	if (new_size <= 0) {
		clear();
		return;
	}
	const int buckets = gameswf::dh2_hash::bucket_count(new_size);
	if (m_table != nullptr && m_table->m_size_mask + 1 == buckets) {
		return;  // no change in raw capacity
	}

	hash<tu_stringi, smart_ptr<gameswf::bitmap_font_entity>, stringi_hash_functor<tu_stringi> > rebuilt;
	rebuilt.m_table = static_cast<table*>(gameswf::malloc_internal(
		static_cast<unsigned int>(sizeof(table) + sizeof(entry) * buckets), swf::MEM_UNRECOVERED));
	rebuilt.m_table->m_entry_count = 0;
	rebuilt.m_table->m_size_mask = buckets - 1;
	for (int i = 0; i < buckets; i++) {
		rebuilt.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry& e = E(i);
			if (!e.is_empty() && !e.is_tombstone()) {
				rebuilt.add(e.first, e.second);
				e.clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	m_table = rebuilt.m_table;
	rebuilt.m_table = nullptr;  // rebuilt's destructor (clear) now does nothing
}

namespace gameswf {

// ---- default_bitmap_font_entity ------------------------------------------------------------------------------------

// 0x7c4698 gameswf::default_bitmap_font_entity::get_char_image(gameswf::bitmap_glyph_data*, unsigned short, int, gameswf::bitmap_glyph_metrics*)
// Returns 0 when the code is outside the font's glyph range or the glyph is empty. Otherwise returns 1 after filling
// the outputs that are not null:
//   data (binary a2): m_stride = 4 * width, m_width, m_height, and m_pixels (the decoded 32-bit pixels of this entity).
//   metrics (binary a5): m_origin_x = big-endian u16 at glyph +0, m_origin_y = big-endian u32 at header +24,
//     m_size_x = width, m_size_y = height, m_advance = scaled_advance(header +32, glyph +0, glyph +2, font_size).
// The header and the offset table are in m_index_table (binary: the membuf at +0x4c). The glyph's bytes are in
// m_preloaded when the constructor kept the file in memory (binary: the membuf pointer at +0x5c), and otherwise they are
// read from the open file into m_glyph_buffer (binary: the membuf at +0x3c). The binary reads the pixels only when the
// data output is wanted, and the metrics do not depend on the pixels.
int default_bitmap_font_entity::get_char_image(bitmap_glyph_data* data, std::uint16_t code, int font_size,
                                               bitmap_glyph_metrics* metrics) {
	const std::uint8_t* header = static_cast<const std::uint8_t*>(m_index_table.data());
	const int glyph_count = static_cast<int>(bitmap_glyph_decode::be32(header + 12));
	const int index = static_cast<int>(static_cast<std::uint32_t>(code) - bitmap_glyph_decode::be32(header + 36));  // v9
	if (index >= glyph_count || index < 0) {
		return 0;
	}

	// The offset table holds glyph_count + 1 offsets after the 40-byte header: glyph i is [offset(i), offset(i + 1)).
	const std::uint32_t start = bitmap_glyph_decode::be32(header + 4 * (index + 10));  // v11
	const std::uint32_t end = bitmap_glyph_decode::be32(header + 4 * (index + 11));    // v12
	const int size = static_cast<int>(end - start);                                    // v13
	if (end == start) {
		return 0;  // empty glyph
	}

	const std::uint8_t* glyph = nullptr;  // v15
	if (m_preloaded != nullptr) {
		// The offsets are file offsets, and m_preloaded starts after the table (binary: the base is membuf +0x4c's size).
		glyph = static_cast<const std::uint8_t*>(m_preloaded->data()) +
		        (static_cast<int>(start) - m_index_table.size());
	} else {
		if (size > m_glyph_buffer.size()) {
			m_glyph_buffer.resize(size);
		}
		m_file->set_position(static_cast<int>(start));
		m_file->read_fully(&m_glyph_buffer, size);
		glyph = static_cast<const std::uint8_t*>(m_glyph_buffer.data());
	}

	const int width = static_cast<int>(bitmap_glyph_decode::be32(header + 16));   // v18
	const int height = static_cast<int>(bitmap_glyph_decode::be32(header + 20));  // v35
	const int count = static_cast<int>(static_cast<std::uint32_t>(width) * static_cast<std::uint32_t>(height));  // v19

	if (data != nullptr) {
		if (count > m_glyph_pixels.size()) {
			// Binary: grow with zero fill when the count rises (array resize: new elements are value-initialised).
			m_glyph_pixels.resize(count);
		}
		if (count > 0) {
			bitmap_glyph_decode::decode_pixels(glyph, count, &m_glyph_pixels[0]);
		}
		data->m_stride = 4 * width;
		data->m_width = width;
		data->m_height = height;
		data->m_pixels = m_glyph_pixels.size() > 0 ? reinterpret_cast<const unsigned char*>(&m_glyph_pixels[0])
		                                           : nullptr;
	}

	if (metrics != nullptr) {
		metrics->m_origin_x = static_cast<int>(bitmap_glyph_decode::be16(glyph));
		metrics->m_origin_y = static_cast<int>(bitmap_glyph_decode::be32(header + 24));
		metrics->m_size_x = width;
		metrics->m_size_y = height;
		metrics->m_advance = bitmap_glyph_decode::scaled_advance(bitmap_glyph_decode::be32(header + 32),
		                                                        bitmap_glyph_decode::be16(glyph),
		                                                        bitmap_glyph_decode::be16(glyph + 2), font_size);
	}
	return 1;
}

// 0x7c6488 gameswf::default_bitmap_font_entity::~default_bitmap_font_entity()   [D1]
// 0x7c6570 gameswf::default_bitmap_font_entity::~default_bitmap_font_entity()   [D2, same body]
// The binary deletes the preloaded file buffer (+0x5c) and the open file (+0x60), each as a destructor and a free. It
// then destroys the membuf at +0x4c, the membuf at +0x3c, and the pixel array at +0x2c (count set to 0, reserve(0)). Then
// it calls the base destructor. Here the two pointers are deleted in the body, the members are destroyed in reverse
// declaration order after it (same order), and the base destructor runs last. The binary's loop that zeroes below a
// negative count is not written: the count is only ever set to a value that is not negative (see get_char_image).
default_bitmap_font_entity::~default_bitmap_font_entity() {
	delete m_preloaded;
	m_preloaded = nullptr;
	delete m_file;
	m_file = nullptr;
}

// 0x7c663c gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider*, gameswf::tu_string const&)   [C2]
// 0x7c68c4 gameswf::default_bitmap_font_entity::default_bitmap_font_entity(gameswf::bitmap_glyph_provider*, gameswf::tu_string const&)   [C1, same body]
// The stores the binary makes first, into the name (+0x10, +0x11) and into the word at +0x20 with its top byte at +0x23, are the
// inlined default constructor of the 20-byte tu_string member (init_empty: length byte 1, empty text, hash cache 0xFFFFFF,
// interned bit clear); the member's own default constructor does the same, then the name is assigned.
// The file is opened "rb". The constructor reads the 40-byte header and then the offset table. When the provider's
// m_flag is set, it reads the rest of the file into m_preloaded (the table's size is the base of the glyph offsets) and
// closes the file. Otherwise the file stays open for get_char_image. A file that does not open is closed and dropped.
default_bitmap_font_entity::default_bitmap_font_entity(bitmap_glyph_provider* provider, const ::tu_string& name) {
	m_provider = provider;  // +0x0c
	m_name = name;          // +0x10: tu_string::operator=
	m_scale = 1.0f;         // +0x28: replaced below when the header is read

	m_file = new ::tu_file(name.c_str(), "rb");
	if (m_file->get_app_data_DEBUG() != nullptr) {  // the open succeeded: the binary tests the file's first word
		m_file->go_to_end();
		const int file_size = m_file->get_position();
		m_file->set_position(0);

		m_index_table.resize(40);  // the header
		m_file->read_fully(&m_index_table, -1);
		const std::uint8_t* header = static_cast<const std::uint8_t*>(m_index_table.data());
		const float em = static_cast<float>(bitmap_glyph_decode::be32(header + 28));
		m_scale = em * (1024.0f / (em * 20.0f));

		// The offset table: the header plus glyph_count + 1 offsets, read again from the start of the file.
		m_index_table.resize(4 * (static_cast<int>(bitmap_glyph_decode::be32(header + 12)) + 11));
		m_file->set_position(0);
		m_file->read_fully(&m_index_table, -1);

		if (provider->m_flag) {
			m_preloaded = new ::membuf();
			m_preloaded->resize(file_size - m_index_table.size());
			m_file->read_fully(m_preloaded, -1);
			delete m_file;
			m_file = nullptr;
		}
	} else {
		delete m_file;
		m_file = nullptr;
	}
}

}  // namespace gameswf

// ---- Button instance rows and button records ----------------------------------------------------------------------
// The button classes are declared in gameswf_button.h (layouts in the comments there); the rest of the button instance and
// definition is v1-vendor-gameswf-gameswf_button-7c6b4c-0.cpp.

namespace gameswf {

// 0x7c6ba0 gameswf::button_character_instance::hit_test(float, float)
// One virtual call: slot +0x68, get_topmost_mouse_entity(float, float), compared with null.
bool button_character_instance::hit_test(float x, float y) {
	return get_topmost_mouse_entity(x, y) != nullptr;
}

// 0x7c7ac0 gameswf::button_character_instance::~button_character_instance()   [D1]
// The binary empties and frees the record character array (+0xa4), drops the definition (+0xa0) and runs
// character::~character. The member destructors do the same, in that order. 0x7c7b24 is the deleting destructor (D0):
// compiler-generated.
button_character_instance::~button_character_instance() {
}

// 0x7c8020 gameswf::button_character_instance::get_root_movie()
// The parent's get_root_movie (slot +0x134). The asm releases a dead parent link and then calls through the null pointer
// it left, so a button without a live parent crashes in the binary; the call below does the same.
character* button_character_instance::get_root_movie() {
	return get_parent()->get_root_movie();
}

// 0x7c873c gameswf::button_character_instance::get_mouse_state(int*, int*, int*)
// The parent's get_mouse_state (slot +0x70) with the same three pointers (the decompile shows only the first: the asm keeps
// r2 and r3). A dead parent link is released first, and the call goes through the null pointer left behind.
void button_character_instance::get_mouse_state(int* x, int* y, int* buttons) {
	get_parent()->get_mouse_state(x, y, buttons);
}

// 0x7c708c gameswf::button_record::button_record(gameswf::button_record const&)
// Copies the six flag bytes, the id, the definition pointer, the layer, the matrix, the colour transform and the effect's
// blend word; the filter array is a new array resized to the source's size with every 44-byte filter copied; then the
// blend mode word (+0x60).
button_record::button_record(const button_record& rec) :
	m_has_blend_mode(rec.m_has_blend_mode),
	m_has_filter_list(rec.m_has_filter_list),
	m_hit_test(rec.m_hit_test),
	m_down(rec.m_down),
	m_over(rec.m_over),
	m_up(rec.m_up),
	m_character_id(rec.m_character_id),
	m_character_def(rec.m_character_def),
	m_button_layer(rec.m_button_layer),
	m_button_matrix(rec.m_button_matrix),
	m_button_cxform(rec.m_button_cxform),
	m_blend_mode(rec.m_blend_mode) {
	m_effect.m_blend_mode = rec.m_effect.m_blend_mode;
	m_effect.m_filters = rec.m_effect.m_filters;
}

// 0x7c72ec gameswf::button_character_definition::button_sound_def::~button_sound_def()
// The binary walks the four sound infos from the last to the first and empties each envelope array (resize 0, reserve 0).
// The member destructors of button_sound_info[4] do that in the same order.
button_character_definition::button_sound_def::~button_sound_def() {
}

}  // namespace gameswf
