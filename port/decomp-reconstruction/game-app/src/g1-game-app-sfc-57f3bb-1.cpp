// Batch g1-game-app-sfc-57f3bb-1 (owner sfc, part 2 of 2).
// Bodies defined here: GraphSparse<PFGInnerEdge>::clear and getEdges, and AlgoAStar::_markNode and findNode for the
// Diablo and Dijkstra instantiations. The template bodies are defined in this file and explicitly instantiated below,
// as the owner headers ask. Destructors that the compiler emits from the header declarations are listed as comments
// (their bodies are in dh2/sfc/math/graph/GraphSparse.hpp and dh2/sfc/math/graph/AlgoAStar.hpp), and the ITest
// isValid overloads are inline in dh2/sfc/math/graph/ITest.hpp.

#include <cstddef>
#include <list>
#include <map>
#include <vector>

#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/sfc/math/graph/AlgoAStar.hpp"
#include "dh2/sfc/math/graph/GraphSparse.hpp"
#include "dh2/sfc/math/graph/ITest.hpp"

// 0x523238 sfc::math::graph::GraphSparse<PFGOuterEdge>::~GraphSparse() (D0): compiler-generated deleting destructor.
// 0x523554 sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse() (D0): compiler-generated deleting destructor.
// 0x52341c sfc::math::graph::GraphSparse<PFGInnerEdge>::~GraphSparse() (D2) and 0x5234f0 (D1): inline in GraphSparse.hpp.
// 0x5250bc sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(PFGInnerEdge const*) const: inline in ITest.hpp.
// 0x5250d4 sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode>::isValid(PFGInnerNode const*) const: inline in ITest.hpp.
// 0x529f8c, 0x529fc0 (AlgoAStar D1, Diablo and Dijkstra): inline in AlgoAStar.hpp.
// 0x529ff4, 0x52a030 (AlgoAStar D0, Diablo and Dijkstra): compiler-generated deleting destructors.

namespace {

// Heap helpers. They reproduce the binary's helpers (std::__push_heap, std::__adjust_heap and std::__pop_heap, all
// from the same SGI-derived implementation) so that entries with equal f leave the heap in the same order as in the
// original. The comparator is _EComp (a.f > b.f).

// 0x529398 std::__push_heap<AlgoAStar::_InEdge*, int, AlgoAStar::_InEdge, _EComp>: sifts the hole up while the parent
// compares greater than the value, then stores the value at the hole.
template <typename T, typename Comp>
void heapSiftUp(T* first, std::ptrdiff_t holeIndex, std::ptrdiff_t topIndex, const T& value, Comp comp) {
    std::ptrdiff_t parent = (holeIndex - 1) / 2;
    while (holeIndex > topIndex && comp(first[parent], value)) {
        first[holeIndex] = first[parent];
        holeIndex = parent;
        parent = (holeIndex - 1) / 2;
    }
    first[holeIndex] = value;
}

// std::__adjust_heap: moves the hole down along the smaller child (the second child is taken when
// comp(second, second - 1) holds), then sifts value up from the final hole.
template <typename T, typename Comp>
void heapAdjust(T* first, std::ptrdiff_t holeIndex, std::ptrdiff_t len, const T& value, Comp comp) {
    const std::ptrdiff_t topIndex = holeIndex;
    std::ptrdiff_t secondChild = holeIndex;
    while (secondChild < (len - 1) / 2) {
        secondChild = 2 * (secondChild + 1);
        if (comp(first[secondChild], first[secondChild - 1])) {
            --secondChild;
        }
        first[holeIndex] = first[secondChild];
        holeIndex = secondChild;
    }
    if ((len & 1) == 0 && secondChild == (len - 2) / 2) {
        secondChild = 2 * (secondChild + 1);
        first[holeIndex] = first[secondChild - 1];
        holeIndex = secondChild - 1;
    }
    heapSiftUp(first, holeIndex, topIndex, value, comp);
}

// std::__pop_heap as findNode calls it (the heap is a std::vector used as a priority queue): the top leaves the heap,
// the last entry is re-sifted from the root over the remaining entries.
template <typename T, typename Comp>
T heapPopTop(std::vector<T>& heap, Comp comp) {
    T top = heap.front();
    T last = heap.back();
    heap.pop_back();
    if (!heap.empty()) {
        heapAdjust(heap.data(), 0, static_cast<std::ptrdiff_t>(heap.size()), last, comp);
    }
    return top;
}

// std::priority_queue::push: appends the value and sifts it up from the new last slot.
template <typename T, typename Comp>
void heapPush(std::vector<T>& heap, const T& value, Comp comp) {
    heap.push_back(value);
    heapSiftUp(heap.data(), static_cast<std::ptrdiff_t>(heap.size()) - 1, 0, value, comp);
}

}  // namespace

