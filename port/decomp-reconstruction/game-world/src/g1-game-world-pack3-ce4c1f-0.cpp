// Batch g1-game-world-pack3-ce4c1f-0 (game-world). Owners: PFInnerTest_BasicIdentity, PFInnerTest_PFObject,
// PFInnerTest_PathValidity, PhysicalBaseObject, Point2D<float>, PolyStat, Script_ActivateProjectileTrap and
// Script_DeactivateProjectileTrap. Each function is written from the Hex-Rays listing and checked against the
// assembly where the listing was unclear (the trap scripts and PathValidity::isValid(node)).
//
// PolyStat::~PolyStat now reproduces the original's allocator dispatch. Blocks of 0x80 bytes or fewer go to
// __node_alloc::_M_deallocate (veneer __ZNSt12__node_alloc13_M_deallocateEPvj_veneer, 0x31bb44), which now has
// a body in core-platform/stlport_alloc.hpp / src/stlport_alloc.cpp. The code that allocates these buffers is
// still not recovered, so the branch that produces a sub-0x80 buffer is not exercised anywhere yet.
//
// Skipped here: PhysicalBaseObject::~PhysicalBaseObject() D0 (0x46e9a0), the deleting destructor the compiler generates
// from the virtual destructor. The empty complete-object destructor D1 (0x46e6b0) is the header's "= default" body, so
// this file carries no definition for it.

#include <cmath>
#include <cstdint>

#include "core-platform/stlport_alloc.hpp"  // CustomFree (0x310440) and std::__node_alloc (0x31bb44/0x313994)
#include "pydata-accessors/script_cmd.hpp"

#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFInnerTest_BasicIdentity.hpp"
#include "dh2/PFInnerTest_PFObject.hpp"
#include "dh2/PFInnerTest_PathValidity.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PhysicalBaseObject.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/PolyStat.hpp"
#include "dh2/ProjectileTrap.hpp"
#include "dh2/Script_ActivateProjectileTrap.hpp"
#include "dh2/Script_DeactivateProjectileTrap.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

// core-platform/stlport_alloc.hpp declares CustomFree (0x310440) and std::__node_alloc. It replaces the single
// hand-written CustomFree declaration this file used to carry, because the decompiler pass has since fixed the
// glitch-core math-type conflict the old comment names (the include below compiles against the shared types).

namespace {

// GO id of a ProjectileTrap. GetNewInstance<ProjectileTrap> passes 17 (global/object_factory.hpp), and both trap
// scripts accept only objects with this m_goId.
constexpr std::int32_t kProjectileTrapGoId = 17;

}  // namespace

// ---------------------------------------------------------------------------------------------------------------
// PFInnerTest_BasicIdentity
// ---------------------------------------------------------------------------------------------------------------

// 0x525028 PFInnerTest_BasicIdentity::operator()(PFGInnerNode const*) const
// The node test accepts the one node stored at +0x04.
bool PFInnerTest_BasicIdentity::operator()(const PFGInnerNode* node) const {
    return unk_4 == node;
}

// ---------------------------------------------------------------------------------------------------------------
// PFInnerTest_PathValidity
// ---------------------------------------------------------------------------------------------------------------

// 0x52503c PFInnerTest_PathValidity::isValid(PFGInnerEdge const*) const
// Calls the edge's own virtual check (IEdge slot 6, isValid).
bool PFInnerTest_PathValidity::isValid(const PFGInnerEdge* edge) const {
    return edge->isValid();
}

// 0x525054 PFInnerTest_PathValidity::isValid(PFGInnerNode const*) const
// The node must pass its own virtual check (INode slot 1, isValid), and bit 0 of its floor's object flags
// (PFFloor +0x20, m_objectFlags) must be set.
bool PFInnerTest_PathValidity::isValid(const PFGInnerNode* node) const {
    if (!node->isValid()) {
        return false;
    }
    return (node->m_floor->m_objectFlags & 1u) != 0;
}

// ---------------------------------------------------------------------------------------------------------------
// PFInnerTest_PFObject
// ---------------------------------------------------------------------------------------------------------------

