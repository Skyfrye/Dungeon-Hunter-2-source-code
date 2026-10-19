// Test for batch r2a-game-world-Level-7c7f5d-1 (REDO), Level::LoadTile (0x3f4154): the grid position it stores in m_moduleOffset.
//
// The batch .cpp cannot be linked into a test (it needs the engine). So GridPosition below mirrors the three assignments that
// LoadTile makes before SetObjectModuleId, line for line, and the test checks the values it gives for known inputs.
// The inputs are the tile's m_x, m_y and m_z (Tile +0x84, +0x88, +0x8c) and the block's m_blockWidth, m_blockHeight,
// m_unitWidth and m_unitHeight (Block +0x54, +0x58, +0x4c and +0x50).

#include <cmath>
#include <cstdio>

namespace {

int g_failures = 0;

#define EXPECT_TRUE(cond)                                                        \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

struct Offset3 {
    float X;
    float Y;
    float Z;
};

// Mirrors the grid part of Level::LoadTile. X scales the column by the block width (with half a cell for each extra cell)
// and the unit width. Y does the same with the row and the unit height, negated. Z is the tile height.
Offset3 GridPosition(int tileX, int tileY, float tileZ, int blockWidth, int blockHeight, float unitWidth, float unitHeight) {
    Offset3 out{};
    out.X = (static_cast<float>(tileX) + static_cast<float>(blockWidth - 1) * 0.5f) * unitWidth;
    out.Y = (static_cast<float>(tileY) + static_cast<float>(blockHeight - 1) * 0.5f) * -unitHeight;
    out.Z = tileZ;
    return out;
}

bool NearlyEqual(float a, float b) {
    return std::fabs(a - b) <= 0.001f;
}

void TestSingleCellBlock() {
    // A 1x1 block has no centring term: the offset is the cell index times the unit size, with Y negated.
    const Offset3 p = GridPosition(3, 2, 7.5f, 1, 1, 2960.0f, 2960.0f);
    EXPECT_TRUE(NearlyEqual(p.X, 8880.0f));
    EXPECT_TRUE(NearlyEqual(p.Y, -5920.0f));
    EXPECT_TRUE(NearlyEqual(p.Z, 7.5f));
}

void TestMultiCellBlockIsCentred() {
    // A 3x2 block adds (3 - 1) / 2 = 1 cell to X and (2 - 1) / 2 = half a cell to Y.
    const Offset3 p = GridPosition(2, 3, 10.0f, 3, 2, 2960.0f, 2960.0f);
    EXPECT_TRUE(NearlyEqual(p.X, (2.0f + 1.0f) * 2960.0f));       // 8880
    EXPECT_TRUE(NearlyEqual(p.Y, -(3.0f + 0.5f) * 2960.0f));      // -10360
    EXPECT_TRUE(NearlyEqual(p.Z, 10.0f));
}

void TestUnitWidthAndHeightAreIndependent() {
    // The X term uses the unit width and the Y term uses the unit height, not each other's.
    const Offset3 p = GridPosition(1, 1, 0.0f, 2, 4, 100.0f, 50.0f);
    EXPECT_TRUE(NearlyEqual(p.X, (1.0f + 0.5f) * 100.0f));        // 150
    EXPECT_TRUE(NearlyEqual(p.Y, -(1.0f + 1.5f) * 50.0f));        // -125
}

void TestOriginCellWithCentring() {
    // Cell (0, 0) of a 4x4 block is pushed out by 1.5 cells on both axes; the Y sign is still negative.
    const Offset3 p = GridPosition(0, 0, -2.0f, 4, 4, 10.0f, 10.0f);
    EXPECT_TRUE(NearlyEqual(p.X, 15.0f));
    EXPECT_TRUE(NearlyEqual(p.Y, -15.0f));
    EXPECT_TRUE(NearlyEqual(p.Z, -2.0f));
}

}  // namespace

int main() {
    TestSingleCellBlock();
    TestMultiCellBlockIsCentred();
    TestUnitWidthAndHeightAreIndependent();
    TestOriginCellWithCentring();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("Level::LoadTile grid position checks passed\n");
    return 0;
}
