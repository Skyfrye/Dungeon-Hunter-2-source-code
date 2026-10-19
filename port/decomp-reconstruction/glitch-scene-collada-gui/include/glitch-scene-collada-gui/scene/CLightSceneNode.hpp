// glitch::scene::CLightSceneNode: the scene node that carries a dynamic light. Canonical header of the engine unification wave
// (u1-scene). It replaces the CLightSceneNode of scene_nodes.hpp (a class with no base that mapped five members), the recon_31
// stand-in (recon_31::CLightSceneNode over a stand-in ISceneNode) and the partial bodies of recon/slice_05 and recon/slice_32.
//
// Layout (original 32-bit offsets; operator new(0x15c) in clone 0x583f94; constructors 0x584350 (C1) / 0x584544 (C2), 0x5840f0 /
// 0x584238 for the bool form, 0x583e30 / 0x583fbc for the copy form; tools/decomp_vtable.py glitch::scene::CLightSceneNode):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 glitch::video::STransformationSource*: the light's transformation slot (CLight +0x50), written by CLight::allocate and
//          clone; the node points it at its own absolute matrix (+0x24) so the light follows the node
//   +0x134 boost::intrusive_ptr<CLight> light
//   +0x138 the light type seen by the last doLightRecalc (the uint16 at CLight +0x58)
//   +0x13c aabbox3d: the box (min x y z, max x y z); (-1,-1,-1)..(1,1,1) after construction
//   +0x154 glitch::IReferenceCounted virtual base (vptr, then the count at +0x158; the constructor sets it to 1)
// The vtable fills serializeAttributes / deserializeAttributes (K 0x00 / 0x04), the destructors, onRegisterSceneNode (K 0x10),
// render (K 0x1c), getBoundingBox (K 0x30), getType (K 0xbc, 'lght') and clone (K 0xc0).
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/light.hpp"

namespace glitch::scene {

class CLightSceneNode : public ISceneNode {
public:
    // 0x584350 (C1) and 0x584544 (C2): ISceneNode(id, position, identity rotation, unit scale), a new light attached to the node's
    // matrix, the light's radius, its diffuse colour = `color` and its specular colour = color * 0.7 + 0.3 in each channel,
    // then doLightRecalc().
    CLightSceneNode(int id, const core::vector3d<float>& position, const video::SColorf& color, float radius);
    // 0x5840f0 (C1) and 0x584238 (C2): id -1, position 0, a default light; the bool argument is not read.
    explicit CLightSceneNode(bool flag);
    // 0x583e30 (C1) and 0x583fbc (C2): id -1, a clone of the other node's light, its box, then ISceneNode::cloneMembers. Used by
    // clone().
    explicit CLightSceneNode(CLightSceneNode& other);
    // 0x5848a4 (D1), 0x58497c (D2), 0x584960 (D0, skipped): detaches the light from the node's matrix when the light is shared,
    // then drops it.
    ~CLightSceneNode() override;

    // K 0x00 / 0x04, 0x583ddc and 0x583d88: ISceneNode's attributes, then the group "Light" with the light's
    // attributes. Both bodies are complete: glitch::video::CLight::serializeAttributes (0x59ffa8) and
    // deserializeAttributes (0x5a015c) are now reconstructed in glitch-video/src/light.cpp, so the calls are emitted.
    // The only deviation is the null-light guard, which the original does not have.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x10, 0x583d34: registers the node with the scene manager (no material, no user data, pass 1, no position, sort order
    // 0x7FFFFFFF). Returns 1.
    int onRegisterSceneNode() override;
    // K 0x1c, 0x583d18: hands the light to the video driver of the scene manager (IVideoDriver::addDynamicLight).
    void render(void* renderContext) override;
    // K 0x30, 0x583cf0: the box; recomputed first when the light type changed.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0xbc, 0x583bec: 'lght'.
    E_SCENE_NODE_TYPE getType() const override;
    // K 0xc0, 0x583f94: a copy (operator new(0x15c)).
    ISceneNode* clone() override;

    // 0x583c18: sets the box and the culling mode from the light. For light types 0 and 1 with a finite radius the box is
    // +-radius^2 / 2 and frustum culling is on (mode 1); with an infinite radius culling is off (mode 0). Type 2 zeroes the box and
    // turns culling off; larger types change nothing. Stores the light type.
    void doLightRecalc();

    video::STransformationSource* transformationSource = nullptr;  // +0x130
    boost::intrusive_ptr<video::CLight> light;                      // +0x134
    std::uint32_t lastLightType = 0;                                // +0x138
    core::aabbox3d<float> boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};  // +0x13c

private:
    // Points the light's transformation slot at this node's absolute matrix (the constructors' common tail).
    void attachLightToNode();
};

}  // namespace glitch::scene
