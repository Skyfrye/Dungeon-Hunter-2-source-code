// glitch::collada::CColladaFactory: the builder that CColladaDatabase calls to turn the entries of a COLLADA file into scene objects
// (meshes, skins, nodes, lights, cameras, materials, particle systems). The base class is concrete: every slot has a default body that
// builds the engine's own object; the game's ColladaFactory overrides the slots that build Dungeon Hunter 2 nodes and forwards the others
// to these. Canonical header of the scene-owner wave. It replaces collada_factory.hpp (the pure-virtual interface) and
// tb_..._CColladaFactory-0.cpp / collada_factory.cpp / recon/slice_17.cpp's factory stand-ins.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::CColladaFactory: 136 bytes, 34 slots, no
// base class and no members: the object is the vptr (4 bytes)). Slot numbers are vptr+K (no virtual base, so K is the listing offset):
//   K 0x00 / 0x04 destructors (0x62fefc / 0x62ff00 empty, D0 0x63074c skipped), 0x08 createAnimator, 0x0c createLight, 0x10
//   getAdditionalEffects, 0x14 getEffectName, 0x18 / 0x1c createMaterialRenderer (4 and 6 arguments), 0x20 createMaterial, 0x24
//   createMaterialVertexAttributeMap, 0x28 / 0x2c getVertexBufferConfig / getIndexBufferConfig, 0x30 isSharingMeshBuffers, 0x34
//   createGeometry, 0x38 createMorph, 0x3c createNode, 0x40 createBillboard, 0x44 createCameraNode, 0x48 createMeshNode, 0x4c
//   createSkinNode, 0x50 createModularSkinNode, 0x54 createScene, 0x58 createSkin, 0x5c createModularSkin, 0x60 createCoronas, 0x64
//   createGlitchNewParticleSystem, 0x68 createParticleSystem, 0x6c / 0x70 / 0x74 createParticleSystem{Gravity,Wind,Deflector}Force, 0x78 /
//   0x7c getExternalLightSceneNode (material and renderer forms).
// The builders that return an object give the caller one reference (count 1) which the database adopts. The original returns the three
// reference-counted results (skin, morph, modular skin, geometry, material) through a hidden intrusive_ptr slot with the count already
// at 1; here the result is the raw pointer carrying that one reference.
//
// Port notes: the six node slots the game overrides (createAnimator, createBillboard, createMeshNode, createSkinNode,
// createModularSkinNode, createScene) return `void*` as the game's overrides do (the object is the ISceneNode / animator pointer); the
// others are typed.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"

namespace glitch::collada {

class CRootSceneNode;
class CSkinnedMesh;
class CMorphingMesh;
class CModularSkinnedMesh;
class CSceneNode;
class CLightSceneNode;
class CCameraSceneNode;
class CCoronasSceneNode;
class CParticleSystemSceneNode;
class CGlitchNewParticleSystemSceneNode;
struct SEffectList;
struct SInstanceMaterial;

// Port addition (remaster, not in the binary): called with every material CColladaFactory::createMaterial builds, after
// it is built. The game layer installs it (game-app remaster_normal_maps.cpp) to attach normal maps; null = nothing.
extern void (*g_dh2MaterialCreatedHook)(video::IVideoDriver* driver, video::CMaterial* material);

class CColladaFactory {
public:
    CColladaFactory() = default;
    // K 0x00 / 0x04: 0x62fefc (D1), 0x62ff00 (D2), both empty; D0 0x63074c (calls D1, then frees) skipped.
    virtual ~CColladaFactory() = default;

