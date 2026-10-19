// Slice 11 reconstruction. See include/glitch-scene-collada-gui/recon/slice_11.hpp for the
// stand-ins. Index arguments follow the original: for uchar[4] and float[4] paths the
// key arguments are element offsets into the flat data array, as the pseudocode computes
// them; for the float[2], float[3], uchar[3] and quaternion paths the key is a key index.

#include "glitch-scene-collada-gui/recon/slice_11.hpp"

#include <cstring>

namespace glitch::collada::recon_11 {

// ---------------------------------------------------------------------------
// Stand-in definitions (outside this slice).
// ---------------------------------------------------------------------------
namespace {
ResFileManagerStandIn g_resFileManagerInst;
}  // namespace

ResFileManagerStandIn& resFileManagerInst() noexcept { return g_resFileManagerInst; }
CColladaFactory* defaultFactory = nullptr;

CResFile* resFileManagerGet(CResFile*, const char*, int) noexcept { return nullptr; }
CResFile* resFileManagerLoad(const CColladaDatabase*, const char*, glitch::io::IReadFile*) noexcept {
    return nullptr;
}
void resFileManagerUnload(const char*, int) noexcept {}
void animationStreamingRelease(const CColladaDatabase*) noexcept {}
void logMessage(const char*) noexcept {}

int constructAnimatorFromDatabase(CColladaDatabase*) noexcept { return 0; }
int constructGNPSEmitterEntry(const CColladaDatabase&, SGNPSEmitter*, video::IVideoDriver*, void*,
                              CRootSceneNode*) noexcept {
    return 0;
}
int constructCoronasEntry(const CColladaDatabase&, SCoronas*, video::IVideoDriver*, CRootSceneNode*) noexcept {
    return 0;
}
int constructEmitterEntry(const CColladaDatabase&, SEmitter*, video::IVideoDriver*, void*, CRootSceneNode*) noexcept {
    return 0;
}
OutSlotStandIn* constructControllerEntry(OutSlotStandIn* out, const CColladaDatabase&, video::IVideoDriver*,
                                         const char*, SController*, CRootSceneNode*) noexcept {
    return out;
}
OutSlotStandIn* constructImageEntry(OutSlotStandIn* out, const CColladaDatabase&, SImage*) noexcept { return out; }
CRootSceneNode* createRootSceneNode(CColladaFactory*, const CColladaDatabase&) noexcept { return nullptr; }
CRootSceneNode* constructNodeEntry(const CColladaDatabase&, video::IVideoDriver*, SNode*, CRootSceneNode*) noexcept {
    return nullptr;
}
CRootSceneNode* constructNodeByName(const CColladaDatabase&, video::IVideoDriver*, const char*,
                                    CRootSceneNode*) noexcept {
    return nullptr;
}
CRootSceneNode* constructSceneEntry(const CColladaDatabase&, video::IVideoDriver*) noexcept { return nullptr; }
OutSlotStandIn* constructGeometryEntry(OutSlotStandIn* out, const CColladaDatabase&, const char*,
                                       const char*) noexcept {
    return out;
}
OutSlotStandIn* constructMaterialEntry(OutSlotStandIn* out, const CColladaDatabase&, video::IVideoDriver*,
                                       SMaterial*, CRootSceneNode*) noexcept {
    return out;
}
SNode* findNode(const CColladaDatabase&, const char*) noexcept { return nullptr; }
int blendableOfAnimation(const CColladaDatabase&, const SAnimation*) noexcept { return 0; }
char* defaultValueOfAnimation(const CColladaDatabase&, const SAnimation*, void**) noexcept { return nullptr; }

void quaternionMultiply(float out[4], const float lhs[4], const float rhs[4]) noexcept {
    // Stand-in for glitch::core::quaternion::operator*; the operands are passed through unchanged.
    (void)lhs;
    (void)rhs;
    for (int i = 0; i < 4; ++i) out[i] = 0.0f;
}
void quaternionSlerp(float out[4], const float from[4], const float to[4], float t) noexcept {
    // Stand-in for glitch::core::quaternion::slerp.
    (void)to;
    (void)t;
    for (int i = 0; i < 4; ++i) out[i] = from[i];
}

namespace {

using U8 = std::uint8_t;

// ---------------------------------------------------------------------------
// Shared helpers for the interpolators.
// ---------------------------------------------------------------------------
const U8* bytesOf(const SAnimationAccessorStandIn& acc) noexcept {
    return static_cast<const U8*>(acc.getOutput(0)->data);
}
const float* floatsOf(const SAnimationAccessorStandIn& acc) noexcept {
    return static_cast<const float*>(acc.getOutput(0)->data);
}

// Default branch of the uchar[4] interpreters: the lane `lane` takes the computed value,
// the other lanes take the default value.
void writeLanes4(U8* out, int lane, U8 value, const U8* def) noexcept {
    for (int j = 0; j < 4; ++j) {
        out[j] = (j == lane) ? value : def[j];
    }
}

// Same for the float[4] interpolators.
void writeLanesF4(float* out, int lane, float value, const float* def) noexcept {
    for (int j = 0; j < 4; ++j) {
        out[j] = (j == lane) ? value : def[j];
    }
}

// uchar[4] interpolation with two keys and t: base + t * (b - base), in float.
unsigned int interp1U4Value(const U8* d, int a2, int a3, float t) noexcept {
    return static_cast<unsigned int>(static_cast<float>(d[a2]) +
                                     t * static_cast<float>(d[a3] - d[a2]));
}

// uchar[4] interpolation with three keys: the two deltas are stored as bytes (wrapping),
// then lerped in float.
unsigned int interp2U4Value(const U8* d, int a2, int a3, int a4, float t) noexcept {
    const int base = d[a2];
    const U8 v12 = static_cast<U8>(d[a4] - base);
    const U8 v13 = static_cast<U8>(d[a3] - base);
    return static_cast<unsigned int>(static_cast<float>(v13) +
                                     t * static_cast<float>(v12 - v13));
}

// Quaternion helpers. The original negates the x, y and z words of a quaternion by
// adding 0x80000000 to their bit patterns, which is a sign flip.
void conjugateXyz(float q[4]) noexcept {
    q[0] = -q[0];
    q[1] = -q[1];
    q[2] = -q[2];
}

// Plain copies of the key quaternions (four floats per key).
void loadQuatKey(const float* data, int key, float out[4]) noexcept {
    for (int i = 0; i < 4; ++i) out[i] = data[4 * key + i];
}

// Float interpolators with three keys (base, a3, a4) and t, lane K takes the value.
template <int Lane>
float interp2F4(const SAnimationAccessorStandIn& acc, int a2, int a3, int a4, float t, float* out) noexcept {
    const float* f = floatsOf(acc);
    const float v11 = f[a2];
    const float v12 = f[a3] - v11;
    const float v13 = f[a4] - v11;
    const float result = v12 + t * (v13 - v12);
    if (acc.hasDefaultValue()) {
        writeLanesF4(out, Lane, result, static_cast<const float*>(acc.getDefaultValue()));
    } else {
        out[0] = result;
    }
    return result;
}

// uchar[4] interpolators, one per lane K. Direct: the key value; Diff: a difference of two
// keys; Interp1 / Interp2: lerps. Default branch: lane K takes the value, others the default.
template <int Lane>
const U8* directU4(const SAnimationAccessorStandIn& acc, int a2, U8* out) noexcept {
    const U8* d = bytesOf(acc);
    const U8 value = d[a2];
    if (acc.hasDefaultValue()) {
        const U8* def = static_cast<const U8*>(acc.getDefaultValue());
        writeLanes4(out, Lane, value, def);
        return def;
    }
    out[0] = value;
    return nullptr;
}

template <int Lane>
const U8* diffU4(const SAnimationAccessorStandIn& acc, int a2, int a3, U8* out) noexcept {
    const U8* d = bytesOf(acc);
    const U8 value = static_cast<U8>(d[a3] - d[a2]);
    if (acc.hasDefaultValue()) {
        const U8* def = static_cast<const U8*>(acc.getDefaultValue());
        writeLanes4(out, Lane, value, def);
        return def;
    }
    out[0] = value;
    return nullptr;
}

template <int Lane>
unsigned int interp1U4(const SAnimationAccessorStandIn& acc, int a2, int a3, float t, U8* out) noexcept {
    const unsigned int result = interp1U4Value(bytesOf(acc), a2, a3, t);
    if (acc.hasDefaultValue()) {
        writeLanes4(out, Lane, static_cast<U8>(result), static_cast<const U8*>(acc.getDefaultValue()));
    } else {
        out[0] = static_cast<U8>(result);
    }
    return result;
}

template <int Lane>
unsigned int interp2U4(const SAnimationAccessorStandIn& acc, int a2, int a3, int a4, float t, U8* out) noexcept {
    const unsigned int result = interp2U4Value(bytesOf(acc), a2, a3, a4, t);
    if (acc.hasDefaultValue()) {
        writeLanes4(out, Lane, static_cast<U8>(result), static_cast<const U8*>(acc.getDefaultValue()));
    } else {
        out[0] = static_cast<U8>(result);
    }
    return result;
}

// Materials parameter write, through the stand-in sink.
template <typename T>
int setParam(MaterialParamsStandIn* params, const ApplicatorInfoStandIn* info, const void* value) noexcept {
    return setParameterCvt<T>(params, info->paramId, 0, value);
}

// CColladaDatabase tables, or null when the record is not loaded.
const SDatabaseTables* tablesOf(const CColladaDatabase& db) noexcept {
    if (db.record == nullptr || db.record->data == nullptr) {
        return nullptr;
    }
    return db.record->data->tables;
}

// Stand-in for the channel comparison of getAnimation: the channel record (type at +0x08,
// target at +0x04, sid at +0x0c) is not mapped in this slice, so no channel matches.
bool animationChannelMatches(const SAnimation*, const char*, int, const char*) noexcept { return false; }

// Shared body of the database destructor (D1 and D2 are the same code).
void destroyDatabase(CColladaDatabase* self) noexcept {
    CResFile* record = self->record;
    if (record != nullptr && record->refCount != 0) {
        dropRecord(record);
        if (resFileManagerInst().streamingEnabled) {
            if (self->record != nullptr && self->record->refCount == 1) {
                animationStreamingRelease(self);
                resFileManagerUnload(self->record->fileName, 0);
            }
        }
    }
    self->record = nullptr;
}

// Shared body of the copy-from-file constructors (C1 and C2).
CColladaDatabase* initFromSource(CColladaDatabase* self, const CColladaDatabase* source, const char* name,
                                 CColladaFactory* factory) noexcept {
    CResFile* record = resFileManagerGet(source->record, name, 1);
    self->record = record;
    self->factory = factory;
    if (record != nullptr) {
        ++record->refCount;
    }
    return self;
}

// Shared body of constructAnimator: load the file, run the animator build on a temporary
// database that owns one reference, and restore the streaming flag.
int constructAnimatorLoaded(CColladaDatabase* self, CResFile* loaded, CColladaFactory* factory) noexcept {
    (void)self;
    if (loaded == nullptr) {
        return 0;
    }
    ResFileManagerStandIn& inst = resFileManagerInst();
    const bool savedFlag = inst.streamingEnabled;
    inst.streamingEnabled = false;
    CColladaDatabase temp;
    temp.record = loaded;
    temp.factory = factory != nullptr ? factory : defaultFactory;
    ++loaded->refCount;
    const int result = constructAnimatorFromDatabase(&temp);
    destroyDatabase(&temp);
    inst.streamingEnabled = savedFlag;
    return result;
}

}  // namespace

// ===========================================================================
// Float and float[N] value appliers and interpolators.
// ===========================================================================

// ===========================================================================
// CColladaDatabase: construction, destruction and animator entries.
// ===========================================================================

// 0x6192f0 _ZN6glitch7collada16CColladaDatabaseC1EPKS1_PKcPNS0_15CColladaFactoryE
CColladaDatabase* CColladaDatabase_C1_fromSource(CColladaDatabase* self, const CColladaDatabase* source,
                                                 const char* name, CColladaFactory* factory) {
    return initFromSource(self, source, name, factory);
}

// 0x619344 _ZN6glitch7collada16CColladaDatabaseC2EPKS1_PKcPNS0_15CColladaFactoryE
CColladaDatabase* CColladaDatabase_C2_fromSource(CColladaDatabase* self, const CColladaDatabase* source,
                                                 const char* name, CColladaFactory* factory) {
    return initFromSource(self, source, name, factory);
}

// 0x619474 _ZN6glitch7collada16CColladaDatabaseD1Ev
void CColladaDatabase_D1(CColladaDatabase* self) {
    destroyDatabase(self);
}

// 0x619510 _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEbPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_file(CColladaDatabase* self, glitch::io::IReadFile* file,
                                            CColladaFactory* factory, CColladaFactory* unusedFactory) {
    (void)unusedFactory;
    CResFile* loaded = resFileManagerLoad(self, nullptr, file);
    return constructAnimatorLoaded(self, loaded, factory);
}

