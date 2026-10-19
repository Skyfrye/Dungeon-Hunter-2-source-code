// Batch g1-game-world-pack0-9565e8-0: CheckpointZone (constructor, destructors, OnCollisionBegins), ColBox (destructors,
// IsUpdatable, InitPost, Draw, DeclareProperties) and Decor (destructors, IsUpdatable, LoadFloorMap, InitPost,
// DeclareProperties). Declarations come from dh2/CheckpointZone.hpp, dh2/ColBox.hpp and dh2/Decor.hpp. Each PARTIAL
// body names its seam in a comment. The compiler-generated deleting destructors (D0) are not written here.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <set>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CheckpointZone.hpp"
#include "dh2/ColBox.hpp"
#include "dh2/POColmap.hpp"
#include "dh2/PFRoom.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/aabb.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material.hpp"
#include "glitch-core-io/os/device.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Decor.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PODecor.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/ctrl_camera.hpp"  // Application& ApplicationGetInstance()

// Global assert level (libDungeonHunter2.so gAssertLevel). Declared the same way as the other game-world sources.
extern int gAssertLevel;

namespace {

// The source path that the original's ASSERT messages print (CheckpointZone.cpp in the Visual Studio project).
const char kCheckpointZoneSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Zones\\CheckpointZone.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash), level 1 prints
// the message and the function goes on.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kCheckpointZoneSource, line);
    }
}

// ColBox::Draw. The debug box is lifted by 50 units on the Z axis (both Z corners) before it is drawn.
constexpr float kColBoxDrawLiftZ = 50.0f;  // 0x42480000

// ColBox::DeclareProperties. The default of each component of the "dimensions" box.
constexpr float kColBoxDefaultDimension = 200.0f;  // 0x43480000

}  // namespace

// ============================================================================================================
// CheckpointZone
// ============================================================================================================

// 0x39594c _ZN14CheckpointZoneC1EN10ObjectBase6GO_IDSE
// 0x3959b4 _ZN14CheckpointZoneC2EN10ObjectBase6GO_IDSE (same body)
// The original runs Zone(id, true, true) and then writes the vptrs (done by the compiler here), +0x388 .. +0x39f as an
// empty std::set (colour 0, root null, leftmost and rightmost pointing at the header, count 0), and the sensor flag
// byte. The std::set member's default constructor leaves the same empty set.
CheckpointZone::CheckpointZone(ObjectBase::GO_IDS id) : Zone(id, true, true) {}

// 0x395b38 _ZN14CheckpointZoneD1Ev
// 0x395bd0 _ZN14CheckpointZoneD2Ev (same body)
// The original resets the vptrs, erases the set's tree when the count is not zero, resets the header and then runs
// Zone::~Zone. The clear is written out. The member destructor would empty the same set after this body.
CheckpointZone::~CheckpointZone() {
    unk_388.clear();
}

// 0x395bb4 _ZN14CheckpointZoneD0Ev: skipped. This is the compiler-generated deleting destructor (D1, then
// CustomFree); a delete expression produces it.

// 0x395f04 _ZN14CheckpointZone17OnCollisionBeginsEP10GameObject
// PARTIAL. Rebuilt: the IsCharacter test, the handle conversion, the local player's character (PlayerInfo +0x660),
// the IsPlayer test, the m_position == character->m_savedPoint test (the other operand is Character +0x1468, the
// Point3D the header names m_savedPoint), the CheckpointSave call and the set insertion.
// The insertion is one std::set::insert. The original's inlined lower_bound and insert_unique pair does the same
// work: the key is inserted only when no equal key is in the tree, and the tree compares pointers with <.
// Missing (seams):
//   1. A null other. The original reports the assert, then loads other's vptr from address 0 and crashes (level 2
//      stores to address 0 first). The port reports the assert and aborts, which ends the process in the same way.
//   2. A null level (assert "l"). The original calls Level::CheckpointSave on a null this when the local player has
//      moved from the stored point. The port skips that call, and it still inserts the character as the original does.
void CheckpointZone::OnCollisionBegins(GameObject* other) {
    if (other == nullptr) {
        ReportAssert("go", 38);
        std::abort();  // the original crashes here: it reads other's vptr at address 0
    }
    if (!other->IsCharacter()) {
        return;
    }

    ObjectHandle handle = other->GetHandle();
    Character* character = handle;  // ObjectHandle::operator Character*
    Character* localCharacter = ApplicationGetInstance().m_playerManager->GetLocalPlayer(0, true)->unk_660;  // +0x660
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("l", 46);
    }

    if (character->IsPlayer() && character == localCharacter) {
        // The original calls the save when the zone's position is not the character's m_savedPoint (+0x1468).
        // The save is made at m_position (+0x160) with usePosition false.
        if (!(m_position == character->m_savedPoint)) {
            level->CheckpointSave(m_position, false);
        }
    }

    unk_388.insert(character);
}

