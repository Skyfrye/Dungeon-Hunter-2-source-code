#pragma once

// Arrays::X tables, slice arrays_00 (see NOTES.md, "Element tables"). Each table has the static `members`
// (first element; the block header is the original 32-bit stride word at members - 8, which is also the block
// base, and the count word at members - 4) and `size` (the element count of the forward loop, compared unsigned
// in the original). Elements
// are host Structs::X records (virtual finalize/read, see element_table.hpp) reached through a typed pointer; the
// original 32-bit stride of each table is Arrays::ListingStride::X (array_strides.hpp). `read` is defined in
// w7_arrays27.cpp (the Hex-Rays bodies of the read family are one shape, pydata::ReadArrayTable).
#include <cstddef>
#include <cstdint>

// The Arrays::X classes themselves (this slice's members, size, finalize and read among them) are declared once, in
// arrays.hpp.
#include "pydata-accessors/arrays.hpp"
