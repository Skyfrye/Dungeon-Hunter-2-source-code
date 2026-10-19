// PhysicalObject, part 2 of 2 (batch g1-game-world-PhysicalObject-442e5f-1).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the
// original 32-bit ones. Box2D is the vendored 2.0.1 build, included through dh2/PhysicalWorld.hpp.

#include <cstdint>
#include <string>

#include <Box2D.h>

#include "dh2/DebugSwitches.hpp"
#include "dh2/Application.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PhysicalWorld.hpp"

namespace {

// World units to body units. The constructor is single precision throughout: each scaled value is
// float * 0.01f (__aeabi_fmul with 0x3C23D70A), rounded once to float. The AABB sides, the owner position
// and everything derived from them (the radius, the SetAsBox half sides) use this scale.
float ToBodyUnits(float worldUnits) {
    return worldUnits * 0.01f;
}

// Body units back to world units: m_radius * 100.0f in single precision (Draw calls __aeabi_fmul with
// 0x42C80000, which is 100.0f).
float ToWorldUnits(float bodyUnits) {
    return bodyUnits * 100.0f;
}

// Density stored for every non-static body. Float bits 0x4133d70a.
constexpr float kBodyDensity = 11.24f;

// Friction the constructor writes into its shape definition (float bits 0x3e4ccccd). _init overwrites it
// with 1.0f before the shape is created. The store is kept so the definition matches the original.
constexpr float kConstructorFriction = 0.2f;

// Writes a shape's collision filter: categoryBits, maskBits and groupIndex of its b2FilterData.
void SetShapeFilter(b2Shape* shape, short group, unsigned short category, unsigned short mask) {
    b2FilterData filter;
    filter.categoryBits = category;
    filter.maskBits = mask;
    filter.groupIndex = group;
    shape->SetFilterData(filter);
}

// Box2D refilter of one shape through the world's b2World (PhysicalWorld::m_world at +0x10).
void RefilterShape(PhysicalWorld* world, b2Shape* shape) {
    world->m_world->Refilter(shape);
}

}  // namespace

// 0x46ef68 / 0x46f2f0 PhysicalObject::PhysicalObject(PhysicalWorld*, GameObject*, bool, bool, bool, bool,
//                                                    short, unsigned short, unsigned short, int)
// C1 (0x46ef68) and C2 (0x46f2f0) are the same code. The last int is unused.
PhysicalObject::PhysicalObject(PhysicalWorld* world, GameObject* owner, bool isStatic, bool isCircle,
                               bool isSensor, bool isBullet, short group, unsigned short category,
                               unsigned short mask, int /*unused*/) {
    m_world = world;                                // +0x04
    m_owner = owner;                                // +0x08
    m_radius = 0.0f;                                // +0x0c
    m_isCircle = isCircle;                          // +0x10
    m_body = nullptr;                               // +0x14
    m_shape = nullptr;                              // +0x18
    m_sensorShape = nullptr;                        // +0x1c
    m_filterDisabled = false;                       // +0x26
    m_pinned = false;                               // +0x27

    // Debug switch MP_NoCollisions replaces the group with -666 before any field uses it.
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    if (switches->GetSwitch("MP_NoCollisions")) {
        group = -666;
    }

    if (owner == nullptr) {
        return;
    }

    // Owner data: absolute AABB min at +0x12c (x) and +0x130 (y), max at +0x138 (x) and +0x13c (y);
    // position at +0x160 (x, y). All in world units.
    const float minX = owner->m_absAabb[0];
    const float minY = owner->m_absAabb[1];
    const float maxX = owner->m_absAabb[3];
    const float maxY = owner->m_absAabb[4];
    const float bodyX = ToBodyUnits(owner->m_position.X);
    const float bodyY = ToBodyUnits(owner->m_position.Y);

    b2CircleDef circle;     // defaults: localPosition zero, radius 1.0, type circle
    b2PolygonDef polygon;   // defaults: type polygon, no vertices yet
    b2ShapeDef* shape = nullptr;

    if (isCircle) {
        // Radius from the larger side of the AABB, in body units.
        float side = ToBodyUnits(maxY - minY);
        const float width = ToBodyUnits(maxX - minX);
        if (width >= side) {
            side = width;
        }
        m_radius = side * 0.5f;
        circle.radius = side * 0.5f;
        shape = &circle;
    } else {
        float width = ToBodyUnits(maxX - minX);
        float height = ToBodyUnits(maxY - minY);
        polygon.SetAsBox(width * 0.5f, height * 0.5f);
        if (width >= height) {
            height = width;
        }
        m_radius = height * 0.5f;
        shape = &polygon;
    }

    // Filter and sensor flag the constructor writes into the definition (for both shape kinds), then the
    // object's own copies. The original stores this filter in the object before _init.
    shape->friction = kConstructorFriction;
    shape->isSensor = isSensor;
    shape->filter.categoryBits = category;
    shape->filter.maskBits = mask;
    shape->filter.groupIndex = group;
    m_group = group;        // +0x24
    m_category = category;  // +0x20
    m_mask = mask;          // +0x22

    _init(shape, bodyX, bodyY, isStatic, isBullet);
}

