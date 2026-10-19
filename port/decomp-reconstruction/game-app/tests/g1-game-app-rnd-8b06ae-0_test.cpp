// Test for the rnd::RandomGenerator batch g1-game-app-rnd-8b06ae-0. It links with the batch's own source only, so the
// engine functions that source references are defined here as link-only stubs. The tested paths do not reach the
// stubs that abort. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"

// ---- link-only stubs (the batch source references these; the tested paths do not call the aborting ones) ----

// Constructors and destructors of the polymorphic engine classes are given as no-op aliases under their mangled
// C1/D1 names. A C++ definition would write a vtable pointer and need the class's vtable, which is not linked here.
extern "C" {
void NoopCtorOneArg(void*) {}
void NoopCtorRef(void*, void*) {}
void NoopCtorGoIds(void*, int) {}
void NoopDtor(void*) {}
}
extern "C" void _ZN11LevelConfigC1EN10ObjectBase6GO_IDSE(void*, int) __attribute__((alias("NoopCtorGoIds")));
extern "C" void _ZN3rnd8RootRuleC1ERNS_15RandomGeneratorE(void*, void*) __attribute__((alias("NoopCtorRef")));
extern "C" void _ZN3rnd8RootRule4ImplC1ERKS0_(void*, void*) __attribute__((alias("NoopCtorRef")));
extern "C" void _ZN3rnd8RootRule4ImplD1Ev(void*) __attribute__((alias("NoopDtor")));
extern "C" void _ZN3rnd8RootRuleD1Ev(void*) __attribute__((alias("NoopDtor")));

namespace {
// The root that the stubbed RootRule::Impl::Generate returns. Null is a failed placement.
rnd::Tile* g_stubRoot = nullptr;
// Calls to Tile::Print made by RandomGenerator::Generate, and the tile the last call was made on.
int g_printCalls = 0;
const rnd::Tile* g_printedTile = nullptr;
// Storage for a non-null root. Generate only stores that pointer, and Tile::Print is a stub, so it is never read.
alignas(16) unsigned char g_fakeRootStorage[64];
}  // namespace

namespace rnd {
void Tile::Unspawn() { std::abort(); }
void Tile::Print() {
    ++g_printCalls;
    g_printedTile = this;
}
void RootRule::Unload() {}
Tile* RootRule::Impl::Generate(Array2d<Tile*>&) { return g_stubRoot; }
}
int g_poolLoads = 0;
int g_listLoads = 0;
namespace rnd {
void RoomPool::LoadFromXml(TiXmlNode*) { ++g_poolLoads; }
void ListRule::LoadFromXml(TiXmlNode*) {
    ++g_listLoads;
    m_name = "list" + std::to_string(g_listLoads);
}
}  // namespace rnd

void PropertyMap::InitProperties() {}
void PropertyMap::LoadDefaultProperties() {}

bool lstr::operator()(const char* lhs, const char* rhs) const { return std::strcmp(lhs, rhs) < 0; }

std::size_t ToLowerCase(char* str, int from, int to) {
    if (!str) return 0;
    const std::size_t len = std::strlen(str);
    if (to < 0 || static_cast<std::size_t>(to) >= len) to = static_cast<int>(len) - 1;
    for (int i = from; i <= to; ++i) {
        if (str[i] >= 'A' && str[i] <= 'Z') str[i] = static_cast<char>(str[i] - 'A' + 'a');
    }
    return len;
}

void* CustomAlloc(unsigned size) { return std::malloc(size); }
void CustomFree(void* p) { std::free(p); }

// ---- test helpers ----

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Independent reference for one generator step: next = (279470273 * (state + 1)) mod 0xFFFFFFFB.
std::uint64_t RefStep(std::uint32_t state) {
    return (279470273ull * static_cast<std::uint64_t>(state + 1u)) % 0xFFFFFFFBull;
}

// Reference djb2 variant written as shifts: h = (h << 5) + h + c, from 5381, up to the NUL.
std::uint32_t RefHash(const char* s) {
    std::uint32_t h = 5381u;
    for (const unsigned char* p = reinterpret_cast<const unsigned char*>(s); *p != 0; ++p) {
        h = (h << 5) + h + *p;
    }
    return h;
}

