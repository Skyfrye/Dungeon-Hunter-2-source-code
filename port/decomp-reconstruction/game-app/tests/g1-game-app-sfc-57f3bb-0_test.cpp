// Test for the sfc graph batch g1-game-app-sfc-57f3bb-0: GraphSparse<PFGInnerEdge>::addNode and addEdge, and the
// inline Node and Edge accessors they use. Returns non-zero on failure.
//
// Link-only definitions. This test links only the batch source, so the symbols that other batches own are defined
// here and are not under test: the Vec3f_Origin global, the PFGInnerNode and PFGInnerEdge destructors, the two
// PFGInnerEdge accessors GetSource and GetDestination, and GraphSparse<PFGInnerEdge>::clear (0x52328c). The clear
// below only frees what the test allocates.
#include <cstdio>

#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "dh2/sfc/math/graph/GraphSparse.hpp"

Point3D<float> Vec3f_Origin{};

PFGInnerNode::~PFGInnerNode() {}
PFGInnerEdge::~PFGInnerEdge() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return nullptr; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return nullptr; }

namespace sfc {
namespace math {
namespace graph {

// Test-only stand-in for 0x52328c: frees every edge, then every node.
template <>
void GraphSparse<PFGInnerEdge>::clear() {
    for (auto& entry : m_nodes) {
        for (auto& edge : entry.second->m_edges) {
            delete edge.second;
        }
        delete entry.second;
    }
    m_nodes.clear();
}

}  // namespace graph
}  // namespace math
}  // namespace sfc

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

using Graph = sfc::math::graph::GraphSparse<PFGInnerEdge>;

void TestAddNode() {
    Graph graph;

    // Vec3f_Origin is copied into the position and the direction, as the original does.
    Vec3f_Origin = Point3D<float>{1.5f, 2.5f, 3.5f};
    Graph::_InNode* a = graph.addNode(1);
    Vec3f_Origin = Point3D<float>{0.0f, 0.0f, 0.0f};
    EXPECT(a != nullptr);
    EXPECT(a->getID() == 1);
    EXPECT(a->isValid());
    EXPECT(a->m_position.X == 1.5f && a->m_position.Y == 2.5f && a->m_position.Z == 3.5f);
    EXPECT(a->m_direction.X == 1.5f && a->m_direction.Y == 2.5f && a->m_direction.Z == 3.5f);
    EXPECT(a->m_width == 0.0f && a->m_length == 0.0f);
    EXPECT(a->m_floor == nullptr);

    // A second call with the same id returns the same node, even after other nodes were added.
    Graph::_InNode* b = graph.addNode(2);
    EXPECT(b != nullptr && b != a && b->getID() == 2);
    EXPECT(graph.addNode(1) == a);
    EXPECT(graph.addNode(2) == b);

    // Ids need not be sequential: a large id and a smaller one after it are both found again.
    Graph::_InNode* big = graph.addNode(100);
    Graph::_InNode* lowId = graph.addNode(50);
    EXPECT(big != a && big != b && big->getID() == 100);
    EXPECT(lowId != a && lowId != b && lowId->getID() == 50);
    EXPECT(graph.addNode(100) == big);
    EXPECT(graph.addNode(50) == lowId);
}

void TestAddEdge() {
    Graph graph;
    Graph::_InNode* a = graph.addNode(1);
    Graph::_InNode* b = graph.addNode(2);

    // Either endpoint missing gives nullptr and adds nothing.
    EXPECT(graph.addEdge(1, 9) == nullptr);
    EXPECT(graph.addEdge(9, 1) == nullptr);
    EXPECT(graph.addEdge(9, 9) == nullptr);

    // A new edge: endpoints, weight 1.0, zero distance and clearance.
    PFGInnerEdge* e12 = graph.addEdge(1, 2);
    EXPECT(e12 != nullptr);
    EXPECT(e12->getFromNode() == a);
    EXPECT(e12->getToNode() == b);
    EXPECT(e12->getWeight() == 1.0f);
    EXPECT(e12->m_distance == 0.0f && e12->m_clearance == 0.0f);
    EXPECT(e12->isValid());

    // The same pair returns the existing edge.
    EXPECT(graph.addEdge(1, 2) == e12);

    // The reverse direction is a different edge, with the endpoints swapped.
    PFGInnerEdge* e21 = graph.addEdge(2, 1);
    EXPECT(e21 != nullptr && e21 != e12);
    EXPECT(e21->getFromNode() == b);
    EXPECT(e21->getToNode() == a);
    EXPECT(graph.addEdge(2, 1) == e21);

    // A self-loop is allowed.
    PFGInnerEdge* loop = graph.addEdge(1, 1);
    EXPECT(loop != nullptr && loop != e12 && loop != e21);
    EXPECT(loop->getFromNode() == a && loop->getToNode() == a);

    // Edges are stored per from node: a new edge from node 1 leaves the 2 -> 1 edge untouched.
    Graph::_InNode* c = graph.addNode(3);
    PFGInnerEdge* e13 = graph.addEdge(1, 3);
    EXPECT(e13 != nullptr && e13->getToNode() == c);
    EXPECT(graph.addEdge(1, 2) == e12);
    EXPECT(graph.addEdge(2, 1) == e21);

    // The weight is a plain field: setWeight stores it, and a later addEdge returns the same edge with it.
    e12->setWeight(2.5f);
    EXPECT(e12->getWeight() == 2.5f);
    EXPECT(graph.addEdge(1, 2)->getWeight() == 2.5f);

    // An edge to a node that does not exist yet is refused, and succeeds once that node is added.
    EXPECT(graph.addEdge(2, 4) == nullptr);
    Graph::_InNode* d = graph.addNode(4);
    EXPECT(d != nullptr && d->getID() == 4);
    PFGInnerEdge* e24 = graph.addEdge(2, 4);
    EXPECT(e24 != nullptr && e24->getToNode() == d);
    PFGInnerEdge* e41 = graph.addEdge(4, 1);
    EXPECT(e41 != nullptr && e41->getFromNode() == d && e41->getToNode() == a);
}

}  // namespace

int main() {
    TestAddNode();
    TestAddEdge();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d expectation(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-sfc-57f3bb-0 test: all expectations passed\n");
    return 0;
}
