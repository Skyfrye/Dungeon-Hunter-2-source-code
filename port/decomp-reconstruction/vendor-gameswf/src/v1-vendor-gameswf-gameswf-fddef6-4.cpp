// Batch v1-vendor-gameswf-gameswf-fddef6-4 (vendor-gameswf, owner gameswf, part 5 of 8).
//
// gameswf r1714 with Gameloft changes, as built into libDungeonHunter2.so (32-bit ARM).
// Bodies follow the Hex-Rays pseudocode; unclear spots were checked in the assembly.
// Per-function status and notes are in ledger.d/v1-vendor-gameswf-gameswf-fddef6-4.csv.
//
// Compiled here (check_tu.sh OK, tested by tests/v1-vendor-gameswf-gameswf-fddef6-4_test.cpp):
//   edges_intersect_sub (float overload; the binary returns bool, the upstream one is inline void),
//   as_number_valueof (the binary is a bare bx lr; upstream asserts).
//
// Compiled with the core headers (no guard macro): math_init, destruct<player_context>, destruct<render_handler>. They
//   need gameswf.h (as_object, as_value, player_context.hpp, render_handler).
//
// Compiled here as well: destructa<array<grid_entry_box<float,bool>*>> (0x7b21a8; the DH2 array<T> is 16 bytes, so the binary's
// 16-byte stride is the array itself).
//
// Upstream, ledgered without a body (the binary matches the upstream code):
//   math_pow, math_atan2, math_tan, math_sqrt, math_sin, math_log, math_exp, math_cos, math_ceil,
//   math_atan, math_asin, math_acos (as_math.cpp MATH_WRAP_FUNC1 / MATH_WRAP_FUNC2_EXP instantiations),
//   as_global_netstream_ctor (as_netstream.cpp, no-FFMPEG branch).
//
// The upstream definitions replaced here are wrapped in #if 0 /* DH2 */ in upstream/gameswf-r1714:
//   base/vert_types.h (float edges_intersect_sub), gameswf/gameswf_as_classes/as_number.cpp
//   (as_number_valueof), gameswf/gameswf_as_classes/as_math.cpp (math_init).

#include "base/tu_types.h"
#include "base/utility.h"     // compiler_assert, used by vert_types.h (which has no includes of its own)
#include "base/vert_types.h"
#include "base/grid_index.h"  // grid_entry_box (destructa)
#include "base/container.h"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/ref_counted.hpp"  // destructa, free_internal

namespace gameswf {
struct fn_call;
}  // namespace gameswf

namespace {

// Sign of a determinant: +1, 0 or -1 (the binary's v13 / v18 values).
int edges_sign(double v)
{
	if (v > 0.0) return 1;
	if (v < 0.0) return -1;
	return 0;
}

}  // namespace

