// rnd::ListElem: one weighted candidate in a ListRule. Each element names a block (name, gameplay,
// visual) and carries its chance weight (default 100). Original 32-bit size 0x50 (80).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x48e080, 0x48e128, 0x48e280; copy
// assignment 0x48c0bc; LoadFromXml 0x48c51c).
#pragma once

#include <cstdint>
#include <string>

class TiXmlNode;
namespace rnd {
class ListRule;
}  // namespace rnd

namespace rnd {

class ListElem {
public:
    ListElem();                                                     // 0x48e080 (default: owner null, chances 100)
    explicit ListElem(ListRule* owner);                             // 0x48e128
    ListElem(const ListElem& other);                                // 0x48e280
    ~ListElem();                                                    // 0x4881d0

    ListElem& operator=(const ListElem& other);                     // 0x48c0bc

    void LoadFromXml(TiXmlNode* node);                              // 0x48c51c: attributes name, gameplay, visual, chances

    // Original layout. Offsets are the 32-bit offsets of the original object.
    ListRule* m_owner;                                              // +0x00 set by the ListRule that holds this element
    std::string m_name;                                             // +0x04 "name" attribute
    std::string m_gameplay;                                         // +0x1c "gameplay" attribute
    std::string m_visual;                                           // +0x34 "visual" attribute
    int32_t m_chances;                                              // +0x4c "chances" attribute, default 100
};

}  // namespace rnd
