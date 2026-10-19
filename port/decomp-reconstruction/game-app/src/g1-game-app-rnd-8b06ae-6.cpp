// Batch g1-game-app-rnd-8b06ae-6 (game-app, owner rnd, part 7 of 8): the rule walk and filter functions (Rule::Impl,
// Path::Impl, ForceBlock::Impl), the root placement (RootRule::Impl::Generate), the ListRule and BlockSearch helpers,
// RoomPool lookup and size computation, and the rule XML loaders. Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Status: every function of this part is reconstructed: the rule walk (Rule::Impl::Step with the rnd::gDistributions table,
// OneStep of both Rule::Impl and Path::Impl, the three FilterExits), the root placement, the ListRule and BlockSearch helpers, RoomPool
// lookup and size computation, and the rule XML loaders. The LoadFromXml family returns the original's int as a bool (1 when the rule
// loaded, 0 when a child failed); ListRule::LoadFromXml returns void (the original returns the last sibling lookup, always null).
//
// Deviation at a point the original does not define: Rule::LoadFromXml, for a comma separated "name", restarts its search at the comma
// it just found (the original assigns the comma itself as the next start and never leaves the loop); here the search goes on after the comma.
//
// Other deviations from the original, both at points the original does not define:
//   - Path::Impl::FilterExits with a fixed list index past the end (or below -1) reads outside the element array in the
//     original; here such an index adds nothing.
//   - RoomPool::ComputeSizeOfRules with no element left to grow divides by zero in the original; here it returns 0. The
//     sizes FillSizes produces always leave room for the requested total, so this is not reached.
//
// Shared helpers: lrand48 is dh2::rand48_next() (the POSIX generator, which is the libc import on the other hosts). The
// original's std::random_shuffle over a RandomGenerator is written out as ShuffleWithGenerator (the same loop, without the
// deprecated call), using RandomGenerator::operator().
#include <algorithm>
#ifdef DH2_HOST_RUNNER
namespace dh2host { void recordMissing(const char* kind, const char* name, void* caller); }
#endif
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "core-platform/util.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/Exit.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"
#include "vendor-lua/dh2_rand48.hpp"

// Engine assert level. core-platform/memory.hpp declares it too; it is not included here, as in the other game-app sources.
extern int gAssertLevel;

namespace rnd {

namespace {
#ifdef DH2_HOST_RUNNER
bool RndLogOn() { static int v = -1; if (v < 0) v = std::getenv("DH2_RND_LOG") != nullptr ? 1 : 0; return v == 1; }
#define RNDLOG(...) do { if (RndLogOn()) { char rndbuf[300]; std::snprintf(rndbuf, sizeof rndbuf, __VA_ARGS__); ::dh2host::recordMissing("rnd", rndbuf, nullptr); } } while (0)
#else
#define RNDLOG(...) do {} while (0)
#endif

// Source path printed by the original's ASSERT lines in rndRule.cpp.
constexpr const char kRndRuleCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp";

// A Block side record has the rnd::Exit fields in its first 0x2c bytes, with the same members in the same order, and the
// original passes a side wherever an Exit* is expected. Block::Side is not derived from Exit in the tree, so the record is
// viewed as an Exit through its address.
const Exit* SideAsExit(const Block::Side& side) {
    return reinterpret_cast<const Exit*>(&side);
}

// The name test of Rule::Impl::FilterExits: the block name is longer than five characters and contains "_start". The original
// scans for an underscore followed by the five letters of "start".
bool NameHasStartMarker(const std::string& name) {
    return name.size() > 5 && name.find("_start") != std::string::npos;
}

// The acceptance test of ForceBlock::Impl::FilterExits: any direction (+0x88 == 4), or the exit faces the forced direction (the
// first word of its Direction is the id) and its flags equal the forced flags (+0x8c).
bool AcceptsForcedExit(const ForceBlock& forced, const Exit& exit) {
    return forced.unk_88 == 4 || (forced.unk_88 == exit.m_direction->id && forced.unk_8c == exit.m_flags);
}

// The original's ASSERT in rndRule.cpp for a failed check: level 2 stores through null to crash (abort here), level 1 prints the line.
void ReportRuleCppAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kRndRuleCppPath, line);
    }
}

