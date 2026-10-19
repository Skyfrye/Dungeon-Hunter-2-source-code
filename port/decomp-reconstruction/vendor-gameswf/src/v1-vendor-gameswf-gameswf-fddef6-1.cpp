// Batch v1-vendor-gameswf-gameswf-fddef6-1 (part 2 of 8, class owner: gameswf).
//
// Compiled here: get/set_verbose_dlist, register_texture_loader_callback, define_video_loader (thunk),
//   define_native_image_loader, define_debug_id_loader, substitute_bitmap_character, destructp<T>,
//   destruct<gameswf::image_rgb>, destruct<gameswf::image_rgba>, destruct<ref_counted>, destruct<jpeg::input>,
//   destruct<shape_character_def>, destruct<execute_tag>, destruct<character::custom>,
//   hash<int, loader_function>::set_raw_capacity.
// Upstream r1714 code, ledgered as "upstream" without a body here: null_loader, end_loader,
//   jpeg_tables_loader, frame_label_loader.
//
// Naming: the binary puts base-library types in namespace gameswf (gameswf::tu_string, gameswf::image_rgb,
// gameswf::hash). The vendored source has tu_string and hash in the global namespace, and the upstream names
// are used here. gameswf::image_rgb and gameswf::image_rgba are the Gameloft classes, not image::rgb and
// image::rgba from upstream base/image.h: they derive from gameswf::image_base (vendor-gameswf/image_base.hpp).

#include "vendor-gameswf/gameswf_dh2_runtime.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"  // operator new(size, swf::MemHint)

#include <cmath>
#include <cstdint>

#include "base/jpeg.h"
#include "base/membuf.h"
#include "base/tu_file.h"
#include "gameswf/gameswf_stream.h"

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_render.h"  // render::create_bitmap_info_native
#include "gameswf/gameswf_shape.h"

namespace gameswf {

// 0x759b84 / 0x759be4: gameswf::s_verbose_dlist, one byte in .bss (zero at load).
bool s_verbose_dlist = false;

// 0x759cdc: gameswf::s_texture_loader_callback, one word in .bss (zero at load).
texture_loader_callback s_texture_loader_callback = nullptr;

// 0x759b84 gameswf::get_verbose_dlist()
// binary: return (unsigned __int8) s_verbose_dlist;
bool get_verbose_dlist() {
	return s_verbose_dlist;
}

// 0x759be4 gameswf::set_verbose_dlist(bool)
// binary: s_verbose_dlist = verbose;
void set_verbose_dlist(bool verbose) {
	s_verbose_dlist = verbose;
}

// 0x759c74 gameswf::null_loader(stream*, int, movie_definition_sub*)
//   upstream: gameswf/gameswf_impl.cpp, empty body. Ledgered upstream; no body here.

// 0x759cdc gameswf::register_texture_loader_callback(glitch::video::ITexture* (*)(char const*, int, int))
// binary: s_texture_loader_callback = callback; the function returns nothing.
void register_texture_loader_callback(texture_loader_callback callback) {
	s_texture_loader_callback = callback;
}

// 0x759d9c gameswf::define_debug_id_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)
// 0x759cfc gameswf::substitute_bitmap_character(gameswf::tu_string&, gameswf::bitmap_character_def*, gameswf::movie_definition_sub*)
// and the destruct<shape_character_def> / destruct<execute_tag> / destruct<character::custom> instances are below.

// 0x75a4b8 gameswf::define_video_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)
// Thunk in the binary: forwards to stream::read_u16 and drops the value (no video character is created).
// Replaces the upstream body in gameswf/gameswf_impl.cpp, which is disabled with #if 0.
void define_video_loader(stream* in, int tag_type, movie_definition_sub* m) {
	(void)tag_type;
	(void)m;
	in->read_u16();
}

// 0x75afb0 gameswf::inflate_wrapper(gameswf::tu_file*, void*, int): upstream gameswf_impl.cpp (the zlib inflate of a whole stream into a
// buffer); the loader below calls it, and it is declared here only.
void inflate_wrapper(::tu_file* in, void* buffer, int buffer_bytes);

// 0x75fbf8 gameswf::define_native_image_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)
// A bitmap whose pixels the render handler takes as they are (tag read by the Gameloft build: the data is a native texture file).
// Header: u16 character id, u16 width, u16 height, u8 inflate flag, u32 data size. The data goes into a new membuf (operator new(0x10,
// hint 0), resized to the size): inflated with inflate_wrapper when the flag is set, otherwise read whole with tu_file::read_fully(-1).
// The membuf then belongs to the bitmap_info that render::create_bitmap_info_native(width, height, membuf) returns (the glitch
// bitmap releases it). The bitmap_character (operator new(0x34, 0)) is built with the definition's player (the weak pointer at the
// character_def +0x18/+0x1c, a dead proxy is dropped and gives null), the bitmap_info and no rectangle, and added to the definition with
// add_bitmap_character (vtable +0x9c). The width and height are the two u16 values in the order they are read.
void define_native_image_loader(stream* in, int tag_type, movie_definition_sub* m) {
	(void)tag_type;
	Uint16 character_id = in->read_u16();
	Uint16 width = in->read_u16();
	Uint16 height = in->read_u16();
	Uint8 inflate_flag = in->read_u8();
	Uint32 data_size = in->read_u32();
	::membuf* data = new (swf::MEM_UNRECOVERED) ::membuf();
	data->resize(static_cast<int>(data_size));
	if (inflate_flag) {
		inflate_wrapper(in->get_underlying_stream(), data->data(), static_cast<int>(data_size));
	} else {
		in->get_underlying_stream()->read_fully(data, -1);
	}
	bitmap_info* bi = render::create_bitmap_info_native(width, height, data);
	bitmap_character* ch = new (swf::MEM_UNRECOVERED) bitmap_character(m->get_player(), bi, nullptr);
	m->add_bitmap_character(character_id, ch);
}

// 0x75cb14 gameswf::destruct<gameswf::character::custom>(gameswf::character::custom const*)
// Binary (Hex-Rays and asm agree): when the pointer is set, the tu_string name at +0x4c frees its heap buffer, the
// array<filter> at +0x3c is emptied (resize(0), reserve(0)), and the block is freed with free_internal(p, 0). The
// generic body above (virtual-free destructor call, then free_internal) does exactly that through custom::~custom.
template void destruct<character::custom>(const character::custom* p);

}  // namespace gameswf

