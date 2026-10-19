// glitch::scene accessors and interface destructors whose bodies are constant
// returns, one-member reads or one-member writes. Classes map only the members
// those bodies touch; offsets are kept as comments and the code uses typed
// members only. Virtual dispatch is not modelled (no vtables in the stand-ins).
#pragma once

#include <cstdint>
#include <utility>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-video/compile_callbacks.hpp"
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CTerrainSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IParticleAffector.hpp"
#include "glitch-scene-collada-gui/scene/IParticleEmitter.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/SAnimatedMesh.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

namespace glitch::video {
class IVideoDriver;
class CMaterial;
class CMaterialVertexAttributeMap;
}

namespace glitch::io {
class IReadFile;
}

namespace glitch {

// 0x5a20bc _ZN6glitcheqERKSt4pairIjNS_4core8aabbox3dIfEEES6_
// Pairs of a buffer index and a box compare by their index only.
bool operator==(const std::pair<std::uint32_t, core::aabbox3d<float>>& lhs,
                const std::pair<std::uint32_t, core::aabbox3d<float>>& rhs);

}  // namespace glitch

namespace glitch::scene {

class ITriangleSelector;
class CBatchSceneNode;
class CSceneManager;
// IParticleEmitter, IParticleAffector and the per-shape interfaces: canonical classes in scene/IParticleEmitter.hpp and
// scene/IParticleAffector.hpp (the stand-ins with a type tag and an empty destructor were retired).

// ---- Scene-node types ----

// IText, CTextSceneNode, CBillboardTextSceneNode and CDummyTransformationSceneNode: canonical classes in scene/CTextSceneNode.hpp
// and scene/CDummyTransformationSceneNode.hpp.

// CSkyBoxSceneNode: canonical class in scene/CSkyBoxSceneNode.hpp.

// CShadowVolumeSceneNode: canonical class in scene/CShadowVolumeSceneNode.hpp; CAnimatedMeshSceneNode in scene/CAnimatedMeshSceneNode.hpp.

// CParticleSystemSceneNode: canonical in scene/CParticleSystemSceneNode.hpp (the stand-in with no base was retired).

// glitch::scene::CMesh: canonical definition in scene/CMesh.hpp.

// Animator classes: canonical classes in scene/CSceneNodeAnimator*.hpp and scene/CDefaultSceneNodeAnimatorFactory.hpp; ISceneCollisionManager in
// scene/ISceneCollisionManager.hpp.
// E_SCENE_NODE_ANIMATOR_TYPE (the factory name-table ids) is defined once in scene/scene_types.hpp.

// CDefaultSceneNodeFactory: canonical class in scene/CDefaultSceneNodeFactory.hpp.

// ---- Remaining interface destructors (empty D1 bodies). ----

// IBillboard: canonical class in scene/CBillboardSceneNode.hpp.

// IEndOfBatchCallback: canonical class in scene/CAppendMeshBuffer.hpp.

// ISegmentCompileCallback: canonical class in glitch-video/compile_callbacks.hpp (0x3ef17c, empty destructor).

class SDefaultSegmentCompileCallback : public ISegmentCompileCallback {
public:
    // 0x5891a8 _ZN6glitch5scene30SDefaultSegmentCompileCallbackD1Ev (empty)
    ~SDefaultSegmentCompileCallback() override = default;
    // 0x58c118: records one compiled segment in the batch node's mesh and forwards it to the user's callback.
    void operator()(CBatchMesh* mesh, void* segment, const SCompileInfo& info) override;

    // The object is built on compileInternal's stack (0x58fb0c .. 0x58fb5c): vptr +0x00, then
    CBatchSceneNode* node = nullptr;                        // +0x04 the batch node whose mesh receives the segments
    CSceneManager* sceneManager = nullptr;                  // +0x08
    ISegmentCompileCallback* userCallback = nullptr;        // +0x0c compileInternal's fifth argument
    std::int32_t batchIndex = -1;                           // +0x10 the batch being filled (-1: none yet); the end-of-batch callback keys its map with it
};

// SAnimatedMesh: canonical class in scene/SAnimatedMesh.hpp.

// CAppendMeshBuffer: canonical class in scene/CAppendMeshBuffer.hpp.

// CColladaBinaryFileLoader: canonical class in scene/CColladaBinaryFileLoader.hpp.

}  // namespace glitch::scene
