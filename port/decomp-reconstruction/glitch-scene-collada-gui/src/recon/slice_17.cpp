// Slice 17 reconstruction. Rows 1-44 (animation) and the empty, deleting, and
// thunk destructors are not in this file; see ledger_parts/slice_17.csv.
#include "glitch-scene-collada-gui/recon/slice_17.hpp"

#include <cmath>
#include <cstring>

namespace glitch::collada::recon_17 {

namespace {

core::vector3d<float> normalizedOrSelf(const core::vector3d<float>& dir) {
    const float length = std::sqrt(dir.X * dir.X + dir.Y * dir.Y + dir.Z * dir.Z);
    if (length == 0.0f) {
        return dir;
    }
    return {dir.X / length, dir.Y / length, dir.Z / length};
}

float lockAxisImpl(AxisLockContext& ctx, std::uint32_t axis, const core::vector3d<float>& dir) {
    if (axis >= 3) {  // guard added; the binary does not check
        return 0.0f;
    }
    ctx.axisLocked[axis] = true;
    const core::vector3d<float> n = normalizedOrSelf(dir);
    ctx.axisHalf[axis][0] = n.X * 0.5f;
    ctx.axisHalf[axis][1] = n.Y * 0.5f;
    ctx.axisHalf[axis][2] = n.Z * 0.5f;
    return ctx.axisHalf[axis][0];
}

}  // namespace

// 0x62fe78 _ZN6glitch2ps8PSRandom4RandEv
double PSRandomRand(RandomState& self) {
    // 48271 * (seed % 44488) + 3399 * (seed / -44488), 32-bit wrap as in the binary.
    const auto a = static_cast<std::uint32_t>(48271 * (self.seed % 44488));
    const auto b = static_cast<std::uint32_t>(3399 * (self.seed / -44488));
    std::int32_t v = static_cast<std::int32_t>(a + b);
    if (v < 0) {
        v = static_cast<std::int32_t>(static_cast<std::uint32_t>(v) + 0x7FFFFFFFu);
    }
    self.seed = v;
    return static_cast<double>(v) / 2147483650.0;
}

// 0x630abc _ZN6glitch2ps10PDeflector22GetFrictionCoefficientEffff
float GetFrictionCoefficient(float coefficient, float speed, float scale, float rate) {
    if (coefficient == 0.0f) {
        return 1.0f;
    }
    if (coefficient == 1.0f) {
        return 0.0f;
    }
    if (scale * 0.07f <= speed) {
        return 1.0f - coefficient;
    }
    if (scale * 0.035f > speed) {
        return std::exp(rate * std::log(1.0f - coefficient));
    }
    const float t = ((speed / scale) / 0.035f) - 1.0f;
    const float v6 = 1.0f - coefficient;
    const float v7 = rate * std::log(1.0f - coefficient);
    return (v6 * t) + ((1.0f - t) * std::exp(v7));
}

// 0x6309ac _ZN6glitch2ps16IParticleContextINS0_9SParticleEE8lockAxisEjNS_4core8vector3dIfEE
float LockAxisSParticle(AxisLockContext& ctx, std::uint32_t axis, const core::vector3d<float>& dir) {
    return lockAxisImpl(ctx, axis, dir);
}

// 0x630a34 _ZN6glitch2ps16IParticleContextINS0_12GNPSParticleEE8lockAxisEjNS_4core8vector3dIfEE
float LockAxisGNPSParticle(AxisLockContext& ctx, std::uint32_t axis, const core::vector3d<float>& dir) {
    return lockAxisImpl(ctx, axis, dir);
}

// 0x630ee8 _ZNK6glitch7collada15particle_system15CForceSceneNode14getBoundingBoxEv
const core::aabbox3d<float>& ForceSceneNodeBoundingBox() {
    // The binary writes five words (-1, -1, 1, 1, 1) into the static; the min/max split
    // used here is inferred and the sixth word is not written by this function.
    static const core::aabbox3d<float> empty{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}};
    return empty;
}

