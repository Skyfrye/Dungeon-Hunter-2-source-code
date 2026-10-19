// Checks for glitch::scene::CSceneCollisionManager (scene/CSceneCollisionManager.hpp): the ray / triangle query, the swept ellipsoid
// response, the quadratic root helper, the picking by bounding box and the guards that need no camera or driver. A fake selector
// stands in for the triangle selectors (it hands out its triangles whatever the box, which is enough for a unit radius).
// Exit status is non-zero when a check fails.
#include <cmath>
#include <cstdio>
#include <limits>
#include <vector>

#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"

namespace {

using glitch::core::line3d;
using glitch::core::triangle3d;
using glitch::core::vector3d;
using glitch::scene::CEmptySceneNode;
using glitch::scene::CSceneCollisionManager;

class FakeSelector : public glitch::scene::ITriangleSelector {
public:
    explicit FakeSelector(std::vector<triangle3d<float>> tris) : triangles(std::move(tris)) {}

    int getTriangleCount() const override { return static_cast<int>(triangles.size()); }

    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }
    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::aabbox3d<float>&,
                      const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }
    void getTriangles(triangle3d<float>* out, int arraySize, int& outCount, const glitch::core::line3d<float>&,
                      const glitch::core::CMatrix4<float>*) const override {
        copy(out, arraySize, outCount);
    }

private:
    void copy(triangle3d<float>* out, int arraySize, int& outCount) const {
        int n = 0;
        for (const auto& t : triangles) {
            if (n >= arraySize) break;
            out[n++] = t;
        }
        outCount = n;
    }

    std::vector<triangle3d<float>> triangles;
};

class TestSceneManager : public glitch::scene::CSceneManager {
public:
    TestSceneManager()
        : CSceneManager(nullptr, boost::intrusive_ptr<glitch::io::IFileSystem>(), nullptr, nullptr, nullptr) {}
    void registerSkinnedMesh(void*) override {}
};

// A triangle in the plane z (facing along the ray), centred on the origin in x and y.
triangle3d<float> makeTriangle(float z) {
    triangle3d<float> t;
    t.A = vector3d<float>{-1.0f, -1.0f, z};
    t.B = vector3d<float>{1.0f, -1.0f, z};
    t.C = vector3d<float>{0.0f, 1.0f, z};
    return t;
}

// A large floor in the plane y = 0 whose plane normal points up (+y).
triangle3d<float> makeFloor() {
    triangle3d<float> t;
    t.A = vector3d<float>{-10.0f, 0.0f, -10.0f};
    t.B = vector3d<float>{10.0f, 0.0f, -10.0f};
    t.C = vector3d<float>{-10.0f, 0.0f, 10.0f};
    return t;
}

line3d<float> makeRay(float fromZ, float toZ, float x = 0.0f) {
    line3d<float> r;
    r.start = vector3d<float>{x, 0.0f, fromZ};
    r.end = vector3d<float>{x, 0.0f, toZ};
    return r;
}

bool near(float a, float b, float tolerance = 1e-4f) { return std::fabs(a - b) < tolerance; }

int failures = 0;

void check(bool cond, const char* what) {
    if (!cond) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

}  // namespace