// 0x7b0090 _ZN7gameswf19edges_intersect_subEPiS0_RKNS_4vec2IfEES4_S4_S4_
// gameswf::edges_intersect_sub(int*, int*, gameswf::vec2<float> const&, gameswf::vec2<float> const&,
//                              gameswf::vec2<float> const&, gameswf::vec2<float> const&)
//
// DH2: the float overload of base/vert_types.h, which upstream has as inline void. The binary's is a
// real function that returns bool. The binary names vec2 as gameswf::vec2; this tree's vec2 is global,
// so the overload is placed at global scope where ear_clip_triangulate_impl.h calls it. The mangled
// name therefore differs only in the namespace of vec2.
//
// Outputs: *e0_vs_e1 is e0 against the line of e1 and *e1_vs_e0 is e1 against the line of e0, each
// -1 (crosses), 0 (touches) or +1 (does not cross). Return: det(e1v0, e1v1, e0v0) <= 0.
bool edges_intersect_sub(int* e0_vs_e1, int* e1_vs_e0,
			const vec2<float>& e0v0, const vec2<float>& e0v1,
			const vec2<float>& e1v0, const vec2<float>& e1v1)
{
	// Both edges zero-length at the same point: coincident.
	if (e0v0.x == e0v1.x && e0v0.y == e0v1.y
		&& e1v0.x == e1v1.x && e1v0.y == e1v1.y
		&& e1v0.x == e0v0.x && e1v0.y == e0v0.y) {
		*e0_vs_e1 = 0;
		*e1_vs_e0 = 0;
		return true;
	}

	// Promotions follow the binary (asm 0x7b01a0-0x7b01b8): both x values are converted with
	// __aeabi_f2d before __aeabi_dsub, so every difference here is a double subtraction. Hex-Rays shows
	// the x difference of e0 as v25 = *a4 - v6, but the operands are promoted, not subtracted as float.
	const double e0v0x = e0v0.x;
	const double e0v0y = e0v0.y;
	const double dx0 = (double)e0v1.x - e0v0x;

	// e1 against the line of e0: det10 at e1v0 (v21), det11 at e1v1 (v12).
	const double det10 = dx0 * ((double)e1v0.y - e0v0y) - ((double)e0v1.y - e0v0y) * ((double)e1v0.x - e0v0x);
	const double det11 = dx0 * ((double)e1v1.y - e0v0y) - ((double)e0v1.y - e0v0y) * ((double)e1v1.x - e0v0x);
	int s1 = edges_sign(det11);
	if (det10 == 0.0) {
		s1 = 0;
	} else if (det10 < 0.0) {
		s1 = -s1;
	}
	*e1_vs_e0 = s1;

	// e0 against the line of e1: det00 at e0v0 (v22), det01 at e0v1 (v17).
	const double dx1 = (double)e1v1.x - (double)e1v0.x;
	const double dy1 = (double)e1v1.y - (double)e1v0.y;
	const double det00 = dx1 * ((double)e0v0.y - (double)e1v0.y) - dy1 * ((double)e0v0.x - (double)e1v0.x);
	const double det01 = dx1 * ((double)e0v1.y - (double)e1v0.y) - dy1 * ((double)e0v1.x - (double)e1v0.x);
	if (det00 == 0.0) {
		*e0_vs_e1 = 0;
	} else {
		int s0 = edges_sign(det01);
		if (det00 < 0.0) {
			s0 = -s0;
		}
		*e0_vs_e1 = s0;
	}
	return det00 <= 0.0;
}

namespace gameswf {

// 0x7a3cf0 _ZN7gameswf17as_number_valueofERKNS_7fn_callE
// gameswf::as_number_valueof(gameswf::fn_call const&)
//
// DH2: the binary is a bare bx lr (asm checked). Number.valueOf leaves fn.result as it was.
// Upstream as_number.cpp asserts (TODO); that copy is wrapped in #if 0.
void as_number_valueof(const fn_call& fn)
{
	(void)fn;
}

}  // namespace gameswf

// The bodies below need gameswf.h (through gameswf_object.h and player_context.hpp).

#include "gameswf/gameswf_as_classes/as_math.h"  // math_init declaration (as_object, player)
#include "gameswf/gameswf_object.h"              // as_object, as_value, fn_call
#include "gameswf/gameswf.h"                     // render_handler
#include "vendor-gameswf/player_context.hpp"     // player_context, destruct<T> declaration

