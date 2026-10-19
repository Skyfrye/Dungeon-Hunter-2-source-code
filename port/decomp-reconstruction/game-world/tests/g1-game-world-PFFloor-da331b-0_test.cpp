// Test for batch g1-game-world-PFFloor-da331b-0.
//
// The batch source reaches engine symbols at link time: the allocator, the graph's addEdge, the scene nodes, the triangle
// selector and UserProperties. The stubs below define them. None of them is on a path this test takes except addEdge,
// which records the node ids it is given so the edge calls can be checked.
//
// Covered: the CompPos comparator, the constructor's defaults, _PostLoad, _GetNodeAt, _CreateEdge (distance, clearance,
// wall flag), _CreateNodes (edges and invalid-node records, with the node map filled in), and _Link (link sets and the
// edges between two floors). Not covered: the scene queries (GetCollisionAt is partial), _DBG_Draw (partial), the node
// creation in _CreateNode (partial, needs the node counter) and _LoadNavMesh (needs the scene).

#include <cstdio>
#include <cstdlib>
#include <utility>
#include <vector>

#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/UserProperties.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "glitch-scene-collada-gui/scene/COctTreeTriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

// ---- Link-time stubs for the engine symbols the batch source references -------------------------------------------
int gAssertLevel = 0;
void CustomFree(void* p) { std::free(p); }
void* CustomAlloc(unsigned int size) { return std::malloc(size); }
void* CopyMeshSceneNode(glitch::scene::IMeshSceneNode*) { return nullptr; }
UserProperties::UserProperties(const char*) {}
UserProperties::~UserProperties() {}
glitch::scene::ISceneNode* glitch::scene::ISceneNode::getParent() const { return nullptr; }
glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const { return {}; }
// The selector chain the batch source reaches: the constructor of COctTreeTriangleSelector, its base, and the out-of-line
// virtuals that give both classes their vtables. The bodies do nothing; the tests never build a selector.
glitch::scene::CTriangleSelector::CTriangleSelector(const glitch::scene::ISceneNode*, bool) {}
glitch::scene::CTriangleSelector::~CTriangleSelector() {}
int glitch::scene::CTriangleSelector::getTriangleCount() const { return 0; }
void glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&,
                                                    const glitch::core::CMatrix4<float>*) const {}
void glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&,
                                                    const glitch::core::aabbox3d<float>&,
                                                    const glitch::core::CMatrix4<float>*) const {}
void glitch::scene::CTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&,
                                                    const glitch::core::line3d<float>&,
                                                    const glitch::core::CMatrix4<float>*) const {}
glitch::scene::COctTreeTriangleSelector::COctTreeTriangleSelector(const glitch::scene::IMesh*,
                                                                  const glitch::scene::ISceneNode* node, int,
                                                                  bool bake)
    : glitch::scene::CTriangleSelector(node, bake) {}
glitch::scene::COctTreeTriangleSelector::~COctTreeTriangleSelector() {}
void glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&,
                                                           const glitch::core::aabbox3d<float>&,
                                                           const glitch::core::CMatrix4<float>*) const {}
void glitch::scene::COctTreeTriangleSelector::getTriangles(glitch::core::triangle3d<float>*, int, int&,
                                                           const glitch::core::line3d<float>&,
                                                           const glitch::core::CMatrix4<float>*) const {}
// The division by length is not in the tree yet; the tests never reach it.
template <>
Point3D<float>& Point3D<float>::normalize() {
    return *this;
}
PFGInnerEdge::~PFGInnerEdge() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return nullptr; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return nullptr; }
PFGInnerNode::~PFGInnerNode() {}

namespace {

// Every addEdge call, as the (from, to) node ids it was given.
std::vector<std::pair<unsigned int, unsigned int>> g_edgeCalls;

}  // namespace

