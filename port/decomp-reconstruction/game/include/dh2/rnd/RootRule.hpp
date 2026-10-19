// rnd::RootRule: the rule at the top of a random-level generation. It owns the generator back-pointer
// and generates the level through its runtime node. RootRule::Impl is that node, nested here.
// Original 32-bit size of RootRule: 0x90 (144). RootRule::Impl: 0x48 (72).
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x48dff8 / 0x48e03c, dtors 0x48d6a0 /
// 0x48d6dc / 0x48d6f8, NewImpl 0x48d17c, Impl ctors 0x48ce48 / 0x48d0b4, Impl dtors 0x48d3cc /
// 0x48d4d8, PlaceRootTile 0x48c374, Generate 0x48e8ac, Impl::FilterExits 0x48bd04, WriteDebuggingInfo
// 0x48bd08, Unload 0x48bd00, LoadFromXml 0x4913cc).
#pragma once

#include <cstdint>
#include <utility>
#include <vector>

#include "core-platform/array2d.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Rule.hpp"

namespace rnd {

class RandomGenerator;
class Block;
class Tile;
class RootRule;

class RootRule : public Rule {
public:
    class Impl;

    explicit RootRule(RandomGenerator& generator);                  // 0x48dff8 / 0x48e03c
    ~RootRule() override;                                           // 0x48d6a0 / 0x48d6dc / 0x48d6f8

    Rule::Impl* NewImpl(Rule::Impl* parent) const override;         // slot 0x08: 0x48d17c
    bool LoadFromXml(TiXmlNode* node) override;                     // slot 0x0c: 0x4913cc
    void Unload() override;                                         // slot 0x10: 0x48bd00

    // Original layout. Rule occupies +0x00 .. +0x87.
    uint8_t pad_88[0x04];                                           // +0x88 not written by the ctor
    RandomGenerator* m_generator;                                   // +0x8c the generator (RootRule ctor argument)
};

// Runtime node of a RootRule. Places the root tile and generates the level.
class RootRule::Impl : public Rule::Impl {
public:
    Impl(const RootRule& root);                                     // 0x48ce48 / 0x48d0b4
    ~Impl() override;                                               // 0x48d3cc / 0x48d4d8

    void FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates,
                     ListRule*& list) override;                     // 0x48bd04
    Tile* PlaceRootTile(Block* block, ListElem elem);               // 0x48c374 (NewRoot, PlaceTile at (0, 0), then Step)
    Tile* Generate(Array2d<Tile*>& grid);                           // 0x48e8ac (returns the root tile; RandomGenerator::Generate stores it)
    void WriteDebuggingInfo();                                      // 0x48bd08

    // Original layout. Rule::Impl occupies +0x00 .. +0x43.
    const RootRule* m_rootRule;                                     // +0x44 the RootRule this node was built from
};

}  // namespace rnd
