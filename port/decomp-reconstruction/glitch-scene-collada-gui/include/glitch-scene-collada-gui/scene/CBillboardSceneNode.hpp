// glitch::scene::IBillboard, IBillboardSceneNode and CBillboardSceneNode: the camera-facing quad node (particle-like sprites, glows,
// damage numbers). Canonical header of the engine unification wave (u1-scene). It replaces the CBillboardSceneNode of scene_nodes.hpp
// (a class with no base that mapped four members), layouts/scene_evidence.hpp (evidence::CBillboardSceneNode), the recon_31
// stand-in and the partial bodies of recon/slice_05, and the IBillboard of scene_simple_accessors.hpp.
//
// Hierarchy and layout (original 32-bit offsets; operator new(0x1f4) in clone 0x581bc4; constructors 0x5818fc (C1) / 0x581c80 (C2);
// tools/decomp_vtable.py glitch::scene::CBillboardSceneNode, IBillboardSceneNode, IBillboard):
//   IBillboardSceneNode derives from IBillboard (a vptr at +0x00 with the five interface slots) and from ISceneNode, whose
//   subobject therefore starts at +0x04: every ISceneNode member below is at the ISceneNode offset + 4, and the ISceneNode*
//   of a CBillboardSceneNode* is the pointer plus 4.
//   +0x000 IBillboard vptr           D1 0x580a20, D0 0x580dd4; slots +0x08 setSize, +0x0c getSize, +0x10 setColor(color),
//                                    +0x14 setColor(top, bottom), +0x18 getColor(top&, bottom&)
//   +0x004 ISceneNode (0x130 bytes, to +0x134)
//   +0x134 size (width, height)      +0x13c box: min x y z, max x y z (written by setSize)
//   +0x154 boost::intrusive_ptr<CMaterial> material
//   +0x158 four vertices of 36 bytes: position +0x00, texture coordinates +0x0c, normal +0x14, colour +0x20; they end at +0x1e8
//   +0x1e8 boost::intrusive_ptr<CVertexStreams> over the vertices (one stream, attribute mask 0x60000, three attributes' worth
//          of data in a driver buffer of 144 bytes that wraps the vertex array)
//   +0x1ec glitch::IReferenceCounted virtual base (vptr, then the count at +0x1f0; the constructor sets it to 1)
// ISceneNode's slots are overridden for serializeAttributes / deserializeAttributes, the destructors, onRegisterSceneNode, render,
// getBoundingBox, getMaterialCount, getType ('bill') and clone. getMaterial(uint) is a new, non-const member that returns the handle.
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/vertex_streams.hpp"

namespace glitch::scene {

// 0x580a20 (D1, empty), 0x580dd4 (D0, skipped).
class IBillboard {
public:
    virtual ~IBillboard() = default;
    virtual void setSize(const core::dimension2d<float>& size) = 0;                              // +0x08
    virtual const core::dimension2d<float>& getSize() const = 0;                                 // +0x0c
    virtual void setColor(const video::SColor& color) = 0;                                       // +0x10
    virtual void setColor(const video::SColor& top, const video::SColor& bottom) = 0;            // +0x14
    virtual void getColor(video::SColor& top, video::SColor& bottom) const = 0;                  // +0x18
};

class IBillboardSceneNode : public IBillboard, public ISceneNode {
public:
    // 0x580eac: ISceneNode(id, position, identity rotation, unit scale).
    IBillboardSceneNode(int id, const core::vector3d<float>& position);
    // 0x580df0 (D1), 0x581754 (D0, skipped).
    ~IBillboardSceneNode() override;
};

class CBillboardSceneNode : public IBillboardSceneNode {
public:
    // One corner of the quad (36 bytes in the original).
    struct SVertex {
        core::vector3d<float> position;          // +0x00 written by render
        core::dimension2d<float> texCoords;      // +0x0c (u, v)
        core::vector3d<float> normal;            // +0x14
        video::SColor color;                     // +0x20
    };

    // 0x5818fc (C1) and 0x581c80 (C2): IBillboardSceneNode(id, position), the size, a vertex stream table over a driver buffer that
    // wraps the four vertices (createBuffer, vtable +0x78: type 0, usage 4, 144 bytes, not owning the array; then
    // CVertexStreams::setupStreams(buffer, -1)), the texture coordinates (1,1) (1,0) (0,1) (0,0) and the colours bottom, top,
    // bottom, top (corner 0..3). Verified against the listing; CVertexStreams::setupStreams (0x5a15c0) is reconstructed now.
    CBillboardSceneNode(video::IVideoDriver* driver, int id, const core::vector3d<float>& position,
                        const core::dimension2d<float>& size, video::SColor top, video::SColor bottom);
    // 0x5817dc (D1), 0x5818c0 (D0, skipped): releases the stream table and the material.
    ~CBillboardSceneNode() override;

    // IBillboard's slots.
    void setSize(const core::dimension2d<float>& size) override;                       // 0x580aa0
    const core::dimension2d<float>& getSize() const override;                          // 0x580b3c
    void setColor(const video::SColor& color) override;                                // 0x580b44
    void setColor(const video::SColor& top, const video::SColor& bottom) override;     // 0x580b94
    void getColor(video::SColor& top, video::SColor& bottom) const override;           // 0x580bec

    // ISceneNode's slots.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;  // 0x580c48
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;      // 0x580cf8
    int onRegisterSceneNode() override;                                                // 0x580a40
    void render(void* renderContext) override;                                         // 0x580f58
    const core::aabbox3d<float>& getBoundingBox() const override;                      // 0x580a98
    std::uint32_t getMaterialCount() const override;                                   // 0x580b34
    E_SCENE_NODE_TYPE getType() const override;                                        // 0x580a2c
    ISceneNode* clone() override;                                                      // 0x581bc4

    // 0x580b24: the material handle itself (the original returns the address of the member). Hides ISceneNode::getMaterial.
    boost::intrusive_ptr<video::CMaterial>& getMaterial(std::uint32_t index);
    // 0x580e68.
    void setMaterial(const boost::intrusive_ptr<video::CMaterial>& material);

    core::dimension2d<float> size;                                                      // +0x134
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};     // +0x13c
    boost::intrusive_ptr<video::CMaterial> material;                                    // +0x154
    SVertex vertices[4];                                                                // +0x158
    boost::intrusive_ptr<video::CVertexStreams> vertexStreams;                          // +0x1e8
};

}  // namespace glitch::scene
