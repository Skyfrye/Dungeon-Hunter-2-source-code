// Test for batch g1-game-app-sfc-57f3bb-1: GraphSparse<PFGInnerEdge>::getEdges and clear, AlgoAStar::_markNode and
// findNode (Diablo instantiation). Exit status is non-zero when a check fails.
//
// Link shims: the out-of-line members below belong to other PFG batches that are not in the tree yet. The binary's
// destructors of these classes are empty (see PFGInnerEdge.hpp, PFGInnerNode.hpp and PFGInnerGraph.hpp), and the two
// getters return the node position (PFGInnerEdge.hpp). The search does not call the getters.

#include <cstdio>
#include <list>

#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/sfc/math/graph/AlgoAStar.hpp"
#include "dh2/sfc/math/graph/GraphSparse.hpp"
#include "dh2/sfc/math/graph/ITest.hpp"

PFGInnerGraph::~PFGInnerGraph() {}
PFGInnerEdge::~PFGInnerEdge() {}
PFGInnerNode::~PFGInnerNode() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return &m_from->m_position; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return &m_to->m_position; }

namespace {

int failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);                  \
            ++failures;                                                          \
        }                                                                        \
    } while (0)

using InnerNode = sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode;
using Search = sfc::math::graph::AlgoAStar<PFGInnerGraph, DiabloIPhoneHeuristic>;
using InEdge = Search::_InEdge;

// Goal test: a node passes when it has the given id. Validity tests keep the defaults (every edge and node is valid).
class GoalNode : public sfc::math::graph::ITest<PFGInnerEdge, PFGInnerNode> {
public:
    explicit GoalNode(unsigned int id) : m_goal(id) {}
    bool operator()(const PFGInnerNode* node) const override { return node->getID() == m_goal; }

    unsigned int m_goal;
};

void addNode(PFGInnerGraph& graph, unsigned int id) {
    InnerNode* node = new InnerNode();
    node->m_id = id;
    graph.m_nodes[id] = node;
}

PFGInnerEdge* addEdge(PFGInnerGraph& graph, unsigned int from, unsigned int to, float weight) {
    PFGInnerEdge* edge = new PFGInnerEdge();
    edge->m_from = graph.m_nodes[from];
    edge->m_to = graph.m_nodes[to];
    edge->m_weight = weight;
    graph.m_nodes[from]->m_edges[to] = edge;
    return edge;
}

// The path lists start first: the edges 1->2, 2->3 and 3->4 for the search from 1 to 4.
bool isEdge(const PFGInnerEdge* edge, unsigned int from, unsigned int to) {
    return edge != nullptr && edge->m_from->getID() == from && edge->m_to->getID() == to;
}

void testGetEdgesAndClear() {
    PFGInnerGraph graph;
    addNode(graph, 1);
    addNode(graph, 2);
    addNode(graph, 3);
    addNode(graph, 4);
    addEdge(graph, 1, 2, 1.0f);
    addEdge(graph, 1, 3, 5.0f);
    addEdge(graph, 2, 3, 1.0f);
    addEdge(graph, 3, 4, 1.0f);

    std::list<const PFGInnerEdge*> out;
    CHECK(graph.getEdges(1, out) == 2);
    CHECK(out.size() == 2);
    CHECK(out.front()->m_to->getID() == 2);      // key order: the edge to node 2 comes first
    CHECK(out.back()->m_to->getID() == 3);

    out.clear();
    CHECK(graph.getEdges(4, out) == 0);          // node 4 has no outgoing edges
    CHECK(out.empty());
    CHECK(graph.getEdges(99, out) == 0);         // missing node
    CHECK(out.empty());

    graph.clear();
    CHECK(graph.m_nodes.empty());
}

void testMarkNode() {
    PFGInnerGraph graph;
    addNode(graph, 1);
    addNode(graph, 4);
    PFGInnerEdge* edge = addEdge(graph, 1, 4, 3.0f);

    Search search;
    search.m_graph = &graph;
    std::map<unsigned int, InEdge> closed;

    InEdge first{edge, 3.0f, 3.0f};
    CHECK(search._markNode(closed, first));       // node 4 not closed yet
    CHECK(closed.size() == 1);
    CHECK(closed[4].edge == edge && closed[4].g == 3.0f);

    InEdge worse{edge, 5.0f, 5.0f};
    CHECK(!search._markNode(closed, worse));      // closed entry is cheaper: refused
    CHECK(closed[4].g == 3.0f);

    InEdge better{edge, 2.0f, 2.0f};
    CHECK(search._markNode(closed, better));      // cheaper: replaces the entry
    CHECK(closed[4].g == 2.0f && closed[4].f == 2.0f);

    graph.clear();
}

