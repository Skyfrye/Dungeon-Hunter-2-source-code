// Link support for the tests of the movie definition and shape classes (pack4, pack7, gameswf_shape_character_def), run with
// tools/trackb/check_tu.sh --test. Not a test by itself, and outside tests/ so that the CMake test glob does not make an executable
// of it. dh2_test_support.cpp (allocator) is linked as well.
//
// The tests link the real definitions of the classes they exercise: the batch sources, upstream gameswf_movie_def.cpp,
// gameswf_styles.cpp, gameswf_shape.cpp, gameswf_morph2.cpp, gameswf_types.cpp, gameswf_stream.cpp, the base library, ref_counted, the
// buffered file and pack0 (matrix). What those pull in from the rest of gameswf (the tag loaders, the tesselator, the AVM2 and
// ActionScript glue, the player, the render backend) is stubbed here. Every definition is weak: a test that needs a real behaviour
// (for example a recording get_tag_loader or a render handler in s_render_handler) defines the strong symbol itself, and a test that
// links the real batch gets the real function.

#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "base/jpeg.h"
#include "base/tu_file.h"
#include "base/zlib_adapter.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_abc.h"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_dlist.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_render.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_tesselate.h"
#include "vendor-gameswf/effect.hpp"
#include "vendor-gameswf/execute_tags.hpp"
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"
#include "vendor-gameswf/image_alpha.hpp"
#include "vendor-gameswf/image_base.hpp"
#include "vendor-gameswf/image_rgb.hpp"
#include "vendor-gameswf/image_rgba.hpp"
#include "vendor-gameswf/texture_cache.hpp"

#define DH2_WEAK __attribute__((weak))

// ---- the global namespace: base library pieces the tests never run ----

namespace zlib_adapter {
DH2_WEAK tu_file* make_inflater(tu_file*) { return nullptr; }
}  // namespace zlib_adapter

namespace jpeg {
DH2_WEAK input* input::create_swf_jpeg2_header_only(tu_file*) { return nullptr; }
DH2_WEAK input* input::create(tu_file*) { return nullptr; }
DH2_WEAK output* output::create(tu_file*, int, int, int) { return nullptr; }
}  // namespace jpeg

// The loader table: its element type is the loader_function of gameswf_movie_def.h. The specialization is declared there, so any
// use of the table needs this body.
template <>
DH2_WEAK void hash<int, gameswf::loader_function, fixed_size_hash<int> >::set_raw_capacity(int) {}

