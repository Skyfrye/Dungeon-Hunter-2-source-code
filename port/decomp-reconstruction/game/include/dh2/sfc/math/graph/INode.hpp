// sfc::math::graph::INode<IdT>: interface of a graph node.
// Two pure virtual slots and no destructor slot: vtable for INode<unsigned int> is 16 bytes (offset-to-top, typeinfo
// word (zero: the binary has no RTTI), then getID and isValid, both null).
// Node<IdT> takes these two slots in the same order. Derivation is inferred from that slot order, not from RTTI.
// Original 32-bit size: vptr only (4 bytes). No data members.
#pragma once

namespace sfc {
namespace math {
namespace graph {

template <typename IdT>
class INode {
public:
    virtual IdT getID() const = 0;       // slot 0 (pure)
    virtual bool isValid() const = 0;    // slot 1 (pure)
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
