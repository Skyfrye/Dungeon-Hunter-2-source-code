// rnd::ListRule: a named list of ListElem candidates loaded from <list> XML. A "replacement" list
// swaps an element in place; otherwise elements are appended. Original 32-bit size 0x2c (44), from the
// operator new(0x2c) in RandomGenerator::LoadListRules.
// Reconstructed from libDungeonHunter2.so pseudocode (Replace 0x48ec74, LoadFromXml 0x48ed2c,
// Find 0x4905d0, LoadListRules 0x4865f0 for the allocation).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "dh2/rnd/ListElem.hpp"

class TiXmlNode;

namespace rnd {

class RandomGenerator;

class ListRule {
public:
    // Replaces or appends an element. The element's owner must be this list (asserted in the original).
    void Replace(ListElem& elem);                                   // 0x48ec74
    void LoadFromXml(TiXmlNode* node);                              // 0x48ed2c: attributes "name" (lowercased) and "replacement"
    // Looks up a candidate by name, gameplay and visual and returns a copy. With allowReplacement set and
    // a non-replacement list, the candidate is also removed from the list.
    ListElem Find(const char* name, const char* gameplay, const char* visual, bool allowReplacement);  // 0x4905d0

    // Original layout. Offsets are the 32-bit offsets of the original object; there is no vptr.
    std::string m_name;                                             // +0x00 lowercased "name" attribute
    bool m_replacement;                                             // +0x18 "replacement" attribute, default true
    uint8_t pad_19[3];                                              // +0x19 .. +0x1b
    std::vector<ListElem> m_elems;                                  // +0x1c candidates (push_back target of Replace)
    RandomGenerator* m_generator;                                   // +0x28 the owning generator (LoadListRules sets it)
};

}  // namespace rnd
