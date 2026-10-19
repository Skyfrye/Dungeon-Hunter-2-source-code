// Batch g1-game-world-PFFloor-da331b-0: the PFFloor ray and height queries, the node lookup, the debug draw, the two
// destructors and the constructor, the edge and node builders, the link between two floors, and the nav-mesh loader.
// Declarations come from dh2/PFFloor.hpp.
//
// Layout facts used here (original 32-bit offsets, named in dh2/PFFloor.hpp, dh2/PFGInnerNode.hpp, dh2/PFGInnerEdge.hpp):
//   PFFloor      +0x20 m_objectFlags  +0x24 m_typeMask  +0x40 m_navMesh  +0x68 m_triangles  +0x6c m_triangleCount
//   PFFloor      +0x70 m_oGraph  +0x74 m_iGraph  +0x78 m_linkedFloors  +0x90 m_nodeByPos  +0xa8 m_invalidNodes  +0xc0 m_edges
//   PFGInnerNode +0x08 m_position  +0x14 m_direction  +0x20 m_width  +0x24 m_length  +0x28 m_floor
//   PFGInnerEdge +0x10 m_distance  +0x14 m_clearance
//

#include "dh2/PFFloor.hpp"

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <utility>
#include <vector>

#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerGraph.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/UserProperties.hpp"
#include "dh2/Application.hpp"                                  // ApplicationGetInstance
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/scene_nodes.hpp"                           // CopyMeshSceneNode (0x50f89c)
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/os/device.hpp"                         // glitch::IDevice::videoDriver (+0x10)
#include "glitch-video/material.hpp"                            // CMaterial::getTechnique
#include "glitch-video/material_renderer.hpp"                   // CMaterialRenderer::materialRendererType (+0x2e)
#include "glitch-video/material_renderer_manager.hpp"           // CMaterialRendererManager (+0xdc of the driver)
#include "glitch-video/video_driver.hpp"                        // IVideoDriver (videoDriver, setMaterial, draw3D*)
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"    // IMeshSceneNode, CMeshSceneNode
#include "glitch-scene-collada-gui/scene/COctTreeTriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-shared/glitch_core.hpp"                        // triangle3d, aabbox3d, vector3d

// Engine helpers, declared here as the other game sources do: core-platform/memory.hpp is not included, because its
// glitch_core stand-in clashes with the glitch-shared types that the scene headers use.
extern int gAssertLevel;                 // core-platform/memory.hpp
void CustomFree(void* p);                // 0x310440
void* CustomAlloc(unsigned int size);    // 0x310454

namespace {

// The ASSERT of PFFloor.cpp (the original's source path). Level 2 stops the program; level 1 prints the message.
const char kFloorSourceFile[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Modules\\PathFinding\\PFFloor.cpp";

void FloorAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();  // the original writes to address 0 to force a crash
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kFloorSourceFile, line);
    }
}

// The face normal of a triangle, as the original computes it in both _CreateNodes (0x520588) and GetFloorHeightAt
// (0x51badc), term by term with u = B - A and w = C - A:
//   n.X = (w.Z * -u.Y) + (u.Z * w.Y)
//   n.Y = (w.X * -u.Z) + (u.X * w.Z)
//   n.Z = (w.Y * -u.X) + (u.Y * w.X)
Point3D<float> TriangleNormal(const glitch::core::triangle3d<float>& tri) {
    const float ux = tri.B.X - tri.A.X;
    const float uy = tri.B.Y - tri.A.Y;
    const float uz = tri.B.Z - tri.A.Z;
    const float wx = tri.C.X - tri.A.X;
    const float wy = tri.C.Y - tri.A.Y;
    const float wz = tri.C.Z - tri.A.Z;
    return Point3D<float>{(wz * -uy) + (uz * wy), (wx * -uz) + (ux * wz), (wy * -ux) + (uy * wx)};
}

