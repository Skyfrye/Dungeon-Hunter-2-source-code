// Slice 32: see include/glitch-scene-collada-gui/recon/slice_32.hpp for the scope and the
// stand-ins. Rows that are not rebuilt yet return a neutral value and are ledgered partial.

#include "glitch-scene-collada-gui/recon/slice_32.hpp"

namespace glitch::collada::recon_32 {

// ---- glitch::scene::CLightSceneNode -------------------------------------------------

// 0x583ddc _ZNK6glitch5scene15CLightSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Partial: the base ISceneNode serializer, the IAttributes writer slots and CLight::serializeAttributes are not mapped.
int CLightSceneNode_serializeAttributes(const scene::CLightSceneNode&, io::IAttributes*,
                                        io::SAttributeReadWriteOptions*) {
    return 0;
}

// 0x584350 _ZN6glitch5scene15CLightSceneNodeC1EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
// Partial: the ISceneNode base constructor, CLight::allocate and the Matrix4 pool are not mapped.
void CLightSceneNode_ctor_C1(scene::CLightSceneNode&, int, const core::vector3d<float>&, const video::SColorf&,
                             float) {}

// 0x584544 _ZN6glitch5scene15CLightSceneNodeC2EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
// Partial: same stand-ins as C1 (the C2 variant uses the base-subobject path).
void CLightSceneNode_ctor_C2(scene::CLightSceneNode&, int, const core::vector3d<float>&, const video::SColorf&,
                             float) {}

// ---- glitch::collada::CCoronasSceneNode --------------------------------------------

// 0x60f8b8 _ZN6glitch7collada17CCoronasSceneNode11setMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
// Partial: the root-node material lookup (CRootSceneNode::getMaterial on the root at +0x200) and the intrusive reference handling of the material slot at +0x168 are not rebuilt.
void CCoronasSceneNode_setMaterial(CCoronasSceneNode&, SMaterial&, video::IVideoDriver*) {}

// ---- glitch::collada::CColladaDatabase constructors ---------------------------------

// 0x60e75c _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_8SCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// Unattached: the factory's createCoronas slot is mapped in collada_factory.hpp, but the member declaration is missing from collada_database.hpp.
CCoronasSceneNode* CColladaDatabase_constructCoronas(const CColladaDatabase& self, CColladaFactory* factory,
                                                     SCoronas* coronas, video::IVideoDriver* driver,
                                                     CRootSceneNode* root) {
    if (coronas == nullptr) {
        return nullptr;
    }
    return factory->createCoronas(self, driver, coronas, root);
}

// 0x60e79c _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_8SEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
// Unattached: the factory's createParticleSystem slot is mapped; the member declaration is missing from collada_database.hpp.
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase& self, CColladaFactory* factory,
                                                            SEmitter* emitter, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials,
                                                            CRootSceneNode* root) {
    if (emitter == nullptr) {
        return nullptr;
    }
    return factory->createParticleSystem(self, driver, emitter, materials, root);
}

// 0x60e7e0 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
// Partial: the index overload resolves the entry through the database's emitter table getter, which is not declared as a member yet.
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase&, CColladaFactory*, int,
                                                            video::IVideoDriver*, res::vector<res::String>*,
                                                            CRootSceneNode*) {
    return nullptr;
}

// 0x60e814 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_12SGNPSEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
// Unattached: the factory's createGlitchNewParticleSystem slot is mapped; the member declaration is missing from collada_database.hpp.
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self,
                                                                         CColladaFactory* factory,
                                                                         SGNPSEmitter* emitter,
                                                                         video::IVideoDriver* driver,
                                                                         res::vector<res::String>* materials,
                                                                         CRootSceneNode* root) {
    if (emitter == nullptr) {
        return nullptr;
    }
    return factory->createGlitchNewParticleSystem(self, driver, emitter, materials, root);
}

// 0x60e858 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
// Partial: the index overload resolves the entry through the GNPS emitter table getter, which is not declared as a member yet.
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase&, CColladaFactory*,
                                                                         int, video::IVideoDriver*,
                                                                         res::vector<res::String>*, CRootSceneNode*) {
    return nullptr;
}

// 0x61a608 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_20SInstanceGNPSEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// Partial: the name-keyed constructor, the material lookup by name and the IParticleSystemSceneNode::addMaterial loop are not declared yet.
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase&, CColladaFactory*,
                                                                         SInstanceGNPSEmitter*,
                                                                         video::IVideoDriver*, CRootSceneNode*) {
    return nullptr;
}

// 0x61a77c _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_16SInstanceCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// Partial: the name-keyed coronas constructor and the CCoronasSceneNode::setMaterial loop need the material lookup, which is not declared yet.
CCoronasSceneNode* CColladaDatabase_constructCoronas(const CColladaDatabase&, CColladaFactory*, SInstanceCoronas*,
                                                     video::IVideoDriver*, CRootSceneNode*) {
    return nullptr;
}