// 0x46eebc PhysicalObject::~PhysicalObject() (D1, Itanium complete-object destructor).
// 0x46ef20 is D2 with the same body. Both are defined once here.
PhysicalObject::~PhysicalObject() {
    if (m_body != nullptr) {
        m_world->destroyBody(m_body);   // PhysicalWorld::destroyBody takes the pointer by reference and clears it
    }
}

// 0x46ef04 PhysicalObject::~PhysicalObject() (D0, deleting destructor): not rebuilt, compiler-generated.
// The original calls the destructor above and then frees the object. A `delete` expression does the same.

// 0x46edf0 PhysicalObject::_init(b2ShapeDef*, float, float, bool, bool)
void PhysicalObject::_init(b2ShapeDef* shape, float x, float y, bool isStatic, bool isBullet) {
    // Body definition. The original zeroes the mass data, angle and dampings (the b2BodyDef defaults)
    // and sets userData, the position, and the four flags at the vendored 2.0.1 positions
    // allowSleep, isSleeping, fixedRotation and isBullet (bytes +0x28 .. +0x2b of the definition).
    b2BodyDef bodyDef;
    bodyDef.userData = this;
    bodyDef.position.x = x;
    bodyDef.position.y = y;
    bodyDef.allowSleep = true;
    bodyDef.isSleeping = true;
    bodyDef.fixedRotation = true;
    bodyDef.isBullet = isBullet;

    m_body = m_world->createBody(&bodyDef);
    m_body->SetUserData(this);                  // body user data (+0x90 in the original)

    shape->friction = 1.0f;
    const bool sensor = shape->isSensor;
    shape->restitution = 0.0f;
    shape->density = isStatic ? 0.0f : kBodyDensity;
    shape->userData = this;

    if (sensor) {
        m_sensorShape = _addShape(shape, true);
    } else {
        m_shape = _addShape(shape, true);
    }
}

// 0x46edb8 PhysicalObject::_addShape(b2ShapeDef*, bool)
b2Shape* PhysicalObject::_addShape(b2ShapeDef* shape, bool updateMass) {
    b2Shape* created = m_body->CreateShape(shape);
    if (created != nullptr) {
        created->SetUserData(this);             // the original writes this at shape +0x2c
        if (updateMass) {
            m_body->SetMassFromShapes();
        }
    }
    return created;
}

// 0x46ec6c PhysicalObject::resetFilter()
void PhysicalObject::resetFilter() {
    if (m_shape != nullptr) {
        SetShapeFilter(m_shape, m_group, m_category, m_mask);
        RefilterShape(m_world, m_shape);
    }
    if (m_sensorShape != nullptr) {
        SetShapeFilter(m_sensorShape, m_group, m_category, m_mask);
        RefilterShape(m_world, m_sensorShape);
    }
    m_filterDisabled = false;                   // +0x26
}

// 0x46ece8 PhysicalObject::setFilter(short, unsigned short, unsigned short, bool)
// The object's own m_category, m_mask and m_group are not changed here, so resetFilter restores the values
// the constructor stored. That matches the pseudocode.
void PhysicalObject::setFilter(short group, unsigned short category, unsigned short mask, bool alsoSensor) {
    if (m_shape != nullptr) {
        SetShapeFilter(m_shape, group, category, mask);
        RefilterShape(m_world, m_shape);
    }
    if (m_sensorShape != nullptr && alsoSensor) {
        SetShapeFilter(m_sensorShape, group, category, mask);
        RefilterShape(m_world, m_sensorShape);
    }
    m_filterDisabled = false;                   // +0x26
}

