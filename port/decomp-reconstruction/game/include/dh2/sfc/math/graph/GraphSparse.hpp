// sfc::math::graph::GraphSparse<EdgeT>: sparse directed graph. The nodes sit in a map keyed by node id. Each node
// (_InNode) derives from the edge's node type and keeps its own outgoing edges in a second map keyed by the
// destination id (addEdge stores the edge in the from-node's map; getEdges lists that map).
// Layout (32-bit, PFGInnerEdge and PFGOuterEdge alike): vptr at +0x00, m_nodes at +0x04 (the map is 0x14 bytes:
// rb-tree header node color +0x04, root +0x08, leftmost +0x0c, rightmost +0x10, node count +0x14). Original size 0x18.
// The vtable has only the two destructor slots (D1, D0).
// Bodies of addNode, addEdge, clear and getEdges are declared here, not defined. They belong to the game-app source
// that instantiates this template. The destructor is defined inline, as in the binary.
#pragma once

#include <list>
#include <map>

namespace sfc {
namespace math {
namespace graph {

template <typename EdgeT>
class GraphSparse {
public:
    class _InNode;

    // PFGInnerEdge: 0x5234f0 ~GraphSparse() (D1), 0x523554 ~GraphSparse() (D0).
    // PFGOuterEdge: 0x5231d4 ~GraphSparse() (D1), 0x523238 ~GraphSparse() (D0).
    virtual ~GraphSparse() { clear(); }

    // 0x51dca4 sfc::math::graph::GraphSparse<PFGInnerEdge>::addNode(unsigned int)
    _InNode* addNode(unsigned int id);

    // 0x51e758 sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(unsigned int, unsigned int)
    // Returns the new edge, or the existing one, or nullptr when either id has no node.
    EdgeT* addEdge(unsigned int from, unsigned int to);

    // 0x52328c sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(void)  (PFGOuterEdge: 0x522f70)
    void clear();

    // 0x52ac30 sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(unsigned int, std::list<PFGInnerEdge const*>&) const
    // Appends the outgoing edges of the node with this id and returns their count (0 when the node is missing).
    int getEdges(unsigned int id, std::list<const EdgeT*>& edges) const;

    // +0x04 nodes by id (addNode inserts, clear and the destructor erase)
    std::map<unsigned int, _InNode*> m_nodes;

    // A node of the graph. The NodeType part is the node class (PFGInnerNode for PFGInnerEdge, 0x2c bytes);
    // the edge map follows it at +0x2c. addNode allocates 0x44 bytes for it, of which 0x40 are used by the node.
    class _InNode : public EdgeT::NodeType {
    public:
        // 0x51c520 GraphSparse<PFGInnerEdge>::_InNode::~_InNode() (D1), 0x51c580 GraphSparse<PFGInnerEdge>::_InNode::~_InNode() (D0).
        // The binary erases the map nodes and keeps the edges (clear deletes them), which the default does too.
        ~_InNode() override = default;

        // +0x2c outgoing edges of this node, keyed by the destination id (count at +0x3c, read by getEdges and DBG_GetMemUsage)
        std::map<unsigned int, EdgeT*> m_edges;
    };
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