// 0x62ff08 _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
BufferConfig GetVertexBufferConfig(const void*, const void*) {
    return BufferConfig{4u, false, false};
}

// 0x62ff20 _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
BufferConfig GetIndexBufferConfig(const void*, const void*) {
    return BufferConfig{4u, false, false};
}

// Stub: the slot +0x58 target is not mapped to a particle system method yet.
int DispatchBindForceSlot(const void*, const ForceBinding&) {
    return 0;
}

// 0x630018 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int BindForceGNPSWind(const void* system, const void* parameters, const void* forceVtable) {
    const ForceBinding binding{forceVtable, parameters, 0u, parameters};
    return DispatchBindForceSlot(system, binding);
}

// 0x630090 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int BindForceSWind(const void* system, const void* parameters, const void* forceVtable) {
    const ForceBinding binding{forceVtable, parameters, 0u, parameters};
    return DispatchBindForceSlot(system, binding);
}

// 0x630108 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int BindForceGNPSGravity(const void* system, const void* parameters, const void* forceVtable) {
    const ForceBinding binding{forceVtable, parameters, 0u, parameters};
    return DispatchBindForceSlot(system, binding);
}

// 0x630180 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int BindForceSGravity(const void* system, const void* parameters, const void* forceVtable) {
    const ForceBinding binding{forceVtable, parameters, 0u, parameters};
    return DispatchBindForceSlot(system, binding);
}

// 0x630080 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
// Stub: the binary reads the system pointer and the parameter block from the node.
int WindForceNodeBind(const void*, const void*) {
    return 0;
}

// 0x630170 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
// Stub: same as WindForceNodeBind for the gravity node.
int GravityForceNodeBind(const void*, const void*) {
    return 0;
}

// 0x62ff80 _ZN6glitch7collada12_GLOBAL__N_132getExternalLightSceneNodeDefaultEPKc
const void* GetExternalLightSceneNodeDefault(const char* name) {
    const char* hash = std::strchr(name, '#');
    const char* key = hash != nullptr ? hash + 1 : name;
    // Stub: the resource lookup is not mapped. The binary then compares the node type
    // tag against kLightSceneNodeTypeTag and returns the node only on a match.
    (void)key;
    return nullptr;
}

// 0x630768 _ZN6glitch7collada15particle_system15CForceSceneNodeD1Ev (and D2 at 0x63081c)
// Stub: the vtable stores and base teardown need the scene node base class.
void ForceSceneNodeDestroyBase(void*) {}

// 0x630868 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeD1Ev
void DeflectorForceSceneNodeDestroy(void*) {}

// 0x6308d4 _ZN6glitch7collada15particle_system19CWindForceSceneNodeD1Ev
void WindForceSceneNodeDestroy(void*) {}

// 0x630940 _ZN6glitch7collada15particle_system22CGravityForceSceneNodeD1Ev
void GravityForceSceneNodeDestroy(void*) {}

// 0x630f6c _ZN6glitch7collada15particle_system15CForceSceneNodeC2ERKNS0_16CColladaDatabaseERKNS0_6SForceE
// Stub: the base constructor and the member copies need the scene node class.
void* ConstructForceSceneNode(void* self, const void*, const void*) {
    return self;
}

// 0x631050 _ZN6glitch7collada15particle_system24CDeflectorForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE
// Stub: as ConstructForceSceneNode; the deflector vtable and the 7-word default are not copied.
void* ConstructDeflectorForceSceneNode(void* self, const void*, const void*) {
    return self;
}

// 0x631168 _ZN6glitch7collada15particle_system19CWindForceSceneNodeC1ERKNS0_16CColladaDatabaseERKNS0_6SForceE
// Stub: as ConstructForceSceneNode.
void* ConstructWindForceSceneNode(void* self, const void*, const void*) {
    return self;
}