// 0x6195c8 _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPNS_2io9IReadFileEPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_fileOnly(CColladaDatabase* self, CColladaFactory* factory,
                                                CColladaFactory* unused) {
    (void)unused;
    CResFile* loaded = resFileManagerLoad(self, nullptr, nullptr);
    return constructAnimatorLoaded(self, loaded, factory);
}

// 0x61967c _ZN6glitch7collada16CColladaDatabase17constructAnimatorEPKcPNS0_15CColladaFactoryE
int CColladaDatabase_constructAnimator_name(CColladaDatabase* self, CColladaFactory* factory) {
    CResFile* loaded = resFileManagerLoad(self, nullptr, nullptr);
    return constructAnimatorLoaded(self, loaded, factory);
}


// 0x619728 _ZN6glitch7collada6CImageD1Ev
void CImage_D1(CImageStandIn* self) {
    if (self->image != nullptr && self->image->refCount != 0) {
        --self->image->refCount;
    }
    CColladaDatabase_D1(&self->database);
}

// 0x619784 _ZN6glitch7collada16CColladaDatabaseD2Ev
void CColladaDatabase_D2(CColladaDatabase* self) {
    destroyDatabase(self);
}

// ===========================================================================
// uchar[4] interpolators (CInterpreter and its CVirtualEx forwarders).
// ===========================================================================

