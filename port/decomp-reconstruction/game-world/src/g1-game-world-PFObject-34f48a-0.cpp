// Batch g1-game-world-PFObject-34f48a-0: the PFObject flag and floor queries, the path-length sum, the two
// constructors, the two destructors and the three DBG_ draw functions. Declarations come from dh2/PFObject.hpp.
// A PARTIAL body names the callee or layout it waits on.
//
// Layout facts used here (original 32-bit offsets, named in dh2/PFObject.hpp and dh2/PFFloor.hpp):
//   PFObject +0x04 m_flags        bit 0 static, bit 1 moving, bit 2 registered obstacle, bit 3 collisions enabled
//   PFObject +0x10 m_floor        PFFloor*
//   PFObject +0x14 m_moveFlags    bit 0 flying, bit 1 swimming
//   PFFloor  +0x24 m_typeMask     bit 0 hole, bit 1 water; CanPathOn tests it against m_moveFlags
//
// Include constraints: dh2/PFObject.hpp and dh2/PFFloor.hpp take Point3D from core-platform/deps/game_types.hpp.
// dh2/PFWorld.hpp (Singleton<PFWorld>::s_inst, DropPath, InitObstacle) and dh2/PFGInnerEdge.hpp (the edge end points)
// share this translation unit: both compile together with PFObject.hpp (checked with check_tu.sh).

#include "dh2/PFObject.hpp"

#include <cstdint>
#include <cstring>
#include <vector>

#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/SceneManager.hpp"    // SceneManager::DBG_DrawCircle (device +0x1c)
#include "dh2/global/DeviceSceneManager.hpp"  // DeviceSceneManager() (IDevice +0x1c)
#include "dh2/Application.hpp"     // ApplicationGetInstance: m_device (0x99F73C)
#include "dh2/global/Vec3f_K.hpp"  // Vec3f_K (0x99f878), the Point3D<float> global the constructor copies into m_floorNormal
#include "glitch-core-io/os/device.hpp"                        // glitch::IDevice::videoDriver (+0x10), sceneManager
#include "glitch-video/material.hpp"                           // CMaterial::getTechnique
#include "glitch-video/material_renderer_manager.hpp"          // CMaterialRendererManager (driver +0xdc)
#include "glitch-video/video_driver.hpp"                       // IVideoDriver (setMaterial, draw3DLine)

// 0x5241c0 _ZNK8PFObject11IsOverAHoleEv
// The original returns the floor's type word & 1 for a floor, and 0 (the null pointer) when there is none.
bool PFObject::IsOverAHole() const {
    if (m_floor == nullptr) {
        return false;
    }
    return (m_floor->m_typeMask & 1u) != 0;
}

// 0x5241d4 _ZNK8PFObject9IsInWaterEv
// Bit 1 of the floor's type word, with the same null case as IsOverAHole.
bool PFObject::IsInWater() const {
    if (m_floor == nullptr) {
        return false;
    }
    return ((m_floor->m_typeMask >> 1) & 1u) != 0;
}

// 0x5241e8 _ZNK8PFObject8IsFlyingEv
bool PFObject::IsFlying() const {
    return (m_moveFlags & 1u) != 0;
}

// 0x5241f4 _ZN8PFObject9SetFlyingEb
void PFObject::SetFlying(bool flying) {
    if (flying) {
        m_moveFlags |= 1u;
    } else {
        m_moveFlags &= ~std::uint32_t{1};
    }
}

// 0x52420c _ZNK8PFObject10IsSwimmingEv
bool PFObject::IsSwimming() const {
    return ((m_moveFlags >> 1) & 1u) != 0;
}

// 0x524218 _ZN8PFObject11SetSwimmingEb
void PFObject::SetSwimming(bool swimming) {
    if (swimming) {
        m_moveFlags |= 2u;
    } else {
        m_moveFlags &= ~std::uint32_t{2};
    }
}

// 0x524230 _ZNK8PFObject9CanPathOnEP7PFFloor
// No floor means false. The floor's type word is 0 (any object may path on it) or every bit of it is set in
// m_moveFlags.
bool PFObject::CanPathOn(PFFloor* floor) const {
    if (floor == nullptr) {
        return false;
    }
    const std::uint32_t mask = floor->m_typeMask;
    return mask == 0 || mask == (mask & m_moveFlags);
}

// 0x524264 _ZNK8PFObject15GetPathLengthSQEv
// The sum of the squared 3D length of each edge in m_path, in list order. Each edge's end points come from its
// virtual GetSource (vtable slot +0x24, call 9) and then GetDestination (slot +0x28, call 10). The float sum is
// accumulated as sum + ((dx*dx + dy*dy) + dz*dz) per edge, as the original does. An empty path gives 0.
float PFObject::GetPathLengthSQ() const {
    float sum = 0.0f;
    for (const PFGInnerEdge* edge : m_path) {
        const Point3D<float>* source = edge->GetSource();
        const Point3D<float>* destination = edge->GetDestination();
        const float dx = source->X - destination->X;
        const float dy = source->Y - destination->Y;
        const float dz = source->Z - destination->Z;
        sum = sum + ((dx * dx + dy * dy) + dz * dz);
    }
    return sum;
}

