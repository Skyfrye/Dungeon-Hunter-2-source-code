// glitch::scene::CSkyBoxSceneNode: the six-sided sky cube. Canonical header of the scene owner pass (R3b). It replaces the stand-in in
// scene_simple_accessors.hpp (a box and three accessors with no base).
//
// Layout (original 32-bit offsets; operator new(0x174) in the factory and in clone 0x6cff30; constructors 0x6cebc8 C2 / 0x6cf564 C1):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 aabbox3d box: all six words zero after the constructor (it first writes -1 / 1 and then clears them)
//   +0x148 boost::intrusive_ptr<CVertexStreams> over the 24 vertices (stride 20: u, v, then x, y, z)
//   +0x14c six boost::intrusive_ptr<CMaterial>, one per face in the order front, left, back, right, top, bottom
//   +0x164 boost::intrusive_ptr<CMaterialVertexAttributeMap> for the materials' renderer
//   +0x168 uint16 the renderer's texture parameter id (CMaterialRenderer::getParameterID(2, 0))
//   +0x16c glitch::IReferenceCounted virtual base (vptr, then the count at +0x170)
// The constructor takes the textures in Irrlicht's order (top, bottom, left, right, front, back). The vtable adds one new slot, K 0xf4,
// clone(parent, sceneManager); ISceneNode's own clone() stays at K 0xc0.
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::video {
class IVideoDriver;
class ITexture;
}  // namespace glitch::video

namespace glitch::scene {

class CSkyBoxSceneNode : public ISceneNode {
public:
    // 0x6cf564 (C2, base object) and 0x6cebc8 (C1). Builds the six materials of the sky renderer (material type 11) with the textures
    // clamped and stored in the renderer's texture parameter, and (for a parameter id other than 0xffff) the colour parameter set to
    // white; the vertex stream table with one stream buffer of 24 vertices; and the attribute map. PARTIAL for the parameter writes,
    // see scene/material_access.hpp.
    CSkyBoxSceneNode(video::IVideoDriver* driver, const boost::intrusive_ptr<video::ITexture>& top,
                     const boost::intrusive_ptr<video::ITexture>& bottom, const boost::intrusive_ptr<video::ITexture>& left,
                     const boost::intrusive_ptr<video::ITexture>& right, const boost::intrusive_ptr<video::ITexture>& front,
                     const boost::intrusive_ptr<video::ITexture>& back, int id);
    // 0x6cea98 (D1) and 0x6ceb8c (D0, skipped): the members release themselves.
    ~CSkyBoxSceneNode() override;

    // vptr+0x10, 0x6ce418: files the node for pass 2 without a material; answers 1.
    int onRegisterSceneNode() override;
    // vptr+0x1c, 0x6ce53c: with a perspective camera the six faces are drawn around the camera (the world transform is the node's
    // with the camera position as translation); with an orthographic one the face the camera looks at is drawn over the whole target.
    void render(void* renderContext) override;
    // vptr+0x30, 0x6ce3c8.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // vptr+0x84, 0x6ce3d0: the material of the face.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    // vptr+0x88, 0x6ce3f0: 6.
    std::uint32_t getMaterialCount() const override;
    // vptr+0xbc, 0x6ce3bc: 'sky_'.
    E_SCENE_NODE_TYPE getType() const override;
    // K 0xf4, 0x6cff30: a new sky box on the manager (this node's when null) with the base members and the six materials copied.
    // The parent argument is not used.
    virtual ISceneNode* clone(ISceneNode* newParent, CSceneManager* newManager);
    using ISceneNode::clone;

    core::aabbox3d<float> boundingBox;                                       // +0x130
    boost::intrusive_ptr<video::CVertexStreams> vertexStreams;              // +0x148
    boost::intrusive_ptr<video::CMaterial> materials[6];                    // +0x14c
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> attributeMap;  // +0x164
    std::uint16_t textureParameterId = 0xFFFF;                               // +0x168
};

}  // namespace glitch::scene
