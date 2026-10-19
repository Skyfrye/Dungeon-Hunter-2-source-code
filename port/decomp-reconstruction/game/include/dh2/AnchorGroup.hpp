// AnchorGroup: an AnchorBase that keeps its m_position at the centre of the GameObjects of the registered groups.
// The registry (s_anchors), the last update tick (s_lastTick) and the shared centre (s_position) are static.
// Original 32-bit size 0x1c (28): the same as AnchorBase, no members of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x478578 / 0x4785b4, dtor 0x47848c, _AddAnchor 0x478520,
// _RemoveAnchor 0x478420, _Update 0x478004, Update 0x4782f4, Reset 0x4782f8).
#pragma once

#include <cstdint>
#include <list>

#include "glitch-shared/glitch_core.hpp"

#include "dh2/AnchorBase.hpp"

class GameObject;

class AnchorGroup : public AnchorBase {
public:
    AnchorGroup(GameObject* go, AnchorBase::AnchorType type);           // 0x478578 (C1), 0x4785b4 (C2)
    ~AnchorGroup() override;                                            // 0x47848c (D1), 0x4784c8 (D0), 0x4784e4 (D2)

    // Overrides of AnchorBase slots, in vtable order.
    void Reset() override;                                              // +0x08 0x4782f8, a thunk to AnchorBase::Reset
    void Update() override;                                             // +0x0c 0x4782f4, a thunk to _Update

    // Static helpers. Each takes the group it works on as its only argument.
    static void _AddAnchor(AnchorGroup* group);                         // 0x478520 pushes group onto s_anchors
    static void _RemoveAnchor(AnchorGroup* group);                      // 0x478420 removes every node that holds group
    static void _Update(AnchorGroup* group);                            // 0x478004 writes the shared centre into group's m_position

    // Static state, not part of the instance layout. AnchorBase's members are the whole instance.
    static std::list<AnchorGroup*> s_anchors;                           // registered groups, one 12-byte node each
    static int32_t s_lastTick;                                          // tick of the last centre update, compared with the global tick
    static glitch::core::vector3d<float> s_position;                    // centre of the groups, x, y, z
};
