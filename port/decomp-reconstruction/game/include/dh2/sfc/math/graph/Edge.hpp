// sfc::math::graph::Edge<NodeT, WeightT>: a directed edge from one node to another, with a weight.
// Vtable for Edge<PFGInnerNode, float> (44 bytes): getFromNode (slot 0), getFromNode const (slot 1), getToNode (slot 2),
// getToNode const (slot 3), getWeight const (slot 4), setWeight (slot 5), isValid const (slot 6), ~Edge D1 (slot 7,
// empty), ~Edge D0 (slot 8, frees). Derives from IEdge<NodeT, WeightT>, which has the first seven slots.
// Original 32-bit size: 16 bytes (vptr at +0x00, from at +0x04, to at +0x08, weight at +0x0c).
#pragma once

#include "dh2/sfc/math/graph/IEdge.hpp"

namespace sfc {
namespace math {
namespace graph {

template <typename NodeT, typename WeightT>
class Edge : public IEdge<NodeT, WeightT> {
public:
    typedef NodeT NodeType;

    // 0x51bc44 sfc::math::graph::Edge<PFGInnerNode, float>::~Edge() (D1), 0x51c148 ~Edge() (D0)
    virtual ~Edge() {}

    // 0x51bc68 sfc::math::graph::Edge<PFGInnerNode, float>::getFromNode()
    NodeT* getFromNode() override { return m_from; }

    // 0x51bc48 sfc::math::graph::Edge<PFGInnerNode, float>::getFromNode() const
    const NodeT* getFromNode() const override { return m_from; }

    // 0x51bc70 sfc::math::graph::Edge<PFGInnerNode, float>::getToNode()
    NodeT* getToNode() override { return m_to; }

    // 0x51bc50 sfc::math::graph::Edge<PFGInnerNode, float>::getToNode() const
    const NodeT* getToNode() const override { return m_to; }

    // 0x51c104 sfc::math::graph::Edge<PFGInnerNode, float>::getWeight() const
    WeightT getWeight() const override { return m_weight; }

    // 0x51bc60 sfc::math::graph::Edge<PFGInnerNode, float>::setWeight(float)
    void setWeight(WeightT weight) override { m_weight = weight; }

    // 0x51c10c sfc::math::graph::Edge<PFGInnerNode, float>::isValid() const
    bool isValid() const override { return true; }

    NodeT* m_from;      // +0x04 node the edge starts at
    NodeT* m_to;        // +0x08 node the edge ends at
    WeightT m_weight;   // +0x0c weight (setWeight stores it, getWeight returns it)
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
