// AnimSetController: an AnimController that plays the clips of one animation set. The constructor takes the set's
// animator from AnimSetManager by id and hands it to the root scene node; the controller does not keep that animator.
// HasClip and the string PlayClip are stubs in the original (they return false) and GetClipDuration returns -1.
// Original 32-bit size 0x14 (20): the AnimController base (0x08 bytes) plus 12 bytes of its own.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x4751b4 / 0x475248, dtor 0x475130 / 0x475164 / 0x475180).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"

#include "dh2/AnimController.hpp"

class RootSceneNode;
class AnimationSet;
namespace glitch {
}  // namespace glitch

class AnimSetController : public AnimController {
public:
    AnimSetController(RootSceneNode* node, int animSetId);                  // 0x4751b4 / 0x475248
    ~AnimSetController() override;                                          // 0x475130 (D1), 0x475164 (D0), 0x475180 (D2)

    // Overrides of AnimController slots, in vtable order. GetNumAnim (slot 0x0c), StopClip (slot 0x24) and
    // SetScale (slot 0x28) are inherited unchanged.
    boost::intrusive_ptr<AnimationSet> GetAnimationSet() override;  // slot 0x08: 0x474f70, animation set of the animator
    int GetNumClip(unsigned int animIndex) const override;                  // slot 0x10: 0x475114
    bool HasClip(const char* clipName, unsigned int animIndex) const override;  // slot 0x14: 0x474f58 returns false
    int GetClipDuration(unsigned int animIndex) const override;             // slot 0x18: 0x474f60 returns -1
    bool PlayClip(unsigned int clip, bool loop, int unused, unsigned int animIndex) override;  // slot 0x1c: 0x474ff0
    bool PlayClip(const char* clipName, bool loop, int unused, unsigned int animIndex) override;  // slot 0x20: 0x474f68 returns false
    void SetCallbacks(AnimCallback animCallback, void* animUserData,
                      EventCallback eventCallback, void* eventUserData) override;  // slot 0x2c: 0x474fb0 forwards to the animator

    // AnimController occupies +0x00 .. +0x07 (vptr, m_node).
    int m_animSetId;                                                        // +0x08 set id passed to AnimSetManager::GetAnimator (the ctor argument)
    int unk_0c;                                                             // +0x0c ctor sets 0; PlayClip passes it to a virtual of the animator set (slot +0x30)
    bool unk_10;                                                            // +0x10 ctor sets 1; PlayClip passes it to RootSceneNode::NewAnim(enable)
    uint8_t pad_11[3];                                                      // +0x11 .. +0x13
};
