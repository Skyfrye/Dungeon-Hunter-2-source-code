// rnd::RandomGenerator: owns one random-level generation: the tile grid, the block and list-rule maps,
// the room pools, the root rule and the level configuration it writes. Original 32-bit size 0x190 (400),
// matching the operator new(0x190) in the level code (Level.hpp, m_randomGenerator).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x487e84 / 0x487fdc, dtors 0x488504 /
// 0x488704, UnloadTiles 0x4843a0, UnloadRules 0x488300, UnloadRoomPools 0x485a34, LoadRoomPools 0x485cdc,
// LoadListRules 0x4865f0, LoadBlocks 0x4892ec, LoadRuleFile 0x489508, GetBlock 0x48e184, GetList 0x484438,
// ValidList 0x484554, ValidBlock 0x4845d0, PrintMap 0x484820, Generate 0x488134, GetFiles 0x488904,
// SaveModularLevelToStream 0x488b84, SaveModularLevelXml 0x488e50, NextInt 0x483a94, GetInt 0x483ac8,
// operator() 0x483af8, Hash 0x483b14).
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "core-platform/array2d.hpp"
#include "dh2/lstr.hpp"
#include "dh2/rnd/RootRule.hpp"

class LevelConfig;
class StreamBuffer;
class TiXmlDocument;
class TiXmlNode;

namespace rnd {

class Tile;
class Block;
class ListRule;
class RoomPool;

class RandomGenerator {
public:
    RandomGenerator();                                              // 0x487e84 / 0x487fdc
    ~RandomGenerator();                                             // 0x488504 / 0x488704

    int NextInt();                                                  // 0x483a94 (steps m_rngState)
    int GetInt(int lo, int hi);                                     // 0x483ac8 (lo when lo >= hi)
    unsigned int operator()(unsigned int n);                        // 0x483af8 (NextInt % n)
    unsigned int Hash(unsigned char* data);                         // 0x483b14 (djb2 style, 5381 for an empty string)

    void UnloadTiles();                                             // 0x4843a0
    void UnloadRules();                                             // 0x488300
    void UnloadRoomPools();                                         // 0x485a34

    ListRule* GetList(const char* name) const;                      // 0x484438
    bool ValidList(const char* name);                               // 0x484554
    bool ValidBlock(const char* name);                              // 0x4845d0
    Block* GetBlock(const char* name) const;                        // 0x48e184

    void PrintMap();                                                // 0x484820
    int LoadRoomPools(TiXmlNode* node);                             // 0x485cdc (returns 1; LoadRuleFile reads it)
    int LoadListRules(TiXmlNode* node);                             // 0x4865f0 (returns 1; LoadRuleFile reads it)
    bool LoadBlocks();                                              // 0x4892ec (returns true)
    bool LoadRuleFile(const char* path);                            // 0x489508 (returns false when the file is not read)
    int Generate(int seed);                                         // 0x488134 (returns 1 when the root tile is placed)
    void GetFiles(const char* directory, std::vector<std::string>& files);  // 0x488904
    void SaveModularLevelToStream(StreamBuffer& stream);            // 0x488b84
    std::string SaveModularLevelXml();                              // 0x488e50 (returns the saved file name)

    // Original layout. Offsets are the 32-bit offsets of the original object (no vptr).
    uint32_t m_rngState;                                            // +0x00 generator state, stepped by NextInt (the ctor does not write it)
    int32_t m_seed;                                                 // +0x04 seed passed to Generate (the ctor does not write it)
    Array2d<Tile*> m_tiles;                                         // +0x08 tile grid (Array2d; 0x34 bytes in the original)
    std::map<const char*, Block*, lstr> m_blocks;                   // +0x3c tree header at +0x3c, node count at +0x4c
    uint8_t pad_50[0x04];                                           // +0x50 .. +0x53
    std::map<const char*, ListRule*, lstr> m_listRules;             // +0x54 tree header at +0x54, node count at +0x64
    uint8_t pad_68[0x04];                                           // +0x68 .. +0x6b
    RootRule m_rootRule;                                            // +0x6c the root rule (0x90 bytes); its m_generator is this object
    std::string unk_fc;                                             // +0xfc
    Tile* m_rootTile;                                               // +0x114 root tile of the last Generate (zeroed by the ctor)
    std::vector<RoomPool*> m_roomPools;                             // +0x118 begin, end, capacity words of the RoomPool vector
    TiXmlDocument* m_xmlDocument;                                   // +0x124 document LoadRuleFile builds (deleted by UnloadRules)
    char* m_xmlBuffer;                                              // +0x128 file buffer given to the document (free() in UnloadRules)
    std::string unk_12c;                                            // +0x12c
    std::string unk_144;                                            // +0x144 directory prefix: LoadBlocks lists <this>/mgx/mgxlist.txt
    std::string m_sceneDir;                                         // +0x15c initialized to "data/scene/" by the ctor
    std::string m_ruleFileName;                                     // +0x174 path of the rule file, set by LoadRuleFile (empty from the ctor)
    LevelConfig* m_levelConfig;                                     // +0x18c operator new(0x318), constructed with LevelConfig(4)
};

}  // namespace rnd