// 0x46ed64 PhysicalObject::getLookAt(Point2D<float>&)
// The owner's look-at vector (x, y), or (0, 0) without an owner.
void PhysicalObject::getLookAt(Point2D<float>& out) {
    if (m_owner != nullptr) {
        Point3D<float> look = {};
        m_owner->GetLookAtVec(look);
        out.X = look.X;
        out.Y = look.Y;
    } else {
        out.Y = 0.0f;
        out.X = 0.0f;
    }
}

// 0x46f754 PhysicalObject::Draw() const
// With the isDisplayingPhysicalBodies switch on, a shape (or sensor shape) and a visible owner: the plain material (built-in renderer
// type 1) of the device's driver is set; a circle body is drawn with SceneManager::DBG_DrawCircle at the owner's height plus 10 and
// the fill colour; a box body draws four edges around the centre (half extent = radius * 100) in the edge colour and the two diagonals
// in the fill colour through the driver's draw3DLine (vtable +0x1c). Static bodies are white, moving ones yellow and sleeping ones dark
// yellow.
void PhysicalObject::Draw() const {
    DebugSwitches* switches = DebugSwitches::GetInstance();
    switches->load();
    if (!switches->GetSwitch("isDisplayingPhysicalBodies") ||
        (m_shape == nullptr && m_sensorShape == nullptr)) {
        return;
    }
    if (m_owner == nullptr || !m_owner->m_visible) {
        return;
    }

    const Point2D<float> center = getPosition();
    glitch::video::IVideoDriver* driver = ApplicationGetInstance().m_device->videoDriver;   // device +0x10
    const float halfExtent = ToWorldUnits(m_radius);    // v5 = m_radius * 100.0f (single precision)
    const float z = m_owner->m_position.Z + 10.0f;      // owner +0x168 (m_position.Z), plus 10

    glitch::video::CMaterialRendererManager* materials = driver->m_materialRendererManager;  // driver +0xdc
    const std::uint16_t renderer = materials->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(1));
    boost::intrusive_ptr<glitch::video::CMaterial> material = materials->getMaterialInstance(renderer, true);
    const std::uint8_t technique = material ? static_cast<std::uint8_t>(material->getTechnique()) : 255;
    driver->setMaterial(material, technique, nullptr);

    // Colours as ARGB. A body that is not static is drawn in yellow, dark yellow when asleep. A static
    // body is drawn white. The second value is the one the original uses for the circle and the diagonals.
    glitch::video::SColor edgeColor;
    glitch::video::SColor fillColor;
    edgeColor.color = 0xffffffffu;                      // v17 = -1
    fillColor.color = 0x7fffffffu;                      // v18 = 0x7fffffff
    if (!m_body->IsStatic()) {
        if (m_body->IsSleeping()) {
            edgeColor.color = 0xff7f7f00u;              // -8421632
            fillColor.color = 0x7f7f7f00u;              // 2139062016
        } else {
            edgeColor.color = 0xffffff00u;              // -256
            fillColor.color = 0x7fffff00u;              // 2147483392
        }
    }

    if (m_isCircle) {
        DeviceSceneManager()->DBG_DrawCircle(center, z, halfExtent, fillColor);
    } else {
        const glitch::core::vector3d<float> lowLow{center.X - halfExtent, center.Y - halfExtent, z};
        const glitch::core::vector3d<float> lowHigh{center.X - halfExtent, halfExtent + center.Y, z};
        const glitch::core::vector3d<float> highHigh{halfExtent + center.X, halfExtent + center.Y, z};
        const glitch::core::vector3d<float> highLow{halfExtent + center.X, center.Y - halfExtent, z};
        driver->draw3DLine(lowLow, lowHigh, edgeColor);
        driver->draw3DLine(lowHigh, highHigh, edgeColor);
        driver->draw3DLine(highHigh, highLow, edgeColor);
        driver->draw3DLine(highLow, lowLow, edgeColor);
        driver->draw3DLine(lowLow, highHigh, fillColor);
        driver->draw3DLine(lowHigh, highLow, fillColor);
    }
}

