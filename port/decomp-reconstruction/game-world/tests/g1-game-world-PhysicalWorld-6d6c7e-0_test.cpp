// Test for batch g1-game-world-PhysicalWorld-6d6c7e-0.
//
// Part 1 runs the constructor, createBody, destroyBody, update and clear through recording stubs for the b2World
// calls, the allocator and Application, and checks the arguments each one passes on.
// Part 2 runs load, which creates the world and registers its four listeners.
// Part 3 runs the contact logic: the instigator decision, the shape filter dispatch in ShouldCollide, and the Add,
// Persist, Remove and Result callbacks, with real test bodies and shapes and recording PhysicalBaseObject owners.
//
// The translation unit under test references symbols that Box2D, the engine and other batches define. They are
// provided below as link stubs. The b2World and b2Body constructors are private or protected in Box2D, so the stubs
// use the access Box2D grants: b2World is a friend of b2Body, and TestShape derives from b2Shape.

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>
#include <vector>

#include <Box2D.h>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/PhysicalBaseObject.hpp"
#include "dh2/PhysicalWorld.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/runtime_support.hpp"

// The Application instance that update() reads GetDt() through. Singleton.hpp declares it extern; this TU provides it.
template class Singleton<Application>;

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// ---- recording state for the stubs ------------------------------------------------------------------------------

std::vector<std::string> g_switchNames;     // every DebugSwitches::GetSwitch name, in call order
int g_loadCalls = 0;
int g_customFrees = 0;
int g_profilingPushes = 0;
int g_newCalls = 0;
std::size_t g_newSize = 0;
int g_worldsCreated = 0;
int g_worldsDestroyed = 0;
b2World* g_lastWorldCreated = nullptr;
b2AABB g_worldAabb;
b2Vec2 g_worldGravity;
bool g_worldDoSleep = false;
b2BoundaryListener* g_boundaryListener = nullptr;
b2ContactFilter* g_contactFilter = nullptr;
b2ContactListener* g_contactListener = nullptr;
b2DestructionListener* g_destructionListener = nullptr;
int g_createBodyCalls = 0;
b2World* g_createBodyWorld = nullptr;
const b2BodyDef* g_createBodyDef = nullptr;
int g_destroyBodyCalls = 0;
b2World* g_destroyBodyWorld = nullptr;
b2Body* g_destroyedBody = nullptr;
int g_stepCalls = 0;
float g_stepDt = 0.0f;
int g_stepIterations = 0;
int g_baseFilterCalls = 0;
bool g_baseFilterResult = true;
float g_nextBodyMass = 0.0f;   // mass and origin the next body created by b2World::CreateBody gets
float g_nextBodyX = 0.0f;
float g_nextBodyY = 0.0f;

// Only the addresses of these are used. The world storage stays zero, so GetBodyList() reads a null list.
alignas(b2World) unsigned char g_worldStorage[sizeof(b2World)];
constexpr int kMaxBodies = 32;
alignas(b2Body) unsigned char g_bodyStorage[kMaxBodies][sizeof(b2Body)];
int g_bodyCount = 0;

b2World* FakeWorld() {
    return reinterpret_cast<b2World*>(g_worldStorage);
}

void ResetRecords() {
    g_switchNames.clear();
    g_loadCalls = 0;
    g_customFrees = 0;
    g_profilingPushes = 0;
    g_newCalls = 0;
    g_worldsCreated = 0;
    g_worldsDestroyed = 0;
    g_createBodyCalls = 0;
    g_destroyBodyCalls = 0;
    g_stepCalls = 0;
    g_baseFilterCalls = 0;
    g_baseFilterResult = true;
    g_boundaryListener = nullptr;
    g_contactFilter = nullptr;
    g_contactListener = nullptr;
    g_destructionListener = nullptr;
}

// What a PhysicalBaseObject owner recorded for one listener callback.
struct Event {
    int count = 0;
    PhysicalBaseObject* other = nullptr;
    bool hasPoint = false;
    float x = 0.0f;
    float y = 0.0f;
    bool flag = false;
};

bool Is(const Event& e, const PhysicalBaseObject* other, bool flag) {
    return e.count == 1 && e.other == other && e.flag == flag;
}

bool At(const Event& e, float x, float y) {
    return e.hasPoint && e.x == x && e.y == y;
}

