// Test for the rnd batch g1-game-app-rnd-8b06ae-7. It covers the Tile tree: NewRoot, the constructor's parent link and
// copy of the element, Spawn (placement through PlaceTile and the erase of a candidate from its list), AddChild,
// RemoveChild, Print, RemoveNeighbors and Unspawn (the map removal and the list hand-back), TrySpawn (the cell and height from the
// exits, the block's FitsInMap) and SetModuleMVXProperties (the attributes of the mvx file). SaveAsModuleXML is not run here.
//
// The batch source references functions that other batches define, so they are given here as link-only stubs: the
// allocator, the ListElem and Block members, ListRule::Replace, and the PropertyMap calls of SaveAsModuleXML. The Module
// constructor and destructor are assembly stubs that just return. A C++ definition would drag in the whole object chain
// (Decor, GameObject, ObjectBase, the vtables), and the test never runs SaveAsModuleXML.
//
// The tiles keep the generator's address only, and the tests never read a generator member, so the test uses zeroed
// storage of the right size for the RandomGenerator object instead of building one.
//
// Returns non-zero on failure.
#include <cstdio>
#include <cstdlib>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Module.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/rnd/Direction.hpp"
#include "dh2/rnd/Exit.hpp"
#include "dh2/rnd/FileText.hpp"
#include "tinyxml.h"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/ListElem.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/RandomGenerator.hpp"
#include "dh2/rnd/Tile.hpp"

// ---- link-only stubs ----

void* CustomAlloc(unsigned int size) {
    return std::malloc(size);
}

void CustomFree(void* p) {
    std::free(p);
}

// Module::Module(ObjectBase::GO_IDS) and Module::~Module(), the complete-object forms SaveAsModuleXML calls.
asm(".text\n"
    ".globl _ZN6ModuleC1EN10ObjectBase6GO_IDSE\n"
    "_ZN6ModuleC1EN10ObjectBase6GO_IDSE:\n"
    "    ret\n"
    ".globl _ZN6ModuleD1Ev\n"
    "_ZN6ModuleD1Ev:\n"
    "    ret\n");

// Counts the Replace calls the Unspawn of an owned tile makes.
static int g_replaceCalls = 0;

namespace rnd {

ListElem::ListElem() : m_owner(nullptr), m_chances(100) {}
ListElem::ListElem(const ListElem& other)
    : m_owner(other.m_owner),
      m_name(other.m_name),
      m_gameplay(other.m_gameplay),
      m_visual(other.m_visual),
      m_chances(other.m_chances) {}
ListElem::~ListElem() = default;
ListElem& ListElem::operator=(const ListElem& other) {
    m_owner = other.m_owner;
    m_name = other.m_name;
    m_gameplay = other.m_gameplay;
    m_visual = other.m_visual;
    m_chances = other.m_chances;
    return *this;
}

void ListRule::Replace(ListElem& /*elem*/) {
    ++g_replaceCalls;
}

Block::Block() {}
Block::~Block() {}

}  // namespace rnd

void PropertyMap::InitProperties() {}
void PropertyMap::LoadDefaultProperties() {}
static std::vector<std::pair<std::string, std::string>> g_properties;  // SetProperty calls; a null value is recorded as "<null>"
void PropertyMap::SetProperty(const char* name, const char* value) {
    g_properties.emplace_back(name, value != nullptr ? value : "<null>");
}
void PropertyMap::SavePropertiesToXML(TiXmlElement* /*element*/, const char* /*name*/) {}

// The mvx file text ReadFileText hands out, and whether the file opens.
static std::string g_mvxText;
static bool g_mvxOpens = false;
static std::string g_mvxPath;
bool rnd::ReadFileText(const char* path, std::string& text) {
    g_mvxPath = path;
    text = g_mvxText;
    return g_mvxOpens;
}

// A block that records the map calls the tiles make.
class TestBlock : public rnd::Block {
public:
    explicit TestBlock(const char* name) {
        m_name = name;
    }

    bool PlaceInMap(Array2d<rnd::Tile*>& map, rnd::Tile* tile, int x, int y) override {
        ++placeCalls;
        lastMap = &map;
        lastTile = tile;
        lastX = x;
        lastY = y;
        return true;
    }

    bool RemoveFromMap(Array2d<rnd::Tile*>& map, rnd::Tile* /*tile*/, int x, int y) override {
        ++removeCalls;
        lastMap = &map;
        removedX.push_back(x);
        removedY.push_back(y);
        return true;
    }

    bool FitsInMap(Array2d<rnd::Tile*>& /*map*/, int x, int y) override {
        fitsX = x;
        fitsY = y;
        return fits;
    }

    bool fits = true;
    int fitsX = 0;
    int fitsY = 0;

    int placeCalls = 0;
    int removeCalls = 0;
    Array2d<rnd::Tile*>* lastMap = nullptr;
    rnd::Tile* lastTile = nullptr;
    int lastX = 0;
    int lastY = 0;
    std::vector<int> removedX;
    std::vector<int> removedY;
};

static int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

