// Slice 32: the CLightSceneNode attribute writer and constructors, the CColladaDatabase construct* entries that
// pick a factory creator, the particle-system force node attribute (de)serializers, the CRootSceneNode material and
// IFL helpers, and the skinned-mesh transform and buffer-prepare entries.
//
// The scene-manager, ISceneNode, mesh-scene-node, triangle-selector and animator entries of this slice moved to the
// canonical classes (scene/ and collada/, unification wave u1-scene); the CMorphingMesh and IMesh entries are members of
// collada/IMesh.hpp now.
//
// Stand-ins below cover code outside this slice (IAttributes slot calls, base-class constructors and vtable slots that
// are not mapped yet, member lookups not declared in the existing headers). Rows that depend on a stand-in are ledgered
// partial with the stand-in named in the note; the body is not invented.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada_database.hpp"
#include "glitch-scene-collada-gui/collada_factory.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/deps/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/deps/video_stand_ins.hpp"

// Forward declarations of the types this slice names. Full layouts live in the
// headers that own them (or are not mapped yet); the bodies here only pass pointers
// and references through.
namespace glitch::io {
class IAttributes;
struct SAttributeReadWriteOptions;
class IReadFile;
}  // namespace glitch::io

namespace glitch::core {
template <typename T>
class triangle3d;
template <typename T>
class CMatrix4;
class quaternion;
}  // namespace glitch::core

namespace glitch::video {
class ITexture;
}  // namespace glitch::video

namespace glitch::scene {
class CLightSceneNode;
class CMeshBuffer;
}  // namespace glitch::scene

namespace glitch::ps {
template <typename T>
class IParticleSystem;
class PRenderData;
struct GNPSParticle;
struct SParticle;
}  // namespace glitch::ps

namespace glitch::collada {
class CAnimationBlock;
struct SAnimationBlockSearchKey;
class CAnimationStreamingManager;
class CSceneNodeAnimator;
class CModularSkinnedMeshSceneNode;
class CResFile;
class CResFileManager;
class IParticleSystemSceneNode;
class ISkinnedMesh;
class SAnimationAccessor;
struct SInstanceGNPSEmitter;
struct SInstanceCoronas;
struct SInstanceEmitter;
namespace particle_system {
class CDeflectorForceSceneNode;
class CWindForceSceneNode;
class CGravityForceSceneNode;
}  // namespace particle_system
}  // namespace glitch::collada

namespace glitch::collada::recon_32 {

// ---- glitch::scene::CLightSceneNode -------------------------------------------------

// 0x583ddc _ZNK6glitch5scene15CLightSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
int CLightSceneNode_serializeAttributes(const scene::CLightSceneNode& self, io::IAttributes* attributes,
                                        io::SAttributeReadWriteOptions* options);

// 0x584350 _ZN6glitch5scene15CLightSceneNodeC1EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
void CLightSceneNode_ctor_C1(scene::CLightSceneNode& self, int id, const core::vector3d<float>& position,
                             const video::SColorf& color, float radius);

// 0x584544 _ZN6glitch5scene15CLightSceneNodeC2EiRKNS_4core8vector3dIfEERKNS_5video7SColorfEf
void CLightSceneNode_ctor_C2(scene::CLightSceneNode& self, int id, const core::vector3d<float>& position,
                             const video::SColorf& color, float radius);

// ---- glitch::collada::CCoronasSceneNode -------------------------------------------

// 0x60f8b8 _ZN6glitch7collada17CCoronasSceneNode11setMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
void CCoronasSceneNode_setMaterial(CCoronasSceneNode& self, SMaterial& material, video::IVideoDriver* driver);

// ---- glitch::collada::CColladaDatabase constructors ---------------------------------
// The factory (the original *(this + 0x04)) is passed explicitly; the database members
// that look entries up by name are not declared in collada_database.hpp yet.

// 0x60e75c _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_8SCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
CCoronasSceneNode* CColladaDatabase_constructCoronas(const CColladaDatabase& self, CColladaFactory* factory,
                                                     SCoronas* coronas, video::IVideoDriver* driver,
                                                     CRootSceneNode* root);

// 0x60e79c _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_8SEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase& self, CColladaFactory* factory,
                                                            SEmitter* emitter, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials,
                                                            CRootSceneNode* root);

// 0x60e7e0 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase& self, CColladaFactory* factory,
                                                            int index, video::IVideoDriver* driver,
                                                            res::vector<res::String>* materials,
                                                            CRootSceneNode* root);

