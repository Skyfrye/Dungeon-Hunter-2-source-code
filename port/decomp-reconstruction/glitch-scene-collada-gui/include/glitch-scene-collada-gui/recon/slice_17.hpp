// Slice 17 reconstruction: free functions and minimal stand-in types for rows that
// have no usable declaration in an existing header. Nothing here edits an existing
// header. Offsets of stand-in members are kept as comments (// +0x..).
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::collada::recon_17 {

// glitch::ps::PSRandom stand-in: the generator state is one signed word at +0x00.
struct RandomState {
    std::int32_t seed;  // +0x00
};

// glitch::ps::PSRandom::Rand. Schrage-style step; the result is the new seed scaled
// by the divisor the binary uses (2147483650.0).
double PSRandomRand(RandomState& self);

// glitch::ps::PDeflector::GetFrictionCoefficient. Parameter names are inferred from
// how the body uses them (coefficient = a2, speed = a3, scale = a4, rate = a5).
float GetFrictionCoefficient(float coefficient, float speed, float scale, float rate);

// Stand-in for glitch::ps::IParticleContext<T> axis-lock state. The flags sit at +0x04
// and the half-axis vectors at +0x08 with a 12-byte stride per axis index.
struct AxisLockContext {
    std::uint8_t header[4];       // +0x00 (not used by the lock)
    bool axisLocked[3];           // +0x04
    float axisHalf[3][3];         // +0x08, 12-byte stride per axis
};
static_assert(offsetof(AxisLockContext, axisLocked) == 0x04, "axisLocked must be at +0x04");
static_assert(offsetof(AxisLockContext, axisHalf) == 0x08, "axisHalf must be at +0x08");

// IParticleContext<SParticle>::lockAxis and IParticleContext<GNPSParticle>::lockAxis.
// Both bodies are the same; each sets axisLocked[axis] and stores half of the
// normalized direction. Returns the x half component. The normalize step is assumed
// to be the usual unit-length divide (not verified against the binary).
float LockAxisSParticle(AxisLockContext& ctx, std::uint32_t axis, const core::vector3d<float>& dir);
float LockAxisGNPSParticle(AxisLockContext& ctx, std::uint32_t axis, const core::vector3d<float>& dir);

// CForceSceneNode::getBoundingBox. Returns a static unit-range sentinel box.
const core::aabbox3d<float>& ForceSceneNodeBoundingBox();

// CColladaFactory::getVertexBufferConfig and getIndexBufferConfig output. Field names
// are placeholders: the binary writes the three values only.
struct BufferConfig {
    std::uint32_t kind;  // +0x00 (value 4 in both getters)
    bool flag4;          // +0x04 (0)
    bool flag5;          // +0x05 (0)
};
BufferConfig GetVertexBufferConfig(const void* database, const void* geometry);
BufferConfig GetIndexBufferConfig(const void* database, const void* geometry);

// Force binding proxy (16 bytes): vtable, parameters pointer, zero word, parameters
// pointer again. The bindForce template allocates it and dispatches through the
// particle system vtable slot +0x58.
struct ForceBinding {
    const void* vtable;          // +0x00
    const void* parameters;      // +0x04
    std::uintptr_t reserved;     // +0x08 (zero)
    const void* parametersCopy;  // +0x0c
};
// Stub for the slot +0x58 dispatch; the target is not mapped yet.
int DispatchBindForceSlot(const void* system, const ForceBinding& binding);
// IParticleSystem<T>::bindForce<PWind|PGravity>. Partial: allocation is reconstructed,
// the slot dispatch is stubbed.
int BindForceGNPSWind(const void* system, const void* parameters, const void* forceVtable);
int BindForceSWind(const void* system, const void* parameters, const void* forceVtable);
int BindForceGNPSGravity(const void* system, const void* parameters, const void* forceVtable);
int BindForceSGravity(const void* system, const void* parameters, const void* forceVtable);

// CWindForceSceneNode::bind and CGravityForceSceneNode::bind. The node keeps the
// particle system pointer at +0x178 (376) and its own parameters at +0x140 (320).
int WindForceNodeBind(const void* node, const void* system);
int GravityForceNodeBind(const void* node, const void* system);

// getExternalLightSceneNodeDefault: strips a leading '#', looks the name up through the
// resource file manager, and returns the node only when its type tag matches.
// Partial: the lookup is stubbed (the resource manager is not in the repo).
inline constexpr std::uint32_t kLightSceneNodeTypeTag = 1952999276u;  // type tag compared
const void* GetExternalLightSceneNodeDefault(const char* name);

// Destructor bodies that remain: partial stubs, the classes are not in the repo.
void ForceSceneNodeDestroyBase(void* self);            // ~CForceSceneNode (D1) / (D2)
void DeflectorForceSceneNodeDestroy(void* self);        // ~CDeflectorForceSceneNode (D1)
void WindForceSceneNodeDestroy(void* self);             // ~CWindForceSceneNode (D1)
void GravityForceSceneNodeDestroy(void* self);          // ~CGravityForceSceneNode (D1)

// Constructors and factories. Stubs: each needs the scene node or force class
// definition, which is not in the repo. Allocation sizes are kept in the bodies.
void* ConstructForceSceneNode(void* self, const void* database, const void* force);
void* ConstructDeflectorForceSceneNode(void* self, const void* database, const void* force);
void* ConstructWindForceSceneNode(void* self, const void* database, const void* force);
void* CreateParticleSystemDeflectorForce(const void* database, const void* force);
void* CreateParticleSystemWindForce(const void* database, const void* force);
void* CreateParticleSystemGravityForce(const void* database, const void* force);
void* CreateGlitchNewParticleSystem(const void* database, const void* driver, const void* emitter,
                                    const void* names, const void* root);
void* CreateCoronas(const void* database, const void* driver, const void* coronas, const void* root);
void* CreateModularSkin(const void* database, const void* modularSkin, const void* root);
void* CreateSkin(const void* database, const void* driver, const void* controller, const void* root);
void* CreateScene(const void* database);
void* CreateModularSkinNode(const void* database, const void* mesh, const void* parent);
void* CreateSkinNode(const void* database, const void* mesh, const void* parent);
void* CreateMeshNode(const void* database, const void* mesh, const void* parent);
void* CreateCameraNode(const void* database, const void* camera);
void* CreateBillboard(const void* database, const void* node);
void* CreateMorph(const void* database, const void* driver, const void* controller, const void* root);

}  // namespace glitch::collada::recon_17