// 0x76493c gameswf::hash<int, void (*)(gameswf::stream*, int, gameswf::movie_definition_sub*), gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
// (hash is global in the vendored source, so this specialization sits outside namespace gameswf.)
// The binary's table is the upstream layout: a table header of entry count (+0) and size mask (+4), then
// 16-byte entries (next_in_chain, hash value, key, value); next_in_chain == -2 marks empty, hash value -1 a tombstone.
// Differences from upstream base/container.h:1294 (min 16): the DH2 minimum is 4, and the power of two is
// 1 << (int)(logf(new_size - 1) / ln2 + 1.0f) in single precision, where ln2 is the float with bit pattern
// 0x3F317218 (the binary: MOV R1,#0x3F317218 before __aeabi_fdiv). That is 0.693147180559945f, the same value
// as LN_2 in base/utility.h. Hex-Rays prints it as 0.69315, which is a different float (0x3F317247).
// Explicit specialization for this instantiation only; declared in gameswf_dh2_runtime.hpp.
template <>
void hash<int, gameswf::loader_function, fixed_size_hash<int> >::set_raw_capacity(int new_size) {
	if (new_size <= 0) {
		// Binary: clear() and return.
		clear();
		return;
	}

	// Binary: for new_size == 1, log(0) gives -inf, which lands below the minimum of 4 (ARM shifts to 0 or 1).
	// The explicit guard gives the same result.
	int size = 4;
	if (new_size > 1) {
		// ln 2 as float, bit pattern 0x3F317218 (see the comment above the specialization).
		float q = std::logf(static_cast<float>(new_size - 1)) / 0.693147180559945f;
		int bits = static_cast<int>(q + 1.0f);
		unsigned int pow2 = (bits >= 0 && bits < 32) ? (1u << bits) : 0u;
		size = static_cast<int>(pow2);
		if (size < 4) {
			size = 4;  // DH2 minimum (upstream: 16)
		}
	}

	if (m_table != nullptr && size == m_table->m_size_mask + 1) {
		// Binary: no change in raw capacity; no work.
		return;
	}

	// Binary: malloc_internal(16 * size + 8, MemHint 0), then entry count = 0, size mask = size - 1, and
	// every entry's next_in_chain = -2.
	hash<int, gameswf::loader_function, fixed_size_hash<int> > new_hash;
	new_hash.m_table = static_cast<table*>(gameswf::malloc_internal(sizeof(table) + sizeof(entry) * size, swf::MEM_UNRECOVERED));
	new_hash.m_table->m_entry_count = 0;
	new_hash.m_table->m_size_mask = size - 1;
	for (int i = 0; i < size; i++) {
		new_hash.E(i).m_next_in_chain = -2;
	}

	if (m_table != nullptr) {
		// Binary: move the live entries (not empty, not tombstone) into the new table, clear each old entry,
		// then free the old table with size sizeof(table) + sizeof(entry) * (mask + 1) (16 * mask + 24 on ARM).
		for (int i = 0, n = m_table->m_size_mask; i <= n; i++) {
			entry* e = &E(i);
			if (!e->is_empty() && !e->is_tombstone()) {
				new_hash.add(e->first, e->second);
				e->clear();
			}
		}
		gameswf::free_internal(m_table, static_cast<unsigned int>(sizeof(table) + sizeof(entry) * (m_table->m_size_mask + 1)));
	}

	// Binary: steal the new table; the local hash holds nothing afterwards.
	m_table = new_hash.m_table;
	new_hash.m_table = nullptr;
}

