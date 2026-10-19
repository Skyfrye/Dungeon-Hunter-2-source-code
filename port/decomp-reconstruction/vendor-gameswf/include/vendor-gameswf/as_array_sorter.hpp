// gameswf::standard_array_sorter and gameswf::custom_array_sorter as the DH2 binary has them (Gameloft).
// Neither class is in gameswf r1714 (which sorts with a bubble sort in as_array::sort): the DH2 build sorts the array's
// elements with std::sort, and as_array_sort (0x79b124, pack11) builds one of these two comparators for it.
//
// Layout, 32-bit offsets as comments only (host pointers are 8 bytes; never do arithmetic on these offsets):
//   standard_array_sorter  unk_00 +0x00..+0x0b  an as_value (12 bytes in the binary), undefined, copied along with the sorter
//                                               by std::sort and never read by operator(). The binary builds it by assigning an
//                                               undefined as_value, so it is a compare-function slot that this comparator does
//                                               not use.
//                          m_options +0x0c      int, as_global_array option bits: CASEINSENSITIVE 1,
//                                               DESCENDING 2, NUMERIC 0x10 (upstream gameswf_as_classes/as_array.h)
//   custom_array_sorter    m_compare_fn +0x00   as_value*, the comparison function value. The binary loads
//                                               this one word twice: as the method and as the this value.
//                          m_env +0x04          as_environment*, the caller's environment, whose stack the comparator uses
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack11-4edfaf-0.cpp (0x7986e4 and 0x799514).

#pragma once

#include "vendor-gameswf/as_value.hpp"  // as_value (DH2), compiles on its own

namespace gameswf {

struct as_environment;  // gameswf_environment.h; the comparator only stores and passes the pointer

// DH2: comparator for Array.sort with the NUMERIC, CASEINSENSITIVE or DESCENDING option bits. 0x7986e4.
struct standard_array_sorter {
	standard_array_sorter() : m_options(0) {}
	explicit standard_array_sorter(int options) : m_options(options) {}

	as_value unk_00;  // +0x00..+0x0b: undefined, not read by operator()
	int m_options;    // +0x0c: as_global_array option bits

	// Returns true when lhs sorts before rhs. The binary returns int 0 or 1; declared bool here.
	bool operator()(const as_value& lhs, const as_value& rhs);  // 0x7986e4
};

// DH2: comparator that calls a script function with the two values pushed on the environment stack. 0x799514.
struct custom_array_sorter {
	custom_array_sorter() : m_compare_fn(nullptr), m_env(nullptr) {}
	custom_array_sorter(as_value* compare_fn, as_environment* env) : m_compare_fn(compare_fn), m_env(env) {}

	as_value* m_compare_fn;     // +0x00: the comparison function value
	as_environment* m_env;      // +0x04: environment whose stack holds the call arguments

	// True when the script function returns exactly 1.
	bool operator()(const as_value& lhs, const as_value& rhs);  // 0x799514
};

}  // namespace gameswf