// ===========================================================================
// CColladaDatabase entries that resolve a named entry and hand it to a constructor.
// ===========================================================================

// 0x61a5d4 _ZNK6glitch7collada16CColladaDatabase20constructGNPSEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructGNPSEmitter(const CColladaDatabase& self, const char* name,
                                          video::IVideoDriver* driver, void* strings, CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SGNPSEmitter* entry = t != nullptr ? getGNPSEmitter(*t, name) : nullptr;
    return constructGNPSEmitterEntry(self, entry, driver, strings, root);
}

// 0x61a750 _ZNK6glitch7collada16CColladaDatabase16constructCoronasEPKcPNS_5video12IVideoDriverEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructCoronas(const CColladaDatabase& self, const char* name, video::IVideoDriver* driver,
                                      CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SCoronas* entry = t != nullptr ? getCoronas(*t, name) : nullptr;
    return constructCoronasEntry(self, entry, driver, root);
}

// 0x61a854 _ZNK6glitch7collada16CColladaDatabase16constructEmitterEPKcPNS_5video12IVideoDriverEPNS_3res6vectorINS7_6StringEEEPNS0_14CRootSceneNodeE
int CColladaDatabase_constructEmitter(const CColladaDatabase& self, const char* name, video::IVideoDriver* driver,
                                      void* strings, CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SEmitter* entry = t != nullptr ? getEmitter(*t, name) : nullptr;
    return constructEmitterEntry(self, entry, driver, strings, root);
}