// The original's std::random_shuffle(first, last, generator): element i (counting from 1) swaps with the element at
// generator(i + 1). The standard call is deprecated, so the same loop is written out here.
template <typename Iterator>
void ShuffleWithGenerator(Iterator first, Iterator last, RandomGenerator& generator) {
    if (first == last) {
        return;
    }
    for (Iterator i = first + 1; i != last; ++i) {
        std::iter_swap(i, first + static_cast<std::ptrdiff_t>(generator(static_cast<unsigned int>(i - first) + 1)));
    }
}

}  // namespace

// 0x48e274 rnd::Rule::GetBlock(char const*) const
// Looks the name up in the generator behind the root rule (RootRule +0x8c, reached through the rule's root at +0x04).
Block* Rule::GetBlock(const char* name) const {
    return m_root->m_generator->GetBlock(name);
}

// 0x48e280 rnd::ListElem::ListElem(rnd::ListElem const&)
// Copies the owner (+0x00), the name (+0x04), the gameplay (+0x1c), the visual (+0x34) and the chance count (+0x4c).
ListElem::ListElem(const ListElem& other)
    : m_owner(other.m_owner),
      m_name(other.m_name),
      m_gameplay(other.m_gameplay),
      m_visual(other.m_visual),
      m_chances(other.m_chances) {}

// 0x48e690 rnd::Rule::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>>&, rnd::ListRule*&)
// Removes the first candidate whose block name contains "_start", then shuffles the candidates with the generator behind the
// rule. The list argument is not read by the original.
void Rule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates, ListRule*& list) {
    (void)list;
    for (auto it = candidates.begin(); it != candidates.end(); ++it) {
        if (NameHasStartMarker(it->first->m_block->m_name)) {
            candidates.erase(it);
            break;
        }
    }
    RandomGenerator& app = *m_rule->GetApp();
    ShuffleWithGenerator(candidates.begin(), candidates.end(), app);
}

// 0x48e8ac rnd::RootRule::Impl::Generate(Array2d<rnd::Tile*>&)
// Places the root tile of the level and returns it, or null. The root rule's list (+0x68) and its index (+0x6c) pick the
// candidates:
//   - no list: the block names of the root rule (m_names, copied and shuffled) are tried in order with a default element;
//   - a list and an index that is -1 or past the end: a copy of the list is shuffled and tried in order;
//   - a list and a valid index: that element alone is tried.
// A candidate is tried when its block is found by name, through PlaceRootTile. The grid is not used here (the original's
// argument is not read; RandomGenerator::Generate keeps the returned tile).
Tile* RootRule::Impl::Generate(Array2d<Tile*>& grid) {
    (void)grid;
    const RootRule& root = *m_rootRule;
    ListRule* list = root.m_list;
    RNDLOG("[rnd] RootRule::Impl::Generate list=%p index=%d names=%zu elems=%zu\n", static_cast<void*>(list), root.m_listIndex, m_names.size(), list ? list->m_elems.size() : 0);
    if (list != nullptr) {
        const std::uint32_t index = static_cast<std::uint32_t>(root.m_listIndex);
        if (root.m_listIndex == -1 || index >= list->m_elems.size()) {
            std::vector<ListElem> elems(list->m_elems);
            ShuffleWithGenerator(elems.begin(), elems.end(), *m_rule->GetApp());
            for (const ListElem& candidate : elems) {
                Block* block = m_rule->GetBlock(candidate.m_name.c_str());
                if (block != nullptr) {
                    if (Tile* placed = PlaceRootTile(block, candidate)) {
                        return placed;
                    }
                }
            }
            return nullptr;
        }
        const ListElem element = list->m_elems[index];
        Block* block = m_rule->GetBlock(element.m_name.c_str());
        RNDLOG("[rnd] RootRule: list element %u '%s' block=%p\n", index, element.m_name.c_str(), static_cast<void*>(block));
        return block != nullptr ? PlaceRootTile(block, element) : nullptr;
    }

    std::vector<const char*> names(m_names);
    ShuffleWithGenerator(names.begin(), names.end(), *m_rule->GetApp());
    for (const char* name : names) {
        Block* block = m_rule->GetBlock(name);
        if (block != nullptr) {
            if (Tile* placed = PlaceRootTile(block, ListElem())) {
                return placed;
            }
        }
    }
    return nullptr;
}

