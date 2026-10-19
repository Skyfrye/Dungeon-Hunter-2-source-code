// Batch v1-vendor-gameswf-gameswf_character-670fee-0: gameswf::character, part 1 of 3.
//
// Two kinds of row are in this batch.
//
// 1. Upstream rows. The DH2 body is the upstream inline definition in
//    vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_character.h (empty, or
//    assert(0) compiled out in the release build). Nothing is redefined here, since a
//    second definition of an inline member would not compile. The ledger rows point
//    at the upstream header.
//
// 2. Gameloft rows. The DH2 binary has a body that upstream does not have, or a
//    different one. Those are defined below. Their declarations, and the DH2 members
//    they use (character::custom, m_custom, m_local_matrix, m_matrix_changed), are in
//    the upstream header with // DH2: comments. The upstream inline set_matrix and the
//    move/replace display-object overloads are wrapped in #if 0 there.
//
// Layout: the DH2 character layout is declared in gameswf_character.h (settled by the integrator). The local
// matrix, colour transform and effect are held by pointer and default to the shared identity objects. set_matrix
// stores the matrix into the lazily allocated custom block (character::custom, 0x6c bytes) and points the local
// matrix pointer at it.
//
// Also defined here: the statics the character constructor points at, effect::identity (built by the static
// initialiser of gameswf_filters.cpp, 0x7570d0) and s_empty_name (static initialiser of gameswf_character.cpp,
// 0x753318: an empty interned string).

#include "gameswf/gameswf_character.h"

#include <cstddef>

#include "core-platform/deps/swf_types.hpp"  // swf::MemHint

// 0x752ba8 operator new(unsigned int, swf::MemHint), defined by core-platform/src/memory.cpp. Declared here rather
// than through core-platform/memory.hpp, whose stand-in glitch types clash with glitch-shared in this translation unit.
void* operator new(std::size_t size, swf::MemHint hint);

namespace gameswf
{

// 0x7570d0 effect::identity: all fields zero.
effect effect::identity;

// 0x753318 gameswf::s_empty_name: the binary builds it as an empty permanent string (resize(0), hash not computed,
// interned bit set) and registers its destructor with atexit. set_name stores its address as is.
namespace
{
struct empty_name_initializer
{
	empty_name_initializer()
	{
		s_empty_name.set_interned(true);
	}
};
}  // namespace
::tu_string s_empty_name;
static empty_name_initializer s_empty_name_initializer;

// DH2: allocates the custom block the way every setter in the binary does: operator new(0x6c, hint 0), then the
// custom constructor (0x412160). character::~character releases it.
character::custom* character::ensure_custom()
{
	if (m_custom == nullptr)
	{
		m_custom = new (swf::MEM_UNRECOVERED) custom();
	}
	return m_custom;
}

// Upstream rows: no body here, the inline definition in gameswf_character.h is the DH2 body.
// 0x752ca8 gameswf::character::set_play_state(gameswf::character::play_state)   upstream inline, bx lr
// 0x752cc4 gameswf::character::clear_display_objects()   upstream inline, bx lr
// 0x752cc8 gameswf::character::remove_display_object(gameswf::character*)   upstream inline, assert(0) compiled out
// 0x752cf0 gameswf::character::remove_display_object(int, int)   upstream inline, bx lr
// 0x752cf4 gameswf::character::execute_frame_tags(int, bool)   upstream inline, bx lr
// 0x752cf8 gameswf::character::add_action_buffer(gameswf::action_buffer*)   upstream inline, assert(0) compiled out
// 0x752cfc gameswf::character::do_actions(gameswf::array<gameswf::action_buffer*> const&)   upstream inline, assert(0) compiled out
// 0x752d08 gameswf::character::remove_display_object(gameswf::tu_string const&)   upstream inline, assert(0) compiled out
// 0x752d10 gameswf::character::stop_drag()   upstream inline, assert(0) compiled out
// 0x752d14 gameswf::character::call_frame_actions(gameswf::as_value const&)   upstream inline, assert(0) compiled out
// 0x752d18 gameswf::character::set_background_color(gameswf::rgba const&)   upstream inline, bx lr
// 0x752d1c gameswf::character::set_background_alpha(float)   upstream inline, bx lr
// 0x752d28 gameswf::character::set_display_viewport(int, int, int, int)   upstream inline, bx lr

// 0x4121f8 _ZN7gameswf9character10set_matrixERKNS_6matrixE
// Binary: creates the custom block when this+0x54 is NULL, copies the 24-byte matrix to custom+0x20, points the
// local matrix pointer (this+0x4c) at custom+0x20 and sets the world-matrix dirty flag (this+0x99). The Hex-Rays
// int return is r0 left over from the copy.
void character::set_matrix(const matrix& m)
{
	custom* c = ensure_custom();
	c->m_matrix = m;  // custom+0x20
	m_local_matrix = &m_custom->m_matrix;  // +0x4c
	m_matrix_changed = true;  // +0x99
}

// 0x752c48 _ZN7gameswf9character8hit_testEff
// Binary: MOV R0,#0; BX LR. Always "no hit". Hex-Rays types the result int; it is declared
// bool here like the sibling point_test_local.
bool character::hit_test(float x, float y)
{
	return false;
}

// 0x752ce4 _ZN7gameswf9character19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Binary: BX LR. Empty in the base class; the work is done by subclasses.
void character::move_display_object(int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
}

// 0x752ce8 _ZN7gameswf9character22replace_display_objectEtPKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Binary: BX LR. Empty in the base class.
void character::replace_display_object(Uint16 character_id, const char* name, int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
}

// 0x752cec _ZN7gameswf9character22replace_display_objectEPS0_PKciPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Binary: BX LR. Empty in the base class.
void character::replace_display_object(character* ch, const char* name, int depth, const cxform* color_transform, const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
}

// 0x752d0c _ZN7gameswf9character14set_drag_stateERKNS0_10drag_stateE
// Binary: BX LR. Empty in the base class.
void character::set_drag_state(const drag_state& state)
{
}

// 0x752d2c _ZN7gameswf9character18set_display_boundsEiiii
// Binary: BX LR. Empty in the base class.
void character::set_display_bounds(int x0, int y0, int x1, int y1)
{
}

}  // namespace gameswf
