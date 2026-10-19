// Batch v1-vendor-box2d-pack0-aa42c4-0 (category vendor-box2d, Box2D 2.0.1 in libDungeonHunter2.so).
//
// All 17 functions in this batch were compared with the upstream Box2D 2.0.1 source they are
// named after (Hex-Rays body, plus the assembly for the call sites that Hex-Rays truncated).
// Their control flow, arithmetic and member offsets match upstream, so no DH2 body is written
// here and no upstream definition is replaced with #if 0. The upstream definitions stay the
// definitions. Ledger rows are `upstream` (see ledger.d/v1-vendor-box2d-pack0-aa42c4-0.csv).
//
//   0x7e1b28  b2Body::SetMass(b2MassData const*)                                  Source/Dynamics/b2Body.cpp:178
//   0x7e25b8  b2BroadPhase::ComputeBounds(ushort*, ushort*, b2AABB const&)        Source/Collision/b2BroadPhase.cpp:140
//   0x7e3a94  b2Sweep::Advance(float)                                             Source/Common/b2Math.cpp:45
//   0x7e3bfc  b2Sweep::GetXForm(b2XForm*, float) const                            Source/Common/b2Math.cpp:25
//   0x7e47e8  b2PolygonShape::TestSegment(...) const                              Source/Collision/Shapes/b2PolygonShape.cpp:261
//   0x7e5524  b2Vec2::Normalize()                                                 Source/Common/b2Math.h:188 (inline)
//   0x7e7f7c  b2World::~b2World() [D1]                                            Source/Dynamics/b2World.cpp:65
//   0x7e7ffc  b2World::~b2World() [D2]                                            Source/Dynamics/b2World.cpp:65
//   0x7e8c9c  b2DebugDraw::b2DebugDraw() [C2]                                     Source/Dynamics/b2WorldCallbacks.cpp:40
//   0x7e8cc8  b2DebugDraw::b2DebugDraw() [C1]                                     Source/Dynamics/b2WorldCallbacks.cpp:40
//   0x7e8da0  b2BlockAllocator::Free(void*, int)                                  Source/Common/b2BlockAllocator.cpp:150
//   0x7e969c  b2CircleShape::TestSegment(...) const                               Source/Collision/Shapes/b2CircleShape.cpp:51
//   0x7eb4b0  b2MouseJoint::InitVelocityConstraints(b2TimeStep const&)            Source/Dynamics/Joints/b2MouseJoint.cpp:66
//   0x7eb778  b2MouseJoint::GetAnchor1() const                                    Source/Dynamics/Joints/b2MouseJoint.cpp:128
//   0x7eb850  b2MouseJoint::SolveVelocityConstraints(b2TimeStep const&)           Source/Dynamics/Joints/b2MouseJoint.cpp:104
//   0x7ebfbc  b2PolyAndCircleContact::Evaluate(b2ContactListener*)                Source/Dynamics/Contacts/b2PolyAndCircleContact.cpp:48
//   0x7ecb84  b2PolygonContact::Evaluate(b2ContactListener*)                      Source/Dynamics/Contacts/b2PolyContact.cpp:47
//
// Paths are relative to port/decomp-reconstruction/vendor-box2d/upstream/box2d-2.0.1/.
// The DH2 settings that change layouts (b2_maxProxies, b2_maxPairs, the aligned b2Alloc header)
// are in upstream Source/Common/b2Settings.h and b2Settings.cpp, marked // DH2:.
//
// This file intentionally has no function definitions for this batch.