// A triangle-edge record that _CreateNodes keeps when the edge has no node. Its midpoint, end points and normal are
// filled in; the two neighbour nodes are the other two edges of the triangle, which may be null too.
PFFloor::InvalidNode MakeInvalidNode(const Point3D<float>& source, const Point3D<float>& destination,
                                     PFGInnerNode* neighbour0, PFGInnerNode* neighbour1,
                                     const Point3D<float>& normal) {
    PFFloor::InvalidNode record{};
    record.m_position = Point3D<float>{(source.X + destination.X) * 0.5f, (source.Y + destination.Y) * 0.5f,
                                       (source.Z + destination.Z) * 0.5f};
    record.m_source = source;
    record.m_destination = destination;
    record.m_neighbours[0] = neighbour0;
    record.m_neighbours[1] = neighbour1;
    record.m_normal = normal;
    return record;
}

// The packed debug colour of a floor, as _DBG_Draw builds it (low byte red, then green, blue, and 0xff on top):
//   void or wall (typeMask bits 0x03000000): red 127, green 0, blue 0.
//   otherwise, flags bit 0 set: flags bit 1 gives yellow (255, 255, 0); typeMask bit 1 (water) gives (0, 127, 255);
//     the rest is grey, 127 when typeMask bit 0 (hole) is set and 255 when not.
//   otherwise (flags bit 0 clear): orange (255, 127, 0).
std::uint32_t FloorDebugColour(std::uint32_t typeMask, std::uint32_t objectFlags) {
    std::uint32_t red = 0;
    std::uint32_t green = 0;
    std::uint32_t blue = 0;
    if ((typeMask & 0x3000000u) != 0) {
        red = 127;
    } else if ((objectFlags & 1u) != 0) {
        if ((objectFlags & 2u) != 0) {
            red = 255;
            green = 255;
        } else if ((typeMask & 2u) != 0) {
            green = 127;
            blue = 255;
        } else {
            red = green = blue = ((typeMask & 1u) != 0) ? 127u : 255u;
        }
    } else {
        red = 255;
        green = 127;
    }
    return 0xFF000000u | (blue << 16) | (green << 8) | red;
}

}  // namespace

// 0x51b874 _ZN7PFFloor14GetCollisionAtERK7Point3DIfES3_RS1_
// Verified against the listing (0x51b874): the line start..end is cast against the triangle selector of the nav
// mesh (m_navMesh->getTriangleSelector(), vtable +0xb0) through the scene collision manager (the device's scene
// manager +0x2c reached from ApplicationGetInstance().m_device +0x1c, getCollisionPoint at vtable +0x0c, the first
// ISceneCollisionManager slot after the two destructors). On a hit the point is written to hit and true is returned.
bool PFFloor::GetCollisionAt(const Point3D<float>& start, const Point3D<float>& end, Point3D<float>& hit) {
    glitch::core::line3d<float> line;
    line.start = glitch::core::vector3d<float>{start.X, start.Y, start.Z};
    line.end = glitch::core::vector3d<float>{end.X, end.Y, end.Z};
    glitch::core::vector3d<float> point{0.0f, 0.0f, 0.0f};
    glitch::core::triangle3d<float> triangle{};
    if (DeviceSceneManager()->collisionManager->getCollisionPoint(line, m_navMesh->getTriangleSelector(), point, triangle)) {
        hit = Point3D<float>{point.X, point.Y, point.Z};
        return true;
    }
    return false;
}

