// glitch::scene::CAnimatedMeshSceneNode: a node that plays a frame range of an animated mesh and draws the mesh of the current frame.
// Canonical header of the scene residue pass 2; it replaces the stand-in class of scene_simple_accessors.hpp, the AnimatedMeshStandIn of
// recon/slice_33.hpp and the slice 29 declarations.
//
// Layout (original 32-bit offsets; operator new(0x17c) in clone; constructors 0x6f6b7c C1 / 0x6f6ca0 C2; destructors 0x6f6618 / 0x6f66f8):
//   +0x000 IAnimatedMeshSceneNode (ISceneNode, 0x130 bytes)
//   +0x130 (304) the animated mesh (a use is held)
//   +0x134 (308) time of the first frame (the timer value at construction / the last setCurrentFrame)
//   +0x138 (312) start frame, +0x13c (316) end frame
//   +0x140 (320) frames per millisecond (0.001 at construction; setAnimationSpeed stores fps * 0.001)
//   +0x144 (324) current frame (buildFrameNr's result)
//   +0x148 (328) a word (0 at construction)
//   +0x14c (332) transition speed (non-zero while a transition runs), +0x150 (336) transition blend
//   +0x154 (340) loop mode (1 at construction)
//   +0x158 (344) the animation-end callback (a use is held)
//   +0x15c (348) the number of times render ran since the last onRegisterSceneNode
//   +0x160 (352) the shadow volume node (a use is held; it is also a child)
//   +0x164 (356) vector<CMatrix4> (joint matrices; begin, end, capacity)
//   +0x170 (368) render-from-identity byte
//   +0x174 (372) glitch::IReferenceCounted virtual base (vptr), +0x178 (376) its count; 0x17c bytes in all.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/CShadowVolumeSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/IAnimatedMeshSceneNode.hpp"

namespace glitch::scene {

class CShadowVolumeSceneNode;

class CAnimatedMeshSceneNode : public IAnimatedMeshSceneNode {
public:
    // 0x6f6b7c (C1) / 0x6f6ca0 (C2): the base node, the frame speed 0.001, looping, the clock at the current timer value, then setMesh.
    CAnimatedMeshSceneNode(const boost::intrusive_ptr<IAnimatedMesh>& mesh, int id, const core::vector3d<float>& position,
                           const core::quaternion& rotation, const core::vector3d<float>& scale);
    // 0x6f6618 (D1), 0x6f66f8 (D2), D0 0x6f66dc: drops the shadow, the callback, the joint matrices and the mesh.
    ~CAnimatedMeshSceneNode() override;

    // vptr+0xbc, 0x6f5fc4: 'amsh'.
    E_SCENE_NODE_TYPE getType() const override;
    // 0x6f630c: the mesh's box.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // 0x6f6328: the mesh's material, or null for an index past the count.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    // 0x6f6384: the mesh's buffer count (0 without a mesh).
    std::uint32_t getMaterialCount() const override;
    // 0x6f6564: removing the shadow node drops it; everything else goes to ISceneNode.
    bool removeChild(ISceneNode* child) override;
    // 0x6f6540: the current frame from the clock, then ISceneNode::onAnimate.
    void onAnimate(std::uint32_t timeMs) override;
    // 0x6f6958: registers for the solid (4) and transparent (8) passes by the pass state of each material, and for the shadow pass (7)
    // when the node casts shadows.
    int onRegisterSceneNode() override;
    // 0x6f7330: draws the mesh of the current frame, the buffers whose pass state matches the current render pass.
    void render(void* renderContext) override;
    // 0x6f6478: Mesh (the file name the mesh cache has), Looping and FramesPerSecond.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // 0x6f6d98: reads them back and loads another mesh when the name changed.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // 0x6f71cc: a node with the same transform, mesh, animation state, callback and shadow references.
    ISceneNode* clone() override;

    void setCurrentFrame(float frame) override;                                             // 0x6f6af8
    bool setFrameLoop(std::int32_t begin, std::int32_t end) override;                       // 0x6f61e0
    void setAnimationSpeed(float framesPerSecond) override;                                 // 0x6f62ec
    IShadowVolumeSceneNode* addShadowVolumeSceneNode(const boost::intrusive_ptr<const IMesh>& mesh, std::int32_t id, bool zfailMethod,
                                                     float infinity) override;              // 0x6f6818
    float getFrameNr() const override;                                                      // 0x6f5fd0
    std::int32_t getStartFrame() const override;                                            // 0x6f61d0
    std::int32_t getEndFrame() const override;                                              // 0x6f61d8
    void setLoopMode(bool playAnimationLooped) override;                                    // 0x6f63b0
    void setAnimationEndCallback(IAnimationEndCallBack* callback) override;                 // 0x6f63b8
    void setMesh(const boost::intrusive_ptr<IAnimatedMesh>& mesh) override;                 // 0x6f63ec
    boost::intrusive_ptr<IAnimatedMesh> getMesh() const override;                           // 0x6f5fa8
    void setRenderFromIdentity(bool value) override;                                        // 0x6f6450

    // 0x6f5fd8: the frame for a clock value: the transition blend is advanced; a looping animation wraps, a one-shot stops at the end
    // frame (calling the end callback) in either direction.
    float buildFrameNr(std::uint32_t timeMs);

    boost::intrusive_ptr<IAnimatedMesh> mesh;                  // +0x130
    std::uint32_t beginFrameTime = 0;                          // +0x134
    std::int32_t startFrame = 0;                               // +0x138
    std::int32_t endFrame = 0;                                 // +0x13c
    float framesPerSecond = 0.001f;                                // +0x140
    float currentFrame = 0.0f;                                 // +0x144
    std::uint32_t unk_148 = 0;                                 // +0x148
    float transiting = 0.0f;                                   // +0x14c
    float transitingBlend = 0.0f;                              // +0x150
    bool loopMode = true;                                      // +0x154
    boost::intrusive_ptr<IAnimationEndCallBack> loopCallBack;  // +0x158
    std::uint32_t renderCount = 0;                             // +0x15c
    boost::intrusive_ptr<CShadowVolumeSceneNode> shadow;       // +0x160
    std::vector<core::CMatrix4<float>> jointMatrices;          // +0x164
    bool renderFromIdentity = false;                           // +0x170
};

}  // namespace glitch::scene
