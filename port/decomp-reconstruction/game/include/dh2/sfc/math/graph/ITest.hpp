// sfc::math::graph::ITest<TEdge, TNode>: predicate that a graph search applies to edges and nodes.
// Vtable for ITest<PFGInnerEdge, PFGInnerNode> (20 bytes): operator() (slot 0, pure, null), isValid(const TEdge*)
// (slot 1), isValid(const TNode*) (slot 2). No destructor slot. The two isValid overloads are defaults: they forward
// to the edge's or the node's own isValid.
// Original 32-bit size: vptr only (4 bytes). No data members.
#pragma once

namespace sfc {
namespace math {
namespace graph {

template <typename TEdge, typename TNode>
class ITest {
public:
    virtual bool operator()(const TNode* node) const = 0;   // slot 0 (pure)

    // 0x5250bc sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>::isValid(PFGInnerEdge const*) const
    virtual bool isValid(const TEdge* edge) const { return edge->isValid(); }   // slot 1

    // 0x5250d4 sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode>::isValid(PFGInnerNode const*) const
    virtual bool isValid(const TNode* node) const { return node->isValid(); }   // slot 2
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
