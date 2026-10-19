// GetApplicator(glitch::scene::ISceneNodeAnimator*) (<global>). Returns the AnimApplicator that the animator's
// type carries, or null. Defined in game-app/src/g1-game-app-global-f216b6-2.cpp.
#pragma once

class AnimApplicator;

namespace glitch {
namespace scene {
class ISceneNodeAnimator;
}  // namespace scene
}  // namespace glitch

AnimApplicator* GetApplicator(glitch::scene::ISceneNodeAnimator* animator);  // 0x369160
