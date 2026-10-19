// Test for batch g1-game-world-PhysicalObject-442e5f-1.
//
// Part 1 zero-fills the object (no body, no shapes, no owner) and checks the state changes that need no Box2D
// body: resetFilter, setFilter, getLookAt and the destructor with no body. Every call is qualified (non-virtual),
// so no vtable dispatch happens.
//
// Part 2 runs the real constructor with the Box2D and engine calls replaced by recording stubs. It checks the body
// position, the box half sides and the radius that the constructor passes on. The original computes the body-unit
// scale in single precision (float * 0.01f, __aeabi_fmul with 0x3C23D70A), so the expected values below are float.
// The test value 374.375 rounds differently in double, and a check guards that, so a regression to double fails.
//
// The translation unit under test references symbols that other batches or the vendored Box2D sources define.
// They are provided below as link stubs. The stubs that part 2 reaches record their arguments; the rest abort if
// they are called.

#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>

#include <Box2D.h>

#include "dh2/DebugSwitches.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PhysicalWorld.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(PhysicalObject) unsigned char g_storage[sizeof(PhysicalObject)];
alignas(PhysicalWorld) unsigned char g_worldStorage[sizeof(PhysicalWorld)];
alignas(GameObject) unsigned char g_ownerStorage[sizeof(GameObject)];
alignas(DebugSwitches) unsigned char g_switchStorage[sizeof(DebugSwitches)];
alignas(b2Body) unsigned char g_bodyStorage[sizeof(b2Body)];
alignas(b2Shape) unsigned char g_shapeStorage[sizeof(b2Shape)];

PhysicalObject* Storage() {
    return reinterpret_cast<PhysicalObject*>(g_storage);
}

// What the stubs record during part 2.
bool g_noCollisionsSwitch = false;      // the value GetSwitch("MP_NoCollisions") returns
int g_createBodyCalls = 0;
int g_destroyBodyCalls = 0;
int g_setAsBoxCalls = 0;
int g_shapeCalls = 0;
const void* g_bodyUserData = nullptr;
float g_bodyX = 0.0f;
float g_bodyY = 0.0f;
bool g_bodyBullet = false;
float g_boxHalfX = 0.0f;
float g_boxHalfY = 0.0f;
b2ShapeType g_shapeType = e_unknownShape;   // of the last shape definition passed to CreateShape
float g_shapeRadius = 0.0f;
float g_shapeFriction = 0.0f;
float g_shapeDensity = 0.0f;
bool g_shapeSensor = false;
const void* g_shapeUserData = nullptr;
unsigned short g_shapeCategory = 0;
unsigned short g_shapeMask = 0;
short g_shapeGroup = 0;

void ResetRecords() {
    g_createBodyCalls = 0;
    g_destroyBodyCalls = 0;
    g_setAsBoxCalls = 0;
    g_shapeCalls = 0;
    g_bodyUserData = nullptr;
    g_bodyX = 0.0f;
    g_bodyY = 0.0f;
    g_bodyBullet = false;
    g_boxHalfX = 0.0f;
    g_boxHalfY = 0.0f;
    g_shapeType = e_unknownShape;
    g_shapeRadius = 0.0f;
    g_shapeFriction = 0.0f;
    g_shapeDensity = 0.0f;
    g_shapeSensor = false;
    g_shapeUserData = nullptr;
    g_shapeCategory = 0;
    g_shapeMask = 0;
    g_shapeGroup = 0;
}

// The original's body-unit scale: float * 0.01f, rounded once to float.
float ToBodyLikeOriginal(float worldUnits) {
    volatile float value = worldUnits;
    volatile float scale = 0.01f;
    return value * scale;
}

// The double path the original does not take. Used only to check that the test values tell the two apart.
float ToBodyViaDouble(float worldUnits) {
    return static_cast<float>(static_cast<double>(worldUnits) * 0.01);
}

// An owner with the given absolute AABB (world units) and position. The owner is never constructed, only its
// fields are written, as the other checks do with the object.
GameObject* MakeOwner(float minX, float minY, float maxX, float maxY, float posX, float posY) {
    GameObject* owner = reinterpret_cast<GameObject*>(g_ownerStorage);
    owner->m_absAabb[0] = minX;
    owner->m_absAabb[1] = minY;
    owner->m_absAabb[2] = 0.0f;
    owner->m_absAabb[3] = maxX;
    owner->m_absAabb[4] = maxY;
    owner->m_absAabb[5] = 0.0f;
    owner->m_position.X = posX;
    owner->m_position.Y = posY;
    owner->m_position.Z = 0.0f;
    return owner;
}

// Builds the object in g_storage through its constructor. The world is the unconstructed g_worldStorage, which the
// constructor only stores.
PhysicalObject* Construct(GameObject* owner, bool isStatic, bool isCircle, bool isSensor, bool isBullet,
                          short group, unsigned short category, unsigned short mask) {
    std::memset(g_storage, 0, sizeof g_storage);
    PhysicalWorld* world = reinterpret_cast<PhysicalWorld*>(g_worldStorage);
    return new (g_storage) PhysicalObject(world, owner, isStatic, isCircle, isSensor, isBullet, group, category,
                                          mask, 0);
}

}  // namespace