template <>
PFGInnerEdge* sfc::math::graph::GraphSparse<PFGInnerEdge>::addEdge(unsigned int from, unsigned int to) {
    g_edgeCalls.emplace_back(from, to);
    return new PFGInnerEdge();
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// The graph is only passed through to addEdge, which ignores its object. An aligned block stands in for it, and is
// never constructed or used as an object.
PFGInnerGraph* Graph() {
    alignas(PFGInnerGraph) static unsigned char storage[64];
    return reinterpret_cast<PFGInnerGraph*>(storage);
}

PFGInnerNode* MakeNode(unsigned int id, float x, float y, float z, float width) {
    PFGInnerNode* node = new PFGInnerNode();
    node->m_id = id;
    node->m_position = Point3D<float>{x, y, z};
    node->m_width = width;
    node->m_length = width;
    node->m_floor = nullptr;
    return node;
}

PFFloor::InvalidNode MakeRecord(Point3D<float> position, Point3D<float> source, Point3D<float> destination,
                                PFGInnerNode* n0, PFGInnerNode* n1) {
    PFFloor::InvalidNode record{};
    record.m_position = position;
    record.m_source = source;
    record.m_destination = destination;
    record.m_neighbours[0] = n0;
    record.m_neighbours[1] = n1;
    record.m_normal = Point3D<float>{0.0f, 0.0f, 1.0f};
    return record;
}

bool SamePoint(const Point3D<float>& a, const Point3D<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

// ---- CompPos -------------------------------------------------------------------------------------------------------
void TestCompPos() {
    // X differs by less than 0.0001, so Y is equal and Z decides: 3 > 0.
    const CompPos a(Point3D<float>{1.0f, 2.0f, 3.0f});
    const CompPos b(Point3D<float>{1.00005f, 2.0f, 0.0f});
    EXPECT(!(a < b));
    EXPECT(b < a);

    // X differs by 0.001, which is at least 0.0001: X decides, whatever Y and Z are.
    const CompPos c(Point3D<float>{1.0f, 0.0f, 0.0f});
    const CompPos d(Point3D<float>{1.001f, 0.0f, 0.0f});
    EXPECT(c < d);
    EXPECT(!(d < c));

    // X equal, Y within 0.0001: Z decides, 3 < 5.
    const CompPos e(Point3D<float>{1.0f, 2.0f, 5.0f});
    const CompPos f(Point3D<float>{1.0f, 2.00005f, 3.0f});
    EXPECT(f < e);
    EXPECT(!(e < f));

    // X equal, Y differs by 0.001: Y decides, and Z is ignored.
    const CompPos g(Point3D<float>{1.0f, 2.001f, 0.0f});
    EXPECT(e < g);
    EXPECT(!(g < e));
}

// ---- Constructor and _PostLoad -------------------------------------------------------------------------------------
void TestConstructorAndPostLoad() {
    PFFloor floor("bridge", nullptr, nullptr, Graph(), 1u);
    EXPECT(floor.m_name == "bridge");
    EXPECT(floor.m_room == nullptr);
    EXPECT(floor.m_objectFlags == 1u);
    EXPECT(floor.m_typeMask == 0u);
    EXPECT(floor.m_floorTypes.empty());
    EXPECT(floor.m_navMesh == nullptr);
    EXPECT(floor.m_boundsMin.X == 0.0f && floor.m_boundsMin.Y == 0.0f && floor.m_boundsMin.Z == 0.0f);
    EXPECT(floor.m_boundsMax.X == 0.0f && floor.m_boundsMax.Y == 0.0f && floor.m_boundsMax.Z == 0.0f);
    EXPECT(floor.m_position.X == 0.0f && floor.m_position.Y == 0.0f && floor.m_position.Z == 0.0f);
    EXPECT(floor.m_triangles == nullptr && floor.m_triangleCount == 0);
    EXPECT(floor.m_oGraph == nullptr);
    EXPECT(floor.m_iGraph == Graph());
    EXPECT(floor.m_linkedFloors.empty());
    EXPECT(floor.m_nodeByPos.empty());
    EXPECT(floor.m_invalidNodes.empty() && floor.unk_b4.empty() && floor.m_edges.empty());

    floor.m_invalidNodes.push_back(PFFloor::InvalidNode{});
    floor.unk_b4.push_back(Point3D<float>{});
    floor._PostLoad();
    EXPECT(floor.m_invalidNodes.empty());
    EXPECT(floor.unk_b4.empty());
}

// ---- _GetNodeAt ----------------------------------------------------------------------------------------------------
void TestGetNodeAt() {
    PFFloor floor("lookup", nullptr, nullptr, Graph(), 0u);
    EXPECT(floor._GetNodeAt(Point3D<float>{1.0f, 2.0f, 3.0f}) == nullptr);

    PFGInnerNode* node = MakeNode(7, 1.0f, 2.0f, 3.0f, 1.0f);
    floor.m_nodeByPos[CompPos(Point3D<float>{1.0f, 2.0f, 3.0f})] = node;
    EXPECT(floor._GetNodeAt(Point3D<float>{1.0f, 2.0f, 3.0f}) == node);
    EXPECT(floor._GetNodeAt(Point3D<float>{1.00005f, 2.0f, 3.0f}) == node);  // within 0.0001 on X and Y
    EXPECT(floor._GetNodeAt(Point3D<float>{1.5f, 2.0f, 3.0f}) == nullptr);

    const PFFloor& constFloor = floor;
    EXPECT(constFloor._GetNodeAt(Point3D<float>{1.0f, 2.0f, 3.0f}) == node);
}

// ---- _CreateEdge ---------------------------------------------------------------------------------------------------
void TestCreateEdge() {
    PFFloor floor("edges", nullptr, nullptr, Graph(), 0u);
    PFGInnerNode* from = MakeNode(1, 0.0f, 0.0f, 0.0f, 2.0f);
    PFGInnerNode* to = MakeNode(2, 3.0f, 4.0f, 0.0f, 1.0f);

    g_edgeCalls.clear();
    PFGInnerEdge* edge = floor._CreateEdge(from, to);
    EXPECT(edge != nullptr);
    EXPECT(g_edgeCalls.size() == 1);
    EXPECT(!g_edgeCalls.empty() && g_edgeCalls[0] == std::make_pair(1u, 2u));
    if (edge != nullptr) {
        EXPECT(edge->m_distance == 5.0f);       // 3-4-5
        EXPECT(edge->m_clearance == 1.0f);      // the smaller of the widths 2 and 1
        EXPECT(edge->getWeight() == 5.0f);      // the weight is the distance
    }

    PFGInnerEdge* back = floor._CreateEdge(to, from);
    EXPECT(back != nullptr && back->m_clearance == 1.0f);

    EXPECT(floor._CreateEdge(nullptr, to) == nullptr);
    EXPECT(floor._CreateEdge(from, nullptr) == nullptr);

    PFFloor wall("wall", nullptr, nullptr, Graph(), 0x2000000u);
    g_edgeCalls.clear();
    EXPECT(wall._CreateEdge(from, to) == nullptr);
    EXPECT(g_edgeCalls.empty());
}

// ---- _CreateNodes --------------------------------------------------------------------------------------------------
// The triangle A (0,0,0), B (2,0,0), C (0,2,0) has the midpoints AB (1,0,0), AC (0,1,0) and BC (1,1,0).
glitch::core::triangle3d<float> MakeTriangle() {
    glitch::core::triangle3d<float> tri{};
    tri.A = glitch::core::vector3d<float>{0.0f, 0.0f, 0.0f};
    tri.B = glitch::core::vector3d<float>{2.0f, 0.0f, 0.0f};
    tri.C = glitch::core::vector3d<float>{0.0f, 2.0f, 0.0f};
    return tri;
}

void TestCreateNodes() {
    const glitch::core::triangle3d<float> tri = MakeTriangle();

    // All three edges already have nodes: six directed edges are made, no records are kept.
    {
        PFFloor floor("full", nullptr, nullptr, Graph(), 0u);
        PFGInnerNode* ab = MakeNode(10, 1.0f, 0.0f, 0.0f, 1.0f);
        PFGInnerNode* ac = MakeNode(11, 0.0f, 1.0f, 0.0f, 1.0f);
        PFGInnerNode* bc = MakeNode(12, 1.0f, 1.0f, 0.0f, 1.0f);
        floor.m_nodeByPos[CompPos(Point3D<float>{1.0f, 0.0f, 0.0f})] = ab;
        floor.m_nodeByPos[CompPos(Point3D<float>{0.0f, 1.0f, 0.0f})] = ac;
        floor.m_nodeByPos[CompPos(Point3D<float>{1.0f, 1.0f, 0.0f})] = bc;

        g_edgeCalls.clear();
        floor._CreateNodes(const_cast<glitch::core::triangle3d<float>*>(&tri), 1);
        EXPECT(floor.m_invalidNodes.empty());
        EXPECT(floor.m_edges.size() == 3);  // one stored edge per pair in the order AB-AC, AB-BC, AC-BC, reversed
        const std::vector<std::pair<unsigned int, unsigned int>> expected = {
            {10, 11}, {11, 10}, {10, 12}, {12, 10}, {11, 12}, {12, 11}};
        EXPECT(g_edgeCalls == expected);
    }

    // Only AB and AC have nodes: BC is missing (the partial _CreateNode returns null for it), so one record is kept
    // for BC, with the midpoint of B and C, source B, destination C, and the neighbours AB and AC.
    {
        PFFloor floor("partial", nullptr, nullptr, Graph(), 0u);
        PFGInnerNode* ab = MakeNode(10, 1.0f, 0.0f, 0.0f, 1.0f);
        PFGInnerNode* ac = MakeNode(11, 0.0f, 1.0f, 0.0f, 1.0f);
        floor.m_nodeByPos[CompPos(Point3D<float>{1.0f, 0.0f, 0.0f})] = ab;
        floor.m_nodeByPos[CompPos(Point3D<float>{0.0f, 1.0f, 0.0f})] = ac;

        g_edgeCalls.clear();
        floor._CreateNodes(const_cast<glitch::core::triangle3d<float>*>(&tri), 1);
        EXPECT(floor.m_invalidNodes.size() == 1);
        if (floor.m_invalidNodes.size() == 1) {
            const PFFloor::InvalidNode& record = floor.m_invalidNodes[0];
            EXPECT(SamePoint(record.m_position, Point3D<float>{1.0f, 1.0f, 0.0f}));
            EXPECT(SamePoint(record.m_source, Point3D<float>{2.0f, 0.0f, 0.0f}));
            EXPECT(SamePoint(record.m_destination, Point3D<float>{0.0f, 2.0f, 0.0f}));
            EXPECT(record.m_neighbours[0] == ab);
            EXPECT(record.m_neighbours[1] == ac);
        }
        // Only the edges between existing nodes are made: AB to AC, and AC to AB. The three stored edges are null where a
        // node is missing.
        const std::vector<std::pair<unsigned int, unsigned int>> expected = {{10, 11}, {11, 10}};
        EXPECT(g_edgeCalls == expected);
        EXPECT(floor.m_edges.size() == 3);
        if (floor.m_edges.size() == 3) {
            EXPECT(floor.m_edges[0] != nullptr);
            EXPECT(floor.m_edges[1] == nullptr);
            EXPECT(floor.m_edges[2] == nullptr);
        }
    }

    // A void floor makes nothing.
    {
        PFFloor floor("void", nullptr, nullptr, Graph(), 0x1000000u);
        g_edgeCalls.clear();
        floor._CreateNodes(const_cast<glitch::core::triangle3d<float>*>(&tri), 1);
        EXPECT(floor.m_invalidNodes.empty());
        EXPECT(floor.m_edges.empty());
        EXPECT(g_edgeCalls.empty());
    }
}

// ---- _Link ---------------------------------------------------------------------------------------------------------
void TestLink() {
    PFFloor own("own", nullptr, nullptr, Graph(), 0u);
    PFFloor other("other", nullptr, nullptr, Graph(), 0u);
    own.m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
    own.m_boundsMax = Point3D<float>{10.0f, 10.0f, 10.0f};
    other.m_boundsMin = Point3D<float>{0.0f, 0.0f, 0.0f};
    other.m_boundsMax = Point3D<float>{10.0f, 10.0f, 10.0f};

    PFGInnerNode* n0 = MakeNode(20, 4.0f, 5.0f, 5.0f, 1.0f);
    PFGInnerNode* n1 = MakeNode(21, 6.0f, 5.0f, 5.0f, 1.0f);
    PFGInnerNode* n2 = MakeNode(22, 4.0f, 5.0f, 5.0f, 1.0f);
    PFGInnerNode* n3 = MakeNode(23, 6.0f, 5.0f, 5.0f, 1.0f);
    own.m_invalidNodes.push_back(MakeRecord(Point3D<float>{5.0f, 5.0f, 5.0f}, Point3D<float>{4.0f, 5.0f, 5.0f},
                                            Point3D<float>{6.0f, 5.0f, 5.0f}, n0, n1));
    other.m_invalidNodes.push_back(MakeRecord(Point3D<float>{5.0f, 5.0f, 5.0f}, Point3D<float>{4.0f, 5.0f, 5.0f},
                                              Point3D<float>{6.0f, 5.0f, 5.0f}, n2, n3));

    // Both floors already hold a node at the record midpoint, so _CreateNode returns it.
    PFGInnerNode* ownNode = MakeNode(30, 5.0f, 5.0f, 5.0f, 1.0f);
    PFGInnerNode* otherNode = MakeNode(31, 5.0f, 5.0f, 5.0f, 1.0f);
    own.m_nodeByPos[CompPos(Point3D<float>{5.0f, 5.0f, 5.0f})] = ownNode;
    other.m_nodeByPos[CompPos(Point3D<float>{5.0f, 5.0f, 5.0f})] = otherNode;

    // A flagged floor links with nothing.
    {
        PFFloor flagged("flagged", nullptr, nullptr, Graph(), 0x4000000u);
        own._Link(&flagged);
        EXPECT(own.m_linkedFloors.empty());
        EXPECT(flagged.m_linkedFloors.empty());
    }

    g_edgeCalls.clear();
    own._Link(&other);
    EXPECT(own.m_linkedFloors.count(&other) == 1);
    EXPECT(other.m_linkedFloors.count(&own) == 1);
    // Four edges on each floor: the pair of this floor's record, and the cross-floor edges. The other floor's edges
    // are made once, on the first record of this floor. Sixteen addEdge calls in all.
    EXPECT(own.m_edges.size() == 4);
    EXPECT(other.m_edges.size() == 4);
    EXPECT(g_edgeCalls.size() == 16);
}

}  // namespace

int main() {
    TestCompPos();
    TestConstructorAndPostLoad();
    TestGetNodeAt();
    TestCreateEdge();
    TestCreateNodes();
    TestLink();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("PFFloor tests passed\n");
    return 0;
}
