// rnd::Direction: one of the four grid directions (north, east, south, west). Original 16-byte record,
// read from libDungeonHunter2.so data at sDirections (0x956AE4, stride 0x10):
//   +0x00 int32 id      (north 0, east 1, south 2, west 3)
//   +0x04 const char* name  (the direction's exit name string)
//   +0x08 int32 x       grid offset (north (0,-1), east (1,0), south (0,1), west (-1,0))
//   +0x0c int32 y
// DIRECTION_OPPOSITES maps an id to the id of the opposite direction. Its address is not yet located in the
// binary, so it is declared here and not defined; the definition must be added with its evidence.
#pragma once

#include <cstdint>

namespace rnd {

class Direction {
public:
    std::int32_t id;      // +0x00
    const char* name;     // +0x04
    std::int32_t x;       // +0x08
    std::int32_t y;       // +0x0c

    // Static table of the four directions (original sDirections at 0x956AE4), indexed by id, and a fifth entry, "none" (id 4, offset 0, 0) at
    // 0x956B24, which is the direction a Block side has before it is loaded (the original's unk_956B24) and the one Exit::LoadFromXml
    // gives a direction name that matches none of the four.
    static const Direction sDirections[5];
};

// DIRECTION_OPPOSITES maps a direction id to the id of its opposite.
// RECOVERED: its 16 bytes are at 0x999880 and read as the four int32 2, 3, 0, 1. The address came from
// the ELF symbol table, not from a data xref: the only xref to the name string at 0x121282 is the
// Elf32_Sym entry at 0x56d98, whose st_value field (entry offset +0x04) is 0x999880. So north(0) ->
// south(2), east(1) -> west(3), south(2) -> north(0), west(3) -> east(1): an involution, as the name
// implies. Six rows waited on this - IsStraight, GetFlag, LinkToOtherBlocks, Rule::Impl's constructor,
// ForceBlock::Impl::FilterExits and Tile::TrySpawn.
extern const std::int8_t gDistributions[26136];     // 0x8ce5c8, see rnd_direction_tables.cpp
extern const std::int32_t DIRECTION_OPPOSITES[5];   // the fifth word (0x999890) is 4: none is its own opposite

}  // namespace rnd
