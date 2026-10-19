// Batch g1-game-app-rnd-8b06ae-0 (game-app, class rnd::RandomGenerator with its RoomPool and ListElem
// destructors). Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Header edits made for this batch, in place and without removing or reordering members (see the owner headers):
//   dh2/rnd/RandomGenerator.hpp: +0x00 m_rngState and +0x04 m_seed (were pad_00); m_blocks and m_listRules typed as
//     std::map<const char*, ..., lstr> (were byte arrays); +0x114..+0x12b split into m_rootTile, m_roomPools,
//     m_xmlDocument and m_xmlBuffer; LoadRoomPools, LoadListRules and Generate return int (LoadRuleFile reads them).
//   dh2/rnd/RoomPool.hpp: +0x10 m_generator (was pad_10).   dh2/rnd/ListRule.hpp: +0x28 m_generator (after m_elems).
//
// Notes:
//   - PrintMap: the original's walk has no observable effect in the binary, so the body is empty.
//   - Generate: RootRule::Impl::Generate yields the root Tile*. RootRule.hpp declares it Tile*, and Generate stores it.
#include "dh2/rnd/RandomGenerator.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <new>
#include <utility>

#include "core-platform/memory.hpp"
#include "dh2/LevelConfig.hpp"
#include "dh2/PropertyMap.hpp"
#include "dh2/global/ToLowerCase.hpp"
#include "dh2/rnd/Block.hpp"
#include "dh2/rnd/ListRule.hpp"
#include "dh2/rnd/RoomPool.hpp"
#include "dh2/rnd/Tile.hpp"
#include "tinyxml.h"

