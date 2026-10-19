// Batch g1-game-world-Zone-03efcc-0: the Zone bodies of Zone.cpp in the VS2005 project. Declarations come from dh2/Zone.hpp. The physics body of a Zone is a POZone (a
// PhysicalObject with the POZone vtable; dh2/POZone.hpp has the constructor), and the "_colzone" branches use the device's scene manager
// and its collision manager.

#include <cstdio>
#include <cstdlib>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/POZone.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/Zone.hpp"
#include "dh2/aabb.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "dh2/global/SceneNodeHelpers.hpp"
#include "dh2/global/Vec3f_K.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CTriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"  // glitch::scene::ISceneNode, complete for drop()

// Engine-wide assert level (core-platform/memory.hpp). That header is not included here: its glitch_core.hpp
// clashes with the one Zone.hpp uses, and the GameObject batches declare the variable the same way.
extern int gAssertLevel;

namespace {

// Source file named in the original's assert messages (Zone.cpp of the VS2005 project).
const char kZoneSourceFile[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\Zone.cpp";

// The assert of the original Zone bodies. Level 2 stops the process: the original stores 0 to address 0 there, which
// faults, and std::abort() ends the process the same way. Level 1 prints the message to stderr (the original's
// &__sF + 2, the third standard stream) and returns, so the caller goes on.
void ZoneAssertFailed(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kZoneSourceFile, line);
    }
}

}  // namespace

// 0x395940 Zone::OnCollision(GameObject*)
// Empty in the original (a single bx lr). Zone's collision virtuals are hooks for the subclasses.
void Zone::OnCollision(GameObject* other) {
    (void)other;
}

// 0x395944 Zone::OnCollisionPersists(GameObject*)
// Empty in the original (a single bx lr).
void Zone::OnCollisionPersists(GameObject* other) {
    (void)other;
}

// 0x395948 Zone::OnCollisionEnds(GameObject*)
// Empty in the original (a single bx lr).
void Zone::OnCollisionEnds(GameObject* other) {
    (void)other;
}

// 0x39649c Zone::OnCollisionBegins(GameObject*)
// Empty in the original (a single bx lr).
void Zone::OnCollisionBegins(GameObject* other) {
    (void)other;
}

// 0x3970c8 Zone::IsInside(GameObject*)
// The other object needs a physical body (+0x2dc). A plain zone tests the other object's position against its world AABB (+0x12c). A
// zone with a "_colzone" mesh sweeps a segment through the mesh's triangle selector (vtable +0xb0): the segment runs from the other
// object's position relative to the zone, 100 units along Vec3f_K one way to 100 the other, and the scene manager's collision manager
// (SceneManager +0x2c, vtable +0x0c getCollisionPoint) says whether it hits. With the DisplayColZoneWhenColliding switch on, a hit shows
// the colzone mesh and its parents (hiding the rest of the zone's visual) and a miss does the reverse.
bool Zone::IsInside(GameObject* other) {
    if (!other) {
        ZoneAssertFailed("go", 152);
        // The original then reads other->m_physicalObject through the null pointer and faults.
        std::abort();
    }
    if (!other->m_physicalObject) {  // +0x2dc
        return false;
    }
    if (!m_colZoneNode) {  // +0x384
        // The original also builds a direction from this to other, scales it by PhysicalObject::getRadius() and never reads
        // the result. That work has no effect, so it is left out.
        const float* box = m_absAabb;          // +0x12c: the world AABB, min xyz then max xyz
        const float x = other->m_position.X;   // +0x160
        const float y = other->m_position.Y;   // +0x164
        const float z = other->m_position.Z;   // +0x168
        return box[0] <= x && x <= box[3] && box[1] <= y && y <= box[4] && box[2] <= z && z <= box[5];
    }

    glitch::core::vector3d<float> hit{};
    glitch::core::triangle3d<float> triangle{};
    const float relativeX = other->m_position.X - m_position.X;
    const float relativeY = other->m_position.Y - m_position.Y;
    const float relativeZ = other->m_position.Z - m_position.Z;
    glitch::core::line3d<float> segment;
    segment.start.X = relativeX + Vec3f_K.X * 100.0f;
    segment.start.Y = relativeY + Vec3f_K.Y * 100.0f;
    segment.start.Z = relativeZ + Vec3f_K.Z * 100.0f;
    segment.end.X = relativeX + Vec3f_K.X * -100.0f;
    segment.end.Y = relativeY + Vec3f_K.Y * -100.0f;
    segment.end.Z = relativeZ + Vec3f_K.Z * -100.0f;
    glitch::scene::ISceneCollisionManager* collisionManager = DeviceSceneManager()->collisionManager;   // scene manager +0x2c
    const bool inside = collisionManager->getCollisionPoint(segment, m_colZoneNode->getTriangleSelector(), hit, triangle);

    DebugSwitches::s_inst.load();
    if (!DebugSwitches::s_inst.GetSwitch(std::string("DisplayColZoneWhenColliding"))) {
        return inside;
    }
    VisualObject* visual = m_visualObject;                                // +0x2d8
    glitch::core::svector<glitch::scene::ISceneNode*> meshes;
    DeviceSceneManager()->SearchByType(m_colZoneNode, meshes, 0x6d656164u);
    if (meshes.size() == 1) {
        if (inside) {
            SetNodeVisibleRecur(visual->m_node, false);
            glitch::scene::ISceneNode* parent = meshes[0];
            while (parent) {
                parent->setVisible(true);
                if (parent == visual->m_node) {
                    break;
                }
                parent = parent->getParent();
            }
        } else {
            SetNodeVisibleRecur(visual->m_node, true);
            meshes[0]->setVisible(false);
        }
    }
    return inside;
}

