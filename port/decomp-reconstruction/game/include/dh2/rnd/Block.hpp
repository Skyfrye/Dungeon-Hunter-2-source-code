// rnd::Block: a placeable room piece of a random level. Has a name, gameplay and visual asset, a
// unit size, a block size (width, height) and eight side records laid out like rnd::Exit. Abstract:
// MgxBlock is the concrete block.
// Original 32-bit size 0x9c0 (2496), taken from the constructor's writes up to the end of the side table.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x48ab34 / 0x48ac24, dtors 0x489f58 /
// 0x489fbc / 0x489fd8, IsStraight 0x489988, GetFlag 0x4899e4, LinkToOtherBlocks 0x489aec).
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "core-platform/array2d.hpp"
#include "dh2/lstr.hpp"

namespace rnd {

class Tile;
class Direction;

class Block {
public:
    // One side record of the 8-entry table at +0x60, 300 (0x12c) bytes each. The first 0x2c bytes have
    // the rnd::Exit fields: the rules pass a record to Step and FilterExits as an Exit*. The Block ctor
    // sets only the direction and zeroes the name vector.
    struct Side {
        const char* m_blockName;                                    // +0x00 Exit::m_blockName (not set by the Block ctor)
        Block* m_block;                                             // +0x04 Exit::m_block (not set by the Block ctor)
        int32_t m_x;                                                // +0x08 Exit::m_x
        int32_t m_y;                                                // +0x0c Exit::m_y
        float m_weight;                                             // +0x10 Exit::m_weight
        const Direction* m_direction;                               // +0x14 ctor stores &unk_956B24, a default Direction
        int32_t m_flags;                                            // +0x18 Exit::m_flags
        std::vector<std::string> m_names;                           // +0x1c .. +0x27 zeroed by the ctor (Exit::m_names)
        int32_t unk_28;                                             // +0x28 Exit::unk_28; in a block side the number of links in m_links
        const Side* m_links[64];                                    // +0x2c .. +0x12b the other blocks' side records this side links to (count in unk_28; 4-byte pointers in the original)
    };

    Block();                                                        // 0x48ab34 / 0x48ac24
    virtual ~Block();                                               // 0x489f58, 0x489fbc, 0x489fd8 (vtable slots 0x00, 0x04)

    // Pure virtuals in vtable slots 0x08..0x10. MgxBlock provides them.
    virtual bool PlaceInMap(Array2d<Tile*>& map, Tile* tile, int x, int y) = 0;     // slot 0x08
    virtual bool RemoveFromMap(Array2d<Tile*>& map, Tile* tile, int x, int y) = 0;  // slot 0x0c
    virtual bool FitsInMap(Array2d<Tile*>& map, int x, int y) = 0;                  // slot 0x10

    bool IsStraight() const;                                        // 0x489988 (two sides, facing opposite directions)
    int GetFlag() const;                                            // 0x4899e4 (OR of 1 << direction id over the sides)
    void LinkToOtherBlocks(const std::map<const char*, Block*, lstr>& blocks);  // 0x489aec

    // Original layout. Offsets are the 32-bit offsets of the original object; the vptr at +0x00 is implicit.
    std::string m_name;                                             // +0x04 "name"
    std::string m_gameplay;                                         // +0x1c "gameplay"
    std::string m_visual;                                           // +0x34 "visual"
    float m_unitWidth;                                              // +0x4c "unit_width" (MgxBlock::LoadFromXml), default 2960.0f
    float m_unitHeight;                                             // +0x50 "unit_height" (MgxBlock::LoadFromXml), default 2960.0f
    int32_t m_blockWidth;                                           // +0x54 "block_width" (MgxBlock::LoadFromXml), default 1
    int32_t m_blockHeight;                                          // +0x58 "block_height" (MgxBlock::LoadFromXml), default 1
    int32_t m_sideCount;                                            // +0x5c records in use: the number of "link" elements loaded
    Side m_sides[8];                                                // +0x60 .. +0x9bf, eight 300-byte records
};

}  // namespace rnd
