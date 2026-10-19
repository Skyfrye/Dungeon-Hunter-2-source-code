// XrayModularSkinnedMeshSceneNode: a modular skinned mesh that draws with an x-ray material set. The ctor
// copies the mesh's materials and vertex attribute maps, builds a parallel set of x-ray materials from the
// gl_xray.bdae effect, and records which mesh buffer and which node uses which material index. render
// draws each part with its x-ray material when the scene manager is in mode 10.
// It derives from BaseMeshSceneNode over CModularSkinnedMeshSceneNode (IDA construction vtable
// _ZTC31XrayModularSkinnedMeshSceneNode0_17BaseMeshSceneNodeI...). The base occupies +0x00 .. +0x17f with
// the render flag at +0x17c. Original 32-bit size 0x1d4 (468), from the operator new site in class-facts.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x364174 / 0x364254, dtors 0x362e1c / 0x363848 /
// 0x36393c, methods 0x362b28, 0x362b44, 0x362bc8, 0x362c38, 0x362f08, 0x363138, 0x363574, 0x363958).
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

class XrayModularSkinnedMeshSceneNode : public BaseMeshSceneNode<glitch::collada::CModularSkinnedMeshSceneNode> {
public:
    // Ctor. Sets the flag at +0x1d0 to 1, builds the base from the mesh, stores the source node, then calls
    // regenerateXrayMaterial. 0x364174 (complete), 0x364254 (base-object form).
    XrayModularSkinnedMeshSceneNode(boost::intrusive_ptr<glitch::collada::IMesh> mesh,
                                    const glitch::scene::ISceneNode* sourceNode);
    // Clears the vectors, frees the two index vectors and runs the CModularSkinnedMeshSceneNode dtor.
    // 0x363848 (complete, slot 0x14), 0x36393c (deleting, slot 0x18), 0x362e1c (base-object form).
    ~XrayModularSkinnedMeshSceneNode() override;

    // Virtual slots of the original, in vtable order. onRegisterSceneNode is not an override here: the stub base
    // declares no such slot (same convention as ModularSkinnedMeshSceneNode.hpp).
    int onRegisterSceneNode() override;                                 // slot 0x1c: 0x363574
    void render(void* renderContext) override;                          // slot 0x28: 0x363138, the x-ray pass
    const glitch::core::aabbox3d<float>& getBoundingBox() const override;        // slot 0x3c: 0x362b28, forwards to m_sourceNode
    const glitch::core::aabbox3d<float>& getTransformedBoundingBox() const override;  // slot 0x40: 0x362b44, forwards to m_sourceNode

    // Non-virtual methods.
    void UpdateXray();                                                  // 0x362bc8: sets the identity matrix on the node (slot 0x48 call)
    void updateXrayMaterial();                                          // 0x362c38: loops the xray materials and sets each texture
    void regenerateXrayMaterial();                                      // 0x363958: rebuilds every per-buffer and per-node list
    void renderMesh(void* renderContext, bool xray);                    // 0x362f08: draws one mesh buffer. The pseudocode's second argument is a 1-based buffer index (0 draws nothing) and the third is never read; see the .cpp

    // BaseMeshSceneNode occupies +0x00 .. +0x17f, with m_renderEnabled at +0x17c.
    std::vector<int> m_bufferMaterialIndex;                             // +0x180 one index per mesh buffer, into m_meshMaterials
    std::vector<int> m_nodeMaterialIndex;                               // +0x18c one index per current module (CModularSkinnedMesh::currentModules at +0x24, 8-byte records), into m_meshMaterials
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>> m_meshMaterials;                        // +0x198 materials read from the mesh by index (IMesh vtable +24)
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>> m_meshVertexAttributeMaps;  // +0x1a4 vertex attribute maps read from the mesh by index (IMesh vtable +28). Raw, not counted: glitch-core-io has no intrusive_ptr release for this type (as in ShadowModularSkinnedMeshSceneNode.hpp)
    std::vector<boost::intrusive_ptr<glitch::video::CMaterial>> m_xrayMaterials;                        // +0x1b0 x-ray materials, one per m_meshMaterials entry, XR_XRAY_SKINNED_MODULAR
    std::vector<boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>> m_xrayVertexAttributeMaps;  // +0x1bc x-ray vertex attribute maps, one per m_meshMaterials entry. Raw, not counted (see m_meshVertexAttributeMaps)
    std::uint32_t unk_1c4 = 0;                                          // +0x1c4 the ctor zeroes it; no reader found
    const glitch::scene::ISceneNode* m_sourceNode;                      // +0x1c8 the ctor's second argument, forwarded by the bounding-box accessors
};
