// glitch::collada::CMeshSceneNode, CSkinnedMeshSceneNode and CModularSkinnedMeshSceneNode: the COLLADA mesh nodes. Canonical header
// of the scene-owner wave. It replaces the CMeshSceneNode and CModularSkinnedMeshSceneNode accessor classes of
// collada_scene_accessors.hpp (no base class, one or two members), the recon_22::CSkinnedMeshSceneNode stand-in
// (recon/slice_22.hpp), recon_31::CSkinnedMeshSceneNode (recon/slice_31.hpp), layouts/scene_evidence.hpp and the address-named stubs
// of generated_stubs.hpp (getType 0x646160).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::CMeshSceneNode,
// CSkinnedMeshSceneNode and CModularSkinnedMeshSceneNode):
//   CMeshSceneNode derives from scene::IMeshSceneNode directly (not from collada::CSceneNode). Constructors 0x646588 (C1) / 0x646678
//   (C2): IMeshSceneNode(id, position, rotation, scale), then
//     +0x130 SNode* node (the constructor's second argument; null for a node built without a record)
//     +0x134 boost::intrusive_ptr<collada::IMesh> mesh (the count is at mesh +0x04)
//   and ISceneNode::setAutomaticCulling(2). The virtual base IReferenceCounted is at +0x138 (vbase offset 0x138).
//   Slots overridden: serializeAttributes / deserializeAttributes are ISceneNode's, the destructors (0x646240 D1, 0x6462e0 D2; D0 0x6462c4
//   skipped) drop the mesh, onRegisterSceneNode (K 0x10, 0x6463c8), onAnimate (K 0x14, 0x646208), render (K 0x1c, 0x646730),
//   getRenderVertexCount (K 0x20, 0x64635c), getBoundingBox (K 0x30, 0x64618c), getUID (K 0x54, 0x646148), getMaterial (K 0x84, 0x6461a8),
//   getMaterialCount (K 0x88, 0x6461cc), getType (K 0xbc, 'daem', 0x646160), setMesh (K 0xf4, 0x646188: empty) and getMesh (K 0xf8,
//   0x64616c).
//   The render pass argument of render and getRenderVertexCount is the 1-based mesh buffer index that onRegisterSceneNode passed to
//   CSceneManager::registerNodeForRendering as its user data (the bodies subtract one).
//   CSkinnedMeshSceneNode (constructors 0x666a54 / 0x666b3c) derives from CMeshSceneNode and adds
//     +0x138 CMatrix4<float> the skinned absolute transformation (identity after construction; the flag byte is at +0x178)
//     +0x17c virtual base (vbase offset 0x17c)
//   It overrides serializeAttributes / deserializeAttributes (thunks to ISceneNode's), the destructors (0x35aa6c, 0x35b514), getType (K 0xbc,
//   'daes', 0x6669f8), getTransformedBoundingBox (K 0x34, 0x666a04: getBoundingBox()) and getAbsoluteTransformation (K 0x38, 0x35ac30), and
//   adds setIsSkinningEnabled (0x666a18).
//   CModularSkinnedMeshSceneNode (constructors 0x6494e8 / 0x649594) derives from CSkinnedMeshSceneNode without adding members; it overrides
//   the attribute slots (0x649474, 0x6496ac), the destructors (0x35b5b0, 0x35b7d8, 0x362b60) and getType (K 0xbc, 'daeM', 0x6493f8), and forwards
//   the category and module queries to its mesh.
#pragma once

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"

namespace glitch::collada {

class CModularSkinnedMesh;
class ISkinnedMesh;

class CMeshSceneNode : public scene::IMeshSceneNode {
public:
    // 0x646588 (C1) and 0x646678 (C2): IMeshSceneNode(id, position, rotation, scale), the record and the mesh stored (a use on the mesh),
    // automatic culling 2.
    CMeshSceneNode(const boost::intrusive_ptr<IMesh>& mesh, SNode* node, int id, const core::vector3d<float>& position,
                   const core::quaternion& rotation, const core::vector3d<float>& scale);
    // 0x646240 (D1), 0x6462e0 (D2); D0 0x6462c4 is skipped. Drops the mesh.
    ~CMeshSceneNode() override;

