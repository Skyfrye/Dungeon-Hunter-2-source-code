// PhysicalWorld: the level's Box2D world and its listener. It derives from the four Box2D listener interfaces
// (boundary, contact filter, contact listener, destruction listener), and load() registers each subobject with
// the b2World it creates.
// Original 32-bit size 0x14 (20), allocated with operator new(20) by the game. The four vptrs sit at +0x00, +0x04,
// +0x08 and +0x0c (the listener subobjects in base order), and m_world at +0x10 holds the b2World created by load().
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x34bc30 / 0x34bc7c, load 0x34c048, clear 0x34be0c).
// Box2D is vendored at port/physics-backend/box2d-2.0.1 and is included through its public header.
#pragma once

#include <Box2D.h>

class PhysicalBaseObject;

class PhysicalWorld : public b2BoundaryListener, public b2ContactFilter, public b2ContactListener,
                      public b2DestructionListener {
public:
    PhysicalWorld();                                                        // 0x34bc30 / 0x34bc7c
    ~PhysicalWorld() override;                                              // vtable slots 0 and 1: 0x34bf84, 0x34bfe4, 0x34c000

    // Box2D listener overrides, in primary vtable order (slots 2 to 9). Each one is a final overrider that
    // the primary vtable carries for a secondary base, so the secondary vtables hold thunks to these.
    void Violation(b2Body* body) override;                                  // slot 2: 0x34c62c, b2BoundaryListener, checks a debug switch
    bool ShouldCollide(b2Shape* shape1, b2Shape* shape2) override;          // slot 3: 0x34c304, b2ContactFilter; defers to the base filter when either shape's user data is null
    void Add(const b2ContactPoint* point) override;                         // slot 4: 0x34c6c4, b2ContactListener
    void Persist(const b2ContactPoint* point) override;                     // slot 5: 0x34c7f4, b2ContactListener
    void Remove(const b2ContactPoint* point) override;                      // slot 6: 0x34c418, b2ContactListener
    void Result(const b2ContactResult* result) override;                    // slot 7: 0x34c548, b2ContactListener, checks a debug switch
    void SayGoodbye(b2Joint* joint) override;                               // slot 8: 0x34c2cc, b2DestructionListener (empty)
    void SayGoodbye(b2Shape* shape) override;                               // slot 9: 0x34c2d8, b2DestructionListener (empty)

    // Body and world control.
    void load(float minX, float minY, float maxX, float maxY);              // 0x34c048 clear(), then new b2World over the bounds, registering this, +0x04, +0x08 and +0x0c as its listeners
    void clear();                                                           // 0x34be0c destroys m_world (b2World dtor, then CustomFree) and nulls it, after a body tracing pass gated by a debug switch
    void update();                                                          // 0x34bd08 steps m_world by the application's dt in seconds, with 10 iterations
    b2Body* createBody(b2BodyDef* def);                                     // 0x34bcf0 null def returns null
    void destroyBody(b2Body*& body);                                        // 0x34bcc8 destroys the body and clears the pointer

    // Decides which side of a contact belongs to `first`: the contact point's offset from the body of point->shape1
    // (first's shape body, m_xf.position), dotted with first's getLookAt vector (slot 7), is positive. When that body
    // has no mass, the answer comes from point->shape2's body instead. The fourth argument is passed by the callers
    // and never read.
    bool _IsShape1Instigator(const b2ContactPoint* point, PhysicalBaseObject* first, PhysicalBaseObject* second);  // 0x34c1e4

    b2World* m_world;                                                       // +0x10 the Box2D world (operator new(0x19278)); null until load()
};