// 0x631138 _ZN6glitch7collada15CColladaFactory34createParticleSystemDeflectorForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
// Stub: the binary allocates 0x168 bytes and constructs the node; the class is not in the repo.
void* CreateParticleSystemDeflectorForce(const void*, const void*) {
    return nullptr;
}

// 0x631244 _ZN6glitch7collada15CColladaFactory29createParticleSystemWindForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
// Stub: allocates 0x164 bytes in the binary.
void* CreateParticleSystemWindForce(const void*, const void*) {
    return nullptr;
}

// 0x631274 _ZN6glitch7collada15CColladaFactory32createParticleSystemGravityForceERKNS0_16CColladaDatabaseEPNS0_6SForceE
// Stub: allocates 0x158 bytes in the binary.
void* CreateParticleSystemGravityForce(const void*, const void*) {
    return nullptr;
}

// 0x63133c _ZN6glitch7collada15CColladaFactory29createGlitchNewParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_12SGNPSEmitterEPNS_3res6vectorINSA_6StringEEEPNS0_14CRootSceneNodeE
// Stub: the emitter flag switch (lockAxis calls, flags at +0x21) is not transcribed yet.
void* CreateGlitchNewParticleSystem(const void*, const void*, const void*, const void*, const void*) {
    return nullptr;
}

// 0x631518 _ZN6glitch7collada15CColladaFactory13createCoronasERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SCoronasEPNS0_14CRootSceneNodeE
// Stub: allocates 0x20C bytes in the binary.
void* CreateCoronas(const void*, const void*, const void*, const void*) {
    return nullptr;
}

// 0x631560 _ZN6glitch7collada15CColladaFactory17createModularSkinERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
// Stub: the binary allocates 0x5C bytes, constructs, and stores the result with an add-ref.
void* CreateModularSkin(const void*, const void*, const void*) {
    return nullptr;
}

// 0x6315cc _ZN6glitch7collada15CColladaFactory10createSkinERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
// Stub: allocates 0x9C bytes and stores the result with an add-ref.
void* CreateSkin(const void*, const void*, const void*, const void*) {
    return nullptr;
}

// 0x631628 _ZN6glitch7collada15CColladaFactory11createSceneERKNS0_16CColladaDatabaseE
// Stub: allocates 0x1C4 bytes and constructs the root scene node.
void* CreateScene(const void*) {
    return nullptr;
}

// 0x631650 _ZN6glitch7collada15CColladaFactory21createModularSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
// Stub: allocates 0x184 bytes; the binary passes identity transform words as defaults.
void* CreateModularSkinNode(const void*, const void*, const void*) {
    return nullptr;
}

// 0x6316d0 _ZN6glitch7collada15CColladaFactory14createSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
// Stub: as CreateModularSkinNode, for the skinned mesh node.
void* CreateSkinNode(const void*, const void*, const void*) {
    return nullptr;
}

// 0x631750 _ZN6glitch7collada15CColladaFactory14createMeshNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
// Stub: allocates 320 bytes in the binary.
void* CreateMeshNode(const void*, const void*, const void*) {
    return nullptr;
}

// 0x6317d0 _ZN6glitch7collada15CColladaFactory16createCameraNodeERKNS0_16CColladaDatabaseEPNS0_7SCameraE
// Stub: allocates 0x3A0 bytes in the binary.
void* CreateCameraNode(const void*, const void*) {
    return nullptr;
}

// 0x631830 _ZN6glitch7collada15CColladaFactory15createBillboardERKNS0_16CColladaDatabaseEPNS0_5SNodeE
// Stub: allocates 0x160 bytes, sets the billboard vtables, and runs the scene node base constructor.
void* CreateBillboard(const void*, const void*) {
    return nullptr;
}

// 0x6318c8 _ZN6glitch7collada15CColladaFactory11createMorphERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
// Stub: allocates 0x40 bytes and stores the result with an add-ref.
void* CreateMorph(const void*, const void*, const void*, const void*) {
    return nullptr;
}

}  // namespace glitch::collada::recon_17