// 0x48ec74 rnd::ListRule::Replace(rnd::ListElem&)
// Only a list whose replacement flag is clear takes elements this way: the element is appended. The owner of the element must
// be this list; the original asserts otherwise (level 2 stores through the null flag, which is abort here; level 1 prints the
// ASSERT line for rndRule.cpp line 127) and appends the element anyway.
void ListRule::Replace(ListElem& elem) {
    if (!m_replacement) {
        if (elem.m_owner != this) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "elem.mOwner == this", kRndRuleCppPath, 127);
            }
        }
        m_elems.push_back(elem);
    }
}

// 0x48ed2c rnd::ListRule::LoadFromXml(TiXmlNode *)
// When the node has an element: the "name" attribute is lowercased in place (ToLowerCase on the attribute text, before the null test) and
// becomes m_name (empty when absent), and "replacement" sets m_replacement: absent gives true, otherwise true only for the text "true".
// Then one ListElem (owner this list) is loaded for each "elem" child (ListElem::LoadFromXml); its block name is checked with
// ValidBlock (ASSERT rndRule.cpp:89 otherwise) and the element is appended. The original returns the last sibling lookup, which is
// always null; the header keeps void.
void ListRule::LoadFromXml(TiXmlNode* node) {
    TiXmlElement* element = node->ToElement();                           // vtable +0x2c
    if (element != nullptr) {
        const char* name = element->Attribute("name");
        if (name != nullptr) {
            LowerCaseRange(const_cast<char*>(name), static_cast<int>(std::strlen(name)), 0, -1);
        }
        m_name = name != nullptr ? name : "";
        const char* replacement = element->Attribute("replacement");
        m_replacement = replacement != nullptr ? std::strcmp(replacement, "true") == 0 : true;
    }
    for (TiXmlNode* child = node->FirstChild("elem"); child != nullptr; child = child->NextSibling("elem")) {
        ListElem elem(this);
        elem.LoadFromXml(child);
        if (!m_generator->ValidBlock(elem.m_name.c_str())) {
            ReportRuleCppAssert("mApp.ValidBlock(lelem.mBlockName.c_str())", 89);
        }
        m_elems.push_back(elem);
    }
}

// 0x48f05c rnd::Path::Impl::AddExit(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>>&, rnd::Exit const*, int)
// Pushes the source exit, paired with a copy of the index-th element of the rule's list, when the source block is 1 x 1 and
// suits the path: a dead end needs a block with one side, and a block with two sides needs either the path's unk_8d flag clear or
// a straight block. Nothing is pushed otherwise.
void Path::Impl::AddExit(std::vector<std::pair<const Exit*, ListElem>>& candidates, const Exit* source, int index) {
    const Exit* chosen = nullptr;
    ListElem element;
    const Block* block = source->m_block;
    if (block->m_blockWidth == 1 && block->m_blockHeight == 1) {
        const int sideCount = block->m_sideCount;
        if (IsDeadEnd()) {
            if (sideCount == 1) {
                element = m_rule->m_list->m_elems[static_cast<std::size_t>(index)];
                chosen = source;
            }
        } else if (sideCount == 2) {
            // The original tests unk_8d first and calls IsStraight only when it is set.
            if (!m_path->unk_8d || block->IsStraight()) {
                element = m_rule->m_list->m_elems[static_cast<std::size_t>(index)];
                chosen = source;
            }
        }
    }
    if (chosen != nullptr) {
        candidates.emplace_back(chosen, element);
    }
}

// 0x48f25c rnd::Path::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*, rnd::ListElem>>&, rnd::ListRule*&)
// The candidates are rebuilt through AddExit: each candidate exit whose block name equals the name of the rule's list element
// (every element when the list index is -1, else only the element at the index) is passed on. With no list at all, no exit
// survives. The filtered set replaces the candidates, and the base FilterExits then removes a "_start" exit and shuffles.
void Path::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates, ListRule*& list) {
    std::vector<std::pair<const Exit*, ListElem>> filtered;
    ListRule* ruleList = m_rule->m_list;
    if (ruleList != nullptr) {
        for (const auto& candidate : candidates) {
            const Exit* exit = candidate.first;
            if (exit == nullptr || exit->m_block == nullptr) {
                continue;
            }
            const std::string& blockName = exit->m_block->m_name;
            const int index = m_rule->m_listIndex;
            if (index == -1) {
                for (std::size_t i = 0; i < ruleList->m_elems.size(); ++i) {
                    if (blockName == ruleList->m_elems[i].m_name) {
                        AddExit(filtered, exit, static_cast<int>(i));
                    }
                }
            } else if (static_cast<std::size_t>(index) < ruleList->m_elems.size() &&
                       blockName == ruleList->m_elems[static_cast<std::size_t>(index)].m_name) {
                AddExit(filtered, exit, index);
            }
        }
    }
    candidates.swap(filtered);
    Rule::Impl::FilterExits(candidates, list);
}