    // K 0x08, 0x631b28: operator new(0x60), CSceneNodeAnimator(db, *clips).
    virtual void* createAnimator(const CColladaDatabase& db, SLibraryAnimationClips* clips);
    // K 0x0c, 0x631af8: operator new(0x16c), CLightSceneNode(db, *light).
    virtual CLightSceneNode* createLight(const CColladaDatabase& db, SLight* light);
    // K 0x10, 0x62ff04: empty.
    virtual void getAdditionalEffects(const CColladaDatabase& db, SEffect* effect, SEffectList& list);
    // K 0x14, 0x631ac4: the file name as a std::string (the name and the effect are ignored).
    virtual std::string getEffectName(const CColladaDatabase& db, const char* name, const char* fileName);
    // K 0x18, 0x3506a4: returns null (the body lives in the game's ColladaFactory object file; the engine base is the same constant).
    virtual video::CMaterialRenderer* createMaterialRenderer(const CColladaDatabase& db, video::IVideoDriver* driver, SEffect* effect,
                                                             CRootSceneNode* root);
    // K 0x1c, 0x636c8c. PARTIAL: see the source (the effect-list path needs the free createMaterialRenderer).
    virtual video::CMaterialRenderer* createMaterialRenderer(const CColladaDatabase& db, video::IVideoDriver* driver, SEffect* effect,
                                                             const char* name, const char* fileName, CRootSceneNode* root);
    // K 0x20, 0x6323d0. PARTIAL: see the source (the free createMaterial is not reconstructed).
    virtual video::CMaterial* createMaterial(const CColladaDatabase& db, video::IVideoDriver* driver, SMaterial* material,
                                             CRootSceneNode* root);
    // K 0x24, 0x634520. PARTIAL: see the source.
    virtual boost::intrusive_ptr<video::CMaterialVertexAttributeMap> createMaterialVertexAttributeMap(
        const CColladaDatabase& db, SInstanceMaterial* instance, const boost::intrusive_ptr<IMesh>& mesh,
        const boost::intrusive_ptr<video::CMaterial>& material, unsigned int index, bool flag);
    // K 0x28 / 0x2c, 0x62ff08 and 0x62ff20: both return {4, 0, 0}.
    virtual SBufferConfig getVertexBufferConfig(const CColladaDatabase& db, SGeometry* geometry);
    virtual SBufferConfig getIndexBufferConfig(const CColladaDatabase& db, SGeometry* geometry);
    // K 0x30, 0x62ff38: true.
    virtual bool isSharingMeshBuffers(const CColladaDatabase& db, SGeometry* geometry);
    // K 0x34, 0x631924: the vertex and index configurations and the sharing flag come from slots 0x28, 0x2c, 0x30; operator new(0x3c),
    // CMesh(db, driver, *geometry, vertexConfig, indexConfig, sharing). PARTIAL through the CMesh constructor.
    virtual IMesh* createGeometry(const CColladaDatabase& db, video::IVideoDriver* driver, SGeometry* geometry);
    // K 0x38, 0x6318c8: operator new(0x40), CMorphingMesh(db, driver, *controller, root).
    virtual CMorphingMesh* createMorph(const CColladaDatabase& db, video::IVideoDriver* driver, SController* controller,
                                       CRootSceneNode* root);
    // K 0x3c, 0x631800: operator new(0x160), CSceneNode(db, node).
    virtual CSceneNode* createNode(const CColladaDatabase& db, SNode* node);
    // K 0x40, 0x631830: operator new(0x160), CBillboardSceneNode(db, node).
    virtual void* createBillboard(const CColladaDatabase& db, SNode* node);
    // K 0x44, 0x6317d0: operator new(0x3a0), CCameraSceneNode(db, *camera).
    virtual CCameraSceneNode* createCameraNode(const CColladaDatabase& db, SCamera* camera);
    // K 0x48 / 0x4c / 0x50, 0x631750 / 0x6316d0 / 0x631650: the mesh node of the kind, over the mesh, no node record (null), id -1,
    // position (0,0,0), rotation (0,0,0,1), scale (1,1,1). The instance argument is not read.
    virtual void* createMeshNode(const CColladaDatabase& db, const boost::intrusive_ptr<IMesh>& mesh, void* instance);
    virtual void* createSkinNode(const CColladaDatabase& db, const boost::intrusive_ptr<IMesh>& mesh, void* instance);
    virtual void* createModularSkinNode(const CColladaDatabase& db, const boost::intrusive_ptr<IMesh>& mesh, void* instance);
    // K 0x54, 0x631628: operator new(0x1c4), CRootSceneNode(db).
    virtual void* createScene(const CColladaDatabase& db);
    // K 0x58, 0x6315cc: operator new(0x9c), CSkinnedMesh(db, driver, *controller, root); the result carries one reference.
    virtual CSkinnedMesh* createSkin(const CColladaDatabase& db, video::IVideoDriver* driver, SController* controller,
                                     CRootSceneNode* root);
    // K 0x5c, 0x631560: operator new(0x5c), CModularSkinnedMesh(db, instance, root, -1, true); one reference.
    virtual CModularSkinnedMesh* createModularSkin(const CColladaDatabase& db, SInstanceModularSkin* instance, CRootSceneNode* root);
    // K 0x60, 0x631518: operator new(0x20c), CCoronasSceneNode(db, driver, *coronas, root). PARTIAL: CCoronasSceneNode is not canonical.
    virtual CCoronasSceneNode* createCoronas(const CColladaDatabase& db, video::IVideoDriver* driver, SCoronas* coronas,
                                             CRootSceneNode* root);
    // K 0x64, 0x63133c. PARTIAL: CGlitchNewParticleSystemSceneNode is not canonical.
    virtual CGlitchNewParticleSystemSceneNode* createGlitchNewParticleSystem(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                                             SGNPSEmitter* emitter,
                                                                             res::vector<res::String>* materials, CRootSceneNode* root);
    // K 0x68, 0x634c64. PARTIAL: CParticleSystemSceneNode is not canonical.
    virtual CParticleSystemSceneNode* createParticleSystem(const CColladaDatabase& db, video::IVideoDriver* driver, SEmitter* emitter,
                                                           res::vector<res::String>* materials, CRootSceneNode* root);
    // K 0x6c / 0x70 / 0x74, 0x631274 / 0x631244 / 0x631138. PARTIAL: the force nodes are not canonical.
    virtual void* createParticleSystemGravityForce(const CColladaDatabase& db, SForce* force);
    virtual void* createParticleSystemWindForce(const CColladaDatabase& db, SForce* force);
    virtual void* createParticleSystemDeflectorForce(const CColladaDatabase& db, SForce* force);
    // K 0x78 / 0x7c, 0x630010 and 0x630008: both are 8-byte tail calls to the file-local
    // getExternalLightSceneNodeDefault (0x62ff80): strchr(url, '#') and the part after it as the name (else the whole
    // url), the light node of that name in the device's scene manager (CResFileManager::Inst->device +0x20, scene
    // manager +0x1c, slot +0x14 getSceneNodeFromName), accepted when its type is 'lght'. Both are reconstructed;
    // see src/collada/CColladaFactory.cpp for the one reinterpret_cast the category's forward-declared
    // scene::ISceneManager forces.
    virtual scene::CLightSceneNode* getExternalLightSceneNode(const CColladaDatabase& db,
                                                              const boost::intrusive_ptr<video::CMaterial const>& material,
                                                              std::uint16_t parameterId, std::uint32_t arrayIndex, const char* url);
    virtual scene::CLightSceneNode* getExternalLightSceneNode(const CColladaDatabase& db,
                                                              const boost::intrusive_ptr<video::CMaterialRenderer const>& renderer,
                                                              std::uint16_t parameterId, std::uint32_t arrayIndex, const char* url);
};

}  // namespace glitch::collada
