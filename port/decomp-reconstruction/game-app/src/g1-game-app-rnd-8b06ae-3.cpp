// Batch g1-game-app-rnd-8b06ae-3 (rnd, part 4 of 8): the Rule::Impl, EndPath::Impl, Path::Impl, RootRule::Impl and
// ForceBlock::Impl constructors and their NewImpl factories, RootRule::Impl::PlaceRootTile, ListElem::operator=,
// RoomPool::Find(unsigned char*), BlockSearch::operator(), and the three XML loaders RPElem, ListElem and RoomPool.
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Duplicate addresses: each C1/C2 pair has one identical body, written once and listed under both addresses:
//   Rule::Impl::Impl           0x48bd60, 0x48bebc
//   EndPath::Impl::Impl        0x48c018, 0x48c080
//   Path::Impl::Impl           0x48c130, 0x48c23c
//   RootRule::Impl::Impl       0x48ce48, 0x48d0b4
//   ForceBlock::Impl::Impl     0x48cf10, 0x48cff8
//
// The derived constructors (EndPath, Path, ForceBlock) write their own fields after the Rule::Impl base, which links the node into its
// parent and picks the direction from the exit name. The RootRule::Impl constructor passes no parent, so the base's link and direction
// store are not reached from it.
#include <cstddef>
#include <cstdlib>
#include <cstring>
#include <string>
#include "dh2/rnd/Direction.hpp"
#include "tinyxml.h"
#include <cstdint>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "dh2/rnd/Tile.hpp"

namespace rnd {

// 0x48bd60 rnd::Rule::Impl::Impl(rnd::Rule const&,rnd::Rule::Impl*)
// 0x48bebc rnd::Rule::Impl::Impl(rnd::Rule const&,rnd::Rule::Impl*)  (C2 variant; same body)
// The fields are set (limit 1, depth 0, no direction). A node with a parent is linked into the parent's child slots and the parent's
// count rises by one (guarded at six slots: the original writes slot +0x10 + 4 * count unchecked, which runs past the six slots into
// m_depth from the seventh child on, and this port does not reproduce that). A rule with an exit name gives the node the matching
// sDirections entry ("north", "east", "south", "west"); any other name leaves the direction null.
Rule::Impl::Impl(const Rule& rule, Impl* parent)
    : m_rule(const_cast<Rule*>(&rule)),  // the original keeps the rule pointer as it was passed; Impl does not write through it
      m_parent(parent),
      m_childCount(0),
      m_depth(0),
      m_limit(1),
      m_direction(nullptr),
      unk_40(0) {
    if (parent == nullptr) {
        return;
    }
    if (parent->m_childCount < 6) {
        parent->m_children[parent->m_childCount] = this;
        ++parent->m_childCount;
    }
    if (m_rule->m_exit.empty()) {
        return;
    }
    for (int i = 0; i < 4; ++i) {
        if (m_rule->m_exit == Direction::sDirections[i].name) {
            m_direction = &Direction::sDirections[i];
            break;
        }
    }
}

// 0x48c018 rnd::EndPath::Impl::Impl(rnd::EndPath const&,rnd::Rule::Impl*)
// 0x48c080 rnd::EndPath::Impl::Impl(rnd::EndPath const&,rnd::Rule::Impl*)  (C2 variant; same body)
// The base is built first , then m_path is set. The vtable store is implicit.
EndPath::Impl::Impl(const EndPath& path, Rule::Impl* parent) : Rule::Impl(path, parent), m_path(&path) {}

// 0x48c054 rnd::EndPath::NewImpl(rnd::Rule::Impl*) const
// The original allocates 0x48 bytes with CustomAlloc and constructs the node in place. sizeof is used here, since the
// build is 64-bit.
Rule::Impl* EndPath::NewImpl(Rule::Impl* parent) const {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(EndPath::Impl)));
    return new (memory) EndPath::Impl(*this, parent);
}