// ---- link stubs ----------------------------------------------------------------------------------------

DebugSwitches* DebugSwitches::GetInstance() { return reinterpret_cast<DebugSwitches*>(g_switchStorage); }
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) { return name == "MP_NoCollisions" && g_noCollisionsSwitch; }

Point2D<float> PhysicalObject::getPosition() const { std::abort(); }

bool PhysicalObject::onCollisionTest(PhysicalBaseObject*, short, unsigned short, unsigned short, short,
                                     unsigned short, unsigned short) {
    std::abort();
}
void PhysicalObject::onCollisionBegins(PhysicalBaseObject*, const Point2D<float>&, bool) { std::abort(); }
void PhysicalObject::onCollisionPersists(PhysicalBaseObject*, const Point2D<float>&, bool) { std::abort(); }
void PhysicalObject::onCollisionEnds(PhysicalBaseObject*, const Point2D<float>&, bool) { std::abort(); }
void PhysicalObject::onCollisionResults(PhysicalBaseObject*, bool) { std::abort(); }
void PhysicalObject::Update() { std::abort(); }

b2Body* PhysicalWorld::createBody(b2BodyDef* def) {
    if (def == nullptr) {
        return nullptr;
    }
    ++g_createBodyCalls;
    g_bodyUserData = def->userData;
    g_bodyX = def->position.x;
    g_bodyY = def->position.y;
    g_bodyBullet = def->isBullet;
    return reinterpret_cast<b2Body*>(g_bodyStorage);
}

void PhysicalWorld::destroyBody(b2Body*& body) {
    ++g_destroyBodyCalls;
    body = nullptr;
}

void b2World::Refilter(b2Shape*) { std::abort(); }

b2Shape* b2Body::CreateShape(b2ShapeDef* def) {
    ++g_shapeCalls;
    g_shapeType = def->type;
    g_shapeFriction = def->friction;
    g_shapeDensity = def->density;
    g_shapeSensor = def->isSensor;
    g_shapeUserData = def->userData;
    g_shapeCategory = def->filter.categoryBits;
    g_shapeMask = def->filter.maskBits;
    g_shapeGroup = def->filter.groupIndex;
    if (def->type == e_circleShape) {
        g_shapeRadius = static_cast<b2CircleDef*>(def)->radius;
    }
    return reinterpret_cast<b2Shape*>(g_shapeStorage);
}

void b2Body::SetMassFromShapes() {}

void b2PolygonDef::SetAsBox(float32 hx, float32 hy) {
    ++g_setAsBoxCalls;
    g_boxHalfX = hx;
    g_boxHalfY = hy;
}

void GameObject::GetLookAtVec(Point3D<float>&) const { std::abort(); }

// ---- checks -------------------------------------------------------------------------------------------

