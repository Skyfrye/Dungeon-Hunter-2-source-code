// AnimatorBlender: the game's scene-node animator that blends two child animators (the child list is the
// engine base's animators vector). Blend starts a cross-fade: m_currentIndex and m_previousIndex swap, and
// m_blendRemaining counts down the cross-fade time in updateTime. Its BlenderApplicator is an AnimApplicator
// embedded at +0x88 that applies the blended result to the reference node.
// Base: glitch::collada::CSceneNodeAnimatorBlender (glitch-scene-collada-gui, canonical). The IReferenceCounted
// sub-object of the original is the base's virtual base, so the game class adds no reference count of its own.
// getType returns 12 (the value is outside the named scene::E_SCENE_NODE_ANIMATOR_TYPE entries).
// Original 32-bit size 0xd0 (the reference-counted sub-object ends at +0xcf). No operator new seen.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x367018 / 0x3670c8, dtor 0x36715c / 0x36720c,
// Blend 0x36679c, updateTime 0x366d90, animateNode 0x366cb4).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorBlender.hpp"

#include "dh2/AnimApplicator.hpp"

namespace glitch {
namespace scene {
class ISceneNode;
class ITimelineController;
}  // namespace scene
namespace collada {
struct STriggeredEvent;
}  // namespace collada
}  // namespace glitch

class AnimatorBlender : public glitch::collada::CSceneNodeAnimatorBlender {
public:
    typedef void (*AnimCallback)(glitch::scene::ITimelineController* timeline, void* userData);
    typedef void (*EventCallback)(const glitch::collada::STriggeredEvent& event, void* userData);

    // Applicator of the blender: the AnimApplicator sub-object (0x3c bytes) followed by the owning blender.
    // Vtable slots 0x08 to 0x10 override the AnimApplicator slots. Original size 0x40.
    class BlenderApplicator : public AnimApplicator {
    public:
        explicit BlenderApplicator(AnimatorBlender* blender);              // no symbol of its own: inlined into the blender constructors
        ~BlenderApplicator() override;                                     // 0x366768 (D1), 0x3671c8 (D0)

        void SetRefNode(glitch::scene::ISceneNode* node) override;         // 0x366b80 forwards to every child applicator
        void ResetDelta(unsigned int time) override;                       // 0x366a68 resets the delta of the current child
        void AnimateNode(unsigned int time) override;                      // 0x366888 weighted sum of the child applicators

        // AnimApplicator occupies +0x00 .. +0x3b.
        AnimatorBlender* m_blender;                                        // +0x3c owning blender (set by the blender ctor, +0xc4 in the blender)
    };

    AnimatorBlender();                                                     // 0x367018 / 0x3670c8

    virtual ~AnimatorBlender();                                            // 0x36715c (D2, base form taking the VTT), 0x36720c (D1, complete object), 0x367284 (D0, deleting)

    glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE getType() const override;    // 0x366620 returns 12
    void _HandleAnimEnding(glitch::scene::ITimelineController* timeline);  // 0x366628 non-virtual: no vtable slot, _CBAnim calls it directly
    static void _CBAnim(glitch::scene::ITimelineController* timeline, void* userData);  // 0x3666c8, userData is the blender
    void SetScale(float scale);                                            // 0x3666d8 scales the cross-fade time
    void BlendPost();                                                      // 0x366740 empty
    void compile(glitch::core::svector<std::uint8_t>* buffer) override;              // 0x366764 slot 0x88, sizes the output buffer
    void Blend(int duration);                                              // 0x36679c starts a cross-fade of the given length (ms)
    void onUnbind(glitch::scene::ISceneNode* node) override;               // 0x366c8c clears the applicator's reference node
    void animateNode(glitch::scene::ISceneNode* node, unsigned int time) override;  // 0x366cb4
    void updateTime(unsigned int time) override;                           // 0x366d90 advances the cross-fade weights, then the children
    void SetCallbacks(AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData);   // 0x366eb8

    // The glitch::collada::CSceneNodeAnimatorBlender base (animators at +0x28, weights at +0x34) is the base class
    // above; its members (animators, weights) are used by name.

    int m_currentIndex;                                                    // +0x70 index of the child that is fading in, advanced by Blend
    int m_previousIndex;                                                   // +0x74 index of the child that was current before the last Blend
    int m_blendDuration;                                                   // +0x78 duration of the next cross-fade, set by Blend
    int m_blendRemaining;                                                  // +0x7c time left in the cross-fade, counted down by updateTime
    float m_blendScale;                                                    // +0x80 1 / duration of the cross-fade in progress
    unsigned int m_lastTime;                                               // +0x84 time of the last updateTime
    BlenderApplicator m_applicator;                                        // +0x88 0x40 bytes, owner is this
};
