// Test for the rnd batch g1-game-app-rnd-8b06ae-4. It covers the child-slot bookkeeping of Rule::Impl's destructor: a node
// leaves its parent's slots (the last slot fills the hole), and a node's destructor deletes its children from the last slot
// back to the first. The other destructors in the batch are empty bodies over the base destructors, and RootRule::NewImpl
// needs RootRule::Impl's constructor, so none of those runs here. Returns non-zero on failure.
#include <cstdio>
#include <cstdlib>
#include <new>

#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"

// Link-only definition of the engine allocator (core-platform/src/memory.cpp is not linked here). RootRule::NewImpl in the
// batch's source calls it, and these tests do not run that function.
void* CustomAlloc(unsigned size) {
    return std::malloc(size);
}

// Link-only definitions. The destructors in this batch give the Rule, RootRule, Path, EndPath and ForceBlock vtables (their
// key functions are destructors defined in the batch), so every virtual function those vtables name must resolve in this
// link. None of them runs in these tests. Rule::Impl's constructor is the one the tests use: it records the source rule and
// the parent and nothing else, so the tests register children in the parent's slots themselves.
namespace rnd {

Rule::Impl::Impl(const Rule& rule, Impl* parent)
    : m_rule(const_cast<Rule*>(&rule)),
      m_parent(parent),
      m_childCount(0),
      m_children{},
      m_depth(0),
      m_limit(1),
      m_direction(nullptr),
      unk_40(0) {}

// Rule's destructor is written by batch -5; the derived destructors here call it as a base.
Rule::~Rule() {}
bool Rule::LoadFromXml(TiXmlNode*) { return true; }
void Rule::Unload() {}
RootRule* Rule::GetRootRule() { return nullptr; }
void Rule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>&, ListRule*&) {}
int Rule::Impl::OneStep(Tile*, const Exit*, const Exit*) { return 0; }
bool Rule::Impl::Step(Tile*, const Exit*) { return false; }
RootRule* Rule::Impl::GetRootRule() { return nullptr; }

bool RootRule::LoadFromXml(TiXmlNode*) { return true; }
void RootRule::Unload() {}
RootRule::Impl::Impl(const RootRule& root) : Rule::Impl(root, nullptr), m_rootRule(&root) {}
void RootRule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>&, ListRule*&) {}

Rule::Impl* Path::NewImpl(Rule::Impl*) const { return nullptr; }
bool Path::LoadFromXml(TiXmlNode*) { return true; }
void Path::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>&, ListRule*&) {}
int Path::Impl::OneStep(Tile*, const Exit*, const Exit*) { return 0; }

Rule::Impl* EndPath::NewImpl(Rule::Impl*) const { return nullptr; }
int EndPath::Impl::OneStep(Tile*, const Exit*, const Exit*) { return 0; }

Rule::Impl* ForceBlock::NewImpl(Rule::Impl*) const { return nullptr; }
bool ForceBlock::LoadFromXml(TiXmlNode*) { return true; }
void ForceBlock::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>&, ListRule*&) {}

}  // namespace rnd

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Storage for the source rule that the stub constructor records. The tests never dereference it, so no Rule object is built.
alignas(rnd::Rule) unsigned char g_ruleStorage[sizeof(rnd::Rule)] = {};
const rnd::Rule& g_rule = *reinterpret_cast<const rnd::Rule*>(g_ruleStorage);

rnd::Rule::Impl* NewNode(rnd::Rule::Impl* parent) {
    return new rnd::Rule::Impl(g_rule, parent);
}

// Adds a node to the parent's slots, as the node constructor does in the original (slot m_childCount, then the count rises).
void RegisterChild(rnd::Rule::Impl* parent, rnd::Rule::Impl* child) {
    parent->m_children[parent->m_childCount] = child;
    parent->m_childCount += 1;
}

// Runs the node's destructor in place and frees its storage. The node came from the global operator new.
void DestroyNode(rnd::Rule::Impl* node) {
    node->~Impl();
    ::operator delete(node);
}

// A node with no parent: its destructor has nothing to unlink from and no children to delete.
void TestRootNodeHasNoParent() {
    rnd::Rule::Impl* root = NewNode(nullptr);
    EXPECT(root->m_parent == nullptr);
    EXPECT(root->m_childCount == 0);
    delete root;
}

// Deleting the first child: the last slot moves into slot 0 and the count drops to 2.
void TestUnlinkFirstChild() {
    rnd::Rule::Impl* parent = NewNode(nullptr);
    rnd::Rule::Impl* c0 = NewNode(parent);
    rnd::Rule::Impl* c1 = NewNode(parent);
    rnd::Rule::Impl* c2 = NewNode(parent);
    RegisterChild(parent, c0);
    RegisterChild(parent, c1);
    RegisterChild(parent, c2);
    EXPECT(parent->m_childCount == 3);

    delete c0;
    EXPECT(parent->m_childCount == 2);
    EXPECT(parent->m_children[0] == c2);
    EXPECT(parent->m_children[1] == c1);

    DestroyNode(parent);  // tears down c1 and c2 through their own destructors
}

// Deleting a middle child, then the last one: each unlink leaves the others in order of the slots.
void TestUnlinkMiddleThenLast() {
    rnd::Rule::Impl* parent = NewNode(nullptr);
    rnd::Rule::Impl* c0 = NewNode(parent);
    rnd::Rule::Impl* c1 = NewNode(parent);
    rnd::Rule::Impl* c2 = NewNode(parent);
    RegisterChild(parent, c0);
    RegisterChild(parent, c1);
    RegisterChild(parent, c2);

    delete c1;
    EXPECT(parent->m_childCount == 2);
    EXPECT(parent->m_children[0] == c0);
    EXPECT(parent->m_children[1] == c2);

    delete c2;
    EXPECT(parent->m_childCount == 1);
    EXPECT(parent->m_children[0] == c0);

    DestroyNode(parent);  // tears down c0
}

// Tearing down a parent with a live child: the parent's count reaches 0 and the child is deleted through its destructor.
void TestParentTeardownDeletesChildren() {
    rnd::Rule::Impl* parent = NewNode(nullptr);
    RegisterChild(parent, NewNode(parent));
    RegisterChild(parent, NewNode(parent));
    RegisterChild(parent, NewNode(parent));
    EXPECT(parent->m_childCount == 3);

    DestroyNode(parent);
}

// A child with its own children: deleting the child deletes the grandchildren, then removes the child from the parent.
void TestNestedTeardown() {
    rnd::Rule::Impl* parent = NewNode(nullptr);
    rnd::Rule::Impl* child = NewNode(parent);
    RegisterChild(parent, child);
    RegisterChild(child, NewNode(child));
    RegisterChild(child, NewNode(child));
    EXPECT(parent->m_childCount == 1);
    EXPECT(child->m_childCount == 2);

    delete child;
    EXPECT(parent->m_childCount == 0);

    DestroyNode(parent);
}

}  // namespace

int main() {
    TestRootNodeHasNoParent();
    TestUnlinkFirstChild();
    TestUnlinkMiddleThenLast();
    TestParentTeardownDeletesChildren();
    TestNestedTeardown();
    if (g_failures != 0) {
        std::fprintf(stderr, "g1-game-app-rnd-8b06ae-4 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-rnd-8b06ae-4 test: OK\n");
    return 0;
}
