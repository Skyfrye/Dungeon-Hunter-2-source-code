// glitch::scene layouts: forwarding header. The 32-bit layout structs that used to be defined here (ISceneNode, IMesh,
// CMesh and CMesh::SBuffer, CMeshBuffer, CBatchMesh, CBatchSceneNode, IAnimatedMesh, CSceneManager) were stand-ins for classes
// that now have one canonical definition each (engine unification wave, u1-scene). Their offsets and evidence moved into the
// canonical headers as `// +0xNN` comments:
//
//   ISceneNode, SListLink          -> scene/ISceneNode.hpp, scene/scene_types.hpp
//   IMesh, IAnimatedMesh           -> scene/IMesh.hpp
//   CMesh, CMesh::SBuffer          -> scene/CMesh.hpp   (CMeshSBuffer below is the old name of CMesh::SBuffer)
//   CMeshBuffer                    -> scene/CMeshBuffer.hpp (not included here: see below)
//   CBatchMesh, CBatchSceneNode    -> scene/CBatchMesh.hpp, scene/CBatchSceneNode.hpp
//   CSceneManager                  -> scene/CSceneManager.hpp
//
// This header includes the canonical headers that can share a translation unit with glitch-core-io/io/interfaces.hpp.
// scene/CMeshBuffer.hpp cannot (interfaces.hpp still declares a stub glitch::scene::CMeshBuffer until the core-io category
// applies the unification map); include it directly in the sources that need the complete mesh buffer.
//
// The recon sources that read these classes as 32-bit guest memory (targetPtr words) were rebased onto the canonical
// classes; see ledger.d/u1-scene.csv and reports/decomp-reconstruction/unification/scene.json.
#ifndef GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_HPP
#define GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_HPP

#include "glitch-scene-collada-gui/scene/CBatchMesh.hpp"
#include "glitch-scene-collada-gui/scene/CBatchSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CMesh.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// Old layout name of CMesh::SBuffer.
using CMeshSBuffer = CMesh::SBuffer;

}  // namespace glitch::scene

#endif  // GLITCH_SCENE_COLLADA_GUI_LAYOUTS_SCENE_HPP
