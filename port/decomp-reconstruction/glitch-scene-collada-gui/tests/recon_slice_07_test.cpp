// Tests for reconstruction slice 07 (recon/slice_07.cpp). Returns non-zero on failure.
#include <cmath>
#include <cstdint>
#include <cstdio>

#include "glitch-scene-collada-gui/recon/slice_07.hpp"

using namespace glitch::collada::recon_07;
namespace core = glitch::core;

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++failures;
    }
}

bool near(float a, float b, float eps = 1e-4f) {
    return std::fabs(a - b) <= eps;
}

void testKdTree() {
    KdEntry entry{7u, core::aabbox3d<float>{{0.0f, 0.0f, 0.0f}, {2.0f, 4.0f, 6.0f}}};
    // centre is (1, 2, 3)
    check(lessThanPlane(entry, 1.5f, 0), "x centre below plane");
    check(!lessThanPlane(entry, 0.5f, 0), "x centre above plane");
    check(lessThanPlane(entry, 3.5f, 2), "z centre below plane");

    check(near(distanceKdTree(entry, 0.0f, 0), 1.0f), "plane distance x");
    check(near(distanceKdTree(entry, 3.0f, 1), 1.0f), "plane distance y");

    KdEntry other{8u, core::aabbox3d<float>{{2.0f, 2.0f, 2.0f}, {4.0f, 4.0f, 4.0f}}};  // centre (3,3,3)
    check(near(distanceKdTree(entry, other), 4.0f + 1.0f + 0.0f), "centre distance squared");
    check(near(distanceKdTree(entry, other.second), 4.0f + 1.0f + 0.0f), "distance to box");
}


}  // namespace

int main() {
    testKdTree();
    if (failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", failures);
        return 1;
    }
    std::puts("recon_slice_07 tests passed");
    return 0;
}
