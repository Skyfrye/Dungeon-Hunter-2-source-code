// Bodies of glitch::scene::CSceneNodeAnimatorDelete (canonical class: scene/CSceneNodeAnimatorDelete.hpp). This file
// replaces the stand-in members of src/scene_simple_accessors.cpp and the comment block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorDelete.hpp"

#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

namespace glitch::scene {

// 0x6cb56c _ZN6glitch5scene24CSceneNodeAnimatorDeleteC1EPNS0_13CSceneManagerEj
// 0x6cb658 _ZN6glitch5scene24CSceneNodeAnimatorDeleteC2EPNS0_13CSceneManagerEj
// Base animator (timeline controller null, reference count 1), then deleteTime (+0x0c) and the scene manager (+0x10).
CSceneNodeAnimatorDelete::CSceneNodeAnimatorDelete(CSceneManager* manager, std::uint32_t when)
    : deleteTime(when), sceneManager(manager) {}

// 0x6cb4a8 _ZN6glitch5scene24CSceneNodeAnimatorDeleteD1Ev
// 0x6cb520 _ZN6glitch5scene24CSceneNodeAnimatorDeleteD2Ev
// 0x6cb504 _ZN6glitch5scene24CSceneNodeAnimatorDeleteD0Ev
CSceneNodeAnimatorDelete::~CSceneNodeAnimatorDelete() = default;

// 0x6cb440 _ZN6glitch5scene24CSceneNodeAnimatorDelete11animateNodeEPNS0_10ISceneNodeEj
// A null node counts as alive. Otherwise the node is alive while deleteTime >= timeMs. A dead node is queued for deletion
// when there is a scene manager whose attribute set does not have "IRR_Editor" set.
void CSceneNodeAnimatorDelete::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    const bool alive = (node == nullptr) ? true : deleteTime >= timeMs;
    if (!alive) {
        if (sceneManager != nullptr) {
            if (!sceneManager->attributes.getBool("IRR_Editor")) {  // CAttributes at the scene manager's +0x114, vptr+0xe4
                sceneManager->addToDeletionQueue(node);
            }
        }
    }
}

// 0x6cb62c _ZN6glitch5scene24CSceneNodeAnimatorDelete11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorDelete::createClone() {
    return new CSceneNodeAnimatorDelete(sceneManager, deleteTime);  // operator new(0x1c)
}

// 0x6cb418 _ZNK6glitch5scene24CSceneNodeAnimatorDelete7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorDelete::getType() const {
    return ESNAT_DELETION;
}

}  // namespace glitch::scene
