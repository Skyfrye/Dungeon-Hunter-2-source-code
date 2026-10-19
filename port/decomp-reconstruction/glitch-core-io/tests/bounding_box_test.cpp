// computeBoundingBox over strided float and integer components (each keeps its own box type).
#include "glitch-core-io/core/bounding_box.hpp"

#include <cstdio>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    using glitch::core::aabbox3d;
    using glitch::core::computeBoundingBox;
    int failures = 0;

    // Two-component elements with a 12-byte stride (one padding float between them).
    const float floats[] = {1.f, 5.f, 9.f, 3.f, -2.f, 7.f};
    aabbox3d<float> box{};
    computeBoundingBox(floats, 2, 12, 2, box);
    CHECK(box.MinEdge.X == 1.f && box.MinEdge.Y == -2.f && box.MinEdge.Z == 0.f);
    CHECK(box.MaxEdge.X == 3.f && box.MaxEdge.Y == 5.f && box.MaxEdge.Z == 0.f);

    // Integer components keep their own type: the box is aabbox3d<signed char>, compared as signed.
    // dims above three reads three.
    // Four elements at a 1-byte stride read bytes 0..5 (three components each).
    const signed char bytes[] = {-4, 6, 2, 9, 1, 0};
    aabbox3d<signed char> sbox{};
    computeBoundingBox(bytes, 3, 1, 4, sbox);
    CHECK(sbox.MinEdge.X == -4 && sbox.MaxEdge.X == 9);
    CHECK(sbox.MinEdge.Z == 0 && sbox.MaxEdge.Z == 9);

    // int components: the box is aabbox3d<int> and the compare is on the integers.
    const int ints[] = {7, -3, 100, 5, 2, 0};
    aabbox3d<int> ibox{};
    computeBoundingBox(ints, 2, 12, 2, ibox);
    CHECK(ibox.MinEdge.X == 5 && ibox.MinEdge.Y == -3 && ibox.MinEdge.Z == 0);
    CHECK(ibox.MaxEdge.X == 7 && ibox.MaxEdge.Y == 2 && ibox.MaxEdge.Z == 0);

    // Zero elements gives a zero box.
    computeBoundingBox(floats, 3, 12, 0, box);
    CHECK(box.MinEdge.X == 0.f && box.MaxEdge.Z == 0.f);

    // addInternalBox folds in both corners, each updating both edges: an inverted box
    // (MinEdge above MaxEdge) pulls MinEdge down to the MaxEdge corner, as the original does.
    aabbox3d<float> grown{{5.f, 5.f, 5.f}, {6.f, 6.f, 6.f}};
    aabbox3d<float> inverted{{3.f, 3.f, 3.f}, {1.f, 1.f, 1.f}};
    grown.addInternalBox(inverted);
    CHECK(grown.MinEdge.X == 1.f && grown.MinEdge.Z == 1.f);
    CHECK(grown.MaxEdge.X == 6.f && grown.MaxEdge.Y == 6.f);
    // For a valid box, the result is the plain union.
    aabbox3d<float> valid{{3.f, 3.f, 3.f}, {4.f, 4.f, 4.f}};
    aabbox3d<float> base{{5.f, 5.f, 5.f}, {6.f, 6.f, 6.f}};
    base.addInternalBox(valid);
    CHECK(base.MinEdge.X == 3.f && base.MaxEdge.X == 6.f);

    if (failures == 0) std::printf("bounding_box_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
