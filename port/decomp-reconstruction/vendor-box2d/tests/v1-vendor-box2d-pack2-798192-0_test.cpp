// Host test for the rebuilt b2GearJoint::InitVelocityConstraints and SolveVelocityConstraints
// (src/v1-vendor-box2d-pack2-798192-0.cpp). Three worlds cover the four joint-type branches:
// revolute or prismatic on each side of the gear. Expected values are worked out by hand from the
// Box2D 2.0.1 gear joint formulas, with ratio 2 throughout.
#include "Dynamics/b2World.h"
#include "Dynamics/b2Body.h"
#include "Dynamics/Joints/b2GearJoint.h"
#include "Dynamics/Joints/b2PrismaticJoint.h"
#include "Dynamics/Joints/b2RevoluteJoint.h"

#include <cmath>
#include <cstdio>

namespace {

int g_failures = 0;

void Check(bool ok, const char* what)
{
	if (!ok)
	{
		std::printf("FAIL: %s\n", what);
		++g_failures;
	}
}

bool Near(float actual, float expected)
{
	return std::fabs(actual - expected) <= 1e-4f * (1.0f + std::fabs(expected));
}

bool NearVec(const b2Vec2& actual, float x, float y)
{
	return Near(actual.x, x) && Near(actual.y, y);
}

b2TimeStep MakeStep(bool warmStarting)
{
	b2TimeStep step;
	step.dt = 1.0f / 60.0f;
	step.inv_dt = 60.0f;
	step.dtRatio = 1.0f;
	step.maxIterations = 10;
	step.warmStarting = warmStarting;
	step.positionCorrection = true;
	return step;
}

b2World* MakeWorld()
{
	b2AABB aabb;
	aabb.lowerBound.Set(-100.0f, -100.0f);
	aabb.upperBound.Set(100.0f, 100.0f);
	return new b2World(aabb, b2Vec2(0.0f, 0.0f), false);
}

// mass 0 gives a static body; otherwise the mass data sets invMass = 1 / mass and invI = 1 / I.
b2Body* MakeBody(b2World* world, const b2Vec2& position, float mass, float inertia)
{
	b2BodyDef bd;
	bd.position = position;
	b2Body* body = world->CreateBody(&bd);
	if (mass > 0.0f)
	{
		b2MassData md;
		md.mass = mass;
		md.center.SetZero();
		md.I = inertia;
		body->SetMass(&md);
	}
	return body;
}

// Gear constraint between joint1 and joint2 with the given ratio. The gear constructor takes its
// bodies from the joints (body 2 of each); CreateJoint reads the body pair from the definition too,
// so the definition carries the same two bodies.
b2GearJoint* MakeGear(b2World* world, b2Joint* joint1, b2Joint* joint2, float ratio)
{
	b2GearJointDef gd;
	gd.joint1 = joint1;
	gd.joint2 = joint2;
	gd.body1 = joint1->GetBody2();
	gd.body2 = joint2->GetBody2();
	gd.ratio = ratio;
	return static_cast<b2GearJoint*>(world->CreateJoint(&gd));
}

// Scenario 1: revolute on both sides. Body A: invMass 0.5, invI 1. Body B: invMass 0.25, invI 0.5.
// J = [0 0 -1] on A and [0 0 -2] on B, so K = invI_A + ratio^2 * invI_B = 1 + 2 = 3.
void TestRevoluteRevolute()
{
	b2World* world = MakeWorld();
	b2Body* ground = MakeBody(world, b2Vec2(0.0f, 0.0f), 0.0f, 0.0f);
	b2Body* a = MakeBody(world, b2Vec2(1.0f, 0.0f), 2.0f, 1.0f);
	b2Body* b = MakeBody(world, b2Vec2(2.0f, 0.0f), 4.0f, 2.0f);

	b2RevoluteJointDef revA;
	revA.Initialize(ground, a, b2Vec2(1.0f, 0.0f));
	b2RevoluteJointDef revB;
	revB.Initialize(ground, b, b2Vec2(2.0f, 0.0f));
	b2Joint* jointA = world->CreateJoint(&revA);
	b2Joint* jointB = world->CreateJoint(&revB);
	b2GearJoint* gear = MakeGear(world, jointA, jointB, 2.0f);

	Check(gear->GetBody1() == a && gear->GetBody2() == b, "rr: gear bodies come from the joints");

	// Warm starting: P = dt * m_force is applied before the cold-start reset of m_force.
	gear->m_force = 3.0f;
	a->SetAngularVelocity(0.0f);
	b->SetAngularVelocity(0.0f);
	gear->InitVelocityConstraints(MakeStep(true));
	// P = 3 / 60 = 0.05. dA = invI_A * P * -1 = -0.05. dB = invI_B * P * -2 = -0.05.
	Check(Near(a->GetAngularVelocity(), -0.05f), "rr warm: angular velocity of A");
	Check(Near(b->GetAngularVelocity(), -0.05f), "rr warm: angular velocity of B");
	Check(Near(gear->m_force, 3.0f), "rr warm: m_force is kept");

	// Cold start: m_force reset, J and m_mass set.
	gear->InitVelocityConstraints(MakeStep(false));
	Check(Near(gear->m_force, 0.0f), "rr cold: m_force reset");
	Check(Near(gear->m_mass, 1.0f / 3.0f), "rr cold: effective mass 1/3");
	Check(NearVec(gear->m_J.linear1, 0.0f, 0.0f), "rr cold: linear1 is zero");
	Check(Near(gear->m_J.angular1, -1.0f), "rr cold: angular1 is -1");
	Check(NearVec(gear->m_J.linear2, 0.0f, 0.0f), "rr cold: linear2 is zero");
	Check(Near(gear->m_J.angular2, -2.0f), "rr cold: angular2 is -ratio");

	// Solve: Cdot = -1 * 1 + -2 * 0 = -1, force = -60 * (1/3) * -1 = 20, P = 1/3.
	// wA = 1 - 1/3 = 2/3 and wB = 0.5 * (1/3) * -2 = -1/3.
	a->SetAngularVelocity(1.0f);
	b->SetAngularVelocity(0.0f);
	gear->SolveVelocityConstraints(MakeStep(false));
	Check(Near(gear->m_force, 20.0f), "rr solve: accumulated force");
	Check(Near(a->GetAngularVelocity(), 2.0f / 3.0f), "rr solve: angular velocity of A");
	Check(Near(b->GetAngularVelocity(), -1.0f / 3.0f), "rr solve: angular velocity of B");
	float cdot = gear->m_J.Compute(a->GetLinearVelocity(), a->GetAngularVelocity(),
								   b->GetLinearVelocity(), b->GetAngularVelocity());
	Check(Near(cdot, 0.0f), "rr solve: constraint satisfied after one impulse");

	delete world;
}

// Scenario 2: prismatic on A (ground axis (1,0), anchor (1,1) gives localAnchor2 (0,1)), revolute on B.
// ug = (1,0), r = (0,1), crug = -1. J1 = [(-1,0) 1], K1 = invMass_A + invI_A * crug^2 = 0.5 + 1 = 1.5.
// K2 = ratio^2 * invI_B = 2. K = 3.5.
void TestPrismaticRevolute()
{
	b2World* world = MakeWorld();
	b2Body* ground = MakeBody(world, b2Vec2(0.0f, 0.0f), 0.0f, 0.0f);
	b2Body* a = MakeBody(world, b2Vec2(1.0f, 0.0f), 2.0f, 1.0f);
	b2Body* b = MakeBody(world, b2Vec2(2.0f, 0.0f), 4.0f, 2.0f);

	b2PrismaticJointDef primA;
	primA.Initialize(ground, a, b2Vec2(1.0f, 1.0f), b2Vec2(1.0f, 0.0f));
	b2RevoluteJointDef revB;
	revB.Initialize(ground, b, b2Vec2(2.0f, 0.0f));
	b2Joint* jointA = world->CreateJoint(&primA);
	b2Joint* jointB = world->CreateJoint(&revB);
	b2GearJoint* gear = MakeGear(world, jointA, jointB, 2.0f);

	gear->InitVelocityConstraints(MakeStep(false));
	Check(NearVec(gear->m_J.linear1, -1.0f, 0.0f), "pr: linear1 is -ug");
	Check(Near(gear->m_J.angular1, 1.0f), "pr: angular1 is -crug");
	Check(NearVec(gear->m_J.linear2, 0.0f, 0.0f), "pr: linear2 is zero");
	Check(Near(gear->m_J.angular2, -2.0f), "pr: angular2 is -ratio");
	Check(Near(gear->m_mass, 1.0f / 3.5f), "pr: effective mass 1/3.5");

	// Cdot = -2 * 1 = -2, force = -60 * (1/3.5) * -2 = 120 / 3.5, P = 120 / 3.5 / 60 = 2 / 3.5.
	// vA = 0.5 * P * (-1, 0) = (-0.285714, 0), wA = P * 1 = 0.571428, wB = 1 - 0.5 * P * 2 = 0.428571.
	a->SetLinearVelocity(b2Vec2(0.0f, 0.0f));
	a->SetAngularVelocity(0.0f);
	b->SetLinearVelocity(b2Vec2(0.0f, 0.0f));
	b->SetAngularVelocity(1.0f);
	gear->SolveVelocityConstraints(MakeStep(false));
	Check(Near(gear->m_force, 120.0f / 3.5f), "pr solve: accumulated force");
	Check(NearVec(a->GetLinearVelocity(), -2.0f / 7.0f, 0.0f), "pr solve: linear velocity of A");
	Check(Near(a->GetAngularVelocity(), 2.0f / 3.5f), "pr solve: angular velocity of A");
	Check(Near(b->GetAngularVelocity(), 1.0f - 2.0f / 3.5f), "pr solve: angular velocity of B");
	float cdot = gear->m_J.Compute(a->GetLinearVelocity(), a->GetAngularVelocity(),
								   b->GetLinearVelocity(), b->GetAngularVelocity());
	Check(Near(cdot, 0.0f), "pr solve: constraint satisfied after one impulse");

	delete world;
}

// Scenario 3: revolute on A, prismatic on B (anchor (2,1), axis (1,0), localAnchor2 (0,1)).
// ug2 = (1,0), crug2 = -1. J2 = [(-2,0) 2]. K2 = ratio^2 * (invMass_B + invI_B * crug2^2) = 3.
// K1 = invI_A = 1. K = 4, so m_mass = 0.25.
void TestRevolutePrismatic()
{
	b2World* world = MakeWorld();
	b2Body* ground = MakeBody(world, b2Vec2(0.0f, 0.0f), 0.0f, 0.0f);
	b2Body* a = MakeBody(world, b2Vec2(1.0f, 0.0f), 2.0f, 1.0f);
	b2Body* b = MakeBody(world, b2Vec2(2.0f, 0.0f), 4.0f, 2.0f);

	b2RevoluteJointDef revA;
	revA.Initialize(ground, a, b2Vec2(1.0f, 0.0f));
	b2PrismaticJointDef primB;
	primB.Initialize(ground, b, b2Vec2(2.0f, 1.0f), b2Vec2(1.0f, 0.0f));
	b2Joint* jointA = world->CreateJoint(&revA);
	b2Joint* jointB = world->CreateJoint(&primB);
	b2GearJoint* gear = MakeGear(world, jointA, jointB, 2.0f);

	gear->InitVelocityConstraints(MakeStep(false));
	Check(NearVec(gear->m_J.linear2, -2.0f, 0.0f), "rp: linear2 is -ratio * ug");
	Check(Near(gear->m_J.angular2, 2.0f), "rp: angular2 is -ratio * crug");
	Check(Near(gear->m_J.angular1, -1.0f), "rp: angular1 is -1");
	Check(Near(gear->m_mass, 0.25f), "rp: effective mass 1/4");

	// Cdot = -1 * 1 = -1, force = -60 * 0.25 * -1 = 15, P = 0.25.
	// wA = 1 - 0.25 = 0.75, vB = 0.25 * 0.25 * (-2, 0) = (-0.125, 0), wB = 0.5 * 0.25 * 2 = 0.25.
	a->SetAngularVelocity(1.0f);
	b->SetLinearVelocity(b2Vec2(0.0f, 0.0f));
	b->SetAngularVelocity(0.0f);
	gear->SolveVelocityConstraints(MakeStep(false));
	Check(Near(gear->m_force, 15.0f), "rp solve: accumulated force");
	Check(Near(a->GetAngularVelocity(), 0.75f), "rp solve: angular velocity of A");
	Check(NearVec(b->GetLinearVelocity(), -0.125f, 0.0f), "rp solve: linear velocity of B");
	Check(Near(b->GetAngularVelocity(), 0.25f), "rp solve: angular velocity of B");
	float cdot = gear->m_J.Compute(a->GetLinearVelocity(), a->GetAngularVelocity(),
								   b->GetLinearVelocity(), b->GetAngularVelocity());
	Check(Near(cdot, 0.0f), "rp solve: constraint satisfied after one impulse");

	delete world;
}

}  // namespace

int main()
{
	TestRevoluteRevolute();
	TestPrismaticRevolute();
	TestRevolutePrismatic();
	if (g_failures == 0)
	{
		std::printf("v1-vendor-box2d-pack2-798192-0 test: all checks passed\n");
	}
	return g_failures == 0 ? 0 : 1;
}
