// AnimApplicator: plays the clips of one ISceneNodeAnimator onto a reference scene node and keeps the
// per-frame position delta of that node. Original 32-bit size 0x3c (60): the last member ends at +0x3c.
// Vtable (28 bytes, 7 slots): slots 0/1 destructors, then SetRefNode, ResetDelta(uint), AnimateNode.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x364330 / 0x364398).
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"

namespace glitch {
namespace collada {
class ISceneNodeAnimator;
}  // namespace collada
namespace scene {
class ISceneNode;
class ITimelineController;
}  // namespace scene
}  // namespace glitch

class AnimApplicator {
public:
    typedef void (*AnimCallback)(glitch::scene::ITimelineController* timeline, void* userData);

    explicit AnimApplicator(glitch::collada::ISceneNodeAnimator* animator);  // 0x364330 / 0x364398
    virtual ~AnimApplicator();                                               // slot 0/1: 0x364838 (D1), 0x364870 (D2), 0x3648a8 (D0)

    // Overrides of the vtable slots, in vtable order.
    virtual void SetRefNode(glitch::scene::ISceneNode* node);                // slot 0x08: 0x36473c
    virtual void ResetDelta(unsigned int time);                              // slot 0x0c: 0x3644fc
    virtual void AnimateNode(unsigned int time);                             // slot 0x10: 0x3645e8

    void SetCallback(AnimCallback animCallback, void* userData);             // 0x364400
    void CheckCallback(glitch::scene::ITimelineController* timeline);        // 0x36440c runs the callback when m_callbackPending is set
    float CalculateDelta(unsigned int time, const glitch::core::vector3d<float>& position);  // 0x364444 returns the X delta
    void ResetDelta(unsigned int time, const glitch::core::vector3d<float>& position);       // 0x3644cc

    // +0x00 vptr
    glitch::collada::ISceneNodeAnimator* m_animator;                         // +0x04 clip source, given to the constructor
    glitch::scene::ISceneNode* m_refNode;                                    // +0x08 reference node, reference counted by SetRefNode
    int m_refClip;                                                           // +0x0c clip of the reference node's animator, -1 until SetRefNode finds it
    int unk_10;                                                              // +0x10 zero in the ctor, never touched by these methods. Written with the remaining clip time by
                                                                             //       Animator::_HandleAnimEnding (0x366224) and AnimatorSet::_HandleAnimEnding (0x3672c8); read by the
                                                                             //       blended controller's jumpTo (BlendedAnimSetController). Name candidate: m_remainingTime
    unsigned int m_time;                                                     // +0x14 time of the last pose, compared against the argument
    glitch::core::vector3d<float> m_prevPos;                                 // +0x18 .. +0x20 position of the last pose
    glitch::core::vector3d<float> m_delta;                                   // +0x24 .. +0x2c delta from the previous pose
    bool m_callbackPending;                                                  // +0x30 CheckCallback runs the callback and clears it
    uint8_t pad_31[3];                                                       // +0x31
    AnimCallback m_callback;                                                 // +0x34 set by SetCallback
    void* m_callbackUser;                                                    // +0x38 set by SetCallback
};
