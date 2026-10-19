// Batch v1-vendor-box2d-pack1-41fb55-0 (category vendor-box2d, Box2D 2.0.1 in libDungeonHunter2.so).
//
// All 19 functions in this batch were compared with the upstream Box2D 2.0.1 definition they are
// named after, using their Hex-Rays bodies (and the assembly where the decompiler was unclear).
// Control flow, side effects, the 32-bit member offsets (b2Joint vptr at +0x00, m_body1 +0x30,
// m_body2 +0x34, joint members from +0x44; b2TimeStep warmStarting +0x10; b2ContactConstraintPoint
// positionImpulse +0x28, equalizedMass +0x34, separation +0x38; b2Manifold pointCount +0x48) and the
// constants (b2_linearSlop, b2_maxLinearCorrection, b2_maxAngularCorrection, b2_angularSlop, the
// 2 * angular slop test, FLT_EPSILON guards) match upstream. No DH2 body is needed, so no upstream
// definition is replaced with #if 0. The upstream definitions remain the definitions.
//
// Rows are `upstream` in ledger.d/v1-vendor-box2d-pack1-41fb55-0.csv.
//
//   0x7ed7e8  b2PrismaticJoint::InitVelocityConstraints(b2TimeStep const&)     Source/Dynamics/Joints/b2PrismaticJoint.cpp:80
//   0x7ee080  b2PrismaticJoint::SolveVelocityConstraints(b2TimeStep const&)    Source/Dynamics/Joints/b2PrismaticJoint.cpp:187
//   0x7eec94  b2PrismaticJoint::GetJointSpeed() const                          Source/Dynamics/Joints/b2PrismaticJoint.cpp:404
//   0x7ef010  b2PrismaticJoint::SolvePositionConstraints()                     Source/Dynamics/Joints/b2PrismaticJoint.cpp:266
//   0x7efc10  b2PulleyJoint::SolveVelocityConstraints(b2TimeStep const&)      Source/Dynamics/Joints/b2PulleyJoint.cpp:191
//   0x7f09c0  b2PulleyJoint::InitVelocityConstraints(b2TimeStep const&)       Source/Dynamics/Joints/b2PulleyJoint.cpp:86
//   0x7f129c  b2PulleyJoint::SolvePositionConstraints()                        Source/Dynamics/Joints/b2PulleyJoint.cpp:249
//   0x7f1e84  b2RevoluteJoint::InitVelocityConstraints(b2TimeStep const&)     Source/Dynamics/Joints/b2RevoluteJoint.cpp:67
//   0x7f2478  b2RevoluteJoint::SolveVelocityConstraints(b2TimeStep const&)    Source/Dynamics/Joints/b2RevoluteJoint.cpp:156
//   0x7f2bec  b2RevoluteJoint::SolvePositionConstraints()                      Source/Dynamics/Joints/b2RevoluteJoint.cpp:217
//   0x7f3728  b2TimeOfImpact(b2Shape const*, b2Sweep const&, ...)             Source/Collision/b2TimeOfImpact.cpp:25
//   0x7f4424  b2CollidePolygonAndCircle(b2Manifold*, ...)                      Source/Collision/b2CollideCircle.cpp:71
//   0x7f4c4c  b2CollideCircles(b2Manifold*, ...)                               Source/Collision/b2CollideCircle.cpp:23
//   0x7f5920  b2CollidePolygons(b2Manifold*, ...)                              Source/Collision/b2CollidePoly.cpp:249
//   0x7f3b9c  b2CircleContact::Evaluate(b2ContactListener*)                    Source/Dynamics/Contacts/b2CircleContact.cpp:48
//   0x7f6b9c  b2ContactSolver::SolvePositionConstraints(float)                 Source/Dynamics/Contacts/b2ContactSolver.cpp:300
//   0x7f9bc8  b2DistanceJoint::SolveVelocityConstraints(b2TimeStep const&)    Source/Dynamics/Joints/b2DistanceJoint.cpp:128
//   0x7fa098  b2DistanceJoint::InitVelocityConstraints(b2TimeStep const&)     Source/Dynamics/Joints/b2DistanceJoint.cpp:64
//   0x7fa714  b2DistanceJoint::SolvePositionConstraints()                      Source/Dynamics/Joints/b2DistanceJoint.cpp:153

// Nothing to compile: the batch carries no reconstructed bodies.
