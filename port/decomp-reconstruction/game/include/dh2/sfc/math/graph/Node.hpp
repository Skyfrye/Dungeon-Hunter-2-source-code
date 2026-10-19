// sfc::math::graph::Node<IdT>: a graph node that carries its id.
// Vtable for Node<unsigned int> (24 bytes): getID (slot 0), isValid (slot 1), ~Node D1 (slot 2, empty),
// ~Node D0 (slot 3, frees). Derives from INode<IdT>, which has the first two slots.
// Original 32-bit size: 8 bytes (vptr at +0x00, id at +0x04).
#pragma once

#include "dh2/sfc/math/graph/INode.hpp"

namespace sfc {
namespace math {
namespace graph {

template <typename IdT>
class Node : public INode<IdT> {
public:
    // 0x51bc40 sfc::math::graph::Node<unsigned int>::~Node() (D1), 0x51c1b0 sfc::math::graph::Node<unsigned int>::~Node() (D0)
    virtual ~Node() {}

    // 0x51bc58 sfc::math::graph::Node<unsigned int>::getID() const
    IdT getID() const override { return m_id; }

    // 0x51c0fc sfc::math::graph::Node<unsigned int>::isValid() const
    bool isValid() const override { return true; }

    IdT m_id;   // +0x04 node id (getID returns it)
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