// 0x61a888 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_16SInstanceEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
// Partial: the name-keyed emitter constructor and the IParticleSystemSceneNode::addMaterial loop need the material lookup, which is not declared yet.
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase&, CColladaFactory*,
                                                            SInstanceEmitter*, video::IVideoDriver*,
                                                            CRootSceneNode*) {
    return nullptr;
}

// 0x61bc8c _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbbPNS0_15CColladaFactoryE
// Partial: needs CResFileManager::load and the scene build through the file-data holder; not rebuilt.
int CColladaDatabase_constructScene(CColladaDatabase&, video::IVideoDriver*, io::IReadFile*, bool, bool,
                                    CColladaFactory*) {
    return 0;
}

// 0x61bd54 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
// Partial: same stand-ins as the two-flag overload (CResFileManager::load and the scene build).
int CColladaDatabase_constructScene(CColladaDatabase&, video::IVideoDriver*, io::IReadFile*, bool,
                                    CColladaFactory*) {
    return 0;
}

// 0x61c71c _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcbPNS0_15CColladaFactoryE
// Partial: needs CResFileManager::load and the named node lookup in the loaded file; not rebuilt.
CRootSceneNode* CColladaDatabase_constructNode(CColladaDatabase&, video::IVideoDriver*, io::IReadFile*, const char*,
                                               bool, CColladaFactory*) {
    return nullptr;
}

// 0x61c7cc _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcPNS0_15CColladaFactoryE
// Partial: same stand-ins as the bool overload (CResFileManager::load and the named node lookup).
CRootSceneNode* CColladaDatabase_constructNode(CColladaDatabase&, video::IVideoDriver*, io::IReadFile*, const char*,
                                               CColladaFactory*) {
    return nullptr;
}

// ---- glitch::scene::IParticleSystemSceneNode and particle forces --------------------

// 0x619820 _ZN6glitch7collada24IParticleSystemSceneNode11addMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
// Partial: the root-node material lookup (CRootSceneNode::addMaterial) and the owning vector push are not rebuilt; the refcount handling is not modelled.
void IParticleSystemSceneNode_addMaterial(IParticleSystemSceneNode&, SMaterial&, video::IVideoDriver*) {}

// 0x6301f8 _ZNK6glitch7collada15particle_system24CDeflectorForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base serializer and the IAttributes float writer slot (offset +0x64) for bounce, variation, chaos, friction, inheritVelocity, width and length are not mapped.
void CDeflectorForceSceneNode_serializeAttributes(const particle_system::CDeflectorForceSceneNode&, io::IAttributes*,
                                                  io::SAttributeReadWriteOptions*) {}

// 0x630318 _ZNK6glitch7collada15particle_system19CWindForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base serializer and the IAttributes float writer slot for strength, decay, turbulence, frequency and scale are not mapped.
void CWindForceSceneNode_serializeAttributes(const particle_system::CWindForceSceneNode&, io::IAttributes*,
                                             io::SAttributeReadWriteOptions*) {}

// 0x6303f0 _ZNK6glitch7collada15particle_system22CGravityForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base serializer and the IAttributes writer slots for decay, strength (float) and type (int) are not mapped.
void CGravityForceSceneNode_serializeAttributes(const particle_system::CGravityForceSceneNode&, io::IAttributes*,
                                                io::SAttributeReadWriteOptions*) {}

// 0x630480 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base deserializer and the IAttributes read slot (offset +0x70) for the seven deflector keys are not mapped.
void CDeflectorForceSceneNode_deserializeAttributes(particle_system::CDeflectorForceSceneNode&, io::IAttributes*,
                                                    io::SAttributeReadWriteOptions*) {}

// 0x630584 _ZN6glitch7collada15particle_system19CWindForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base deserializer and the IAttributes read slot for the five wind keys are not mapped.
void CWindForceSceneNode_deserializeAttributes(particle_system::CWindForceSceneNode&, io::IAttributes*,
                                               io::SAttributeReadWriteOptions*) {}

// 0x630648 _ZN6glitch7collada15particle_system22CGravityForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
// Partial: the base deserializer and the IAttributes read slots for decay and strength are not mapped.
void CGravityForceSceneNode_deserializeAttributes(particle_system::CGravityForceSceneNode&, io::IAttributes*,
                                                  io::SAttributeReadWriteOptions*) {}

// ---- glitch::ps particle systems and render data ------------------------------------

// 0x63e82c _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE6updateEfRNS_5video6SColorE
// Partial: the update pipeline is a sequence of unnamed vtable slots; the particle sort (std::swap on 0x9c-byte records) and resize are not rebuilt.
void IParticleSystem_GNPSParticle_update(ps::IParticleSystem<ps::GNPSParticle>&, float, video::SColor&) {}

// 0x6532cc _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE6updateEfRNS_5video6SColorE
// Partial: same pipeline as the GNPS update for the 0x64-byte SParticle records; unnamed vtable slots and the sort are not rebuilt.
void IParticleSystem_SParticle_update(ps::IParticleSystem<ps::SParticle>&, float, video::SColor&) {}