// 0x48f47c rnd::ForceBlock::Impl::FilterExits(std::vector<std::pair<rnd::Exit const*,rnd::ListElem>,std::allocator<std::pair<rnd::Exit const*,rnd::ListElem>>> &,rnd::ListRule *&)
// The list output is set to the force-block's list (+0x68). Candidates whose block name matches are kept, paired with the list
// element they match (with no list: with a default element, for each name in m_names, compared case-insensitively). A candidate is
// accepted when the force-block accepts any direction (+0x88 == 4), or when the exit's direction id is +0x88 and its flags equal +0x8c.
// The filtered set then replaces the candidates and the base FilterExits runs.
void ForceBlock::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& candidates, ListRule*& list) {
    const ForceBlock& forced = *m_forceBlock;
    list = forced.m_list;
    std::vector<std::pair<const Exit*, ListElem>> filtered;
    if (forced.m_list != nullptr) {
        const std::vector<ListElem>& elems = forced.m_list->m_elems;
        const std::uint32_t index = static_cast<std::uint32_t>(forced.m_listIndex);
        const bool hasIndex = index != 0xFFFFFFFFu && index < elems.size();
        for (const auto& candidate : candidates) {
            const Exit* exit = candidate.first;
            if (exit == nullptr || exit->m_block == nullptr) {
                continue;
            }
            const std::string& blockName = exit->m_block->m_name;
            if (hasIndex) {
                const ListElem& element = elems[index];
                if (blockName == element.m_name && AcceptsForcedExit(forced, *exit)) {
                    filtered.emplace_back(exit, element);
                }
            } else {
                for (const ListElem& element : elems) {
                    if (blockName == element.m_name && AcceptsForcedExit(forced, *exit)) {
                        filtered.emplace_back(exit, element);
                    }
                }
            }
        }
    } else {
        for (const auto& candidate : candidates) {
            const Exit* exit = candidate.first;
            if (exit == nullptr || exit->m_block == nullptr) {
                continue;
            }
            for (const char* name : m_names) {
                if (LC_API_STRCASECMP(exit->m_block->m_name.c_str(), name) == 0 && AcceptsForcedExit(forced, *exit)) {
                    filtered.emplace_back(exit, ListElem());
                }
            }
        }
    }
    candidates.swap(filtered);
    Rule::Impl::FilterExits(candidates, list);
}

