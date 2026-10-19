// rnd::BlockSearch: a (name, gameplay, visual) key used to find a matching ListElem. Three
// std::string members, one per field, 24 bytes each. Original 32-bit size 0x48 (72).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x48e0e0, 0x490520; dtor 0x48db5c;
// operator() 0x48c638).
#pragma once

#include <string>

namespace rnd {

class ListElem;

class BlockSearch {
public:
    BlockSearch(const char* name, const char* gameplay, const char* visual);  // 0x48e0e0
    BlockSearch(const BlockSearch& other);                          // 0x490520
    ~BlockSearch();                                                 // 0x48db5c

    // Matches the element when name, gameplay and visual are equal, byte for byte including length.
    bool operator()(ListElem& elem) const;                          // 0x48c638

    std::string m_name;                                             // +0x00
    std::string m_gameplay;                                         // +0x18
    std::string m_visual;                                           // +0x30
};

}  // namespace rnd