// A PhysicalBaseObject that records its callbacks and answers the filter and look-at queries from its fields.
class RecordingOwner : public PhysicalBaseObject {
public:
    bool onCollisionTest(PhysicalBaseObject* other, short otherGroup, unsigned short otherCategory,
                         unsigned short otherMask, short group, unsigned short category,
                         unsigned short mask) override {
        ++testCalls;
        testOther = other;
        testOtherGroup = otherGroup;
        testOtherCategory = otherCategory;
        testOtherMask = otherMask;
        testGroup = group;
        testCategory = category;
        testMask = mask;
        return acceptTest;
    }

    void onCollisionBegins(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override {
        Note(begin, other, &point, flag);
    }

    void onCollisionPersists(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override {
        Note(persist, other, &point, flag);
    }

    void onCollisionEnds(PhysicalBaseObject* other, const Point2D<float>& point, bool flag) override {
        Note(end, other, &point, flag);
    }

    void onCollisionResults(PhysicalBaseObject* other, bool flag) override {
        Note(result, other, nullptr, flag);
    }

    void getLookAt(Point2D<float>& out) override {
        ++lookAtCalls;
        out.X = lookX;
        out.Y = lookY;
    }

    int testCalls = 0;
    bool acceptTest = true;
    PhysicalBaseObject* testOther = nullptr;
    short testOtherGroup = 0;
    unsigned short testOtherCategory = 0;
    unsigned short testOtherMask = 0;
    short testGroup = 0;
    unsigned short testCategory = 0;
    unsigned short testMask = 0;

    int lookAtCalls = 0;
    float lookX = 0.0f;
    float lookY = 0.0f;

    Event begin;
    Event persist;
    Event end;
    Event result;

private:
    static void Note(Event& e, PhysicalBaseObject* other, const Point2D<float>* point, bool flag) {
        ++e.count;
        e.other = other;
        e.hasPoint = point != nullptr;
        if (point != nullptr) {
            e.x = point->X;
            e.y = point->Y;
        }
        e.flag = flag;
    }
};

// A shape on a body with an owner in its user data and a filter. Box2D's b2Shape constructor is protected, and this
// class derives from b2Shape, so it can call it and set the protected m_body.
class TestShape : public b2Shape {
public:
    TestShape(b2Body* body, PhysicalBaseObject* owner, short group, unsigned short category, unsigned short mask)
        : b2Shape(nullptr) {
        m_body = body;
        SetUserData(owner);
        b2FilterData filter;
        filter.categoryBits = category;
        filter.maskBits = mask;
        filter.groupIndex = group;
        SetFilterData(filter);
    }

    bool TestPoint(const b2XForm&, const b2Vec2&) const override { return false; }
    bool TestSegment(const b2XForm&, float32*, b2Vec2*, const b2Segment&, float32) const override { return false; }
    void ComputeAABB(b2AABB*, const b2XForm&) const override {}
    void ComputeSweptAABB(b2AABB*, const b2XForm&, const b2XForm&) const override {}
    void ComputeMass(b2MassData*) const override {}
    void UpdateSweepRadius(const b2Vec2&) override {}
};

b2Body* MakeBody(PhysicalWorld& world, float mass, float x, float y) {
    b2BodyDef def;
    g_nextBodyMass = mass;
    g_nextBodyX = x;
    g_nextBodyY = y;
    return world.createBody(&def);
}

b2ContactPoint MakePoint(b2Shape* shape1, b2Shape* shape2, float x, float y) {
    b2ContactPoint point;
    point.shape1 = shape1;
    point.shape2 = shape2;
    point.position = b2Vec2(x, y);
    return point;
}

b2ContactResult MakeResult(b2Shape* shape1, b2Shape* shape2) {
    b2ContactResult result;
    result.shape1 = shape1;
    result.shape2 = shape2;
    return result;
}

}  // namespace

// ---- link stubs ----------------------------------------------------------------------------------------------

DebugSwitches DebugSwitches::s_inst;

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}

void DebugSwitches::load() {
    ++g_loadCalls;
}

bool DebugSwitches::GetSwitch(const std::string& name) {
    g_switchNames.push_back(name);
    return name == "IsTracingPhysicalWorld";
}

Application::Application() {}
Application::~Application() {}

int Application::GetDt() {
    return 16;
}

void PushProfilingContext(const char*) {
    ++g_profilingPushes;
}

void PopProfilingContext(const char*) {}