// 0x48f954 rnd::Rule::Impl::Step(rnd::Tile *,rnd::Exit const*)
// The candidates are the sides of the tile's block other than the exit the step came from, paired with default elements, and
// they are shuffled with the rule's generator. A rule without children, or no candidates, succeeds at once (true).
// Otherwise the rows of gDistributions for (candidate count, child count) are the ways of dealing the candidates out to the child
// rules; they are shuffled, and the first row that works wins. For one row, the k-th pending candidate goes to child rule row[k]
// (NewImpl with this node as parent); a child node whose direction (+0x3c) is set and differs from the candidate exit's direction
// is retried later (the candidate is appended again while the pending count stays below count * (count + 1) / 2, else the row
// fails); any other child node must OneStep (tile, candidate, from) to be accepted. A failed row deletes this node's child nodes
// and the tile's neighbours (Tile::RemoveNeighbors) and goes on to the next row. All rows failing gives false; a row that
// consumes every pending candidate gives true and keeps the child nodes. A (candidate count, child count) beyond the table (more
// than five of either) reads outside it in the original; here such a step fails.
bool Rule::Impl::Step(Tile* tile, const Exit* from) {
    const Block& block = *tile->m_block;
    std::vector<std::pair<const Exit*, ListElem>> candidates;
    for (int i = 0; i < block.m_sideCount; ++i) {
        const Exit* side = SideAsExit(block.m_sides[i]);
        if (side != from) {
            candidates.emplace_back(side, ListElem());
        }
    }
    const int childCount = m_rule->m_childCount;
    const std::size_t candidateCount = candidates.size();
    RandomGenerator& app = *m_rule->GetApp();
    ShuffleWithGenerator(candidates.begin(), candidates.end(), app);
    if (childCount == 0 || candidateCount == 0) {
        return true;
    }
    if (childCount < 0 || childCount > 5 || candidateCount > 5) {
        return false;
    }
    const std::int8_t* const table = gDistributions;
    const std::int8_t* const tableEnd = table + sizeof(gDistributions);
    const std::int8_t* const first = table + 726 * childCount + 4356 * candidateCount;
    if (first[0] < 0) {
        return false;
    }
    std::vector<const std::int8_t*> rows;
    for (const std::int8_t* row = first; row < tableEnd; row += 6) {
        rows.push_back(row);
        if (row + 6 >= tableEnd || row[6] < 0) {
            break;
        }
    }
    ShuffleWithGenerator(rows.begin(), rows.end(), app);
    const std::size_t pendingLimit = (candidateCount + candidateCount * candidateCount) / 2;
    for (const std::int8_t* row : rows) {
        std::vector<std::pair<const Exit*, ListElem>> pending(candidates);
        bool rowWorks = true;
        for (std::size_t k = 0; k < pending.size(); ++k) {
            const Exit* exit = pending[k].first;
            // The k-th byte of the row is the child rule for the k-th candidate. Candidates re-queued past the sixth read the bytes that follow the
            // row in the table, as the original does; a byte outside the table or outside the rule's children fails the row (the original indexes unchecked).
            const std::int8_t* childByte = row + k;
            const int childIndex = childByte < tableEnd ? *childByte : -1;
            Rule::Impl* child = (childIndex >= 0 && childIndex < m_rule->m_childCount) ? m_rule->m_children[childIndex]->NewImpl(this) : nullptr;
            if (child == nullptr) {
                rowWorks = false;                                        // the original dereferences the null node
                break;
            }
            if (child->m_direction != nullptr && child->m_direction->id != exit->m_direction->id) {
                if (pendingLimit <= pending.size()) {
                    rowWorks = false;
                    break;
                }
                pending.emplace_back(exit, ListElem());
                continue;
            }
            if (!child->OneStep(tile, exit, from)) {
                rowWorks = false;
                break;
            }
        }
        if (rowWorks) {
            return true;
        }
        while (m_childCount != 0) {
            --m_childCount;
            Rule::Impl* child = m_children[m_childCount];
            if (child != nullptr) {
                delete child;                                            // the child's destructor may take the node out of this list first
            }
        }
        tile->RemoveNeighbors();
    }
    RNDLOG("[rnd] Step FAILED block=%s candidates=%zu children=%d rows=%zu\n", tile->m_block->m_name.c_str(), candidateCount, childCount, rows.size());
    return false;
}