// 0x524538 _ZN8PFObjectC2Ev
// 0x524644 _ZN8PFObjectC1Ev
// The two addresses hold the same body: the complete-object (C2) and base-object (C1) constructor.
// The embedded PFGInnerDirectEdge (+0x4c .. +0x7b) is built with its vptr; the constructor sets its words: from and to null, weight 1.0f, distance, clearance and both points zero.
PFObject::PFObject() {
    m_owner = nullptr;                                  // +0x00
    m_flags = 8u;                                       // +0x04
    m_radius = 1.0f;                                    // +0x08
    m_room = nullptr;                                   // +0x0c
    m_floor = nullptr;                                  // +0x10
    m_moveFlags = 2u;                                   // +0x14
    m_pos = Point3D<float>{0.0f, 0.0f, 0.0f};           // +0x18 .. +0x20
    m_floorNormal = Vec3f_K;                            // +0x24 .. +0x2c
    m_obstacleRadius = 1.0f;                            // +0x30
    m_obstacleStrength = 0.0f;                          // +0x34
    // +0x38 and +0x3c: the list head and tail point at the sentinel. std::list starts empty.
    m_pathEnd = Point3D<float>{0.0f, 0.0f, 0.0f};       // +0x40 .. +0x48
    m_edge.m_from = nullptr;                            // +0x50
    m_edge.m_to = nullptr;                              // +0x54
    m_edge.m_weight = 1.0f;                             // +0x58
    m_edge.m_distance = 0.0f;                           // +0x5c
    m_edge.m_clearance = 0.0f;                          // +0x60
    m_edge.m_source = Point3D<float>{0.0f, 0.0f, 0.0f};       // +0x64 .. +0x6c
    m_edge.m_destination = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x70 .. +0x78
    m_pathSmoothIdx = 0;                                // +0x7c
    m_waypointDir = Point3D<float>{0.0f, 0.0f, 0.0f};  // +0x80 .. +0x88
    // +0x8c m_debugName is default constructed (empty).
    unk_9c = &m_debugName;                              // +0x9c self pointer to m_debugName
    unk_a0 = &m_debugName;                              // +0xa0 self pointer to m_debugName
}

// 0x524750 _ZN8PFObjectD2Ev
// 0x524f50 _ZN8PFObjectD1Ev
// The two addresses hold the same body: the complete-object (D2) and base-object (D1) destructor.
// Drops the path in the PF world (PFWorld::DropPath), takes the object out of the obstacle lists (InitObstacle with add false, radius 0, strength 0) and releases the path nodes; the buffer of m_debugName
// (the original frees it when it is not the inline one) and the embedded edge (vptr reset to off_96C6F0) go with the members.
PFObject::~PFObject() {
    PFWorld::s_inst.DropPath(*this);
    PFWorld::s_inst.InitObstacle(*this, false, 0.0f, 0.0f);
    m_path.clear();
}

// 0x524828 _ZNK8PFObject12DBG_DrawPathEv
// Reconstructed (r3b-w2) from the listing. An empty path returns. Otherwise the material is set up exactly as in the
// already-reconstructed ObjectManager::Draw3D: the driver is ApplicationGetInstance().m_device->videoDriver
// (glitch::IDevice +0x10, 0x524864 LDR [R3,#0x10]); its material renderer manager is driver +0xdc (0x52486c); the
// renderer type 0xFFFF (0x524870 LDRH [R5,#0x2E]) is replaced by createMaterialRenderer(1) (0x524b20), then
// getMaterialInstance(type, true) (0x524890) and setMaterial(material, technique, nullptr) (0x52489c). Every edge of
// m_path is drawn in yellow 0xFFFFFF00 (v39 = -256) from its GetSource() to its GetDestination() with each Z raised
// by 1 (0x524914/0x524964 ADD #1.0); then two magenta 0xFFFF00FF (v38 = -65281) links: m_pos -> the first edge's
// source (0x5249b0..0x524a60) and m_pathEnd -> the last edge's destination (0x524a70 onward), Z raised by 1 too.
void PFObject::DBG_DrawPath() const {
    if (m_path.empty()) {
        return;
    }

    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
    const uint16_t renderer =
        renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = renderers->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 0xff;
    driver->setMaterial(material, technique, nullptr);

    glitch::video::SColor yellow;
    yellow.color = 0xFFFFFF00u;
    for (const PFGInnerEdge* edge : m_path) {
        const Point3D<float>* from = edge->GetSource();
        const Point3D<float>* to = edge->GetDestination();
        const glitch::core::vector3d<float> start{from->X, from->Y, from->Z + 1.0f};
        const glitch::core::vector3d<float> end{to->X, to->Y, to->Z + 1.0f};
        driver->draw3DLine(start, end, yellow);  // vtable +0x1c
    }

    const PFGInnerEdge* first = m_path.front();
    const PFGInnerEdge* last = m_path.back();
    glitch::video::SColor magenta;
    magenta.color = 0xFFFF00FFu;
    const Point3D<float>* firstSource = first->GetSource();
    const Point3D<float>* lastDestination = last->GetDestination();
    const glitch::core::vector3d<float> fromPos{m_pos.X, m_pos.Y, m_pos.Z + 1.0f};
    const glitch::core::vector3d<float> toFirstSource{firstSource->X, firstSource->Y, firstSource->Z + 1.0f};
    driver->draw3DLine(fromPos, toFirstSource, magenta);
    const glitch::core::vector3d<float> fromPathEnd{m_pathEnd.X, m_pathEnd.Y, m_pathEnd.Z + 1.0f};
    const glitch::core::vector3d<float> toLastDestination{lastDestination->X, lastDestination->Y,
                                                          lastDestination->Z + 1.0f};
    driver->draw3DLine(fromPathEnd, toLastDestination, magenta);
}

