// Reconstruction slice 18: glitch::collada factory helpers, glitch::ps force
// models, GNPS particle helpers. Partial rows are stubs (see the ledger notes).
#include "glitch-scene-collada-gui/recon/slice_18.hpp"

#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

#include <cmath>
#include <cstring>

namespace glitch::collada::recon_18 {

namespace {

// glitch::ps::PRenderDataBillboardModel<...>. The class has no member layout in the layout headers,
// so the object stays opaque (void*) and each recovered body reads the word it proved, through these
// offset accessors. They use the ORIGINAL 32-bit offsets directly, so the host pointer width does not
// shift anything: the stream word is at +0x10, the size-needed word at +0x98.
namespace rd {

inline void* stream(void* self) {  // +0x10, intrusive_ptr target (its count is at target +0x00)
    return *reinterpret_cast<void**>(static_cast<char*>(self) + 0x10);
}
inline std::uint32_t sizeNeeded(const void* self) {  // +0x98
    return *reinterpret_cast<const std::uint32_t*>(static_cast<const char*>(self) + 0x98);
}

}  // namespace rd

struct Vec3 {
    float x, y, z;
};

Vec3 normalizedCopy(Vec3 v) {
    float len = std::sqrt(v.x * v.x + v.y * v.y + v.z * v.z);
    if (len != 0.0f) {
        v.x /= len;
        v.y /= len;
        v.z /= len;
    }
    return v;
}

// Resolves the force direction for one particle and the distance used by the decay term.
// hasOrigin: the direction points from the particle to the owner origin.
// otherwise: the owner direction; the distance is the projection of (particle - origin).
void resolveDirection(ForceOwner& owner, bool hasOrigin, const float* p, Vec3& dir, float& dist) {
    if (hasOrigin) {
        Vec3 d{owner.origin[0] - p[0], owner.origin[1] - p[1], owner.origin[2] - p[2]};
        dist = std::sqrt(d.x * d.x + d.y * d.y + d.z * d.z);
        dir = dist != 0.0f ? Vec3{d.x / dist, d.y / dist, d.z / dist} : d;
        return;
    }
    owner.normalized = 0;  // *(owner+64) = 0
    dir = normalizedCopy(Vec3{owner.direction[0], owner.direction[1], owner.direction[2]});
    dist = std::fabs((p[0] - owner.origin[0]) * dir.x + (p[1] - owner.origin[1]) * dir.y +
                     (p[2] - owner.origin[2]) * dir.z);
}

// strength * 1000, attenuated by exp(-decay * dist) when decay is positive.
float attenuatedStrength(float strength, float decay, float dist) {
    float magnitude = strength * 1000.0f;
    if (decay > 0.0f) {
        magnitude *= std::exp(-decay * dist);
    }
    return magnitude;
}

}  // namespace

// 0x632b70 _ZN6glitch2ps5PWind5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x632f6c _ZN6glitch2ps5PWind5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
//   PWind::apply<GNPSParticle> (stride 39), PWind::apply<SParticle> (stride 25).
// Partial: the owner layout (+0x20 direction, +0x30 origin, +0x40 flag) is read from the
// pseudocode and not checked against the game; the per-particle loop follows the body.
template <std::size_t StrideFloats>
void applyWind(WindForce* force, float* first, float* last, float timeStep, NextInt31Fn nextInt31) {
    const bool turbulent = force->turbulence > 0.0f;
    for (float* p = first; p != last; p += StrideFloats) {
        Vec3 dir{};
        float dist = 0.0f;
        resolveDirection(*force->owner, force->hasOrigin != 0, p, dir, dist);
        float scale = attenuatedStrength(force->strength, force->decay, dist) * timeStep;
        Vec3 v{dir.x * scale, dir.y * scale, dir.z * scale};
        if (turbulent) {
            float k = force->turbulenceFrequency * timeStep;
            v.x = force->turbulence * (k * (static_cast<float>(nextInt31()) * 4.6566e-10f)) + v.x;
            v.y = force->turbulence * (k * (static_cast<float>(nextInt31()) * 4.6566e-10f)) + v.y;
            v.z = force->turbulence * (k * (static_cast<float>(nextInt31()) * 4.6566e-10f)) + v.z;
        }
        p[0] = p[0] + timeStep * v.x;
        p[1] = p[1] + timeStep * v.y;
        p[2] = p[2] + timeStep * v.z;
    }
}

// 0x633368 _ZN6glitch2ps8PGravity5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x633624 _ZN6glitch2ps8PGravity5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
//   PGravity::apply<GNPSParticle> (stride 39), PGravity::apply<SParticle> (stride 25).
// Partial: same owner-layout assumption as applyWind.
template <std::size_t StrideFloats>
void applyGravity(GravityForce* force, float* first, float* last, float timeStep) {
    for (float* p = first; p != last; p += StrideFloats) {
        Vec3 dir{};
        float dist = 0.0f;
        resolveDirection(*force->owner, force->hasOrigin != 0, p, dir, dist);
        float scale = attenuatedStrength(force->strength, force->decay, dist) * timeStep;
        p[3] = p[3] + dir.x * scale;
        p[4] = p[4] + dir.y * scale;
        p[5] = p[5] + dir.z * scale;
    }
}

// 0x632f64 _ZN6glitch2ps11PForceProxyINS0_12GNPSParticleENS0_5PWindEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
// 0x633360 _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_5PWindEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
//   PForceProxy<GNPSParticle,PWind>::apply and PForceProxy<SParticle,PWind>::apply.
// Forwarding thunk: the pseudocode passes the force record at proxy+12 to PWind::apply.
template <std::size_t StrideFloats>
void PForceProxy_applyWind(WindForce* force, float* first, float* last, float timeStep, NextInt31Fn nextInt31) {
    applyWind<StrideFloats>(force, first, last, timeStep, nextInt31);
}

// 0x63361c _ZN6glitch2ps11PForceProxyINS0_12GNPSParticleENS0_8PGravityEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
// 0x6338d8 _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_8PGravityEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
//   PForceProxy<GNPSParticle,PGravity>::apply and PForceProxy<SParticle,PGravity>::apply.
template <std::size_t StrideFloats>
void PForceProxy_applyGravity(GravityForce* force, float* first, float* last, float timeStep) {
    applyGravity<StrideFloats>(force, first, last, timeStep);
}

template void applyWind<kGNPSParticleFloats>(WindForce*, float*, float*, float, NextInt31Fn);
template void applyWind<kSParticleFloats>(WindForce*, float*, float*, float, NextInt31Fn);
template void applyGravity<kGNPSParticleFloats>(GravityForce*, float*, float*, float);
template void applyGravity<kSParticleFloats>(GravityForce*, float*, float*, float);
template void PForceProxy_applyWind<kGNPSParticleFloats>(WindForce*, float*, float*, float, NextInt31Fn);
template void PForceProxy_applyWind<kSParticleFloats>(WindForce*, float*, float*, float, NextInt31Fn);
template void PForceProxy_applyGravity<kGNPSParticleFloats>(GravityForce*, float*, float*, float);
template void PForceProxy_applyGravity<kSParticleFloats>(GravityForce*, float*, float*, float);

// ---- group 1: factory stubs --------------------------------------------------

// 0x6319d8 _ZN6glitch7collada11SEffectListC1ERKNS0_16CColladaDatabaseEPNS0_7SEffectE
//   SEffectList::SEffectList (partial: list node allocation and database copy not modelled)
void SEffectList_ctor(SEffectList*, const CColladaDatabase&, SEffect*) {}

// 0x631ac4 _ZN6glitch7collada15CColladaFactory13getEffectNameERKNS0_16CColladaDatabaseEPKcS6_
//   CColladaFactory::getEffectName. Reconstructed: the std::string is built from the name argument;
// the database argument and the first char pointer are not used by the pseudocode.
std::string CColladaFactory_getEffectName(const CColladaDatabase&, const char*, const char* name) {
    return std::string(name);
}

// 0x631924 _ZN6glitch7collada15CColladaFactory14createGeometryERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SGeometryE
//   CColladaFactory::createGeometry (partial: CMesh ctor and vtable slots 40/44/48 not modelled)
CMesh* CColladaFactory_createGeometry(const CColladaDatabase&, IVideoDriver*, SGeometry*) {
    return nullptr;
}

// 0x631af8 _ZN6glitch7collada15CColladaFactory11createLightERKNS0_16CColladaDatabaseEPNS0_6SLightE
//   CColladaFactory::createLight (partial: CLightSceneNode allocation and ctor not modelled)
CLightSceneNode* CColladaFactory_createLight(const CColladaDatabase&, SLight*) {
    return nullptr;
}

// 0x631b28 _ZN6glitch7collada15CColladaFactory14createAnimatorERKNS0_16CColladaDatabaseEPNS0_22SLibraryAnimationClipsE
//   CColladaFactory::createAnimator (partial: CSceneNodeAnimator allocation and ctor not modelled)
CSceneNodeAnimator* CColladaFactory_createAnimator(const CColladaDatabase&, SLibraryAnimationClips*) {
    return nullptr;
}

// 0x6324c4 _ZN6glitch7collada12_GLOBAL__N_120setMaterialParameterIN5boost13intrusive_ptrINS_5video17CMaterialRendererEEENS0_9SNewParamEEEbRKT_tRT0_PNS0_14CRootSceneNodeE
//   setMaterialParameter<intrusive_ptr<CMaterialRenderer>,SNewParam> (partial: the
// 1272-byte switch over shader parameter types and the type-mismatch log are not modelled)
bool setMaterialParameter_SNewParam(CMaterialRenderer*, std::uint16_t, SNewParam&, CRootSceneNode*) {
    return false;
}

// 0x636b6c _ZN6glitch7collada22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPKcRKNS0_11SEffectListEPNS0_14CRootSceneNodeE
//   createMaterialRenderer(db, driver, name, SEffectList const&, root) (partial: profile
// dispatch through createMaterialRendererForProfile not modelled)
CMaterialRenderer* createMaterialRenderer_effects(const CColladaDatabase&, IVideoDriver*, const char*, SEffectList&,
                                                  CRootSceneNode*) {
    return nullptr;
}

// 0x636c8c _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSB_PNS0_14CRootSceneNodeE
//   CColladaFactory::createMaterialRenderer (partial: SIDedCollection lookup, effect list and
// pink-wireframe fallback not modelled)
CMaterialRenderer* CColladaFactory_createMaterialRenderer(const CColladaDatabase&, IVideoDriver*, SEffect*,
                                                          const char*, const char*, CRootSceneNode*) {
    return nullptr;
}

// 0x634c64 _ZN6glitch7collada15CColladaFactory20createParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SEmitterEPNS_3res6vectorINSA_6StringEEEPNS0_14CRootSceneNodeE
//   CColladaFactory::createParticleSystem (partial: 2864-byte body not reconstructed in this pass)
CParticleSystemSceneNode* CColladaFactory_createParticleSystem(const CColladaDatabase&, IVideoDriver*, SEmitter*,
                                                               void*, CRootSceneNode*) {
    return nullptr;
}

// 0x634b30 _ZN6glitch7collada19SProfileGLES2Traits12createShaderEPNS_5video14IShaderManagerERNS0_5SPassINS0_25SRenderStatesProgrammableEEE
//   SProfileGLES2Traits::createShader (partial: CGLSLShaderManager::createShader call not modelled;
// the four-string concatenation is also omitted)
void* SProfileGLES2Traits_createShader(void* manager, const char*, char**) {
    return manager;
}

// ---- group 2: deflector stubs ------------------------------------------------

// 0x6349a0 _ZN6glitch2ps10PDeflectorC2ERNS1_10ParametersE
//   PDeflector::PDeflector (partial: parameter block copy and default values not modelled)
void PDeflector_ctor(void*, const void*) {}

// 0x6338e0 _ZN6glitch2ps10PDeflector5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x636e28 _ZN6glitch2ps10PDeflector5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
//   PDeflector::apply<SParticle> (stride 25), PDeflector::apply<GNPSParticle> (stride 39).
// Partial: friction coefficient, random rotation and the bounce loop are not modelled.
template <std::size_t StrideFloats>
void PDeflector_apply(void*, float*, float*, float) {}

// 0x634518 _ZN6glitch2ps11PForceProxyINS0_9SParticleENS0_10PDeflectorEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
// 0x637a60 _ZN6glitch2ps11PForceProxyINS0_12GNPSParticleENS0_10PDeflectorEE5applyEPS2_S5_PNS0_16IParticleContextIS2_EE
//   PForceProxy<SParticle,PDeflector>::apply and PForceProxy<GNPSParticle,PDeflector>::apply.
// Partial: forwards to the PDeflector_apply stub.
template <std::size_t StrideFloats>
void PForceProxy_PDeflector_apply(void*, float*, float*, float) {}

// 0x634a00 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_10PDeflectorEEEiRNT_15parameters_typeE
// 0x634a98 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_10PDeflectorEEEiRNT_15parameters_typeE
//   IParticleSystem::bindForce<PDeflector> (partial: force object allocation and
// vtable binding not modelled)
template <std::size_t StrideFloats>
int IParticleSystem_bindForce_PDeflector(void*, const void*) {
    return 0;
}

// 0x634a88 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
// 0x634b20 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
//   CDeflectorForceSceneNode::bind (partial: depends on the bindForce stub)
void CDeflectorForceSceneNode_bind(void*, void*, const void*) {}

// ---- group 3: random, manager, hashing, GNPS particle helpers ------------------

// 0x637ac4 _ZN6glitch2ps8PSRandom7RandVecEv
//   PSRandom::RandVec. Three draws from the source fill out[0..2] in order.
void PSRandom_RandVec(float* out, PSDrawFn draw, PSRandom* source) {
    out[0] = draw(source);
    out[1] = draw(source);
    out[2] = draw(source);
}

// 0x637b38 _ZN6glitch2ps9PSManagerD1Ev
//   PSManager::~PSManager. Empty body.
void PSManager_dtor(void*) {}

// 0x63b3d0 _ZN6glitch2ps9PSManager11getInstanceEv
//   PSManager::getInstance. Meyers singleton with the empty PSManager body.
PSManager& PSManager_getInstance() {
    static PSManager instance;
    return instance;
}

// 0x63b44c _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE10hashStringEPKc
//   Retired from this slice: the symbol is defined by the canonical member
//   glitch::ps::IParticleContext<GNPSParticle>::hashString (include/glitch-scene-collada-gui/ps/IParticleSystem.hpp,
//   instantiated in src/ps/IParticleContext.cpp). The copy that used to stand here folded with 0x9E3779B9 and did
//   not sign-extend the byte; the listing (disassembly of 0x63b44c/0x64d0bc: `MOV R3, #0x9E3779B9`, `LDRSB R1,
//   [R2],#1`) shows the step is `h ^= (int8_t)c - 1640531527 + (h << 6) + (h >> 2)`, so the old copy returned the
//   wrong values for every input except the empty string. The free-function declaration is gone from slice_18.hpp;
//   tests/ps_particle_context_test.cpp checks the canonical member instead.


// 0x637b48 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode16getParticleCountEv
//   CGlitchNewParticleSystemSceneNode::getParticleCount (partial: element count (end-begin)/156 is
// computed in the pseudocode with a multiply by the inverse of 39; the container offsets are not modelled)
std::size_t CGlitchNewParticleSystemSceneNode_getParticleCount(const void*) {
    return 0;
}

// 0x637cf4 _ZN6glitch2ps12GNPSParticleC1ERKS1_
//   GNPSParticle::GNPSParticle(const GNPSParticle&). Verified against Hex-Rays 0x637cf4: thirty-nine
//   consecutive word copies, dst[0..38] = src[0..38], and no other statement. The port's record is the
//   same 39-word (156-byte) image, so one memcpy is the same operation.
void GNPSParticle_copy(float* dst, const float* src) {
    std::memcpy(dst, src, kGNPSParticleFloats * sizeof(float));
}

// 0x637e30 _ZN6glitch2ps12GNPSParticleaSERKS1_
//   GNPSParticle::operator=. Verified against Hex-Rays 0x637e30: byte-for-byte the same 39-word copy
//   as the copy constructor, returning the destination.
void GNPSParticle_assign(float* dst, const float* src) {
    std::memcpy(dst, src, kGNPSParticleFloats * sizeof(float));
}

// 0x638014 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE8getPRandEv
//   IParticleSystem::getPRand: returns the address of the random member at +4.
void* IParticleSystem_getPRand(void* self) {
    return static_cast<char*>(self) + 4;
}

// 0x638040 _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE9initPSizeEPS2_S4_
//   GNPSSizeModel::initPSize. model[1] = base (+4), model[2] = range (+8), model[4] = scale (+16).
// Partial: the random source is passed in; the original fetches it through the getPRand vtable slot.
// Writes particle +0x64 (value) and +0x60 (value * scale).
void GNPSSizeModel_initPSize(const float* model, float* first, float* last, PSRandom* random, PSDrawFn draw) {
    const float base = model[1];
    const float range = model[2];
    const float scale = model[4];
    for (float* p = first; p != last; p += kGNPSParticleFloats) {
        float r = draw(random);
        float value = ((range * r + range * r) - range) + base;
        p[25] = value;
        p[24] = value * scale;
    }
}

// 0x638684 _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE9initPLifeEPS2_S4_
//   GNPSLifeModel::initPLife. base (+4), range (+8). Partial: same random-source note as initPSize.
// Writes particle +0x58 = 0 and +0x5c = base + (range * r - 0.5 * range).
void GNPSLifeModel_initPLife(const float* model, float* first, float* last, PSRandom* random, PSDrawFn draw) {
    const float base = model[1];
    const float range = model[2];
    for (float* p = first; p != last; p += kGNPSParticleFloats) {
        float r = draw(random);
        p[22] = 0.0f;
        p[23] = base + (range * r + range * -0.5f);
    }
}

// 0x63877c _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
//   PRenderDataBillboardModel::initPRenderData (both template instances): empty body.
void PRenderDataBillboardModel_initPRenderData(void*, float*, float*) {}

// ---- group 4: partial stubs --------------------------------------------------

// 0x637be4 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE4initEv
//   IParticleSystem::init (partial: the nine vtable slot calls are not modelled)
void IParticleSystem_init(void*) {}

// 0x6380ec _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE10initPColorEPS2_S4_
//   GNPSColorModel::initPColor (partial: 5082-byte body not reconstructed)
void GNPSColorModel_initPColor(void*, float*, float*) {}

// 0x638544 _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEE13initPPositionEPS2_S4_
//   PEmitterModel::initPPosition (partial: emitter shape dispatch not modelled)
void PEmitterModel_initPPosition(void*, float*, float*) {}

// 0x638728 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
// 0x638790 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
//   Verified against Hex-Rays (both addresses, identical bodies): the render stream word at +0x10 is
//   copied into the sret slot and its reference count at target +0x00 is incremented when non-null.
//   The previous note blamed the "+16 reference copy" for blocking the row; it is a plain word copy
//   plus an increment, and that is what is written here.
void* PRenderDataBillboardModel_getRenderVertexStreams(void* self, void* result) {
    void* stream = rd::stream(self);
    *static_cast<void**>(result) = stream;
    if (stream) {
        ++*static_cast<int*>(stream);
    }
    return result;
}

// 0x638764 _ZNK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
// 0x6387cc _ZNK6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
//   Verified against Hex-Rays (both addresses): return *(_DWORD *)(a1 + 152); — the word at +0x98.
//   The old note claimed the stand-in "does not expose member +152"; the view above names it.
std::uint32_t PRenderDataBillboardModel_getRenderBufferSizeNeeded(const void* self) {
    return rd::sizeNeeded(self);
}

// 0x638954 _ZN6glitch2ps22PSGenericPositionBakerINS0_12GNPSParticleEE21convertVertexPositionEPKS2_jjRKNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEE
//   PSGenericPositionBaker::convertVertexPosition (partial: matrix transform not modelled)
void PSGenericPositionBaker_convertVertexPosition(void*, float*, float*) {}

// 0x63904c _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE10applyPLifeEPS2_S4_
//   GNPSLifeModel::applyPLife (partial: std::remove_if and vector erase not modelled)
void GNPSLifeModel_applyPLife(void*, float*, float*) {}

// 0x639884 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
// 0x639ad0 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
//   PRenderDataBillboardModel::applyPRenderData (partial: 3.4 KB bodies not modelled)
void PRenderDataBillboardModel_applyPRenderData(void*, float*, float*) {}

// 0x63b0fc _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12applyPForcesEPS2_S4_
//   PForcesModel::applyPForces (partial: priority sort and vtable apply loop not modelled)
void PForcesModel_applyPForces(void*, float*, float*) {}

// 0x63b188 _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE16initPForcesModelEv
//   PForcesModel::initPForcesModel (partial: priority sort not modelled)
void PForcesModel_initPForcesModel(void*) {}

// 0x63b1d0 _ZNK6glitch7collada33CGlitchNewParticleSystemSceneNode14getBoundingBoxEv
//   CGlitchNewParticleSystemSceneNode::getBoundingBox (partial: static bounding box initialisation not modelled)
float* CGlitchNewParticleSystemSceneNode_getBoundingBox(void*) {
    return nullptr;
}

// 0x63b560 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEEC2Ev
//   IParticleContext::IParticleContext (partial: map insert of the AnimationDatabase hash not modelled)
void IParticleContext_ctor(void*) {}

// 0x63b620 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode19onRegisterSceneNodeEv
//   CGlitchNewParticleSystemSceneNode::onRegisterSceneNode (partial: vtable slot calls not modelled)
void CGlitchNewParticleSystemSceneNode_onRegisterSceneNode(void*) {}

// 0x63b6c4 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16deallocateBufferEv
// 0x63b760 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16deallocateBufferEv
//   PRenderDataBillboardModel::deallocateBuffer (partial: PS_FREE and IBuffer::reset not modelled)
void PRenderDataBillboardModel_deallocateBuffer(void*) {}

// 0x63b70c _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
// 0x63b7a8 _ZN6glitch2ps25PRenderDataBillboardModelINS0_12GNPSParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
//   PRenderDataBillboardModel::setRenderBuffer (partial: IBuffer::reset not modelled)
void PRenderDataBillboardModel_setRenderBuffer(void*, void*, std::uint32_t) {}

// 0x63b7fc _ZN6glitch2ps24PSBillboardPositionBakerINS0_12GNPSParticleEE28getPerParticleSystemPositionEPKNS0_16IParticleContextIS2_EEPKNS_4core8CMatrix4IfEE
//   PSBillboardPositionBaker::getPerParticleSystemPosition (partial: matrix math not modelled)
void PSBillboardPositionBaker_getPerParticleSystemPosition(void*, const float*) {}

// 0x63beec _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE12applyPMotionEPS2_S4_
//   GNPSMotionModel::applyPMotion (partial: random draws and vector normalise not modelled)
void GNPSMotionModel_applyPMotion(void*, float*, float*) {}

// 0x63c388 _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE10applyPSizeEPS2_S4_
//   GNPSSizeModel::applyPSize (partial: SAnimationAccessor getLength and getValue not modelled)
void GNPSSizeModel_applyPSize(void*, float*, float*) {}

// 0x63c4c8 _ZN6glitch2ps13PEmitterModelINS0_12GNPSParticleEE17initPEmitterModelEv
//   PEmitterModel::initPEmitterModel (partial: shape dispatch and PDSphere/PDBox/PDCylinder ctors not modelled)
void PEmitterModel_initPEmitterModel(void*) {}

// 0x63c5a8 _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
//   GNPSColorModel::applyPColor (partial: SAnimationAccessor accessors not modelled)
void GNPSColorModel_applyPColor(void*, float*, float*) {}

// 0x63c800 _ZN6glitch2ps22PSGenericPositionBakerINS0_12GNPSParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
//   PSGenericPositionBaker::getPerParticlePosition (partial: normalise and matrix not modelled)
void PSGenericPositionBaker_getPerParticlePosition(void*, const float*) {}

// 0x63cb10 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_12SGNPSEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
//   CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode (partial: base ctor
// vtable stores and addParticleSystem not modelled)
void CGlitchNewParticleSystemSceneNode_ctor(void*, const CColladaDatabase&, SGNPSEmitter*, void*, CRootSceneNode*) {}

// 0x63cc0c _ZN6glitch7collada33CGlitchNewParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_12SGNPSEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
//   CGlitchNewParticleSystemSceneNode::CGlitchNewParticleSystemSceneNode (base-copy form, partial as above)
void CGlitchNewParticleSystemSceneNode_ctorFromBase(void*, const void*, const void*, CRootSceneNode*) {}

// 0x63cce8 _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE9initPSpinEPS2_S4_
//   GNPSSpinModel::initPSpin (partial: random draws and CMatrix4 setup not modelled)
void GNPSSpinModel_initPSpin(void*, float*, float*) {}

// 0x63d390 _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE10applyPSpinEPS2_S4_
//   GNPSSpinModel::applyPSpin (partial: CMatrix4 and SAnimationAccessor not modelled)
void GNPSSpinModel_applyPSpin(void*, float*, float*) {}

// 0x63da68 _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEPNS0_6PForceIS2_EE
//   PForcesModel::removePForce(PForce*) (partial: std::find_if and memmove not modelled)
void PForcesModel_removePForce(void*, PForce*) {}

// 0x63dc3c _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE12removePForceEi
//   PForcesModel::removePForce(int) (partial: force destructor call and memmove not modelled)
void PForcesModel_removePForceIndex(void*, int) {}

// 0x63db4c _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
//   CGlitchNewParticleSystemSceneNode::attach (partial: scene-node UID lookup and child list not modelled)
void CGlitchNewParticleSystemSceneNode_attach(void*, void*) {}

}  // namespace glitch::collada::recon_18
