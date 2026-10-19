// Slice 31 reconstruction (see include/glitch-scene-collada-gui/recon/slice_31.hpp).
// Each function keeps the original address and mangled symbol in its comment.
// Attribute calls go through the IAttributes stand-in; the slot offsets are
// listed in the header.

#include "glitch-scene-collada-gui/recon/slice_31.hpp"

#include "glitch-video/material.hpp"
#include "glitch-video/texture.hpp"

namespace glitch::collada::recon_31 {

// 0x35a9d8 _ZNK6glitch7collada21CSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Thunk: forwards to the ISceneNode body.
void CSkinnedMeshSceneNode_serializeAttributes(const CSkinnedMeshSceneNode& self, IAttributes* attributes,
                                               SAttributeReadWriteOptions* options) {
    ISceneNode_serializeAttributes(&self, attributes, options);
}

// 0x35a9ec _ZN6glitch7collada21CSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Thunk: forwards to the ISceneNode body.
void CSkinnedMeshSceneNode_deserializeAttributes(CSkinnedMeshSceneNode& self, IAttributes* attributes,
                                                 SAttributeReadWriteOptions* options) {
    ISceneNode_deserializeAttributes(&self, attributes, options);
}

// ---------------------------------------------------------------------------
// glitch::scene::CBillboardSceneNode: retired from this slice; the canonical class (scene/CBillboardSceneNode.hpp, src/scene/CBillboardSceneNode.cpp)
// carries getColor, serializeAttributes and deserializeAttributes.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// glitch::scene::CLightSceneNode
// ---------------------------------------------------------------------------

// 0x583d88 _ZN6glitch5scene15CLightSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CLightSceneNode_deserializeAttributes(CLightSceneNode& self, IAttributes* attributes,
                                           SAttributeReadWriteOptions* options) {
    ISceneNode_deserializeAttributes(&self, attributes, options);
    attributes->push("Light");
    CLight_deserializeAttributes(self.light, attributes, options);
    attributes->pop();
}

}  // namespace glitch::collada::recon_31
