// Bodies of glitch::scene::IMesh and glitch::scene::IAnimatedMesh (canonical classes: scene/IMesh.hpp). This file takes over the
// IMesh and IAnimatedMesh bodies of src/scene_nodes.cpp and src/scene_simple_accessors.cpp.
#include "glitch-scene-collada-gui/scene/IMesh.hpp"

namespace glitch::scene {

// 0x596c68 _ZN6glitch5scene5IMeshD1Ev (empty; the D0 at 0x596c94 is skipped)
IMesh::~IMesh() = default;

// 0x596c6c _ZNK6glitch5scene5IMesh15getUserPropertyEv
const SUserProperty* IMesh::getUserProperty() const {
    return nullptr;
}

// 0x599ef8 _ZN6glitch5scene13IAnimatedMeshD1Ev (empty; the D0 at 0x59a60c is skipped)
IAnimatedMesh::~IAnimatedMesh() = default;

// 0x599efc _ZNK6glitch5scene13IAnimatedMesh11getMeshTypeEv
std::uint32_t IAnimatedMesh::getMeshType() const {
    return 0;
}

}  // namespace glitch::scene
