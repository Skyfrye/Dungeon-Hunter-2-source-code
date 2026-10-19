// glitch::scene::CSceneNodeAnimatorDelete: the animator that removes its node from the scene once a time has passed.
// Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp and the recon
// slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cb56c C1 / 0x6cb658 C2, createClone 0x6cb62c allocates 0x1c bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c deleteTime (the constructor's second argument, read by animateNode and passed on by createClone)
//   +0x10 the scene manager (not owned)
//   +0x14 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x18 (the constructor stores 1)
// The vtable overrides animateNode (+0x10), createClone (+0x18) and getType (+0x24, 5); every other slot is the base's.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class CSceneManager;

class CSceneNodeAnimatorDelete : public ISceneNodeAnimator {
public:
    // 0x6cb56c (C1) and 0x6cb658 (C2): stores the arguments at +0x0c and +0x10.
    CSceneNodeAnimatorDelete(CSceneManager* sceneManager, std::uint32_t deleteTime);
    // 0x6cb4a8 (D1), 0x6cb520 (D2), 0x6cb504 (D0): only the base destructor runs.
    ~CSceneNodeAnimatorDelete() override;

    // vptr+0x10, 0x6cb440: queues the node for deletion once `deleteTime >= timeMs` no longer holds (a null node counts as
    // alive), unless the scene manager's attribute "IRR_Editor" is set. A null scene manager does nothing.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cb62c: a new animator with the same scene manager and time.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cb418: 5 (ESNAT_DELETION).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    std::uint32_t deleteTime = 0;           // +0x0c
    CSceneManager* sceneManager = nullptr;  // +0x10
};

}  // namespace glitch::scene
