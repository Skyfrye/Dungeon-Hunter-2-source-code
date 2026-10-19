// Slice 11: animation_track value appliers and getKeyBasedValue interpolators for
// CApplyValueEx/CInterpreter instantiations (float, float[2..4], uchar[3..4], quaternion),
// the CVirtualEx forwarders, and the CColladaDatabase loader/constructor entries
// in the same address range.
//
// Stand-ins below cover code outside this slice (material parameter sink, file
// manager, reference counting, scene node and factory vtable calls, unmapped
// CColladaDatabase overloads, quaternion library math). Rows that depend on a
// stand-in are ledgered partial with the stand-in named in the note.
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-scene-collada-gui/collada_database.hpp"

namespace glitch::io {
class IReadFile;
}

namespace glitch::collada {
class CResFile;
struct SNode;  // COLLADA node record; its loader struct is not mapped in this slice.
}  // namespace glitch::collada

namespace glitch::collada::recon_11 {

// ---------------------------------------------------------------------------
// Stand-in: material parameter sink (IMaterialParameters::setParameterCvt<T>).
// The parameter table is not reconstructed here, so the write is a no-op.
// ---------------------------------------------------------------------------
struct MaterialParamsStandIn {};

// CApplicatorInfo, reduced to the parameter id the appliers read (u16 at +0x08).
struct ApplicatorInfoStandIn {
    std::uint8_t reserved00[8] = {};
    std::uint16_t paramId = 0;  // +0x08
};

// Value tags for setParameterCvt<T>, named after the glitch::core / glitch::video types.
struct CoreVector2dF {};
struct CoreVector3dF {};
struct CoreVector4dF {};
struct VideoSColor {};
struct CoreQuaternionF {};

template <typename T>
int setParameterCvt(MaterialParamsStandIn*, std::uint16_t, int, const void*) {
    return 0;
}

// ---------------------------------------------------------------------------
// SAnimationAccessor, reduced to what the getKeyBasedValue paths touch. The output
// record's data pointer is at +0x04; the default value is an optional pointer.
// ---------------------------------------------------------------------------
struct SAnimationOutput {
    std::uint32_t reserved00 = 0;
    const void* data = nullptr;  // +0x04
};

struct SAnimationAccessorStandIn {
    const SAnimationOutput* output = nullptr;
    const void* defaultValue = nullptr;

