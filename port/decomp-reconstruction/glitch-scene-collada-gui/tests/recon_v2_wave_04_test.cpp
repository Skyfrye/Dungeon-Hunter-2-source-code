// Tests for the wave 04 reconstruction (src/recon/v2/wave_04.cpp).
// Test doubles below supply the unmapped externs: CResFileManager::Inst and the
// CResFileManager::load stand-ins. Nothing here edits src.
#include <cstdio>
#include <vector>

#include "glitch-scene-collada-gui/recon/v2/wave_04.hpp"
#include "recon_src/wave_04.cpp"  // the recon body is compiled into this test only: it is a superseded stand-in layer whose placeholders have no definition

// The factory is only ever compared by address (the canonical CColladaFactory is abstract), so the tests use tagged storage.
namespace {
glitch::collada::CColladaFactory* fakeFactory(int index = 0) {
    static char storage[2][16];
    return reinterpret_cast<glitch::collada::CColladaFactory*>(storage[index]);
}
}  // namespace

namespace glitch::collada {

CResFileManager* CResFileManager::Inst = nullptr;

namespace recon_v2_04 {

// Test-double state for the load stand-ins.
static CResFile* g_nextLoadResult = nullptr;
static int g_loadNameCalls = 0;
static int g_loadFileCalls = 0;
static bool g_lastFlag = false;
static CResFileManager* g_lastSelf = nullptr;

CResFile* resFileManagerLoadName(CResFileManager* self, const char* name, int a3, int a4) {
    (void)name;
    (void)a3;
    (void)a4;
    g_lastSelf = self;
    ++g_loadNameCalls;
    return g_nextLoadResult;
}

CResFile* resFileManagerLoadFile(CResFileManager* self, glitch::io::IReadFile* file, int a3, int a4, bool flag) {
    (void)file;
    (void)a3;
    (void)a4;
    g_lastSelf = self;
    g_lastFlag = flag;
    ++g_loadFileCalls;
    return g_nextLoadResult;
}

}  // namespace recon_v2_04
}  // namespace glitch::collada

using namespace glitch::collada;
using namespace glitch::collada::recon_v2_04;

static int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

static void test_ctor_refcounts_record() {
    CResFile record;
    record.refCount = 1;
    CColladaFactory& factory = *fakeFactory();
    g_nextLoadResult = &record;
    CColladaDatabase db;
    CColladaDatabase* r = ctor_0x60f25c(&db, "x.dae", &factory);
    CHECK(r == &db);
    CHECK(db.record == &record);
    CHECK(db.factory == &factory);
    CHECK(record.refCount == 2);
    CHECK(g_lastSelf == CResFileManager::Inst);
}

static void test_ctor_null_record() {
    CColladaFactory& factory = *fakeFactory();
    g_nextLoadResult = nullptr;
    CColladaDatabase db;
    ctor_0x60f3c4(&db, nullptr, &factory);
    CHECK(db.record == nullptr);
    CHECK(db.factory == &factory);
    CHECK(g_lastFlag == false);
}

static void test_ctor_file_flag_passthrough() {
    CResFile record;
    CColladaFactory& factory = *fakeFactory();
    g_nextLoadResult = &record;
    CColladaDatabase db;
    ctor_0x60f304(&db, nullptr, true, &factory);
    CHECK(g_lastFlag == true);
    CHECK(record.refCount == 2);
}

int main() {
    test_ctor_refcounts_record();
    test_ctor_null_record();
    test_ctor_file_flag_passthrough();
    if (g_failures == 0) {
        std::printf("recon_v2_wave_04: all tests passed\n");
        return 0;
    }
    std::printf("recon_v2_wave_04: %d failure(s)\n", g_failures);
    return 1;
}
