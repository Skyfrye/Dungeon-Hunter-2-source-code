// Slice 33 reconstruction: CColladaBinaryFileLoader constructors, the collada skin
// technique prepare hooks, SAnimationAccessor::findKeyFrameNo and scene node
// attribute (de)serialization, particle emitter and affector attribute code, the
// scene collision manager, and a few collada and terrain helpers.
//
// Every class here is a stand-in named after the original. The original classes are
// not declared in any header of this category with the members these bodies need, and
// the existing headers must not be edited by this slice, so every body is a free
// function that takes its object by reference. Field offsets are kept as comments.
// IAttributesStandIn method names come from call shape only: the vtable slot numbers
// are noted, but the slot-to-name mapping is not verified against the io interface.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"

namespace glitch::collada::recon_33 {

// ---------------------------------------------------------------------------
// Stand-in interfaces
// ---------------------------------------------------------------------------

struct ITextureStandIn;
struct IMeshStandIn;
struct ISceneNodeStandIn;

// glitch::io::IAttributes. Slot numbers are the vtable offsets used by the original
// calls; the names are inferred from the call shape.
class IAttributesStandIn {
public:
    virtual ~IAttributesStandIn() = default;

    virtual void addBool(const char* name, bool value) = 0;                       // +0xd8
    virtual bool getBool(const char* name) = 0;                                   // +0xe4
    virtual void addInt(const char* name, std::int32_t value) = 0;                // +0x4c
    virtual std::int32_t getInt(const char* name) = 0;                            // +0x58
    virtual void addFloat(const char* name, float value) = 0;                     // +0x64
    virtual float getFloat(const char* name) = 0;                                 // +0x70
    virtual void addString(const char* name, const std::string& value) = 0;       // +0x7c
    virtual std::string getString(const char* name) = 0;                          // +0x84
    virtual void addEnum(const char* name, std::int32_t value, const char* const* names) = 0;  // +0xf4
    virtual std::int32_t getEnum(const char* name, const char* const* names) = 0; // +0x100
    virtual void addColor(const char* name, std::uint32_t value) = 0;             // +0x118
    virtual std::uint32_t getColor(const char* name) = 0;                         // +0x124
    virtual void addVector2d(const char* name, const core::position2d<std::int32_t>& value) = 0;  // +0x1d8
    virtual core::position2d<std::int32_t> getVector2d(const char* name) = 0;     // +0x1e4
    virtual void addVector3d(const char* name, const core::vector3d<float>& value) = 0;  // +0x1a8
    virtual core::vector3d<float> getVector3d(const char* name) = 0;              // +0x1b4
    virtual void addRect(const char* name, const core::rect<std::int32_t>& value) = 0;   // +0x1f0
    virtual core::rect<std::int32_t> getRect(const char* name) = 0;               // +0x1fc
    virtual void addQuaternion(const char* name, const float value[4]) = 0;       // +0x220
    virtual void getQuaternion(float out[4], const char* name) = 0;               // +0x22c
    virtual void addTexture(const char* name, ITextureStandIn* value) = 0;        // +0x2b0
    virtual ITextureStandIn* getTexture(const char* name) = 0;                    // +0x2bc