// 0x48fd64 rnd::Path::Impl::OneStep(rnd::Tile *,rnd::Exit const*,rnd::Exit const*)
// At the depth limit the step goes on from the block's other side through Rule::Impl::Step. Before that limit: the direction opposite
// to the "from" side is found; on the first step of a path that has the don't-go-back flag (unk_8c) it becomes the forced direction
// (unk_48, 4 means none). The candidates are the sides linked to "from": with a list index set (m_listIndex != -1) every one,
// else every one whose block is not the tile's block, remembering (by position) the last one that is. FilterExits (virtual) then
// narrows them and may change the list; when a position was remembered, the elements of that list whose name is the linked block's
// are added for it. A candidate is tried when a forced direction is not in play, or when the block it leads to has no side facing
// the forced direction, or the opposite direction is the forced one. TrySpawn builds its tile; a tile whose block has more than
// one side counts one level (m_depth) and must OneStep on (the other side, the candidate) through the virtual slot; a tile that fails
// is unspawned. The first candidate that works gives 1; none gives 0.
int Path::Impl::OneStep(Tile* tile, const Exit* from, const Exit* to) {
    if (m_depth >= m_limit) {
        const Block& block = *tile->m_block;
        const Exit* other = nullptr;
        if (block.m_sideCount == 2) {
            other = (from == SideAsExit(block.m_sides[0])) ? SideAsExit(block.m_sides[1]) : SideAsExit(block.m_sides[0]);
        }
        return Rule::Impl::Step(tile, other) ? 1 : 0;
    }
    const Block::Side& fromSide = *reinterpret_cast<const Block::Side*>(from);
    const int opposite = DIRECTION_OPPOSITES[fromSide.m_direction->id];
    if (m_depth == 0 && m_path->unk_8c) {
        unk_48 = Direction::sDirections[opposite].id;
    }
    std::vector<std::pair<const Exit*, ListElem>> candidates;
    ListRule* list = m_path->m_list;
    int remembered = -1;
    if (fromSide.unk_28 > 0) {
        for (int k = 0; k < fromSide.unk_28; ++k) {
            const Exit* link = SideAsExit(*fromSide.m_links[k]);
            if (m_path->m_listIndex != -1) {
                candidates.emplace_back(link, ListElem());
            } else if (link->m_block->m_name == tile->m_block->m_name) {
                remembered = k;
            } else {
                candidates.emplace_back(link, ListElem());
            }
        }
        FilterExits(candidates, list);
        if (remembered != -1 && list != nullptr) {
            const Exit* link = SideAsExit(*fromSide.m_links[remembered]);
            for (std::size_t i = 0; i < list->m_elems.size(); ++i) {
                if (list->m_elems[i].m_name == link->m_block->m_name) {
                    candidates.emplace_back(link, list->m_elems[i]);
                }
            }
        }
    } else {
        FilterExits(candidates, list);
    }
    for (auto& candidate : candidates) {
        const Exit* link = candidate.first;
        if (unk_48 != 4) {
            const Block& linkBlock = *link->m_block;
            bool facesForced = false;
            for (int s = 0; s < linkBlock.m_sideCount; ++s) {
                if (linkBlock.m_sides[s].m_direction->id == unk_48) {
                    facesForced = true;
                    break;
                }
            }
            if (facesForced && Direction::sDirections[opposite].id != unk_48) {
                continue;
            }
        }
        ListElem elem(candidate.second);
        Tile* spawned = tile->TrySpawn(to, from, link, elem);
        if (spawned == nullptr) {
            continue;
        }
        if (spawned->m_block->m_sideCount != 1) {
            ++m_depth;
            const Block& spawnedBlock = *spawned->m_block;
            const Exit* other = nullptr;
            if (spawnedBlock.m_sideCount == 2) {
                other = (link == SideAsExit(spawnedBlock.m_sides[0])) ? SideAsExit(spawnedBlock.m_sides[1]) : SideAsExit(spawnedBlock.m_sides[0]);
            }
            if (!OneStep(spawned, other, link)) {
                --m_depth;
                spawned->Unspawn();
                continue;
            }
        }
        return 1;
    }
    RNDLOG("[rnd] Path::OneStep FAILED depth=%d limit=%d candidates=%zu from-block=%s dir=%d forced=%d\n", m_depth, m_limit, candidates.size(), tile->m_block->m_name.c_str(), fromSide.m_direction->id, unk_48);
    return 0;
}

// 0x490304 rnd::Rule::Impl::OneStep(rnd::Tile *,rnd::Exit const*,rnd::Exit const*)
// The candidates are the sides linked to "from" (its link table), each with a default element. The virtual FilterExits narrows
// them (the list output starts null). Each candidate is built with Tile::TrySpawn (the tile, "to", "from", the candidate, its
// element); the first tile that the virtual Step accepts (this node, the new tile, the candidate) gives 1, a tile that fails is
// unspawned. None gives 0. (The original also formats "[%d]" of the rule's list index into a local buffer when no candidate is left;
// nothing reads it.)
int Rule::Impl::OneStep(Tile* tile, const Exit* from, const Exit* to) {
    const Block::Side& fromSide = *reinterpret_cast<const Block::Side*>(from);
    std::vector<std::pair<const Exit*, ListElem>> candidates;
    candidates.reserve(static_cast<std::size_t>(fromSide.unk_28 > 0 ? fromSide.unk_28 : 0));
    for (int k = 0; k < fromSide.unk_28; ++k) {
        candidates.emplace_back(SideAsExit(*fromSide.m_links[k]), ListElem());
    }
    ListRule* list = nullptr;
    FilterExits(candidates, list);
    for (auto& candidate : candidates) {
        const Exit* link = candidate.first;
        ListElem elem(candidate.second);
        Tile* spawned = tile->TrySpawn(to, from, link, elem);
        if (spawned != nullptr) {
            if (Step(spawned, link)) {
                return 1;
            }
            spawned->Unspawn();
        }
    }
    return 0;
}

// 0x490520 rnd::BlockSearch::BlockSearch(rnd::BlockSearch const&)
// Copies the name (+0x00), the gameplay (+0x18) and the visual (+0x30).
BlockSearch::BlockSearch(const BlockSearch& other)
    : m_name(other.m_name), m_gameplay(other.m_gameplay), m_visual(other.m_visual) {}

