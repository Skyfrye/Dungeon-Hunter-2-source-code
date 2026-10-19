// Test for batch g1-game-world-Vector3DFList-3ca439-0.
//
// The engine allocator is replaced by malloc and free (with live-block counts), and the PFObject constructor and
// destructor are stubs, because the PFObject source is not linked here. Only the Vector3DFList bodies are exercised.
//
// Not covered: nothing in this batch depends on the engine beyond those two stubs.
//
// The NaN cases check the listing's unordered-compare behaviour (__aeabi_fcmpgt returns 0 for NaN).

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <limits>

#include "dh2/Vector3DFList.hpp"

namespace {

int g_failures = 0;
int g_liveBlocks = 0;
// The linked tree defines a global Application whose constructor runs before main and allocates through this
// CustomAlloc, so the count is taken relative to the value at the start of main.
int g_liveBaseline = 0;
int Live() { return g_liveBlocks - g_liveBaseline; }

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using Vec = glitch::core::vector3d<float>;

Vec V(float x, float y, float z) {
    Vec v;
    v.X = x;
    v.Y = y;
    v.Z = z;
    return v;
}

bool Same(const Vec& a, const Vec& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

}  // namespace

// Engine stand-ins for the symbols the batch calls.
void* CustomAlloc(unsigned int size) {
    void* p = std::malloc(size);
    if (p) {
        ++g_liveBlocks;
    }
    return p;
}

void CustomFree(void* p) {
    if (p) {
        --g_liveBlocks;
    }
    std::free(p);
}

PFObject::PFObject() {}
PFObject::~PFObject() {}

static void TestDefaultConstructor() {
    Vector3DFList list;
    EXPECT(list.getCount() == 0);
    EXPECT(list.m_capacity == 0);
    EXPECT(list.m_points == nullptr);
    EXPECT(list.m_distSq == nullptr);
    EXPECT(Same(list.m_characterPosition, V(0, 0, 0)));
}

static void TestSizedConstructorAndSetNew() {
    {
        Vector3DFList list(4);
        EXPECT(list.getCount() == 0);
        EXPECT(list.m_capacity == 4);
        EXPECT(Same(list.m_characterPosition, V(0, 0, 0)));
        EXPECT(list.m_points != nullptr && list.m_distSq != nullptr);
        // The point array is cleared by the constructor.
        for (int i = 0; i < 4; ++i) {
            EXPECT(Same(list[i], V(0, 0, 0)));
        }
    }
    EXPECT(Live() == 0);

    Vector3DFList list;
    list.setNew(3);
    EXPECT(list.getCount() == 0);
    EXPECT(list.m_capacity == 3);
    EXPECT(list.m_points != nullptr && list.m_distSq != nullptr);
    for (int i = 0; i < 3; ++i) {
        EXPECT(Same(list[i], V(0, 0, 0)));
    }
    // setNew frees the old arrays and resets the count, and the old contents are gone.
    list.add(V(1, 2, 3));
    EXPECT(list.getCount() == 1);
    list.setNew(5);
    EXPECT(list.getCount() == 0);
    EXPECT(list.m_capacity == 5);
    EXPECT(Live() == 2);
    list.setNew(0);
    EXPECT(list.getCount() == 0);
    EXPECT(list.m_capacity == 0);
}

static void TestAddAndSubscript() {
    Vector3DFList list(2);
    list.add(V(1, 2, 3));
    list.add(V(4, 5, 6));
    list.add(V(7, 8, 9));  // full: ignored
    EXPECT(list.getCount() == 2);
    EXPECT(Same(list[0], V(1, 2, 3)));
    EXPECT(Same(list[1], V(4, 5, 6)));
    // add stores squared distance 0.
    EXPECT(list.m_distSq[0] == 0.0f);
    EXPECT(list.m_distSq[1] == 0.0f);

    // operator[] returns a reference into the array, so it can be written through.
    list[1] = V(-1, -2, -3);
    EXPECT(Same(list[1], V(-1, -2, -3)));
    EXPECT(list.getCount() == 2);
}

static void TestSetCharacterPosition() {
    Vector3DFList list(1);
    list.setCharacterPosition(V(1, 2, 3));
    EXPECT(Same(list.m_characterPosition, V(1, 2, 3)));
    // The embedded PFObject's m_pos (+0x3c) receives the same point.
    EXPECT(list.unk_24.m_pos.X == 1.0f);
    EXPECT(list.unk_24.m_pos.Y == 2.0f);
    EXPECT(list.unk_24.m_pos.Z == 3.0f);
    // Setting the position stores no points or counts.
    EXPECT(list.getCount() == 0);
}

static void TestAddClosestWhenNotFull() {
    Vector3DFList list(3);
    list.setCharacterPosition(V(0, 0, 0));
    list.addClosest(V(3, 4, 0));  // squared distance 25
    EXPECT(list.getCount() == 1);
    EXPECT(Same(list[0], V(3, 4, 0)));
    EXPECT(list.m_distSq[0] == 25.0f);

    list.addClosest(V(0, 0, 2));  // squared distance 4
    EXPECT(list.getCount() == 2);
    EXPECT(Same(list[1], V(0, 0, 2)));
    EXPECT(list.m_distSq[1] == 4.0f);
}

static void TestAddClosestMeasuresFromCharacterPosition() {
    Vector3DFList list(1);
    list.setCharacterPosition(V(10, 0, 0));
    list.addClosest(V(13, 4, 0));  // delta (3, 4, 0), squared distance 25
    EXPECT(list.m_distSq[0] == 25.0f);
    EXPECT(Same(list[0], V(13, 4, 0)));
}

static void TestAddClosestReplacesFarthest() {
    Vector3DFList list(2);
    list.setCharacterPosition(V(0, 0, 0));
    list.addClosest(V(10, 0, 0));  // 100
    list.addClosest(V(5, 0, 0));   // 25
    EXPECT(list.m_distSq[0] == 100.0f);
    EXPECT(list.m_distSq[1] == 25.0f);

    // Closer than the farthest (100): replaces index 0.
    list.addClosest(V(1, 0, 0));  // 1
    EXPECT(list.getCount() == 2);
    EXPECT(Same(list[0], V(1, 0, 0)));
    EXPECT(Same(list[1], V(5, 0, 0)));
    EXPECT(list.m_distSq[0] == 1.0f);
    EXPECT(list.m_distSq[1] == 25.0f);

    // Farther than every stored point (25): nothing changes.
    list.addClosest(V(50, 0, 0));  // 2500
    EXPECT(Same(list[0], V(1, 0, 0)));
    EXPECT(Same(list[1], V(5, 0, 0)));
    EXPECT(list.m_distSq[0] == 1.0f);
    EXPECT(list.m_distSq[1] == 25.0f);
}

static void TestAddClosestTieRules() {
    // Equal to the largest stored distance: not strictly closer, so nothing is replaced.
    Vector3DFList list(2);
    list.setCharacterPosition(V(0, 0, 0));
    list.addClosest(V(2, 0, 0));  // 4
    list.addClosest(V(0, 2, 0));  // 4
    list.addClosest(V(0, 0, 2));  // 4, equal to the maximum
    EXPECT(list.getCount() == 2);
    EXPECT(Same(list[0], V(2, 0, 0)));
    EXPECT(Same(list[1], V(0, 2, 0)));

    // Closer than both stored 4s: the first of the tied maximum (index 0) is replaced.
    list.addClosest(V(1, 1, 1));  // 3
    EXPECT(Same(list[0], V(1, 1, 1)));
    EXPECT(Same(list[1], V(0, 2, 0)));
    EXPECT(list.m_distSq[0] == 3.0f);
    EXPECT(list.m_distSq[1] == 4.0f);

    // Largest entry is the later one (index 1, 9 > 4): it is the one replaced.
    Vector3DFList other(2);
    other.setCharacterPosition(V(0, 0, 0));
    other.addClosest(V(2, 0, 0));  // 4
    other.addClosest(V(3, 0, 0));  // 9
    other.addClosest(V(1, 0, 0));  // 1, replaces the 9 at index 1
    EXPECT(Same(other[0], V(2, 0, 0)));
    EXPECT(Same(other[1], V(1, 0, 0)));
    EXPECT(other.m_distSq[0] == 4.0f);
    EXPECT(other.m_distSq[1] == 1.0f);
}

static void TestAddClosestNaNCompareMatchesListing() {
    const float nan = std::numeric_limits<float>::quiet_NaN();

    // A NaN new distance makes every compare unordered, so the listing replaces nothing, even though the stored
    // distances (4 and 9) are finite. The earlier C++ form overwrote index 1 here.
    Vector3DFList list(2);
    list.setCharacterPosition(V(0, 0, 0));
    list.addClosest(V(2, 0, 0));  // 4
    list.addClosest(V(3, 0, 0));  // 9
    list.addClosest(V(nan, 0, 0));
    EXPECT(list.getCount() == 2);
    EXPECT(Same(list[0], V(2, 0, 0)));
    EXPECT(Same(list[1], V(3, 0, 0)));
    EXPECT(list.m_distSq[0] == 4.0f);
    EXPECT(list.m_distSq[1] == 9.0f);

    // A NaN stored distance is never a candidate. Index 1 holds the NaN point (appended while there was room), so
    // the closer point (distance 1) replaces index 0, the only finite candidate above it.
    Vector3DFList nanStored(2);
    nanStored.setCharacterPosition(V(0, 0, 0));
    nanStored.addClosest(V(2, 0, 0));  // 4
    nanStored.addClosest(V(nan, 0, 0));  // appended with a NaN distance at index 1
    EXPECT(nanStored.getCount() == 2);
    EXPECT(std::isnan(nanStored.m_distSq[1]));
    nanStored.addClosest(V(1, 0, 0));  // 1
    EXPECT(Same(nanStored[0], V(1, 0, 0)));
    EXPECT(std::isnan(nanStored[1].X));
    EXPECT(nanStored.m_distSq[0] == 1.0f);
    EXPECT(std::isnan(nanStored.m_distSq[1]));
}

static void TestAddClosestZeroCapacity() {
    Vector3DFList list(0);
    list.setCharacterPosition(V(0, 0, 0));
    list.addClosest(V(1, 1, 1));
    EXPECT(list.getCount() == 0);
}

static void TestLiveBlocksBalanced() {
    {
        Vector3DFList* list = new Vector3DFList(8);
        list->setCharacterPosition(V(0, 0, 0));
        for (int i = 0; i < 20; ++i) {
            list->addClosest(V(static_cast<float>(i), 0, 0));
        }
        EXPECT(list->getCount() == 8);
        delete list;
    }
    EXPECT(Live() == 0);
}

int main() {
    g_liveBaseline = g_liveBlocks;
    TestDefaultConstructor();
    TestSizedConstructorAndSetNew();
    TestAddAndSubscript();
    TestSetCharacterPosition();
    TestAddClosestWhenNotFull();
    TestAddClosestMeasuresFromCharacterPosition();
    TestAddClosestReplacesFarthest();
    TestAddClosestTieRules();
    TestAddClosestNaNCompareMatchesListing();
    TestAddClosestZeroCapacity();
    TestLiveBlocksBalanced();
    EXPECT(Live() == 0);
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("Vector3DFList tests passed\n");
    return 0;
}
