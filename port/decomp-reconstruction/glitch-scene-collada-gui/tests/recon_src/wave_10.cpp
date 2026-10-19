// Wave 10 reconstruction. See include/glitch-scene-collada-gui/recon/v2/wave_10.hpp.
//
// Every body here is `partial`: each one calls at least one stand-in declared in
// the header (setParameterCvt, SAnimationAccessor helpers, CResFileManager,
// quaternion math, or CColladaDatabase members that collada_db.hpp does not
// declare). Thunks are not reimplemented and have no code in this file.

#include "glitch-scene-collada-gui/recon/v2/wave_10.hpp"

#include <cstring>

namespace glitch::collada::recon_v2_10 {

namespace {

// Reference count word at +0x04 of an IReferenceCounted object (pseudocode
// `*((_DWORD *)obj + 1)`). Used for objects whose type is not mapped.
struct SRefCountedWord {
    std::uint32_t vptr;
    std::uint32_t refCount;
};

// ++*(obj + 4), unconditional.
void ref_inc(void* p) {
    if (p) {
        ++static_cast<SRefCountedWord*>(p)->refCount;
    }
}

// if (count) ++count on a CResFile record.
void res_inc_nonzero(CResFile* r) {
    if (r->refCount) {
        ++r->refCount;
    }
}

// (unsigned int)(float)((float)v13 + (float)(t * (float)(v12 - v13)))
// with v12 and v13 truncated to unsigned char by the pseudocode.
std::uint32_t mix_u8(std::uint8_t v13, std::uint8_t v12, float t) {
    return static_cast<std::uint32_t>(static_cast<float>(v13) +
                                      static_cast<float>(t * static_cast<float>(v12 - v13)));
}

// (unsigned int)(float)((float)base + (float)(t * (float)(hi - base)))
std::uint32_t mix_raw(std::uint8_t base, std::uint8_t hi, float t) {
    return static_cast<std::uint32_t>(static_cast<float>(base) +
                                      static_cast<float>(t * static_cast<float>(hi - base)));
}

// The pseudocode returns default-value pointers through an `unsigned int`.
std::uint32_t ptr_bits(const void* p) {
    return static_cast<std::uint32_t>(reinterpret_cast<std::uintptr_t>(p));
}

// ~CColladaDatabase (0x619474 and 0x619784 have the same body).
void db_release(CColladaDatabase* self) {
    CResFile* v2 = self->record;
    if (v2) {
        if (v2->refCount) {
            ref_drop(v2);
            if (res_manager()->autoUnloadEnabled) {
                if (self->record->refCount == 1) {
                    streaming_release(streaming_instance(), self);
                    res_unload(res_manager(), self->record->fileName, 0);
                }
            }
        }
    }
    self->record = nullptr;
}

// CColladaDatabase(CResFile**, char const*, factory) (0x6192f0 and 0x619344 have the same body).
CColladaDatabase* db_construct_from_file(CColladaDatabase* self, CResFile** a2, const char* a3,
                                         CColladaFactory* a4) {
    CResFile* v6 = res_get(res_manager(), *a2, a3, 1);
    self->factory = a4;
    self->record = v6;
    if (v6) {
        ++v6->refCount;
    }
    return self;
}

// Common tail of the constructAnimator overloads: take the reference, run the
// one-argument constructAnimator on a temporary database, release it, and restore
// autoUnloadEnabled.
void* db_construct_animator_loaded(CResFile* loaded, void* factory) {
    if (!loaded) {
        return nullptr;
    }
    CResFileManager* mgr = res_manager();
    const bool saved = mgr->autoUnloadEnabled;
    mgr->autoUnloadEnabled = false;
    CColladaDatabase tmp;
    tmp.factory = static_cast<CColladaFactory*>(factory);
    tmp.record = loaded;
    res_inc_nonzero(loaded);
    void* v6 = db_construct_animator(&tmp);
    db_release(&tmp);
    mgr->autoUnloadEnabled = saved;
    return v6;
}

}  // namespace

// ---------------------------------------------------------------------------
// CVirtualEx / CApplyValueEx applicator bodies.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// CInterpreter<CMixin<unsigned char,4,...>> getKeyBasedValueEx, mixin index 0..3.
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// CColladaDatabase bodies.
// ---------------------------------------------------------------------------

// 0x6192f0 CColladaDatabase::CColladaDatabase(CResFile**, char const*, CColladaFactory*)
CColladaDatabase* w10_6192f0(CColladaDatabase* self, CResFile** a2, const char* a3, CColladaFactory* a4) {
    return db_construct_from_file(self, a2, a3, a4);
}

// 0x619344 CColladaDatabase::CColladaDatabase(CResFile**, char const*, CColladaFactory*) (same body)
CColladaDatabase* w10_619344(CColladaDatabase* self, CResFile** a2, const char* a3, CColladaFactory* a4) {
    return db_construct_from_file(self, a2, a3, a4);
}

// 0x619474 CColladaDatabase::~CColladaDatabase()
void w10_619474(CColladaDatabase* self) {
    db_release(self);
}

// 0x619784 CColladaDatabase::~CColladaDatabase() (same body)
void w10_619784(CColladaDatabase* self) {
    db_release(self);
}

// 0x619510 CColladaDatabase::constructAnimator(IReadFile*, bool, CColladaFactory*)
void* w10_619510(CColladaDatabase* self, void* a2, int* a3, CColladaFactory* a4) {
    (void)a4;
    void* v4 = a3 ? static_cast<void*>(a3) : static_cast<void*>(db_default_factory());
    CResFile* v5 = res_load(res_manager(), self, nullptr, nullptr, a2);
    return db_construct_animator_loaded(v5, v4);
}

// 0x6195c8 CColladaDatabase::constructAnimator(IReadFile*, CColladaFactory*)
void* w10_6195c8(CColladaDatabase* self, void* a2, CColladaFactory* a3) {
    (void)a3;
    void* v3 = a2 ? a2 : static_cast<void*>(db_default_factory());
    CResFile* v4 = res_load(res_manager(), self, nullptr, nullptr, nullptr);
    return db_construct_animator_loaded(v4, v3);
}

// 0x61967c CColladaDatabase::constructAnimator(IReferenceCounted*, CColladaFactory*)
void* w10_61967c(CColladaDatabase* self, void* a2, CColladaFactory* a3) {
    (void)a3;
    void* v3 = a2 ? a2 : static_cast<void*>(db_default_factory());
    // The pseudocode's load call here takes four arguments (no reader).
    CResFile* v4 = res_load(res_manager(), self, nullptr, nullptr, nullptr);
    return db_construct_animator_loaded(v4, v3);
}

// 0x619728 CImage::~CImage()
void w10_619728(void* self) {
    // CImage is not mapped in collada_db.hpp. Its resource slot, vptr writes and
    // embedded CColladaDatabase are reached through stand-ins.
    void* v2 = image_resource(self);
    image_set_vptr(self, 1);
    if (v2) {
        ref_drop(v2);
    }
    image_set_vptr(self, 2);
    db_release(image_database(self));
}

// 0x61a5d4 CColladaDatabase::constructGNPSEmitter(char const*, IVideoDriver*, vector<String>*, CRootSceneNode*)
void* w10_61a5d4(const CColladaDatabase* a1, const char* a2, int a3, int a4, int a5) {
    void* gnps = db_get_gnps_emitter(a1, a2);
    return db_construct_gnps_emitter(a1, gnps, a3, a4, a5);
}

// 0x61a750 CColladaDatabase::constructCoronas(char const*, IVideoDriver*, CRootSceneNode*)
void* w10_61a750(const CColladaDatabase* a1, const char* a2, int a3, int a4) {
    void* coronas = db_get_coronas(a1, a2);
    return db_construct_coronas(a1, coronas, a3, a4);
}

// 0x61a854 CColladaDatabase::constructEmitter(char const*, IVideoDriver*, vector<String>*, CRootSceneNode*)
void* w10_61a854(const CColladaDatabase* a1, const char* a2, int a3, int a4, int a5) {
    void* emitter = db_get_emitter(a1, a2);
    return db_construct_emitter(a1, emitter, a3, a4, a5);
}

// 0x61aa00 CColladaDatabase::constructController(IVideoDriver*, char const*, CRootSceneNode*)
void** w10_61aa00(void** self, void* a2, const char* a3, void* a4, void* a5) {
    void* controller = db_get_controller(a2, reinterpret_cast<const char*>(a4));
    db_construct_controller(self, a2, a3, controller, a5);
    return self;
}

// 0x61aae0 CColladaDatabase::constructGeometry(char const*, char const*, char const*)
CColladaDatabase* w10_61aae0(CColladaDatabase* self, CColladaDatabase* a2, const char* a3, const char* a4,
                             const char* a5) {
    CResFileManager* mgr = res_manager();
    CResFile* v9 = res_get(mgr, a2->record, a4, 1);
    if (!v9) {
        log_msg("File not found", 3);
        log_msg(a4, 3);
        self->record = nullptr;
        return self;
    }
    const bool saved = mgr->autoUnloadEnabled;
    mgr->autoUnloadEnabled = false;
    CColladaDatabase tmp;
    tmp.record = v9;
    tmp.factory = a2->factory;
    res_inc_nonzero(v9);
    void* v18 = nullptr;
    db_construct_geometry(&v18, &tmp, a3, a5);
    if (v18) {
        self->record = static_cast<CResFile*>(v18);
        ref_inc(v18);
        ref_drop(v18);
    } else {
        log_msg("Geometry not found", 3);
        log_msg(a4, 3);
        log_msg(a5, 3);
        self->record = nullptr;
    }
    db_release(&tmp);
    mgr->autoUnloadEnabled = saved;
    return self;
}

// 0x61ac88 CColladaDatabase::getMaterial(char const*, char const*) const
const char** w10_61ac88(CResFile** rec, const char* a2, const char* a3) {
    CColladaDatabase tmp;
    db_construct_from_file(&tmp, rec, a2, db_default_factory());
    const char** material = static_cast<const char**>(db_get_material(&tmp, a3));
    db_release(&tmp);
    return material;
}

// 0x61b1b4 CColladaDatabase::constructImage(char const*, CRootSceneNode*) const
void* w10_61b1b4(void* out, CColladaDatabase* self, const char* entryName) {
    void* image = db_get_image(self, entryName);
    db_construct_image(out, self, image);
    return out;
}

// 0x61b8bc CColladaDatabase::constructVisualScene(IVideoDriver*, SVisualScene*, CRootSceneNode*) const
void* w10_61b8bc(const CColladaDatabase* a1, const char* a2, void* a3, void* a4) {
    if (!a3) {
        return nullptr;
    }
    void* v7 = a4 ? a4 : db_make_root(a1);
    root_call(v7, 40, scene_field1(a3));
    const int count = scene_node_count(a3);
    for (int i = 0; i < count; ++i) {
        void* v10 = db_construct_node_entry(a1, a2, scene_node_at(a3, i), v7);
        root_call(v7, 92, v10);
        drop_subobject(v10);
    }
    return v7;
}

// 0x61b988 CColladaDatabase::constructVisualScene(IVideoDriver*, int, CRootSceneNode*) const
void* w10_61b988(const CColladaDatabase* a1, void* driver, int index, void* root) {
    void* visualScene = db_get_visual_scene_index(a1, index);
    return w10_61b8bc(a1, reinterpret_cast<const char*>(driver), visualScene, root);
}

// 0x61b9b8 CColladaDatabase::constructVisualScene(IVideoDriver*, char const*, CRootSceneNode*) const
void* w10_61b9b8(const CColladaDatabase* a1, void* driver, const char* name, void* root) {
    void* visualScene = db_get_visual_scene(a1, name);
    return w10_61b8bc(a1, reinterpret_cast<const char*>(driver), visualScene, root);
}

// 0x61babc CColladaDatabase::constructScene(IVideoDriver*, bool) const
void* w10_61babc(const CColladaDatabase* a1, void* driver, bool animate) {
    void* v5 = db_construct_scene_basic(a1, driver);
    if (!v5 || !animate) {
        return v5;
    }
    void* v7 = db_construct_animator(const_cast<CColladaDatabase*>(a1));
    if (!v7) {
        return v5;
    }
    root_call(v5, 108, v7);
    drop_subobject(v7);
    return v5;
}

// 0x61bb20 CColladaDatabase::constructScene(IVideoDriver*, char const*, CColladaFactory*)
void* w10_61bb20(const CColladaDatabase* a1, void* driver, void* a3, CColladaFactory* a4) {
    void* v4 = a3 ? a3 : static_cast<void*>(db_default_factory());
    CResFile* v6 = res_load(res_manager(), driver, nullptr, nullptr, nullptr);
    if (!v6) {
        return nullptr;
    }
    CResFileManager* mgr = res_manager();
    const bool saved = mgr->autoUnloadEnabled;
    mgr->autoUnloadEnabled = false;
    CColladaDatabase tmp;
    tmp.record = v6;
    tmp.factory = static_cast<CColladaFactory*>(v4);
    res_inc_nonzero(v6);
    // constructScene((CColladaDatabase *)v11, this, 1): the three-argument overload
    // with the outer database in the driver slot.
    void* v7 = w10_61babc(&tmp, const_cast<CColladaDatabase*>(a1), true);
    db_release(&tmp);
    mgr->autoUnloadEnabled = saved;
    (void)a4;
    return v7;
}

// 0x61bbd4 CColladaDatabase::constructScene(IVideoDriver*, char const*, bool, CColladaFactory*)
void* w10_61bbd4(const CColladaDatabase* a1, void* driver, const char* name, void* a4, CColladaFactory* a5) {
    void* v5 = a4 ? a4 : static_cast<void*>(db_default_factory());
    CResFile* v8 = res_load(res_manager(), driver, nullptr, nullptr, nullptr);
    if (!v8) {
        return nullptr;
    }
    CResFileManager* mgr = res_manager();
    const bool saved = mgr->autoUnloadEnabled;
    mgr->autoUnloadEnabled = false;
    CColladaDatabase tmp;
    tmp.record = v8;
    tmp.factory = static_cast<CColladaFactory*>(v5);
    res_inc_nonzero(v8);
    // constructScene(temp, this, a3): the three-argument call reaches the overload
    // at 0x61bb20 whose factory argument the pseudocode does not pass (stand-in).
    void* v9 = db_construct_scene_named(&tmp, const_cast<CColladaDatabase*>(a1), name, a5);
    db_release(&tmp);
    mgr->autoUnloadEnabled = saved;
    return v9;
}

// 0x61be14 CColladaDatabase::constructNode(IVideoDriver*, SNode*) const
void* w10_61be14(const CColladaDatabase* a1, const char* driver, void* node) {
    if (!node) {
        return nullptr;
    }
    void* v6 = db_make_root(a1);
    void* v7 = db_construct_node_entry(a1, driver, node, v6);
    root_call(v6, 92, v7);
    node_on_post_load(v6);
    drop_subobject(v7);
    return v6;
}

// 0x61c1fc CColladaDatabase::getBlendableAnimation(SAnimation const*) const
const void* w10_61c1fc(const CColladaDatabase* a1, const void* animation) {
    if (animation) {
        return w10_61c1fc(a1, animation_blendable_link(animation));
    }
    return nullptr;
}

// 0x61c6ec CColladaDatabase::getDefaultValue(SAnimation const*, void**) const
const std::uint8_t* w10_61c6ec(const CColladaDatabase* a1, const void* animation, void** out) {
    return static_cast<const std::uint8_t*>(db_get_default(a1, animation_blendable_link(animation), out));
}

// 0x61c6f4 CColladaDatabase::constructNode(IVideoDriver*, char const*) const
void* w10_61c6f4(const CColladaDatabase* a1, void* driver, const char* name) {
    void* node = db_get_node(a1, name);
    return w10_61be14(a1, reinterpret_cast<const char*>(driver), node);
}

// 0x61c878 CColladaDatabase::constructNode(IVideoDriver*, char const*, char const*, CColladaFactory*)
void* w10_61c878(const CColladaDatabase* a1, void* driver, const char* name, void* a4, CColladaFactory* a5) {
    CResFile* v8 = res_load(res_manager(), driver, nullptr, nullptr, nullptr);
    if (!v8) {
        return nullptr;
    }
    CResFileManager* mgr = res_manager();
    const bool saved = mgr->autoUnloadEnabled;
    mgr->autoUnloadEnabled = false;
    CColladaDatabase tmp;
    tmp.record = v8;
    tmp.factory = reinterpret_cast<CColladaFactory*>(a4);
    res_inc_nonzero(v8);
    // constructNode(temp, this, name): the three-argument overload at 0x61c6f4.
    void* v9 = w10_61c6f4(&tmp, const_cast<CColladaDatabase*>(a1), name);
    db_release(&tmp);
    mgr->autoUnloadEnabled = saved;
    (void)a5;
    return v9;
}

// 0x61c91c CColladaDatabase::getAnimation(char const*, SChannel::Type, char const*) const
const void* w10_61c91c(const CColladaDatabase* a1, const char* name, int channelType, const char* target) {
    return db_find_animation(a1, name, channelType, target);
}

// 0x61cca8 CColladaDatabase::constructMaterial(IVideoDriver*, SMaterial*, CRootSceneNode*) const
// The material loader sequence (path composition, intrusive pointer handling and
// the loader vcalls) is not transcribed here. The whole sequence is a stand-in.
void* w10_61cca8(void* out, void* a2, const char* a3, void* a4, void* a5) {
    return material_construct_body(out, a2, a3, a4, a5);
}

// 0x61cefc CColladaDatabase::constructMaterial(IVideoDriver*, char const*, CRootSceneNode*) const
void* w10_61cefc(CColladaDatabase* self, void* driver, const char* name, void* root, void* a5) {
    void* material = db_get_material_of(driver, name);
    w10_61cca8(self, driver, name, material, a5);
    (void)root;
    return self;
}

// 0x61cf44 CColladaDatabase::constructMaterial(IVideoDriver*, int, CRootSceneNode*) const
void* w10_61cf44(CColladaDatabase* self, void* driver, int id, void* root, void* a5) {
    void* material = db_get_material_index_of(driver, id);
    w10_61cca8(self, driver, reinterpret_cast<const char*>(static_cast<std::intptr_t>(id)), material, a5);
    (void)root;
    return self;
}

}  // namespace glitch::collada::recon_v2_10