// 0x48c0bc rnd::ListElem::operator=(rnd::ListElem const&)
// Copies the owner, the three strings (name, gameplay, visual) and the chance count. The original skips the copy of a
// string when the two objects are the same; std::string self-assignment is a no-op, so the result is the same.
ListElem& ListElem::operator=(const ListElem& other) {
    m_owner = other.m_owner;        // +0x00
    m_name = other.m_name;          // +0x04
    m_gameplay = other.m_gameplay;  // +0x1c
    m_visual = other.m_visual;      // +0x34
    m_chances = other.m_chances;    // +0x4c
    return *this;
}

// 0x48c130 rnd::Path::Impl::Impl(rnd::Path const&,rnd::Rule::Impl*)
// 0x48c23c rnd::Path::Impl::Impl(rnd::Path const&,rnd::Rule::Impl*)  (C2 variant; same body)
// The chosen size goes in m_limit (+0x2c) and unk_48 (+0x48) is set to the constant 4 on every path. When the source
// rule has an id (m_id, +0x7c), the size is the unk_14 (+0x14) of the first room pool, in pool order, that holds the id; no
// pool holds it, the size stays 1. Otherwise the size is drawn with GetInt between the path's unk_80 and unk_84, the first
// and second sizes that Path's FillSizes call stored on the Rule.
Path::Impl::Impl(const Path& path, Rule::Impl* parent) : Rule::Impl(path, parent), m_path(&path) {
    if (m_rule->m_id != 0) {
        for (std::size_t i = 0;; ++i) {
            RandomGenerator* app = m_rule->GetApp();
            if (i >= app->m_roomPools.size()) {
                unk_48 = 4;
                return;
            }
            RPElem* elem = app->m_roomPools[i]->Find(m_rule->m_id);
            if (elem != nullptr) {
                m_limit = elem->unk_14;
                unk_48 = 4;
                return;
            }
        }
    }
    m_limit = m_rule->GetApp()->GetInt(path.unk_80, path.unk_84);
    unk_48 = 4;
}

// 0x48c210 rnd::Path::NewImpl(rnd::Rule::Impl*) const
// The original allocates 0x4c bytes with CustomAlloc and constructs the node in place. sizeof is used here.
Rule::Impl* Path::NewImpl(Rule::Impl* parent) const {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(Path::Impl)));
    return new (memory) Path::Impl(*this, parent);
}

// 0x48c374 rnd::RootRule::Impl::PlaceRootTile(rnd::Block*,rnd::ListElem)
// Makes the root tile in the rule's generator, places it at (0, 0) with height 0, and steps it through this node (vtable
// slot 0x10, Step with no source exit). The debugging dump runs either way. A failed step removes the tile again and
// returns null.
Tile* RootRule::Impl::PlaceRootTile(Block* block, ListElem elem) {
    Tile* root = Tile::NewRoot(*m_rule->GetApp(), *block, elem);
    root->PlaceTile(0, 0, 0.0f);
    const bool stepped = Step(root, nullptr);
    WriteDebuggingInfo();
    if (stepped) {
        return root;
    }
    root->Unspawn();
    return nullptr;
}

// 0x48c3f8 rnd::RoomPool::Find(unsigned char*)
// Hashes the key with the pool's generator (m_generator, +0x10) and finds the element for that hash.
RPElem* RoomPool::Find(unsigned char* key) {
    return Find(static_cast<unsigned long>(m_generator->Hash(key)));
}

// 0x48c48c rnd::RPElem::LoadFromXml(TiXmlNode *)
// With an element and an owning pool: "id" (when present) is hashed with the pool's generator into m_id, and "recursive" is true only
// for the text "true" (false when absent).
void RPElem::LoadFromXml(TiXmlNode* node) {
    TiXmlElement* element = node->ToElement();                           // vtable +0x2c
    if (element != nullptr && m_pool != nullptr) {
        const char* id = element->Attribute("id");
        if (id != nullptr) {
            std::string idText(id);
            m_id = m_pool->m_generator->Hash(reinterpret_cast<unsigned char*>(&idText[0]));
        }
        const char* recursive = element->Attribute("recursive");
        m_recursive = recursive != nullptr && std::strcmp(recursive, "true") == 0;
    }
}

