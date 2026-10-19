// AnimatorSynchronizedSet: the game's scene-node animator for a COLLADA animation set whose clips are
// synchronised. Its engine base is glitch::collada::CSceneNodeAnimatorSynchronizedSet (glitch-scene-collada-gui,
// canonical), which derives from CSceneNodeAnimatorSet and from the synchronized-animator interface. The ctor
// hands the set and the segment names to that base, then builds an AnimApplicator at +0x84 with this as its owner.
// getType returns 15 (the value is outside the named scene::E_SCENE_NODE_ANIMATOR_TYPE entries).
// Original 32-bit size 0xc8 (the AnimSetManager note: GetSynchronizedAnimator builds one at 0xc8 bytes).
// Reconstructed from libDungeonHunter2.so: ctor 0x36904c / 0x3690dc, dtors 0x368f54 / 0x368fcc / 0x368fe8,
// animateNode 0x368f24, getType 0x368efc.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedSet.hpp"

#include "dh2/AnimApplicator.hpp"

namespace glitch {
namespace collada {
class CAnimationSet;
}  // namespace collada
namespace scene {
class ISceneNode;
}  // namespace scene
}  // namespace glitch

class AnimatorSynchronizedSet : public glitch::collada::CSceneNodeAnimatorSynchronizedSet {
public:
    AnimatorSynchronizedSet(const boost::intrusive_ptr<glitch::collada::CAnimationSet>& animationSet,
                            const glitch::core::svector<std::string>& names);     // 0x36904c (C1), 0x3690dc (C2)
    virtual ~AnimatorSynchronizedSet();                                 // 0x368f54 (D1), 0x368fcc (D0), 0x368fe8 (D2)

    void animateNode(glitch::scene::ISceneNode* node, unsigned int time) override;  // 0x368f24. Calls the base animateNode, then AnimApplicator::AnimateNode on +0x84; returns void
    glitch::scene::E_SCENE_NODE_ANIMATOR_TYPE getType() const override;  // 0x368efc returns 15

    // The CSceneNodeAnimatorSynchronizedSet base (with its CSceneNodeAnimatorSet part) occupies the start of the
    // object up to +0x83 in the original; its members are used by name.

    AnimApplicator m_applicator;                                        // +0x84 .. +0xbf (0x3c bytes in the original), built by the ctor as AnimApplicator(this + 0x84, this)
};
