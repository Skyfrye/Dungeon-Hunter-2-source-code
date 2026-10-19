#pragma once

// Arrays::X finalize() and read(IStreamBase*) for slice arrays_02 (see NOTES.md, "Element tables").
// Each table has the static `members` (first element; the block header is the original 32-bit stride word at
// members - 8, which is also the block base, and the count word at members - 4) and `size`. The storage is defined
// in w7_arrays_02.cpp for the tables declared here that are not in w7_arrays_00.hpp (CharAnimTable, CamAnimSetTable,
// AnimTable, AIFactionTable, AITable, GameDifficulties, DesignSettingsTable, RectTable, StatListTable,
// StatAutoAssignSchemeTable); the other tables share the storage of w7_arrays_00.cpp.
// Elements are host Structs::X records (element_table.hpp); the original 32-bit stride of each table is
// Arrays::ListingStride::X (array_strides.hpp).
#include <cstddef>
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/arrays.hpp"
