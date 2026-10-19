// SearchFailCache: a short list of recent search failures, so a repeated failing search can be skipped.
// It is an STLport vector of Entry, three 4-byte fields each. add() appends an entry, and when more
// than 10 entries are stored it starts over from empty.
// Original 32-bit size 0xc (12): the vector's begin, end and end-of-storage pointers (+0x00, +0x04, +0x08).
// An entry is the start inner node, the goal inner node and the flags of a failed PFWorld::_SearchGraph.
// Reconstructed from libDungeonHunter2.so pseudocode (add 0x52a504, the lookup in PFWorld::_SearchGraph 0x52b560).
#pragma once

#include <cstdint>
#include <vector>

class PFGInnerNode;

class SearchFailCache {
public:
    // One cached failure, 12 bytes in the original (host pointers here). add() copies it as is.
    struct Entry {
        const PFGInnerNode* m_start;                                // +0x00 the start inner node of the failed search
        const PFGInnerNode* m_goal;                                 // +0x04 the goal inner node
        std::uint32_t m_flags;                                      // +0x08 the search flags (the expansion limit)
    };

    void add(Entry& entry);                                         // 0x52a504

    // Vector storage: +0x00 begin, +0x04 end, +0x08 end of storage (STLport layout in the original).
    std::vector<Entry> m_entries;                                   // +0x00 .. +0x0b
};