// 0x63f898 _ZN6glitch2ps11PRenderData17setRenderDataInfoEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverE
// Partial: the vertex-stream allocation and setup are not rebuilt; CVertexStreams and its member layout are not mapped.
void PRenderData_setRenderDataInfo(ps::PRenderData&, scene::CMeshBuffer*, video::IVideoDriver*) {}

// ---- glitch::collada mesh, skinned mesh and buffer preparation ----------------------

// 0x647774 _ZN6glitch7collada19CModularSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// Partial: the early return (16) for an unset flag is kept in the original; the material technique path and the driver buffer calls are not rebuilt.
std::uint32_t CModularSkinnedMesh_onPrepareBufferForRendering(CModularSkinnedMesh&, int, video::IVideoDriver*,
                                                              std::uint32_t) {
    return 16;
}

// 0x649474 _ZN6glitch7collada28CModularSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Partial: the base deserializer, the per-category module id reads and the module-set call are not rebuilt; the category lookups are not declared yet.
void CModularSkinnedMeshSceneNode_deserializeAttributes(CModularSkinnedMeshSceneNode&, io::IAttributes*,
                                                        io::SAttributeReadWriteOptions*) {}

// 0x6496ac _ZNK6glitch7collada28CModularSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Partial: the base serializer, the category and module name writes and the per-category sub-blocks are not rebuilt.
void CModularSkinnedMeshSceneNode_serializeAttributes(const CModularSkinnedMeshSceneNode&, io::IAttributes*,
                                                      io::SAttributeReadWriteOptions*) {}


// 0x65aecc _ZNK6glitch7collada14CRootSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Partial: the base ISceneNode serializer and the "Source" IAttributes string write (source name from the source record at +0x14c+0x20) are not mapped.
void CRootSceneNode_serializeAttributes(const CRootSceneNode&, io::IAttributes*, io::SAttributeReadWriteOptions*) {}

// 0x65c4f8 _ZN6glitch7collada14CRootSceneNode20setIFLAnimationValueEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video8ITextureEEE
// Partial: the per-animation parameter list lookup (std::map on the animation key) and IMaterialParameters::setParameter are not rebuilt.
void CRootSceneNode_setIFLAnimationValue(CRootSceneNode&, SAnimation*, boost::intrusive_ptr<video::ITexture>) {}

// 0x65c5b0 _ZN6glitch7collada14CRootSceneNode15addIFLAnimationEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video9CMaterialEEEt
// Partial: the parameter-info vector insert into the per-animation map (std::map operator[] and vector growth) is not rebuilt.
void CRootSceneNode_addIFLAnimation(CRootSceneNode&, SAnimation*, boost::intrusive_ptr<video::CMaterial>,
                                    std::uint16_t) {}

// 0x65c760 _ZN6glitch7collada14CRootSceneNode11addMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
// Partial: the material construction (CColladaDatabase::constructMaterial) is not declared; the owning list insert (node with back-pointer at +0x178) is not rebuilt.
video::CMaterial* CRootSceneNode_addMaterial(CRootSceneNode&, SMaterial*, video::IVideoDriver*) {
    return nullptr;
}

// 0x65cafc _ZN6glitch7collada14CRootSceneNode11getMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
// Partial: the hasMaterial lookup and the addMaterial fallback are not rebuilt; both are declared in the root-node header only in part.
video::CMaterial* CRootSceneNode_getMaterial(CRootSceneNode&, SMaterial*, video::IVideoDriver*) {
    return nullptr;
}

// 0x665004 _ZN6glitch7collada12CSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
// Partial: the skin-technique reverify and the per-buffer driver calls are not rebuilt; the mesh buffer table entries are not fully mapped.
std::uint32_t CSkinnedMesh_onPrepareBufferForRendering(CSkinnedMesh&, int, video::IVideoDriver*, std::uint32_t) {
    return 0;
}

// 0x6655ec _ZN6glitch7collada12CSkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
// Partial: the transform product (operator* into a 68-byte scratch) and the driver transform slot +0x6c are not mapped.
int CSkinnedMesh_setTransform(CSkinnedMesh&, video::IVideoDriver*, const core::CMatrix4<float>&) {
    return 0;
}

// 0x669b70 _ZN6glitch7collada12ISkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
// Partial: the identity-matrix path and the driver transform slot +0x6c are not named; the non-identity path is not rebuilt.
int ISkinnedMesh_setTransform(ISkinnedMesh&, video::IVideoDriver*, const core::CMatrix4<float>&) { return 0; }

// ---- thunks (forward to glitch::scene::ISceneNode; not reimplemented) ---------------

// 0x65af0c _ZN6glitch7collada14CRootSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// 0x6677d0 _ZNK6glitch7collada24IParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// 0x6677d4 _ZN6glitch7collada24IParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE

}  // namespace glitch::collada::recon_32
