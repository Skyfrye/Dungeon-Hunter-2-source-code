// Batch g1-game-app-rnd-8b06ae-5 (game-app, owner rnd, part 6 of 8): the rnd rule and block destructors and constructors,
// the rule tag dispatch (rnd::Rule::NewRule), the BlockSearch and ListElem constructors, and RandomGenerator::GetBlock.
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Duplicate addresses: a C1 and a C2 constructor with identical bodies are one C++ definition, listed under both
// addresses in the ledger (Rule, EndPath, ForceBlock, Path, RootRule).
//
// Cross-batch note: rnd::Rule::~Rule() is written here once, for the complete-object variant at 0x48d7e8 (D1). Its
// base-object variant at 0x48d58c (D2) has the same pseudocode and belongs to batch g1-game-app-rnd-8b06ae-4. That batch
// must not define rnd::Rule::~Rule() a second time. The complete destructors of Path, EndPath and ForceBlock are in
// batch -4 too, so they are not written here.
//
// Skipped: the scalar deleting destructors (D0) at 0x48d770 (Path), 0x48d7ac (EndPath) and 0x48d860 (Rule). The compiler
// emits them from the virtual destructors, so no body is written.
//
// Partial in this batch: none. NewRule reads the tag through TiXmlElement::Value (see its comment).
#include <cstdio>
#include <cstdlib>
#include <string>

#include "core-platform/lc_api.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "tinyxml-and-c-libs/tixml_dh.hpp"

// Engine assert level. core-platform/memory.hpp declares it too; it is not included here, as in the other game-app sources.
extern int gAssertLevel;

