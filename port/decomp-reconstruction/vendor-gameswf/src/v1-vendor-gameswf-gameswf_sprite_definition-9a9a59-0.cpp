// Batch v1-vendor-gameswf-gameswf_sprite_definition-9a9a59-0: gameswf::sprite_definition (DH2).
//
// Layout (gameswf_sprite_def.h, 0x5c bytes): the movie_definition_sub base ends at +0x44; m_movie_def +0x44 (a plain
// pointer, no reference), m_playlist +0x48 (array<array<execute_tag*>>, 16 bytes), m_named_frames +0x58
// (hash<stringi_pointer, int>, one table pointer: the key is a pointer to an interned string).
//
// Header edits (upstream/gameswf-r1714/gameswf/gameswf_sprite_def.h, all marked DH2):
//   - Eight inline `{ assert(0); }` overrides are inside #if 0 and declared there instead. Their binary
//     bodies are bx lr (no assert), so the bodies are defined in this file.
//   - get_labeled_frame(tu_stringi const&, int*) is the virtual of the binary (vtable +0x60); movie_definition_sub now
//     declares it (and has_init_actions, +0x88) instead of the r1714 const char* form.
//   - add_frame_name is out-of-line: the label is interned through the player's permanent_string_cache.
//
// Not defined here (upstream inline bodies that match the binary, so their ledger rows point at the header):
//   output_cached_data(tu_file*, cache_options const&)   vtable +0x1c, upstream `{ return; }` = bx lr
//   input_cached_data(tu_file*)                          vtable +0x20, upstream `{ return; }` = bx lr
//   add_execute_tag, the m_movie_def forwarders (get_font, get_character_def ...), get_playlist, get_init_actions.
//
// Not defined here (compiler-generated):
//   ~sprite_definition()  [D0, deleting]  vtable +0x04. Calls D1, then LC_API_FREE_0 (operator delete).

#include <new>

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_sprite_def.h"
#include "gameswf/gameswf_stream.h"
#include "vendor-gameswf/execute_tags.hpp"