namespace gameswf {

// ---- logging, global state ----

DH2_WEAK void log_msg(const char*, ...) {}
DH2_WEAK void log_error(const char*, ...) {}
DH2_WEAK bool get_verbose_parse() { return false; }
DH2_WEAK sound_handler* get_sound_handler() { return nullptr; }
DH2_WEAK render_handler* s_render_handler = nullptr;
DH2_WEAK hash<int, loader_function> s_tag_loaders;
DH2_WEAK bool get_tag_loader(int, loader_function*) { return false; }
DH2_WEAK int sort_by_decreasing_error(const void* A, const void* B)
{
	const mesh_set* a = *(const mesh_set**) A;
	const mesh_set* b = *(const mesh_set**) B;
	if (a->get_error_tolerance() < b->get_error_tolerance()) { return 1; }
	if (a->get_error_tolerance() > b->get_error_tolerance()) { return -1; }
	return 0;
}

// ---- character_def, movie_def_impl, player, character ----

DH2_WEAK character* character_def::create_character_instance(character*, int) { return nullptr; }
DH2_WEAK root* movie_def_impl::create_instance() { return nullptr; }
DH2_WEAK generic_character* player::create_generic_character(character_def*, character*, int) { return nullptr; }
DH2_WEAK const matrix* character::get_world_matrix() { return &matrix::identity; }
DH2_WEAK const cxform* character::get_world_cxform() { return &cxform::identity; }
DH2_WEAK effect::~effect() {}
DH2_WEAK execute_tag::~execute_tag() {}
DH2_WEAK void execute_tag::execute(character*) {}
DH2_WEAK void execute_tag::execute_state(character*) {}
DH2_WEAK void execute_tag::execute_state_reverse(character*, int) {}
DH2_WEAK bool execute_tag::is_remove_tag() const { return false; }
DH2_WEAK bool execute_tag::is_action_tag() const { return false; }
DH2_WEAK std::uint32_t execute_tag::get_depth_id_of_replace_or_add_tag() const { return static_cast<std::uint32_t>(-1); }
DH2_WEAK int execute_tag::get_depth() const { return -1; }
DH2_WEAK int execute_tag::get_action_offset() const { return -1; }
DH2_WEAK bool execute_tag::is_place_tag() const { return false; }

// ---- the render backend ----

namespace render {
DH2_WEAK bitmap_info* create_bitmap_info_rgba(image_rgba*) { return nullptr; }
DH2_WEAK bitmap_info* create_bitmap_info_empty() { return nullptr; }
}  // namespace render

// ---- the tesselators and the mesh builder ----

namespace tesselate {
DH2_WEAK void begin_shape(trapezoid_accepter*, float) {}
DH2_WEAK void end_shape() {}
DH2_WEAK void begin_path(int, int, int, float, float) {}
DH2_WEAK void add_curve_segment(float, float, float, float) {}
DH2_WEAK void end_path() {}
}  // namespace tesselate

namespace tesselate_new {
DH2_WEAK void begin_shape(mesh_accepter*, float) {}
DH2_WEAK void end_shape() {}
DH2_WEAK void begin_path(int, int, int, float, float) {}
DH2_WEAK void add_curve_segment(float, float, float, float) {}
DH2_WEAK void end_path() {}
}  // namespace tesselate_new

DH2_WEAK void execute_tesselate(mesh_set*, const shape_character_def*, float) {}

// The coordinate array i/o of the mesh cache (upstream template specializations for float, replaced in the DH2 build).
template <class T>
void write_le(tu_file* out, T value);
template <class T>
T read_le(tu_file* in);
template <>
DH2_WEAK void write_le<float>(tu_file* out, float value) { out->write_float32(value); }
template <>
DH2_WEAK float read_le<float>(tu_file* in) { return in->read_float32(); }

// ---- destruct<T>: destroy in place and free with free_internal, as the binary does ----

template <>
DH2_WEAK void destruct<ref_counted>(const ref_counted* p)
{
	if (p != nullptr) { const_cast<ref_counted*>(p)->~ref_counted(); free_internal(const_cast<ref_counted*>(p), 0); }
}
template <>
DH2_WEAK void destruct<shape_character_def>(const shape_character_def* p)
{
	if (p != nullptr) { const_cast<shape_character_def*>(p)->~shape_character_def(); free_internal(const_cast<shape_character_def*>(p), 0); }
}
template <>
DH2_WEAK void destruct<execute_tag>(const execute_tag* p)
{
	if (p != nullptr) { delete p; }
}
template <>
DH2_WEAK void destruct<image_rgba>(const image_rgba* p)
{
	if (p != nullptr) { const_cast<image_rgba*>(p)->~image_rgba(); free_internal(const_cast<image_rgba*>(p), 0); }
}
template <>
DH2_WEAK void destruct<jpeg::input>(const jpeg::input* p)
{
	if (p != nullptr) { delete p; }
}

// ---- ActionScript and AVM2 glue that the real objects name but the tests do not run ----

DH2_WEAK as_value call_method(const as_value&, as_environment*, const as_value&, int, int, const char*) { return as_value(); }
DH2_WEAK void as_value::set_as_object(as_object*) {}
DH2_WEAK void as_value::drop_refs() {}
DH2_WEAK as_value::as_value(int) {}
DH2_WEAK const tu_string& as_value::to_tu_string() const { static tu_string empty; return empty; }
DH2_WEAK double as_value::to_number() const { return 0.0; }
DH2_WEAK as_function* abc_def::get_class_constructor(tu_string&) const { return nullptr; }
DH2_WEAK as_value as_environment::get_variable(const tu_string&, const ::array<with_stack_entry>&, int*) const { return as_value(); }
DH2_WEAK character* display_list::get_character_at_depth(int) { return nullptr; }
DH2_WEAK void sprite_getptr(const fn_call&) {}

// Tag bodies that pack2 (linked for the string cache's table sizing) names and that live in gameswf_impl.cpp.
DH2_WEAK void set_background_color::execute(character*) {}
DH2_WEAK void set_background_color::execute_state(character*) {}
DH2_WEAK void remove_object_2::execute(character*) {}
DH2_WEAK void remove_object_2::execute_state(character*) {}
DH2_WEAK void remove_object_2::execute_state_reverse(character*, int) {}
DH2_WEAK bool remove_object_2::is_remove_tag() const { return true; }
DH2_WEAK texture_cache::region* texture_cache::find_available_region(int, int) { return nullptr; }

// image_base has no body in the tree yet (the image_base batch of lib-gameswf is not written): the destructor frees the pixel buffer
// (0x7b5a08: free_internal(m_data, 0) when m_data is set). This also gives the class its vtable.
DH2_WEAK image_base::~image_base()
{
	if (m_data != nullptr) { free_internal(m_data, 0); m_data = nullptr; }
}
DH2_WEAK void display_list::remove(int) {}
DH2_WEAK int display_list::get_character_by_ptr(const character*) { return -1; }
DH2_WEAK void as_value::operator=(const as_value&) {}

// The second constructor of stream (pack8, 0x783dd4) is not linked here: upstream gameswf_stream.cpp, which the tests link for the
// reader functions, also defines ~stream, so pack8 would be a second definition. This one delegates to the upstream constructor; the
// flag it drops is read only by action_buffer.
DH2_WEAK stream::stream(tu_file* input, bool) : stream(input) {}

}  // namespace gameswf

// A data symbol the fddef6-6 object names (gameswf::s_fnames_string); its type is not needed here.
extern "C" {
DH2_WEAK char dh2_stub_s_fnames_string[256] __asm__("_ZN7gameswf15s_fnames_stringE");
}

DH2_WEAK void* operator new[](std::size_t size, swf::MemHint) { return std::malloc(size); }