// 0x4905d0 rnd::ListRule::Find(char const*, char const*, char const*, bool)
// Returns a copy of the first element whose name, gameplay and visual match the arguments, or a default element when none does.
// With allowReplacement set and a list whose replacement flag is clear, the found element is also removed from the list.
ListElem ListRule::Find(const char* name, const char* gameplay, const char* visual, bool allowReplacement) {
    ListElem found;
    const BlockSearch search(name, gameplay, visual);
    const auto it = std::find_if(m_elems.begin(), m_elems.end(), search);
    if (it != m_elems.end()) {
        found = *it;
        if (allowReplacement && !m_replacement) {
            m_elems.erase(it);
        }
    }
    return found;
}

// 0x4906bc rnd::RoomPool::Find(std::string)
// Hashes the key with the pool's generator and looks the hash up with RoomPool::Find(unsigned long) (0x48bc20).
RPElem* RoomPool::Find(std::string key) {
    const unsigned int hash = m_generator->Hash(reinterpret_cast<unsigned char*>(key.data()));
    return Find(static_cast<unsigned long>(hash));
}

// 0x490904 rnd::RoomPool::ComputeSizeOfRules(void)
// Chooses the size of the pool's rules. Each element has a size range: unk_0c is the lowest and unk_10 the highest, and unk_14 is
// the current size (FillSizes sets it to the lowest). The pool's size m_size must lie between the sums of the lowest and of the
// highest sizes, or the call returns 0. The remaining amount is spread one unit at a time over the elements that can still
// grow, each chosen at random (dh2::rand48_next, the lrand48 of the original); an element that reaches its highest size leaves the
// set. Returns 1 when the sizes are set.
int RoomPool::ComputeSizeOfRules() {
    int minSum = 0;
    int maxSum = 0;
    for (const RPElem& elem : m_elems) {
        maxSum += elem.unk_10;
        minSum += elem.unk_0c;
    }
    if (m_size < minSum || m_size > maxSum) {
        return 0;
    }
    int remaining = m_size - minSum;
    if (remaining <= 0) {
        return 1;
    }

    // Indices of the elements whose current size is below their highest size.
    std::vector<std::size_t> open;
    for (std::size_t i = 0; i < m_elems.size(); ++i) {
        if (m_elems[i].unk_14 < m_elems[i].unk_10) {
            open.push_back(i);
        }
    }
    while (remaining > 0) {
        for (;;) {
            if (open.empty()) {
                // The original divides by zero here. The sizes FillSizes sets always leave room for the total, so this is not reached.
                return 0;
            }
            const std::size_t pick = static_cast<std::size_t>(dh2::rand48_next()) % open.size();
            RPElem& elem = m_elems[open[pick]];
            ++elem.unk_14;
            if (elem.unk_14 == elem.unk_10) {
                open.erase(open.begin() + static_cast<std::ptrdiff_t>(pick));
                --remaining;
                break;
            }
            if (--remaining == 0) {
                return 1;
            }
        }
    }
    return 1;
}

