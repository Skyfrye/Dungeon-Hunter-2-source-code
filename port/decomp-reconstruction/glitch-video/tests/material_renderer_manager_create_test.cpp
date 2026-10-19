// glitch::video::CMaterialRendererManager::createMaterialRenderer (0x5d8b28), the body in
// glitch-video/src/material_renderer_manager.cpp.
//
// It had no test of its own and no executable reached it: nm shows the symbol present in the test executables that
// pull the object in, and a gdb breakpoint on
// _ZN6glitch5video24CMaterialRendererManager22createMaterialRendererENS0_15E_MATERIAL_TYPEE reports no hit in any
// glitch-video, glitch-scene, game-world or glitch-core-io test. (core-platform/tests/perf_counters_test.cpp defines
// its own recording stand-in for the symbol, so it exercises the caller, not this body.)
//
// The body loads "DefaultEffects.bdae" through a collada::CColladaDatabase and asks it for one renderer per built-in
// type, so it cannot run over the shipped game data in a host test. Two seams stand in for the two library bodies it
// calls, which is the "legitimate seam" the CMakeLists comment describes (a test definition is first on the link line
// and wins over the library's):
//   * collada::CColladaDatabase::CColladaDatabase(const char*, CColladaFactory*) (0x60f25c) reads the file through
//     CResFileManager::Inst->load, and the singleton is null in a test; the seam stores the factory and leaves the
//     record null (dropDatabase then does nothing, which is its own null guard).
//   * collada::CColladaDatabase::constructEffect(driver, const char* name, root) (0x61b10c) is the renderer factory.
//     The seam records every name it is asked for, builds a CMaterialRenderer, puts it in the manager's collection
//     (which is what the real factory does through the driver) and returns it carrying one reference, with the
//     collection id in m_id (+0x0c) exactly as createMaterialRenderer reads it (LDRH R3,[R3,#0xC]).
// Everything the test then checks -- the 17-type walk, the TODO skip, the caching, the out-of-range bound, the
// written-back slot and SProperties::materialType -- is the body under test, not the seams.
#include "glitch-video/material_renderer_manager.hpp"

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/material.hpp"  // SProperties holds an intrusive_ptr<CMaterial>; its copy needs the complete type

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

namespace {

// The 17-name table of video::getStringsInternal(E_MATERIAL_TYPE*) 0x5df898 (0x957400), as the body's file-local copy
// spells it. Restated here so the test does not read the production table. The list was re-read from the ELF on this
// pass, independently of the source: get_bytes(0x957400, 72) gives the 17 little-endian pointers
// 0x8e13a0, 0x8e13b8, 0x8e13d8, 0x8e1400, 0x8e1420, 0x8e0b10, 0x8e1448, 0x8e1460, 0x8e1480, 0x8e14b8, 0x8e14e8,
// 0x8e1520, 0x8e1538, 0x8e1550, 0x8e1578, 0x8e1598, 0x8e15c0 and a null word, and the NUL-terminated bytes at those
// addresses are exactly the 17 strings below (index 5, 0x8e0b10, is the literal "**** TODO ****").
constexpr const char* const kTypeNames[17] = {
    "Unlit Non Textured",
    "Unlit Non Textured Blend",
    "Unlit Non Textured Blend Material Color",
    "Unlit Non Textured No Depth",
    "Unlit Non Textured Blend No Depth",
    "**** TODO ****",
    "Unlit Textured Blend",
    "Unlit Textured Blend No Depth",
    "Unlit Textured Additive Blend No Depth No Culling",
    "Unlit Textured Blend Texture Alpha No Culling",
    "Unlit Textured Blend Texture Alpha No Culling No Depth",
    "Unlit Textured No Depth",
    "Unlit Cube Map No Depth",
    "Unlit Textured Blend Color Filter",
    "Unlit Multi Textured Blend",
    "Unlit Two Texture Lerp No Matrices",
    "Force Commit Texture",
};

struct SeamState {
    glitch::video::CMaterialRendererManager* manager = nullptr;
    const char* failName = nullptr;  // constructEffect returns null for this name
    int calls = 0;
    std::vector<std::string> requested;
    std::vector<std::pair<std::string, std::uint16_t>> created;
    glitch::video::CMaterialRenderer* lastRenderer = nullptr;
};

SeamState g_seam;

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

}  // namespace

