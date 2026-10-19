// glitch::collada scene-node, mesh, animation-set and value-track accessors that
// read one member or forward to one other accessor. Each class maps only the
// members these accessors touch; the rest of the layout is a pad. Offsets are
// kept as comments, and the code uses typed members only.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CDynamicAnimationSet.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorSet.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"

namespace glitch::scene {
class ISceneNode;
class CMeshBuffer;
}

namespace glitch::video {
class CMaterial;
class CMaterialVertexAttributeMap;
}

namespace glitch {
class IReferenceCounted;
}

namespace glitch::video {
class CMaterial;
class CMaterialVertexAttributeMap;
}  // namespace glitch::video

namespace glitch::collada {

// Uid holder: the first word of the object it points to is the uid string.
struct SUidHolder {
    const char* uid = nullptr;  // word 0
};

// CDynamicAnimationSet: canonical in collada/CDynamicAnimationSet.hpp.

// CCoronasSceneNode: canonical in collada/CCoronasSceneNode.hpp (the stand-in with the +0x150 box was retired).

// CMesh, CMorphingMesh and IMesh: canonical definitions in collada/IMesh.hpp.

// CSceneNode, CMeshSceneNode, CModularSkinnedMeshSceneNode, CLightSceneNode and CCameraSceneNode: canonical in collada/*.hpp (included above).

namespace animation_track {
class CApplicatorInfo;
}  // namespace animation_track

// CSceneNodeAnimatorSet: canonical in collada/CSceneNodeAnimatorSet.hpp.

// CParticleSystemSceneNode and CGlitchNewParticleSystemSceneNode: canonical in collada/CParticleSystemSceneNode.hpp and
// collada/CGlitchNewParticleSystemSceneNode.hpp (their stand-ins with the uid holder and the box pointer were retired).

namespace animation_track {

// Float-valued track: identity value is 0.0.
class CFloatEx {
public:
};

// Weight-valued track: identity value is 0.0.
class CWeightEx {
public:
};

}  // namespace animation_track

}  // namespace glitch::collada
