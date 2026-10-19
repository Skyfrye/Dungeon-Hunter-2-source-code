// The code the two particle scene nodes (collada::CParticleSystemSceneNode of the old system and collada::CGlitchNewParticleSystemSceneNode
// of the new one) share. In the original each node has its own copy of every one of these bodies, instantiated for its particle type
// (the listings 0x64fd60 / 0x63f214 for init, 0x656450 / 0x642e58 for the billboard set-up, 0x6572b8 / 0x643ea8 for render,
// 0x64ce44 / 0x63b1d0 for the box); the copies differ only in the member offsets they read, so the port keeps one body per step and
// the classes hand it their members. Residue pass ob. Not original functions.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

namespace glitch::video {
class IBuffer;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::collada::detail {

// The animation tracks of the node's materials (init, first half): for each material, when the file has no source name, the streamed
// animation block at the whole-animation clip becomes the system's "AnimationDatabase"; the colour animation (by the colour parameter's
// name, then by the diffuse colour channel, then "__irrlicht_Diffuse_color") the "DiffuseColorTrack"; the texture-transform animation the
// "TextureTransformTrack" (and sets the node's hasTextureTransform).
template <typename P>
void bindMaterialAnimations(IParticleSystemSceneNode& node, ps::IParticleContext<P>& context);

// The quad mesh buffer all billboard systems of a node class share (initParticleSystem 0x656450 / 0x642e58, first part): built once
// from the static indices {0, 1, 2, 0, 2, 3}, a vertex stream table for the attribute mask 0x60003 whose second stream (texture
// coordinates) holds the four corners (0, 0), (0, 1), (1, 1), (1, 0).
void ensureBillboardMeshBuffer(video::IVideoDriver* driver, boost::intrusive_ptr<scene::CMeshBuffer>& shared);

// The index buffer that repeats the quad's six indices for `requested` particles (initParticleSystem, second part): created empty when
// missing, and rebuilt (`builtFor` is the count it holds) only when `requested` is larger than the count it was built for.
void ensureBillboardIndexBuffer(video::IVideoDriver* driver, boost::intrusive_ptr<video::IBuffer>& shared, std::int32_t& builtFor,
                                std::int32_t requested, scene::CMeshBuffer& quad);

// render (0x6572b8 / 0x643ea8): see CParticleSystemSceneNode::render.
template <typename P>
void renderParticles(IParticleSystemSceneNode& node, ps::IParticleSystem<P>& system, video::IVideoDriver* driver,
                     std::uint32_t attributeMask, std::uint16_t colorParameterId, void* viewMatrixSlot);

// The view matrix a node hands its render model: the active camera's, else the identity (the first block of render and of the new
// node's onAnimate).
void copyCameraViewMatrix(IParticleSystemSceneNode& node, void* viewMatrixSlot);

}  // namespace glitch::collada::detail