    const SAnimationOutput* getOutput(int) const noexcept { return output; }
    bool hasDefaultValue() const noexcept { return defaultValue != nullptr; }
    const void* getDefaultValue() const noexcept { return defaultValue; }
};

// Scene node as seen by the quaternion retrieveValue paths. The original calls the
// virtual at vtable +0x98 (slot 38); the slot is named here by its result.
class ISceneNodeStandIn {
public:
    virtual ~ISceneNodeStandIn() = default;
    virtual const std::uint32_t* getRotationWords() const = 0;
};

// Reference-counted object (IReferenceCounted): vptr at +0x00, count at +0x04.
struct RefCountedStandIn {
    std::uint32_t vptr = 0;
    std::uint32_t refCount = 0;
};

// Out-parameter slot for the functions the original returns through a hidden
// reference (intrusive_ptr-style result). Holds the object pointer only.
struct OutSlotStandIn {
    RefCountedStandIn* object = nullptr;
};

// ---------------------------------------------------------------------------
// Stand-ins: reference counting and the resource manager (CResFileManager).
// ---------------------------------------------------------------------------
// IReferenceCounted::drop on a COLLADA record; the record count is at +0x04.
inline void dropRecord(CResFile* record) noexcept {
    if (record != nullptr && record->refCount != 0) {
        --record->refCount;
    }
}

// CResFileManager::Inst, reduced to the flag at +0x28 that the database code toggles.
struct ResFileManagerStandIn {
    std::uint8_t reserved00[40] = {};
    bool streamingEnabled = false;  // +0x28
};
ResFileManagerStandIn& resFileManagerInst() noexcept;

// Stand-in: CResFileManager::get / load / unload, CAnimationStreamingManager::release.
// Return no file and do nothing; callers keep their original control flow.
CResFile* resFileManagerGet(CResFile* file, const char* name, int flag) noexcept;
CResFile* resFileManagerLoad(const CColladaDatabase* self, const char* name, glitch::io::IReadFile* file) noexcept;
void resFileManagerUnload(const char* name, int flag) noexcept;
void animationStreamingRelease(const CColladaDatabase* self) noexcept;
void logMessage(const char* message) noexcept;  // glitch::os::Printer::log stand-in

// CColladaDatabase::DefaultFactory.
extern CColladaFactory* defaultFactory;

// ---------------------------------------------------------------------------
// Stand-ins: CColladaDatabase overloads whose declarations are not in
// collada_database.hpp, the factory vtable calls, and the quaternion library math.
// ---------------------------------------------------------------------------
int constructAnimatorFromDatabase(CColladaDatabase* database) noexcept;
int constructGNPSEmitterEntry(const CColladaDatabase& db, SGNPSEmitter* entry, video::IVideoDriver* driver,
                              void* strings, CRootSceneNode* root) noexcept;
int constructCoronasEntry(const CColladaDatabase& db, SCoronas* entry, video::IVideoDriver* driver,
                          CRootSceneNode* root) noexcept;
int constructEmitterEntry(const CColladaDatabase& db, SEmitter* entry, video::IVideoDriver* driver,
                          void* strings, CRootSceneNode* root) noexcept;
OutSlotStandIn* constructControllerEntry(OutSlotStandIn* out, const CColladaDatabase& db, video::IVideoDriver* driver,
                                         const char* name, SController* entry, CRootSceneNode* root) noexcept;
OutSlotStandIn* constructImageEntry(OutSlotStandIn* out, const CColladaDatabase& db, SImage* entry) noexcept;
CRootSceneNode* createRootSceneNode(CColladaFactory* factory, const CColladaDatabase& db) noexcept;
CRootSceneNode* constructNodeEntry(const CColladaDatabase& db, video::IVideoDriver* driver, SNode* entry,
                                   CRootSceneNode* root) noexcept;
CRootSceneNode* constructNodeByName(const CColladaDatabase& db, video::IVideoDriver* driver, const char* name,
                                    CRootSceneNode* root) noexcept;
CRootSceneNode* constructSceneEntry(const CColladaDatabase& db, video::IVideoDriver* driver) noexcept;
OutSlotStandIn* constructGeometryEntry(OutSlotStandIn* out, const CColladaDatabase& db, const char* a3,
                                       const char* a5) noexcept;
OutSlotStandIn* constructMaterialEntry(OutSlotStandIn* out, const CColladaDatabase& db, video::IVideoDriver* driver,
                                       SMaterial* material, CRootSceneNode* root) noexcept;
SNode* findNode(const CColladaDatabase& db, const char* name) noexcept;
int blendableOfAnimation(const CColladaDatabase& db, const SAnimation* animation) noexcept;
char* defaultValueOfAnimation(const CColladaDatabase& db, const SAnimation* animation, void** out) noexcept;

// Quaternion library math (glitch::core::quaternion::operator* and ::slerp).
void quaternionMultiply(float out[4], const float lhs[4], const float rhs[4]) noexcept;
void quaternionSlerp(float out[4], const float from[4], const float to[4], float t) noexcept;


// ---------------------------------------------------------------------------
// Slice functions (definitions in src/recon/slice_11.cpp). Comment line gives the address.
// ---------------------------------------------------------------------------
// CImage, reduced to the members its destructor touches. The vptr writes of the original
// are not modelled; the database base sits at +0x0c and the image reference at +0x14.
struct CImageStandIn {
    std::uint32_t vptr = 0;               // +0x00
    std::uint32_t reserved04[2] = {};     // +0x04..+0x0b
    CColladaDatabase database;            // +0x0c
    RefCountedStandIn* image = nullptr;   // +0x14
};

// 0x6192f0 _ZN6glitch7collada16CColladaDatabaseC1EPKS1_PKcPNS0_15CColladaFactoryE
CColladaDatabase* CColladaDatabase_C1_fromSource(CColladaDatabase* self, const CColladaDatabase* source, const char* name, CColladaFactory* factory);
// 0x619344 _ZN6glitch7collada16CColladaDatabaseC2EPKS1_PKcPNS0_15CColladaFactoryE
CColladaDatabase* CColladaDatabase_C2_fromSource(CColladaDatabase* self, const CColladaDatabase* source, const char* name, CColladaFactory* factory);
// 0x619474 _ZN6glitch7collada16CColladaDatabaseD1Ev
void CColladaDatabase_D1(CColladaDatabase* self);
// 0x619510 _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_file(CColladaDatabase* self, glitch::io::IReadFile* file, CColladaFactory* factory, CColladaFactory* unusedFactory);
// 0x6195c8 _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_fileOnly(CColladaDatabase* self, CColladaFactory* factory, CColladaFactory* unused);
// 0x61967c _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPKcPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_name(CColladaDatabase* self, CColladaFactory* factory);
// 0x619728 _ZN6glitch7collada6CImageD1Ev
void CImage_D1(CImageStandIn* self);
// 0x619784 _ZN6glitch7collada16CColladaDatabaseD2Ev
void CColladaDatabase_D2(CColladaDatabase* self);
// 0x61a5d4 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self, const char* name, video::IVideoDriver* driver, void* strings, CRootSceneNode* root);
// 0x61a750 _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPKcPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructCoronas(const CColladaDatabase& self, const char* name, video::IVideoDriver* driver, CRootSceneNode* root);
// 0x61a854 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructEmitter(const CColladaDatabase& self, const char* name, video::IVideoDriver* driver, void* strings, CRootSceneNode* root);
// 0x61aa00 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructController(OutSlotStandIn* out, const CColladaDatabase& self, video::IVideoDriver* driver, const char* name, CRootSceneNode* root);
// 0x61aae0 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKcS6_
OutSlotStandIn* CColladaDatabase_constructGeometry_file(OutSlotStandIn* out, const CColladaDatabase* source, const char* a3, const char* fileName, const char* geometryName);
// 0x61ac88 _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKcS3_
SMaterial* CColladaDatabase_getMaterial_file(const CColladaDatabase* source, const char* name, const char* materialName);
// 0x61b1b4 _ZNK6glitch7collada16CColladaDatabase14constructImageEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructImage(OutSlotStandIn* out, const CColladaDatabase& self, const char* name);
// 0x61b8bc _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPNS0_12SVisualSceneEPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene(const CColladaDatabase& self, video::IVideoDriver* driver, SVisualScene* entry, CRootSceneNode* root);
// 0x61b988 _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene_index(const CColladaDatabase& self, video::IVideoDriver* driver, int index, CRootSceneNode* root);
// 0x61b9b8 _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene_name(const CColladaDatabase& self, video::IVideoDriver* driver, const char* name, CRootSceneNode* root);
// 0x61babc _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEb
CRootSceneNode* CColladaDatabase_constructScene_bool(const CColladaDatabase& self, video::IVideoDriver* driver, bool animate);
// 0x61bb20 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene_file(CColladaDatabase* self, video::IVideoDriver* driver, const char* name, CColladaFactory* factory);
// 0x61bbd4 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcbPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene_fileAnimated(CColladaDatabase* self, video::IVideoDriver* driver, const char* name, bool animate, CColladaFactory* factory);
// 0x61be14 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeE
CRootSceneNode* CColladaDatabase_constructNode_entry(const CColladaDatabase& self, video::IVideoDriver* driver, SNode* entry);
// 0x61c1fc _ZNK6glitch7collada16CColladaDatabase21getBlendableAnimationEPKNS0_10SAnimationE
int CColladaDatabase_getBlendableAnimation(const CColladaDatabase& self, const SAnimation* animation);
// 0x61c6ec _ZNK6glitch7collada16CColladaDatabase15getDefaultValueEPKNS0_10SAnimationEPPv
char* CColladaDatabase_getDefaultValue(const CColladaDatabase& self, const SAnimation* animation, void** out);
// 0x61c6f4 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKc
CRootSceneNode* CColladaDatabase_constructNode_name(const CColladaDatabase& self, video::IVideoDriver* driver, const char* name);
// 0x61c878 _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKcS6_PNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase_constructNode_file(const CColladaDatabase* source, video::IVideoDriver* driver, const char* name, const char* fileName, CColladaFactory* factory);
// 0x61c91c _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKcNS0_8SChannel4TypeES3_
const SAnimation* CColladaDatabase_getAnimation(const CColladaDatabase& self, const char* target, int type, const char* sid);
// 0x61cca8 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_entry(OutSlotStandIn* out, const CColladaDatabase* self, video::IVideoDriver* driver, SMaterial* material, CRootSceneNode* root);
// 0x61cefc _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_name(OutSlotStandIn* out, const CColladaDatabase& self, video::IVideoDriver* driver, const char* name, CRootSceneNode* root);
// 0x61cf44 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_index(OutSlotStandIn* out, const CColladaDatabase& self, video::IVideoDriver* driver, int index, CRootSceneNode* root);
}  // namespace glitch::collada::recon_11