// 0x60e814 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_12SGNPSEmitterEPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self,
                                                                         CColladaFactory* factory,
                                                                         SGNPSEmitter* emitter,
                                                                         video::IVideoDriver* driver,
                                                                         res::vector<res::String>* materials,
                                                                         CRootSceneNode* root);

// 0x60e858 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEiPNS_5video12IVideoDriverEPNS_3res6vectorINS5_6StringEEEPNS0_14CRootSceneNodeE
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self,
                                                                         CColladaFactory* factory, int index,
                                                                         video::IVideoDriver* driver,
                                                                         res::vector<res::String>* materials,
                                                                         CRootSceneNode* root);

// 0x61a608 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPNS0_20SInstanceGNPSEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
CGlitchNewParticleSystemSceneNode* CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self,
                                                                         CColladaFactory* factory,
                                                                         SInstanceGNPSEmitter* instance,
                                                                         video::IVideoDriver* driver,
                                                                         CRootSceneNode* root);

// 0x61a77c _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPNS0_16SInstanceCoronasEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
CCoronasSceneNode* CColladaDatabase_constructCoronas(const CColladaDatabase& self, CColladaFactory* factory,
                                                     SInstanceCoronas* instance, video::IVideoDriver* driver,
                                                     CRootSceneNode* root);

// 0x61a888 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPNS0_16SInstanceEmitterEPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
CParticleSystemSceneNode* CColladaDatabase_constructEmitter(const CColladaDatabase& self, CColladaFactory* factory,
                                                            SInstanceEmitter* instance, video::IVideoDriver* driver,
                                                            CRootSceneNode* root);

// 0x61bc8c _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbbPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene(CColladaDatabase& self, video::IVideoDriver* driver, io::IReadFile* file,
                                    bool flagA, bool flagB, CColladaFactory* factory);

// 0x61bd54 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene(CColladaDatabase& self, video::IVideoDriver* driver, io::IReadFile* file,
                                    bool flag, CColladaFactory* factory);

// 0x61c71c _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcbPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase_constructNode(CColladaDatabase& self, video::IVideoDriver* driver,
                                               io::IReadFile* file, const char* name, bool flag,
                                               CColladaFactory* factory);

// 0x61c7cc _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS_2io9IReadFileEPKcPNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase_constructNode(CColladaDatabase& self, video::IVideoDriver* driver,
                                               io::IReadFile* file, const char* name, CColladaFactory* factory);

// ---- glitch::scene::IParticleSystemSceneNode and particle forces --------------------

// 0x619820 _ZN6glitch7collada24IParticleSystemSceneNode11addMaterialERNS0_9SMaterialEPNS_5video12IVideoDriverE
void IParticleSystemSceneNode_addMaterial(IParticleSystemSceneNode& self, SMaterial& material,
                                          video::IVideoDriver* driver);

// 0x6677d0 _ZNK6glitch7collada24IParticleSystemSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// (thunk to glitch::scene::ISceneNode::serializeAttributes; not reimplemented)

// 0x6677d4 _ZN6glitch7collada24IParticleSystemSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// (thunk to glitch::scene::ISceneNode::deserializeAttributes; not reimplemented)

// 0x6301f8 _ZNK6glitch7collada15particle_system24CDeflectorForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CDeflectorForceSceneNode_serializeAttributes(const particle_system::CDeflectorForceSceneNode& self,
                                                  io::IAttributes* attributes,
                                                  io::SAttributeReadWriteOptions* options);

// 0x630318 _ZNK6glitch7collada15particle_system19CWindForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CWindForceSceneNode_serializeAttributes(const particle_system::CWindForceSceneNode& self,
                                             io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);

// 0x6303f0 _ZNK6glitch7collada15particle_system22CGravityForceSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CGravityForceSceneNode_serializeAttributes(const particle_system::CGravityForceSceneNode& self,
                                                io::IAttributes* attributes,
                                                io::SAttributeReadWriteOptions* options);

// 0x630480 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CDeflectorForceSceneNode_deserializeAttributes(particle_system::CDeflectorForceSceneNode& self,
                                                    io::IAttributes* attributes,
                                                    io::SAttributeReadWriteOptions* options);

// 0x630584 _ZN6glitch7collada15particle_system19CWindForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CWindForceSceneNode_deserializeAttributes(particle_system::CWindForceSceneNode& self,
                                               io::IAttributes* attributes,
                                               io::SAttributeReadWriteOptions* options);

