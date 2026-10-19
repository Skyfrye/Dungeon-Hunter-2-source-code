// CRoomSearchFilter: the search criteria for a room list request. A room matches when every int filter
// holds on an active int attribute of the room, and then every bin filter holds on an active bin attribute.
// Original 32-bit size 0x24 (36): vptr at +0x00, two vectors, two active masks.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x8191fc, Clear 0x81927c, TestRoomAttributes 0x819548).
#pragma once

#include <cstdint>
#include <vector>

#include "dh2/CRoomAttributes.hpp"

// Comparison of a search filter. Values 0..5 follow the TestIntValues switch. Names are ours.
// For bin filters the operator is a flag: any nonzero value inverts the match.
enum ROOM_SEARCH_OPERATOR : std::int32_t {
    kOpEqual = 0,
    kOpNotEqual = 1,
    kOpLess = 2,
    kOpLessEqual = 3,
    kOpGreater = 4,
    kOpGreaterEqual = 5,
};

class CRoomSearchFilter {
public:
    // Int filter, 12 bytes in the original.
    struct tSearchFilterInt {
        std::int32_t attribute;                                         // +0x00 tROOM_ATTRIBUTES_INT
        std::int32_t op;                                                // +0x04 ROOM_SEARCH_OPERATOR
        std::int32_t value;                                             // +0x08
    };

    // Bin filter, 76 bytes in the original.
    struct tSearchFilterBin {
        std::int32_t attribute;                                         // +0x00 tROOM_ATTRIBUTES_BIN
        std::int32_t op;                                                // +0x04 ROOM_SEARCH_OPERATOR (nonzero inverts the match)
        uint8_t value[64];                                              // +0x08 inline value bytes, capacity inferred from the stride
        std::int32_t size;                                              // +0x48 number of valid bytes in value
    };

    CRoomSearchFilter();                                                // 0x8191fc (C2), 0x81923c (C1)
    CRoomSearchFilter(const CRoomSearchFilter& other);                  // 0x81a478 (C2), 0x81a428 (C1)
    virtual ~CRoomSearchFilter();                                       // slot 0: 0x819c64 (D1), 0x819cbc (D2); slot 1: 0x819ca0 (D0)
    CRoomSearchFilter& operator=(const CRoomSearchFilter& other);       // 0x81a40c

    virtual void Clear();                                               // slot 2: 0x81927c. Resets the vector ends only; the masks are kept.

    void Copy(const CRoomSearchFilter& other);                          // 0x81a3e4. Copies the two vectors only.

    bool IsFilterActive(tROOM_ATTRIBUTES_INT attribute);                // 0x8192a0
    bool IsFilterActive(tROOM_ATTRIBUTES_BIN attribute);                // 0x8192b8
    void EraseSearchAttributeInt(tROOM_ATTRIBUTES_INT attribute);      // 0x8192d0
    void EraseSearchAttributeBin(tROOM_ATTRIBUTES_BIN attribute);      // 0x8193ac
    void SetSearchAttributeInt(tROOM_ATTRIBUTES_INT attribute, ROOM_SEARCH_OPERATOR op, int value);   // 0x819cf8
    void SetSearchAttributeBin(tROOM_ATTRIBUTES_BIN attribute, ROOM_SEARCH_OPERATOR op, void* data, unsigned int size);  // 0x819edc

    bool TestIntValues(int roomValue, int filterValue, ROOM_SEARCH_OPERATOR op);              // 0x819488
    bool TestBinValues(char* roomBytes, int roomSize, char* filterBytes, int filterSize, ROOM_SEARCH_OPERATOR op);  // 0x819510
    bool TestRoomAttributes(CRoomAttributes& attributes);               // 0x819548

    // +0x00 vptr (the virtual slots above).
    std::vector<tSearchFilterInt> m_intFilters;                         // +0x04 (begin +0x04, end +0x08, capacity +0x0c), 12-byte entries
    std::vector<tSearchFilterBin> m_binFilters;                         // +0x10 (begin +0x10, end +0x14, capacity +0x18), 76-byte entries
    std::int32_t m_intFilterMask;                                       // +0x1c bit i set when int attribute i has a filter; read by IsFilterActive(int)
    std::int32_t m_binFilterMask;                                       // +0x20 bit i set when bin attribute i has a filter; read by IsFilterActive(bin)
};
