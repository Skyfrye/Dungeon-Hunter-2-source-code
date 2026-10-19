// rnd::Tile: one placed block instance on the random-level grid. Tiles form a tree through their
// parent and child links, carry a copy of the ListElem that produced them, and know their grid cell.
// Original 32-bit size 0x90 (144), from the operator new(0x90) in NewRoot and Spawn.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4917f8 / 0x491850, dtors 0x4914e8 /
// 0x491500, AddChild 0x491428, RemoveChild 0x491440, TryPlaceTile 0x4913d0, PlaceTile 0x4913d8,
// Print 0x4914ac, SetModuleMVXProperties 0x491518, Unspawn 0x4918a8, RemoveNeighbors 0x491928,
// NewRoot 0x49196c, Spawn 0x4919b0, TrySpawn 0x491ab0, SaveAsModuleXML 0x491d90).
#pragma once

#include <cstdint>

#include "dh2/rnd/ListElem.hpp"

class TiXmlElement;
class Module;

namespace rnd {

class RandomGenerator;
class Block;
class Exit;

class Tile {
public:
    Tile(RandomGenerator& generator, Block& block, Tile* parent, ListElem& elem);  // 0x4917f8 / 0x491850
    ~Tile();                                                        // 0x4914e8 / 0x491500

    bool TryPlaceTile(int x, int y);                                // 0x4913d0 (the recovered body returns true)
    bool PlaceTile(int x, int y, float z);                          // 0x4913d8 (stores x, y, z, returns Block::PlaceInMap)
    void AddChild(Tile* child);                                     // 0x491428
    void RemoveChild(Tile* child);                                  // 0x491440
    void Print();                                                   // 0x4914ac (visits the children; the release body prints nothing)
    void SetModuleMVXProperties(Module* module);                    // 0x491518 (reads gameplay/mvx/<name>.mvx into the module)
    void Unspawn();                                                 // 0x4918a8 (removes it from its parent and the grid, then deletes it)
    void RemoveNeighbors();                                         // 0x491928 (unspawns the children)
    int SaveAsModuleXML(TiXmlElement* parent, int index);           // 0x491d90 (returns the index after the saved subtree)

    // Creates a root tile (no parent). Static: takes the generator and block as references.
    static Tile* NewRoot(RandomGenerator& generator, Block& block, ListElem& elem);  // 0x49196c
    // Creates a child at (x, y, z) of this tile in the block's grid.
    Tile* Spawn(Block& block, int x, int y, float z, ListElem& elem);  // 0x4919b0
    // Tries one exit of this tile: "to" gives the offset, "from" (may be null) the parent exit's offset.
    // The first argument is not read by the recovered code.
    Tile* TrySpawn(const Exit* unused, const Exit* from, const Exit* to, ListElem& elem);  // 0x491ab0

    // Original layout. Offsets are the 32-bit offsets of the original object; there is no vptr.
    const char* m_blockName;                                        // +0x00 the block's name (Block::m_name c_str), set by the ctor
    RandomGenerator* m_generator;                                   // +0x04
    Tile* m_parent;                                                 // +0x08
    int32_t m_childCount;                                           // +0x0c incremented by AddChild, decremented by RemoveChild
    Tile* m_children[8];                                            // +0x10 .. +0x2f child slots (count at +0x0c)
    Block* m_block;                                                 // +0x30
    ListElem m_listElem;                                            // +0x34 copy of the spawning ListElem (owner at +0x34)
    int32_t m_x;                                                    // +0x84 grid column, set by PlaceTile
    int32_t m_y;                                                    // +0x88 grid row, set by PlaceTile
    float m_z;                                                      // +0x8c height, set by PlaceTile
};

}  // namespace rnd
