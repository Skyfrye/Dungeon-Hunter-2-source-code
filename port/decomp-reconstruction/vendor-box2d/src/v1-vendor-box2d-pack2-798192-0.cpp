// Box2D 2.0.1 b2GearJoint velocity constraints, rebuilt from the DH2 binary (libDungeonHunter2.so).
//
// The binary bodies match upstream Source/Dynamics/Joints/b2GearJoint.cpp: same branches (revolute or
// prismatic on each side), same order of the velocity updates, same side effects on m_J, m_mass and
// m_force. This file is the single definition in the DH2 build; the upstream copies of these two
// functions are disabled with #if 0 in Source/Dynamics/Joints/b2GearJoint.cpp.
//
// Left out because the binary does not contain them:
//   - b2Assert(K > 0.0f) in InitVelocityConstraints (the DH2 build has no assert calls here).
//   - B2FORCE_SCALE / B2FORCE_INV_SCALE. The float build of b2Settings.h defines both as the identity,
//     and the binary multiplies by step.dt and step.inv_dt directly.
// Both functions are void, as declared in b2GearJoint.h. The float value the binary leaves in r0 is
// the last expression's result, not a return value.
//
// Offsets are the 32-bit DH2 layout. Joint members: +0x30 m_body1, +0x34 m_body2 (b2Joint),
// +0x44 m_ground1, +0x48 m_ground2, +0x4c m_revolute1, +0x50 m_prismatic1, +0x54 m_revolute2,
// +0x58 m_prismatic2, +0x6c m_localAnchor1, +0x74 m_localAnchor2, +0x7c m_J, +0x98 m_ratio,
// +0x9c m_mass, +0xa0 m_force. Body members: +0x0c xf.R, +0x1c localCenter, +0x40 linear velocity,
// +0x48 angular velocity, +0x78 m_invMass, +0x80 m_invI.

#include "Dynamics/Joints/b2GearJoint.h"
#include "Dynamics/Joints/b2PrismaticJoint.h"
#include "Dynamics/Joints/b2RevoluteJoint.h"
#include "Dynamics/b2Body.h"
#include "Dynamics/b2World.h"

// 0x7fab98 b2GearJoint::InitVelocityConstraints(b2TimeStep const&)
void b2GearJoint::InitVelocityConstraints(const b2TimeStep& step)
{
	b2Body* g1 = m_ground1;		// +0x44
	b2Body* g2 = m_ground2;		// +0x48
	b2Body* b1 = m_body1;		// +0x30
	b2Body* b2 = m_body2;		// +0x34

	float32 K = 0.0f;
	m_J.SetZero();				// +0x7c..+0x93

	if (m_revolute1)			// +0x4c
	{
		// Revolute joint 1: the coordinate is the rotation of body 1, so J is [0 0 -1].
		m_J.angular1 = -1.0f;
		K += b1->m_invI;
	}
	else
	{
		// Prismatic joint 1: ug is the ground axis, r the body 1 anchor relative to its center.
		b2Vec2 ug = b2Mul(g1->GetXForm().R, m_prismatic1->m_localXAxis1);
		b2Vec2 r = b2Mul(b1->GetXForm().R, m_localAnchor1 - b1->GetLocalCenter());
		float32 crug = b2Cross(r, ug);
		m_J.linear1 = -ug;
		m_J.angular1 = -crug;
		K += b1->m_invMass + b1->m_invI * crug * crug;
	}

	if (m_revolute2)			// +0x54
	{
		m_J.angular2 = -m_ratio;
		K += m_ratio * m_ratio * b2->m_invI;
	}
	else
	{
		// Prismatic joint 2: same construction on body 2 with the ground 2 axis.
		b2Vec2 ug = b2Mul(g2->GetXForm().R, m_prismatic2->m_localXAxis1);
		b2Vec2 r = b2Mul(b2->GetXForm().R, m_localAnchor2 - b2->GetLocalCenter());
		float32 crug = b2Cross(r, ug);
		m_J.linear2 = -m_ratio * ug;
		m_J.angular2 = -m_ratio * crug;
		K += m_ratio * m_ratio * (b2->m_invMass + b2->m_invI * crug * crug);
	}

	// Effective mass.
	m_mass = 1.0f / K;			// +0x9c

	if (step.warmStarting)
	{
		// Warm starting: apply the impulse from the previous step. P = dt * m_force.
		float32 P = step.dt * m_force;
		b1->m_linearVelocity += b1->m_invMass * P * m_J.linear1;
		b1->m_angularVelocity += b1->m_invI * P * m_J.angular1;
		b2->m_linearVelocity += b2->m_invMass * P * m_J.linear2;
		b2->m_angularVelocity += b2->m_invI * P * m_J.angular2;
	}
	else
	{
		m_force = 0.0f;			// +0xa0
	}
}

// 0x7fb048 b2GearJoint::SolveVelocityConstraints(b2TimeStep const&)
void b2GearJoint::SolveVelocityConstraints(const b2TimeStep& step)
{
	b2Body* b1 = m_body1;		// +0x30
	b2Body* b2 = m_body2;		// +0x34

	float32 Cdot = m_J.Compute(b1->m_linearVelocity, b1->m_angularVelocity,
							   b2->m_linearVelocity, b2->m_angularVelocity);

	// force = -inv_dt * m_mass * Cdot, accumulated in m_force.
	float32 force = -step.inv_dt * m_mass * Cdot;
	m_force += force;

	float32 P = step.dt * force;
	b1->m_linearVelocity += b1->m_invMass * P * m_J.linear1;
	b1->m_angularVelocity += b1->m_invI * P * m_J.angular1;
	b2->m_linearVelocity += b2->m_invMass * P * m_J.linear2;
	b2->m_angularVelocity += b2->m_invI * P * m_J.angular2;
}