// 0x397594 Zone::InitWithBoundingBox(glitch::core::aabbox3d<float> const&)
// The size of the box (+0x374), the local AABB (+0x144) and the centre (SetPosition, destination too) are set. A zone with physics
// (m_hasPhysics, +0x380) builds its POZone: a static sensor box body on Application::m_physicalWorld (+0x44) with group -5, category
// 0x800 and mask 4 for a player-only zone or 1310 otherwise, given to SetPhysicalObject(body, false).
void Zone::InitWithBoundingBox(const glitch::core::aabbox3d<float>& box) {
    // +0x374 .. +0x37c: the size of the box.
    m_dimensions.X = box.MaxEdge.X - box.MinEdge.X;
    m_dimensions.Y = box.MaxEdge.Y - box.MinEdge.Y;
    m_dimensions.Z = box.MaxEdge.Z - box.MinEdge.Z;
    // +0x144 .. +0x158: the local AABB, min xyz then max xyz.
    m_relAabb[0] = box.MinEdge.X;
    m_relAabb[1] = box.MinEdge.Y;
    m_relAabb[2] = box.MinEdge.Z;
    m_relAabb[3] = box.MaxEdge.X;
    m_relAabb[4] = box.MaxEdge.Y;
    m_relAabb[5] = box.MaxEdge.Z;
    // The object is placed at the centre of the box, and that position is set as the destination too.
    const Point3D<float> centre{(box.MinEdge.X + box.MaxEdge.X) * 0.5f,
                                (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f,
                                (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f};
    GameObject::SetPosition(centre, true);
    if (m_hasPhysics) {
        PhysicalWorld* world = ApplicationGetInstance().m_physicalWorld;              // dword_99F770
        const unsigned short mask = m_playerOnly ? 4 : 1310;                          // +0x381
        POZone* body = new POZone(world, this, true, false, true, false, -5, 0x800, mask, 0);
        SetPhysicalObject(body, false);
    }
}

// 0x39771c Zone::InitPost()
// With the spawn roll passed: GameObject::InitPost, the dimensions take the object scale (+0x120 .. +0x128), the local AABB is
// centred on the origin and set through the virtual SetRelativeAABB (vtable +0x9c, update off), and a zone with physics builds its
// POZone body (see InitWithBoundingBox). Without a colzone node, the visual object's "_colzone" node is looked up and kept (one use
// taken); it must hold exactly one mesh (assert at Zone.cpp line 96). The mesh's box moved to the zone's position goes to
// InitWithBoundingBox, the mesh is hidden, and a CTriangleSelector over its mesh becomes the colzone node's triangle selector.
void Zone::InitPost() {
    if (GameObject::CheckSpawnProbability() < m_spawnProb) {  // +0x274
        GameObject::InitPost();
        // +0x374 .. +0x37c: the dimensions take the object scale (+0x120 .. +0x128).
        m_dimensions.X *= m_scale.X;
        m_dimensions.Y *= m_scale.Y;
        m_dimensions.Z *= m_scale.Z;
        // The local AABB is centred on the origin: min is -half the size, max is +half the size.
        const float halfX = m_dimensions.X * 0.5f;
        const float halfY = m_dimensions.Y * 0.5f;
        const float halfZ = m_dimensions.Z * 0.5f;
        m_relAabb[0] = -halfX;
        m_relAabb[1] = -halfY;
        m_relAabb[2] = -halfZ;
        m_relAabb[3] = halfX;
        m_relAabb[4] = halfY;
        m_relAabb[5] = halfZ;
        // Virtual SetRelativeAABB(box, false) at vtable +0x9c.
        aabb<float> relative;
        relative.MinEdge = Point3D<float>{m_relAabb[0], m_relAabb[1], m_relAabb[2]};
        relative.MaxEdge = Point3D<float>{m_relAabb[3], m_relAabb[4], m_relAabb[5]};
        SetRelativeAABB(relative, false);
        if (m_hasPhysics) {
            PhysicalWorld* world = ApplicationGetInstance().m_physicalWorld;          // dword_99F770
            const unsigned short mask = m_playerOnly ? 4 : 1310;                      // +0x381
            POZone* body = new POZone(world, this, true, false, true, false, -5, 0x800, mask, 0);
            SetPhysicalObject(body, false);
        }
        if (!m_colZoneNode && m_visualObject) {  // +0x384, +0x2d8
            m_colZoneNode = m_visualObject->GetSpecificNode("_colzone");
            if (m_colZoneNode) {
                ++m_colZoneNode->referenceCounter;                                        // a use for the zone
                glitch::core::svector<glitch::scene::ISceneNode*> meshes;
                DeviceSceneManager()->SearchByType(m_colZoneNode, meshes, 0x6d656164u);   // 'daem'
                if (meshes.size() != 1) {
                    ZoneAssertFailed("meshes.size() == 1", 96);
                    if (gAssertLevel == 2) {
                        std::abort();
                    }
                    if (meshes.size() != 1) {
                        return;
                    }
                }
                glitch::scene::ISceneNode* meshNode = meshes[0];
                if (meshNode) {
                    const glitch::core::aabbox3d<float>& meshBox = meshNode->getBoundingBox();   // vtable +0x30
                    glitch::core::aabbox3d<float> moved;
                    moved.MinEdge.X = m_position.X + meshBox.MinEdge.X;
                    moved.MinEdge.Y = m_position.Y + meshBox.MinEdge.Y;
                    moved.MinEdge.Z = m_position.Z + meshBox.MinEdge.Z;
                    moved.MaxEdge.X = m_position.X + meshBox.MaxEdge.X;
                    moved.MaxEdge.Y = m_position.Y + meshBox.MaxEdge.Y;
                    moved.MaxEdge.Z = m_position.Z + meshBox.MaxEdge.Z;
                    InitWithBoundingBox(moved);
                    meshNode->setVisible(false);                                         // vtable +0x48
                    boost::intrusive_ptr<glitch::scene::IMesh> mesh = static_cast<glitch::scene::IMeshSceneNode*>(meshNode)->getMesh();   // vtable +0xf8
                    glitch::scene::CTriangleSelector* selector =
                        new glitch::scene::CTriangleSelector(boost::intrusive_ptr<const glitch::scene::IMesh>(mesh), nullptr, true);
                    m_colZoneNode->setTriangleSelector(selector);                        // vtable +0xb4
                    selector->drop();
                }
            }
        }
    }
}

// 0x397b38 Zone::~Zone()   (complete object destructor, D1)
// 0x397bc4 Zone::~Zone()   (base object destructor, D2; the same code)
// The colzone node is dropped when it is set, then the pointer is cleared. ISceneNode derives virtually from
// glitch::IReferenceCounted, so drop() is the call the original makes: its base offset (the vtable -0x0c word in the
// listing) is the compiler's adjustment. The vptr resets and the GameObject base destructor are the compiler's, as the
// original does them through GameObject::~GameObject.
Zone::~Zone() {
    if (m_colZoneNode != nullptr) {  // +0x384
        m_colZoneNode->drop();
        m_colZoneNode = nullptr;
    }
}

// 0x397ba8 Zone::~Zone()   (deleting destructor, D0)
// skipped: the compiler generates the deleting destructor (~Zone() followed by CustomFree(this)). A delete expression
// on a Zone does the same, so there is no separate body.

// 0x397c2c Zone::Zone(ObjectBase::GO_IDS, bool, bool)   (complete object constructor, C1)
// 0x397ca0 Zone::Zone(ObjectBase::GO_IDS, bool, bool)   (base object constructor, C2; the same code)
// The GameObject base takes the id (the original passes it on in r1). Then the size is zeroed, the two flags are
// stored, the colzone node pointer is null, and ObjectBase::m_static (+0x84) is set to 1.
Zone::Zone(ObjectBase::GO_IDS id, bool hasPhysics, bool playerOnly)
    : GameObject(id),
      m_dimensions{},
      m_hasPhysics(hasPhysics),
      m_playerOnly(playerOnly),
      m_colZoneNode(nullptr) {
    m_static = true;  // ObjectBase +0x84
}

// 0x397df8 Zone::DeclareProperties()
// GameObject's properties first, then "dimensions": a Point3D<float> with default (200, 200, 200) at the member
// m_dimensions (the original's property offset 880, relative to the PropertyMap base at +4, is +0x374).
// The default is the single word 0x43480000 (200.0f), written to the property's three default slots at +0x20, +0x24
// and +0x28 (MOV R3, #0x43480000 then three STRs). 100.0f would be 0x42C80000.
void Zone::DeclareProperties() {
    GameObject::DeclareProperties();
    AddProperty<Point3D<float>>("dimensions", m_dimensions, Point3D<float>{200.0f, 200.0f, 200.0f});
}
