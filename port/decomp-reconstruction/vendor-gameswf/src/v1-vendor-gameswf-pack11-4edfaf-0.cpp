// Batch v1-vendor-gameswf-pack11-4edfaf-0 (vendor-gameswf). Owners: gameswf::as_property, gameswf::as_array,
// gameswf::standard_array_sorter, gameswf::custom_array_sorter, gameswf::as_listener, gameswf::as_color.
//
// Layouts (32-bit offsets; see the headers):
//   as_array     0x5c bytes: as_object, m_string_value +0x38 (tu_string), m_array +0x4c (array<as_value>, 16 bytes).
//   as_listener  0x58 bytes: as_object, m_listeners +0x38 (listener, 16 bytes), m_reentrance +0x48, m_suspended_event +0x4c
//                (tu_queue, 12 bytes).
//   as_color     0x60 bytes: as_object, m_target +0x38 (weak_ptr<character>), m_cxform +0x40 (cxform, 32 bytes).
//
// Defined here: the standard and custom array comparators (0x7986e4, 0x799514), the as_array members the binary has
// (constructor 0x79855c/0x798608, set_member and get_member by name and by index, is_index, pop, this_alive, enumerate),
// as_array_sort (0x79b124, which sorts with std::sort and one of the two comparators), the as_listener constructors and
// destructor, and the as_color constructors. The DH2 as_array constructor registers no per-instance methods; they live in
// the builtin table 7 that standard_method_map_init fills.
//
// Not defined here:
//   as_property D1 and D2 (0x796c28, 0x796c9c). The body is the upstream empty destructor in gameswf_value.cpp; the
//     binary's explicit releases are the inlined gc_ptr destructors. Ledgered upstream.
//   as_array D1 (0x79a440) and as_color D1 (0x79c0a0). Compiler-generated implicit destructors (the members release
//     themselves). Ledgered upstream.
//   The deleting destructors D0 (0x796c80, 0x79a4bc, 0x79b6b4, 0x79c0fc) are emitted from delete. Skipped.
//
// Upstream definitions replaced by the ones below, wrapped in "#if 0 /* DH2: replaced by ... */":
//   gameswf_as_classes/as_array.cpp       as_array::as_array, get_member, set_member (the sort member is gone too)
//   gameswf_as_classes/as_broadcaster.cpp as_listener::as_listener(player*)
//   gameswf_as_classes/as_color.cpp       as_color::as_color(player*, character*)

#include <algorithm>
#include <cstdlib>
#include <cstring>
#include <functional>

#include "base/container.h"                          // tu_string, tu_stringi
#include "vendor-gameswf/as_value.hpp"               // as_value (DH2)
#include "vendor-gameswf/as_array_sorter.hpp"        // standard_array_sorter, custom_array_sorter (DH2)
#include "vendor-gameswf/as_array_dh2_helpers.hpp"   // dh2::as_array_is_index_text

#include "gameswf/gameswf_action.h"              // call_method (DH2 six-argument form), fn_call, get_builtin
#include "gameswf/gameswf_environment.h"         // as_environment
#include "gameswf/gameswf_as_classes/as_array.h"
#include "gameswf/gameswf_as_classes/as_broadcaster.h"
#include "gameswf/gameswf_as_classes/as_color.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_player.h"