namespace gameswf {

// 0x783184 _ZN7gameswf17sprite_definition7add_abcERNS_9tu_stringEPNS_7abc_defE
// vtable +0x70. Empty body (bx lr). The upstream inline assert(0) is debug-only; the binary has no assert.
void sprite_definition::add_abc(tu_string& /*name*/, abc_def* /*abc*/) {
}

// 0x783188 _ZN7gameswf17sprite_definition16add_symbol_classEiRKNS_9tu_stringE
// vtable +0x64. Empty body (bx lr).
void sprite_definition::add_symbol_class(int /*character_id*/, const tu_string& /*class_name*/) {
}

// 0x78318c _ZN7gameswf17sprite_definition9add_sceneEiRKNS_9tu_stringE
// vtable +0x68. Empty body (bx lr).
void sprite_definition::add_scene(int /*character_id*/, const tu_string& /*class_name*/) {
}

// 0x783190 _ZN7gameswf17sprite_definition15add_frame_labelEiRKNS_9tu_stringE
// vtable +0x6c. Empty body (bx lr).
void sprite_definition::add_frame_label(int /*character_id*/, const tu_string& /*class_name*/) {
}

// 0x7831b0 _ZN7gameswf17sprite_definition15set_jpeg_loaderEPNS_4jpeg5inputE
// vtable +0x90. Empty body (bx lr): the loader pointer is not stored.
void sprite_definition::set_jpeg_loader(jpeg::input* /*j_in*/) {
}

// 0x783214 _ZN7gameswf17sprite_definition15add_bitmap_infoEPNS_11bitmap_infoE
// vtable +0xb0. Empty body (bx lr): the bitmap_info is not stored.
void sprite_definition::add_bitmap_info(bitmap_info* /*bi*/) {
}

// 0x783234 _ZN7gameswf17sprite_definition10add_importERKNS_9tu_stringEiS3_
// vtable +0xac. Empty body (bx lr).
void sprite_definition::add_import(const tu_string& /*source_url*/, int /*id*/, const tu_string& /*symbol*/) {
}

// 0x783238 _ZN7gameswf17sprite_definition21visit_imported_moviesEPNS_16movie_definition14import_visitorE
// vtable +0x44. Empty body (bx lr): a sprite has no imports to visit.
void sprite_definition::visit_imported_movies(movie_definition::import_visitor* /*v*/) {
}

// 0x7832e4 _ZN7gameswf17sprite_definition17get_labeled_frameERKNS_10tu_stringiEPi
// vtable +0x60. Looks the label up in m_named_frames (the key points at the label's text). If there is no entry, returns
// false. Otherwise, if frame_number is non-null, stores the entry's value, and returns true either way.
bool sprite_definition::get_labeled_frame(const tu_stringi& label, int* frame_number) {
	return m_named_frames.get(stringi_pointer{ &label.to_tu_string() }, frame_number);
}

// 0x783268 _ZN7gameswf17sprite_definition16has_init_actionsEv
// vtable +0x88. MOV R0, #0; BX LR. Sprites have no init actions, so the result is always 0.
int sprite_definition::has_init_actions() {
	return 0;
}

// 0x783764 _ZN7gameswf17sprite_definitionC1EPNS_6playerEPNS_20movie_definition_subE
// 0x783650 _ZN7gameswf17sprite_definitionC2EPNS_6playerEPNS_20movie_definition_subE
// C1 and C2 are one body. An empty sprite definition (no parent movie: createEmptyMovieClip) has one frame, already loaded,
// whose playlist holds a single base execute_tag (operator new(4), the vptr only).
sprite_definition::sprite_definition(player* p, movie_definition_sub* m) :
	movie_definition_sub(p),
	m_movie_def(m)
{
	if (m == nullptr)
	{
		set_frame_count(1);
		inc_loading_frame();
		m_playlist.resize(1);
		m_playlist[0].push_back(new (swf::MEM_UNRECOVERED) execute_tag());
	}
}

// 0x783534 _ZN7gameswf17sprite_definitionD1Ev
// 0x783338 _ZN7gameswf17sprite_definitionD2Ev
// D1 and D2 are one body. Loading is stopped, then every tag of every frame is destroyed (destruct<execute_tag>: the
// virtual destructor, then free_internal). The name table and the playlist array are released by the member destructors.
sprite_definition::~sprite_definition()
{
	break_loading();
	for (int i = 0, n = m_playlist.size(); i < n; i++)
	{
		for (int j = 0, m = m_playlist[i].size(); j < m; j++)
		{
			destruct(m_playlist[i][j]);
		}
	}
}

// 0x7833f4 _ZN7gameswf17sprite_definition4readEPNS_6streamE
// Reads the sprite: the frame count (a count of 0 means 1), then a series of tags until the end of the tag or until loading
// is broken. A show-frame tag (1) advances the loading frame; the other tags go to their loaders, which add characters and
// tags to this definition.
void sprite_definition::read(stream* in)
{
	int tag_end = in->get_tag_end_position();

	set_frame_count(in->read_u16());

	m_playlist.resize(get_frame_count());	// need a playlist for each frame

	while ((Uint32) in->get_position() < (Uint32) tag_end && get_break_loading() == false)
	{
		int tag_type = in->open_tag();
		loader_function lf = nullptr;
		if (tag_type == 1)
		{
			// show frame tag -- advance to the next frame.
			inc_loading_frame();
		}
		else if (get_tag_loader(tag_type, &lf))
		{
			// call the tag loader.	 The tag loader should add characters or tags to the movie data structure.
			(*lf)(in, tag_type, this);
		}
		else
		{
			// no tag loader for this tag type.
			log_msg("*** no tag loader for type %d\n", tag_type);
		}

		in->close_tag();
	}
}

// 0x783878 _ZN7gameswf17sprite_definition14add_frame_nameEPKc
// Labels the frame currently being loaded. The name is interned through the player's permanent_string_cache and the table
// keeps the pointer. A name that is already assigned is logged and overridden.
void sprite_definition::add_frame_name(const char* name)
{
	permanent_string* interned = get_player()->m_permanent_strings.get(tu_string(name));
	stringi_pointer key = { interned };

	int currently_assigned = 0;
	if (m_named_frames.get(key, &currently_assigned) == true)
	{
		log_error("add_frame_name(%d, '%s') -- frame name already assigned to frame %d; overriding\n",
			get_loading_frame(),
			name,
			currently_assigned);
	}
	m_named_frames.set(key, get_loading_frame());	// stores 0-based frame #
}

// 0x75f5d0 _ZN7gameswf17sprite_definition25create_character_instanceEPNS_9characterEi
// A sprite instance of this definition, made by the player (its pool of unused sprites first), with the root of the parent.
character* sprite_definition::create_character_instance(character* parent, int id)
{
	return get_player()->create_sprite_instance(this, parent->get_root(), parent, id);
}

}  // namespace gameswf