// 0x51b96c _ZN7PFFloor14GetCollisionAtERK7Point3DIfERS1_RN6glitch4core10triangle3dIfEE
// Verified against the listing (0x51b96c): the bounding box of the floor is tested first (six inclusive compares). A
// point outside it, or past any of its faces, gives false. Inside, the vertical line (x, y, z + 1000) .. (x, y, z - 1000) is cast against the nav mesh's triangle
// selector through the scene collision manager (the device's scene manager +0x2c); the hit point and the triangle are returned.
bool PFFloor::GetCollisionAt(const Point3D<float>& start, Point3D<float>& hit,
                             glitch::core::triangle3d<float>& triangle) {
    if (m_boundsMin.X > start.X) {
        return false;
    }
    if (start.X > m_boundsMax.X) {
        return false;
    }
    if (m_boundsMin.Y > start.Y) {
        return false;
    }
    if (start.Y > m_boundsMax.Y) {
        return false;
    }
    if (m_boundsMin.Z > start.Z) {
        return false;
    }
    if (start.Z > m_boundsMax.Z) {
        return false;
    }
    glitch::core::line3d<float> line;
    line.start = glitch::core::vector3d<float>{start.X, start.Y, start.Z + 1000.0f};
    line.end = glitch::core::vector3d<float>{start.X, start.Y, start.Z - 1000.0f};
    glitch::core::vector3d<float> point{0.0f, 0.0f, 0.0f};
    if (!DeviceSceneManager()->collisionManager->getCollisionPoint(line, m_navMesh->getTriangleSelector(), point, triangle)) {
        return false;
    }
    hit = Point3D<float>{point.X, point.Y, point.Z};
    return true;
}

// 0x51badc _ZN7PFFloor16GetFloorHeightAtERK7Point3DIfEPfPS1_
// Verified against the listing (0x51badc): the ray query above gives the hit point and its triangle. height receives the hit Z and normal the triangle's normal (TriangleNormal). Either pointer may be null. The result is the query's result.
bool PFFloor::GetFloorHeightAt(const Point3D<float>& point, float* height, Point3D<float>* normal) {
    Point3D<float> hit{};
    glitch::core::triangle3d<float> triangle{};
    if (!GetCollisionAt(point, hit, triangle)) {
        return false;
    }
    if (height != nullptr) {
        *height = hit.Z;
    }
    if (normal != nullptr) {
        *normal = TriangleNormal(triangle);
    }
    return true;
}

// 0x51bee8 _ZN7PFFloor9_PostLoadEv
// Both lists are emptied: the invalid-node records and the unk_b4 list. The original drops the records with a single
// erase of the whole range and resets the end of unk_b4 to its start, which is what clear does for these POD elements.
void PFFloor::_PostLoad() {
    m_invalidNodes.clear();
    unk_b4.clear();
}

// 0x51c0bc _ZNK7PFFloor10_GetNodeAtERK7Point3DIfE
// The node entered for the midpoint, or null. The tree is searched with the CompPos comparator.
PFGInnerNode* PFFloor::_GetNodeAt(const Point3D<float>& point) const {
    const auto found = m_nodeByPos.find(point);
    return found == m_nodeByPos.end() ? nullptr : found->second;
}

// 0x51c0dc _ZN7PFFloor10_GetNodeAtERK7Point3DIfE
// The non-const overload has the same body as the const one (0x51c0bc).
PFGInnerNode* PFFloor::_GetNodeAt(const Point3D<float>& point) {
    const auto found = m_nodeByPos.find(point);
    return found == m_nodeByPos.end() ? nullptr : found->second;
}