namespace gameswf {

// ---- destruct<T> / destructp<T> ----
// Binary bodies (asm checked):
//   destruct<T>(p):  if (p) { p->vtable slot 0 (virtual destructor); free_internal(p, 0); }
//   destructp<unsigned char>(p, n): if (p) free_internal(p, 0); the second argument is not read.

template <class T>
void destruct(const T* p) {
	if (p != nullptr) {
		p->~T();
		gameswf::free_internal(const_cast<T*>(p), 0);
	}
}

template <class T>
void destructp(const T* p, unsigned int /*count*/) {
	if (p != nullptr) {
		gameswf::free_internal(const_cast<T*>(p), 0);
	}
}

// 0x75a02c gameswf::destructp<unsigned char>(unsigned char const*, unsigned int)
template void destructp<unsigned char>(const unsigned char* p, unsigned int count);

// 0x75a1bc gameswf::destruct<gameswf::image_rgb>(gameswf::image_rgb const*)
// gameswf::image_rgb is the Gameloft class (vendor-gameswf/image_rgb.hpp, derived from gameswf::image_base).
template void destruct<gameswf::image_rgb>(const gameswf::image_rgb* p);

// 0x75a1e8 gameswf::destruct<gameswf::image_rgba>(gameswf::image_rgba const*)
// gameswf::image_rgba is the Gameloft class (vendor-gameswf/image_rgba.hpp, derived from gameswf::image_base).
template void destruct<gameswf::image_rgba>(const gameswf::image_rgba* p);

// 0x75a214 gameswf::destruct<gameswf::ref_counted>(gameswf::ref_counted const*)
template void destruct<ref_counted>(const ref_counted* p);

// 0x763dc0 gameswf::destruct<gameswf::jpeg::input>(gameswf::jpeg::input const*)
template void destruct<jpeg::input>(const jpeg::input* p);

// ---- loaders and substitution (need gameswf.h / gameswf_impl.h / gameswf_shape.h) ----

// 0x759d9c gameswf::define_debug_id_loader(gameswf::stream*, int, gameswf::movie_definition_sub*)
// For a movie_def_impl (the virtual is(8), AS_MOVIE_DEF; a sprite definition does not answer to it) the 16-byte debug id of the tag is read
// from the stream into the definition's four words at +0xf4 (unk_f4 .. unk_100 in gameswf_movie_def.h). Anything else ignores the tag.
// The binary's int result (the read's return value) is dropped because the loader table is void-typed.
void define_debug_id_loader(stream* in, int tag_type, movie_definition_sub* m) {
	(void)tag_type;
	if (m == nullptr || !m->is(AS_MOVIE_DEF)) {
		return;
	}
	movie_def_impl* impl = static_cast<movie_def_impl*>(m);
	Uint32 words[4];
	in->get_underlying_stream()->read_bytes(words, 16);
	impl->unk_f4 = words[0];
	impl->unk_f8 = words[1];
	impl->unk_fc = words[2];
	impl->unk_100 = words[3];
}

// 0x759cfc gameswf::substitute_bitmap_character(gameswf::tu_string&, gameswf::bitmap_character_def*, gameswf::movie_definition_sub*)
// Binary: the third argument is not read. Name bytes come from the string's data (c_str here). When the
// callback is set, get_bitmap_info() (bitmap_character_def vtable +0x2c), then get_width() (+0x24) and
// get_height() (+0x28) on the bitmap info are passed to the callback, and a non-null texture is set with
// set_texture() (+0x20). The binary's return value is not a documented result; the function returns void.
void substitute_bitmap_character(::tu_string& name, bitmap_character_def* ch, movie_definition_sub* /*m*/) {
	if (s_texture_loader_callback == nullptr) {
		return;
	}
	bitmap_info* bi = ch->get_bitmap_info();
	int width = bi->get_width();
	int height = bi->get_height();
	glitch::video::ITexture* texture = s_texture_loader_callback(name.c_str(), width, height);
	if (texture != nullptr) {
		bi->set_texture(texture);
		bi->dh2_keep_declared_size(width, height);  // port addition (remaster): an upscaled texture keeps the SWF's UV space
	}
}

// 0x75fbf8 and 0x75cb14 are above.

// 0x7613b8 gameswf::destruct<gameswf::shape_character_def>(gameswf::shape_character_def const*)
template void destruct<shape_character_def>(const shape_character_def* p);

// 0x763e6c gameswf::destruct<gameswf::execute_tag>(gameswf::execute_tag const*)
template void destruct<execute_tag>(const execute_tag* p);

}  // namespace gameswf