namespace rnd {

namespace {

// Copies a name into the original's 512-byte key buffer. The original copies with strcpy (LC_API_STRCPY_0, which
// is strcpy in the game-ui notes). The copy here stops at the buffer end; the original overflows for names of 512
// characters or more.
void CopyNameKey(char (&key)[512], const char* name) {
    std::strncpy(key, name, sizeof(key) - 1);
    key[sizeof(key) - 1] = '\0';
}

// The per-child part of LoadRoomPools (0x485cdc): allocate a RoomPool (operator new(0x14, 0), size 0 and an empty
// element vector), set its generator at +0x10, read it from XML, and append it to the pool vector.
void LoadOneRoomPool(RandomGenerator* generator, TiXmlNode* child) {
    RoomPool* pool = new (CustomAlloc(static_cast<unsigned int>(sizeof(RoomPool)))) RoomPool();
    pool->m_generator = generator;
    pool->LoadFromXml(child);
    generator->m_roomPools.push_back(pool);
}

// The per-child part of LoadListRules (0x4865f0): allocate a ListRule (operator new(0x2c, 0), empty name), default
// its replacement flag to true at +0x18 and its generator at +0x28, read it from XML, and insert it by name. The key
// is the name's own storage, as in the original. A name already present keeps its first rule (insert_unique).
void LoadOneListRule(RandomGenerator* generator, TiXmlNode* child) {
    ListRule* rule = new (CustomAlloc(static_cast<unsigned int>(sizeof(ListRule)))) ListRule();
    rule->m_replacement = true;
    rule->m_generator = generator;
    rule->LoadFromXml(child);
    generator->m_listRules.insert(std::make_pair(rule->m_name.c_str(), rule));
}

}  // namespace

// 0x483a94 rnd::RandomGenerator::NextInt()
// Advances the state: state = (279470273 * (state + 1)) mod 0xFFFFFFFB. The product is 64-bit; the result becomes the
// new state and is returned as int.
int RandomGenerator::NextInt() {
    const std::uint64_t next = 279470273ull * static_cast<std::uint64_t>(m_rngState + 1u) % 0xFFFFFFFBull;
    m_rngState = static_cast<std::uint32_t>(next);
    return static_cast<int>(next);
}

// 0x483ac8 rnd::RandomGenerator::GetInt(int, int)
// Returns lo when lo >= hi. Otherwise returns lo plus a draw in [0, hi - lo). The subtraction and the addition wrap
// at 32 bits, as the original's int arithmetic does.
int RandomGenerator::GetInt(int lo, int hi) {
    if (lo < hi) {
        const std::uint32_t span = static_cast<std::uint32_t>(hi) - static_cast<std::uint32_t>(lo);
        const std::uint32_t draw = static_cast<std::uint32_t>(NextInt()) % span;
        return static_cast<int>(static_cast<std::uint32_t>(lo) + draw);
    }
    return lo;
}

// 0x483af8 rnd::RandomGenerator::operator()(unsigned int)
unsigned int RandomGenerator::operator()(unsigned int n) {
    return static_cast<unsigned int>(NextInt()) % n;
}

// 0x483b14 rnd::RandomGenerator::Hash(unsigned char*)
// djb2 variant: h starts at 5381 and each byte c up to the terminating NUL makes h = 33 * h + c. An empty string
// hashes to 5381. The original returns the same 32 bits as a signed int; the header declares unsigned.
unsigned int RandomGenerator::Hash(unsigned char* data) {
    std::uint32_t h = 5381u;
    for (; *data != 0; ++data) {
        h = h * 33u + *data;
    }
    return h;
}

// 0x4843a0 rnd::RandomGenerator::UnloadTiles()
// Unspawns the root tile at +0x114 and clears the word.
void RandomGenerator::UnloadTiles() {
    if (m_rootTile) {
        m_rootTile->Unspawn();
        m_rootTile = nullptr;
    }
}

// 0x484438 rnd::RandomGenerator::GetList(char const*) const
// Finds a list rule by name in the list map (the mapped value at node +0x14); null when absent.
ListRule* RandomGenerator::GetList(const char* name) const {
    const auto it = m_listRules.find(name);
    return it == m_listRules.end() ? nullptr : it->second;
}

// 0x484554 rnd::RandomGenerator::ValidList(char const*)
// Copies the name, lowercases it (ToLowerCase(buf, 0, -1): the whole string) and reports whether the list map has it.
bool RandomGenerator::ValidList(const char* name) {
    char key[512];
    CopyNameKey(key, name);
    ToLowerCase(key, 0, -1);
    return m_listRules.find(key) != m_listRules.end();
}

// 0x4845d0 rnd::RandomGenerator::ValidBlock(char const*)
// Same as ValidList, against the block map.
bool RandomGenerator::ValidBlock(const char* name) {
    char key[512];
    CopyNameKey(key, name);
    ToLowerCase(key, 0, -1);
    return m_blocks.find(key) != m_blocks.end();
}

// 0x484820 rnd::RandomGenerator::PrintMap()
// The pseudocode walks the tile grid with deque iterators: one step per row, and a column loop bounded by the first
// row's length. Its only calls are deque iterator helpers, and it stores to locals only. The release binary therefore
// prints nothing and changes no state, so the body is empty. The original returns the row count, which Generate ignores, and the
// header declares void.
void RandomGenerator::PrintMap() {
}

// 0x485a0c rnd::RoomPool::~RoomPool()
// The original resets the element vector's end pointer to its begin pointer, then destroys the vector. RPElem has no
// destructor, so clear() has the same effect. The member vector is destroyed after this body.
RoomPool::~RoomPool() {
    m_elems.clear();
}

// 0x485a34 rnd::RandomGenerator::UnloadRoomPools()
// Takes the first pool off m_roomPools until it is empty. Each pool gets its destructor and CustomFree, as in the
// original; null entries are skipped.
void RandomGenerator::UnloadRoomPools() {
    while (!m_roomPools.empty()) {
        RoomPool* pool = m_roomPools.front();
        m_roomPools.erase(m_roomPools.begin());
        if (pool) {
            pool->~RoomPool();
            CustomFree(pool);
        }
    }
}

// 0x485cdc rnd::RandomGenerator::LoadRoomPools(TiXmlNode*)
// For each child of the node named "pool", in document order: a RoomPool (size 0, empty elements, generator this) is loaded from the
// child and appended to the pool vector. Returns 1.
int RandomGenerator::LoadRoomPools(TiXmlNode* node) {
    for (TiXmlNode* child = node->FirstChild("pool"); child != nullptr; child = child->NextSibling("pool")) {
        LoadOneRoomPool(this, child);
    }
    return 1;
}

// 0x4865f0 rnd::RandomGenerator::LoadListRules(TiXmlNode*)
// For each child of the node named "list", in document order: a ListRule (empty name, replacement true, generator this) is loaded from
// the child and inserted into the list map under its name. Returns 1.
int RandomGenerator::LoadListRules(TiXmlNode* node) {
    for (TiXmlNode* child = node->FirstChild("list"); child != nullptr; child = child->NextSibling("list")) {
        LoadOneListRule(this, child);
    }
    return 1;
}

// 0x487e84 rnd::RandomGenerator::RandomGenerator()   (complete-object constructor, C1)
// 0x487fdc rnd::RandomGenerator::RandomGenerator()   (base-object constructor, C2; same body)
// The tile grid and the two maps start empty, and so do the rule and string members. The original does not write
// +0x00 and +0x04, so they are zeroed here to keep reads defined. The root tile, the pool vector, the document and
// the buffer start null or empty. The scene directory is "data/scene/". The LevelConfig is built in place
// (operator new(0x318, 0) becomes CustomAlloc), with its class name, PropertyMap::InitProperties and
// PropertyMap::LoadDefaultProperties.
RandomGenerator::RandomGenerator() : m_rootRule(*this), m_sceneDir("data/scene/") {
    m_rngState = 0;
    m_seed = 0;
    m_rootTile = nullptr;
    m_xmlDocument = nullptr;
    m_xmlBuffer = nullptr;
    m_levelConfig = nullptr;
    void* block = CustomAlloc(static_cast<unsigned int>(sizeof(LevelConfig)));
    m_levelConfig = new (block) LevelConfig(static_cast<ObjectBase::GO_IDS>(4));
    static_cast<PropertyMap*>(m_levelConfig)->m_className = "LevelConfig";   // ObjectBase +0x20, PropertyMap +0x1c
    static_cast<PropertyMap*>(m_levelConfig)->InitProperties();
    static_cast<PropertyMap*>(m_levelConfig)->LoadDefaultProperties();
}

// 0x488134 rnd::RandomGenerator::Generate(int)
// Clears the grid, sets both seed words, and runs RootRule::Impl over the grid. The root Tile* that Impl::Generate
// returns is stored at +0x114 (m_rootTile), replacing the previous value without unspawning it, as the original does.
// When the root is non-null, PrintMap() and Tile::Print() run on it and the function returns 1. Otherwise it returns 0.
// PrintMap has no observable effect in the binary (see its row).
int RandomGenerator::Generate(int seed) {
    m_tiles.Clear();
    m_seed = seed;
    m_rngState = static_cast<std::uint32_t>(seed);
    RootRule::Impl impl(m_rootRule);
    m_rootTile = impl.Generate(m_tiles);
    if (m_rootTile) {
        PrintMap();
        m_rootTile->Print();
        return 1;
    }
    return 0;
}

// 0x4881d0 rnd::ListElem::~ListElem()
// The original frees the buffers of m_visual, m_gameplay and m_name in that order (through the node pool up to 0x80
// bytes, CustomFree above). The std::string members release their storage after this empty body, in reverse
// declaration order: m_visual, m_gameplay, m_name, the same order.
ListElem::~ListElem() {
}

// 0x488300 rnd::RandomGenerator::UnloadRules()
// Frees the file buffer at +0x128 with free(), deletes the TiXmlDocument at +0x124 through its virtual deleting destructor and
// clears both words, then empties the list-rule map (each rule gets its destructor and CustomFree), calls RootRule::Unload, and
// empties the block map (each block is deleted through its virtual destructor).
void RandomGenerator::UnloadRules() {
    std::free(m_xmlBuffer);
    m_xmlBuffer = nullptr;
    delete m_xmlDocument;
    m_xmlDocument = nullptr;
    while (!m_listRules.empty()) {
        auto it = m_listRules.begin();
        ListRule* rule = it->second;
        m_listRules.erase(it);
        if (rule) {
            rule->~ListRule();
            CustomFree(rule);
        }
    }
    m_rootRule.Unload();
    while (!m_blocks.empty()) {
        auto it = m_blocks.begin();
        Block* block = it->second;
        m_blocks.erase(it);
        if (block) {
            delete block;
        }
    }
}

// 0x488504 rnd::RandomGenerator::~RandomGenerator()   (complete-object destructor, D1)
// 0x488704 rnd::RandomGenerator::~RandomGenerator()   (base-object destructor, D2; same body)
// The body unloads the tiles, the rules and the room pools, then deletes the
// LevelConfig through its virtual deleting destructor. The members then go in reverse declaration order, which matches
// the original: the strings at +0x174, +0x15c, +0x144 and +0x12c, the room pool vector at +0x118, the string at +0xfc,
// the RootRule at +0x6c, the list-rule map, the block map, and the tile grid at +0x08.
RandomGenerator::~RandomGenerator() {
    UnloadTiles();
    UnloadRules();
    UnloadRoomPools();
    if (m_levelConfig) {
        delete m_levelConfig;
        m_levelConfig = nullptr;
    }
}

}  // namespace rnd
