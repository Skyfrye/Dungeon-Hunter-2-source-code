// ShadowModularSkinnedMeshSceneNode: the shadow-projection copy of a modular skinned mesh. It is
// BaseMeshSceneNode over glitch's CModularSkinnedMeshSceneNode. It keeps six vectors (two of 4-byte values, two
// of CMaterial and two of CMaterialVertexAttributeMap, indexed per shadow entry by regenerateShadowMaterial), and
// two ISceneNode pointers from the ctor. Bounds come from the first node.
// Original 32-bit size 0x1d8 (472), from operator new(472) in class-facts. The virtual base
// IReferenceCounted at +0x1d0 ends the object.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x3619c8 / 0x361ab0, dtors 0x3601fc / 0x3602cc /
// 0x360aa8, methods 0x35dcd0, 0x35dcec, 0x35f348, 0x35f530, 0x3602e8, 0x3604a8, 0x361298).
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

#include "dh2/BaseMeshSceneNode.hpp"

class ShadowModularSkinnedMeshSceneNode : public BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode> {
public:
    ShadowModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> mesh,
                                      const glitch::scene::ISceneNode* node1,
                                      const glitch::scene::ISceneNode* node2);  // 0x3619c8 (complete), 0x361ab0 (VTT form)
    ~ShadowModularSkinnedMeshSceneNode() override;                      // 0x3601fc (base-object dtor), 0x3602cc (deleting), 0x360aa8 (VTT form)

    // Overrides of the base slots, in vtable order. The engine base CModularSkinnedMeshSceneNode (collada_scene_accessors.hpp)
    // declares none of the three ISceneNode slots below, so they are plain virtuals here and carry no override keyword
    // (same as ModularSkinnedMeshSceneNode.hpp). BaseMeshSceneNode declares render, so render keeps override.
    const glitch::core::aabbox3d<float>& getBoundingBox() const override;                  // slot 0x3c (ISceneNode K 0x30): 0x35dcd0, forwards to node1 (+0x1c8)
    const glitch::core::aabbox3d<float>& getTransformedBoundingBox() const override;       // slot 0x40 (ISceneNode K 0x34): 0x35dcec, forwards to node1 (+0x1c8, vptr+0x30)
    int onRegisterSceneNode() override;                                // slot 0x1c (ISceneNode K 0x10): 0x35f530, returns 1
    void render(void* context) override;                                // slot 0x28: 0x3604a8

    // Methods not in the vtable.
    void UpdateShadow();                                                // 0x35f348, reads node2 at +0x1cc, then calls the slot at 0x3c with a second argument
    void renderMesh(void* context);                                     // 0x3602e8
    void regenerateShadowMaterial();                                    // 0x361298, rebuilds the material and vertex-map vectors at +0x180 .. +0x1bc

    // Own part of the object, from +0x180 to +0x1cf. BaseMeshSceneNode occupies +0x00 .. +0x17f (render flag at +0x17c).
    // The six vectors are contiguous: 12 bytes each, begin, end and capacity words.
    std::vector<std::uint32_t> unk_180;                                                   // +0x180 per mesh buffer: the index of its material in unk_198
    std::vector<std::uint32_t> unk_18c;                                                   // +0x18c per module: the index of its first material in unk_198
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>> unk_198;                  // +0x198 the distinct materials of the mesh buffers
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>> unk_1a4; // +0x1a4 the vertex map of each distinct material
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>> unk_1b0;                  // +0x1b0 per distinct material the shadow material ("SH_SHADOW_SKINNED_MODULAR", technique 3)
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>> unk_1bc; // +0x1bc per distinct material the shadow vertex map
    std::uint32_t unk_1c4 = 0;                                                            // +0x1c4 the ctor zeroes it; no reader found
    const glitch::scene::ISceneNode* unk_1c8;                                             // +0x1c8 ctor argument node1, the node whose bounds are forwarded
    const glitch::scene::ISceneNode* unk_1cc;                                             // +0x1cc ctor argument node2, the node UpdateShadow follows
};