    // Index based access used by the particle deserializers. The first name lookup in
    // the pseudocode passes no index; it is treated here as the current index.
    virtual const char* attributeNameAt(std::int32_t index) = 0;                  // +0x10
    virtual std::int32_t intAt(std::int32_t index) = 0;                           // +0x74 (typed by use)
    virtual float floatAt(std::int32_t index) = 0;                                // +0x74 (typed by use)
    virtual std::uint32_t colorAt(std::int32_t index) = 0;                        // +0x128
    virtual core::vector3d<float> vector3dAt(std::int32_t index) = 0;             // +0x1b8
};

// Minimal stand-in for a reference-counted object (glitch::IReferenceCounted at +0x04).
struct IReferenceCountedStandIn {
    std::int32_t refCount = 1;  // +0x04
};

struct IFileSystemStandIn : IReferenceCountedStandIn {};
struct ITextureStandIn : IReferenceCountedStandIn {};
struct IVideoDriverStandIn : IReferenceCountedStandIn {};

// ---------------------------------------------------------------------------
// glitch::collada::detail skin technique prepare hooks
// ---------------------------------------------------------------------------
// E_PREPARE_BUFFER_STEP value that forwards to the technique hook.
inline constexpr int kPrepareBufferStepUpload = 1;
// Value the hardware technique hooks return for every step.
inline constexpr int kPrepareBufferReturnHandled = 16;

struct SkinBufferStandIn {};
struct MeshBufferStandIn {};

// Virtual hook forwarded from the hardware techniques (vtable +0x18).
class HardwareSkinTechniqueStandIn {
public:
    virtual ~HardwareSkinTechniqueStandIn() = default;
    virtual void prepareSkinBuffer(SkinBufferStandIn& skinBuffer,
                                   MeshBufferStandIn* meshBuffer) = 0;  // +0x18
    // +0x14 attached scene node (not modelled here).
    ISceneNodeStandIn* attachedNode = nullptr;
};

struct SoftwareSkinTechniqueStandIn {
    std::uint8_t pad_0000[0x18] = {};          // +0x00..+0x17 (not mapped)
    bool hasSkinningFlag = false;              // +0x18
    virtual ~SoftwareSkinTechniqueStandIn() = default;
    // Virtual hook called when the buffer must be processed (vtable +0x18).
    virtual void processSkinBuffer(SkinBufferStandIn& skinBuffer,
                                   MeshBufferStandIn* meshBuffer) = 0;
    // Driver-side query used by the software prepare path (not reconstructed here).
    virtual std::uint32_t getProcessBuffer(IVideoDriverStandIn* driver, bool firstStep,
                                           std::uint32_t flags) = 0;
};

// glitch::collada::SAnimationAccessor: canonical class in collada/SAnimationAccessor.hpp.

// ---------------------------------------------------------------------------
// glitch::collada::CCoronasSceneNode
// ---------------------------------------------------------------------------
struct CoronasSceneNodeStandIn {
    std::uint8_t pad_0000[0x148] = {};          // +0x000..+0x147 (not mapped)
    float width = 0.0f;                         // +0x148
    float height = 0.0f;                        // +0x14c
    std::uint32_t vColor = 0;                   // +0x18c
};

// ---------------------------------------------------------------------------
// Declarations of the free functions in src/recon/slice_33.cpp
// ---------------------------------------------------------------------------

// Skin technique prepare hooks.
int prepareMatrixSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                            IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                            MeshBufferStandIn* meshBuffer);
int prepareQuatSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                          IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                          MeshBufferStandIn* meshBuffer);
int prepareTextureSkinBuffer(HardwareSkinTechniqueStandIn& self, int step,
                             IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                             MeshBufferStandIn* meshBuffer);
int prepareSoftwareSkinBuffer(SoftwareSkinTechniqueStandIn& self, int step,
                              IVideoDriverStandIn* driver, SkinBufferStandIn& skinBuffer,
                              MeshBufferStandIn* meshBuffer, std::uint32_t technique);


// glitch::scene skybox, terrain, text, shadow volume.
void constructSkyBoxC2(void* self, void* driver);                                                         // 0x6cebc8
void constructSkyBoxC1(void* self, void* driver);                                                         // 0x6cf564
void constructShadowVolumeC1(void* self, void* driver, void* mesh, std::int32_t id, int type, float f);   // 0x6ffb1c
void constructShadowVolumeC2(void* self, void* driver, void* mesh, std::int32_t id, int type, float f);   // 0x6ffc70
void createSilhouette(void* self, const core::vector3d<float>& light, int lightType, void* mesh);         // 0x701358

// glitch::collada coronas and animated mesh.
void serializeCoronas(const CoronasSceneNodeStandIn& self, IAttributesStandIn& attrs);                    // 0x6e5a90
void deserializeCoronas(CoronasSceneNodeStandIn& self, IAttributesStandIn& attrs);                        // 0x6e5b0c

// The particle system node, emitters and affectors are canonical classes (scene/CParticleSystemSceneNode.hpp, particle_emitters.hpp,
// particle_affectors.hpp); their stand-in serializers were retired.

}  // namespace glitch::collada::recon_33
