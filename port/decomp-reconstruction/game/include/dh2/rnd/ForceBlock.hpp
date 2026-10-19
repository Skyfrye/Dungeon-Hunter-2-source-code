// rnd::ForceBlock: a rule that forces one named block onto the next exit. Adds one int after the Rule
// base and one int that Impl::FilterExits reads (+0x8c). Original 32-bit size 0x90 (144), from the
// operator new(0x90) in NewRule.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x48dd80 / 0x48ddbc, dtors 0x48d638 /
// 0x48d734, NewImpl 0x48cfcc, LoadFromXml 0x4912d0, Impl ctors 0x48cf10 / 0x48cff8, Impl dtors 0x48d434 /
// 0x48d550, Impl::FilterExits 0x48f47c).
#pragma once

#include <cstdint>
#include <utility>
#include <vector>

#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Rule.hpp"

namespace rnd {

class RootRule;

class ForceBlock : public Rule {
public:
    class Impl;

    ForceBlock(RootRule& root, Rule* parent);                       // 0x48dd80 / 0x48ddbc
    ~ForceBlock() override;                                         // 0x48d638 / 0x48d734

    Rule::Impl* NewImpl(Rule::Impl* parent) const override;         // slot 0x08: 0x48cfcc
    bool LoadFromXml(TiXmlNode* node) override;                     // slot 0x0c: 0x4912d0 (reads "connectFrom", then Rule::LoadFromXml)

    // Original layout. Rule occupies +0x00 .. +0x87.
    int32_t unk_88;                                                 // +0x88 set to 4 by the ctor
    int32_t unk_8c;                                                 // +0x8c compared with the exit's flags by Impl::FilterExits; no writer recovered
};

// Runtime node of a ForceBlock. Rule::Impl (0x44) plus the source rule pointer; 0x48 bytes.
class ForceBlock::Impl : public Rule::Impl {
public:
    Impl(const ForceBlock& rule, Rule::Impl* parent);               // 0x48cf10 / 0x48cff8
    ~Impl() override;                                               // 0x48d434 / 0x48d550

    void FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates,
                     ListRule*& list) override;                     // 0x48f47c

    // Original layout. Rule::Impl occupies +0x00 .. +0x43.
    const ForceBlock* m_forceBlock;                                 // +0x44 the ForceBlock this node was built from
};

}  // namespace rnd
