// rnd::Exit: one open connection of a Block, facing a Direction. Holds the owning block, the grid
// cell it sits on, a float weight and the list of exit names it accepts. Original 32-bit size 0x2c (44),
// as far as the constructor writes go (no allocation site in the rnd code was found for it).
// The side records of Block have the same fields in their first 0x2c bytes (see Block::Side).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x48a380 / 0x48a3d4; LoadFromXml 0x48a5d0;
// GetBlockUnitPosition 0x489ddc; the namespace helper TryIsZero 0x489aa4).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

class TiXmlHandle;
template <typename T> struct Point3D;

namespace rnd {

class Block;
class Direction;

class Exit {
public:
    // Ctor arguments in order: direction, block, x, y, weight, flags, names.
    Exit(const Direction& direction, Block* block, int x, int y, float weight, int flags,
         std::vector<std::string>& names);                          // 0x48a380 / 0x48a3d4

    bool LoadFromXml(TiXmlHandle handle, Block* block, int index);  // 0x48a5d0 (true when an exit was added)
    void GetBlockUnitPosition(Point3D<float>& position, Block* block);  // 0x489ddc (writes m_x and m_y from position and the block's unit size)

    // Original layout. Offsets are the 32-bit offsets of the original object; there is no vptr.
    const char* m_blockName;                                        // +0x00 the owning block's name (Block::m_name c_str), set by the ctor
    Block* m_block;                                                 // +0x04 the owning block
    int32_t m_x;                                                    // +0x08 grid column of the exit
    int32_t m_y;                                                    // +0x0c grid row of the exit
    float m_weight;                                                 // +0x10 float ctor argument
    const Direction* m_direction;                                   // +0x14 the direction the exit faces (Direction id is its first word)
    int32_t m_flags;                                                // +0x18 int ctor argument
    std::vector<std::string> m_names;                               // +0x1c exit names the exit accepts
    int32_t unk_28;                                                 // +0x28 zeroed by the ctor
};

// Namespace helper called by Exit::LoadFromXml (0x489aa4). True when the text is "0" or empty,
// compared case-insensitively.
bool TryIsZero(const char* text);

}  // namespace rnd