void CustomFree(void*) {
    ++g_customFrees;
}

void* operator new(std::size_t size, MemoryHintState) {
    ++g_newCalls;
    g_newSize = size;
    return std::malloc(size);
}

b2World::b2World(const b2AABB& worldAABB, const b2Vec2& gravity, bool doSleep) {
    ++g_worldsCreated;
    g_lastWorldCreated = this;
    g_worldAabb = worldAABB;
    g_worldGravity = gravity;
    g_worldDoSleep = doSleep;
}

b2World::~b2World() {
    ++g_worldsDestroyed;
}

void b2World::SetBoundaryListener(b2BoundaryListener* listener) {
    g_boundaryListener = listener;
}

void b2World::SetContactFilter(b2ContactFilter* filter) {
    g_contactFilter = filter;
}

void b2World::SetContactListener(b2ContactListener* listener) {
    g_contactListener = listener;
}

void b2World::SetDestructionListener(b2DestructionListener* listener) {
    g_destructionListener = listener;
}

void b2World::Step(float32 timeStep, int32 iterations) {
    ++g_stepCalls;
    g_stepDt = timeStep;
    g_stepIterations = iterations;
}

// Creates the body in the next test slot, the way b2World creates one: b2World is a friend of b2Body, so it can use
// the private constructor and set the private mass and origin.
b2Body* b2World::CreateBody(const b2BodyDef* def) {
    ++g_createBodyCalls;
    g_createBodyWorld = this;
    g_createBodyDef = def;
    if (g_bodyCount >= kMaxBodies) {
        std::abort();
    }
    void* storage = g_bodyStorage[g_bodyCount++];
    b2Body* body = new (storage) b2Body(def, this);
    body->m_mass = g_nextBodyMass;
    body->m_xf.position.x = g_nextBodyX;
    body->m_xf.position.y = g_nextBodyY;
    return body;
}

void b2World::DestroyBody(b2Body* body) {
    ++g_destroyBodyCalls;
    g_destroyBodyWorld = this;
    g_destroyedBody = body;
}

b2Body::b2Body(const b2BodyDef*, b2World* world) {
    m_world = world;
    m_mass = 0.0f;
    m_xf.position.x = 0.0f;
    m_xf.position.y = 0.0f;
}

// b2World's members are default-constructed inside the stubbed b2World constructor and destroyed in its destructor,
// so their out-of-line constructors and destructors need definitions too. None of them is called otherwise.
b2BlockAllocator::b2BlockAllocator() {}
b2BlockAllocator::~b2BlockAllocator() {}
b2StackAllocator::b2StackAllocator() {}
b2StackAllocator::~b2StackAllocator() {}
void* b2ContactManager::PairAdded(void*, void*) {
    return nullptr;
}
void b2ContactManager::PairRemoved(void*, void*, void*) {}

bool Application::onEvent(const glitch::SEvent&) {
    return false;
}

b2Shape::b2Shape(const b2ShapeDef*) {
    m_type = e_unknownShape;
    m_next = nullptr;
    m_body = nullptr;
    m_userData = nullptr;
}

b2Shape::~b2Shape() {}

bool b2ContactFilter::ShouldCollide(b2Shape*, b2Shape*) {
    ++g_baseFilterCalls;
    return g_baseFilterResult;
}

// ---- part 1: constructor, bodies, update and clear ----------------------------------------------------------------