int main() {
    // ---- getCollisionPoint --------------------------------------------------------------------------------------------
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        check(mgr.referenceCounter == 1, "the manager starts with one reference");
        FakeSelector sel({makeTriangle(0.0f)});
        vector3d<float> point{};
        triangle3d<float> tri{};
        const bool hit = mgr.getCollisionPoint(makeRay(-10.0f, 10.0f), &sel, point, tri);
        check(hit, "single triangle is hit");
        check(near(point.X, 0.0f) && near(point.Y, 0.0f) && near(point.Z, 0.0f), "hit point is the origin");
        check(near(tri.A.Z, 0.0f), "out triangle is the hit triangle");
        check(mgr.triangles.size() == 1, "scratch buffer grew to the triangle count");
    }
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        FakeSelector sel({makeTriangle(5.0f), makeTriangle(2.0f)});
        vector3d<float> point{};
        triangle3d<float> tri{};
        check(mgr.getCollisionPoint(makeRay(-10.0f, 10.0f), &sel, point, tri), "two triangles on the ray: a hit is reported");
        check(near(point.Z, 2.0f) && near(tri.A.Z, 2.0f), "nearest triangle along the ray is chosen");
    }
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        triangle3d<float> off = makeTriangle(0.0f);
        off.A.X += 10.0f;
        off.B.X += 10.0f;
        off.C.X += 10.0f;
        FakeSelector sel({off});
        vector3d<float> point{7.0f, 7.0f, 7.0f};
        triangle3d<float> tri{};
        check(!mgr.getCollisionPoint(makeRay(-10.0f, 10.0f), &sel, point, tri), "missed triangle reports no hit");
        check(near(point.X, 7.0f), "outputs untouched on a miss");
        FakeSelector beyond({makeTriangle(5.0f)});
        check(!mgr.getCollisionPoint(makeRay(-10.0f, 1.0f), &beyond, point, tri), "triangle beyond the segment end is not hit");
        check(!mgr.getCollisionPoint(makeRay(-10.0f, 10.0f), nullptr, point, tri), "null selector returns false");
        FakeSelector empty({});
        check(!mgr.getCollisionPoint(makeRay(-10.0f, 10.0f), &empty, point, tri), "empty selector returns false");
    }

    // ---- getLowestRoot ------------------------------------------------------------------------------------------------
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        float root = 0.0f;
        check(mgr.getLowestRoot(1.0f, -3.0f, 2.0f, 10.0f, &root) && near(root, 1.0f), "lowest root of t^2 - 3t + 2 is 1");
        check(!mgr.getLowestRoot(1.0f, 0.0f, 1.0f, 10.0f, &root), "no real root");
        check(!mgr.getLowestRoot(1.0f, -3.0f, 2.0f, 0.5f, &root), "both roots beyond maxR");
        check(mgr.getLowestRoot(1.0f, -1.0f, -2.0f, 10.0f, &root) && near(root, 2.0f), "the negative root is skipped");
    }

    // ---- testTriangleIntersection and the ellipsoid response ----------------------------------------------------------
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        CSceneCollisionManager::SCollisionData data;
        data.basePoint = vector3d<float>{0.0f, 5.0f, 0.0f};
        data.velocity = vector3d<float>{0.0f, -10.0f, 0.0f};
        data.normalizedVelocity = vector3d<float>{0.0f, -1.0f, 0.0f};
        data.nearestDistance = std::numeric_limits<float>::max();
        check(mgr.testTriangleIntersection(&data, makeFloor()), "the sphere falling on the floor hits it");
        check(data.foundCollision && data.triangleHits == 1 && near(data.nearestDistance, 4.0f), "the hit is recorded 4 units away");
        check(near(data.intersectionPoint.X, 0.0f) && near(data.intersectionPoint.Y, 0.0f) && near(data.intersectionPoint.Z, 0.0f),
              "the contact point is below the sphere");
        // a floor seen from below is back facing
        CSceneCollisionManager::SCollisionData below;
        below.basePoint = vector3d<float>{0.0f, -5.0f, 0.0f};
        below.velocity = vector3d<float>{0.0f, 10.0f, 0.0f};
        below.normalizedVelocity = vector3d<float>{0.0f, 1.0f, 0.0f};
        below.nearestDistance = std::numeric_limits<float>::max();
        check(!mgr.testTriangleIntersection(&below, makeFloor()) && !below.foundCollision, "back facing triangles are ignored");
        // a farther triangle does not replace the nearest hit
        triangle3d<float> higher = makeFloor();
        higher.A.Y = higher.B.Y = higher.C.Y = 1.0f;
        check(mgr.testTriangleIntersection(&data, higher) && near(data.nearestDistance, 3.0f), "a nearer triangle replaces the hit");
        check(!mgr.testTriangleIntersection(&data, makeFloor()), "a farther triangle does not");
    }
    {
        CSceneCollisionManager mgr(nullptr, nullptr);
        FakeSelector floor({makeFloor()});
        triangle3d<float> triangle{};
        bool falling = true;
        const vector3d<float> radius{1.0f, 1.0f, 1.0f};
        const vector3d<float> zero{};
        // gravity drops the ellipsoid onto the floor: it stops just above it, not falling
        vector3d<float> result = mgr.getCollisionResultPosition(&floor, vector3d<float>{0.0f, 5.0f, 0.0f}, radius, zero, triangle,
                                                                falling, 0.001f, vector3d<float>{0.0f, -10.0f, 0.0f});
        check(near(result.X, 0.0f) && near(result.Y, 1.001f, 1e-3f) && near(result.Z, 0.0f), "the ellipsoid rests on the floor");
        check(!falling, "touching the floor is not falling");
        check(near(triangle.A.Y, 0.0f) && near(triangle.B.X, 10.0f), "the hit triangle is returned in world space");
        // without any triangle the gravity moves it freely and it falls
        FakeSelector none({});
        result = mgr.getCollisionResultPosition(&none, vector3d<float>{0.0f, 5.0f, 0.0f}, radius, zero, triangle, falling, 0.001f,
                                                vector3d<float>{0.0f, -10.0f, 0.0f});
        check(near(result.Y, -5.0f) && falling, "no triangles: free fall");
        // a zero radius component or a null selector returns the position
        result = mgr.getCollisionResultPosition(&floor, vector3d<float>{1.0f, 2.0f, 3.0f}, vector3d<float>{0.0f, 1.0f, 1.0f}, zero,
                                                triangle, falling, 0.001f, zero);
        check(result.X == 1.0f && result.Y == 2.0f && result.Z == 3.0f, "a zero radius returns the position");
        result = mgr.getCollisionResultPosition(nullptr, vector3d<float>{1.0f, 2.0f, 3.0f}, radius, zero, triangle, falling, 0.001f, zero);
        check(result.Z == 3.0f, "a null selector returns the position");
        // horizontal motion over the floor is not blocked
        result = mgr.getCollisionResultPosition(&floor, vector3d<float>{0.0f, 1.0f, 0.0f}, radius, vector3d<float>{2.0f, 0.0f, 0.0f},
                                                triangle, falling, 0.001f, zero);
        check(near(result.X, 2.0f) && near(result.Y, 1.0f), "sliding along the floor reaches the destination");
    }

    // ---- guards that need no camera ---------------------------------------------------------------------------------------
    {
        CSceneCollisionManager noScene(nullptr, nullptr);
        const line3d<float> ray = noScene.getRayFromScreenCoordinates(glitch::core::position2d<std::int32_t>{10, 20}, nullptr);
        check(ray.start.X == 0.0f && ray.end.Z == 0.0f, "no scene manager: a zero ray");
        const auto screen = noScene.getScreenCoordinatesFrom3DPosition(vector3d<float>{1.0f, 2.0f, 3.0f}, nullptr);
        check(screen.X == -1000 && screen.Y == -1000, "no scene manager: (-1000, -1000)");
        check(noScene.getSceneNodeFromScreenCoordinatesBB(glitch::core::position2d<std::int32_t>{1, 1}, 0, false) == nullptr,
              "a degenerate ray picks nothing");
        check(noScene.getSceneNodeFromCameraBB(nullptr, 0, false) == nullptr, "no camera picks nothing");
    }

    // ---- picking by bounding box -------------------------------------------------------------------------------------------
    {
        TestSceneManager manager;
        CSceneCollisionManager picker(&manager, nullptr);
        auto* nearNode = new CEmptySceneNode(1);
        auto* farNode = new CEmptySceneNode(2);
        farNode->setPosition(vector3d<float>{0.0f, 0.0f, 5.0f});
        farNode->updateAbsolutePosition(false);
        manager.rootNode->addChild(nearNode);
        manager.rootNode->addChild(farNode);
        const line3d<float> ray = makeRay(-10.0f, 10.0f);
        check(picker.getSceneNodeFromRayBB(ray, 0, false, nullptr) == nearNode, "the node whose farthest box corner is nearer wins");
        check(picker.getSceneNodeFromRayBB(ray, 2, false, nullptr) == farNode, "the id mask filters the candidates");
        nearNode->setIsDebugObject(true);
        check(picker.getSceneNodeFromRayBB(ray, 0, true, nullptr) == farNode, "debug objects can be skipped");
        check(picker.getSceneNodeFromRayBB(ray, 0, false, nullptr) == nearNode, "and are picked otherwise");
        nearNode->setVisible(false);
        check(picker.getSceneNodeFromRayBB(ray, 0, false, nullptr) == farNode, "hidden nodes are skipped");
        check(picker.getSceneNodeFromRayBB(makeRay(-10.0f, 10.0f, 50.0f), 0, false, nullptr) == nullptr, "a ray that misses everything picks nothing");
        check(picker.getSceneNodeFromRayBB(ray, 0, false, farNode) == nullptr, "below a leaf node nothing is found");
        nearNode->drop();
        farNode->drop();
    }

    std::printf("%s (%d failure%s)\n", failures ? "scene_collision_manager: FAILED" : "scene_collision_manager: ok", failures,
                failures == 1 ? "" : "s");
    return failures ? 1 : 0;
}
