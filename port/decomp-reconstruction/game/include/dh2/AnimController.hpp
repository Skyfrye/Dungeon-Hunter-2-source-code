// AnimController: thin wrapper that plays clips on the animators (glitch ISceneNodeAnimator) attached to a
// RootSceneNode. Original size 8 (operator new(8)). Derived by AnimSetController and BlendedAnimSetController.
// Vtable (56 bytes): +0x00/+0x04 destructors, then the clip interface below in this order.
#pragma once

#include <cstdint>
#include "glitch-core-io/boost/intrusive_ptr.hpp"

class RootSceneNode;
class AnimationSet;
namespace glitch {
namespace scene { class ITimelineController; }
namespace collada { class ISceneNodeAnimator; struct STriggeredEvent; }
}  // namespace glitch

class AnimController {
public:
    typedef void (*AnimCallback)(glitch::scene::ITimelineController* timeline, void* userData);
    typedef void (*EventCallback)(const glitch::collada::STriggeredEvent& event, void* userData);

    // trackEvents: when clear, every animator gets the do-nothing callbacks. When set, the ctor calls the node's virtual at
    // vptr+0x74 instead (vtables-001.json resolves it to glitch::scene::ISceneNode::removeAnimators(); not verified in IDA).
    AnimController(RootSceneNode* node, bool trackEvents);  // 0x474d30 / 0x474e44; asserts "m_node", takes a reference on it
    virtual ~AnimController();                         // +0x00 0x474684 (D1), +0x04 0x474d14 (D0), 0x4746c8; drops the node

    virtual boost::intrusive_ptr<AnimationSet> GetAnimationSet();  // +0x08 0x474678 empty here
    virtual int GetNumAnim() const;                    // +0x0c 0x474734 number of animators on the node
    virtual int GetNumClip(unsigned int animIndex) const;                          // +0x10 0x47487c
    virtual bool HasClip(const char* clipName, unsigned int animIndex) const;      // +0x14 0x474814
    virtual int GetClipDuration(unsigned int animIndex) const;                     // +0x18 0x4747d8 -1 without animator
    virtual bool PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex);        // +0x1c 0x474b50
    virtual bool PlayClip(const char* clipName, bool loop, int unused, unsigned int animIndex);     // +0x20 0x4749f4
    virtual void StopClip(bool rewind, unsigned int animIndex);                    // +0x24 0x474988
    virtual void SetScale(float scale, unsigned int animIndex);                    // +0x28 0x474920 only when s_scalingEnabled
    virtual void SetCallbacks(AnimCallback animCallback, void* animUserData,
                              EventCallback eventCallback, void* eventUserData);   // +0x2c 0x474d10 thunk to SetCallbacksOnAll

    glitch::collada::ISceneNodeAnimator* GetAnim(unsigned int index);               // 0x4748b8
    const glitch::collada::ISceneNodeAnimator* GetAnim(unsigned int index) const;   // 0x474770 (const result: its callers use the const getTimelineCtrl, slot +0x40)
    void SetCallbacks(glitch::collada::ISceneNodeAnimator* animator, AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData);          // 0x474c78
    void SetCallbacksOnAll(AnimCallback animCallback, void* animUserData,
                           EventCallback eventCallback, void* eventUserData);     // 0x474cac
    static void _CBAnim_DoNothing(glitch::scene::ITimelineController* timeline, void* userData);       // 0x47470c
    static void _CBEvent_DoNothing(const glitch::collada::STriggeredEvent& event, void* userData);     // 0x474710

    static bool s_scalingEnabled;                      // gates SetScale

public:
    // +0x00 vptr
    RootSceneNode* m_node;                             // +0x04 reference counted (RootSceneNode is a glitch scene node)
};