// 0x61aa00 _ZNK6glitch7collada16CColladaDatabase19constructControllerEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructController(OutSlotStandIn* out, const CColladaDatabase& self,
                                                     video::IVideoDriver* driver, const char* name,
                                                     CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SController* entry = t != nullptr ? getController(*t, name) : nullptr;
    return constructControllerEntry(out, self, driver, name, entry, root);
}

// 0x61aae0 _ZNK6glitch7collada16CColladaDatabase17constructGeometryEPNS_5video12IVideoDriverEPKcS6_
OutSlotStandIn* CColladaDatabase_constructGeometry_file(OutSlotStandIn* out, const CColladaDatabase* source,
                                                        const char* a3, const char* fileName,
                                                        const char* geometryName) {
    CResFile* file = resFileManagerGet(source->record, fileName, 1);
    if (file == nullptr) {
        logMessage("File not found");
        logMessage(fileName);
        out->object = nullptr;
        return out;
    }
    ResFileManagerStandIn& inst = resFileManagerInst();
    const bool savedFlag = inst.streamingEnabled;
    inst.streamingEnabled = false;
    CColladaDatabase pair;
    pair.record = file;
    pair.factory = source->factory;
    ++file->refCount;
    OutSlotStandIn geometry;
    constructGeometryEntry(&geometry, pair, a3, geometryName);
    if (geometry.object != nullptr) {
        out->object = geometry.object;
        ++geometry.object->refCount;
    } else {
        logMessage("Geometry not found");
        logMessage(fileName);
        logMessage(geometryName);
        out->object = nullptr;
    }
    if (geometry.object != nullptr && geometry.object->refCount != 0) {
        --geometry.object->refCount;
    }
    destroyDatabase(&pair);
    inst.streamingEnabled = savedFlag;
    return out;
}