namespace rnd {

namespace {

// Source path printed by the original's ASSERT in rndRule.cpp.
constexpr const char kRndRuleCppPath[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\random\\rndRule.cpp";

}  // namespace

// 0x48d7e8 rnd::Rule::~Rule()  (D1, complete object destructor)
// The original sets the Rule vtable, calls Rule::Unload (which deletes the child rules), then destroys m_blockNames (+0x70)
// and m_exit (+0x50) through the node allocator (blocks over 0x80 bytes go to CustomFree). The members are declared in that
// order, so the implicit member destructors do the same work in reverse declaration order. The vtable store is implicit.
Rule::~Rule() {
    Rule::Unload();
}

// 0x48db5c rnd::BlockSearch::~BlockSearch()
// The original destroys the three string members in the order +0x30 (m_visual), +0x18 (m_gameplay), +0x00 (m_name), each
// through the node allocator. The implicit member destructors run in the same reverse declaration order.
BlockSearch::~BlockSearch() = default;

// 0x48dc08 / 0x48dc90 rnd::Rule::Rule(rnd::RootRule&, rnd::Rule*)
// Stores the root (+0x04) and the parent (+0x08), zeroes the child count (+0x0c), and sets the list pointer (+0x68) to null,
// the list index (+0x6c) to -1, the block name vector (+0x70) to empty and the id (+0x7c) to 0. unk_80 and unk_84 (+0x80,
// +0x84) are set to 1. m_exit (+0x50) is the empty string; the original allocates its 16-byte buffer, which the standard
// string does on its own. The original does not write the 16 child slots (+0x10 .. +0x4f); Unload reads only the first
// m_childCount of them, so the slots are left as they are.
Rule::Rule(RootRule& root, Rule* parent)
    : m_root(&root),     // +0x04
      m_parent(parent),  // +0x08
      m_childCount(0),   // +0x0c
      m_list(nullptr),   // +0x68
      m_listIndex(-1),   // +0x6c
      m_id(0),           // +0x7c
      unk_80(1),         // +0x80
      unk_84(1) {}       // +0x84

// 0x48dd18 / 0x48dd4c rnd::EndPath::EndPath(rnd::RootRule&, rnd::Rule*)
// Runs the Rule constructor, then sets the EndPath vtable. EndPath adds no fields.
EndPath::EndPath(RootRule& root, Rule* parent) : Rule(root, parent) {}

// 0x48dd80 / 0x48ddbc rnd::ForceBlock::ForceBlock(rnd::RootRule&, rnd::Rule*)
// Runs the Rule constructor, then sets unk_88 (+0x88) to 4 and the ForceBlock vtable.
ForceBlock::ForceBlock(RootRule& root, Rule* parent) : Rule(root, parent) {
    unk_88 = 4;  // +0x88
}

// 0x48ddf8 / 0x48dfac rnd::Path::Path(rnd::RootRule&, rnd::Rule*)
// Runs the Rule constructor, then sets unk_88 (+0x88) to 4, unk_8c (+0x8c) to 1 and unk_8d (+0x8d) to 0, and the Path vtable.
Path::Path(RootRule& root, Rule* parent) : Rule(root, parent) {
    unk_88 = 4;      // +0x88
    unk_8c = true;   // +0x8c
    unk_8d = false;  // +0x8d
}

// 0x48dff8 / 0x48e03c rnd::RootRule::RootRule(rnd::RandomGenerator&)
// The root of a RootRule is itself, and its parent is null: Rule(*this, nullptr). Stores the generator at +0x8c.
RootRule::RootRule(RandomGenerator& generator) : Rule(*this, nullptr), m_generator(&generator) {}

// Builds the child rule for a tag name: the dispatch of rnd::Rule::NewRule (0x48de44) once the tag is known. Not an
// original symbol; it is kept separate so the dispatch can be run in a test. The root of the new rule is the parent's root,
// and the parent is the new rule's parent. "rootrule" is not a valid child: the original asserts (gAssertLevel 2 stores
// through null, which is abort here; gAssertLevel 1 prints the ASSERT line for rndRule.cpp line 393) and returns null.
// "path", "forceblock" and "endpath" build their rule. Any other tag builds nothing and returns null.
Rule* NewRuleForTag(Rule& parent, const char* tag) {
    if (LC_API_STRCASECMP(tag, "rootrule") == 0) {
        if (gAssertLevel == 2) {
            std::abort();  // the original stores 0 to address 0
        }
        if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false", kRndRuleCppPath, 393);
        }
        return nullptr;
    }
    if (LC_API_STRCASECMP(tag, "path") == 0) {
        return new Path(*parent.m_root, &parent);
    }
    if (LC_API_STRCASECMP(tag, "forceblock") == 0) {
        return new ForceBlock(*parent.m_root, &parent);
    }
    if (LC_API_STRCASECMP(tag, "endpath") == 0) {
        return new EndPath(*parent.m_root, &parent);
    }
    return nullptr;
}

// 0x48de44 rnd::Rule::NewRule(TiXmlNode*)
// The tag is the element's name. The original reads the name's begin pointer at node +0x34; tixml_dh.hpp records that same
// +0x34 pointer as the name that TiXmlElement::Value() returns. The node is a rule element, so the downcast is the same
// unchecked read the original makes. The child is built by NewRuleForTag with this rule as its parent.
Rule* Rule::NewRule(TiXmlNode* node) {
    const char* tag = static_cast<const TiXmlElement*>(node)->Value();
    return NewRuleForTag(*this, tag);
}

// 0x48e080 rnd::ListElem::ListElem()
// The owner (+0x00) is null, the three strings (+0x04 name, +0x1c gameplay, +0x34 visual) are empty, and the chance
// count (+0x4c) is 100.
ListElem::ListElem() : m_owner(nullptr), m_chances(100) {}

// 0x48e128 rnd::ListElem::ListElem(rnd::ListRule*)
// Same as the default constructor, with the owner set to the list that holds the element.
ListElem::ListElem(ListRule* owner) : m_owner(owner), m_chances(100) {}

// 0x48e0e0 rnd::BlockSearch::BlockSearch(char const*, char const*, char const*)
// Copies the name, gameplay and visual strings into m_name (+0x00), m_gameplay (+0x18) and m_visual (+0x30).
BlockSearch::BlockSearch(const char* name, const char* gameplay, const char* visual)
    : m_name(name), m_gameplay(gameplay), m_visual(visual) {}

// 0x48e184 rnd::RandomGenerator::GetBlock(char const*) const
// Copies the name and lowercases the copy. The original's table maps bytes through the C-locale tolower, which changes
// only the ASCII capitals, and ToLowerCase does the same. The lowercase copy is then looked up in m_blocks (+0x3c, keyed by
// const char* with lstr) by its character pointer. Returns the block, or null when the name is not in the map.
Block* RandomGenerator::GetBlock(const char* name) const {
    std::string key(name);
    ToLowerCase(key.data(), 0, -1);
    const auto it = m_blocks.find(key.c_str());
    return it == m_blocks.end() ? nullptr : it->second;
}

}  // namespace rnd