static void TestConstructorAndBodies() {
    {
        PhysicalWorld world;
        EXPECT(world.m_world == nullptr);
    }

    // createBody: a null definition returns null and creates nothing; a definition goes to m_world.
    {
        PhysicalWorld world;
        world.m_world = FakeWorld();
        ResetRecords();
        EXPECT(world.createBody(nullptr) == nullptr);
        EXPECT(g_createBodyCalls == 0);

        b2BodyDef def;
        g_nextBodyMass = 2.0f;
        g_nextBodyX = 4.0f;
        g_nextBodyY = -1.0f;
        b2Body* body = world.createBody(&def);
        EXPECT(body != nullptr);
        EXPECT(g_createBodyCalls == 1);
        EXPECT(g_createBodyWorld == FakeWorld());
        EXPECT(g_createBodyDef == &def);
        EXPECT(body->GetMass() == 2.0f);
        EXPECT(body->GetPosition().x == 4.0f && body->GetPosition().y == -1.0f);
        world.m_world = nullptr;
    }

    // destroyBody: a body is destroyed in m_world and the pointer is cleared; a null pointer is only cleared.
    {
        PhysicalWorld world;
        world.m_world = FakeWorld();
        ResetRecords();
        b2Body* body = MakeBody(world, 1.0f, 0.0f, 0.0f);
        const int createsBefore = g_createBodyCalls;
        EXPECT(createsBefore == 1);
        g_destroyBodyCalls = 0;
        world.destroyBody(body);
        EXPECT(body == nullptr);
        EXPECT(g_destroyBodyCalls == 1);
        EXPECT(g_destroyBodyWorld == FakeWorld());
        EXPECT(g_destroyedBody != nullptr);

        b2Body* none = nullptr;
        world.destroyBody(none);
        EXPECT(none == nullptr);
        EXPECT(g_destroyBodyCalls == 1);
        world.m_world = nullptr;
    }

    // update: the frame time (16 ms from the stub) becomes seconds in single precision, stepped with 10 iterations.
    {
        PhysicalWorld world;
        world.m_world = FakeWorld();
        ResetRecords();
        world.update();
        EXPECT(g_profilingPushes == 1);
        EXPECT(g_stepCalls == 1);
        EXPECT(g_stepDt == 16.0f * 0.001f);
        EXPECT(g_stepIterations == 10);
        world.m_world = nullptr;
    }

    // clear: reads "isTracingPhysicalWorld" and then "IsTracingPhysicalWorld" (capital I), destroys the world and
    // clears m_world. The world storage has an empty body list, so the per-body loop reads nothing more.
    {
        PhysicalWorld world;
        world.m_world = FakeWorld();
        ResetRecords();
        world.clear();
        EXPECT(world.m_world == nullptr);
        EXPECT(g_worldsDestroyed == 1);
        EXPECT(g_customFrees == 1);
        EXPECT(g_switchNames.size() == 2);
        if (g_switchNames.size() == 2) {
            EXPECT(g_switchNames[0] == "isTracingPhysicalWorld");
            EXPECT(g_switchNames[1] == "IsTracingPhysicalWorld");
        }
        // With no world, clear does nothing.
        ResetRecords();
        world.clear();
        EXPECT(g_switchNames.empty());
        EXPECT(g_worldsDestroyed == 0);
    }

    // SayGoodbye has empty bodies: no switch read, no allocation, nothing destroyed.
    {
        PhysicalWorld world;
        ResetRecords();
        world.SayGoodbye(static_cast<b2Joint*>(nullptr));
        world.SayGoodbye(static_cast<b2Shape*>(nullptr));
        EXPECT(g_switchNames.empty());
        EXPECT(g_createBodyCalls == 0);
    }
}

// ---- part 2: load registers the listeners ------------------------------------------------------------------------

static void TestLoad() {
    PhysicalWorld world;
    ResetRecords();
    world.load(-1.0f, -2.0f, 3.0f, 4.0f);

    // Clears first (nothing to clear), then the trace switch, then creates the world.
    EXPECT(g_newCalls == 1);
    EXPECT(g_newSize == sizeof(b2World));
    EXPECT(g_worldsCreated == 1);
    EXPECT(world.m_world == g_lastWorldCreated && world.m_world != nullptr);
    EXPECT(g_worldAabb.lowerBound.x == -1.0f && g_worldAabb.lowerBound.y == -2.0f);
    EXPECT(g_worldAabb.upperBound.x == 3.0f && g_worldAabb.upperBound.y == 4.0f);
    EXPECT(g_worldGravity.x == 0.0f && g_worldGravity.y == 0.0f);
    EXPECT(g_worldDoSleep);
    EXPECT(g_switchNames.size() == 1 && g_switchNames[0] == "isTracingPhysicalWorld");

    // The four listeners are the world's own subobjects of this object.
    EXPECT(g_boundaryListener == static_cast<b2BoundaryListener*>(&world));
    EXPECT(g_contactFilter == static_cast<b2ContactFilter*>(&world));
    EXPECT(g_contactListener == static_cast<b2ContactListener*>(&world));
    EXPECT(g_destructionListener == static_cast<b2DestructionListener*>(&world));

    // The created world is never stepped or destroyed here: detach it before the object's destructor runs.
    world.m_world = nullptr;
}

// ---- part 3: contact logic ----------------------------------------------------------------------------------------

