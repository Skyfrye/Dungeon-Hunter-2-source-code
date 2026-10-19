// glitch::collada accessors on the synchronized animator set, the skinned-mesh
// and timeline bases, and the animator base's length. Only the members these
// accessors touch are mapped.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/IColladaSkinTechnique.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSynchronizedSet.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"

namespace glitch::scene {
class ISceneNode;
class CMeshBuffer;
}

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::core {
template <typename T>
struct aabbox3d;
}

namespace glitch::io {
class IAttributes;
struct SAttributeReadWriteOptions;
}  // namespace glitch::io

namespace glitch::collada {

class SSkinBuffer;

// SSyncSegment and CSceneNodeAnimatorSynchronizedSet: canonical in collada/ISceneNodeAnimator.hpp and
// collada/CSceneNodeAnimatorSynchronizedSet.hpp.

// ISkinnedMesh: canonical in collada/CSkinnedMesh.hpp (the skin technique classes: collada/IColladaSkinTechnique.hpp).

// STimelineClip, STimelineClipTable and CTimelineController: canonical definitions in collada/CTimelineController.hpp.

// collada::ISceneNodeAnimator: canonical in collada/ISceneNodeAnimator.hpp.

// The skin techniques (glitch::collada::detail): canonical in collada/IColladaSkinTechnique.hpp.


// CAnimationStreamingManager: canonical definition in collada/CColladaDatabase.hpp.

// SAnimationTemplate -> STemplateTarget and CAnimationSetTransformationTemplate: canonical in collada/CAnimationSet.hpp.

}  // namespace glitch::collada