namespace gameswf {

// The upstream math functions are defined in as_math.cpp by MATH_WRAP macros (and math_random,
// math_round, which are literal). No header declares them, so math_init declares the ones it stores.
void math_fabs(const fn_call& fn);
void math_acos(const fn_call& fn);
void math_asin(const fn_call& fn);
void math_atan(const fn_call& fn);
void math_ceil(const fn_call& fn);
void math_cos(const fn_call& fn);
void math_exp(const fn_call& fn);
void math_floor(const fn_call& fn);
void math_log(const fn_call& fn);
void math_random(const fn_call& fn);
void math_round(const fn_call& fn);
void math_sin(const fn_call& fn);
void math_sqrt(const fn_call& fn);
void math_tan(const fn_call& fn);
void math_atan2(const fn_call& fn);
void math_max(const fn_call& fn);
void math_min(const fn_call& fn);
void math_pow(const fn_call& fn);

// Stores one C function as a builtin member. The binary does the same three steps for each
// function: set_as_c_function on a value, builtin_member, then drop_refs.
void builtin_c_function(as_object* obj, const char* name, void (*func)(const fn_call& fn))
{
	as_value v;
	v.set_as_c_function(func);
	obj->builtin_member(name, v);
	v.drop_refs();
}

// Stores a number as a builtin member (the DH2 as_value has no constructor from a double): set_double on a value, then
// builtin_member, as the binary does for each constant.
static void builtin_number(as_object* obj, const char* name, double number)
{
	as_value v;
	v.set_double(number);
	obj->builtin_member(name, v);
}

// 0x7a0690 _ZN7gameswf9math_initEPNS_6playerE
// gameswf::math_init(gameswf::player*)
//
// DH2: upstream as_math.cpp has the same constants and function table in the same order, but without
// the first step. The binary calls hash::set_capacity(max(entry count, 32)) on the new object's member
// hash (at +0x0c, inlined). For a new object the entry count is 0, so the raw capacity is 48, which is
// what set_capacity(32) produces.
as_object* math_init(player* p)
{
	as_object* math_obj = new as_object(p);
	math_obj->m_members.set_capacity(32);

	// constants (IEEE bit patterns in the binary: E, LN2, LOG2E, LN10, LOG10E, PI, SQRT1_2, SQRT2)
	builtin_number(math_obj, "e", 2.7182818284590452354);
	builtin_number(math_obj, "ln2", 0.69314718055994530942);
	builtin_number(math_obj, "log2e", 1.4426950408889634074);
	builtin_number(math_obj, "ln10", 2.30258509299404568402);
	builtin_number(math_obj, "log10e", 0.43429448190325182765);
	builtin_number(math_obj, "pi", 3.14159265358979323846);
	builtin_number(math_obj, "sqrt1_2", 0.7071067811865475244);
	builtin_number(math_obj, "sqrt2", 1.4142135623730950488);

	// math methods
	builtin_c_function(math_obj, "abs", math_fabs);
	builtin_c_function(math_obj, "acos", math_acos);
	builtin_c_function(math_obj, "asin", math_asin);
	builtin_c_function(math_obj, "atan", math_atan);
	builtin_c_function(math_obj, "ceil", math_ceil);
	builtin_c_function(math_obj, "cos", math_cos);
	builtin_c_function(math_obj, "exp", math_exp);
	builtin_c_function(math_obj, "floor", math_floor);
	builtin_c_function(math_obj, "log", math_log);
	builtin_c_function(math_obj, "random", math_random);
	builtin_c_function(math_obj, "round", math_round);
	builtin_c_function(math_obj, "sin", math_sin);
	builtin_c_function(math_obj, "sqrt", math_sqrt);
	builtin_c_function(math_obj, "tan", math_tan);
	builtin_c_function(math_obj, "atan2", math_atan2);
	builtin_c_function(math_obj, "max", math_max);
	builtin_c_function(math_obj, "min", math_min);
	builtin_c_function(math_obj, "pow", math_pow);

	return math_obj;
}

// 0x7a7fb8 _ZN7gameswf8destructINS_14player_contextEEEvPKT_
// gameswf::destruct<gameswf::player_context>(gameswf::player_context const*)
// Binary (asm checked): if (p) { call vtable slot 0 with p (virtual D1); free_internal(p, 0); }
template <>
void destruct<player_context>(const player_context* p)
{
	if (p != nullptr) {
		p->~player_context();
		free_internal(const_cast<player_context*>(p), 0);
	}
}

// 0x7a7ff0 _ZN7gameswf8destructINS_14render_handlerEEEvPKT_
// gameswf::destruct<gameswf::render_handler>(gameswf::render_handler const*)
// Same shape as destruct<player_context> (asm checked). The destructor must be virtual, as the
// binary dispatches through slot 0.
template <>
void destruct<render_handler>(const render_handler* p)
{
	if (p != nullptr) {
		p->~render_handler();
		free_internal(const_cast<render_handler*>(p), 0);
	}
}

}  // namespace gameswf


// 0x7b21a8 gameswf::destructa<gameswf::array<gameswf::grid_entry_box<float,bool>*>>(gameswf::array<...> const*, unsigned int)
// With a non-null pointer: each of the count arrays is emptied and released, from the last to the first (the binary sets the size to 0
// and reserves 0 for each element, which is the array destructor), then the block is freed with free_internal.
namespace gameswf {

template <class T>
void destructa(const T* objects, unsigned int count) {
	if (objects != nullptr) {
		for (int i = static_cast<int>(count) - 1; i >= 0; --i) {
			const_cast<T*>(objects)[i].~T();
		}
		free_internal(const_cast<T*>(objects), 0);
	}
}

template void destructa< ::array<grid_entry_box<float, bool>*> >(const ::array<grid_entry_box<float, bool>*>* objects, unsigned int count);

}  // namespace gameswf

// destruct<array<RenderFX::SearchIndex::Entry>> (0x7a9988) is defined in game-ui/src/n2-game-ui-pack0-47efa6-0.cpp, the owner of the
// RenderFX element type; it is not repeated here.