// 0x51c2c0 _ZN7PFFloor9_DBG_DrawEv
// Reconstructed (r3b-w2) from the listing, with the same material set-up the already-reconstructed
// ObjectManager::Draw3D body makes. The driver is ApplicationGetInstance().m_device->videoDriver (glitch::IDevice
// +0x10, 0x51c2e0 LDR [R3,#0x10]) and its material renderer manager is driver +0xdc (0x51c2e8). The entry's
// renderer type is the 0xFFFF default that createMaterialRenderer replaces (0x51c2ec LDRH [R6,#0x2E] against
// MOVW #0xFFFF); the port takes the id createMaterialRenderer(1) returns, exactly as ObjectManager::Draw3D does,
// then getMaterialInstance(id, true) (0x51c30c: R1 = the type id, R3 = 1) and material->getTechnique(), else 0xff.
// Every triangle of m_triangles (m_triangleCount of them) is drawn with draw3DTriangle in
// FloorDebugColour(m_typeMask, m_objectFlags); every non-null edge of m_edges with draw3DLine from its
// GetSource() to its GetDestination() in 0xFF00FF00. The original's m_edges is 12-byte records whose +4 word is
// the first edge of the run, so the port iterates its own PFGInnerEdge* vector instead.
void PFFloor::_DBG_Draw() {
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
    const uint16_t renderer =
        renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));  // cached built-in id
    boost::intrusive_ptr<glitch::video::CMaterial> material = renderers->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 0xff;
    driver->setMaterial(material, technique, nullptr);

    glitch::video::SColor triangleColour;
    triangleColour.color = FloorDebugColour(m_typeMask, m_objectFlags);
    for (int i = 0; i < m_triangleCount; ++i) {
        driver->draw3DTriangle(m_triangles[i], triangleColour);  // vtable +0x24
    }

    glitch::video::SColor edgeColour;
    edgeColour.color = 0xFF00FF00u;
    for (PFGInnerEdge* edge : m_edges) {
        if (edge == nullptr) {
            continue;
        }
        const Point3D<float>* from = edge->GetSource();
        const Point3D<float>* to = edge->GetDestination();
        const glitch::core::vector3d<float> start{from->X, from->Y, from->Z};
        const glitch::core::vector3d<float> end{to->X, to->Y, to->Z};
        driver->draw3DLine(start, end, edgeColour);  // vtable +0x1c
    }
}

// 0x51cca4 _ZN7PFFloorD1Ev
// 0x51ce3c _ZN7PFFloorD2Ev
// Both addresses hold the same body (complete object and base object; PFFloor has no virtual base). The vptr reset is
// done by the C++ destructor. The triangle array is freed (CustomFree, as the original frees it) and the nav-mesh copy
// is released through its IReferenceCounted base. The other members are destroyed in reverse declaration order, which
// is the original's order: m_edges storage, unk_b4, m_invalidNodes, m_nodeByPos, m_linkedFloors, m_floorTypes, m_name.
PFFloor::~PFFloor() {
    if (m_triangles != nullptr) {
        CustomFree(m_triangles);
        m_triangles = nullptr;
    }
    if (m_navMesh != nullptr) {
        m_navMesh->drop();
        m_navMesh = nullptr;
    }
}

// 0x51ce20 _ZN7PFFloorD0Ev
// Not written: the compiler-generated deleting destructor. It runs ~PFFloor and then CustomFree(this), which a delete
// expression of a PFFloor produces.

// 0x51d1b4 _ZN7PFFloorC1EPKcP6PFRoomP13PFGOuterGraphP13PFGInnerGraphj
// 0x51d40c _ZN7PFFloorC2EPKcP6PFRoomP13PFGOuterGraphP13PFGInnerGraphj
// Both addresses hold the same body. The members are set to their defaults, in the original's order: name, room, object
// flags, type mask (0), the empty floor-types string, no nav mesh, zero bounds, position, triangles and count, the two
// graphs, and empty sets, maps and vectors. The three asserts name m_room, m_oGraph and m_iGraph, as the original does.
PFFloor::PFFloor(const char* name, PFRoom* room, PFGOuterGraph* oGraph, PFGInnerGraph* iGraph,
                 std::uint32_t objectFlags)
    : m_name(name),
      m_room(room),
      m_objectFlags(objectFlags),
      m_typeMask(0),
      m_floorTypes(),
      m_navMesh(nullptr),
      m_boundsMin{},
      m_boundsMax{},
      m_position{},
      m_triangles(nullptr),
      m_triangleCount(0),
      m_oGraph(oGraph),
      m_iGraph(iGraph) {
    if (m_room == nullptr) {
        FloorAssert("m_room", 34);
    }
    if (m_oGraph == nullptr) {
        FloorAssert("m_oGraph", 35);
    }
    if (m_iGraph == nullptr) {
        FloorAssert("m_iGraph", 36);
    }
}