// A massive body at the origin, the shape's owner looks along +x, and a contact point on either side decides the
// instigator. Each of the four callbacks runs on the same contact so the flags are checked for all four.
static void TestInstigatorAndCallbacks() {
    PhysicalWorld world;
    world.m_world = FakeWorld();

    // Case 1: both bodies massless. The instigator is shape1 (not(0 > 0) is true): shape1 gets true, shape2 false.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 0.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 0.0f, 0.0f, 0.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        TestShape shape1(body1, &owner1, 1, 2, 4);
        TestShape shape2(body2, &owner2, 3, 8, 16);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 1.5f, -2.5f);
        world.Add(&point);
        EXPECT(Is(owner1.begin, &owner2, true) && At(owner1.begin, 1.5f, -2.5f));
        EXPECT(Is(owner2.begin, &owner1, false) && At(owner2.begin, 1.5f, -2.5f));
        EXPECT(owner1.lookAtCalls == 0);   // never asked: the massless branch does not need the look-at vector
    }

    // Case 2: shape1 massless, shape2 massive. The answer is !(mass2 > 0): not the instigator.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 0.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, &owner2, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 0.0f, 0.0f);
        world.Persist(&point);
        EXPECT(Is(owner1.persist, &owner2, false));
        EXPECT(Is(owner2.persist, &owner1, true));
    }

    // Case 3: shape1 massive at the origin, look-at +x, contact at +x: the dot product is positive, so shape1 is the
    // instigator. Remove and Result are checked on this contact too.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 5.0f, 5.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        owner1.lookX = 1.0f;
        owner1.lookY = 0.0f;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, &owner2, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 2.0f, 0.0f);
        world.Remove(&point);
        EXPECT(Is(owner1.end, &owner2, true) && At(owner1.end, 2.0f, 0.0f));
        EXPECT(Is(owner2.end, &owner1, false) && At(owner2.end, 2.0f, 0.0f));
        EXPECT(owner1.lookAtCalls == 1);

        b2ContactResult result = MakeResult(&shape1, &shape2);
        world.Result(&result);
        EXPECT(Is(owner1.result, &owner2, true));
        EXPECT(Is(owner2.result, &owner1, false));
    }

    // Case 4: the contact is behind the look-at direction, so shape1 is not the instigator.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 5.0f, 5.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        owner1.lookX = 1.0f;
        owner1.lookY = 0.0f;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, &owner2, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, -2.0f, 0.0f);
        world.Add(&point);
        EXPECT(Is(owner1.begin, &owner2, false));
        EXPECT(Is(owner2.begin, &owner1, true));
    }

    // Case 5: a zero dot product is not positive, so shape1 is not the instigator.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 5.0f, 5.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        owner1.lookX = 1.0f;
        owner1.lookY = 0.0f;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, &owner2, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 0.0f, 5.0f);
        world.Persist(&point);
        EXPECT(Is(owner1.persist, &owner2, false));
        EXPECT(Is(owner2.persist, &owner1, true));
    }

    // Case 6: the offset is taken from shape1's body origin. Body at x=10, contact at x=1, look-at +x: the offset is
    // -9 and the dot product is negative. Without the origin subtraction the answer would be true.
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 1.0f, 10.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 5.0f, 5.0f);
        RecordingOwner owner1;
        RecordingOwner owner2;
        owner1.lookX = 1.0f;
        owner1.lookY = 0.0f;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, &owner2, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 1.0f, 0.0f);
        world.Add(&point);
        EXPECT(Is(owner1.begin, &owner2, false));
        EXPECT(Is(owner2.begin, &owner1, true));
    }

    // A contact with a missing owner on either side calls nothing (Add, Persist, Remove and Result).
    {
        ResetRecords();
        b2Body* body1 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        b2Body* body2 = MakeBody(world, 1.0f, 0.0f, 0.0f);
        RecordingOwner owner1;
        TestShape shape1(body1, &owner1, 0, 1, 1);
        TestShape shape2(body2, nullptr, 0, 1, 1);
        b2ContactPoint point = MakePoint(&shape1, &shape2, 0.0f, 0.0f);
        world.Add(&point);
        world.Persist(&point);
        world.Remove(&point);
        b2ContactResult result = MakeResult(&shape1, &shape2);
        world.Result(&result);
        EXPECT(owner1.begin.count == 0 && owner1.persist.count == 0 && owner1.end.count == 0);
        EXPECT(owner1.result.count == 0);
        EXPECT(owner1.lookAtCalls == 0);
    }

    // Violation reads the trace switch once and nothing else.
    {
        ResetRecords();
        b2Body* body = MakeBody(world, 1.0f, 0.0f, 0.0f);
        (void)body;
        ResetRecords();
        world.Violation(nullptr);
        EXPECT(g_switchNames.size() == 1 && g_switchNames[0] == "isTracingPhysicalWorld");
    }

    world.m_world = nullptr;
}

