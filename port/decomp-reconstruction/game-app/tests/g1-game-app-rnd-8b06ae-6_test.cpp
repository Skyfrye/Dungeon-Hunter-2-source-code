// Test for the rule, list, room pool and XML-forwarding functions of batch g1-game-app-rnd-8b06ae-6. It links with the batch's own
// source only. The source references functions that other batches define, so they are given here as link-only stubs: the ListElem
// and BlockSearch members the list tests use, the RandomGenerator members, the RoomPool members, Rule::GetApp, Path::Impl::IsDeadEnd,
// Block::IsStraight, RootRule::Impl::PlaceRootTile and the engine string compare. The stubs are simple (they copy fields or return
// fixed values) and are not the originals. Returns non-zero on failure.
#include <cctype>
#include <cstdio>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/BlockSearch.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"
#include "vendor-lua/dh2_rand48.hpp"

// ---- link-only stubs ----

int gAssertLevel = 0;

// The same ASCII case-insensitive compare as core-platform/src/lc_api.cpp.
int LC_API_STRCASECMP(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) {
            return ca - cb;
        }
        if (ca == 0) {
            return 0;
        }
    }
}

namespace {

// Storage for the generator object that the stubs hand out. The stubs never read it.
alignas(rnd::RandomGenerator) unsigned char gGeneratorStorage[sizeof(rnd::RandomGenerator)];
unsigned long gLastFindKey = 0;
int gSentinel = 0;

}  // namespace