// 0x490bdc rnd::Rule::LoadFromXml(TiXmlNode *)
// A null node or an element without a "name" attribute fails. The name is either "#list" / "#list[N]" (m_list from GetList; N, when
// given, is m_listIndex, else -1; the list is checked with ValidList, ASSERT rndRule.cpp:322 or :315) or a comma separated list of
// block names, each pushed on m_blockNames (checked with ValidBlock, ASSERT rndRule.cpp:333; the last one, after the final comma,
// :337). The "exit" attribute is m_exit and "id" is hashed into m_id. Every child node is turned into a rule with NewRule, stored in
// m_children and loaded; any failing child makes the whole load fail (all children are still loaded). With an id, every room pool of
// the generator that has the id gets its element sized (RPElem::FillSizes with unk_80, unk_84). Returns true on success.
bool Rule::LoadFromXml(TiXmlNode* node) {
    if (node == nullptr) {
        return false;
    }
    const char* nameAttribute = node->ToElement()->Attribute("name");
    if (nameAttribute == nullptr) {
        return false;
    }
    const std::string name(nameAttribute);
    RandomGenerator& generator = *m_root->m_generator;
    if (name[0] == '#') {
        const std::size_t open = name.find('[');
        if (open == std::string::npos) {
            m_listIndex = -1;
            const std::string listName = name.substr(1);
            if (!generator.ValidList(listName.c_str())) {
                ReportRuleCppAssert("mRoot.mApp.ValidList(listName.substr(1).c_str())", 322);
            }
            m_list = GetApp()->GetList(listName.c_str());
        } else {
            const std::size_t close = name.find(']');
            const int closeIndex = close == std::string::npos ? -1 : static_cast<int>(close);
            m_listIndex = std::atoi(name.substr(open + 1, static_cast<std::size_t>(1 - static_cast<int>(open) + closeIndex)).c_str());
            const std::string listName = name.substr(1, open - 1);
            if (!generator.ValidList(listName.c_str())) {
                ReportRuleCppAssert("mRoot.mApp.ValidList(listName.substr(1, bracket - 1).c_str())", 315);
            }
            m_list = GetApp()->GetList(listName.c_str());
        }
    } else {
        const char* cursor = nameAttribute;
        for (const char* comma = std::strchr(cursor, ','); comma != nullptr; comma = std::strchr(cursor, ',')) {
            const std::string blockName(cursor, comma);
            if (!generator.ValidBlock(blockName.c_str())) {
                ReportRuleCppAssert("mRoot.mApp.ValidBlock(s.c_str())", 333);
            }
            m_blockNames.push_back(blockName);
            cursor = comma + 1;                                          // the original restarts at the comma itself and never ends
        }
        if (!generator.ValidBlock(cursor)) {
            ReportRuleCppAssert("mRoot.mApp.ValidBlock(startBlocks)", 337);
        }
        m_blockNames.push_back(std::string(cursor));
    }
    const char* exit = node->ToElement()->Attribute("exit");
    if (exit != nullptr) {
        m_exit = exit;
    }
    const char* id = node->ToElement()->Attribute("id");
    if (id != nullptr) {
        std::string idText(id);
        m_id = GetApp()->Hash(reinterpret_cast<unsigned char*>(&idText[0]));
    }
    TiXmlNode* child = node->FirstChild();
    if (child != nullptr) {
        bool allLoaded = true;
        do {
            const int slot = m_childCount;
            Rule* rule = NewRule(child);
            m_children[slot] = rule;
            m_childCount = slot + 1;
            allLoaded = rule->LoadFromXml(child) && allLoaded;
            child = child->NextSibling();
        } while (child != nullptr);
        if (!allLoaded) {
            return false;
        }
    }
    if (m_id != 0) {
        for (std::size_t i = 0; i < GetApp()->m_roomPools.size(); ++i) {
            if (RPElem* elem = GetApp()->m_roomPools[i]->Find(m_id)) {
                elem->FillSizes(unk_80, unk_84);
            }
        }
    }
    return true;
}

// 0x4912d0 rnd::ForceBlock::LoadFromXml(TiXmlNode *)
// The original reads the "connectFrom" attribute of the node and drops the result, which has no effect, then runs Rule::LoadFromXml.
// The read is omitted here.
bool ForceBlock::LoadFromXml(TiXmlNode* node) {
    return Rule::LoadFromXml(node);
}

// 0x49130c rnd::Path::LoadFromXml(TiXmlNode *)
// A null node fails. "dontGoBack" (QueryIntAttribute) sets the flag unk_8c to 1 when non-zero (0 otherwise) and is left alone when the
// attribute is absent. "length" is one number (sets unk_80 and unk_84) or "a,b" (unk_80 = a, unk_84 = b). Then Rule::LoadFromXml.
bool Path::LoadFromXml(TiXmlNode* node) {
    if (node == nullptr) {
        return false;
    }
    int dontGoBack = 0;
    if (node->ToElement()->QueryIntAttribute("dontGoBack", &dontGoBack) == TIXML_SUCCESS) {
        unk_8c = dontGoBack != 0;
    }
    const char* length = node->ToElement()->Attribute("length");
    if (length != nullptr) {
        unk_80 = std::atoi(length);
        unk_84 = unk_80;
        const char* comma = std::strchr(length, ',');
        if (comma != nullptr) {
            unk_84 = std::atoi(comma + 1);
        }
    }
    return Rule::LoadFromXml(node);
}

// 0x4913cc rnd::RootRule::LoadFromXml(TiXmlNode *)
// Thunk: forwards to rnd::Rule::LoadFromXml (0x490bdc).
bool RootRule::LoadFromXml(TiXmlNode* node) {
    return Rule::LoadFromXml(node);
}

}  // namespace rnd