// 0x51e98c _ZN7PFFloor11_CreateEdgeEP12PFGInnerNodeS1_
// No edge is made on a wall floor (object flags 0x02000000) or with a missing end. The edge goes from the first node to
// the second, in the graph's addEdge. Its weight and m_distance are the 3D distance between the two node centres, and
// its m_clearance is the smaller of the two node widths (the second width wins only when it is strictly smaller).
PFGInnerEdge* PFFloor::_CreateEdge(PFGInnerNode* from, PFGInnerNode* to) {
    if ((m_objectFlags & 0x2000000u) != 0) {
        return nullptr;
    }
    if (from == nullptr || to == nullptr) {
        return nullptr;
    }
    PFGInnerEdge* edge = m_iGraph->addEdge(from->getID(), to->getID());
    const float dx = to->m_position.X - from->m_position.X;
    const float dy = to->m_position.Y - from->m_position.Y;
    const float dz = to->m_position.Z - from->m_position.Z;
    const float distance = std::sqrt((dx * dx + dy * dy) + dz * dz);
    float clearance = to->m_width;
    if (clearance >= from->m_width) {
        clearance = from->m_width;
    }
    edge->m_distance = distance;
    edge->m_clearance = clearance;
    edge->setWeight(distance);
    return edge;
}

// 0x51fa64 _ZN7PFFloor11_CreateNodeERK7Point3DIfES3_S3_b
// Verified against the listing (0x51fa64). Nothing is made on a void floor (object flag 0x01000000). The midpoint of a and b is the key: an existing node at that midpoint is returned. Otherwise the side test runs unless force is set: the two points one
// unit from the midpoint, along the unit vector perpendicular to the edge in the plane of the normal, must both lie on this floor. The node takes the next id from the inner graph's counter (m_iGraph +0x1c,
// incremented before GraphSparse::addNode) and gets the midpoint, the normalised direction (b - a), the length of the edge as its width and length, and this floor; it is entered in m_nodeByPos.
PFGInnerNode* PFFloor::_CreateNode(const Point3D<float>& a, const Point3D<float>& b, const Point3D<float>& normal,
                                   bool force) {
    if ((m_objectFlags & 0x1000000u) != 0) {
        return nullptr;
    }
    const Point3D<float> mid{(a.X + b.X) * 0.5f, (a.Y + b.Y) * 0.5f, (a.Z + b.Z) * 0.5f};
    const auto found = m_nodeByPos.find(mid);
    if (found != m_nodeByPos.end()) {
        return found->second;
    }

    const float dx = b.X - a.X;
    const float dy = b.Y - a.Y;
    const float dz = b.Z - a.Z;
    Point3D<float> perp{(dy * normal.Z) - (dz * normal.Y), (dz * normal.X) - (dx * normal.Z),
                        (dx * normal.Y) - (dy * normal.X)};
    perp.normalize();

    bool accepted = force;
    if (!accepted) {
        const Point3D<float> above{mid.X + perp.X, mid.Y + perp.Y, mid.Z + perp.Z};
        accepted = GetFloorHeightAt(above, nullptr, nullptr);
        if (accepted) {
            const Point3D<float> below{mid.X - perp.X, mid.Y - perp.Y, mid.Z - perp.Z};
            accepted = GetFloorHeightAt(below, nullptr, nullptr);
        }
    }
    if (!accepted) {
        return nullptr;
    }

    m_iGraph->m_nodeCounter += 1;  // PFGInnerGraph +0x1c
    PFGInnerNode* node = m_iGraph->addNode(m_iGraph->m_nodeCounter);
    node->m_position = mid;        // +0x08
    Point3D<float> direction{dx, dy, dz};
    direction.normalize();
    node->m_direction = direction;  // +0x14
    const float length = std::sqrt((dx * dx + dy * dy) + dz * dz);
    node->m_width = length;         // +0x20
    node->m_length = length;        // +0x24
    node->m_floor = this;           // +0x28
    m_nodeByPos[mid] = node;
    return node;
}