namespace rnd {

// ListElem members (batch -5 constructors, batch -3 assignment, batch -0 destructor).
ListElem::ListElem() : m_owner(nullptr), m_chances(100) {}
ListElem::ListElem(ListRule* owner) : m_owner(owner), m_chances(100) {}
ListElem::~ListElem() {}
ListElem& ListElem::operator=(const ListElem& other) {
    if (this != &other) {
        m_owner = other.m_owner;
        m_name = other.m_name;
        m_gameplay = other.m_gameplay;
        m_visual = other.m_visual;
        m_chances = other.m_chances;
    }
    return *this;
}

// BlockSearch members (batch -5 constructor and destructor, batch -3 operator()).
BlockSearch::BlockSearch(const char* name, const char* gameplay, const char* visual)
    : m_name(name), m_gameplay(gameplay), m_visual(visual) {}
BlockSearch::~BlockSearch() {}
bool BlockSearch::operator()(ListElem& elem) const {
    return elem.m_name == m_name && elem.m_gameplay == m_gameplay && elem.m_visual == m_visual;
}

// RandomGenerator members used by the batch: the block lookup, the hash, and the call operator std::random_shuffle makes.
Block* RandomGenerator::GetBlock(const char* name) const {
    (void)name;
    return nullptr;
}
unsigned int RandomGenerator::Hash(unsigned char* data) {
    return static_cast<unsigned int>(std::strlen(reinterpret_cast<const char*>(data))) + 1000u;
}
unsigned int RandomGenerator::operator()(unsigned int n) {
    return n == 0 ? 0u : n - 1u;
}

// Rule::GetApp returns the generator behind the root rule; the test never shuffles, so the object is never used.
RandomGenerator* Rule::GetApp() const {
    return reinterpret_cast<RandomGenerator*>(gGeneratorStorage);
}

// Path::Impl and Block functions used by AddExit and IsStraight (other batches define them).
bool Path::Impl::IsDeadEnd() const { return false; }
bool Block::IsStraight() const { return false; }

// RootRule::Impl::PlaceRootTile (batch -3) is only reached through Generate, which the test does not call.
Tile* RootRule::Impl::PlaceRootTile(Block*, ListElem) { return nullptr; }

// The loaders' collaborators. ListElem::LoadFromXml (batch -3) copies the "name" attribute; ValidBlock / ValidList (batch -0) record the
// names and answer gValidAnswer; GetList returns gListSentinel; RPElem::FillSizes (batch -2) does nothing; Tile members (batch -7) do
// nothing and TrySpawn finds no cell.
void ListElem::LoadFromXml(TiXmlNode* node) {
    const char* name = node->ToElement()->Attribute("name");
    m_name = name != nullptr ? name : "";
}
std::vector<std::string> gValidBlockCalls;
std::vector<std::string> gValidListCalls;
bool gValidAnswer = true;
ListRule gListSentinel;
bool RandomGenerator::ValidBlock(const char* name) {
    gValidBlockCalls.push_back(name);
    return gValidAnswer;
}
bool RandomGenerator::ValidList(const char* name) {
    gValidListCalls.push_back(name);
    return gValidAnswer;
}
ListRule* RandomGenerator::GetList(const char* name) const {
    gValidListCalls.push_back(std::string("get:") + name);
    return &gListSentinel;
}
void RPElem::FillSizes(int, int) {}
void Tile::RemoveNeighbors() {}
void Tile::Unspawn() {}
Tile* Tile::TrySpawn(const Exit*, const Exit*, const Exit*, ListElem&) { return nullptr; }

// Rule: the constructor and the key virtuals (batches -4 and -5) are given here so that the abstract rule can be derived from.
Rule::Rule(RootRule& root, Rule* parent) : m_root(&root), m_parent(parent), m_childCount(0), m_id(0), unk_80(1), unk_84(1) {
    m_list = nullptr;
    m_listIndex = -1;
}
Rule::~Rule() {}
void Rule::Unload() {}
RootRule* Rule::GetRootRule() { return m_root; }

// RoomPool members: the destructor (batch -2) and the lookup by hash (batch -3).
RoomPool::~RoomPool() {}
RPElem* RoomPool::Find(unsigned long key) {
    gLastFindKey = key;
    return reinterpret_cast<RPElem*>(&gSentinel);
}

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

rnd::ListElem MakeElem(const char* name, const char* gameplay, const char* visual, int chances) {
    rnd::ListElem elem;
    elem.m_name = name;
    elem.m_gameplay = gameplay;
    elem.m_visual = visual;
    elem.m_chances = chances;
    return elem;
}

rnd::RPElem MakeSize(int lowest, int highest) {
    rnd::RPElem elem;
    elem.m_pool = nullptr;
    elem.m_id = 0;
    elem.m_recursive = false;
    elem.unk_0c = lowest;
    elem.unk_10 = highest;
    elem.unk_14 = lowest;
    return elem;
}

// ---- tests ----

// 0x48e280: the copy constructor copies the owner, the three strings and the chance count.
void TestListElemCopy() {
    int ownerStorage = 0;
    rnd::ListRule* owner = reinterpret_cast<rnd::ListRule*>(&ownerStorage);
    rnd::ListElem source(owner);
    source.m_name = "room_a";
    source.m_gameplay = "dungeon";
    source.m_visual = "room_a.mgx";
    source.m_chances = 42;
    rnd::ListElem copy(source);
    EXPECT(copy.m_owner == owner);
    EXPECT(copy.m_name == "room_a");
    EXPECT(copy.m_gameplay == "dungeon");
    EXPECT(copy.m_visual == "room_a.mgx");
    EXPECT(copy.m_chances == 42);
}

// 0x490520: the BlockSearch copy constructor copies the three strings.
void TestBlockSearchCopy() {
    rnd::BlockSearch search("wall_a", "dungeon", "wall_a.mgx");
    rnd::BlockSearch copy(search);
    EXPECT(copy.m_name == "wall_a");
    EXPECT(copy.m_gameplay == "dungeon");
    EXPECT(copy.m_visual == "wall_a.mgx");
}

// 0x48ec74: Replace appends only when the list's replacement flag is clear, and appends the element even when its owner is another list.
void TestListRuleReplace() {
    rnd::ListRule list;
    list.m_generator = nullptr;
    list.m_replacement = true;
    rnd::ListElem own(&list);
    list.Replace(own);
    EXPECT(list.m_elems.empty());

    list.m_replacement = false;
    list.Replace(own);
    EXPECT(list.m_elems.size() == 1);
    EXPECT(list.m_elems.size() == 1 && list.m_elems[0].m_owner == &list);

    rnd::ListElem foreign(nullptr);
    list.Replace(foreign);
    EXPECT(list.m_elems.size() == 2);
}

// 0x4905d0: Find returns a copy of the matching element; a replacement list keeps it, a non-replacement list with
// allowReplacement gives it up. No match returns a default element.
void TestListRuleFind() {
    rnd::ListRule list;
    list.m_generator = nullptr;
    list.m_replacement = true;
    list.m_elems.push_back(MakeElem("a", "g", "v", 10));
    list.m_elems.push_back(MakeElem("b", "g", "v", 20));

    const rnd::ListElem found = list.Find("b", "g", "v", true);
    EXPECT(found.m_name == "b");
    EXPECT(found.m_chances == 20);
    EXPECT(list.m_elems.size() == 2);

    const rnd::ListElem missing = list.Find("zz", "g", "v", true);
    EXPECT(missing.m_owner == nullptr);
    EXPECT(missing.m_chances == 100);
    EXPECT(missing.m_name.empty());
    EXPECT(list.m_elems.size() == 2);

    list.m_replacement = false;
    const rnd::ListElem taken = list.Find("b", "g", "v", true);
    EXPECT(taken.m_chances == 20);
    EXPECT(list.m_elems.size() == 1);
    EXPECT(list.m_elems.size() == 1 && list.m_elems[0].m_name == "a");

    const rnd::ListElem kept = list.Find("a", "g", "v", false);
    EXPECT(kept.m_name == "a");
    EXPECT(list.m_elems.size() == 1);
}

// 0x4906bc: Find(std::string) hashes the key with the pool's generator and looks the hash up.
void TestRoomPoolFindByName() {
    rnd::RoomPool pool;
    pool.m_generator = reinterpret_cast<rnd::RandomGenerator*>(gGeneratorStorage);
    const rnd::RPElem* found = pool.Find(std::string("abc"));
    EXPECT(found == reinterpret_cast<const rnd::RPElem*>(&gSentinel));
    EXPECT(gLastFindKey == 1003u);
}

// 0x490904: sizes outside the sum range return 0; a total at the lowest sum leaves the sizes alone.
void TestComputeSizeOfRulesRange() {
    rnd::RoomPool pool;
    pool.m_elems.push_back(MakeSize(1, 3));
    pool.m_elems.push_back(MakeSize(2, 2));

    pool.m_size = 2;
    EXPECT(pool.ComputeSizeOfRules() == 0);
    pool.m_size = 6;
    EXPECT(pool.ComputeSizeOfRules() == 0);

    pool.m_size = 3;
    EXPECT(pool.ComputeSizeOfRules() == 1);
    EXPECT(pool.m_elems[0].unk_14 == 1);
    EXPECT(pool.m_elems[1].unk_14 == 2);
}

// 0x490904: the room for growth is spent one unit at a time; a single element that can grow is chosen every time.
void TestComputeSizeOfRulesSingleGrowth() {
    rnd::RoomPool pool;
    pool.m_elems.push_back(MakeSize(1, 3));
    pool.m_elems.push_back(MakeSize(2, 2));

    pool.m_size = 4;
    EXPECT(pool.ComputeSizeOfRules() == 1);
    EXPECT(pool.m_elems[0].unk_14 == 2);
    EXPECT(pool.m_elems[1].unk_14 == 2);

    pool.m_elems[0].unk_14 = 1;
    pool.m_size = 5;
    EXPECT(pool.ComputeSizeOfRules() == 1);
    EXPECT(pool.m_elems[0].unk_14 == 3);
    EXPECT(pool.m_elems[1].unk_14 == 2);
}

// 0x490904: with several elements that can grow, every seed leaves the total at m_size and each size inside its range.
void TestComputeSizeOfRulesInvariant() {
    for (long seed = 1; seed <= 25; ++seed) {
        dh2::rand48_seed(seed);
        rnd::RoomPool pool;
        pool.m_elems.push_back(MakeSize(1, 3));
        pool.m_elems.push_back(MakeSize(1, 3));
        pool.m_elems.push_back(MakeSize(0, 4));
        pool.m_size = 6;
        EXPECT(pool.ComputeSizeOfRules() == 1);
        int total = 0;
        bool inRange = true;
        for (const rnd::RPElem& elem : pool.m_elems) {
            total += elem.unk_14;
            inRange = inRange && elem.unk_14 >= elem.unk_0c && elem.unk_14 <= elem.unk_10;
        }
        EXPECT(total == 6);
        EXPECT(inRange);
    }

    // At the highest sum every element reaches its maximum.
    dh2::rand48_seed(7);
    rnd::RoomPool full;
    full.m_elems.push_back(MakeSize(1, 3));
    full.m_elems.push_back(MakeSize(1, 3));
    full.m_size = 6;
    EXPECT(full.ComputeSizeOfRules() == 1);
    EXPECT(full.m_elems[0].unk_14 == 3);
    EXPECT(full.m_elems[1].unk_14 == 3);
}

class TestRule : public rnd::Rule {
public:
    TestRule(rnd::RootRule& root, rnd::Rule* parent) : rnd::Rule(root, parent) {}
    rnd::Rule::Impl* NewImpl(rnd::Rule::Impl*) const override { return nullptr; }
};

}  // namespace