// 0x525080 PFInnerTest_PFObject::isValid(PFGInnerEdge const*) const
// The base check must pass, then the edge's clearance (+0x14) must be at least the object's radius (PFObject +0x08).
bool PFInnerTest_PFObject::isValid(const PFGInnerEdge* edge) const {
    if (!PFInnerTest_PathValidity::isValid(edge)) {
        return false;
    }
    return edge->m_clearance >= m_object->m_radius;
}

// 0x52510c PFInnerTest_PFObject::isValid(PFGInnerNode const*) const
// The base check must pass, then the object must be able to path on the node's floor (node +0x28).
bool PFInnerTest_PFObject::isValid(const PFGInnerNode* node) const {
    if (!PFInnerTest_PathValidity::isValid(node)) {
        return false;
    }
    return m_object->CanPathOn(node->m_floor);
}

// ---------------------------------------------------------------------------------------------------------------
// PhysicalBaseObject
// ---------------------------------------------------------------------------------------------------------------

// 0x46e6b0 PhysicalBaseObject::~PhysicalBaseObject() (D1, complete object)
// Empty body. dh2/PhysicalBaseObject.hpp declares the destructor as "virtual ~PhysicalBaseObject() = default;",
// which is this body, so the file has no definition.

// 0x46e9a0 PhysicalBaseObject::~PhysicalBaseObject() (D0, deleting destructor)
// Skipped: compiler-generated. The original is the empty D1 body followed by CustomFree(this); delete emits that.

// ---------------------------------------------------------------------------------------------------------------
// Point2D<float>
// ---------------------------------------------------------------------------------------------------------------

// 0x412258 Point2D<float>::normalize()
// Divides both components by the length sqrt(x * x + y * y), in place, and returns this.
template <>
Point2D<float>& Point2D<float>::normalize() {
    const float length = std::sqrt(X * X + Y * Y);
    X = X / length;
    Y = Y / length;
    return *this;
}

// 0x312848 Point2D<float>::lineIntersection(p0, p1, q0, q1, out, t, u)
// Intersects segment p0 to p1 with segment q0 to q1. denom is the cross product of the two directions. When it is not
// (nearly) zero, t and u are the parameters along p and q, and out is the point p0 + t * (p1 - p0). The return value is
// 2 when neither parameter is in [0, 1], 3 when only t is outside, 4 when only u is outside, and 5 when both are inside.
// When the segments are parallel (denom within 0.0001 of zero), the return value is 1 if they are collinear (both
// tests below hold) and 0 otherwise. t, u and out are written only in the non-parallel case.
template <>
int Point2D<float>::lineIntersection(const Point2D<float>& p0, const Point2D<float>& p1,
                                     const Point2D<float>& q0, const Point2D<float>& q1,
                                     Point2D<float>& out, float& t, float& u) {
    const float dx = p1.X - p0.X;
    const float dy = p1.Y - p0.Y;
    const float ex = q1.X - q0.X;
    const float ey = q1.Y - q0.Y;
    const float denom = dx * ey - dy * ex;
    const float wx = p0.X - q0.X;
    const float wy = p0.Y - q0.Y;
    const float tNum = wy * ex - wx * ey;
    const float uNum = wy * dx - wx * dy;

    // The listing uses the soft-float helpers with the single-precision constant 0.0001f (0x38D1B717): the parallel test is
    // fcmplt(denom, k) && fcmpgt(denom, -k) and every range test is fcmpge/fcmple whose failure means "outside", so a NaN
    // takes the non-parallel path and counts as outside [0, 1] (Hex-Rays prints the negated forms, for which NaN differs).
    const float kEps = 0.0001f;
    if (!(denom < kEps && denom > -kEps)) {
        t = tNum * (1.0f / denom);
        u = uNum * (1.0f / denom);

        // The original stores out in this order (direction, scaled direction, then the point). The stores are kept in
        // the same order because out may alias p0, and the last two stores read p0 after the earlier ones.
        out.X = dx;
        out.Y = dy;
        const float scaledX = dx * t;
        out.X = scaledX;
        const float scaledY = dy * t;
        out.Y = scaledY;
        out.X = scaledX + p0.X;
        out.Y = scaledY + p0.Y;

        const bool tInside = t >= 0.0f && t <= 1.0f;
        const bool uInside = u >= 0.0f && u <= 1.0f;
        if (!tInside) {
            return !uInside ? 2 : 4;
        }
        return !uInside ? 3 : 5;
    }
    return tNum < kEps && tNum > -kEps && std::fabs(tNum - uNum) < kEps;
}

