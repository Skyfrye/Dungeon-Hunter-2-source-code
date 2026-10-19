// Destructors of the scene factory and loader interfaces (canonical classes: scene/SceneFactories.hpp). Each original body is a
// bare return; the D0 variants are compiler-generated and skipped in the ledger.
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::scene {

// 0x6b9cec _ZN6glitch5scene17ISceneNodeFactoryD1Ev
ISceneNodeFactory::~ISceneNodeFactory() = default;

// 0x6b958c _ZN6glitch5scene25ISceneNodeAnimatorFactoryD1Ev
ISceneNodeAnimatorFactory::~ISceneNodeAnimatorFactory() = default;

// 0x6b930c _ZN6glitch5scene11IMeshLoaderD1Ev
IMeshLoader::~IMeshLoader() = default;

// IShadowReceiverTarget has no function in the queue (its destructor is an implicit one).
IShadowReceiverTarget::~IShadowReceiverTarget() = default;

}  // namespace glitch::scene