int main() {
    // Part 1: the zero-filled object, with no body.
    std::memset(g_storage, 0, sizeof g_storage);
    PhysicalObject* po = Storage();

    // resetFilter with no shapes: the disabled flag is cleared and the stored filter is not touched.
    po->m_filterDisabled = true;
    po->m_category = 0x0005;
    po->m_mask = 0x0009;
    po->m_group = 3;
    po->PhysicalObject::resetFilter();
    EXPECT(po->m_filterDisabled == false);
    EXPECT(po->m_category == 0x0005);
    EXPECT(po->m_mask == 0x0009);
    EXPECT(po->m_group == 3);

    // setFilter with no shapes: the disabled flag is cleared, and the object's own copy of the filter is
    // left as the constructor stored it (the pseudocode writes only the shapes).
    po->m_filterDisabled = true;
    po->PhysicalObject::setFilter(7, 0x0100, 0x0200, true);
    EXPECT(po->m_filterDisabled == false);
    EXPECT(po->m_category == 0x0005);
    EXPECT(po->m_mask == 0x0009);
    EXPECT(po->m_group == 3);

    // getLookAt without an owner: (0, 0) whatever the output held before.
    Point2D<float> out;
    out.X = 12.0f;
    out.Y = -4.0f;
    po->PhysicalObject::getLookAt(out);
    EXPECT(out.X == 0.0f);
    EXPECT(out.Y == 0.0f);

    // The destructor with no body destroys nothing (no body means destroyBody is not called).
    po->PhysicalObject::~PhysicalObject();
    EXPECT(g_destroyBodyCalls == 0);

    // Part 2: the constructor. The width of the box is 384.375 - 10 = 374.375 world units, the height is
    // 120 - 20 = 100, and the owner position is (374.375, -250).
    const float width = ToBodyLikeOriginal(374.375f);
    const float height = ToBodyLikeOriginal(100.0f);
    // Guard: the test value separates the float scale from the double scale, so a double regression fails.
    EXPECT(width != ToBodyViaDouble(374.375f));

    // Box, non-static, not a sensor. Width >= height, so the radius is half the width and the SetAsBox half sides
    // are width*0.5 and height*0.5 (taken before the radius swap).
    {
        GameObject* owner = MakeOwner(10.0f, 20.0f, 384.375f, 120.0f, 374.375f, -250.0f);
        ResetRecords();
        po = Construct(owner, false, false, false, false, 3, 0x0005, 0x0009);
        EXPECT(g_createBodyCalls == 1);
        EXPECT(g_bodyX == ToBodyLikeOriginal(374.375f));
        EXPECT(g_bodyY == ToBodyLikeOriginal(-250.0f));
        EXPECT(g_bodyUserData == po);
        EXPECT(g_bodyBullet == false);
        EXPECT(g_setAsBoxCalls == 1);
        EXPECT(g_boxHalfX == width * 0.5f);
        EXPECT(g_boxHalfY == height * 0.5f);
        EXPECT(po->m_radius == width * 0.5f);
        EXPECT(po->m_isCircle == false);
        EXPECT(g_shapeCalls == 1);
        EXPECT(g_shapeType == e_polygonShape);
        EXPECT(g_shapeFriction == 1.0f);            // _init overwrites the constructor's 0.2 with 1.0
        EXPECT(g_shapeDensity == 11.24f);
        EXPECT(g_shapeSensor == false);
        EXPECT(g_shapeUserData == po);
        EXPECT(g_shapeCategory == 0x0005 && g_shapeMask == 0x0009 && g_shapeGroup == 3);
        EXPECT(po->m_shape != nullptr);
        EXPECT(po->m_sensorShape == nullptr);
        EXPECT(po->m_group == 3 && po->m_category == 0x0005 && po->m_mask == 0x0009);
        po->PhysicalObject::~PhysicalObject();
        EXPECT(g_destroyBodyCalls == 1);
    }

    // Circle, same owner. The radius is half the larger side, which is the width, in body units. No box is set.
    {
        GameObject* owner = MakeOwner(10.0f, 20.0f, 384.375f, 120.0f, 374.375f, -250.0f);
        ResetRecords();
        po = Construct(owner, false, true, false, false, 3, 0x0005, 0x0009);
        EXPECT(g_setAsBoxCalls == 0);
        EXPECT(g_shapeCalls == 1);
        EXPECT(g_shapeType == e_circleShape);
        EXPECT(g_shapeRadius == width * 0.5f);
        EXPECT(po->m_radius == width * 0.5f);
        EXPECT(po->m_isCircle == true);
        EXPECT(po->m_shape != nullptr);
        po->PhysicalObject::~PhysicalObject();
    }

    // Box, static, sensor and bullet. A static body has zero density, the sensor shape is m_sensorShape, and the
    // bullet flag reaches the body definition. Width 100 gives 1.0 and height 50 gives 0.5, so the box half sides
    // are 0.5 and 0.25, and the radius is half the width.
    {
        GameObject* owner = MakeOwner(0.0f, 0.0f, 100.0f, 50.0f, 0.0f, 0.0f);
        ResetRecords();
        po = Construct(owner, true, false, true, true, 1, 0x0002, 0x0004);
        EXPECT(g_bodyBullet == true);
        EXPECT(g_bodyX == 0.0f);
        EXPECT(g_shapeSensor == true);
        EXPECT(g_shapeDensity == 0.0f);
        EXPECT(g_boxHalfX == ToBodyLikeOriginal(100.0f) * 0.5f);
        EXPECT(g_boxHalfY == ToBodyLikeOriginal(50.0f) * 0.5f);
        EXPECT(po->m_radius == ToBodyLikeOriginal(100.0f) * 0.5f);
        EXPECT(po->m_sensorShape != nullptr);
        EXPECT(po->m_shape == nullptr);
        po->PhysicalObject::~PhysicalObject();
    }

    // MP_NoCollisions replaces the group with -666 before any field uses it, in the object and in the shape.
    {
        GameObject* owner = MakeOwner(10.0f, 20.0f, 384.375f, 120.0f, 374.375f, -250.0f);
        ResetRecords();
        g_noCollisionsSwitch = true;
        po = Construct(owner, false, false, false, false, 3, 0x0005, 0x0009);
        g_noCollisionsSwitch = false;
        EXPECT(po->m_group == -666);
        EXPECT(g_shapeGroup == -666);
        po->PhysicalObject::~PhysicalObject();
    }

    // No owner: the constructor stops after the switch check, so no body or shape is created.
    {
        ResetRecords();
        po = Construct(nullptr, false, false, false, false, 3, 0x0005, 0x0009);
        EXPECT(po->m_body == nullptr);
        EXPECT(po->m_shape == nullptr);
        EXPECT(po->m_sensorShape == nullptr);
        EXPECT(po->m_radius == 0.0f);
        EXPECT(g_createBodyCalls == 0);
        EXPECT(g_shapeCalls == 0);
        po->PhysicalObject::~PhysicalObject();
        EXPECT(g_destroyBodyCalls == 0);
    }

    if (g_failures == 0) {
        std::printf("PhysicalObject part 2 tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