// 0x630648 _ZN6glitch7collada15particle_system22CGravityForceSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS3_26SAttributeReadWriteOptionsE
void CGravityForceSceneNode_deserializeAttributes(particle_system::CGravityForceSceneNode& self,
                                                  io::IAttributes* attributes,
                                                  io::SAttributeReadWriteOptions* options);

// ---- glitch::ps particle systems and render data ------------------------------------

// 0x63e82c _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE6updateEfRNS_5video6SColorE
void IParticleSystem_GNPSParticle_update(ps::IParticleSystem<ps::GNPSParticle>& self, float elapsed,
                                         video::SColor& color);

// 0x6532cc _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE6updateEfRNS_5video6SColorE
void IParticleSystem_SParticle_update(ps::IParticleSystem<ps::SParticle>& self, float elapsed,
                                      video::SColor& color);

// 0x63f898 _ZN6glitch2ps11PRenderData17setRenderDataInfoEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverE
void PRenderData_setRenderDataInfo(ps::PRenderData& self, scene::CMeshBuffer* buffer, video::IVideoDriver* driver);

// ---- glitch::collada mesh, skinned mesh and buffer preparation ----------------------

// 0x647774 _ZN6glitch7collada19CModularSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
std::uint32_t CModularSkinnedMesh_onPrepareBufferForRendering(CModularSkinnedMesh& self, int step,
                                                              video::IVideoDriver* driver, std::uint32_t index);

// 0x649474 _ZN6glitch7collada28CModularSkinnedMeshSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CModularSkinnedMeshSceneNode_deserializeAttributes(CModularSkinnedMeshSceneNode& self,
                                                        io::IAttributes* attributes,
                                                        io::SAttributeReadWriteOptions* options);

// 0x6496ac _ZNK6glitch7collada28CModularSkinnedMeshSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CModularSkinnedMeshSceneNode_serializeAttributes(const CModularSkinnedMeshSceneNode& self,
                                                      io::IAttributes* attributes,
                                                      io::SAttributeReadWriteOptions* options);


// 0x65aecc _ZNK6glitch7collada14CRootSceneNode19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CRootSceneNode_serializeAttributes(const CRootSceneNode& self, io::IAttributes* attributes,
                                        io::SAttributeReadWriteOptions* options);

// 0x65af0c _ZN6glitch7collada14CRootSceneNode21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// (thunk to glitch::scene::ISceneNode::deserializeAttributes; not reimplemented)

// 0x65c4f8 _ZN6glitch7collada14CRootSceneNode20setIFLAnimationValueEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video8ITextureEEE
void CRootSceneNode_setIFLAnimationValue(CRootSceneNode& self, SAnimation* animation,
                                         boost::intrusive_ptr<video::ITexture> texture);

// 0x65c5b0 _ZN6glitch7collada14CRootSceneNode15addIFLAnimationEPNS0_10SAnimationEN5boost13intrusive_ptrINS_5video9CMaterialEEEt
void CRootSceneNode_addIFLAnimation(CRootSceneNode& self, SAnimation* animation,
                                    boost::intrusive_ptr<video::CMaterial> material, std::uint16_t frameCount);

// 0x65c760 _ZN6glitch7collada14CRootSceneNode11addMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
video::CMaterial* CRootSceneNode_addMaterial(CRootSceneNode& self, SMaterial* material, video::IVideoDriver* driver);

// 0x65cafc _ZN6glitch7collada14CRootSceneNode11getMaterialEPNS0_9SMaterialEPNS_5video12IVideoDriverE
video::CMaterial* CRootSceneNode_getMaterial(CRootSceneNode& self, SMaterial* material, video::IVideoDriver* driver);

// 0x665004 _ZN6glitch7collada12CSkinnedMesh27onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverEj
std::uint32_t CSkinnedMesh_onPrepareBufferForRendering(CSkinnedMesh& self, int step, video::IVideoDriver* driver,
                                                       std::uint32_t index);

// 0x6655ec _ZN6glitch7collada12CSkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
int CSkinnedMesh_setTransform(CSkinnedMesh& self, video::IVideoDriver* driver, const core::CMatrix4<float>& matrix);

// 0x669b70 _ZN6glitch7collada12ISkinnedMesh12setTransformEPNS_5video12IVideoDriverERKNS_4core8CMatrix4IfEE
int ISkinnedMesh_setTransform(ISkinnedMesh& self, video::IVideoDriver* driver, const core::CMatrix4<float>& matrix);

// SAnimationAccessor key-frame search: canonical class in collada/SAnimationAccessor.hpp.

}  // namespace glitch::collada::recon_32
