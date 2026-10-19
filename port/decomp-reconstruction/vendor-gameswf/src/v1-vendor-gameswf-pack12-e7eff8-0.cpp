// batch v1-vendor-gameswf-pack12-e7eff8-0  category=vendor-gameswf
//   gameswf::as_date, gameswf::as_key, gameswf::as_matrix, gameswf::as_mcloader,
//   gameswf::as_mcloader::loadable_movie (Gameloft changes to gameswf r1714 in libDungeonHunter2.so)
//
// Declarations: the // DH2: lines in upstream/gameswf-r1714/gameswf/gameswf_as_classes/as_date.h, as_key.h,
// as_matrix.h and as_mcloader.h, and the friend line in upstream/gameswf-r1714/base/tu_timer.h. The upstream
// constructors that differ in the binary are wrapped in #if 0 in as_key.cpp, as_matrix.cpp and as_mcloader.cpp.
//
// Not defined here (the ledger rows say what each one is):
//   compiler-generated destructors: as_date D1 0x79d690, as_key D1 0x79f2e0, as_matrix D1 0x7a1420,
//     loadable_movie D1 0x7a2734. as_mcloader D2 0x7a2aec and D1 0x7a30c4 use the upstream destructor, whose
//     body is empty; the members release themselves in the same order as the binary.
//   deleting destructors D0 0x79d72c, 0x79f3a8, 0x7a1620, 0x7a312c: the destructor, then LC_API_FREE_0.
//
// Layouts (32-bit offsets; see the headers):
//   as_date      0x40 bytes: as_object, then the tu_datetime base (an int64 time at +0x38).
//   as_key       0x68 bytes: as_object, m_keymap +0x38 (28 bytes), m_last_key_pressed +0x54, m_listeners +0x58 (listener, 16 bytes).
//   as_matrix    0x50 bytes: as_object, m_matrix +0x38 (six floats).
//   as_mcloader  0x58 bytes: as_object, m_listeners +0x38 (listener, 16 bytes), m_lm +0x48 (array<loadable_movie>, 16 bytes).
// The listener and the loadable_movie array are default-constructed members: their zero words and borrowed flags are the
// array constructor's, so no separate flag member exists (the earlier V1 header modelled the arrays as 12 bytes plus a flag).

#include "gameswf/gameswf_movie_def.h"  // movie_def_impl, complete for as_mcloader::loadable_movie
#include "gameswf/gameswf_as_classes/as_date.h"
#include "gameswf/gameswf_as_classes/as_key.h"
#include "gameswf/gameswf_as_classes/as_matrix.h"
#include "gameswf/gameswf_as_classes/as_mcloader.h"

#include <cstring>

namespace gameswf
{

// Registers a C function as a built-in member. This is the binary's sequence for each name: a tu_string,
// set_as_c_function on an as_value, builtin_member, then drop_refs on the as_value.
static void	add_builtin_c_function(as_object* obj, const char* name, void (*func)(const fn_call& fn))
{
	as_value	fn_value;
	fn_value.set_as_c_function(func);
	obj->builtin_member(name, fn_value);
	fn_value.drop_refs();
}

// 0x79d650 _ZNK7gameswf7as_date8get_timeEv
// DH2 getter, not tu_datetime::get_time() (double). The binary is LDR R0,[R0,#0x38]; LDR R1,[R0,#0x3C]: the
// 64-bit time that the tu_datetime base keeps at +0x38. The friend line in tu_timer.h gives access to m_time.
int64_t	as_date::get_time() const
{
	return static_cast<int64_t>(m_time);
}

// 0x79f020 _ZN7gameswf6as_keyC1EPNS_6playerE
// 0x79f088 _ZN7gameswf6as_keyC2EPNS_6playerE (same body)
// as_object(player), then the 28-byte key map at +0x38 (KEYCOUNT 223 / 8 + 1) is zeroed, m_last_key_pressed
// (+0x54) is 0, and the listener at +0x58 starts empty (its own array constructor zeroes the 16 bytes). The vtable is set
// by the compiler after the base constructor.
as_key::as_key(player* p) :
	as_object(p)
{
	memset(m_keymap, 0, sizeof(m_keymap));
	m_last_key_pressed = 0;
}

// 0x7a179c _ZN7gameswf9as_matrixC1EPNS_6playerEPKNS_6matrixE
// 0x7a1ea0 _ZN7gameswf9as_matrixC2EPNS_6playerEPKNS_6matrixE (same body)
// The matrix at +0x38 is the identity (m[0][0] = m[1][1] = 1, the rest 0) unless m is not NULL, when the six
// floats of *m are copied in order. Then the seven built-in methods are registered in this order: translate,
// rotate, scale, concat, clone, invert, transformPoint.
as_matrix::as_matrix(player* p, const matrix* m) :
	as_object(p)
{
	if (m)
	{
		m_matrix = *m;
	}
	else
	{
		m_matrix.m_[0][0] = 1.0f;	// +0x38
		m_matrix.m_[0][1] = 0.0f;	// +0x3c
		m_matrix.m_[0][2] = 0.0f;	// +0x40
		m_matrix.m_[1][0] = 0.0f;	// +0x44
		m_matrix.m_[1][1] = 1.0f;	// +0x48
		m_matrix.m_[1][2] = 0.0f;	// +0x4c
	}
	add_builtin_c_function(this, "translate", as_matrix_translate);
	add_builtin_c_function(this, "rotate", as_matrix_rotate);
	add_builtin_c_function(this, "scale", as_matrix_scale);
	add_builtin_c_function(this, "concat", as_matrix_concat);
	add_builtin_c_function(this, "clone", as_matrix_clone);
	add_builtin_c_function(this, "invert", as_matrix_invert);
	add_builtin_c_function(this, "transformPoint", as_matrix_transformPoint);
}

// 0x7a2b54 _ZN7gameswf11as_mcloaderC2EPNS_6playerE
// 0x7a2e0c _ZN7gameswf11as_mcloaderC1EPNS_6playerE (same body)
// as_object(player). The listener at +0x38 and the loadable_movie array at +0x48 start empty (their own constructors
// zero the 16 bytes each, including the borrowed flags at +0x44 and +0x54). Then the five built-in methods.
as_mcloader::as_mcloader(player* p) :
	as_object(p)
{
	add_builtin_c_function(this, "addListener", as_mcloader_addlistener);
	add_builtin_c_function(this, "removeListener", as_mcloader_removelistener);
	add_builtin_c_function(this, "loadClip", as_mcloader_loadclip);
	add_builtin_c_function(this, "unloadClip", as_mcloader_unloadclip);
	add_builtin_c_function(this, "getProgress", as_mcloader_getprogress);
}

}  // namespace gameswf
