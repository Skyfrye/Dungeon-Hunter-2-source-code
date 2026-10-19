// Test for the rnd batch g1-game-app-rnd-8b06ae-3. It covers ListElem::operator=, BlockSearch::operator() and
// RoomPool::Find(unsigned char*). The other functions of the batch build runtime rule nodes from Rule and RandomGenerator
// objects, which this link does not construct. It links with the batch's own source only. The source references functions
// and vtables that other batches define, so they are given here as link-only stubs: the constructors and destructors of
// ListElem, BlockSearch and RoomPool (batches -0 and -5), the key functions of the Impl classes (batch -4, which emit their
// vtables here), the virtual overrides the vtables name, RoomPool::Find(unsigned long) (batch -2, the same search), the hash
// and level functions of RandomGenerator, the Rule::GetApp accessor, and the Tile functions. Returns non-zero on failure.
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "dh2/rnd/Tile.hpp"

// ---- link-only stubs ----

// Allocator used by the NewImpl factories. The tests do not call the factories.
void* CustomAlloc(unsigned int size) {
    return std::malloc(size);
}

namespace rnd {

// ListElem and BlockSearch (batch -5 and -0).
ListElem::ListElem() : m_owner(nullptr), m_chances(100) {}
ListElem::~ListElem() = default;
BlockSearch::BlockSearch(const char* name, const char* gameplay, const char* visual)
    : m_name(name), m_gameplay(gameplay), m_visual(visual) {}
BlockSearch::~BlockSearch() = default;

// RoomPool (batch -0). The search is the one batch -2 defines: the first element whose key matches.
RoomPool::~RoomPool() = default;
RPElem* RoomPool::Find(unsigned long key) {
    for (RPElem& elem : m_elems) {
        if (elem.m_id == key) {
            return &elem;
        }
    }
    return nullptr;
}

// RandomGenerator (batch -0). The hash is the string length, which keeps the key-to-id mapping easy to read in the test.
unsigned int RandomGenerator::Hash(unsigned char* data) {
    return static_cast<unsigned int>(std::strlen(reinterpret_cast<const char*>(data)));
}
int RandomGenerator::GetInt(int lo, int /*hi*/) {
    return lo;
}

// Rule (batch -2) and Tile (batches -5 and later).
RandomGenerator* Rule::GetApp() const {
    return nullptr;
}
Tile* Tile::NewRoot(RandomGenerator& /*generator*/, Block& /*block*/, ListElem& /*elem*/) {
    return nullptr;
}
bool Tile::PlaceTile(int /*x*/, int /*y*/, float /*z*/) { return true; }
void Tile::Unspawn() {}

// Rule::Impl and its derived nodes (batches -2 and -4). The key destructors give the vtables their home in this link.
Rule::Impl::~Impl() {}
void Rule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& /*candidates*/, ListRule*& /*list*/) {}
int Rule::Impl::OneStep(Tile* /*tile*/, const Exit* /*from*/, const Exit* /*to*/) {
    return 0;
}
bool Rule::Impl::Step(Tile* /*tile*/, const Exit* /*from*/) {
    return false;
}
RootRule* Rule::Impl::GetRootRule() {
    return nullptr;
}

Path::Impl::~Impl() {}
void Path::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& /*candidates*/, ListRule*& /*list*/) {}
int Path::Impl::OneStep(Tile* /*tile*/, const Exit* /*from*/, const Exit* /*to*/) {
    return 0;
}

EndPath::Impl::~Impl() {}
int EndPath::Impl::OneStep(Tile* /*tile*/, const Exit* /*from*/, const Exit* /*to*/) {
    return 1;
}

ForceBlock::Impl::~Impl() {}
void ForceBlock::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& /*candidates*/, ListRule*& /*list*/) {}

RootRule::Impl::~Impl() {}
void RootRule::Impl::FilterExits(std::vector<std::pair<const Exit*, ListElem>>& /*candidates*/, ListRule*& /*list*/) {}
void RootRule::Impl::WriteDebuggingInfo() {}

}  // namespace rnd

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Stands in for a RandomGenerator. The stub Hash never reads it, so an address is enough.
int g_generatorMarker = 0;

void TestListElemAssign() {
    rnd::ListElem source;
    source.m_owner = reinterpret_cast<rnd::ListRule*>(&g_generatorMarker);
    source.m_name = "north";
    source.m_gameplay = "gameplay";
    source.m_visual = "visual";
    source.m_chances = 40;

    rnd::ListElem target;
    target.m_name = "old";
    target.m_gameplay = "old gameplay";
    target.m_visual = "old visual";
    target.m_chances = 7;

    rnd::ListElem& returned = (target = source);
    EXPECT(&returned == &target);
    EXPECT(target.m_owner == source.m_owner);
    EXPECT(target.m_name == "north");
    EXPECT(target.m_gameplay == "gameplay");
    EXPECT(target.m_visual == "visual");
    EXPECT(target.m_chances == 40);
    // The source is unchanged.
    EXPECT(source.m_name == "north");
    EXPECT(source.m_chances == 40);

    // Self assignment keeps every field.
    rnd::ListElem& alias = target;
    target = alias;
    EXPECT(target.m_name == "north");
    EXPECT(target.m_gameplay == "gameplay");
    EXPECT(target.m_visual == "visual");
    EXPECT(target.m_chances == 40);
}

void TestBlockSearch() {
    rnd::ListElem elem;
    elem.m_name = "room";
    elem.m_gameplay = "dungeon";
    elem.m_visual = "stone";

    rnd::BlockSearch same("room", "dungeon", "stone");
    EXPECT(same(elem));

    // Each field must match exactly, in length and in bytes.
    rnd::BlockSearch longerName("rooms", "dungeon", "stone");
    EXPECT(!longerName(elem));
    rnd::BlockSearch shorterName("roo", "dungeon", "stone");
    EXPECT(!shorterName(elem));
    rnd::BlockSearch otherGameplay("room", "dungeonX", "stone");
    EXPECT(!otherGameplay(elem));
    rnd::BlockSearch otherVisual("room", "dungeon", "Stone");
    EXPECT(!otherVisual(elem));

    // Empty fields match empty fields.
    rnd::ListElem blank;
    rnd::BlockSearch empty("", "", "");
    EXPECT(empty(blank));
    EXPECT(!empty(elem));
}

void TestRoomPoolFindByKey() {
    rnd::RoomPool pool;
    pool.m_generator = reinterpret_cast<rnd::RandomGenerator*>(&g_generatorMarker);

    // The key "abcd" hashes to 4 with the stub hash.
    unsigned char key[] = "abcd";
    EXPECT(pool.Find(key) == nullptr);  // empty pool

    rnd::RPElem first;
    first.m_id = 3;
    rnd::RPElem second;
    second.m_id = 4;
    pool.m_elems.push_back(first);
    pool.m_elems.push_back(second);

    rnd::RPElem* found = pool.Find(key);
    EXPECT(found == &pool.m_elems[1]);
    EXPECT(found != nullptr && found->m_id == 4);

    // Keys that hash to no stored id find nothing.
    unsigned char shorter[] = "ab";
    EXPECT(pool.Find(shorter) == nullptr);
    // Find by key equals Find by the hash value.
    EXPECT(pool.Find(key) == pool.Find(4UL));
}

}  // namespace

int main() {
    TestListElemAssign();
    TestBlockSearch();
    TestRoomPoolFindByKey();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-rnd-8b06ae-3 test: all checks passed\n");
    return 0;
}
