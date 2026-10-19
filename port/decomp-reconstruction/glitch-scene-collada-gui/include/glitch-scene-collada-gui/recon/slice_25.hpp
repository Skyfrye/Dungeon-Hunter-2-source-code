// Slice 25 of the glitch::scene reconstruction: CDummyTransformationSceneNode, the default scene-node factories and the Collada
// binary loader. (The glitch::gui part of the slice, CGUIContextMenu, IGUIElement::setTabOrder and CGUIEditBox, is in gui/*.hpp.)
//
// Member offsets come from the layout headers under layouts/ (32-bit ARM). Members the
// layouts do not declare are not invented: those bodies are marked partial in
// ledger_parts/slice_25.csv and call the unattached helpers below.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/layouts/scene.hpp"

namespace glitch::collada::recon_25 {

// glitch::scene. CColladaBinaryFileLoader, the factories and CDummyTransformationSceneNode have no layout in
// layouts/scene.hpp; their bodies are partial. (CAppendMeshBuffer is the canonical class of scene/CAppendMeshBuffer.hpp.)

}  // namespace glitch::collada::recon_25