namespace sfc {
namespace math {
namespace graph {

// 0x52328c sfc::math::graph::GraphSparse<PFGInnerEdge>::clear(void)
// Visits the nodes in key order. Each node's edges are deleted through their virtual deleting destructor, then the
// node's edge map is emptied, then the node is deleted through its own deleting destructor. The node map is emptied
// last. The binary runs its tree-erase and reset blocks only when a map is not empty, which std::map::clear() covers.
template <typename EdgeT>
void GraphSparse<EdgeT>::clear() {
    for (auto& nodeEntry : m_nodes) {
        _InNode* node = nodeEntry.second;
        for (auto& edgeEntry : node->m_edges) {
            delete edgeEntry.second;
        }
        node->m_edges.clear();
        delete node;
    }
    m_nodes.clear();
}

template void GraphSparse<PFGInnerEdge>::clear();

// 0x52ac30 sfc::math::graph::GraphSparse<PFGInnerEdge>::getEdges(unsigned int, std::list<PFGInnerEdge const*>&) const
// Appends the outgoing edges of the node with this id, in key order, and returns their count. A missing node gives 0
// and appends nothing.
template <typename EdgeT>
int GraphSparse<EdgeT>::getEdges(unsigned int id, std::list<const EdgeT*>& edges) const {
    auto nodeIt = m_nodes.find(id);
    if (nodeIt == m_nodes.end()) {
        return 0;
    }
    const _InNode* node = nodeIt->second;
    for (const auto& edgeEntry : node->m_edges) {
        edges.push_back(edgeEntry.second);
    }
    return static_cast<int>(node->m_edges.size());
}

template int GraphSparse<PFGInnerEdge>::getEdges(unsigned int, std::list<const PFGInnerEdge*>&) const;

// 0x529da4 sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_markNode(
//     std::map<unsigned int, AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge>&,
//     AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::_InEdge&)
// 0x52ca20 sfc::math::graph::AlgoAStar<PFGInnerGraph,DijkstraHeuristic>::_markNode(...)  (same body)
// The node is the candidate's to-node. The candidate is refused when the closed map already holds that node with a
// cost no larger than the candidate's. Otherwise closed[id] takes the candidate. The binary's second getID() call is
// the operator[] key.
template <typename GraphT, typename HeuristicT>
bool AlgoAStar<GraphT, HeuristicT>::_markNode(std::map<unsigned int, _InEdge>& closed, _InEdge& candidate) {
    const PFGInnerNode* to = candidate.edge->getToNode();
    const unsigned int id = to->getID();
    auto found = closed.find(id);
    if (found != closed.end() && found->second.g <= candidate.g) {
        return false;
    }
    closed[to->getID()] = candidate;
    return true;
}

// 0x52ad4c sfc::math::graph::AlgoAStar<PFGInnerGraph,DiabloIPhoneHeuristic>::findNode(unsigned int,
//     sfc::math::graph::ITest<PFGInnerEdge,PFGInnerNode> const&, unsigned int, std::list<PFGInnerEdge const*>*)
// A* over the graph. The open heap is a min-heap on f. Each expansion takes the node on top of the heap, lists its
// outgoing edges, and relaxes each one that passes the goal and validity tests. A goal edge is the last thing pushed:
// the binary empties the heap (a sort) and pushes only that edge, so the next pass finds the goal on top. When the
// goal is reached, the path is rebuilt from the closed map back to the start node. Each edge is put at the front of
// the output list (list::push_front), so the list reads start to goal. When the goal is not reached, the closed edges
// are put at the front in key order, which leaves them in descending key order.
//
// Asm-checked details: the heuristic term is the constant 0.0, the goal test runs one extra time (its result is
// dropped) for every edge that passes the validity tests, and the binary walks the edge list once more per edge
// without any effect; that walk is not reproduced.
template <typename GraphT, typename HeuristicT>
bool AlgoAStar<GraphT, HeuristicT>::findNode(unsigned int startId, const ITest<PFGInnerEdge, PFGInnerNode>& goal,
                                             unsigned int maxExpansions, std::list<const PFGInnerEdge*>* path) {
    m_found = false;
    m_path.clear();
    unk_18 = 0;
    unk_1c = 0;
    unk_20 = 0;
    unk_24 = 0;

    auto startIt = m_graph->m_nodes.find(startId);
    if (startIt == m_graph->m_nodes.end()) {
        return m_found;
    }
    const PFGInnerNode* start = startIt->second;
    if (start == nullptr) {
        // The binary returns here as well: after the resets above and before m_outPath is set (asm: CMP R3,#0; BEQ).
        return m_found;
    }

    std::list<const PFGInnerEdge*>* outList = path != nullptr ? path : &m_path;
    m_outPath = outList;

    std::map<unsigned int, _InEdge> closed;
    std::vector<_InEdge> open;
    std::list<const PFGInnerEdge*> edges;
    const _EComp comp{};

    // The start node is closed with no entering edge and cost 0.
    _InEdge& startEntry = closed[start->getID()];
    startEntry.edge = nullptr;
    startEntry.g = 0.0f;
    startEntry.f = 0.0f;

    float prevG = 0.0f;
    const PFGInnerNode* current = start;
    unsigned int budget = maxExpansions;

    do {
        if (goal(current) || budget == 0) {
            break;
        }
        ++unk_18;
        m_graph->getEdges(current->getID(), edges);

        while (!edges.empty()) {
            const PFGInnerEdge* edge = edges.front();
            ++unk_1c;
            const PFGInnerNode* to = edge->getToNode();
            if (!goal(to)) {
                if (!goal.isValid(edge) || !goal.isValid(to)) {
                    edges.pop_front();
                    continue;
                }
            }
            (void)goal(to);  // the binary calls the goal test a second time here and drops the result
            ++unk_20;

            const float g = edge->getWeight() + prevG;
            _InEdge candidate{edge, g, g + 0.0f};
            if (!_markNode(closed, candidate)) {
                edges.pop_front();
                continue;
            }
            if (goal(to)) {
                // The binary drains the open heap and pushes only this candidate; the remaining list entries are dropped
                // with the list.
                open.clear();
                heapPush(open, candidate, comp);
                break;
            }
            ++unk_24;
            heapPush(open, candidate, comp);
            edges.pop_front();
        }

        if (--budget == 0) {
            break;
        }
        if (open.empty()) {
            break;
        }
        const _InEdge top = open.front();
        current = top.edge->getToNode();
        prevG = top.g;
        heapPopTop(open, comp);
    } while (current != nullptr);

    const bool reached = goal(current);
    m_found = reached;
    if (reached) {
        // Walk back from the goal along the closed edges until the start node. Each edge goes to the front of the
        // output list (the binary's insert before the list's first element), so the last one put in, the edge
        // leaving the start node, is first: the path reads start to goal.
        const PFGInnerNode* node = current;
        while (node->getID() != start->getID()) {
            const _InEdge& entry = closed[node->getID()];
            m_outPath->push_front(entry.edge);
            node = entry.edge->getFromNode();
        }
    } else {
        // Not reached: every closed edge goes to the front in key order, so the list ends in descending key order.
        for (const auto& entry : closed) {
            if (entry.second.edge != nullptr) {
                m_outPath->push_front(entry.second.edge);
            }
        }
    }
    m_outPath = &m_path;
    return m_found;
}

// Explicit instantiations for the two heuristic instantiations. findNode is instantiated for Diablo only in this batch.
using DiabloAStar = AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>;
using DijkstraAStar = AlgoAStar<PFGInnerGraph, DijkstraHeuristic>;

template bool DiabloAStar::_markNode(std::map<unsigned int, DiabloAStar::_InEdge>& closed,
                                     DiabloAStar::_InEdge& candidate);
template bool DijkstraAStar::_markNode(std::map<unsigned int, DijkstraAStar::_InEdge>& closed,
                                       DijkstraAStar::_InEdge& candidate);
template bool DiabloAStar::findNode(unsigned int startId, const ITest<PFGInnerEdge, PFGInnerNode>& goal,
                                    unsigned int maxExpansions, std::list<const PFGInnerEdge*>* path);
// The Dijkstra instance has no out-of-line findNode in the binary: PFWorld::_SearchGraph(ITest) 0x52cb90 inlines the same loop (f = g + 0.0,
// the same _markNode, the same heap and path rebuild; it leaves the diagnostic counters at +0x18..+0x24 untouched). The port shares the body.
template bool DijkstraAStar::findNode(unsigned int startId, const ITest<PFGInnerEdge, PFGInnerNode>& goal,
                                      unsigned int maxExpansions, std::list<const PFGInnerEdge*>* path);

}  // namespace graph
}  // namespace math
}  // namespace sfc
