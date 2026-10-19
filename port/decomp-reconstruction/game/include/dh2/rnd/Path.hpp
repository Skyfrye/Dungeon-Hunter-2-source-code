// rnd::Path: a rule that grows a chain of tiles one exit at a time. Its runtime node, Path::Impl,
// picks a size for the chain and adds exits that pass a size gate (see FilterExits and AddExit).
// Original 32-bit size 0x90 (144), from the operator new(0x90) in NewRule.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x48ddf8 / 0x48dfac, dtors 0x48d604 /
// 0x48d770, NewImpl 0x48c210, LoadFromXml 0x49130c, Impl ctors 0x48c130 / 0x48c23c, Impl dtors
// 0x48d400 / 0x48d49c, IsDeadEnd 0x48bd0c, AddExit 0x48f05c, FilterExits 0x48f25c, OneStep 0x48fd64).
#pragma once

#include <cstdint>
#include <utility>
#include <vector>

#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Rule.hpp"

namespace rnd {

class RootRule;
class Exit;

class Path : public Rule {
public:
    class Impl;

    Path(RootRule& root, Rule* parent);                             // 0x48ddf8 / 0x48dfac
    ~Path() override;                                               // 0x48d604 / 0x48d770

    Rule::Impl* NewImpl(Rule::Impl* parent) const override;         // slot 0x08: 0x48c210
    bool LoadFromXml(TiXmlNode* node) override;                     // slot 0x0c: 0x49130c

    // Original layout. Rule occupies +0x00 .. +0x87.
    int32_t unk_88;                                                 // +0x88 set to 4 by the ctor
    bool unk_8c;                                                    // +0x8c set to 1 by the ctor; Path::Impl::OneStep tests it
    bool unk_8d;                                                    // +0x8d set to 0 by the ctor; Path::Impl::AddExit tests it
    uint8_t pad_8e[0x02];                                           // +0x8e .. +0x8f
};

// Runtime node of a Path. Exits are kept only when the destination block passes the size gate.
// Path::Impl is 0x4c bytes: Rule::Impl (0x44) plus the source path and one int.
class Path::Impl : public Rule::Impl {
public:
    Impl(const Path& path, Rule::Impl* parent);                     // 0x48c130 / 0x48c23c
    ~Impl() override;                                               // 0x48d400 / 0x48d49c

    bool IsDeadEnd() const;                                         // 0x48bd0c (m_depth + 1 == m_limit and no child rules)
    void AddExit(std::vector<std::pair<const Exit*, ListElem>>& candidates,
                 const Exit* exit, int index);                      // 0x48f05c (index selects an element of the source list)
    void FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates,
                     ListRule*& list) override;                     // 0x48f25c
    int OneStep(Tile* tile, const Exit* from, const Exit* to) override;  // 0x48fd64

    // Original layout. Rule::Impl occupies +0x00 .. +0x43.
    const Path* m_path;                                             // +0x44 the Path this node was built from
    int32_t unk_48;                                                 // +0x48 set to 4 by the ctor on every path; OneStep stores a packed direction word
};

}  // namespace rnd