    // K 0x10, 0x6463c8: for every mesh buffer, asks the mesh how it renders (onPrepareBufferForRendering step 0): results 4 and 16 register the
    // node with the scene manager (pass 8 when the material's technique is transparent, 4 otherwise, and pass 7 as well when the shadow-caster
    // bit is set), 5 makes the mesh refresh its box. Always returns 1.
    int onRegisterSceneNode() override;
    // K 0x14, 0x646208: when the node is visible, ISceneNode::onAnimate, then the mesh's onAnimate.
    void onAnimate(std::uint32_t timeMs) override;
    // K 0x1c, 0x646730: draws the mesh buffer named by `renderContext` (1-based) through the scene manager's driver.
    void render(void* renderContext) override;
    // K 0x20, 0x64635c: the vertex count of the mesh buffer named by `renderContext` (1-based).
    std::uint32_t getRenderVertexCount(void* renderContext) const override;
    // K 0x30, 0x64618c: the mesh's box.
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0x54, 0x646148: the record's uid, or the mesh's uid when the node has no record.
    const char* getUID() const override;
    // K 0x84 / 0x88, 0x6461a8 and 0x6461cc.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    std::uint32_t getMaterialCount() const override;
    // K 0xbc, 0x646160: 'daem'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // K 0xf4 / 0xf8, 0x646188 (empty) and 0x64616c.
    void setMesh(const boost::intrusive_ptr<scene::IMesh>& mesh) override;
    boost::intrusive_ptr<scene::IMesh> getMesh() const override;

    SNode* node = nullptr;                    // +0x130
    boost::intrusive_ptr<IMesh> mesh;         // +0x134
};

class CSkinnedMeshSceneNode : public CMeshSceneNode {
public:
    // 0x666a54 (C1) and 0x666b3c (C2): CMeshSceneNode(...), the skinned transformation set to the identity, automatic culling 2.
    CSkinnedMeshSceneNode(const boost::intrusive_ptr<IMesh>& mesh, SNode* node, int id, const core::vector3d<float>& position,
                          const core::quaternion& rotation, const core::vector3d<float>& scale);
    // 0x35aa6c (D1), 0x35b514 (D0, skipped).
    ~CSkinnedMeshSceneNode() override;

    // K 0x00 / 0x04, 0x35a9d8 and 0x35a9ec: thunks to ISceneNode's.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x34, 0x666a04: getBoundingBox().
    const core::aabbox3d<float>& getTransformedBoundingBox() const override;
    // K 0x38, 0x35ac30: the identity matrix while skinning is off or the mesh's skinned flag is set; otherwise the mesh's getTransform of
    // the node's absolute matrix, stored in the member at +0x138.
    const core::CMatrix4<float>& getAbsoluteTransformation() const override;
    // K 0xbc, 0x6669f8: 'daes'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // 0x666a18: forwards to the mesh (ISkinnedMesh slot +0x54).
    virtual void setIsSkinningEnabled(bool enabled);

    mutable core::CMatrix4<float> skinnedTransformation{core::CMatrix4<float>::EM4CONST_IDENTITY};  // +0x138 .. +0x178
};

class CModularSkinnedMeshSceneNode : public CSkinnedMeshSceneNode {
public:
    // 0x6494e8 (C1) and 0x649594 (C2).
    CModularSkinnedMeshSceneNode(const boost::intrusive_ptr<IMesh>& mesh, SNode* node, int id, const core::vector3d<float>& position,
                                 const core::quaternion& rotation, const core::vector3d<float>& scale);
    // 0x35b5b0 (D1), 0x35b7d8 (D0 of the complete object), 0x362b60 (D2).
    ~CModularSkinnedMeshSceneNode() override;

    // K 0x00 / 0x04, 0x6496ac and 0x649474: the ISceneNode attributes, then one enum attribute per category (the category's name, the current
    // module id, the names of its modules and the entry "not used (-1)").
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0xbc, 0x6493f8: 'daeM'.
    scene::E_SCENE_NODE_TYPE getType() const override;

    // The category and module queries forward to the mesh (it is a CModularSkinnedMesh).
    void setCategoryModule(const char* category, const char* module);   // 0x649424 (setCategoryModule(mesh, a, b, true))
    void setCategoryModule(int category, int module);                   // 0x649430
    std::int32_t getCategoryModuleCount(int category) const;            // 0x64943c
    std::int32_t getCategoryCount() const;                              // 0x649444
    const char* getModuleName(int category, int module) const;          // 0x64944c
    const char* getCurrentModuleName(int category) const;               // 0x649454
    std::int32_t getCurrentModuleId(int category) const;                // 0x64945c
    std::int32_t getModuleId(const char* name) const;                   // 0x649464
    const char* getCategoryName(int category) const;                    // 0x64946c
    std::int32_t getCategoryId(const char* name) const;                 // 0x6494e0

    // The mesh as a CModularSkinnedMesh (the member at +0x134 holds it as a collada::IMesh).
    CModularSkinnedMesh* modularMesh() const;
};

}  // namespace glitch::collada