void testFindNode() {
    PFGInnerGraph graph;
    addNode(graph, 1);
    addNode(graph, 2);
    addNode(graph, 3);
    addNode(graph, 4);
    addEdge(graph, 1, 2, 1.0f);
    addEdge(graph, 1, 3, 5.0f);
    addEdge(graph, 2, 3, 1.0f);
    addEdge(graph, 3, 4, 1.0f);

    Search search;
    search.m_graph = &graph;
    GoalNode goal4(4);

    // Found: the cheaper route 1 -> 2 -> 3 -> 4 (cost 3) wins over 1 -> 3 -> 4 (cost 6).
    std::list<const PFGInnerEdge*> path;
    CHECK(search.findNode(1, goal4, 100, &path));
    CHECK(search.m_found);
    CHECK(path.size() == 3);
    if (path.size() == 3) {
        auto it = path.begin();
        CHECK(isEdge(*it++, 1, 2));
        CHECK(isEdge(*it++, 2, 3));
        CHECK(isEdge(*it, 3, 4));
    }
    CHECK(search.m_outPath == &search.m_path);
    CHECK(search.unk_18 == 3);   // expansions: nodes 1, 2, 3
    CHECK(search.unk_1c == 4);   // edges taken from the lists: 1->2, 1->3, 2->3, 3->4
    CHECK(search.unk_20 == 4);   // edges that passed the validity tests
    CHECK(search.unk_24 == 3);   // pushes: 1->2, 1->3, 2->3 (the goal edge is not pushed)

    // Found with no output list: the path lands in m_path.
    CHECK(search.findNode(1, goal4, 100, nullptr));
    CHECK(search.m_path.size() == 3);
    CHECK(search.m_outPath == &search.m_path);

    // Not found: every closed edge, in descending key order (4, 3, 2): each one goes to the front of the list in key
    // order. Node 4 is closed with cost 3, so the route through 3 is refused there and the search runs out of open
    // entries.
    GoalNode missing(99);
    std::list<const PFGInnerEdge*> closedEdges;
    CHECK(!search.findNode(1, missing, 100, &closedEdges));
    CHECK(!search.m_found);
    CHECK(closedEdges.size() == 3);
    if (closedEdges.size() == 3) {
        auto it = closedEdges.begin();
        CHECK(isEdge(*it++, 3, 4));
        CHECK(isEdge(*it++, 2, 3));
        CHECK(isEdge(*it, 1, 2));
    }
    CHECK(search.unk_18 == 5);   // expansions: 1, 2, 3, 4, 3 (the second 3 pops the cost-5 entry)
    CHECK(search.unk_1c == 5);
    CHECK(search.unk_20 == 5);

    // Start node missing: nothing searched, counters cleared.
    std::list<const PFGInnerEdge*> none;
    CHECK(!search.findNode(99, goal4, 100, &none));
    CHECK(none.empty());
    CHECK(search.unk_18 == 0 && search.unk_1c == 0 && search.unk_20 == 0 && search.unk_24 == 0);

    // Budget of one expansion: the goal is not reached from the start. The closed edges 1->2 and 1->3 come out in
    // descending key order: 1->3 (key 3) first, then 1->2 (key 2).
    std::list<const PFGInnerEdge*> budgetOut;
    CHECK(!search.findNode(1, goal4, 1, &budgetOut));
    CHECK(search.unk_18 == 1);
    CHECK(budgetOut.size() == 2);
    if (budgetOut.size() == 2) {
        auto it = budgetOut.begin();
        CHECK(isEdge(*it++, 1, 3));
        CHECK(isEdge(*it, 1, 2));
    }

    graph.clear();
}

// A start id whose map value is null: the binary resets the counters and the path, then returns m_found before it
// sets the output list. The output list is left alone.
void testNullStartNode() {
    PFGInnerGraph graph;
    addNode(graph, 1);
    addNode(graph, 4);
    addEdge(graph, 1, 4, 1.0f);
    graph.m_nodes[5] = nullptr;

    Search search;
    search.m_graph = &graph;
    GoalNode goal4(4);

    // Leave a path in m_path first (no output list is passed), so the reset is visible.
    CHECK(search.findNode(1, goal4, 100, nullptr));
    CHECK(search.m_path.size() == 1);

    std::list<const PFGInnerEdge*> out;
    out.push_back(nullptr);
    CHECK(!search.findNode(5, goal4, 100, &out));
    CHECK(!search.m_found);
    CHECK(search.m_path.empty());
    CHECK(search.unk_18 == 0 && search.unk_1c == 0 && search.unk_20 == 0 && search.unk_24 == 0);
    CHECK(out.size() == 1);             // untouched: nothing was written to the output list
    CHECK(search.m_outPath == &search.m_path);

    graph.m_nodes.erase(5);             // a null node must not reach GraphSparse::clear
    graph.clear();
}

}  // namespace

int main() {
    testGetEdgesAndClear();
    testMarkNode();
    testFindNode();
    testNullStartNode();
    if (failures != 0) {
        std::printf("%d check(s) failed\n", failures);
        return 1;
    }
    std::printf("g1-game-app-sfc-57f3bb-1 tests passed\n");
    return 0;
}