// 0x51fd78 _ZN7PFFloor5_LinkEPS_
// The two floors are linked when they touch. Records of this floor inside the other floor's box (grown by 1 unit) make a
// node on this floor, and records of the other floor inside this box make one on the other floor. For each pair of
// records, the other floor's edges are made once (on the first record of this floor), then cross-floor edges are made
// when the two nodes are within the sum of their widths and 100 units apart vertically. Both floors then list each other
// in m_linkedFloors. Nothing is linked when either floor has object flag 0x04000000.
void PFFloor::_Link(PFFloor* other) {
    if (((other->m_objectFlags | m_objectFlags) & 0x4000000u) != 0) {
        return;
    }

    std::vector<std::pair<InvalidNode*, PFGInnerNode*>> own;    // this floor's records, each with its node
    std::vector<std::pair<InvalidNode*, PFGInnerNode*>> theirs;  // the other floor's records, each with its node
    for (InvalidNode& record : m_invalidNodes) {
        if (other->m_boundsMin.X <= record.m_position.X + 1.0f && other->m_boundsMax.X >= record.m_position.X - 1.0f &&
            other->m_boundsMin.Y <= record.m_position.Y + 1.0f && other->m_boundsMax.Y >= record.m_position.Y - 1.0f &&
            other->m_boundsMin.Z <= record.m_position.Z + 1.0f && other->m_boundsMax.Z >= record.m_position.Z - 1.0f) {
            own.emplace_back(&record, _CreateNode(record.m_source, record.m_destination, record.m_normal, true));
        }
    }
    for (InvalidNode& record : other->m_invalidNodes) {
        const bool outside = m_boundsMin.X > record.m_position.X + 1.0f || m_boundsMax.X < record.m_position.X - 1.0f ||
                             m_boundsMin.Y > record.m_position.Y + 1.0f || m_boundsMax.Y < record.m_position.Y - 1.0f ||
                             m_boundsMin.Z > record.m_position.Z + 1.0f || m_boundsMax.Z < record.m_position.Z - 1.0f;
        if (outside) {
            continue;
        }
        theirs.emplace_back(&record, other->_CreateNode(record.m_source, record.m_destination, record.m_normal, true));
    }

    for (std::size_t k = 0; k < own.size(); ++k) {
        InvalidNode* ownRecord = own[k].first;
        PFGInnerNode* ownNode = own[k].second;
        _CreateEdge(ownNode, ownRecord->m_neighbours[0]);
        m_edges.push_back(_CreateEdge(ownRecord->m_neighbours[0], ownNode));
        _CreateEdge(ownNode, ownRecord->m_neighbours[1]);
        m_edges.push_back(_CreateEdge(ownRecord->m_neighbours[1], ownNode));

        for (std::size_t j = 0; j < theirs.size(); ++j) {
            InvalidNode* otherRecord = theirs[j].first;
            PFGInnerNode* otherNode = theirs[j].second;
            if (k == 0) {
                other->_CreateEdge(otherNode, otherRecord->m_neighbours[0]);
                other->m_edges.push_back(other->_CreateEdge(otherRecord->m_neighbours[0], otherNode));
                other->_CreateEdge(otherNode, otherRecord->m_neighbours[1]);
                other->m_edges.push_back(other->_CreateEdge(otherRecord->m_neighbours[1], otherNode));
            }

            // _CreateNode with force set always makes the node here: a void floor (the only case that returns null) has the object flag
            // 0x04000000 and never reaches this point. The null test only guards the dereference.
            if (ownNode != nullptr && otherNode != nullptr) {
                const float dx = ownNode->m_position.X - otherNode->m_position.X;
                const float dy = ownNode->m_position.Y - otherNode->m_position.Y;
                const float dz = ownNode->m_position.Z - otherNode->m_position.Z;
                const float width = ownNode->m_width + otherNode->m_width;
                if (width * width > ((dx * dx + dy * dy) + dz * dz) &&
                    std::fabs(ownNode->m_position.Z - otherNode->m_position.Z) < 100.0f) {
                    _CreateEdge(ownNode, otherRecord->m_neighbours[0]);
                    other->m_edges.push_back(other->_CreateEdge(otherRecord->m_neighbours[0], ownNode));
                    _CreateEdge(ownNode, otherRecord->m_neighbours[1]);
                    other->m_edges.push_back(other->_CreateEdge(otherRecord->m_neighbours[1], ownNode));
                    other->_CreateEdge(otherNode, ownRecord->m_neighbours[0]);
                    m_edges.push_back(_CreateEdge(ownRecord->m_neighbours[0], otherNode));
                    other->_CreateEdge(otherNode, ownRecord->m_neighbours[1]);
                    m_edges.push_back(_CreateEdge(ownRecord->m_neighbours[1], otherNode));
                }
            }

            m_linkedFloors.insert(other);
            other->m_linkedFloors.insert(this);
        }
    }
}

