// rnd::RoomPool: a set of RPElem size entries loaded from a <roompool> XML node. The "size" attribute
// is read into +0x00. Original 32-bit size 0x14 (20), from the operator new(0x14) in
// RandomGenerator::LoadRoomPools.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x485a0c, LoadFromXml 0x48cac0,
// Find 0x48bc20 / 0x48c3f8 / 0x4906bc, ComputeSizeOfRules 0x490904).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "dh2/rnd/RPElem.hpp"

class TiXmlNode;

namespace rnd {

class RandomGenerator;

class RoomPool {
public:
    ~RoomPool();                                                    // 0x485a0c (clears the element vector)

    RPElem* Find(unsigned long key);                                // 0x48bc20 (compares RPElem::m_id)
    RPElem* Find(unsigned char* key);                               // 0x48c3f8
    RPElem* Find(std::string key);                                  // 0x4906bc (by value, as the mangled name shows)
    void LoadFromXml(TiXmlNode* node);                              // 0x48cac0
    int ComputeSizeOfRules();                                       // 0x490904 (1 when the sizes are set, 0 when m_size is out of range)

    // Original layout. Offsets are the 32-bit offsets of the original object; there is no vptr.
    int32_t m_size;                                                 // +0x00 "size" attribute
    std::vector<RPElem> m_elems;                                    // +0x04 begin, end, capacity words; elements are 24 bytes
    RandomGenerator* m_generator;                                   // +0x10 the owning generator (LoadRoomPools sets it before LoadFromXml)
};

}  // namespace rnd
