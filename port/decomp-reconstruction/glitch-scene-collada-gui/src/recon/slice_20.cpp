// Slice 20 reconstruction. See include/glitch-scene-collada-gui/recon/slice_20.hpp.
#include "glitch-scene-collada-gui/recon/slice_20.hpp"

#include "glitch-scene-collada-gui/ps_types.hpp"

#include <cstdint>
#include <cstdlib>

namespace glitch::collada::recon_20 {

// SParticle is a 25-float (100-byte) record; see the stride in the 0x64c190 body.
inline constexpr std::size_t kSParticleFloats = 25;

// ---- object views ----------------------------------------------------------------------------
// The particle, render-data and context classes have no member layout in the layout headers, so the
// objects stay opaque (void*) exactly as declared in slice_20.hpp and the members the recovered
// bodies touch are named here with their original offsets. Only the fields a body proves are here.

// glitch::ps::PRenderDataBillboardModel<...>. The class has no member layout in the layout headers,
// so the object stays opaque (void*) exactly as slice_20.hpp declares it and each recovered body
// reads or writes the word it proved, through the offset accessors below. Those accessors use the
// ORIGINAL 32-bit offsets directly (the object here is a view, not a reproduced layout), so the host
// pointer width does not shift anything.
namespace rd {

// glitch::ps::PS_FREE is std::free in the original; this local definition keeps the slice test
// self-contained (the test links only this file, and ps_types.cpp is the file that defines the
// public PS_FREE symbol). The behaviour is identical: the original release path frees the buffer.
inline void psFree(void* p) {
    std::free(p);
}

inline void*& stream(void* self) {  // +0x10, intrusive_ptr target (its count is at target +0x00)
    return *reinterpret_cast<void**>(static_cast<char*>(self) + 0x10);
}
inline bool& ownsBuffer(void* self) {  // +0x8c, cleared by setRenderBuffer
    return *reinterpret_cast<bool*>(static_cast<char*>(self) + 0x8c);
}
inline void*& buffer(void* self) {  // +0x90
    return *reinterpret_cast<void**>(static_cast<char*>(self) + 0x90);
}
inline std::uint32_t& bufferSize(void* self) {  // +0x94
    return *reinterpret_cast<std::uint32_t*>(static_cast<char*>(self) + 0x94);
}
inline std::uint32_t sizeNeeded(const void* self) {  // +0x98
    return *reinterpret_cast<const std::uint32_t*>(static_cast<const char*>(self) + 0x98);
}

}  // namespace rd

// The render stream's IBuffer, reached at stream + 0x14 by the deallocate/setRenderBuffer bodies.
// Only the reset slot the listing calls is named: vtable +0x08 is reset(uint size, const void* data,
// int flags) (the original's call site passes four arguments, the last one unknown).
struct IBufferView {
    void* vtable;  // +0x00
};
using IBufferResetFn = void (*)(void* self, unsigned int size, const void* data, int flags);

inline void* ibufferAt(void* stream) {
    return stream ? *reinterpret_cast<void**>(static_cast<char*>(stream) + 0x14) : nullptr;
}

inline void bufferReset(void* buffer, unsigned int size, const void* data, int flags) {
    if (!buffer) {
        return;
    }
    auto** vtable = *reinterpret_cast<void***>(buffer);
    reinterpret_cast<IBufferResetFn>(vtable[2])(buffer, size, data, flags);
}

// 0x64bb90 _ZNK6glitch7collada24CParticleSystemSceneNode16getParticleCountEv
// PARTIAL: see the note in the ledger. The particle container at this+0x178 is reached through the
// vtable-relative base pointer (this + *(this->vptr - 12) + 0x18), which is a virtual-base adjustment
// the port has no model for, so the count cannot be computed.
int CParticleSystemSceneNode_getParticleCount(const void* self) { return 0; }

// 0x64bbe0 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE4initEv
int IParticleSystem_init(void* self) { return 0; }

// 0x64bcf0 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE8getPRandEv
void* IParticleSystem_getPRand(void* self) { return nullptr; }

// 0x64bd1c _ZN6glitch2ps10PSizeModelINS0_9SParticleEE9initPSizeEPS2_S4_
float PSizeModel_initPSize(void* a1, void* a2, void* a3) { return 0.0f; }

// 0x64be08 _ZN6glitch2ps10PSizeModelINS0_9SParticleEE10applyPSizeEPS2_S4_
float PSizeModel_applyPSize(float result, void* a2, void* a3) { return 0.0f; }

// 0x64bf00 _ZN6glitch2ps11PColorModelINS0_9SParticleEE10initPColorEPS2_S4_
float PColorModel_initPColor(float result, void* a2, void* a3) { return 0.0f; }

// 0x64c08c _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE13initPPositionEPS2_S4_
int PEmitterModel_initPPosition(void* a1, void* a2, void* a3) { return 0; }

// 0x64c190 _ZN6glitch2ps12PMotionModelINS0_9SParticleEE12applyPMotionEPS2_S4_
// Verified against Hex-Rays 0x64c190: for every particle in [a2, a3) (stride 100 bytes = 25 floats)
// the position [0..2] advances by step * velocity [3..5]. The original fetches step from the model's
// own scaled-time word at +0x50 (this + *(this->vptr - 12) + 80) before the loop; the stand-in has no
// model layout or vtable, so the step is the first argument, exactly as the queue's signature has it.
// Deviation: the array is walked as 25-float records instead of the original's byte stride.
float PMotionModel_applyPMotion(float step, void* a2, void* a3) {
    float* first = static_cast<float*>(a2);
    float* last = static_cast<float*>(a3);
    for (float* p = first; p != last; p += kSParticleFloats) {
        p[0] = p[0] + step * p[3];
        p[1] = p[1] + step * p[4];
        p[2] = p[2] + step * p[5];
    }
    return step;
}

// 0x64c25c _ZN6glitch2ps10PSpinModelINS0_9SParticleEE10applyPSpinEPS2_S4_
float PSpinModel_applyPSpin(float result, void* a2, void* a3) { return 0.0f; }

// 0x64c2fc _ZN6glitch2ps10PLifeModelINS0_9SParticleEE9initPLifeEPS2_S4_
float PLifeModel_initPLife(void* a1, void* a2, void* a3) { return 0.0f; }

// 0x64c3f4 _ZN6glitch2ps10PLifeModelINS0_9SParticleEE10applyPLifeEPS2_S4_
float PLifeModel_applyPLife(float result, void* a2, void* a3) { return 0.0f; }

// 0x64c448 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
// Verified against Hex-Rays 0x64c448 (5 statements): v2 = *(void**)(a2 + 16); *result = v2;
// if (v2) ++*(int*)v2; return result; 鈥?an intrusive_ptr copy of the render stream word at +0x10.
// The stand-in holds the count at +0x00 of the target because that is what the listing increments.
void* RDB_NullColor_getRenderVertexStreams(void* result, void* a2) {
    void* stream = rd::stream(a2);
    *static_cast<void**>(result) = stream;
    if (stream) {
        ++*static_cast<int*>(stream);
    }
    return result;
}

// 0x64c484 _ZNK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
// Verified against Hex-Rays 0x64c484: return *(_DWORD *)(a1 + 152); 鈥?the size needed word at +0x98.
int RDB_NullColor_getRenderBufferSizeNeeded(const void* a1) {
    return static_cast<int>(rd::sizeNeeded(a1));
}

// 0x64c49c _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
// Verified against Hex-Rays 0x64c49c: the body is a single `;`, i.e. empty. The current signature is
// the declaration's (no parameters), so the row is reconstructed as an empty body.
void RDB_NullColor_initPRenderData() {}

// 0x64c4b0 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE22getRenderVertexStreamsEv
// Verified against Hex-Rays 0x64c4b0: byte-for-byte the same body as 0x64c448 (the billboard-colour
// instantiation differs only in its vtable and its baker types, neither of which the body reads).
void* RDB_BillboardColor_getRenderVertexStreams(void* result, void* a2) {
    void* stream = rd::stream(a2);
    *static_cast<void**>(result) = stream;
    if (stream) {
        ++*static_cast<int*>(stream);
    }
    return result;
}

// 0x64c4ec _ZNK6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE25getRenderBufferSizeNeededEv
// Verified against Hex-Rays 0x64c4ec: return *(_DWORD *)(a1 + 152); 鈥?same body as 0x64c484.
int RDB_BillboardColor_getRenderBufferSizeNeeded(const void* a1) {
    return static_cast<int>(rd::sizeNeeded(a1));
}

// 0x64c504 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15initPRenderDataEPS2_SD_
// Verified against Hex-Rays 0x64c504: the body is a single `;`, i.e. empty, as 0x64c49c.
void RDB_BillboardColor_initPRenderData() {}

// 0x64c674 _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE21convertVertexPositionEPKS2_jjRKNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEE
float PSGenericPositionBaker_convertVertexPosition(float* a1, int a2, int a3, void* a4) { return 0.0f; }

// 0x64ce44 _ZNK6glitch7collada24CParticleSystemSceneNode14getBoundingBoxEv
void* CParticleSystemSceneNode_getBoundingBox(const void* self) { return nullptr; }

// 0x64d0bc _ZN6glitch2ps16IParticleContextINS0_9SParticleEE10hashStringEPKc
// Retired from this slice: the symbol is defined by the canonical member
// glitch::ps::IParticleContext<SParticle>::hashString (include/glitch-scene-collada-gui/ps/IParticleSystem.hpp,
// instantiated in src/ps/IParticleContext.cpp). The copy that stood here had the right fold, so the slice test's
// three cases (empty, "a", 0xff) all still hold; it was retired so the library defines the symbol once.
// tests/ps_particle_context_test.cpp checks the canonical member.

// 0x64d1d0 _ZN6glitch2ps16IParticleContextINS0_9SParticleEEC2Ev
void* IParticleContext_ctor(void* self) { return nullptr; }

// 0x64d298 _ZN6glitch2ps16IParticleContextINS0_9SParticleEED2Ev
int IParticleContext_dtor(void* self) { return 0; }

// 0x64d3f0 _ZN6glitch2ps13PEmitterModelINS0_9SParticleEED1Ev
int PEmitterModel_dtor(void* self) { return 0; }

// 0x64d5bc _ZN6glitch2ps16IParticleContextINS0_9SParticleEED1Ev
int IParticleContext_dtor_variant(void* self) { return 0; }

// 0x64d64c _ZN6glitch2ps12PForcesModelINS0_9SParticleEED1Ev
void* PForcesModel_dtor(void* self) { return nullptr; }

// 0x64d710 _ZN6glitch2ps12PForcesModelINS0_9SParticleEED2Ev
void* PForcesModel_dtor_vtt(void* self, void* vtt) { return nullptr; }

// 0x64d948 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12applyPForcesEPS2_S4_
char* PForcesModel_applyPForces(char* result, void* a2, void* a3) { return nullptr; }

// 0x64d9d4 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE16initPForcesModelEv
char* PForcesModel_initPForcesModel(char* result) { return nullptr; }

// 0x64da1c _ZN6glitch7collada24CParticleSystemSceneNode19onRegisterSceneNodeEv
int CParticleSystemSceneNode_onRegisterSceneNode(void* self) { return 0; }

// 0x64dac0 _ZN6glitch7collada24CParticleSystemSceneNode9onAnimateEj
int CParticleSystemSceneNode_onAnimate(void* self, unsigned int a2) { return 0; }

// 0x64dba0 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16deallocateBufferEv
// Verified against Hex-Rays 0x64dba0 (5 statements): if the render buffer word at +0x90 is set AND the
// ownership byte at +0x8c is set, PS_FREE it, clear the word and reset the stream's IBuffer with
// (size 0, data null, 0). The IBuffer object is reached through the render stream at +0x10, whose
// +0x14 holds it; reset is the IBuffer slot at vtable +0x34 with the original's four arguments.
void RDB_BillboardColor_deallocateBuffer(void* a1) {
    if (rd::buffer(a1) && rd::ownsBuffer(a1)) {
        rd::psFree(rd::buffer(a1));
        void* stream = rd::stream(a1);
        rd::buffer(a1) = nullptr;
        bufferReset(ibufferAt(stream), 0, nullptr, 0);
    }
}

// 0x64dbe8 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE15setRenderBufferEPvj
// Verified against Hex-Rays 0x64dbe8 (6 statements): only when the incoming pointer is non-null does it
// deallocate the old buffer, store the new pointer at +0x90 and its size at +0x94, clear the ownership
// byte at +0x8c and reset the stream's IBuffer with (size, data, 0). The null case does nothing.
void RDB_BillboardColor_setRenderBuffer(void* a1, void* a2, unsigned int a3) {
    if (!a2) {
        return;
    }
    RDB_BillboardColor_deallocateBuffer(a1);
    void* stream = rd::stream(a1);
    rd::ownsBuffer(a1) = false;
    rd::buffer(a1) = a2;
    rd::bufferSize(a1) = a3;
    bufferReset(ibufferAt(stream), a3, a2, 0);
}

// 0x64dc3c _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16deallocateBufferEv
// Verified against Hex-Rays 0x64dc3c: same body as 0x64dba0; the two instantiations in this cluster
// differ only in their template arguments, which the body does not read.
void RDB_NullColor_deallocateBuffer(void* a1) {
    if (rd::buffer(a1) && rd::ownsBuffer(a1)) {
        rd::psFree(rd::buffer(a1));
        void* stream = rd::stream(a1);
        rd::buffer(a1) = nullptr;
        bufferReset(ibufferAt(stream), 0, nullptr, 0);
    }
}

// 0x64dc84 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE15setRenderBufferEPvj
// Verified against Hex-Rays 0x64dc84: same body as 0x64dbe8.
void RDB_NullColor_setRenderBuffer(void* a1, void* a2, unsigned int a3) {
    if (!a2) {
        return;
    }
    RDB_NullColor_deallocateBuffer(a1);
    void* stream = rd::stream(a1);
    rd::ownsBuffer(a1) = false;
    rd::buffer(a1) = a2;
    rd::bufferSize(a1) = a3;
    bufferReset(ibufferAt(stream), a3, a2, 0);
}

// 0x64dcd8 _ZN6glitch2ps24PSBillboardPositionBakerINS0_9SParticleEE28getPerParticleSystemPositionEPKNS0_16IParticleContextIS2_EEPKNS_4core8CMatrix4IfEE
float PSBillboardPositionBaker_getPerParticleSystemPosition(void* a1, const void* a2) { return 0.0f; }

// 0x64e3c8 _ZN6glitch2ps10PSpinModelINS0_9SParticleEE9initPSpinEPS2_S4_
void* PSpinModel_initPSpin(void* a1, void* a2, void* a3) { return nullptr; }

// 0x64e750 _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE17initPEmitterModelEv
int PEmitterModel_initPEmitterModel(void* result) { return 0; }

// 0x64e830 _ZN6glitch2ps11PColorModelINS0_9SParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
float PColorModel_applyPColor(float* a1, void* a2, void* a3, void* a4) { return 0.0f; }

// 0x64ea84 _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_
float PSGenericPositionBaker_getPerParticlePosition(void* a1, const void* a2) { return 0.0f; }

// 0x64ecac _ZN6glitch7collada24CParticleSystemSceneNodeD1Ev
void CParticleSystemSceneNode_dtor(void* self) {}

// 0x64ed34 _ZN6glitch7collada24CParticleSystemSceneNodeD2Ev
void CParticleSystemSceneNode_dtor_vtt(void* self, void* vtt) {}

// 0x64ed94 _ZN6glitch7collada24CParticleSystemSceneNodeC1ERKNS0_16CColladaDatabaseERNS0_8SEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
void* CParticleSystemSceneNode_ctor(void* self, void* a2, void* a3) { return nullptr; }

// 0x64ee44 _ZN6glitch7collada24CParticleSystemSceneNodeC2ERKNS0_16CColladaDatabaseERNS0_8SEmitterEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
void* CParticleSystemSceneNode_ctor_alt(void* self, void* a2, int a3, void* a4) { return nullptr; }

// 0x64f190 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE9addPForceEPNS0_6PForceIS2_EE
int PForcesModel_addPForce(void* self, void* force) { return 0; }

// 0x64f278 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEPNS0_6PForceIS2_EE
char* PForcesModel_removePForce_byPointer(void* self, void* force) { return nullptr; }

// 0x64f318 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEi
int PForcesModel_removePForce_byIndex(void* self, int index) { return 0; }

// 0x64f39c _ZN6glitch7collada24CParticleSystemSceneNode18deleteSharedBufferEv
void* CParticleSystemSceneNode_deleteSharedBuffer(void* self) { return nullptr; }

// 0x64f454 _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS3_EENS0_22PSBillboardNormalBakerIS3_EENS0_24PSBillboardPositionBakerIS3_EENS0_25PSBillboardTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
int PSManager_createParticleSystem_Mixin_dtor(void* a1) { return 0; }

// 0x64f6f8 _ZN6glitch7collada24CParticleSystemSceneNode6attachEPNS_5scene10ISceneNodeE
void CParticleSystemSceneNode_attach(void* self, void* node) {}

// 0x64fc50 _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE19initGenerationModelEv
int PGenerationModel_initGenerationModel(void* a1) { return 0; }

// 0x64fcbc _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIPNS_7collada10SAnimationEEEvPKcT_
unsigned int IParticleContext_setParameter_SAnimation(void* a1, const char* a2, void* a3) { return 0u; }

// 0x64fd60 _ZN6glitch7collada24CParticleSystemSceneNode4initEv
int CParticleSystemSceneNode_init(void* self) { return 0; }

// 0x6501d4 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIiEEvPKcT_
unsigned int IParticleContext_setParameter_int(void* a1, const char* a2, int a3) { return 0u; }

// 0x650278 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterINS_3res9SFixedVecIfLj3EEEEEvPKcT_
unsigned int IParticleContext_setParameter_SFixedVec3(void* a1, const char* a2, int a3, int a4, int a5) { return 0u; }

// 0x650340 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterINS_4core8vector3dIfEEEEvPKcT_
unsigned int IParticleContext_setParameter_vector3d(void* a1, const char* a2, void* a3) { return 0u; }

// 0x650400 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIfEEvPKcT_
unsigned int IParticleContext_setParameter_float(void* a1, const char* a2, int a3) { return 0u; }

// 0x6504a4 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIN5boost13intrusive_ptrINS_5video7IBufferEEEEEvPKcT_.clone.7
void* IParticleContext_setParameter_intrusive_ptr_IBuffer(void* a1, void* a2) { return nullptr; }

// 0x650574 _ZN6glitch2ps16IParticleContextINS0_9SParticleEE12setParameterIPNS_5scene11CMeshBufferEEEvPKcT_.clone.8
unsigned int IParticleContext_setParameter_CMeshBuffer(void* a1, void* a2) { return 0u; }

// 0x651924 _ZN6glitch7collada24CParticleSystemSceneNode26getParticleSystemParameterEPKc
int CParticleSystemSceneNode_getParticleSystemParameter(void* self, const char* a2) { return 0; }

// 0x651eec _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
int RDB_BillboardColor_applyPRenderData(void* a1, float* a2, float* a3) { return 0; }

// 0x652138 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE16applyPRenderDataEPS2_SD_
float* RDB_NullColor_applyPRenderData(void* a1, float* a2, float* a3) { return nullptr; }

// 0x652384 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEE20initPRenderDataModelEv
unsigned int RDB_BillboardColor_initPRenderDataModel(void* a1) { return 0u; }

// 0x6524dc _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEE20initPRenderDataModelEv
unsigned int RDB_NullColor_initPRenderDataModel(void* a1) { return 0u; }

// 0x65317c _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE17generateParticlesEv
int PGenerationModel_generateParticles(float* a1) { return 0; }

// 0x653704 _ZZN6glitch2ps9PSManager20createParticleSystemINS0_9SParticleENS0_16PGenerationModelIS3_EENS0_10PSizeModelIS3_EENS0_11PColorModelIS3_EENS0_13PEmitterModelIS3_EENS0_12PMotionModelIS3_EENS0_12PForcesModelIS3_EENS0_10PSpinModelIS3_EENS0_10PLifeModelIS3_EENS0_25PRenderDataBillboardModelIS3_NS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS3_EENS0_20PSGenericNormalBakerIS3_EENS0_22PSGenericPositionBakerIS3_EENS0_23PSGenericTexCoordsBakerIS3_EEEEEEPNS0_15IParticleSystemIT_EEvEN5MixinD1Ev
int PSManager_createParticleSystem_Mixin_dtor_variant(void* a1) { return 0; }

// 0x6539a8 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_21PSBillboardColorBakerIS2_EENS0_22PSBillboardNormalBakerIS2_EENS0_24PSBillboardPositionBakerIS2_EENS0_25PSBillboardTexCoordsBakerIS2_EEED1Ev
int RDB_BillboardColor_dtor(void* a1) { return 0; }

// 0x653ab0 _ZN6glitch2ps25PRenderDataBillboardModelINS0_9SParticleENS0_27PSNullShaderParametersBakerENS0_16PSNullColorBakerIS2_EENS0_20PSGenericNormalBakerIS2_EENS0_22PSGenericPositionBakerIS2_EENS0_23PSGenericTexCoordsBakerIS2_EEED1Ev
int RDB_NullColor_dtor(void* a1) { return 0; }

// 0x653bb8 _ZN6glitch2ps12PMotionModelINS0_9SParticleEE11initPMotionEPS2_S4_
float PMotionModel_initPMotion(void* a1, float* a2, float* a3) { return 0.0f; }

// 0x6540ec _ZN6glitch2ps12PMotionModelINS0_9SParticleEEC2Ev
void* PMotionModel_ctor(void* a1, void* a2) { return nullptr; }

// 0x654218 _ZN6glitch2ps10PSpinModelINS0_9SParticleEEC2Ev
void* PSpinModel_ctor(void* a1, void* a2) { return nullptr; }

// 0x6543f8 _ZN6glitch2ps10PSizeModelINS0_9SParticleEEC2Ev
void* PSizeModel_ctor(void* a1, void* a2) { return nullptr; }

// 0x65452c _ZN6glitch2ps10PLifeModelINS0_9SParticleEEC2Ev
void* PLifeModel_ctor(void* a1, void* a2) { return nullptr; }

}  // namespace glitch::collada::recon_20
