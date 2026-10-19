// rnd::Rule: a node of a random-level rule tree. Holds the root rule, its parent, up to 16 child rules,
// the "exit" direction name, the list it draws from ("#name" attribute), the room-pool id and the block
// names of its "name" attribute. Rule::Impl is the per-generation runtime node, nested here.
// Original 32-bit size of Rule: 0x88 (136). Rule::Impl: 0x44 (68).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x48dc08 / 0x48dc90, dtors 0x48d58c /
// 0x48d7e8 / 0x48d860, Impl ctor 0x48bd60 / 0x48bebc, Impl dtors 0x48d1a0 / 0x48d2a8 / 0x48d2c4,
// GetRootRule 0x48bbf8, GetApp 0x48bcf4, GetBlock 0x48e274, NewRule 0x48de44, Unload 0x48bc94,
// LoadFromXml 0x490bdc, Impl::GetRootRule 0x48bbec, Impl::Step 0x48f954, Impl::OneStep 0x490304,
// Impl::FilterExits 0x48e690).
#pragma once

#include <cstdint>
#include <string>
#include <utility>
#include <vector>

#include "dh2/rnd/ListElem.hpp"

class TiXmlNode;

namespace rnd {

class RootRule;
class RandomGenerator;
class Block;
class Direction;
class Exit;
class Tile;
class ListRule;

class Rule {
public:
    class Impl;

    Rule(RootRule& root, Rule* parent);                             // 0x48dc08 / 0x48dc90
    virtual ~Rule();                                                // 0x48d58c / 0x48d7e8 (vtable slots 0x00, 0x04)

    // Vtable slots 0x08..0x14, in order. Slot 0x08 is pure: each rule kind builds its runtime node.
    virtual Impl* NewImpl(Impl* parent) const = 0;                  // slot 0x08
    virtual bool LoadFromXml(TiXmlNode* node);                      // slot 0x0c: 0x490bdc
    virtual void Unload();                                          // slot 0x10: 0x48bc94 (deletes the child rules)
    virtual RootRule* GetRootRule();                                // slot 0x14: 0x48bbf8

    RandomGenerator* GetApp() const;                                // 0x48bcf4 (the generator behind the root rule, RootRule +0x8c)
    Block* GetBlock(const char* name) const;                        // 0x48e274
    Rule* NewRule(TiXmlNode* node);                                 // 0x48de44 (instance method: builds the child rule for the tag)

    // Original layout. Offsets are the 32-bit offsets of the original object; the vptr at +0x00 is implicit.
    RootRule* m_root;                                               // +0x04 the root rule (the RootRule itself for RootRule)
    Rule* m_parent;                                                 // +0x08
    int32_t m_childCount;                                           // +0x0c number of entries in m_children
    Rule* m_children[16];                                           // +0x10 .. +0x4f child rules (Unload deletes them)
    std::string m_exit;                                             // +0x50 "exit" attribute: north, east, south or west
    ListRule* m_list;                                               // +0x68 list named by a "#name" attribute (RandomGenerator::GetList)
    int32_t m_listIndex;                                            // +0x6c N of a "#name[N]" attribute, -1 when absent
    std::vector<std::string> m_blockNames;                          // +0x70 block names from the "name" attribute (comma separated)
    uint32_t m_id;                                                  // +0x7c Hash of the "id" attribute (RoomPool key), 0 when absent
    int32_t unk_80;                                                 // +0x80 set to 1 by the ctor; first size given to RPElem::FillSizes
    int32_t unk_84;                                                 // +0x84 set to 1 by the ctor; second size given to RPElem::FillSizes
};

// Per-generation node of a Rule. Holds the source rule, the parent node, the child nodes and the
// block names and direction the source rule was loaded with.
class Rule::Impl {
public:
    Impl(const Rule& rule, Impl* parent);                           // 0x48bd60 / 0x48bebc
    virtual ~Impl();                                                // 0x48d1a0 / 0x48d2a8 / 0x48d2c4 (vtable slots 0x00, 0x04)

    // Vtable slots 0x08..0x14, in order.
    virtual void FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates,
                             ListRule*& list);                      // slot 0x08: 0x48e690
    virtual int OneStep(Tile* tile, const Exit* from, const Exit* to);  // slot 0x0c: 0x490304
    virtual bool Step(Tile* tile, const Exit* from);                // slot 0x10: 0x48f954 (skips the exit it came from)
    virtual RootRule* GetRootRule();                                // slot 0x14: 0x48bbec

    // Original layout. Offsets are the 32-bit offsets of the original object; the vptr at +0x00 is implicit.
    Rule* m_rule;                                                   // +0x04 the source rule
    Impl* m_parent;                                                 // +0x08
    int32_t m_childCount;                                           // +0x0c number of child nodes
    Impl* m_children[6];                                            // +0x10 .. +0x27 child-node slots (count at +0x0c); six fit before m_depth
    int32_t m_depth;                                                // +0x28 zeroed by the ctor (IsDeadEnd compares it with m_limit)
    int32_t m_limit;                                                // +0x2c set to 1 by the ctor; Path::Impl sets its chosen size
    std::vector<const char*> m_names;                               // +0x30 c_str of each block name of the source rule
    const Direction* m_direction;                                   // +0x3c set from the exit name: north, east, south or west
    int32_t unk_40;                                                 // +0x40 zeroed by the ctor
};

}  // namespace rnd
