// BlendedAnimSetController: an AnimController that plays one animation set through an AnimatorBlender. The
// constructor takes two animators for the set's id and blends them; the blender is handed to the root scene node,
// and the controller does not keep it. GetAnimationSet and GetNumClip read the blender's current child.
// HasClip and the string PlayClip are stubs in the original (they return false) and GetClipDuration returns -1.
// Original 32-bit size 0x18 (24): the AnimController base (0x08 bytes) plus 16 bytes of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x476b4c / 0x476ddc, dtor 0x476990 / 0x4769c4 / 0x4769e0).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"

#include "dh2/AnimController.hpp"

class RootSceneNode;
class AnimationSet;
namespace glitch {
}  // namespace glitch

class BlendedAnimSetController : public AnimController {
public:
    BlendedAnimSetController(RootSceneNode* node, int animSetId);            // 0x476b4c / 0x476ddc
    ~BlendedAnimSetController() override;                                    // 0x476990 (D1), 0x4769c4 (D0), 0x4769e0 (D2)

    // Overrides of AnimController slots, in vtable order. GetNumAnim (slot 0x0c) is inherited unchanged.
    boost::intrusive_ptr<AnimationSet> GetAnimationSet() override;  // slot 0x08: 0x476698, animation set of the current child
    int GetNumClip(unsigned int animIndex) const override;                   // slot 0x10: 0x47695c, clip count of the current child
    bool HasClip(const char* clipName, unsigned int animIndex) const override;  // slot 0x14: 0x476680 returns false
    int GetClipDuration(unsigned int animIndex) const override;              // slot 0x18: 0x476688 returns -1
    bool PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex) override;  // slot 0x1c: 0x47680c, blends then selects the clip
    bool PlayClip(const char* clipName, bool loop, int unused, unsigned int animIndex) override;  // slot 0x20: 0x476690 returns false
    void StopClip(bool rewind, unsigned int animIndex) override;             // slot 0x24: 0x476780, zeroes the blender scale first
    void SetScale(float scale, unsigned int animIndex) override;             // slot 0x28: 0x47673c, only when s_scalingEnabled
    void SetCallbacks(AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData) override;  // slot 0x2c: 0x4766fc forwards to the blender

    // AnimController occupies +0x00 .. +0x07 (vptr, m_node).
    int m_animSetId;                                                         // +0x08 set id passed to AnimSetManager::GetAnimator (the ctor argument)
    int unk_0c;                                                              // +0x0c ctor sets 0; PlayClip passes it to a virtual of the child animator set (slot +0x30)
    bool unk_10;                                                             // +0x10 ctor sets 1; PlayClip passes it to RootSceneNode::NewAnim(enable)
    uint8_t pad_11[3];                                                       // +0x11 .. +0x13
    int unk_14;                                                              // +0x14 ctor sets 0; PlayClip passes it to AnimatorBlender::Blend (cross-fade duration, ms)
};