// Generators are created with new and never destroyed: the destructor runs UnloadRules, which needs the TiXmlDocument
// seam that this test does not model.
rnd::RandomGenerator* MakeGenerator(std::uint32_t state) {
    rnd::RandomGenerator* gen = new rnd::RandomGenerator();
    gen->m_rngState = state;
    return gen;
}

void TestNextInt() {
    rnd::RandomGenerator* gen = MakeGenerator(1);
    std::uint32_t state = 1;
    for (int i = 0; i < 5; ++i) {
        const std::uint64_t expected = RefStep(state);
        const int got = gen->NextInt();
        EXPECT(static_cast<std::uint32_t>(got) == static_cast<std::uint32_t>(expected));
        EXPECT(gen->m_rngState == static_cast<std::uint32_t>(expected));
        state = static_cast<std::uint32_t>(expected);
    }
}

void TestGetInt() {
    rnd::RandomGenerator* gen = MakeGenerator(7);
    const std::uint32_t before = gen->m_rngState;
    EXPECT(gen->GetInt(5, 5) == 5);
    EXPECT(gen->GetInt(9, 3) == 9);
    EXPECT(gen->m_rngState == before);   // no draw when lo >= hi

    // One draw: lo + next % (hi - lo).
    const std::uint64_t expected = RefStep(7u) % 10u;
    EXPECT(gen->GetInt(10, 20) == 10 + static_cast<int>(expected));

    rnd::RandomGenerator* range = MakeGenerator(99);
    for (int i = 0; i < 1000; ++i) {
        const int v = range->GetInt(-4, 4);
        EXPECT(v >= -4 && v < 4);
    }
}

void TestCallOperator() {
    rnd::RandomGenerator* gen = MakeGenerator(3);
    const std::uint64_t next = RefStep(3u);
    EXPECT(gen->operator()(100u) == static_cast<unsigned int>(next % 100u));
}

void TestHash() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    unsigned char empty[] = "";
    unsigned char a[] = "a";
    unsigned char ab[] = "ab";
    unsigned char hello[] = "hello, dungeon";
    EXPECT(gen->Hash(empty) == 5381u);
    EXPECT(gen->Hash(a) == 33u * 5381u + 97u);          // 177670
    EXPECT(gen->Hash(ab) == 33u * (33u * 5381u + 97u) + 98u);
    EXPECT(gen->Hash(hello) == RefHash("hello, dungeon"));
}

void TestListLookup() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    // ListRule objects are plain storage here (never destroyed); the name is the map key.
    void* mem = std::malloc(sizeof(rnd::ListRule));
    rnd::ListRule* forest = new (mem) rnd::ListRule();
    forest->m_name = "forest";
    gen->m_listRules.insert(std::make_pair(forest->m_name.c_str(), forest));

    EXPECT(gen->GetList("forest") == forest);
    EXPECT(gen->GetList("desert") == nullptr);
    EXPECT(gen->ValidList("forest"));
    EXPECT(gen->ValidList("Forest"));                   // lowercased before the lookup
    EXPECT(!gen->ValidList("nope"));

    // The block map is keyed the same way; its values are not dereferenced by ValidBlock.
    gen->m_blocks.insert(std::make_pair("wall_a", static_cast<rnd::Block*>(nullptr)));
    EXPECT(gen->ValidBlock("WALL_A"));
    EXPECT(!gen->ValidBlock("wall_b"));
}

void TestUnloadTilesWithoutRoot() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    gen->m_rootTile = nullptr;
    gen->UnloadTiles();                                 // null root: nothing to unspawn
    EXPECT(gen->m_rootTile == nullptr);
}

void TestUnloadRoomPools() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    rnd::RoomPool* p1 = new (std::malloc(sizeof(rnd::RoomPool))) rnd::RoomPool();
    rnd::RoomPool* p2 = new (std::malloc(sizeof(rnd::RoomPool))) rnd::RoomPool();
    gen->m_roomPools.push_back(p1);
    gen->m_roomPools.push_back(nullptr);                // null entries are skipped, as in the original
    gen->m_roomPools.push_back(p2);
    gen->UnloadRoomPools();
    EXPECT(gen->m_roomPools.empty());
}