namespace rnd {
// Rule::NewRule (batch -5) builds a TestRule child, which loads through the real Rule::LoadFromXml.
Rule* Rule::NewRule(TiXmlNode*) { return new TestRule(*m_root, this); }
}  // namespace rnd

namespace {

// rnd::gDistributions (0x8ce5c8): 6 x 6 blocks of 121 rows of 6 signed bytes, indexed 4356 * candidate count + 726 * child count. A row whose first byte is -1
// ends the run. One candidate and one child have the single row {0}; two candidates and two children have {0, 1} and {1, 0}; no candidates have none.
void TestDistributionTable() {
    EXPECT(sizeof(rnd::gDistributions) == 26136);
    EXPECT(rnd::gDistributions[0] < 0);
    const std::int8_t* one = &rnd::gDistributions[4356 * 1 + 726 * 1];
    EXPECT(one[0] == 0 && one[6] < 0);
    const std::int8_t* two = &rnd::gDistributions[4356 * 2 + 726 * 2];
    EXPECT(two[0] == 0 && two[1] == 1);
    EXPECT(two[6] == 1 && two[7] == 0);
    EXPECT(two[12] < 0);
}

TiXmlNode* ParseRoot(TiXmlDocument& document, const char* text, const char* rootName) {
    document.LoadFromBuffer(text, static_cast<int>(std::strlen(text)), TIXML_DEFAULT_ENCODING);
    return document.FirstChild(rootName);
}

void TestListRuleLoadFromXml() {
    rnd::gValidBlockCalls.clear();
    rnd::gValidAnswer = true;
    TiXmlDocument document;
    TiXmlNode* node = ParseRoot(document, "<list name=\"CaVe\" replacement=\"false\"><elem name=\"a\"/><x/><elem name=\"b\"/></list>", "list");
    rnd::ListRule rule;
    rule.m_generator = reinterpret_cast<rnd::RandomGenerator*>(gGeneratorStorage);
    rule.LoadFromXml(node);
    EXPECT(rule.m_name == "cave");  // lowercased
    EXPECT(!rule.m_replacement);    // only "true" keeps it
    EXPECT(rule.m_elems.size() == 2);
    EXPECT(rule.m_elems.size() == 2 && rule.m_elems[0].m_name == "a" && rule.m_elems[1].m_name == "b");
    EXPECT(rule.m_elems.size() == 2 && rule.m_elems[0].m_owner == &rule);
    EXPECT(rnd::gValidBlockCalls.size() == 2 && rnd::gValidBlockCalls[0] == "a" && rnd::gValidBlockCalls[1] == "b");

    TiXmlDocument second;
    TiXmlNode* plain = ParseRoot(second, "<list name=\"x\"/>", "list");
    rnd::ListRule other;
    other.m_generator = rule.m_generator;
    other.m_replacement = false;
    other.LoadFromXml(plain);
    EXPECT(other.m_replacement);  // an absent attribute means true
    EXPECT(other.m_elems.empty());
}

void TestRuleLoadFromXml() {
    alignas(rnd::RootRule) static unsigned char rootStorage[sizeof(rnd::RootRule)];
    rnd::RootRule* root = reinterpret_cast<rnd::RootRule*>(rootStorage);
    root->m_generator = reinterpret_cast<rnd::RandomGenerator*>(gGeneratorStorage);
    rnd::gValidBlockCalls.clear();
    rnd::gValidListCalls.clear();
    rnd::gValidAnswer = true;

    // Comma separated block names: each one before a comma, then the rest; "exit" and "id" are read.
    {
        TiXmlDocument document;
        TiXmlNode* node = ParseRoot(document, "<rule name=\"a,b,c\" exit=\"north\" id=\"pool\"/>", "rule");
        TestRule rule(*root, nullptr);
        EXPECT(rule.LoadFromXml(node));
        EXPECT(rule.m_blockNames.size() == 3);
        EXPECT(rule.m_blockNames.size() == 3 && rule.m_blockNames[0] == "a" && rule.m_blockNames[1] == "b" && rule.m_blockNames[2] == "c");
        EXPECT(rnd::gValidBlockCalls.size() == 3);
        EXPECT(rule.m_exit == "north");
        EXPECT(rule.m_id == 1004u);  // the stub hash: length + 1000
    }
    // A list name, with and without an index.
    {
        TiXmlDocument document;
        TiXmlNode* node = ParseRoot(document, "<rule name=\"#Cave[2]\"/>", "rule");
        TestRule rule(*root, nullptr);
        EXPECT(rule.LoadFromXml(node));
        EXPECT(rule.m_list == &rnd::gListSentinel);
        EXPECT(rule.m_listIndex == 2);
        EXPECT(rnd::gValidListCalls.size() == 2 && rnd::gValidListCalls[0] == "Cave");
    }
    {
        TiXmlDocument document;
        TiXmlNode* node = ParseRoot(document, "<rule name=\"#cave\"/>", "rule");
        TestRule rule(*root, nullptr);
        EXPECT(rule.LoadFromXml(node));
        EXPECT(rule.m_list == &rnd::gListSentinel);
        EXPECT(rule.m_listIndex == -1);
    }
    // No name, or no node: the load fails. A child without a name fails the parent, but the other children still load.
    {
        TiXmlDocument document;
        TiXmlNode* node = ParseRoot(document, "<rule/>", "rule");
        TestRule rule(*root, nullptr);
        EXPECT(!rule.LoadFromXml(node));
        EXPECT(!rule.LoadFromXml(nullptr));
    }
    {
        TiXmlDocument document;
        TiXmlNode* node = ParseRoot(document, "<rule name=\"a\"><child/><child name=\"b\"/></rule>", "rule");
        TestRule rule(*root, nullptr);
        EXPECT(!rule.LoadFromXml(node));
        EXPECT(rule.m_childCount == 2);
        EXPECT(rule.m_childCount == 2 && rule.m_children[1]->m_blockNames.size() == 1);
        for (int i = 0; i < rule.m_childCount; ++i) {
            delete rule.m_children[i];
        }
    }
}

}  // namespace

int main() {
    TestListElemCopy();
    TestBlockSearchCopy();
    TestListRuleReplace();
    TestListRuleFind();
    TestRoomPoolFindByName();
    TestComputeSizeOfRulesRange();
    TestComputeSizeOfRulesSingleGrowth();
    TestComputeSizeOfRulesInvariant();
    TestDistributionTable();
    TestListRuleLoadFromXml();
    TestRuleLoadFromXml();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("rnd batch -6: all tests passed\n");
    return 0;
}