namespace gameswf {

namespace {

// as_global_array::option (upstream gameswf_as_classes/as_array.h). The sorters test these bits.
constexpr int kCaseInsensitive = 1;
constexpr int kDescending = 2;
constexpr int kNumeric = 16;

}  // namespace

// 0x7986e4 gameswf::standard_array_sorter::operator()(gameswf::as_value const&, gameswf::as_value const&)
// Checks the option bits in this order. NUMERIC compares to_number() values and returns. Otherwise, CASEINSENSITIVE
// compares the two strings with tu_string::stricmp, when the two values hold different string objects and the
// comparison is not equal. Otherwise (or when the case-insensitive comparison is equal), the strings are compared
// with strcmp, again only when they are different objects and the comparison is not equal. When that is also equal
// (or the objects are the same), the result is the address order of the two values. DESCENDING negates the result
// of each branch (the binary returns result ^ 1, or this >= a3 for the address branch).
bool standard_array_sorter::operator()(const as_value& lhs, const as_value& rhs) {
	const int options = m_options;  // +0x0c
	const bool descending = (options & kDescending) != 0;

	if ((options & kNumeric) != 0) {
		const double lhs_number = lhs.to_number();
		const bool less = lhs_number < rhs.to_number();
		return descending ? !less : less;
	}

	const tu_string& lhs_text = lhs.to_tu_string();
	const tu_string& rhs_text = rhs.to_tu_string();

	if ((options & kCaseInsensitive) != 0 && &lhs_text != &rhs_text) {
		const int c = tu_string::stricmp(lhs_text.c_str(), rhs_text.c_str());
		if (c != 0) {
			const bool less = c < 0;
			return descending ? !less : less;
		}
	}

	if (&lhs_text != &rhs_text) {
		const int c = std::strcmp(lhs_text.c_str(), rhs_text.c_str());
		if (c != 0) {
			const bool less = c < 0;
			return descending ? !less : less;
		}
	}

	const bool less = std::less<const as_value*>()(&lhs, &rhs);
	return descending ? !less : less;
}

// 0x799514 gameswf::custom_array_sorter::operator()(gameswf::as_value const&, gameswf::as_value const&)
// The binary pushes lhs, then rhs, on the environment stack. It calls the comparison function with method = *m_compare_fn,
// this = *m_compare_fn, two arguments, first argument bottom index = stack size - 1 (read after the pushes), and the
// debug label "???". Then it resizes the stack to size - 2 and returns true when the result converts (truncating) to
// 1. The result is destroyed at the end, as in the binary.
bool custom_array_sorter::operator()(const as_value& lhs, const as_value& rhs) {
	m_env->m_stack.push_back(lhs);
	m_env->m_stack.push_back(rhs);
	as_value result = call_method(*m_compare_fn, m_env, *m_compare_fn, 2, m_env->m_stack.size() - 1, "???");
	m_env->m_stack.resize(m_env->m_stack.size() - 2);
	return static_cast<int>(result.to_number()) == 1;
}

// 0x79855c gameswf::as_array::as_array(gameswf::player*)  [C1]
// 0x798608 gameswf::as_array::as_array(gameswf::player*)  [C2, same body]
// as_object(player), the vtable, then the members (an empty tu_string, an empty array), then the constructor
// function value. There is no builtin_member call: the methods of an Array are in the builtin table 7.
as_array::as_array(player* p) : as_object(p) {
	as_value ctor;
	ctor.set_as_c_function(as_global_array_ctor);
	set_ctor(ctor);
}

// 0x798108 gameswf::as_array::set_member(int, gameswf::as_value const&)
// A negative index is refused (0). An index past the end first grows the array to index + 1. The element is assigned.
int as_array::set_member(int id, const as_value& val) {
	if (id < 0) {
		return 0;
	}
	if (id >= m_array.size()) {
		m_array.resize(id + 1);
	}
	m_array[id] = val;
	return 1;
}

// 0x798174 gameswf::as_array::get_member(int, gameswf::as_value*)
// An index outside the array gives 0 and leaves *val alone; otherwise *val is the element.
int as_array::get_member(int id, as_value* val) {
	if (id < 0 || id >= m_array.size()) {
		return 0;
	}
	*val = m_array[id];
	return 1;
}

// 0x7984b8 gameswf::as_array::get_member(gameswf::tu_stringi const&, gameswf::as_value*)
// The Array builtin table (id 7) first: a method or the length property (a property value gets this array as its
// target). Then the as_object members. Then, when the name is all digits (is_index), the element by integer index
// through the virtual get_member(int, as_value*) (vtable +0x28).
bool as_array::get_member(const tu_stringi& name, as_value* val) {
	if (get_builtin(BUILTIN_ARRAY_METHOD, name, val)) {
		if (val->is_property()) {
			val->set_property_target(this);
		}
		return true;
	}
	if (as_object::get_member(name, val)) {
		return true;
	}
	if (is_index(name)) {
		return get_member(std::atoi(name.c_str()), val) != 0;
	}
	return false;
}

// 0x79844c gameswf::as_array::set_member(gameswf::tu_stringi const&, gameswf::as_value const&)
// An all-digit name stores the element through the virtual set_member(int, as_value const&) (vtable +0x24) and is done
// when that succeeds. Every other name, and a refused index, goes to as_object::set_member.
bool as_array::set_member(const tu_stringi& name, const as_value& val) {
	if (is_index(name) && set_member(std::atoi(name.c_str()), val)) {
		return true;
	}
	return as_object::set_member(name, val);
}

// 0x79806c gameswf::as_array::is_index(gameswf::tu_stringi const&)
// Non-const member. The binary never reads this (its first argument is unused); the string is the second argument.
// The text test is gameswf::dh2::as_array_is_index_text, compiled and tested in this batch's test.
bool as_array::is_index(const tu_stringi& name) {
	return dh2::as_array_is_index_text(name.c_str());
}

// 0x7980cc gameswf::as_array::pop(gameswf::as_value*)
// Copies the last element to *val, then resizes the array to one fewer element. The binary does not test for an empty
// array, and this build does not either (callers keep the count above zero).
void as_array::pop(as_value* val) {
	*val = m_array[m_array.size() - 1];
	m_array.resize(m_array.size() - 1);
}

// 0x79839c gameswf::as_array::this_alive()
// Marks the array and its object elements alive for the current garbage generation. The binary reads the player through
// as_object::m_player (a dead proxy is cleared), and does nothing when this array's alive stamp already equals the player's
// garbage count. Otherwise as_object::this_alive() runs, then every element that is a non-null object whose own stamp differs
// gets this_alive() (vtable +0x44); the player is read again before each comparison. The element count is read once; the
// buffer is re-read for each element. Like the binary, it does not test for a missing player.
void as_array::this_alive() {
	player* p = m_player.get_ptr();
	if (m_alive_stamp != p->m_garbage_count) {
		as_object::this_alive();
		const int count = m_array.size();
		for (int i = 0; i < count; ++i) {
			as_value& element = m_array[i];
			if (element.is_object()) {
				as_object* obj = element.to_object();
				if (obj != NULL) {
					p = m_player.get_ptr();
					if (obj->m_alive_stamp != p->m_garbage_count) {
						obj->this_alive();
					}
				}
			}
		}
	}
}

// 0x798bc8 gameswf::as_array::enumerate(gameswf::as_environment*)
// Calls as_object::enumerate first, then pushes the numbers 0 to size-1 onto the environment stack. The binary's
// return value is the last push_back's return register, not a result, so the DH2 signature is void.
void as_array::enumerate(as_environment* env) {
	as_object::enumerate(env);
	const int count = m_array.size();
	for (int i = 0; i < count; ++i) {
		env->push(i);
	}
}

// 0x79b124 gameswf::as_array_sort(gameswf::fn_call const&)
// Native Array.sort. The comparison function is the first argument when that is a function (the options are then the second
// argument); otherwise the options are the first argument, converted with to_number() and truncated. A non-empty array is
// sorted with std::sort: with custom_array_sorter when a function was given, else with standard_array_sorter and the options.
// The result is the array itself. The binary does not test the arguments for a number type or the array for null.
void as_array_sort(const fn_call& fn) {
	as_array* a = cast_to<as_array>(fn.this_ptr);
	as_value compare_function;
	int index = 0;
	if (fn.nargs > 0 && fn.arg(0).is_function()) {
		compare_function = fn.arg(0);
		index = 1;
	}
	int options = 0;
	if (fn.nargs > index) {
		options = static_cast<int>(fn.arg(index).to_number());
	}
	if (a->size() > 0) {
		as_value* first = &a->m_array[0];
		as_value* last = first + a->size();
		if (!compare_function.is_undefined()) {
			std::sort(first, last, custom_array_sorter(&compare_function, fn.env));
		} else {
			std::sort(first, last, standard_array_sorter(options));
		}
	}
	fn.result->set_as_object(a);
}

// 0x79b518 gameswf::as_listener::as_listener(gameswf::player*) [C1]
// 0x79b570 gameswf::as_listener::as_listener(gameswf::player*) [C2, same body]
// Replaces the upstream constructor in as_broadcaster.cpp (wrapped in #if 0 there). The binary runs the as_object(player*)
// base constructor, sets the vtable, and zeroes the members: the listener (+0x38, 16 bytes), the re-entrance flag (+0x48) and
// the suspended-event queue (+0x4c, three words). The member initialisers do exactly that.
as_listener::as_listener(player* p) : as_object(p), m_reentrance(false) {
}

// 0x79b5c8 gameswf::as_listener::~as_listener() [D1]
// The binary: vtable, pops the suspended-event queue while its count (+0x54) is non-zero, releases each listener weak
// proxy, sets the count to 0, frees the buffer with reserve(0), then runs as_object::~as_object. The queue and the
// listener array do all of that as members, in this order, after this empty body.
as_listener::~as_listener() {
}

// 0x79c2f0 gameswf::as_color::as_color(gameswf::player*, gameswf::character*) [C1]
// 0x79c66c gameswf::as_color::as_color(gameswf::player*, gameswf::character*) [C2, same body]
// Replaces the upstream constructor in as_color.cpp (wrapped in #if 0 there). Order in the binary: as_object(player)
// base, vtable, weak_ptr<character> m_target = target (proxy at +0x38), the identity colour transform at +0x40..+0x5c, then
// eight words copied from the character's local colour transform (the cxform behind character +0x48). Upstream's
// assert(target) is not in the binary and is not written. Then four builtin members (getRGB, setRGB, getTransform,
// setTransform), each as an as_c_function value, and the constructor as_global_color_ctor.
void as_color_getRGB(const fn_call& fn);
void as_color_setRGB(const fn_call& fn);
void as_color_gettransform(const fn_call& fn);
void as_color_settransform(const fn_call& fn);

as_color::as_color(player* p, character* target) : as_object(p) {
	m_target = target;
	m_cxform = target->get_cxform();

	as_value get_rgb;
	get_rgb.set_as_c_function(as_color_getRGB);
	builtin_member("getRGB", get_rgb);

	as_value set_rgb;
	set_rgb.set_as_c_function(as_color_setRGB);
	builtin_member("setRGB", set_rgb);

	as_value get_transform;
	get_transform.set_as_c_function(as_color_gettransform);
	builtin_member("getTransform", get_transform);

	as_value set_transform;
	set_transform.set_as_c_function(as_color_settransform);
	builtin_member("setTransform", set_transform);

	as_value ctor;
	ctor.set_as_c_function(as_global_color_ctor);
	set_ctor(ctor);
}

}  // namespace gameswf
