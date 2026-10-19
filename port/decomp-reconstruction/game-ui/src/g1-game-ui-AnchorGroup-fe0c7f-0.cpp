// Batch g1-game-ui-AnchorGroup-fe0c7f-0: the AnchorGroup constructors and destructor, the s_anchors registry helpers,
// the per-tick centre update and the Update/Reset forwarders.
//
// Registry: the original keeps s_anchors as a std::list<AnchorGroup*> (libstdc++ node layout, 12 bytes per node:
// next, prev, value). _AddAnchor is push_back and _RemoveAnchor removes every node that holds the group, which is
// std::list::remove. The node allocator is not reproduced.
//
// Tick: s_lastTick is compared with Application::m_lastTickTime (+0x70, the IDA global dword_99F79C), which is a member
// of the Application singleton (dh2/Application.hpp). GameObject::IsDead is vtable slot +0x34 (dh2/GameObject.hpp) and
// GameObject::m_position is the Point3D<float> at +0x160.
#include "dh2/AnchorGroup.hpp"

#include <cstdint>
#include <list>

#include "dh2/Application.hpp"
#include "dh2/GameObject.hpp"

// Static state. The original places s_anchors at 0x9a6174 (sentinel next and prev), s_position at 0x9a617c (x, y, z)
// and s_lastTick at 0x9a6188. All of them start zeroed (.bss), and s_anchors is set up by the static initializer.
std::list<AnchorGroup*> AnchorGroup::s_anchors;
int32_t AnchorGroup::s_lastTick = 0;
glitch::core::vector3d<float> AnchorGroup::s_position;

// 0x478578 _ZN11AnchorGroupC1EP10GameObjectN10AnchorBase10AnchorTypeE
// 0x4785b4 _ZN11AnchorGroupC2EP10GameObjectN10AnchorBase10AnchorTypeE (same body)
// AnchorBase(go, type), then the AnchorGroup vtable (set by the compiler), then _AddAnchor(this).
AnchorGroup::AnchorGroup(GameObject* go, AnchorBase::AnchorType type) : AnchorBase(go, type) {
    _AddAnchor(this);
}

// 0x47848c _ZN11AnchorGroupD1Ev (base object destructor)
// 0x4784e4 _ZN11AnchorGroupD2Ev (complete object destructor, same body)
// The original sets the AnchorGroup vtable, calls _RemoveAnchor(this) and then AnchorBase::~AnchorBase. The C++ base
// destructor call supplies the last step.
AnchorGroup::~AnchorGroup() {
    _RemoveAnchor(this);
}

// 0x4784c8 _ZN11AnchorGroupD0Ev (scalar deleting destructor): compiler-generated. It calls the destructor above and
// then frees the object with CustomFree. No body is written here; see ledger.

// 0x4782f4 _ZN11AnchorGroup6UpdateEv (thunk)
// Forwards to _Update with the same this (the thunk does not touch the second register argument).
void AnchorGroup::Update() {
    _Update(this);
}

// 0x4782f8 _ZN11AnchorGroup5ResetEv (thunk)
// Forwards to the base implementation, AnchorBase::Reset (0x477074), on the same object.
void AnchorGroup::Reset() {
    AnchorBase::Reset();
}

// 0x478420 _ZN11AnchorGroup13_RemoveAnchorEPS_
// Removes every registry node that holds group. The original walks the list from the head and unlinks each match,
// which is std::list::remove.
void AnchorGroup::_RemoveAnchor(AnchorGroup* group) {
    s_anchors.remove(group);
}

// 0x478520 _ZN11AnchorGroup10_AddAnchorEPS_
// Appends group at the tail of the registry (the original links the new node before the sentinel). The Hex-Rays
// return value is the new node; the only caller, the constructor, ignores it.
void AnchorGroup::_AddAnchor(AnchorGroup* group) {
    s_anchors.push_back(group);
}

// 0x478004 _ZN11AnchorGroup7_UpdateEPS_
// Writes the shared centre of the live groups into group's m_position. The centre is recomputed once per tick: while
// s_lastTick equals Application::m_lastTickTime, the cached s_position is copied. Otherwise the box of the live groups'
// GameObject positions is built and the middle of the box is stored in s_position. A group whose GameObject reports
// IsDead() is left out of the box. The copy at the end runs on both paths.
void AnchorGroup::_Update(AnchorGroup* group) {
    const int32_t tick = ApplicationGetInstance().m_lastTickTime;
    if (s_lastTick != tick) {
        s_lastTick = tick;

        // The box starts at zero in every bound, as the original's register setup does.
        float minX = 0.0f, maxX = 0.0f;
        float minY = 0.0f, maxY = 0.0f;
        float minZ = 0.0f, maxZ = 0.0f;
        bool boxStarted = false;

        for (AnchorGroup* node : s_anchors) {
            GameObject* go = node->m_go;   // AnchorBase +0x08
            if (go->IsDead()) {            // vtable +0x34
                continue;
            }
            const auto& p = go->m_position;   // GameObject +0x160, +0x164, +0x168
            if (!boxStarted) {
                // Half extents of the box so far. The box is still zero here, so both are 0 and the first live group
                // sets the box to its own position. The arithmetic is kept as the original computes it.
                const float halfX = (maxX - minX) * 0.5f;
                const float halfY = (maxY - minY) * 0.5f;
                const float halfZ = (maxZ - minZ) * 0.5f;
                boxStarted = true;
                minX = p.X - halfX;
                maxX = halfX + p.X;
                minY = p.Y - halfY;
                maxY = halfY + p.Y;
                minZ = p.Z - halfZ;
                maxZ = halfZ + p.Z;
            } else {
                if (p.X < minX) minX = p.X;
                if (p.Y < minY) minY = p.Y;
                if (p.Z < minZ) minZ = p.Z;
                if (p.X > maxX) maxX = p.X;
                if (p.Y > maxY) maxY = p.Y;
                if (p.Z > maxZ) maxZ = p.Z;
            }
        }

        s_position.X = minX + (maxX - minX) * 0.5f;
        s_position.Y = minY + (maxY - minY) * 0.5f;
        s_position.Z = minZ + (maxZ - minZ) * 0.5f;
    }

    group->m_position.X = s_position.X;   // AnchorBase +0x0c, +0x10, +0x14
    group->m_position.Y = s_position.Y;
    group->m_position.Z = s_position.Z;
}