// 0x312b40 Point2D<float>::lineIntersection(p0, p1, q0, q1, out)
// Forwards to the seven-argument overload. The parameters are local and discarded.
template <>
int Point2D<float>::lineIntersection(const Point2D<float>& p0, const Point2D<float>& p1,
                                     const Point2D<float>& q0, const Point2D<float>& q1,
                                     Point2D<float>& out) {
    float t = 0.0f;
    float u = 0.0f;
    return Point2D<float>::lineIntersection(p0, p1, q0, q1, out, t, u);
}

// ---------------------------------------------------------------------------------------------------------------
// PolyStat
// ---------------------------------------------------------------------------------------------------------------

// 0x5102e8 PolyStat::~PolyStat()
// The buffer begin (+0x14) is released unless it is null or points back at this object. The size is the
// buffer end (+0x00) minus the begin (0x510308), and the listing's 0x510310 `CMP R3,#0x80; BHI` sends sizes
// above 0x80 to CustomFree and the rest to __node_alloc::_M_deallocate (0x510314). That node allocator now
// has a body (core-platform/stlport_alloc.hpp / src/stlport_alloc.cpp, 0x31bb44), so the small-block branch
// is reproduced rather than stood in for.
PolyStat::~PolyStat() {
    void* begin = unk_14;
    if (begin != this && begin != nullptr) {
        const std::uintptr_t size =
            reinterpret_cast<std::uintptr_t>(unk_00) - reinterpret_cast<std::uintptr_t>(begin);
        if (size > 0x80) {
            CustomFree(begin);
        } else {
            std::__node_alloc::_M_deallocate(begin, static_cast<unsigned int>(size));
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------
// Script_ActivateProjectileTrap
// ---------------------------------------------------------------------------------------------------------------

// 0x4558bc Script_ActivateProjectileTrap::IsBlocking() const
bool Script_ActivateProjectileTrap::IsBlocking() const {
    return false;
}

// 0x45d3cc Script_ActivateProjectileTrap::Execute(bool, int)
// Traces the script command switch, then looks up the trap named by the argument record (+0x0c, m_w3) in the object
// manager with flags = module. When the object is found and its m_goId is 17, m_trap is set to it and its flag byte
// (ProjectileTrap::m_active, +0x40c) is set. Otherwise m_trap is cleared.
void Script_ActivateProjectileTrap::Execute(bool /*skipping*/, int module) {
    const Structs::ActivateProjectileTrap* record = static_cast<const Structs::ActivateProjectileTrap*>(m_args);
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingScriptCmd");
    ObjectHandle handle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = handle.GetObject(false);
    if (object != nullptr && static_cast<std::int32_t>(object->m_goId) == kProjectileTrapGoId) {
        m_trap = object;
        static_cast<ProjectileTrap*>(object)->m_active = true;
    } else {
        m_trap = nullptr;
    }
}

// ---------------------------------------------------------------------------------------------------------------
// Script_DeactivateProjectileTrap
// ---------------------------------------------------------------------------------------------------------------

// 0x4558c4 Script_DeactivateProjectileTrap::IsBlocking() const
bool Script_DeactivateProjectileTrap::IsBlocking() const {
    return false;
}

// 0x45d2d4 Script_DeactivateProjectileTrap::Execute(bool, int)
// The same lookup as the activate command. When the object is found and its m_goId is 17, m_trap is set to it and its
// flag byte (ProjectileTrap::m_active, +0x40c) is cleared. Otherwise m_trap is cleared.
void Script_DeactivateProjectileTrap::Execute(bool /*skipping*/, int module) {
    const Structs::DeactivateProjectileTrap* record =
        static_cast<const Structs::DeactivateProjectileTrap*>(m_args);
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingScriptCmd");
    ObjectHandle handle = dword_99F764->GetObjectByName(record->Target, module, false, nullptr);
    ObjectBase* object = handle.GetObject(false);
    if (object != nullptr && static_cast<std::int32_t>(object->m_goId) == kProjectileTrapGoId) {
        ProjectileTrap* trap = static_cast<ProjectileTrap*>(object);
        m_trap = trap;
        trap->m_active = false;
    } else {
        m_trap = nullptr;
    }
}
