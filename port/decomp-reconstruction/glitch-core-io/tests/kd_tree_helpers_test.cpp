// glitch::core::CKdTree layout (kd_tree.hpp) and the glitch::lessThanPlane / glitch::distanceKdTree
// helpers: centre rule (min + max) * 0.5 per axis, the three distanceKdTree overloads, and the tree's
// initial state. Evidence: lessThanPlane 0x5a20d4, distanceKdTree 0x5a2160 / 0x5a2268 / 0x5a2370.
#include <cstdio>

#include "glitch-core-io/core/kd_tree.hpp"

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    using glitch::KdElement;
    using glitch::core::aabbox3d;
    int failures = 0;

    // Element with id 7: min (0, 0, 0), max (2, 4, 6), so the centre is (1, 2, 3).
    KdElement e{7u, aabbox3d<float>{{0.f, 0.f, 0.f}, {2.f, 4.f, 6.f}}};
    CHECK(glitch::kdCentreComponent(e, 0) == 1.f);
    CHECK(glitch::kdCentreComponent(e, 1) == 2.f);
    CHECK(glitch::kdCentreComponent(e, 2) == 3.f);

    // lessThanPlane is a strict compare of the centre on the axis (0x5a20d4: fcmplt).
    CHECK(glitch::lessThanPlane(e, 1.5f, 0));
    CHECK(!glitch::lessThanPlane(e, 1.0f, 0));  // equal is not less
    CHECK(glitch::lessThanPlane(e, 2.5f, 1));
    CHECK(!glitch::lessThanPlane(e, 3.0f, 2));  // centre z = 3, plane 3: not less

    // distanceKdTree(pair, float, char) is (centre[axis] - plane)^2 (0x5a2370).
    CHECK(glitch::distanceKdTree(e, 4.0f, 2) == 1.f);
    CHECK(glitch::distanceKdTree(e, 0.0f, 0) == 1.f);
    CHECK(glitch::distanceKdTree(e, 1.0f, 1) == 1.f);

    // distanceKdTree(pair, aabbox3d) is the squared distance of the centres (0x5a2160).
    // Box min (4, 4, 4), max (6, 8, 10): centre (5, 6, 7). Differences (-4, -4, -4): 16 + 16 + 16.
    const aabbox3d<float> box{{4.f, 4.f, 4.f}, {6.f, 8.f, 10.f}};
    CHECK(glitch::distanceKdTree(e, box) == 48.f);

    // distanceKdTree(pair, pair) is the same rule for two elements (0x5a2268).
    KdElement f{9u, aabbox3d<float>{{-1.f, -1.f, -1.f}, {1.f, 1.f, 1.f}}};  // centre (0, 0, 0)
    CHECK(glitch::distanceKdTree(e, f) == 14.f);  // 1 + 4 + 9
    CHECK(glitch::distanceKdTree(e, e) == 0.f);
    CHECK(glitch::distanceKdTree(f, e) == glitch::distanceKdTree(e, f));

    // The id word does not take part in the centre: the same box under a different id has the same centre.
    KdElement g{123u, e.second};
    CHECK(glitch::distanceKdTree(g, e) == 0.f);

    // A fresh tree: no elements, no children, count zero (the default member values model the
    // construct() zeroing at 0x5a2dd4 and the count that starts at zero).
    glitch::core::CKdTree<KdElement> tree;
    CHECK(tree.root.elements.empty());
    CHECK(tree.root.lower == nullptr);
    CHECK(tree.root.upper == nullptr);
    CHECK(tree.elementCount == 0);
    CHECK(tree.nodePool.empty());

    // One split: the lower child is taken when the element's centre is below the plane.
    tree.root.plane = 2.0f;
    tree.root.axis = 0;
    CHECK(glitch::lessThanPlane(e, tree.root.plane, static_cast<char>(tree.root.axis)));

    if (failures == 0) std::printf("kd_tree_helpers_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