// Zeroed storage for the generator; the tiles only take its address.
alignas(rnd::RandomGenerator) static unsigned char g_generatorStorage[sizeof(rnd::RandomGenerator)];

static rnd::RandomGenerator& Generator() {
    return *reinterpret_cast<rnd::RandomGenerator*>(g_generatorStorage);
}

int main() {
    rnd::RandomGenerator& gen = Generator();
    TestBlock block("room");

    rnd::ListElem elem;
    elem.m_name = "room";
    elem.m_gameplay = "data/gp/room";
    elem.m_visual = "data/vis/room";

    // NewRoot: no parent, the block and generator, the name pointer, and a copy of the element.
    rnd::Tile* root = rnd::Tile::NewRoot(gen, block, elem);
    CHECK(root != nullptr);
    CHECK(root->m_parent == nullptr);
    CHECK(root->m_childCount == 0);
    CHECK(root->m_block == &block);
    CHECK(root->m_generator == &gen);
    CHECK(root->m_blockName == block.m_name.c_str());
    CHECK(root->m_listElem.m_name == "room");
    CHECK(root->m_listElem.m_gameplay == "data/gp/room");
    CHECK(root->m_listElem.m_visual == "data/vis/room");
    CHECK(root->TryPlaceTile(0, 0));

    // Spawn: the child links to its parent, is placed through PlaceTile, and the block's map is called.
    rnd::Tile* c1 = root->Spawn(block, 3, 4, 1.5f, elem);
    CHECK(c1 != nullptr);
    CHECK(c1->m_parent == root);
    CHECK(root->m_childCount == 1);
    CHECK(root->m_children[0] == c1);
    CHECK(c1->m_x == 3);
    CHECK(c1->m_y == 4);
    CHECK(c1->m_z == 1.5f);
    CHECK(block.placeCalls == 1);
    CHECK(block.lastTile == c1);
    CHECK(block.lastX == 3);
    CHECK(block.lastY == 4);
    CHECK(block.lastMap == &gen.m_tiles);

    rnd::Tile* c2 = root->Spawn(block, 5, 0, 0.0f, elem);
    rnd::Tile* c3 = root->Spawn(block, 6, 0, 0.0f, elem);
    CHECK(root->m_childCount == 3);
    CHECK(root->m_children[1] == c2);
    CHECK(root->m_children[2] == c3);

    // RemoveChild: the last child moves into the freed slot. A child that is not present changes nothing.
    root->RemoveChild(c1);
    CHECK(root->m_childCount == 2);
    CHECK(root->m_children[0] == c3);
    CHECK(root->m_children[1] == c2);
    root->RemoveChild(c1);
    CHECK(root->m_childCount == 2);

    // Print visits the children and changes nothing.
    root->Print();
    CHECK(root->m_childCount == 2);

    // RemoveNeighbors: c2 has a grandchild g1 at (1, 1). Children go from the last slot down; each child loses its own
    // children first. The map removals are: g1, c2, then c3.
    rnd::Tile* g1 = c2->Spawn(block, 1, 1, 0.0f, elem);
    CHECK(g1 != nullptr);
    CHECK(c2->m_childCount == 1);
    CHECK(block.placeCalls == 4);  // c1, c2, c3 on root plus g1 on c2
    root->RemoveNeighbors();
    CHECK(root->m_childCount == 0);
    CHECK(block.removeCalls == 3);
    CHECK(block.removedX.size() == 3 && block.removedX[0] == 1 && block.removedX[1] == 5 && block.removedX[2] == 6);
    CHECK(block.removedY.size() == 3 && block.removedY[0] == 1 && block.removedY[1] == 0 && block.removedY[2] == 0);

    // Spawn's erase: the element's list loses the first candidate with the same gameplay and name, unless the list
    // is a replacement list. Candidates: a (name a, gameplay g), b (name b, gameplay g), c (name b, gameplay h).
    rnd::ListRule list;
    list.m_replacement = false;
    rnd::ListElem candA = elem;
    candA.m_name = "a";
    candA.m_gameplay = "g";
    candA.m_owner = &list;
    rnd::ListElem candB = elem;
    candB.m_name = "b";
    candB.m_gameplay = "g";
    candB.m_owner = &list;
    rnd::ListElem candC = elem;
    candC.m_name = "b";
    candC.m_gameplay = "h";
    candC.m_owner = &list;
    list.m_elems.push_back(candA);
    list.m_elems.push_back(candB);
    list.m_elems.push_back(candC);

    rnd::ListElem spawnB = candB;
    spawnB.m_owner = &list;
    rnd::Tile* t1 = root->Spawn(block, 9, 9, 0.0f, spawnB);
    CHECK(t1 != nullptr);
    CHECK(list.m_elems.size() == 2);
    CHECK(list.m_elems[0].m_name == "a" && list.m_elems[0].m_gameplay == "g");
    CHECK(list.m_elems[1].m_name == "b" && list.m_elems[1].m_gameplay == "h");
    CHECK(t1->m_listElem.m_owner == &list);

    // Unspawn of an owned tile hands its element back to the list (Replace), and removes it from its parent.
    const int replacesBefore = g_replaceCalls;
    const int childrenBefore = root->m_childCount;
    t1->Unspawn();
    CHECK(g_replaceCalls == replacesBefore + 1);
    CHECK(root->m_childCount == childrenBefore - 1);

    // A replacement list keeps its candidates when a matching element spawns.
    rnd::ListRule replacementList;
    replacementList.m_replacement = true;
    rnd::ListElem candR = candB;
    candR.m_owner = &replacementList;
    replacementList.m_elems.push_back(candR);
    rnd::ListElem spawnR = candR;
    rnd::Tile* t2 = root->Spawn(block, 10, 10, 0.0f, spawnR);
    CHECK(t2 != nullptr);
    CHECK(replacementList.m_elems.size() == 1);

    // Unspawn of a tile whose element has no owner does not call Replace.
    const int replacesBeforeNoOwner = g_replaceCalls;
    rnd::Tile* t3 = root->Spawn(block, 11, 11, 0.0f, elem);
    CHECK(t3 != nullptr);
    t3->Unspawn();
    CHECK(g_replaceCalls == replacesBeforeNoOwner);

    // TrySpawn: the cell is this tile's cell plus the offset of the direction opposite to the exit's, minus the exit's own cell (plus the
    // "from" exit's cell when given); the height is this tile's plus from's weight, minus the exit's weight. The block's FitsInMap decides.
    {
        TestBlock toBlock("hall");
        rnd::Block::Side toSide = {};
        toSide.m_block = &toBlock;
        toSide.m_x = 2;
        toSide.m_y = 3;
        toSide.m_weight = 1.5f;
        toSide.m_direction = &rnd::Direction::sDirections[1];  // east: the new tile sits to the west
        rnd::Block::Side fromSide = {};
        fromSide.m_x = 100;
        fromSide.m_y = 200;
        fromSide.m_weight = 2.0f;
        const rnd::Exit* toExit = reinterpret_cast<const rnd::Exit*>(&toSide);
        const rnd::Exit* fromExit = reinterpret_cast<const rnd::Exit*>(&fromSide);
        rnd::Tile* base = rnd::Tile::NewRoot(gen, block, elem);
        base->m_x = 10;
        base->m_y = 20;
        base->m_z = 5.0f;
        rnd::Tile* spawned = base->TrySpawn(nullptr, nullptr, toExit, elem);
        CHECK(spawned != nullptr);
        CHECK(toBlock.fitsX == 7 && toBlock.fitsY == 17);
        CHECK(spawned != nullptr && spawned->m_block == &toBlock && spawned->m_parent == base);
        CHECK(spawned != nullptr && spawned->m_x == 7 && spawned->m_y == 17 && spawned->m_z == 3.5f);
        rnd::Tile* shifted = base->TrySpawn(nullptr, fromExit, toExit, elem);
        CHECK(shifted != nullptr);
        CHECK(toBlock.fitsX == 107 && toBlock.fitsY == 217);
        CHECK(shifted != nullptr && shifted->m_x == 107 && shifted->m_y == 217 && shifted->m_z == 5.5f);
        toBlock.fits = false;
        const int childrenBeforeNoFit = base->m_childCount;
        CHECK(base->TrySpawn(nullptr, nullptr, toExit, elem) == nullptr);
        CHECK(base->m_childCount == childrenBeforeNoFit);
        base->RemoveNeighbors();
        base->Unspawn();
    }

    // SetModuleMVXProperties: the path is <gameplay>/mvx/<name>.mvx; an unreadable file sets nothing; the GameObject attributes of the
    // Module element are copied, an absent one as null.
    {
        TestBlock mvxBlock("cave");
        mvxBlock.m_gameplay = "data/gp";
        rnd::Tile* tile = rnd::Tile::NewRoot(gen, mvxBlock, elem);
        alignas(Module) static unsigned char moduleStorage[sizeof(Module)];
        Module* module = reinterpret_cast<Module*>(moduleStorage);
        g_properties.clear();
        g_mvxOpens = false;
        tile->SetModuleMVXProperties(module);
        CHECK(g_mvxPath == "data/gp/mvx/cave.mvx");
        CHECK(g_properties.empty());
        g_mvxOpens = true;
        g_mvxText = "<Module><GameObject scale=\"2\" dae=\"a.dae\" is_solid=\"1\"/></Module>";
        tile->SetModuleMVXProperties(module);
        CHECK(g_properties.size() == 6);
        CHECK(g_properties.size() == 6 && g_properties[0].first == "scale" && g_properties[0].second == "2");
        CHECK(g_properties.size() == 6 && g_properties[1].first == "xrefmax" && g_properties[1].second == "<null>");
        CHECK(g_properties.size() == 6 && g_properties[3].first == "dae" && g_properties[3].second == "a.dae");
        CHECK(g_properties.size() == 6 && g_properties[5].first == "is_solid" && g_properties[5].second == "1");
        g_properties.clear();
        g_mvxText = "<Module/>";
        tile->SetModuleMVXProperties(module);
        CHECK(g_properties.empty());
        tile->Unspawn();
    }

    if (g_failures == 0) {
        std::printf("tile tests passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
