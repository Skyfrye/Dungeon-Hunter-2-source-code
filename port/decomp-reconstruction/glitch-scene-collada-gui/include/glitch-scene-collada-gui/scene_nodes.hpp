// glitch::scene node, animator and manager classes. The canonical definitions of the classes below moved to the scene/ headers
// of the engine unification wave (u1-scene); this header includes them, so existing includes keep working.
//
//   ISceneNodeAnimator            -> scene/ISceneNodeAnimator.hpp
//   ITimeController, ITimelineController -> scene/ITimelineController.hpp
//   ICameraSceneNode              -> scene/ICameraSceneNode.hpp
//   CCameraSceneNode, SViewFrustum -> scene/CCameraSceneNode.hpp, scene/SViewFrustum.hpp
//   CEmptySceneNode, CSceneManagerRootNode -> scene/CEmptySceneNode.hpp
//   CMeshSceneNode                -> scene/CMeshSceneNode.hpp
//   CSceneManager                 -> scene/CSceneManager.hpp
//   IMesh                         -> scene/IMesh.hpp
//   CBatchMesh, CBatchSceneNode   -> scene/CBatchMesh.hpp, scene/CBatchSceneNode.hpp
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "glitch-scene-collada-gui/scene/SViewFrustum.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"

namespace glitch::io {
class IWriteFile;
}
namespace glitch::video {
class CLight;
}

namespace glitch::scene {

// CLightSceneNode (scene/CLightSceneNode.hpp) and CBillboardSceneNode, IBillboard, IBillboardSceneNode
// (scene/CBillboardSceneNode.hpp): the canonical definitions, derived from ISceneNode.

// CBatchMesh and CBatchSceneNode: canonical definitions in scene/CBatchMesh.hpp and scene/CBatchSceneNode.hpp.

}  // namespace glitch::scene
