// Test for the rnd batch g1-game-app-rnd-8b06ae-2. It covers MgxBlock placement on an Array2d grid (FitsInMap, PlaceInMap,
// RemoveFromMap), the fixed fields of the Block and MgxBlock constructors, RPElem::FillSizes and RoomPool::Find. The
// destructors of Block, MgxBlock and RoomPool are defined below as link-only defaults: the batch's vtables reference them,
// and their owner batches are not part of this link. Returns non-zero on failure.
#include <cstddef>
#include <cstdio>
#include <cstdlib>

#include "core-platform/array2d.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/rnd/MgxBlock.hpp"
#include "tinyxml.h"
#include "dh2/rnd/RPElem.hpp"
#include "dh2/rnd/RoomPool.hpp"

// Defined by core-platform/src/memory.cpp in the engine build.
int gAssertLevel = 0;

// Link-only destructors. The real ones are in other rnd batches.
namespace rnd {
Block::~Block() = default;
MgxBlock::~MgxBlock() = default;
RoomPool::~RoomPool() = default;
// MgxBlock::LoadFromXml belongs to batch -1; LoadFromXmlStream and FromFilename are not exercised here.
bool MgxBlock::LoadFromXml(TiXmlHandle&) { return false; }
}  // namespace rnd

// The device file system is not built in this link; FromFilename is not called.
FileSystemWin32& SavefileFileSystem() { std::abort(); }

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Stand-in tile addresses. The batch only compares tile pointers and never dereferences them.
int g_tileSlots[4];

rnd::Tile* TileAt(int i) {
    return reinterpret_cast<rnd::Tile*>(&g_tileSlots[i]);
}

void TestFillSizes() {
    rnd::RPElem e;
    e.unk_0c = -7;
    e.unk_10 = -7;
    e.unk_14 = -7;

    e.FillSizes(3, 5);
    EXPECT(e.unk_0c == 3);
    EXPECT(e.unk_10 == 5);
    EXPECT(e.unk_14 == 3);

    e.FillSizes(5, 3);
    EXPECT(e.unk_0c == 5);
    EXPECT(e.unk_10 == 5);
    EXPECT(e.unk_14 == 5);

    e.FillSizes(2, 2);
    EXPECT(e.unk_0c == 2);
    EXPECT(e.unk_10 == 2);
    EXPECT(e.unk_14 == 2);

    // A negative size leaves every field unchanged.
    e.FillSizes(-1, 4);
    EXPECT(e.unk_0c == 2);
    EXPECT(e.unk_10 == 2);
    EXPECT(e.unk_14 == 2);
    e.FillSizes(4, -1);
    EXPECT(e.unk_0c == 2);
    EXPECT(e.unk_10 == 2);
    EXPECT(e.unk_14 == 2);
}

void TestRoomPoolFind() {
    rnd::RoomPool pool;
    EXPECT(pool.Find(7UL) == nullptr);  // empty pool

    rnd::RPElem a;
    a.m_id = 7;
    rnd::RPElem b;
    b.m_id = 9;
    pool.m_elems.push_back(a);
    pool.m_elems.push_back(b);

    EXPECT(pool.Find(7UL) == &pool.m_elems[0]);
    EXPECT(pool.Find(9UL) == &pool.m_elems[1]);
    EXPECT(pool.Find(42UL) == nullptr);
}

void TestBlockDefaults() {
    rnd::MgxBlock block;
    EXPECT(block.m_blockWidth == 1);
    EXPECT(block.m_blockHeight == 1);
    EXPECT(block.m_sideCount == 0);
    EXPECT(block.m_unitWidth == 2960.0f);
    EXPECT(block.m_unitHeight == 2960.0f);
    EXPECT(block.m_fileBuffer == nullptr);
    EXPECT(block.m_document == nullptr);
    EXPECT(block.m_name.empty());
    EXPECT(block.m_gameplay.empty());
    EXPECT(block.m_visual.empty());
    for (const rnd::Block::Side& side : block.m_sides) {
        EXPECT(side.m_names.empty());
    }
}

void TestPlaceRemoveFits() {
    rnd::MgxBlock block;
    block.m_blockWidth = 2;
    block.m_blockHeight = 2;
    Array2d<rnd::Tile*> map;

    EXPECT(block.FitsInMap(map, 0, 0));
    EXPECT(block.PlaceInMap(map, TileAt(0), 0, 0));
    EXPECT(map(0, 0) == TileAt(0));
    EXPECT(map(1, 0) == TileAt(0));
    EXPECT(map(0, 1) == TileAt(0));
    EXPECT(map(1, 1) == TileAt(0));

    EXPECT(!block.FitsInMap(map, 0, 0));
    EXPECT(!block.FitsInMap(map, 1, 1));  // overlaps at (1, 1)
    EXPECT(block.FitsInMap(map, 2, 0));   // beside the block
    EXPECT(block.FitsInMap(map, 0, 2));   // below the block
    EXPECT(block.FitsInMap(map, -2, 0));  // left of the block, grows the grid

    EXPECT(block.RemoveFromMap(map, TileAt(0), 0, 0));
    EXPECT(map(0, 0) == nullptr);
    EXPECT(map(1, 1) == nullptr);
    EXPECT(block.FitsInMap(map, 0, 0));
}

void TestOccupiedCells() {
    gAssertLevel = 0;  // level 0: occupied and foreign cells are skipped silently

    rnd::MgxBlock block;
    block.m_blockWidth = 1;
    block.m_blockHeight = 1;
    Array2d<rnd::Tile*> map;

    EXPECT(block.PlaceInMap(map, TileAt(0), 3, 3));
    EXPECT(block.PlaceInMap(map, TileAt(1), 3, 3));  // occupied: the first tile stays
    EXPECT(map(3, 3) == TileAt(0));

    EXPECT(block.RemoveFromMap(map, TileAt(1), 3, 3));  // holds another tile: nothing is cleared
    EXPECT(map(3, 3) == TileAt(0));

    EXPECT(block.RemoveFromMap(map, TileAt(0), 3, 3));
    EXPECT(map(3, 3) == nullptr);
}

void TestNonSquareFootprint() {
    rnd::MgxBlock block;
    block.m_blockWidth = 3;
    block.m_blockHeight = 1;
    Array2d<rnd::Tile*> map;

    EXPECT(block.PlaceInMap(map, TileAt(2), 0, 0));
    EXPECT(map(0, 0) == TileAt(2));
    EXPECT(map(1, 0) == TileAt(2));
    EXPECT(map(2, 0) == TileAt(2));
    EXPECT(map(0, 1) == nullptr);  // the footprint is one row high
    EXPECT(!block.FitsInMap(map, 1, 0));
    EXPECT(block.FitsInMap(map, 0, 1));
}

}  // namespace

int main() {
    TestFillSizes();
    TestRoomPoolFind();
    TestBlockDefaults();
    TestPlaceRemoveFits();
    TestOccupiedCells();
    TestNonSquareFootprint();

    if (g_failures == 0) {
        std::printf("g1-game-app-rnd-8b06ae-2 tests passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
