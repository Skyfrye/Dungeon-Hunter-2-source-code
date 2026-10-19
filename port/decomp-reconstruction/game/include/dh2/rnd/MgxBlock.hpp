// rnd::MgxBlock: a Block loaded from a .mgx level-piece file. Adds the file buffer and its parsed XML
// document after the Block base, and places itself on the tile grid. Original 32-bit size 0x9c8 (2504),
// from the operator new(0x9c8) in FromFilename.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x48ad14 / 0x48b108, dtors 0x48a03c /
// 0x48a098 / 0x48a0b4, LoadFromXml 0x48a90c, LoadFromXmlStream 0x48aa84, FromFilename 0x48ad54,
// FitsInMap 0x48b85c, RemoveFromMap 0x48b8f0, PlaceInMap 0x48ba58).
#pragma once

#include <cstdint>

#include "core-platform/array2d.hpp"
#include "dh2/rnd/Block.hpp"

class IFileStream;
class TiXmlDocument;
class TiXmlHandle;

namespace rnd {

class Tile;

class MgxBlock : public Block {
public:
    MgxBlock();                                                     // 0x48ad14 / 0x48b108
    ~MgxBlock() override;                                           // 0x48a03c, 0x48a098, 0x48a0b4

    bool PlaceInMap(Array2d<Tile*>& map, Tile* tile, int x, int y) override;     // 0x48ba58, vtable slot 0x08
    bool RemoveFromMap(Array2d<Tile*>& map, Tile* tile, int x, int y) override;  // 0x48b8f0, vtable slot 0x0c
    bool FitsInMap(Array2d<Tile*>& map, int x, int y) override;                  // 0x48b85c, vtable slot 0x10

    bool LoadFromXml(TiXmlHandle& handle);                          // 0x48a90c (false when the handle has no element)
    bool LoadFromXmlStream(IFileStream* stream);                    // 0x48aa84 (reads the file, parses it, returns LoadFromXml)
    // 0x48ad54: opens "<gameplay>/mgx/<name>" through the file system; visual is stored as m_visual.
    static MgxBlock* FromFilename(const char* gameplay, const char* visual, const char* name);

    // MgxBlock occupies +0x00 .. +0x9bf (Block base). Original 32-bit size 0x9c8.
    void* m_fileBuffer;                                             // +0x9c0 bytes of the .mgx file (malloc'd by LoadFromXmlStream, free()d by the dtor)
    TiXmlDocument* m_document;                                      // +0x9c4 document parsed from m_fileBuffer (new'd by LoadFromXmlStream, deleted by the dtor)
};

}  // namespace rnd
