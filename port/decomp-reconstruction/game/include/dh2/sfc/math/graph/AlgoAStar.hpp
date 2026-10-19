// sfc::math::graph::AlgoAStar<GraphT, HeuristicT>: A* search over the inner path-finding graph of a floor.
// GraphT is PFGInnerGraph (a GraphSparse<PFGInnerEdge>). HeuristicT is DiabloIPhoneHeuristic or DijkstraHeuristic.
// The two instantiations share one body. Neither the binary's findNode nor _markNode calls the heuristic type: the
// Diablo findNode adds the constant 0.0 to the path cost (asm: BL __aeabi_fadd with MOV R1,#0), so its f equals g.
// Layout (32-bit): vptr at +0x00, m_graph at +0x04, m_path (a std::list with its sentinel embedded: two words, next at
// +0x08 and prev at +0x0c; pad_0c below is the prev word) at +0x08,
// the output-list pointer at +0x10 (findNode points it at its output list and restores &m_path before it returns),
// m_found at +0x14. findNode increments the counters at +0x18..+0x24. The last field seen is at +0x24, so the
// original object is at least 0x28 bytes.
// Heap order: the open list is a min-heap on the f field of _InEdge (see _EComp).
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <vector>

#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/sfc/math/graph/ITest.hpp"

class DiabloIPhoneHeuristic;
class DijkstraHeuristic;

namespace sfc {
namespace math {
namespace graph {

template <typename GraphT, typename HeuristicT>
class AlgoAStar {
public:
    // One search entry (12 bytes in the binary). The closed map stores it as the value of a node id.
    struct _InEdge {
        const PFGInnerEdge* edge;  // +0x00 edge that reached the node (null for the start node)
        float g;                   // +0x04 cost from the start node
        float f;                   // +0x08 heap key: g plus the heuristic term
    };

    // Heap order (the binary's __adjust_heap compares the +0x08 fields with __aeabi_fcmpgt). The entry with the
    // smaller f is on top of the open heap.
    struct _EComp {
        bool operator()(const _InEdge& a, const _InEdge& b) const { return a.f > b.f; }
    };

    // 0x529f8c sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::~AlgoAStar() (D1)
    // 0x529fc0 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::~AlgoAStar() (D1)
    // The binary stores the vtable pointer and clears the path list, which is what the implicit destructor does.
    virtual ~AlgoAStar() = default;

    // 0x52ad4c sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode(unsigned int,
    //     sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&, unsigned int, std::list<PFGInnerEdge const*>*)
    // Expands at most maxExpansions nodes from startId toward the goal test. Returns whether the goal was reached.
    // The path (start first) goes to *path, or to m_path when path is null, and is put in front of anything the list
    // already holds (list::push_front). When the goal is not reached, every closed edge goes to the list instead, one
    // at a time in key order, so the list ends in descending key order.
    bool findNode(unsigned int startId, const ITest<PFGInnerEdge, PFGInnerNode>& goal, unsigned int maxExpansions,
                  std::list<const PFGInnerEdge*>* path);

    // 0x529da4 sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_markNode(
    //     std::map<unsigned int, _InEdge>&, _InEdge&)
    // 0x52ca20 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_markNode(...)  (same body)
    // Records the candidate for its to-node in the closed map unless the map already holds a cheaper entry.
    bool _markNode(std::map<unsigned int, _InEdge>& closed, _InEdge& candidate);

    GraphT* m_graph;                            // +0x04 the graph searched (its m_nodes and getEdges)
    std::list<const PFGInnerEdge*> m_path;      // +0x08 path of the last search, when no output list is passed
    uint8_t pad_0c[4];                          // +0x0c
    std::list<const PFGInnerEdge*>* m_outPath;  // +0x10 list the running search appends to (&m_path between searches)
    bool m_found;                               // +0x14 goal reached (the return value of findNode)
    uint8_t pad_15[3];                          // +0x15
    int unk_18;                                 // +0x18 nodes expanded (one increment per expansion)
    int unk_1c;                                 // +0x1c edges examined (one increment per edge taken from the list)
    int unk_20;                                 // +0x20 edges relaxed (passed the validity tests, before _markNode)
    int unk_24;                                 // +0x24 entries pushed on the open heap
};

}  // namespace graph
}  // namespace math
}  // namespace sfc
