// DH2 explicit specializations of hash<int, V*, fixed_size_hash<int> >::set_raw_capacity for the cxform and
// matrix tables (binary 0x75aa70 and 0x75baf8). The DH2 table minimum is 4 buckets; upstream base/container.h
// uses 16. Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack2-6d7f71-0.cpp.
//
// Every translation unit that instantiates these tables must include this header before the first use, so that
// the specialization is seen instead of the generic member. The same applies to the loader table, declared in
// vendor-gameswf/gameswf_dh2_runtime.hpp.
//
// hash is global in the vendored source (base/container.h). The binary's gameswf::hash and
// gameswf::fixed_size_hash are the same templates here.
//
// Not declared here: hash<gameswf::string_pointer, gameswf::permanent_string*, ...>::set_raw_capacity (0x75c0e8).
// Its key type and hash functor are not in the tree, so the table cannot be instantiated yet.

#pragma once

#include <cmath>

#include "base/container.h"  // hash<>, fixed_size_hash<> (global in upstream)

namespace gameswf {

struct cxform;  // gameswf.h (upstream); only pointers are used here
struct matrix;  // gameswf.h (upstream); only pointers are used here

namespace dh2_hash {

// DH2: bucket count that hash<>::set_raw_capacity uses in the binary (for every instantiation that the DH2 build
// gives the 4-entry minimum). Binary: 1 << (int)(float)(logf(n - 1) / ln2 + 1.0), ln2 as the single-precision
// constant 0x3F317218, then at least 4. n <= 1 gives 4 (the ARM LSL of the INT_MIN from log(0) is 0 there).
// Power-of-two boundaries (n = 5, 9, 17, ...) depend on the libm's last bit; use other values in tests.
inline int bucket_count(int new_size) {
	if (new_size <= 1) {
		return 4;
	}
	const float kLn2 = 0.693147182464599609375f;  // 0x3F317218
	const float q = std::logf(static_cast<float>(new_size - 1)) / kLn2;
	const int bits = static_cast<int>(q + 1.0f);
	const unsigned int pow2 = (bits >= 0 && bits < 32) ? (1u << bits) : 0u;  // ARM LSL by 32 or more gives 0
	const int buckets = static_cast<int>(pow2);
	return buckets < 4 ? 4 : buckets;
}

}  // namespace dh2_hash

}  // namespace gameswf

// 0x75aa70 gameswf::hash<int, gameswf::cxform*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, gameswf::cxform*, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// 0x75baf8 gameswf::hash<int, gameswf::matrix*, gameswf::fixed_size_hash<int> >::set_raw_capacity(int)
template <>
void hash<int, gameswf::matrix*, fixed_size_hash<int> >::set_raw_capacity(int new_size);

// DH2: 0x78c6cc gameswf::hash<gameswf::tu_stringi, gameswf::tu_string, gameswf::stringi_hash_functor<gameswf::tu_stringi> >::set_raw_capacity(int)
// Body: vendor-gameswf/src/v1-vendor-gameswf-pack10-9a32ad-0.cpp. Needed by html_reader (stringi_hash<tu_string>).
template <>
void hash<tu_stringi, tu_string, stringi_hash_functor<tu_stringi> >::set_raw_capacity(int new_size);

// DH2: 0x7bb580 gameswf::hash<gameswf::tu_string, gameswf::tu_loadlib*, gameswf::string_hash_functor<gameswf::tu_string> >::set_raw_capacity(int)
// Body: vendor-gameswf/src/v1-vendor-gameswf-pack17-c88d12-0.cpp. Entries are 32 bytes (tu_string key at +0x08, tu_loadlib* at +0x1c).
struct tu_loadlib;  // base/tu_loadlib.h (upstream, global; the binary names it gameswf::tu_loadlib)
template <>
void hash<tu_string, tu_loadlib*, string_hash_functor<tu_string> >::set_raw_capacity(int new_size);