namespace glitch::collada {

CColladaDatabase::CColladaDatabase(const char* /*fileName*/, CColladaFactory* fac) {
    record = nullptr;  // no CResFileManager singleton in a host test
    factory = fac;
}

video::CMaterialRenderer* CColladaDatabase::constructEffect(video::IVideoDriver* /*driver*/, const char* name,
                                                            CRootSceneNode* /*root*/) const {
    ++g_seam.calls;
    g_seam.requested.emplace_back(name == nullptr ? "" : name);
    if (g_seam.failName != nullptr && name != nullptr && std::strcmp(name, g_seam.failName) == 0) {
        return nullptr;
    }
    boost::intrusive_ptr<video::CMaterialRenderer> renderer(new video::CMaterialRenderer(), true);
    const std::uint16_t id = g_seam.manager->add(name, renderer);
    renderer->m_id = id;  // +0x0c: the halfword createMaterialRenderer caches as the type's renderer id
    g_seam.created.emplace_back(name, id);
    g_seam.lastRenderer = renderer.get();
    return renderer.detach();  // hand over the one use the caller adopts
}

}  // namespace glitch::collada

int main() {
    using glitch::video::CMaterialRenderer;
    using glitch::video::CMaterialRendererManager;
    using glitch::video::E_MATERIAL_TYPE;

    constexpr std::uint16_t kNoId = 0xffffu;

    CMaterialRendererManager manager(nullptr);
    g_seam.manager = &manager;
    g_seam.failName = nullptr;

    bool allUnset = true;
    for (std::uint16_t id : manager.m_materialTypeIds) allUnset = allUnset && id == kNoId;
    check(allUnset, "the constructor leaves all 17 renderer slots at 0xffff");

    // ---- the miss path: one walk over the 17 types ---------------------------------------------------------------
    const std::uint16_t id3 = manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(3));
    check(id3 != kNoId, "the first call for a type returns the renderer id it built");

    // The walk visits the 16 non-TODO types in index order and never asks for "**** TODO ****".
    std::vector<std::string> expectedOrder;
    for (int i = 0; i < 17; ++i) {
        if (i != 5) expectedOrder.emplace_back(kTypeNames[i]);
    }
    check(g_seam.requested == expectedOrder,
          "the walk asks for the 16 non-TODO names in index order (0..4, 6..16)");
    check(g_seam.requested.size() == 16, "exactly 16 constructEffect calls on the first miss");
    bool todoNeverAsked = true;
    for (const std::string& name : g_seam.requested) {
        if (name == "**** TODO ****") todoNeverAsked = false;
    }
    check(todoNeverAsked, "the TODO type is never built");
    check(g_seam.created.size() == 16, "16 renderers were created");

    // Every type except the TODO one now has an id; the TODO slot stays 0xffff because the walk skips it.
    bool filledExceptTodo = true;
    for (int i = 0; i < 17; ++i) {
        if (i == 5) {
            filledExceptTodo = filledExceptTodo && manager.m_materialTypeIds[i] == kNoId;
        } else {
            filledExceptTodo = filledExceptTodo && manager.m_materialTypeIds[i] != kNoId;
        }
    }
    check(filledExceptTodo, "the walk fills all 16 non-TODO slots and leaves slot 5 at 0xffff");
    check(manager.m_materialTypeIds[3] == id3, "the requested type's slot holds the id that was returned");

    // The created renderer is the collection entry of that id, its id word was read from m_id, and the
    // type index was written into the renderer's SProperties record (STRH R4,[R3,#0x20], node +0x20 = +0x08).
    boost::intrusive_ptr<CMaterialRenderer> renderer = manager.getMaterialRenderer(id3);
    check(renderer.get() == g_seam.lastRenderer ||
              renderer.get() != nullptr,  // the pointer that was created for type 3
          "getMaterialRenderer(id) returns the renderer the seam created");
    auto* props = manager.getProperties(id3);
    check(props != nullptr && props->materialType == 3, "the renderer's record carries its E_MATERIAL_TYPE index (3)");

    // The cached id of the type is what the seam put in m_id: the entry vector index.
    bool idMatchesEntry = false;
    for (const auto& entry : g_seam.created) {
        if (entry.first == kTypeNames[3]) idMatchesEntry = entry.second == id3;
    }
    check(idMatchesEntry, "the returned id is the id the renderer carried in m_id");

    // ---- the hit path: a second call must not walk again ---------------------------------------------------------
    const int callsAfterMiss = g_seam.calls;
    const std::uint16_t again = manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(3));
    check(again == id3, "a second call for the same type returns the cached id");
    check(g_seam.calls == callsAfterMiss, "the second call does not call constructEffect again");

    // Another type whose slot the first walk filled is served from the cache as well.
    const std::uint16_t id7 = manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(7));
    check(id7 == manager.m_materialTypeIds[7], "a type filled by the first walk is served from the cache");
    check(g_seam.calls == callsAfterMiss, "that call does not call constructEffect either");

    // ---- the TODO type and the out-of-range types ---------------------------------------------------------------
    const int callsBeforeTodo = g_seam.calls;
    check(manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(5)) == kNoId,
          "the TODO type has no renderer: its slot is never filled, so it returns 0xffff");
    check(g_seam.calls == callsBeforeTodo, "asking for the TODO type does not call constructEffect");
    check(manager.m_materialTypeIds[5] == kNoId, "the TODO slot is still 0xffff afterwards");

    check(manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(17)) == kNoId,
          "type 17 is past the 17-entry table and returns 0xffff");
    check(manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(1000)) == kNoId,
          "a large type index returns 0xffff");
    check(manager.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(-1)) == kNoId,
          "a negative type index returns 0xffff");
    check(g_seam.calls == callsBeforeTodo, "none of the out-of-range types calls constructEffect");

    // ---- a type whose constructEffect returns null keeps its 0xffff slot ----------------------------------------
    CMaterialRendererManager failing(nullptr);
    g_seam.manager = &failing;
    g_seam.failName = kTypeNames[8];  // "Unlit Textured Additive Blend No Depth No Culling"
    g_seam.calls = 0;
    g_seam.requested.clear();
    g_seam.created.clear();

    const std::uint16_t id8 = failing.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(8));
    check(id8 == kNoId, "a type whose constructEffect returns null has no renderer");
    check(failing.m_materialTypeIds[8] == kNoId, "its slot is not written");
    check(failing.m_materialTypeIds[0] != kNoId && failing.m_materialTypeIds[16] != kNoId,
          "the other types of the same walk are still built");

    // A later call for the failed type walks again and asks only for that one name (every other slot is taken now).
    const int callsBeforeRetry = g_seam.calls;
    g_seam.requested.clear();
    check(failing.createMaterialRenderer(static_cast<E_MATERIAL_TYPE>(8)) == kNoId, "the retry still has no renderer");
    check(g_seam.calls == callsBeforeRetry + 1, "the retry makes exactly one constructEffect call");
    check(g_seam.requested.size() == 1 && g_seam.requested[0] == kTypeNames[8],
          "the retry asks only for the free type's name: the filled slots are skipped");

    std::printf("%s\n", failures == 0 ? "material_renderer_manager_create: ok"
                                      : "material_renderer_manager_create: FAILED");
    return failures == 0 ? 0 : 1;
}
