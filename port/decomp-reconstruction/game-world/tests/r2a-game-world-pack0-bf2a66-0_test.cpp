// Test for batch r2a-game-world-pack0-bf2a66-0 (redo): PFObject::GetPathLengthSQ, the sum of the squared 3D length of
// each edge in m_path. The function is defined in g1-game-world-PFObject-34f48a-0.cpp, which this test links with.
//
// The batch source references engine symbols that the integrator defines (the PFWorld singleton, Vec3f_K, and the
// PFGInnerEdge destructor and accessors). This test defines them with empty bodies. The test edge overrides the two
// accessors, so only the sum of the path is checked.

#include <cstdio>

#include "core-platform/deps/game_types.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/global/Vec3f_K.hpp"

// Engine definitions the batch source needs at link time (see the note above).
Point3D<float> Vec3f_K{0.0f, 0.0f, 1.0f};
PFWorld::PFWorld() {}
PFWorld::~PFWorld() {}
// link-1: the class-scope s_inst is a reference to the Singleton storage; this test points it at a private instance.
static PFWorld g_testInstance_1{};
PFWorld& PFWorld::s_inst = g_testInstance_1;
void PFWorld::DropPath(PFObject&) {}
void PFWorld::InitObstacle(PFObject&, bool, float, float) {}
PFGInnerEdge::~PFGInnerEdge() {}
const Point3D<float>* PFGInnerEdge::GetSource() const { return nullptr; }
const Point3D<float>* PFGInnerEdge::GetDestination() const { return nullptr; }

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// A path edge with stored end points. GetSource returns the first point and GetDestination the second.
class TestEdge : public PFGInnerEdge {
public:
    TestEdge(const Point3D<float>& from, const Point3D<float>& to) : m_from(from), m_to(to) {}
    ~TestEdge() override {}
    const Point3D<float>* GetSource() const override { return &m_from; }
    const Point3D<float>* GetDestination() const override { return &m_to; }

    Point3D<float> m_from;
    Point3D<float> m_to;
};

}  // namespace

int main() {
    // An empty path gives 0 (the original's sum starts at 0 and the list is empty).
    {
        PFObject obj;
        EXPECT(obj.GetPathLengthSQ() == 0.0f);
    }

    // One edge: (0,0,0) to (3,4,0) has squared length 9 + 16 = 25.
    {
        PFObject obj;
        TestEdge e1(Point3D<float>{0.0f, 0.0f, 0.0f}, Point3D<float>{3.0f, 4.0f, 0.0f});
        obj.m_path.push_back(&e1);
        EXPECT(obj.GetPathLengthSQ() == 25.0f);
    }

    // Two edges add up: the first is 25 as above, the second (1,1,1) to (1,1,3) is 0 + 0 + 4 = 4. Total 29.
    {
        PFObject obj;
        TestEdge e1(Point3D<float>{0.0f, 0.0f, 0.0f}, Point3D<float>{3.0f, 4.0f, 0.0f});
        TestEdge e2(Point3D<float>{1.0f, 1.0f, 1.0f}, Point3D<float>{1.0f, 1.0f, 3.0f});
        obj.m_path.push_back(&e1);
        obj.m_path.push_back(&e2);
        EXPECT(obj.GetPathLengthSQ() == 29.0f);
    }

    // The direction of an edge does not change its squared length: (3,4,0) to (0,0,0) is also 25.
    {
        PFObject obj;
        TestEdge e1(Point3D<float>{3.0f, 4.0f, 0.0f}, Point3D<float>{0.0f, 0.0f, 0.0f});
        obj.m_path.push_back(&e1);
        EXPECT(obj.GetPathLengthSQ() == 25.0f);
    }

    if (g_failures == 0) {
        std::printf("r2a-game-world-pack0-bf2a66-0 PFObject::GetPathLengthSQ: all checks passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
