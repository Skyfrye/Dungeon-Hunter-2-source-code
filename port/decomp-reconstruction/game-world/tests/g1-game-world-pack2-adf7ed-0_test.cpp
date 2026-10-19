// Test for batch g1-game-world-pack2-adf7ed-0.
//
// Covers what runs on the host without the engine: PFGInnerDirectEdge's stored points, PFGInnerEdge's end points read
// through its node pointers (the edge is also read through the base type, so the virtual calls are exercised),
// PFGInnerGraph::DBG_GetMemUsage over a graph built by hand, and the MeshSceneNode constructor (the render gate is set by
// the base constructor and the batch sets unk_140 to 1).
//
// Link: the BaseMeshSceneNode source is linked in for MeshSceneNode. Its CMeshSceneNode::render call is served by an empty
// stub, as in the ModularSkinnedMeshSceneNode test. The graph destructor calls GraphSparse<PFGInnerEdge>::clear, which
// is linked from the game-app sfc source (g1-game-app-sfc-57f3bb-1.cpp). The PFGOuterGraph destructors are not exercised,
// because clear() for PFGOuterEdge is not in the tree.

#include <cstdio>

#include "dh2/MeshSceneNode.hpp"
#include "dh2/PFGInnerDirectEdge.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/sfc/math/graph/GraphSparse.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"

namespace glitch::collada {
// Stub for the engine body that the base's CMeshSceneNode render specialization calls. Not linked in this test.
void CMeshSceneNode::render(void* /*context*/) {}
}  // namespace glitch::collada

class PFGOuterEdge;

namespace sfc {
namespace math {
namespace graph {
// Link shim. GraphSparse<PFGOuterEdge>::clear is partial in game-app (PFGOuterEdge is not in the tree yet), and the
// PFGOuterGraph destructors in the batch source reach it. This test never destroys a PFGOuterGraph, so an empty body
// is enough to link.
template <>
void GraphSparse<PFGOuterEdge>::clear() {}
}  // namespace graph
}  // namespace math
}  // namespace sfc

namespace {

int failures = 0;

#define CHECK(cond)                                                \
    do {                                                           \
        if (!(cond)) {                                             \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);    \
            ++failures;                                            \
        }                                                          \
    } while (0)

using InNode = sfc::math::graph::GraphSparse<PFGInnerEdge>::_InNode;

bool samePoint(const Point3D<float>& p, float x, float y, float z) {
    return p.X == x && p.Y == y && p.Z == z;
}

void testDirectEdge() {
    PFGInnerDirectEdge edge;
    edge.m_source = Point3D<float>{1.0f, 2.0f, 3.0f};
    edge.m_destination = Point3D<float>{4.0f, 5.0f, 6.0f};

    CHECK(edge.GetSource() == &edge.m_source);
    CHECK(edge.GetDestination() == &edge.m_destination);
    CHECK(samePoint(*edge.GetSource(), 1.0f, 2.0f, 3.0f));
    CHECK(samePoint(*edge.GetDestination(), 4.0f, 5.0f, 6.0f));

    // Through the base type the override is reached, not PFGInnerEdge's node-based getter.
    const PFGInnerEdge* base = &edge;
    CHECK(base->GetSource() == &edge.m_source);
    CHECK(base->GetDestination() == &edge.m_destination);
}

void testEdgeNodes() {
    PFGInnerNode from;
    PFGInnerNode to;
    from.m_position = Point3D<float>{1.0f, 0.0f, 0.0f};
    to.m_position = Point3D<float>{0.0f, 2.0f, 0.0f};

    PFGInnerEdge edge;
    edge.m_from = &from;
    edge.m_to = &to;

    CHECK(edge.GetSource() == &from.m_position);
    CHECK(edge.GetDestination() == &to.m_position);
    CHECK(samePoint(*edge.GetSource(), 1.0f, 0.0f, 0.0f));
    CHECK(samePoint(*edge.GetDestination(), 0.0f, 2.0f, 0.0f));

    // Read through the base type, the getters still take the node positions.
    const PFGInnerEdge* base = &edge;
    CHECK(base->GetSource() == &from.m_position);
    CHECK(base->GetDestination() == &to.m_position);
}

void testMemUsage() {
    PFGInnerGraph graph;
    CHECK(graph.DBG_GetMemUsage() == 0);

    // Node 1 has two outgoing edges, node 2 has one and node 3 has none.
    // Each node adds 24 per edge plus 44: (2 * 24 + 44) + (1 * 24 + 44) + (0 + 44) = 204.
    InNode* a = new InNode();
    a->m_id = 1;
    graph.m_nodes[1] = a;
    InNode* b = new InNode();
    b->m_id = 2;
    graph.m_nodes[2] = b;
    InNode* c = new InNode();
    c->m_id = 3;
    graph.m_nodes[3] = c;

    a->m_edges[2] = new PFGInnerEdge();
    a->m_edges[3] = new PFGInnerEdge();
    b->m_edges[3] = new PFGInnerEdge();

    CHECK(graph.DBG_GetMemUsage() == 204);

    // Destroying the graph calls clear(), which deletes the edges and the nodes.
}

void testMeshSceneNode() {
    MeshSceneNode node(boost::intrusive_ptr<glitch::collada::IMesh>(nullptr));
    CHECK(node.unk_140 == 1);
    CHECK(node.m_renderEnabled);
}

}  // namespace

int main() {
    testDirectEdge();
    testEdgeNodes();
    testMemUsage();
    testMeshSceneNode();

    if (failures == 0) {
        std::printf("pack2-adf7ed-0 test: all checks passed\n");
        return 0;
    }
    std::printf("pack2-adf7ed-0 test: %d failure(s)\n", failures);
    return 1;
}
