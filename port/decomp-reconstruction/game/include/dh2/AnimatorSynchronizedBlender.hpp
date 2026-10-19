// AnimatorSynchronizedBlender: the game's scene-node animator that cross-fades between two child animators
// whose segments are kept in step (the engine base is glitch::collada::CSceneNodeAnimatorSynchronizedBlender).
// Blend mirrors AnimatorBlender: m_currentIndex and m_previousIndex swap and the remaining cross-fade time
// counts down. Its SynchronizedBlenderApplicator (an AnimApplicator at +0xd8) keeps a per-segment weight
// vector and applies the synchronized values to the reference node.
// Base: glitch::collada::CSceneNodeAnimatorSynchronizedBlender (glitch-scene-collada-gui, canonical). The base
// also carries the IColladaSceneNodeSynchronizedAnimatorInterface secondary table (+0x24 in the original) and
// the virtual IReferenceCounted (+0x128 in the original); neither is redeclared here.
// getType returns 14 (the value is outside the named scene::E_SCENE_NODE_ANIMATOR_TYPE entries).
// Original 32-bit size 0x130 (the reference-counted sub-object ends at +0x12f). No operator new seen.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3688f0 / 0x3689cc, dtor 0x368be4 / 0x368cd0 / 0x368d70,
// Blend 0x3684d8, animateNode 0x36820c, SetCallbacks 0x367b74, applicator ApplyValues 0x367d94, AnimateNode 0x367ec8).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedBlender.hpp"

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

class AnimatorSynchronizedBlender : public glitch::collada::CSceneNodeAnimatorSynchronizedBlender {
public:
    typedef void (*AnimCallback)(glitch::scene::ITimelineController* timeline, void* userData);
    typedef void (*EventCallback)(const glitch::collada::STriggeredEvent& event, void* userData);

    // Applicator of the synchronized blender: the AnimApplicator sub-object (0x3c bytes), the owning blender,
    // the per-segment weight vector and the last segment index. Vtable slots 0x08 to 0x10 override the
    // AnimApplicator slots. Original size 0x50.
    class SynchronizedBlenderApplicator : public AnimApplicator {
    public:
        // No symbol of its own: the original inlines this construction into the blender constructors.
        explicit SynchronizedBlenderApplicator(AnimatorSynchronizedBlender* blender);
        ~SynchronizedBlenderApplicator() override;                         // 0x367d4c (D1), 0x368c70 (D0)

        void SetRefNode(glitch::scene::ISceneNode* node) override;         // 0x3685cc forwards to every segment applicator
        void ResetDelta(unsigned int time) override;                       // 0x367b64
        void AnimateNode(unsigned int time) override;                      // 0x367ec8

        void ApplyValues(unsigned int animatorId, unsigned int timeMs);    // 0x367d94 checks the weight and animator counts; timeMs is unused
        void CustomResetDelta();                                           // 0x3683bc resets the segment deltas

        // AnimApplicator occupies +0x00 .. +0x3b.
        AnimatorSynchronizedBlender* m_blender;                            // +0x3c owning blender (set by the blender ctor)
        std::vector<float> m_weights;                                      // +0x40 .. +0x4b one weight per child animator (begin, end, capacity)
        int32_t unk_4c;                                                    // +0x4c -1 from the ctor; SetRefNode stores the index of the active child (partial)
    };

    AnimatorSynchronizedBlender();                                         // 0x3688f0 (C1); 0x3689cc (C2, VTT form, same body)

    virtual ~AnimatorSynchronizedBlender();                                // 0x368cd0 (D1, complete object), 0x368be4 (D2, base form taking the VTT), 0x368d70 (D0)

    void animateNode(glitch::scene::ISceneNode* node, unsigned int time) override;  // 0x36820c
    glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE getType() const override;    // 0x367b6c returns 14
    static void _CBAnim(glitch::scene::ITimelineController* timeline, void* userData);  // 0x367b68 empty (bare return)
    void SetCallbacks(AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData);   // 0x367b74
    void SetScale(float scale);                                            // 0x367c38 scales the cross-fade time
    void BlendPost();                                                      // 0x367ca4
    void compile(glitch::core::svector<std::uint8_t>* buffer) override;              // 0x368ba4 slot 0x88, sizes the output buffer
    void Blend(int duration);                                              // 0x3684d8 starts a cross-fade of the given length (ms)

    int m_currentIndex;                                                    // +0xb4 index of the child that is fading in, advanced by Blend
    int m_previousIndex;                                                   // +0xb8 index of the child that was current before the last Blend
    int m_blendDuration;                                                   // +0xbc duration of the next cross-fade, set by Blend
    int m_blendRemaining;                                                  // +0xc0 time left in the cross-fade
    float m_blendScale;                                                    // +0xc4 1 / duration of the cross-fade in progress
    uint32_t m_lastTime;                                                   // +0xc8 time of the last animateNode; the step is the new time minus this
    int32_t m_clipWrapOffset;                                              // +0xcc overshoot past the clip end, set by animateNode and applied once by BlendPost
    AnimCallback m_animCallback;                                           // +0xd0 set by SetCallbacks, also passed to the applicator
    void* m_animCallbackUser;                                              // +0xd4 set by SetCallbacks
    SynchronizedBlenderApplicator m_applicator;                            // +0xd8 0x50 bytes, owner is this
};
