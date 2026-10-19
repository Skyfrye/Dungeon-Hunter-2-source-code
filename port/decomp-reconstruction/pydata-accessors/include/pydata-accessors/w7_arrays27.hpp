#pragma once

// Arrays::X::read(IStreamBase*) for slice arrays_27 and the other tables whose storage is declared elsewhere
// (see NOTES.md, "Element tables"). Layout: one byte block per table, count word at members - 4, the original
// 32-bit stride word at members - 8 (block base). The elements are host Structs::X records at host stride,
// constructed in place and reached through a typed pointer (element_table.hpp); the listing stride of each table
// is Arrays::ListingStride::X (array_strides.hpp). The read slot of an element is vtable +0xc.
//
// This header declares the 28 tables that no other header declares (struct Arrays::X with the static storage
// `members` and `size`, defined in w7_arrays27.cpp, and a static read). The finalize step of these tables calls
// the free function that w7_arrays_01.hpp declares for the same table (FinalizeX).
// The reads of the 11 tables that w7_arrays_00.hpp declares (ProjectileTable, MerchantTable, ItemTypeList,
// ItemAudioVisualTable, LevelList, FastTravelList, LootTable, ItemList, DropTilePriorityTable, ModelDict,
// v2Quests) are static members declared there and defined in w7_arrays27.cpp as well.
#include <cstdint>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "pydata-accessors/arrays.hpp"