// 0x48c51c rnd::ListElem::LoadFromXml(TiXmlNode *)
// With an element: "name", "gameplay" and "visual" go to the three strings (empty when absent), and "chances" to m_chances (100 when the
// attribute is absent or is not an integer).
void ListElem::LoadFromXml(TiXmlNode* node) {
    TiXmlElement* element = node->ToElement();                           // vtable +0x2c
    if (element == nullptr) {
        return;
    }
    const char* name = element->Attribute("name");
    m_name = name != nullptr ? name : "";
    const char* gameplay = element->Attribute("gameplay");
    m_gameplay = gameplay != nullptr ? gameplay : "";
    const char* visual = element->Attribute("visual");
    m_visual = visual != nullptr ? visual : "";
    int chances = 0;
    if (element->QueryIntAttribute("chances", &chances) == TIXML_SUCCESS) {
        m_chances = chances;
    } else {
        m_chances = 100;
    }
}

// 0x48c638 rnd::BlockSearch::operator()(rnd::ListElem&) const
// True when the element's name, gameplay and visual strings each equal the key's: the same length and the same bytes.
bool BlockSearch::operator()(ListElem& elem) const {
    return elem.m_name == m_name && elem.m_gameplay == m_gameplay && elem.m_visual == m_visual;
}

// 0x48cac0 rnd::RoomPool::LoadFromXml(TiXmlNode *)
// With an element, m_size is the atoi of its "size" attribute (the original passes a missing attribute on to atoi and crashes; here it
// reads as 0). Each "elem" child then becomes an RPElem (pool this, id 0, not recursive, the three sizes -1), filled by
// RPElem::LoadFromXml, and is appended to m_elems.
void RoomPool::LoadFromXml(TiXmlNode* node) {
    TiXmlElement* element = node->ToElement();                           // vtable +0x2c
    if (element != nullptr) {
        const char* size = element->Attribute("size");
        m_size = size != nullptr ? std::atoi(size) : 0;
    }
    for (TiXmlNode* child = node->FirstChild("elem"); child != nullptr; child = child->NextSibling("elem")) {
        RPElem elem;
        elem.m_pool = this;
        elem.m_id = 0;
        elem.m_recursive = false;
        elem.unk_0c = -1;
        elem.unk_10 = -1;
        elem.unk_14 = -1;
        elem.LoadFromXml(child);
        m_elems.push_back(elem);
    }
}

// 0x48ce48 rnd::RootRule::Impl::Impl(rnd::RootRule const&)
// 0x48d0b4 rnd::RootRule::Impl::Impl(rnd::RootRule const&)  (C2 variant; same body)
// The base is built with no parent, so it does not link the node or set the direction. The root limit is 0, not the base's 1.
// m_names takes the c_str of each block name of the root rule, in order.
RootRule::Impl::Impl(const RootRule& root) : Rule::Impl(root, nullptr), m_rootRule(&root) {
    m_limit = 0;
    for (const std::string& name : root.m_blockNames) {
        m_names.push_back(name.c_str());
    }
}

// 0x48cf10 rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&,rnd::Rule::Impl*)
// 0x48cff8 rnd::ForceBlock::Impl::Impl(rnd::ForceBlock const&,rnd::Rule::Impl*)  (C2 variant; same body)
// The base is built with the parent, then m_forceBlock is set. m_names takes the c_str of each block name of the force-
// block rule, in order.
ForceBlock::Impl::Impl(const ForceBlock& rule, Rule::Impl* parent)
    : Rule::Impl(rule, parent), m_forceBlock(&rule) {
    for (const std::string& name : rule.m_blockNames) {
        m_names.push_back(name.c_str());
    }
}

// 0x48cfcc rnd::ForceBlock::NewImpl(rnd::Rule::Impl*) const
// The original allocates 0x48 bytes with CustomAlloc and constructs the node in place. sizeof is used here.
Rule::Impl* ForceBlock::NewImpl(Rule::Impl* parent) const {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(ForceBlock::Impl)));
    return new (memory) ForceBlock::Impl(*this, parent);
}

}  // namespace rnd