// ShouldCollide asks both owners and combines the answers. Each owner gets its own filter in the otherGroup,
// otherCategory and otherMask slots, as the binary passes them.
static void TestShouldCollide() {
    PhysicalWorld world;
    b2Body* body1 = nullptr;
    b2Body* body2 = nullptr;
    world.m_world = FakeWorld();
    body1 = MakeBody(world, 1.0f, 0.0f, 0.0f);
    body2 = MakeBody(world, 1.0f, 0.0f, 0.0f);
    world.m_world = nullptr;

    RecordingOwner owner1;
    RecordingOwner owner2;
    TestShape shape1(body1, &owner1, 3, 0x2, 0x5);
    TestShape shape2(body2, &owner2, -2, 0x4, 0x8);

    // Both accept: the result is true, and both owners were asked with the filters in the binary's order.
    {
        ResetRecords();
        owner1.acceptTest = true;
        owner2.acceptTest = true;
        owner1.testCalls = 0;
        owner2.testCalls = 0;
        EXPECT(world.ShouldCollide(&shape1, &shape2) == true);
        EXPECT(owner1.testCalls == 1 && owner2.testCalls == 1);
        EXPECT(owner1.testOther == &owner2);
        EXPECT(owner1.testOtherGroup == 3 && owner1.testOtherCategory == 0x2 && owner1.testOtherMask == 0x5);
        EXPECT(owner1.testGroup == -2 && owner1.testCategory == 0x4 && owner1.testMask == 0x8);
        EXPECT(owner2.testOther == &owner1);
        EXPECT(owner2.testOtherGroup == -2 && owner2.testOtherCategory == 0x4 && owner2.testOtherMask == 0x8);
        EXPECT(owner2.testGroup == 3 && owner2.testCategory == 0x2 && owner2.testMask == 0x5);
        EXPECT(g_baseFilterCalls == 0);
    }

    // The first owner refuses: the answer is false, and the second owner is still asked.
    {
        owner1.acceptTest = false;
        owner2.acceptTest = true;
        owner1.testCalls = 0;
        owner2.testCalls = 0;
        EXPECT(world.ShouldCollide(&shape1, &shape2) == false);
        EXPECT(owner1.testCalls == 1 && owner2.testCalls == 1);
    }

    // The second owner refuses: the answer is its refusal.
    {
        owner1.acceptTest = true;
        owner2.acceptTest = false;
        owner1.testCalls = 0;
        owner2.testCalls = 0;
        EXPECT(world.ShouldCollide(&shape1, &shape2) == false);
        EXPECT(owner1.testCalls == 1 && owner2.testCalls == 1);
    }

    // A shape without an owner defers to the default b2ContactFilter, and no owner is asked.
    {
        TestShape loose(body2, nullptr, 0, 1, 1);
        ResetRecords();
        owner1.acceptTest = false;
        owner1.testCalls = 0;
        owner2.testCalls = 0;
        g_baseFilterResult = true;
        EXPECT(world.ShouldCollide(&shape1, &loose) == true);
        EXPECT(g_baseFilterCalls == 1);
        EXPECT(owner1.testCalls == 0 && owner2.testCalls == 0);
        g_baseFilterResult = false;
        EXPECT(world.ShouldCollide(&loose, &shape2) == false);
        EXPECT(g_baseFilterCalls == 2);
        EXPECT(owner2.testCalls == 0);
    }
}

// createBody with a null definition returns null without touching the world, which is still null here.
static void TestNullInputs() {
    PhysicalWorld world;
    EXPECT(world.createBody(nullptr) == nullptr);
}

int main() {
    TestConstructorAndBodies();
    TestLoad();
    TestInstigatorAndCallbacks();
    TestShouldCollide();
    TestNullInputs();

    if (g_failures == 0) {
        std::printf("PASS g1-game-world-PhysicalWorld-6d6c7e-0\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