void TestUnloadRulesEmptiesListMap() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    void* mem = std::malloc(sizeof(rnd::ListRule));
    rnd::ListRule* rule = new (mem) rnd::ListRule();
    rule->m_name = "cave";
    gen->m_listRules.insert(std::make_pair(rule->m_name.c_str(), rule));
    gen->m_xmlBuffer = nullptr;                         // free(NULL) in UnloadRules
    gen->m_xmlDocument = new TiXmlDocument();           // deleted and cleared by UnloadRules
    gen->UnloadRules();
    EXPECT(gen->m_listRules.empty());
    EXPECT(gen->m_xmlBuffer == nullptr);
    EXPECT(gen->m_xmlDocument == nullptr);
}

void TestLoadCountsReturnOne() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    // Only the children named "pool" and "list" are loaded; the others are skipped. Each loader returns 1.
    TiXmlDocument document;
    const char* text = "<rules><pool/><other/><pool/><list/></rules>";
    document.LoadFromBuffer(text, static_cast<int>(std::strlen(text)), TIXML_DEFAULT_ENCODING);
    TiXmlNode* rules = document.FirstChild("rules");
    EXPECT(rules != nullptr);
    g_poolLoads = 0;
    g_listLoads = 0;
    EXPECT(gen->LoadRoomPools(rules) == 1);
    EXPECT(gen->LoadListRules(rules) == 1);
    EXPECT(g_poolLoads == 2);
    EXPECT(gen->m_roomPools.size() == 2);
    EXPECT(gen->m_roomPools[0]->m_generator == gen);
    EXPECT(g_listLoads == 1);
    EXPECT(gen->m_listRules.size() == 1);
    EXPECT(gen->m_listRules.begin()->second->m_generator == gen);
    EXPECT(gen->m_listRules.begin()->second->m_replacement);
}

void TestGenerateReportsFailure() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    g_stubRoot = nullptr;                               // the stubbed RootRule::Impl places nothing
    g_printCalls = 0;
    gen->m_rootTile = reinterpret_cast<rnd::Tile*>(g_fakeRootStorage);   // a stale root that Generate overwrites
    EXPECT(gen->Generate(42) == 0);
    EXPECT(gen->m_seed == 42);
    EXPECT(gen->m_rngState == 42u);
    EXPECT(gen->m_rootTile == nullptr);                 // +0x114 takes the null result of Impl::Generate
    EXPECT(g_printCalls == 0);                          // Tile::Print runs only for a placed root
    gen->m_rootTile = nullptr;                          // keep the destructor path (UnloadTiles) off the stale value
}

void TestGenerateStoresRoot() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    g_stubRoot = reinterpret_cast<rnd::Tile*>(g_fakeRootStorage);   // the stubbed RootRule::Impl places a root
    g_printCalls = 0;
    g_printedTile = nullptr;
    EXPECT(gen->Generate(7) == 1);                      // a placed root gives 1
    EXPECT(gen->m_rootTile == g_stubRoot);              // stored at +0x114
    EXPECT(gen->m_seed == 7);
    EXPECT(gen->m_rngState == 7u);
    EXPECT(g_printCalls == 1);                          // Tile::Print runs once, on the stored root
    EXPECT(g_printedTile == gen->m_rootTile);
    gen->m_rootTile = nullptr;                          // keep the destructor path (UnloadTiles) off the stub root
    g_stubRoot = nullptr;
}

void TestConstructorDefaults() {
    rnd::RandomGenerator* gen = MakeGenerator(0);
    EXPECT(gen->m_rootTile == nullptr);
    EXPECT(gen->m_xmlDocument == nullptr);
    EXPECT(gen->m_xmlBuffer == nullptr);
    EXPECT(gen->m_sceneDir == "data/scene/");
    EXPECT(gen->m_levelConfig != nullptr);
    EXPECT(gen->m_roomPools.empty());
    EXPECT(gen->m_listRules.empty());
    EXPECT(gen->m_blocks.empty());
}

}  // namespace

int main() {
    TestNextInt();
    TestGetInt();
    TestCallOperator();
    TestHash();
    TestListLookup();
    TestUnloadTilesWithoutRoot();
    TestUnloadRoomPools();
    TestUnloadRulesEmptiesListMap();
    TestLoadCountsReturnOne();
    TestGenerateReportsFailure();
    TestGenerateStoresRoot();
    TestConstructorDefaults();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-rnd-8b06ae-0 tests passed\n");
    return 0;
}
