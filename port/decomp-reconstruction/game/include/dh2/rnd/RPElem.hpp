// rnd::RPElem: one size entry of a RoomPool, 24 bytes in the original (RoomPool indexes its vector with
// stride 24). FillSizes stores the first requested size at +0x0c and +0x14 and the maximum of the two at
// +0x10. Original 32-bit size 0x18 (24).
// Reconstructed from libDungeonHunter2.so pseudocode (FillSizes 0x48bc00, LoadFromXml 0x48c48c; the
// temporary built in RoomPool::LoadFromXml 0x48cac0 gives the field initial values).
#pragma once

#include <cstdint>

class TiXmlNode;

namespace rnd {

class RoomPool;

class RPElem {
public:
    void FillSizes(int a, int b);                                   // 0x48bc00: stores a, max(a, b)
    void LoadFromXml(TiXmlNode* node);                              // 0x48c48c: "id" (hashed) and "recursive" attributes

    // Original layout. Offsets are the 32-bit offsets of the original object.
    RoomPool* m_pool;                                               // +0x00 the owning RoomPool (its m_generator is read for the hash)
    uint32_t m_id;                                                  // +0x04 hash of the "id" attribute, the key RoomPool::Find compares (0x48bc20)
    bool m_recursive;                                               // +0x08 "recursive" attribute equals "true"
    uint8_t pad_09[0x03];                                           // +0x09 .. +0x0b
    int32_t unk_0c;                                                 // +0x0c first size given to FillSizes (-1 before)
    int32_t unk_10;                                                 // +0x10 max of the two sizes given to FillSizes (-1 before)
    int32_t unk_14;                                                 // +0x14 first size given to FillSizes (-1 before)
};

}  // namespace rnd
