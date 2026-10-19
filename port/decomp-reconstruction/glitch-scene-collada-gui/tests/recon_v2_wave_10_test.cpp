// Test for the wave 10 reconstruction. The stand-ins declared in
// wave_10.hpp are defined here as test doubles only.
//
// Build: g++ -std=c++17 -Wall -Iinclude tests/recon_v2_wave_10_test.cpp src/recon/v2/wave_10.cpp -o $SCRATCH/v2_10

#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-scene-collada-gui/recon/v2/wave_10.hpp"
#include "recon_src/wave_10.cpp"  // the recon body is compiled into this test only: it is a superseded stand-in layer whose placeholders have no definition

// The factory is only ever compared by address (the canonical CColladaFactory is abstract), so the tests use tagged storage.
namespace {
glitch::collada::CColladaFactory* fakeFactory(int index = 0) {
    static char storage[2][16];
    return reinterpret_cast<glitch::collada::CColladaFactory*>(storage[index]);
}
}  // namespace

using namespace glitch::collada::recon_v2_10;
using glitch::collada::CResFile;
using glitch::collada::CResFileManager;

namespace {

CResFileManager g_mgr;
int g_res_get_calls = 0;
CResFile g_record;
int g_drops = 0;

std::uint32_t g_slot152[4] = {11, 22, 33, 44};

}  // namespace

// ---------------------------------------------------------------------------
// Test doubles for the stand-ins.
// ---------------------------------------------------------------------------
namespace glitch::collada::recon_v2_10 {

void root_call(void*, int, void*) {}
void node_on_post_load(void*) {}
void drop_subobject(void*) {}
void* scene_field1(void*) { return nullptr; }
int scene_node_count(void*) { return 0; }
void* scene_node_at(void*, int) { return nullptr; }
const void* animation_blendable_link(const void*) { return nullptr; }

void* image_resource(void*) { return nullptr; }
CColladaDatabase* image_database(void*) { return nullptr; }
void image_set_vptr(void*, int) {}

CResFileManager* res_manager() { return &g_mgr; }
CResFile* res_get(CResFileManager*, CResFile*, const char*, int) {
    ++g_res_get_calls;
    return &g_record;
}
CResFile* res_load(CResFileManager*, const void*, const void*, const void*, void*) { return &g_record; }
void res_unload(CResFileManager*, const char*, int) {}
void ref_drop(void*) { ++g_drops; }
void streaming_release(void*, CColladaDatabase*) {}
void* streaming_instance() { return nullptr; }
void log_msg(const char*, int) {}
CColladaFactory* db_default_factory() {
    return fakeFactory(1);
}

void* db_construct_animator(CColladaDatabase*) { return nullptr; }
void* db_get_gnps_emitter(const CColladaDatabase*, const char*) { return nullptr; }
void* db_construct_gnps_emitter(const CColladaDatabase*, void*, int, int, int) { return nullptr; }
void* db_get_coronas(const CColladaDatabase*, const char*) { return nullptr; }
void* db_construct_coronas(const CColladaDatabase*, void*, int, int) { return nullptr; }
void* db_get_emitter(const CColladaDatabase*, const char*) { return nullptr; }
void* db_construct_emitter(const CColladaDatabase*, void*, int, int, int) { return nullptr; }
void* db_get_controller(void*, const char*) { return nullptr; }
void db_construct_controller(void**, void*, const char*, void*, void*) {}
void* db_get_material_of(void*, const char*) { return nullptr; }
void* db_get_material_index_of(void*, int) { return nullptr; }
void* db_get_material(CColladaDatabase*, const char*) { return nullptr; }
void* material_construct_body(void* out, void*, const char*, void*, void*) { return out; }
void db_construct_geometry(void** out, void*, const char*, const char*) { *out = nullptr; }
void* db_get_image(const CColladaDatabase*, const char*) { return nullptr; }
void db_construct_image(void*, const CColladaDatabase*, void*) {}
void* db_get_visual_scene(const CColladaDatabase*, const char*) { return nullptr; }
void* db_get_visual_scene_index(const CColladaDatabase*, int) { return nullptr; }
void* db_get_node(const CColladaDatabase*, const char*) { return nullptr; }
void* db_construct_node_entry(const CColladaDatabase*, const char*, void*, void*) { return nullptr; }
void* db_make_root(const CColladaDatabase*) { return nullptr; }
void* db_construct_scene_basic(const CColladaDatabase*, void*) { return nullptr; }
void* db_construct_scene_named(const CColladaDatabase*, void*, const char*, void*) { return nullptr; }
const void* db_find_animation(const CColladaDatabase*, const char*, int, const char*) { return nullptr; }
void* db_get_default(const CColladaDatabase*, const void*, void**) { return nullptr; }

}  // namespace glitch::collada::recon_v2_10

// ---------------------------------------------------------------------------
// Checks.
// ---------------------------------------------------------------------------
static int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

static bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

int main() {
    // 8. CColladaDatabase(CResFile**, ...) stores the record and factory and bumps its count.
    {
        g_record = CResFile{};
        g_record.refCount = 1;
        glitch::collada::CColladaDatabase db;
        CResFile* slot = &g_record;
        CColladaFactory& fac = *fakeFactory();
        w10_6192f0(&db, &slot, "x", &fac);
        CHECK(db.record == &g_record && db.factory == &fac && g_record.refCount == 2);
        w10_619474(&db);
        CHECK(db.record == nullptr);
        CHECK(g_drops >= 1);
    }

    // 9. The duplicated bodies agree with each other.
    {
        g_record = CResFile{};
        glitch::collada::CColladaDatabase a;
        glitch::collada::CColladaDatabase b;
        CResFile* slot = &g_record;
        CColladaFactory& fac = *fakeFactory();
        w10_6192f0(&a, &slot, "x", &fac);
        w10_619344(&b, &slot, "x", &fac);
        CHECK(a.record == b.record && a.factory == b.factory);
    }

    if (g_failures == 0) {
        std::printf("PASS wave_10: 2 checks\n");
        return 0;
    }
    std::printf("FAIL wave_10: %d check(s) failed\n", g_failures);
    return 1;
}
