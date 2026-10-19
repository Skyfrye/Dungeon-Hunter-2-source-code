// AnimatorSet: the game's scene-node animator over an AnimationSet. It holds a reference on the AnimationSet
// (m_animationSet) and on the Animation it is currently playing (m_currentAnimation, counted through the
// Animation's own use counters), and it plays the clips of that set through an embedded AnimApplicator.
// Base: glitch::collada::CSceneNodeAnimatorSet (glitch-scene-collada-gui, canonical). The base's own
// currentAnimation (+0x50) and animationSet (+0x24, a CAnimationSet) are not redeclared here.
// getType returns 13 (the value is outside the named scene::E_SCENE_NODE_ANIMATOR_TYPE entries).
// Original 32-bit size 0xa4 (the reference-counted sub-object ends at +0xa3). No operator new seen.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3676b8 / 0x367790, dtor 0x367590,
// setCurrentAnimation 0x367420, SetCurrentAnimation 0x3674ac).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"

#include "dh2/AnimApplicator.hpp"
#include "dh2/AnimationSet.hpp"

class Animation;

namespace glitch {
namespace scene {
class ISceneNode;
class ITimelineController;
}  // namespace scene
namespace collada {
struct STriggeredEvent;
}  // namespace collada
}  // namespace glitch

class AnimatorSet : public glitch::collada::CSceneNodeAnimatorSet {
public:
    typedef void (*AnimCallback)(glitch::scene::ITimelineController* timeline, void* userData);
    typedef void (*EventCallback)(const glitch::collada::STriggeredEvent& event, void* userData);

    explicit AnimatorSet(const boost::intrusive_ptr<AnimationSet>& animationSet);  // 0x3676b8 / 0x367790

    virtual ~AnimatorSet();                                                // 0x367590 (D1), 0x36761c (D0), 0x367638

    glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE getType() const override;    // 0x3672c0 returns 13
    void _HandleAnimEnding(glitch::scene::ITimelineController* timeline);  // 0x3672c8 non-virtual: no vtable slot, _CBAnim calls it directly
    static void _CBAnim(glitch::scene::ITimelineController* timeline, void* userData);  // 0x367338 AnimCallback; userData is the AnimatorSet
    void computeAnimationValues(unsigned int time) override;               // 0x367368
    void applyAnimationValues(unsigned int time) override;                 // 0x36737c
    void getAnimationValue(int track, int index, void* out) override;      // 0x367390 (the base result is void)
    void animateNode(glitch::scene::ISceneNode* node, unsigned int time) override;  // 0x3673a4
    void updateTime(unsigned int time) override;                           // 0x3673e4
    void setCurrentAnimation(std::int32_t index) override;                 // 0x367420 looks up by set index, swaps m_currentAnimation
    void onUnbind(glitch::scene::ISceneNode* node) override;               // 0x367484

    int SetCurrentAnimation(int animId);                                   // 0x3674ac looks up by AnimDict id, swaps m_currentAnimation

    void SetCallbacks(AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData);   // 0x367510

    AnimApplicator m_applicator;                                           // +0x58 owner is this. 0x3c bytes.
    boost::intrusive_ptr<AnimationSet> m_animationSet;                     // +0x94 counted reference, raw pointer in the original
    Animation* m_currentAnimation;                                         // +0x98 counted through the Animation's use counter (+0x24)
};
