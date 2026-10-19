// The material parameter writes and reads the scene classes make, in one place. Scene owner pass (R3b).
//
// CSkyBoxSceneNode, CBillboardTextSceneNode and CSceneNodeAnimatorTexture store a texture (and CSkyBoxSceneNode a colour) in a material
// through IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>::setParameter / setParameterCvt, and CSkyBoxSceneNode
// reads a texture back with getParameter. In the original the parameter values live in the same block as the CMaterial header (from
// +0x20); glitch-video's CMaterial does not carry them, and its IMaterialParameters<CMaterial, true> is a separate accessor object
// without a link to a material (material_parameters.hpp). The functions below are the seam: today they report that nothing was
// stored (false), and the callers keep everything else of their bodies. When glitch-video stores the values in the material, only
// src/scene/material_access.cpp changes.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::video {
class CMaterial;
class ITexture;
}  // namespace glitch::video

namespace glitch::scene {

// setParameter<boost::intrusive_ptr<ITexture>>(id, index, texture) of the material's parameter block (0x5cc..., the M instances).
bool setMaterialTexture(video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index,
                        const boost::intrusive_ptr<video::ITexture>& texture);
// getParameter<boost::intrusive_ptr<ITexture>>(id, index, out).
bool getMaterialTexture(const video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index,
                        boost::intrusive_ptr<video::ITexture>& texture);
// setParameterCvt<SColor>(id, index, colour): the colour converted to the parameter's own type.
bool setMaterialColorCvt(video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index, video::SColor color);
// getParameter<SColor>(id, index, out): the parameter's colour value (CParticleSystemSceneNode::onAnimate).
bool getMaterialColor(const video::CMaterial& material, std::uint16_t parameterId, std::uint32_t index, video::SColor& color);

}  // namespace glitch::scene
