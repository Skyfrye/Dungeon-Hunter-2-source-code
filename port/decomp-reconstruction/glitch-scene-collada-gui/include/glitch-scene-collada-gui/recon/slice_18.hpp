// Declarations for decompiled-function reconstruction slice 18.
// Stand-in types only: the real layouts live in other slices and headers.
// Member offsets that are read are kept as comments (// +0x..).
// Partial stubs use simplified signatures (void* self plus particle range);
// the pseudocode signature is recorded in the comment above each definition in slice_18.cpp.
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada::recon_18 {

// Incomplete stand-ins for types owned by other slices.
struct CColladaDatabase;
using glitch::video::IVideoDriver;  // canonical: glitch-video/video_driver.hpp
struct SGeometry;
struct SEffect;
struct SEffectList;
struct SLight;
struct SLibraryAnimationClips;
struct SNewParam;
struct CRootSceneNode;
using glitch::video::CMaterialRenderer;          // canonical: glitch-video/material_renderer.hpp
using glitch::video::CMaterialRendererManager;   // canonical: glitch-video/material_renderer_manager.hpp
struct SEmitter;
struct SGNPSEmitter;
struct CMesh;
struct CLightSceneNode;
struct CSceneNodeAnimator;
struct CParticleSystemSceneNode;
struct CGlitchNewParticleSystemSceneNode;
struct PSRandom;
struct PForce;

// Particle record sizes in floats: GNPSParticle = 39 (156 bytes), SParticle = 25 (100 bytes).
inline constexpr std::size_t kGNPSParticleFloats = 39;
inline constexpr std::size_t kSParticleFloats = 25;

// Random source used by the force code (stand-in for lrand48). Non-negative 31-bit integer.
using NextInt31Fn = std::int32_t (*)();
// Draw used by the particle models (stand-in for PSRandom::Rand).
using PSDrawFn = float (*)(PSRandom*);

// ---- group 1: glitch::collada factory ---------------------------------------
CMesh* CColladaFactory_createGeometry(const CColladaDatabase& db, IVideoDriver* driver, SGeometry* geometry);
void SEffectList_ctor(SEffectList* self, const CColladaDatabase& db, SEffect* effect);
std::string CColladaFactory_getEffectName(const CColladaDatabase& db, const char* unused, const char* name);
CLightSceneNode* CColladaFactory_createLight(const CColladaDatabase& db, SLight* light);
CSceneNodeAnimator* CColladaFactory_createAnimator(const CColladaDatabase& db, SLibraryAnimationClips* clips);
bool setMaterialParameter_SNewParam(CMaterialRenderer* renderer, std::uint16_t parameter, SNewParam& value,
                                    CRootSceneNode* root);
CMaterialRenderer* createMaterialRenderer_effects(const CColladaDatabase& db, IVideoDriver* driver, const char* name,
                                                  SEffectList& effects, CRootSceneNode* root);
CMaterialRenderer* CColladaFactory_createMaterialRenderer(const CColladaDatabase& db, IVideoDriver* driver,
                                                          SEffect* effect, const char* name, const char* id,
                                                          CRootSceneNode* root);
CParticleSystemSceneNode* CColladaFactory_createParticleSystem(const CColladaDatabase& db, IVideoDriver* driver,
                                                               SEmitter* emitter, void* strings,
                                                               CRootSceneNode* root);
void* SProfileGLES2Traits_createShader(void* manager, const char* name, char** parameters);

// ---- group 2: glitch::ps forces --------------------------------------------
// Force owner read by PWind and PGravity.
struct ForceOwner {
    std::uint8_t pad_0x00[32];   // +0x00..+0x1f not modelled
    float direction[3];          // +0x20 (32)
    std::uint8_t pad_0x2c[4];    // +0x2c
    float origin[3];             // +0x30 (48)
    std::uint8_t pad_0x3c[4];    // +0x3c
    std::uint8_t normalized;     // +0x40 (64)
};

// PWind force record (the float** target in the pseudocode).
struct WindForce {
    ForceOwner* owner;           // +0x00
    float strength;              // +0x04 (multiplied by 1000 when applied)
    float decay;                 // +0x08
    float turbulence;            // +0x0c
    float turbulenceFrequency;   // +0x10
    std::int32_t hasOrigin;      // +0x18
};

// PGravity force record.
struct GravityForce {
    ForceOwner* owner;           // +0x00
    float strength;              // +0x04 (multiplied by 1000 when applied)
    float decay;                 // +0x08
    std::int32_t hasOrigin;      // +0x0c
};

// PWind::apply<T>. Position at [0..2]; StrideFloats is the particle record size.
template <std::size_t StrideFloats>
void applyWind(WindForce* force, float* first, float* last, float timeStep, NextInt31Fn nextInt31);

// PGravity::apply<T>. Velocity at [3..5].
template <std::size_t StrideFloats>
void applyGravity(GravityForce* force, float* first, float* last, float timeStep);

// PForceProxy<T,PWind>::apply and PForceProxy<T,PGravity>::apply forward to the force apply.
template <std::size_t StrideFloats>
void PForceProxy_applyWind(WindForce* force, float* first, float* last, float timeStep, NextInt31Fn nextInt31);
template <std::size_t StrideFloats>
void PForceProxy_applyGravity(GravityForce* force, float* first, float* last, float timeStep);

// PDeflector: apply, proxy and bind are stubs.
template <std::size_t StrideFloats>
void PDeflector_apply(void* self, float* first, float* last, float timeStep);
template <std::size_t StrideFloats>
void PForceProxy_PDeflector_apply(void* self, float* first, float* last, float timeStep);
void PDeflector_ctor(void* self, const void* parameters);
template <std::size_t StrideFloats>
int IParticleSystem_bindForce_PDeflector(void* system, const void* parameters);
void CDeflectorForceSceneNode_bind(void* node, void* system, const void* parameters);

// ---- group 3: PSRandom, PSManager, IParticleContext, GNPS particle models ---
struct PSManager {};
void PSRandom_RandVec(float* out, PSDrawFn draw, PSRandom* source);
void PSManager_dtor(void* self);
PSManager& PSManager_getInstance();
// IParticleContext_hashString was retired: 0x63b44c is the canonical member
// glitch::ps::IParticleContext<GNPSParticle>::hashString (ps/IParticleSystem.hpp + src/ps/IParticleContext.cpp),
// and the copy here folded with the wrong constant. Checked by tests/ps_particle_context_test.cpp.
std::size_t CGlitchNewParticleSystemSceneNode_getParticleCount(const void* self);
void GNPSParticle_copy(float* dst, const float* src);
void GNPSParticle_assign(float* dst, const float* src);
void* IParticleSystem_getPRand(void* self);
void GNPSSizeModel_initPSize(const float* model, float* first, float* last, PSRandom* random, PSDrawFn draw);
void GNPSLifeModel_initPLife(const float* model, float* first, float* last, PSRandom* random, PSDrawFn draw);
void PRenderDataBillboardModel_initPRenderData(void* self, float* first, float* last);

// 0x63877c _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
//   PRenderDataBillboardModel::initPRenderData (both template instances): empty body.
void PRenderDataBillboardModel_initPRenderData(void* self, float* first, float* last);

// ---- group 4: partial stubs (simplified signatures) --------------------------
void IParticleSystem_init(void* self);
void GNPSColorModel_initPColor(void* self, float* first, float* last);
void PEmitterModel_initPPosition(void* self, float* first, float* last);
// 0x638728 / 0x638790 getRenderVertexStreams: writes the render stream word into `result` and
// increments its count; returns `result`, as the original's sret slot does.
void* PRenderDataBillboardModel_getRenderVertexStreams(void* self, void* result);
std::uint32_t PRenderDataBillboardModel_getRenderBufferSizeNeeded(const void* self);
void PSGenericPositionBaker_convertVertexPosition(void* self, float* first, float* last);
void GNPSLifeModel_applyPLife(void* self, float* first, float* last);
void PRenderDataBillboardModel_applyPRenderData(void* self, float* first, float* last);
void PForcesModel_applyPForces(void* self, float* first, float* last);
void PForcesModel_initPForcesModel(void* self);
float* CGlitchNewParticleSystemSceneNode_getBoundingBox(void* self);
void IParticleContext_ctor(void* self);
void CGlitchNewParticleSystemSceneNode_onRegisterSceneNode(void* self);
void PRenderDataBillboardModel_deallocateBuffer(void* self);
void PRenderDataBillboardModel_setRenderBuffer(void* self, void* buffer, std::uint32_t size);
void PSBillboardPositionBaker_getPerParticleSystemPosition(void* self, const float* matrix);
void GNPSMotionModel_applyPMotion(void* self, float* first, float* last);
void GNPSSizeModel_applyPSize(void* self, float* first, float* last);
void PEmitterModel_initPEmitterModel(void* self);
void GNPSColorModel_applyPColor(void* self, float* first, float* last);
void PSGenericPositionBaker_getPerParticlePosition(void* self, const float* particle);
void CGlitchNewParticleSystemSceneNode_ctor(void* self, const CColladaDatabase& db, SGNPSEmitter* emitter,
                                            void* strings, CRootSceneNode* root);
void CGlitchNewParticleSystemSceneNode_ctorFromBase(void* self, const void* base, const void* emitter,
                                                    CRootSceneNode* root);
void GNPSSpinModel_initPSpin(void* self, float* first, float* last);
void GNPSSpinModel_applyPSpin(void* self, float* first, float* last);
void PForcesModel_removePForce(void* self, PForce* force);
void PForcesModel_removePForceIndex(void* self, int index);
void CGlitchNewParticleSystemSceneNode_attach(void* self, void* node);

}  // namespace glitch::collada::recon_18