// 0x520588 _ZN7PFFloor12_CreateNodesEPN6glitch4core10triangle3dIfEEj
// Verified against the listing (0x520588). Per triangle (A, B, C), the edges AB, AC and BC get nodes and six directed edges (AB-AC, AB-BC, AC-BC, each way). An edge
// with no node is kept as an InvalidNode record: its midpoint, its end points and the triangle normal, and the other two
// edges as neighbours. Nothing is built on a void floor (object flag 0x01000000).
void PFFloor::_CreateNodes(glitch::core::triangle3d<float>* triangles, unsigned int count) {
    if ((m_objectFlags & 0x1000000u) != 0 || count == 0) {
        return;
    }
    for (unsigned int i = 0; i < count; ++i) {
        const glitch::core::triangle3d<float>& tri = triangles[i];
        const Point3D<float> a{tri.A.X, tri.A.Y, tri.A.Z};
        const Point3D<float> b{tri.B.X, tri.B.Y, tri.B.Z};
        const Point3D<float> c{tri.C.X, tri.C.Y, tri.C.Z};
        const Point3D<float> normal = TriangleNormal(tri);

        PFGInnerNode* ab = _CreateNode(a, b, normal, false);
        PFGInnerNode* ac = _CreateNode(a, c, normal, false);
        PFGInnerNode* bc = _CreateNode(b, c, normal, false);

        _CreateEdge(ab, ac);
        m_edges.push_back(_CreateEdge(ac, ab));
        _CreateEdge(ab, bc);
        m_edges.push_back(_CreateEdge(bc, ab));
        _CreateEdge(ac, bc);
        m_edges.push_back(_CreateEdge(bc, ac));

        if (ab == nullptr) {
            m_invalidNodes.push_back(MakeInvalidNode(a, b, ac, bc, normal));
        }
        if (ac == nullptr) {
            m_invalidNodes.push_back(MakeInvalidNode(a, c, ab, bc, normal));
        }
        if (bc == nullptr) {
            m_invalidNodes.push_back(MakeInvalidNode(b, c, ab, ac, normal));
        }
    }
}