// 0x61ac88 _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKcS3_
SMaterial* CColladaDatabase_getMaterial_file(const CColladaDatabase* source, const char* name,
                                             const char* materialName) {
    CColladaDatabase temp;
    CColladaDatabase_C1_fromSource(&temp, source, name, defaultFactory);
    const SDatabaseTables* t = tablesOf(temp);
    SMaterial* material = t != nullptr ? getMaterial(*t, materialName) : nullptr;
    CColladaDatabase_D1(&temp);
    return material;
}

// 0x61b1b4 _ZNK6glitch7collada16CColladaDatabase14constructImageEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructImage(OutSlotStandIn* out, const CColladaDatabase& self,
                                                const char* name) {
    const SDatabaseTables* t = tablesOf(self);
    SImage* entry = t != nullptr ? getImage(*t, name) : nullptr;
    return constructImageEntry(out, self, entry);
}

// ===========================================================================
// CColladaDatabase: scene, node and material constructors.
// ===========================================================================

// 0x61b8bc _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPNS0_12SVisualSceneEPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                      SVisualScene* entry, CRootSceneNode* root) {
    (void)driver;
    if (entry == nullptr) {
        return nullptr;
    }
    // Populating the root from the visual scene (vtable +0x28 setup and the node loop) is
    // not rebuilt: the SVisualScene record layout is not mapped in this slice.
    return root != nullptr ? root : createRootSceneNode(self.factory, self);
}

// 0x61b988 _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene_index(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                            int index, CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SVisualScene* entry = nullptr;
    if (t != nullptr && index >= 0 && static_cast<std::size_t>(index) < t->visualScenes.size()) {
        entry = t->visualScenes[static_cast<std::size_t>(index)];
    }
    return CColladaDatabase_constructVisualScene(self, driver, entry, root);
}

// 0x61b9b8 _ZNK6glitch7collada16CColladaDatabase20constructVisualSceneEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
CRootSceneNode* CColladaDatabase_constructVisualScene_name(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                           const char* name, CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SVisualScene* entry = t != nullptr ? getVisualScene(*t, name) : nullptr;
    return CColladaDatabase_constructVisualScene(self, driver, entry, root);
}

// 0x61babc _ZNK6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEb
CRootSceneNode* CColladaDatabase_constructScene_bool(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                     bool animate) {
    CRootSceneNode* scene = constructSceneEntry(self, driver);
    // Attaching the animator (scene vtable +0x6c, constructAnimator) is not rebuilt; the
    // scene is returned without it when animate is set.
    (void)animate;
    return scene;
}

// 0x61bb20 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene_file(CColladaDatabase* self, video::IVideoDriver* driver, const char* name,
                                         CColladaFactory* factory) {
    (void)self;
    (void)driver;
    (void)name;
    CColladaFactory* f = factory != nullptr ? factory : defaultFactory;
    (void)f;
    // The loader step passes the driver where a database is expected; the unresolved
    // argument is kept out of the rebuild, so the entry reports no scene.
    return 0;
}

// 0x61bbd4 _ZN6glitch7collada16CColladaDatabase14constructSceneEPNS_5video12IVideoDriverEPKcbPNS0_15CColladaFactoryE
int CColladaDatabase_constructScene_fileAnimated(CColladaDatabase* self, video::IVideoDriver* driver,
                                                 const char* name, bool animate, CColladaFactory* factory) {
    (void)self;
    (void)driver;
    (void)name;
    (void)animate;
    (void)factory;
    return 0;
}

// 0x61be14 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPNS0_5SNodeE
CRootSceneNode* CColladaDatabase_constructNode_entry(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                     SNode* entry) {
    if (entry == nullptr) {
        return nullptr;
    }
    CRootSceneNode* root = createRootSceneNode(self.factory, self);
    // The built node is attached to the root (vtable +0x5c), onPostLoad runs and the node is
    // released. Those calls are not rebuilt; the stand-in builds the node only.
    (void)constructNodeEntry(self, driver, entry, root);
    return root;
}

