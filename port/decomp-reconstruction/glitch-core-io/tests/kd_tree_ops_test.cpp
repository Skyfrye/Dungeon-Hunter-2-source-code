// CKdTree member bodies (kd_tree_ops.hpp): addElemInternal (0x5a3120), removeElemInternal (0x5a44b4) and
// findFarthestElemInternal (0x5a24f8) over a two-level tree.
#include <cstdio>

#include "glitch-core-io/core/kd_tree_ops.hpp"

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
    using namespace glitch::core::detail;
    int failures = 0;

    KdTree tree;
    const aabbox3d<float> world{{-10.f, -10.f, -10.f}, {10.f, 10.f, 10.f}};
    tree.root.axis = 0;
    tree.root.plane = 0.0f;  // centre of the world on X

    // Depth 1: the element goes one level down. Its side on X decides the child; the child's plane is the
    // world centre on Y (axis 1).
    KdElement left{1u, aabbox3d<float>{{-6.f, -1.f, -1.f}, {-4.f, 1.f, 1.f}}};   // centre x = -5
    KdElement right{2u, aabbox3d<float>{{4.f, -1.f, -1.f}, {6.f, 1.f, 1.f}}};    // centre x = 5
    addElemInternal(tree, left, &tree.root, 1, world);
    addElemInternal(tree, right, &tree.root, 1, world);
    CHECK(tree.root.lower != nullptr);
    CHECK(tree.root.upper != nullptr);
    CHECK(tree.root.lower->axis == 1);
    CHECK(tree.root.lower->plane == 0.0f);
    CHECK(tree.root.lower->elements.size() == 1u);
    CHECK(tree.root.upper->elements.size() == 1u);
    CHECK(tree.nodePool.size() == 2u);
    CHECK(tree.root.elements.empty());

    // Farthest from a query box near x = -5 is the element on the other side (id 2).
    tree.queryBox = aabbox3d<float>{{-7.f, -1.f, -1.f}, {-5.f, 1.f, 1.f}};  // centre (-6, 0, 0)
    const KdElement* farthest = nullptr;
    float best = -1.0f;
    findFarthestElemInternal(tree, farthest, best, &tree.root);
    CHECK(farthest != nullptr);
    CHECK(farthest != nullptr && farthest->first == 2u);
    CHECK(best == 121.0f);  // (5 - -6)^2 = 121, centres on X only differ

    // Removing an element follows the same side rule and drops the count (+0x50).
    tree.elementCount = 2;
    removeElemInternal(tree, right, &tree.root);
    CHECK(tree.root.upper->elements.empty());
    CHECK(tree.elementCount == 1);
    CHECK(tree.root.lower->elements.size() == 1u);

    if (failures == 0) std::printf("kd_tree_ops_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