// ============================================================================================================
// ColBox
// ============================================================================================================

// 0x340fe0 _ZN6ColBoxC1EN10ObjectBase6GO_IDSE
// Inlined into GetNewInstance<ColBox> (0x340fe0), so the binary has no standalone ColBox constructor symbol. The asm
// runs GameObject::GameObject(GO_IDS 20) (MOV R1,#0x14 before the BL), stores the primary vptr at +0x00, the third
// vptr at +0x04 and the second at +0x24, sets m_static (+0x84) to 1 and zeroes the three words at +0x374, +0x378 and
// +0x37c, which is the Point3D<float> at +0x374. The vptr stores and the base call are what the C++ constructor emits.
ColBox::ColBox(GO_IDS id) : GameObject(id), m_dimensions{} {}

// 0x3883f4 _ZNK6ColBox11IsUpdatableEv
bool ColBox::IsUpdatable() const {
    return false;
}

// 0x3884b8 _ZN6ColBoxD1Ev
// The original resets the vptrs and runs GameObject::~GameObject. The base destructor runs after this empty body.
ColBox::~ColBox() {}

// 0x388e60 _ZN6ColBoxD0Ev: skipped. This is the compiler-generated deleting destructor (D1, then CustomFree).

// 0x3884fc _ZN6ColBox8InitPostEv
// GameObject::InitPost, the dimensions (+0x374 .. +0x37c) scaled by the object scale (+0x120 .. +0x128), the relative box (+0x144 ..
// +0x158) from the half dimensions with the minimum negated, the absolute AABB update, and the body: a POColmap (a PhysicalObject on
// Application::m_physicalWorld (+0x44), static, group 0, category 1, mask 0xffff, unused 1 with the POColmap vptr) given to
// SetPhysicalObject(body, false).
void ColBox::InitPost() {
    GameObject::InitPost();

    m_dimensions.X = m_dimensions.X * m_scale.X;  // +0x374 *= +0x120
    m_dimensions.Y = m_dimensions.Y * m_scale.Y;  // +0x378 *= +0x124
    m_dimensions.Z = m_dimensions.Z * m_scale.Z;  // +0x37c *= +0x128

    const float halfX = m_dimensions.X * 0.5f;
    const float halfY = m_dimensions.Y * 0.5f;
    const float halfZ = m_dimensions.Z * 0.5f;
    m_relAabb[0] = -halfX;  // +0x144 minimum X
    m_relAabb[1] = -halfY;  // +0x148 minimum Y
    m_relAabb[2] = -halfZ;  // +0x14c minimum Z
    m_relAabb[3] = halfX;   // +0x150 maximum X
    m_relAabb[4] = halfY;   // +0x154 maximum Y
    m_relAabb[5] = halfZ;   // +0x158 maximum Z

    GameObject::UpdateAbsoluteAABB();

    PhysicalWorld* world = ApplicationGetInstance().m_physicalWorld;  // Application +0x44
    PhysicalObject* body = new POColmap(world, this, true, false, false, false, 0, 1, 0xFFFF, 1);
    GameObject::SetPhysicalObject(body, false);
}

// 0x3896f0 _ZNK6ColBox4DrawEv
// With the "isDisplayingColBox" switch on, the plain material (built-in renderer type 1) of the device's driver (device +0x10, material
// renderer manager at driver +0xdc) is set with its first technique, and the driver draws (vtable +0x28, draw3DBox) the absolute AABB
// with both Z corners lifted by 50 in the colour 0xFF0000FF.
void ColBox::Draw() const {
    DebugSwitches::s_inst.load();
    if (!DebugSwitches::s_inst.GetSwitch("isDisplayingColBox")) {
        return;
    }

    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;   // device +0x10
    glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;  // driver +0xdc
    const std::uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
    const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
    driver->setMaterial(material, technique, nullptr);

    // The box is the absolute AABB with the Z corners lifted: minimum (x, y, z + 50), maximum (x, y, z + 50).
    glitch::core::aabbox3d<float> box;
    box.MinEdge.X = m_absAabb[0];
    box.MinEdge.Y = m_absAabb[1];
    box.MinEdge.Z = m_absAabb[2] + kColBoxDrawLiftZ;
    box.MaxEdge.X = m_absAabb[3];
    box.MaxEdge.Y = m_absAabb[4];
    box.MaxEdge.Z = m_absAabb[5] + kColBoxDrawLiftZ;
    glitch::video::SColor color;
    color.color = 0xFF0000FFu;
    driver->draw3DBox(box, color);
}

