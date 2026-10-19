// sfc::math::graph::IEdge<NodeT, WeightT>: interface of a directed graph edge.
// Seven pure virtual slots and no destructor slot: vtable for IEdge<PFGInnerNode, float> is 36 bytes (8 bytes of
// prefix, then 7 null slots in the order below). Edge<NodeT, WeightT> implements them in the same order.
// Derivation is inferred from that slot order, not from RTTI (the binary has none).
// Original 32-bit size: vptr only (4 bytes). No data members.
#pragma once

namespace sfc {
namespace math {
namespace graph {

template <typename NodeT, typename WeightT>
class IEdge {
public:
    virtual NodeT* getFromNode() = 0;                // slot 0 (pure)
    virtual const NodeT* getFromNode() const = 0;    // slot 1 (pure)
    virtual NodeT* getToNode() = 0;                  // slot 2 (pure)
    virtual const NodeT* getToNode() const = 0;      // slot 3 (pure)
    virtual WeightT getWeight() const = 0;           // slot 4 (pure)
    virtual void setWeight(WeightT weight) = 0;      // slot 5 (pure)
    virtual bool isValid() const = 0;                // slot 6 (pure)
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