// 0x524b30 _ZNK8PFObject16DBG_DrawObstacleEv
// Reconstructed (r3b-w2) from the listing. Only a registered obstacle with collisions enabled (m_flags bits 2 and 3,
// 0x524b50 AND #0xC CMP #0xC) draws. The material set-up is the same as DBG_DrawPath's (0x524b74 LDR [R3,#0x10] for
// the driver, +0xdc for the manager with the type at [manager+0x2E], createMaterialRenderer(1) at 0x524c28,
// getMaterialInstance/setMaterial at 0x524b9c/0x524ba8), then one magenta circle (the function-static SColor at
// 0x9f62fc: bytes 255, 0, 255, 255 = 0xFFFF00FF) through SceneManager::DBG_DrawCircle with the centre
// (m_pos X, m_pos Y), height m_pos Z + 10 (0x524bc8 + 10.0) and radius m_radius + m_obstacleRadius (+0x08 + +0x30).
void PFObject::DBG_DrawObstacle() const {
    if ((m_flags & 0xCu) != 0xCu) {
        return;
    }

    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
    const uint16_t renderer =
        renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = renderers->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 0xff;
    driver->setMaterial(material, technique, nullptr);

    glitch::video::SColor magenta;
    magenta.color = 0xFFFF00FFu;
    const Point2D<float> center{m_pos.X, m_pos.Y};
    DeviceSceneManager()->DBG_DrawCircle(center, m_pos.Z + 10.0f, m_radius + m_obstacleRadius, magenta);
}

// 0x524cd0 _ZNK8PFObject22DBG_DrawObstacleForcesEv
// Reconstructed (r3b-w2) from the listing. Only for a moving object that is not static (m_flags bit 0 clear, bit 1
// set, 0x524cf4). _CalcObstaclesForce(PFWorld::s_inst, *this, force, &forces) is called with the two stack vectors
// zeroed first (0x524d10/0x524d1c memset) and returns the force count. The material set-up follows (driver
// Application::m_device +0x10 at 0x524d58, manager +0xdc, type from [manager+0x2E] with 0xFFFF replaced by
// createMaterialRenderer(1) at 0x524f34, getMaterialInstance/setMaterial at 0x524d80/0x524d8c). Per force: the
// colour's two middle bytes are ~(uint8)(force.unk_0c * 255.0) (0x524df0 FMULS #255 then MVN) over 0xFF and 0xFF;
// the force direction is normalised in place (0x524e04) and scaled by unk_0c * 100 + 100 (0x524e1c); draw3DLine
// runs from m_pos to m_pos + that vector (0x524ecc). The 20-byte iteration stride is 0x524ed8.
void PFObject::DBG_DrawObstacleForces() const {
    if ((m_flags & 1u) != 0 || (m_flags & 2u) == 0) {
        return;
    }

    Point3D<float> force{0.0f, 0.0f, 0.0f};
    std::vector<PFWorld::ObstacleForce> forces;
    const int count = PFWorld::s_inst._CalcObstaclesForce(*this, force, &forces);

    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::video::CMaterialRendererManager* renderers = driver->m_materialRendererManager;  // +0xdc
    const uint16_t renderer =
        renderers->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = renderers->getMaterialInstance(renderer, true);
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 0xff;
    driver->setMaterial(material, technique, nullptr);

    for (int i = 0; i < count; ++i) {
        const PFWorld::ObstacleForce& entry = forces[static_cast<std::size_t>(i)];
        Point3D<float> direction = entry.unk_00;
        direction.normalize();
        const float scale = entry.unk_0c * 100.0f + 100.0f;

        glitch::video::SColor colour;
        colour.setComponent(0, 0xff);  // the function-static's low byte
        colour.setComponent(1, static_cast<std::uint8_t>(~static_cast<std::uint8_t>(
                                  static_cast<unsigned int>(entry.unk_0c * 255.0f))));
        colour.setComponent(2, colour.component(1));  // forceC byte 2 copies byte 1
        colour.setComponent(3, 0xff);

        const glitch::core::vector3d<float> start{m_pos.X, m_pos.Y, m_pos.Z};
        const glitch::core::vector3d<float> end{m_pos.X + direction.X * scale, m_pos.Y + direction.Y * scale,
                                                m_pos.Z + direction.Z * scale};
        driver->draw3DLine(start, end, colour);  // vtable +0x1c
    }
}