// 0x389938 _ZN6ColBox17DeclarePropertiesEv
void ColBox::DeclareProperties() {
    GameObject::DeclareProperties();
    PropertyMap::AddProperty<Point3D<float>>(
        "dimensions", m_dimensions,
        Point3D<float>{kColBoxDefaultDimension, kColBoxDefaultDimension, kColBoxDefaultDimension});
}

// ============================================================================================================
// Decor
// ============================================================================================================

// 0x3410fc _ZN5DecorC1EN10ObjectBase6GO_IDSE
// Inlined into GetNewInstance<Decor> (0x3410fc), so the binary has no standalone Decor constructor symbol. The asm runs
// GameObject::GameObject(GO_IDS 20) (MOV R1,#0x14 before the BL), stores the primary vptr at +0x00, the third at +0x04
// and the second at +0x24, and sets m_static (+0x84), m_floorMapPending (+0x375) and m_isSolid (+0x376) to 1. The vptr
// stores and the base call are compiler-generated; the three flags are the whole body. Module (0x389fa8) inlines these
// same three flag stores, so its Decor(id) base call compiles to this definition.
Decor::Decor(GO_IDS id) : GameObject(id) {
    m_static = true;           // ObjectBase +0x84
    m_floorMapPending = true;  // +0x375
    m_isSolid = true;          // +0x376
}

// 0x3883d4 _ZNK5Decor11IsUpdatableEv
bool Decor::IsUpdatable() const {
    return false;
}

// 0x388428 _ZN5DecorD1Ev
// The original resets the vptrs and runs GameObject::~GameObject. The base destructor runs after this empty body.
Decor::~Decor() {}

// 0x388eb0 _ZN5DecorD0Ev: skipped. This is the compiler-generated deleting destructor (D1, then CustomFree).

// 0x388730 _ZN5Decor12LoadFloorMapEv
// Once, while the visual object exists and the pending flag (+0x375) is set: the visual's scene node is loaded as a room of the path
// finding world (PFWorld::LoadRoom with the node, the room flags word unk_64 and the object name); a room that comes back gets bit 0
// of its flags (PFRoom +0x24) from m_isSolid (+0x376) and its bounding box extended by the object's absolute AABB (+0x12c). The
// pending flag is cleared.
void Decor::LoadFloorMap() {
    if (m_visualObject == nullptr || !m_floorMapPending) {
        return;
    }
    PFRoom* room = PFWorld::s_inst.LoadRoom(m_visualObject->m_node, static_cast<unsigned int>(unk_64), m_name.c_str());   // VisualObject +0x08, ObjectBase +0x44
    if (room) {
        room->m_flags = m_isSolid ? (room->m_flags | 1u) : (room->m_flags & 0xFFFFFFFEu);
        aabb<float> box;
        box.MinEdge = Point3D<float>{m_absAabb[0], m_absAabb[1], m_absAabb[2]};
        box.MaxEdge = Point3D<float>{m_absAabb[3], m_absAabb[4], m_absAabb[5]};
        room->ExtendBoundingBox(box);
    }
    m_floorMapPending = false;  // +0x375, cleared on every pass through the guard
}

// 0x388a98 _ZN5Decor8InitPostEv
// Rebuilt in full. The original returns without LoadFloorMap when the visual object is null.
void Decor::InitPost() {
    GameObject::InitPost();
    if (m_visualObject == nullptr) {
        return;
    }

    m_visualObject->ApplyMeshBox();
    if (m_visualObject->m_hasColBox) {
        PhysicalWorld* world = ApplicationGetInstance().m_physicalWorld;  // Application +0x44
        // The original passes a bool register that is left over from the operator new call. PODecor never reads it
        // (PODecor.hpp), so false is passed here.
        PODecor* body = new PODecor(world, this, false);
        GameObject::SetPhysicalObject(body, false);
    }

    LoadFloorMap();
}

// 0x3899d0 _ZN5Decor17DeclarePropertiesEv
void Decor::DeclareProperties() {
    GameObject::DeclareProperties();
    PropertyMap::AddProperty<bool>("is_solid", m_isSolid, true);
}