// 0x61c1fc _ZNK6glitch7collada16CColladaDatabase21getBlendableAnimationEPKNS0_10SAnimationE
int CColladaDatabase_getBlendableAnimation(const CColladaDatabase& self, const SAnimation* animation) {
    if (animation == nullptr) {
        return 0;
    }
    return blendableOfAnimation(self, animation);
}

// 0x61c6ec _ZNK6glitch7collada16CColladaDatabase15getDefaultValueEPKNS0_10SAnimationEPPv
char* CColladaDatabase_getDefaultValue(const CColladaDatabase& self, const SAnimation* animation, void** out) {
    if (animation == nullptr) {
        return nullptr;
    }
    return defaultValueOfAnimation(self, animation, out);
}

// 0x61c6f4 _ZNK6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKc
CRootSceneNode* CColladaDatabase_constructNode_name(const CColladaDatabase& self, video::IVideoDriver* driver,
                                                    const char* name) {
    return CColladaDatabase_constructNode_entry(self, driver, findNode(self, name));
}

// 0x61c878 _ZN6glitch7collada16CColladaDatabase13constructNodeEPNS_5video12IVideoDriverEPKcS6_PNS0_15CColladaFactoryE
CRootSceneNode* CColladaDatabase_constructNode_file(const CColladaDatabase* source, video::IVideoDriver* driver,
                                                    const char* name, const char* fileName,
                                                    CColladaFactory* factory) {
    CResFile* file = resFileManagerLoad(source, fileName, nullptr);
    if (file == nullptr) {
        return nullptr;
    }
    CColladaDatabase pair;
    pair.record = file;
    pair.factory = factory;
    ++file->refCount;
    CRootSceneNode* node = constructNodeByName(pair, driver, name, nullptr);
    destroyDatabase(&pair);
    return node;
}

// 0x61c91c _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKcNS0_8SChannel4TypeES3_
const SAnimation* CColladaDatabase_getAnimation(const CColladaDatabase& self, const char* target, int type,
                                                const char* sid) {
    const SDatabaseTables* t = tablesOf(self);
    if (t == nullptr || t->animations.empty()) {
        return nullptr;
    }
    for (const SAnimation* animation : t->animations) {
        if (animationChannelMatches(animation, target, type, sid)) {
            return animation;
        }
    }
    return nullptr;
}

// 0x61cca8 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_entry(OutSlotStandIn* out, const CColladaDatabase* self,
                                                         video::IVideoDriver* driver, SMaterial* material,
                                                         CRootSceneNode* root) {
    if (material == nullptr) {
        out->object = nullptr;
        return out;
    }
    // The material loader (string build, vtable calls and intrusive-pointer temporaries) is
    // not rebuilt; the stand-in produces no object.
    return constructMaterialEntry(out, *self, driver, material, root);
}

// 0x61cefc _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEPKcPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_name(OutSlotStandIn* out, const CColladaDatabase& self,
                                                        video::IVideoDriver* driver, const char* name,
                                                        CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SMaterial* material = t != nullptr ? getMaterial(*t, name) : nullptr;
    return CColladaDatabase_constructMaterial_entry(out, &self, driver, material, root);
}

// 0x61cf44 _ZNK6glitch7collada16CColladaDatabase17constructMaterialEPNS_5video12IVideoDriverEiPNS0_14CRootSceneNodeE
OutSlotStandIn* CColladaDatabase_constructMaterial_index(OutSlotStandIn* out, const CColladaDatabase& self,
                                                         video::IVideoDriver* driver, int index,
                                                         CRootSceneNode* root) {
    const SDatabaseTables* t = tablesOf(self);
    SMaterial* material = nullptr;
    if (t != nullptr && index >= 0 && static_cast<std::size_t>(index) < t->materials.size()) {
        material = t->materials[static_cast<std::size_t>(index)];
    }
    return CColladaDatabase_constructMaterial_entry(out, &self, driver, material, root);
}

// ===========================================================================
// Quaternion and float interpolators (CSceneNode quaternion mixins).
// ===========================================================================

}  // namespace glitch::collada::recon_11