// 0x520b40 _ZN7PFFloor12_LoadNavMeshEPN6glitch5scene14IMeshSceneNodeE
// The floor reads its type from the "floortypes" user property of the node's parent: "void", "wall", "hole" and "water"
// set bits 0x01000000, 0x02000000, 1 and 2 of m_typeMask. A void or wall floor also gets 0x07000000 in its object flags.
// The node is copied (CopyMeshSceneNode), hidden and removed from the scene. The copy's position and its transformed box
// give the floor's position and bounds (z widened by 1000 each way). An octree triangle selector is built from the copy's
// mesh and set on the copy, and its triangles are copied into m_triangles, with 1 added to every vertex Z. The nodes are
// then built from the triangles.
void PFFloor::_LoadNavMesh(glitch::scene::IMeshSceneNode* node) {
    UserProperties properties(node->getParent()->getUserPropertyStr());
    const auto floorTypes = properties.m_properties.find("floortypes");
    if (floorTypes != properties.m_properties.end()) {
        m_floorTypes.assign(floorTypes->second.c_str());
    }
    const char* types = m_floorTypes.c_str();
    if (std::strstr(types, "void") != nullptr) {
        m_typeMask |= 0x1000000u;
    }
    if (std::strstr(types, "wall") != nullptr) {
        m_typeMask |= 0x2000000u;
    }
    if (std::strstr(types, "hole") != nullptr) {
        m_typeMask |= 1u;
    }
    if (std::strstr(types, "water") != nullptr) {
        m_typeMask |= 2u;
    }
    if ((m_typeMask & 0x3000000u) != 0) {
        m_objectFlags |= 0x7000000u;
    }

    if (node->getParent() == nullptr) {
        FloorAssert("node->getParent()", 138);
    }
    if (node->getParent() != nullptr) {
        node->setPosition(node->getAbsolutePosition());
    }

    m_navMesh = static_cast<glitch::scene::CMeshSceneNode*>(CopyMeshSceneNode(node));
    node->setVisible(false);
    node->remove();

    const glitch::core::vector3d<float>& position = m_navMesh->getPosition();
    m_position = Point3D<float>{position.X, position.Y, position.Z};
    const glitch::core::aabbox3d<float>& box = m_navMesh->getTransformedBoundingBox();
    m_boundsMin = Point3D<float>{box.MinEdge.X, box.MinEdge.Y, box.MinEdge.Z - 1000.0f};
    m_boundsMax = Point3D<float>{box.MaxEdge.X, box.MaxEdge.Y, box.MaxEdge.Z + 1000.0f};

    glitch::scene::COctTreeTriangleSelector* selector = nullptr;
    {
        // The mesh reference is held only for the selector's construction, as the original releases it there.
        boost::intrusive_ptr<glitch::scene::IMesh> mesh = m_navMesh->getMesh();
        selector = new glitch::scene::COctTreeTriangleSelector(mesh.get(), m_navMesh, 15, true);
    }
    m_navMesh->setTriangleSelector(selector);
    selector->drop();  // the node holds its own reference now; the selector is still valid below

    const int triangleCount = selector->getTriangleCount();
    int storedCount = triangleCount;
    glitch::core::triangle3d<float>* triangles = nullptr;
    if (triangleCount > 0) {
        const std::size_t bytes = sizeof(glitch::core::triangle3d<float>) * static_cast<std::size_t>(triangleCount);
        triangles = static_cast<glitch::core::triangle3d<float>*>(CustomAlloc(static_cast<unsigned int>(bytes)));
        for (int t = 0; t < triangleCount; ++t) {
            // The original zeroes the nine words of each triangle; value-initialisation does the same.
            new (static_cast<void*>(triangles + t)) glitch::core::triangle3d<float>();
        }
        selector->getTriangles(triangles, triangleCount, storedCount, nullptr);
    }

    _CreateNodes(triangles, storedCount > 0 ? static_cast<unsigned int>(storedCount) : 0u);
    m_triangles = triangles;
    m_triangleCount = storedCount;
    for (int i = 0; i < m_triangleCount; ++i) {
        m_triangles[i].A.Z += 1.0f;
        m_triangles[i].B.Z += 1.0f;
        m_triangles[i].C.Z += 1.0f;
    }
}
