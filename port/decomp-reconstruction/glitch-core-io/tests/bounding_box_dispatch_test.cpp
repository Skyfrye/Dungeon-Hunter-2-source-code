// glitch::core::computeBoundingBox (0x6a48cc), the RUNTIME value-type dispatch, over all seven component types.
//
// The typed template it dispatches into is already covered by glitch-core-io/tests/bounding_box_test.cpp; this file
// covers the 0x6a48cc entry point that glitch::video::CVertexStreams::computeBoundingBox (0x5a0ec0) calls, and which
// nothing in the tree reached before: bounding_box_test.exe does not even contain the dispatch symbol, and no test
// executable reaches it at runtime (gdb breakpoint on _ZN6glitch4core18computeBoundingBoxEPKvijjjRNS0_8aabbox3dIfEE
// over every glitch-video, glitch-scene, game-world and glitch-core-io test: no hit).
//
// The listing's cases are 0 signed char, 1 unsigned char, 2 short, 3 unsigned short, 4 int, 5 unsigned int, 6 float,
// in that order, each building the box in the component type and converting every component to float; any other
// value is the default case, which leaves the caller's box untouched. The assertions below use values whose SIGNED
// reading differs from their unsigned one (0xFF, 0xFFFE, 0xFFFF0000), so a swapped or non-sign-extending case fails
// rather than merely returning.
#include "glitch-core-io/core/bounding_box.hpp"

#include <cstdint>
#include <cstdio>

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

using glitch::core::aabbox3d;
using glitch::core::computeBoundingBox;

// Dispatch over a PACKED array: `count` elements of `dim` components, dim * sizeof(T) bytes apart.
template <typename T>
void dispatch(const T* data, std::int32_t valueType, unsigned dim, unsigned count, aabbox3d<float>& box) {
    computeBoundingBox(static_cast<const void*>(data), valueType, dim, dim * static_cast<unsigned>(sizeof(T)), count,
                       box);
}

}  // namespace

int main() {
    // ---- case 0: signed char. 0xFF folds as -1 (LDRSB in the typed instance), not as 255. -----------------------
    {
        const signed char data[6] = {static_cast<signed char>(0xFF), 5, -3, 7, -3, 4};
        aabbox3d<float> box;
        dispatch(data, 0, 3, 2, box);
        check(box.MinEdge.X == -1.0f && box.MinEdge.Y == -3.0f && box.MinEdge.Z == -3.0f,
              "case 0 (signed char): min is (-1,-3,-3); 0xFF is -1, not 255");
        check(box.MaxEdge.X == 7.0f && box.MaxEdge.Y == 5.0f && box.MaxEdge.Z == 4.0f,
              "case 0 (signed char): max is (7,5,4)");
    }

    // ---- case 1: unsigned char. The same byte 0xFF is 255 here. --------------------------------------------------
    {
        const unsigned char data[6] = {0xFF, 0x00, 0x80, 0x01, 0x7F, 0x80};
        aabbox3d<float> box;
        dispatch(data, 1, 3, 2, box);
        check(box.MinEdge.X == 1.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 128.0f,
              "case 1 (unsigned char): min is (1,0,128)");
        check(box.MaxEdge.X == 255.0f && box.MaxEdge.Y == 127.0f && box.MaxEdge.Z == 128.0f,
              "case 1 (unsigned char): 0xFF is 255");
    }

    // ---- case 2: short. 0xFFFE is -2. ---------------------------------------------------------------------------
    {
        const short data[6] = {static_cast<short>(0xFFFE), 300, -400, 1, -300, 400};
        aabbox3d<float> box;
        dispatch(data, 2, 3, 2, box);
        check(box.MinEdge.X == -2.0f && box.MinEdge.Y == -300.0f && box.MinEdge.Z == -400.0f,
              "case 2 (short): min is (-2,-300,-400); 0xFFFE is -2");
        check(box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 300.0f && box.MaxEdge.Z == 400.0f,
              "case 2 (short): max is (1,300,400)");
    }

    // ---- case 3: unsigned short. --------------------------------------------------------------------------------
    {
        const unsigned short data[6] = {0xFFFE, 0, 65535, 1, 7, 2};
        aabbox3d<float> box;
        dispatch(data, 3, 3, 2, box);
        check(box.MinEdge.X == 1.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 2.0f,
              "case 3 (unsigned short): min is (1,0,2)");
        check(box.MaxEdge.X == 65534.0f && box.MaxEdge.Y == 7.0f && box.MaxEdge.Z == 65535.0f,
              "case 3 (unsigned short): 0xFFFE is 65534");
    }

    // ---- case 4: int. -------------------------------------------------------------------------------------------
    {
        const std::int32_t data[6] = {-2, 300, -400000, 1, -300, 400000};
        aabbox3d<float> box;
        dispatch(data, 4, 3, 2, box);
        check(box.MinEdge.X == -2.0f && box.MinEdge.Y == -300.0f && box.MinEdge.Z == -400000.0f,
              "case 4 (int): min is (-2,-300,-400000)");
        check(box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 300.0f && box.MaxEdge.Z == 400000.0f,
              "case 4 (int): max is (1,300,400000)");
    }

    // ---- case 5: unsigned int. 0xFFFF0000 is 4294901760 (exactly representable as float). ------------------------
    {
        const std::uint32_t data[6] = {0xFFFF0000u, 0, 7, 1, 9, 2};
        aabbox3d<float> box;
        dispatch(data, 5, 3, 2, box);
        check(box.MinEdge.X == 1.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 2.0f,
              "case 5 (unsigned int): min is (1,0,2)");
        check(box.MaxEdge.X == 4294901760.0f && box.MaxEdge.Y == 9.0f && box.MaxEdge.Z == 7.0f,
              "case 5 (unsigned int): 0xFFFF0000 is 4294901760, not -65536");
    }

    // ---- case 6: float, written straight through the template (no conversion). ----------------------------------
    {
        const float data[6] = {1.5f, -2.5f, 3.5f, -4.5f, 0.0f, 3.0f};
        aabbox3d<float> box;
        dispatch(data, 6, 3, 2, box);
        check(box.MinEdge.X == -4.5f && box.MinEdge.Y == -2.5f && box.MinEdge.Z == 3.0f,
              "case 6 (float): min is (-4.5,-2.5,3.0)");
        check(box.MaxEdge.X == 1.5f && box.MaxEdge.Y == 0.0f && box.MaxEdge.Z == 3.5f,
              "case 6 (float): max is (1.5,0,3.5)");
    }

    // ---- a value with no case leaves the caller's box exactly as it was (the listing's default branch). ---------
    {
        const float data[6] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f};
        aabbox3d<float> box{{-7.0f, -8.0f, -9.0f}, {7.0f, 8.0f, 9.0f}};
        dispatch(data, 7, 3, 2, box);
        check(box.MinEdge.X == -7.0f && box.MinEdge.Y == -8.0f && box.MinEdge.Z == -9.0f &&
                  box.MaxEdge.X == 7.0f && box.MaxEdge.Y == 8.0f && box.MaxEdge.Z == 9.0f,
              "an unknown value type leaves the box untouched");
        dispatch(data, -1, 3, 2, box);
        check(box.MinEdge.X == -7.0f && box.MaxEdge.Z == 9.0f, "value type -1 is the default case too");
    }

    // ---- count 0 gives the all-zero box the typed template writes. ----------------------------------------------
    {
        const float data[6] = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f, 6.0f};
        aabbox3d<float> box{{-7.0f, -8.0f, -9.0f}, {7.0f, 8.0f, 9.0f}};
        dispatch(data, 6, 3, 0, box);
        check(box.MinEdge.X == 0.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 0.0f &&
                  box.MaxEdge.X == 0.0f && box.MaxEdge.Y == 0.0f && box.MaxEdge.Z == 0.0f,
              "count 0 gives the zero box even for the float case");
    }

    // ---- a stride wider than the components is forwarded unchanged. ----------------------------------------------
    {
        // dim 2, four float components per element, of which the third is padding: elements start every 16 bytes.
        const float data[8] = {1.0f, 5.0f, 99.0f, 99.0f, 3.0f, -2.0f, 99.0f, 99.0f};
        aabbox3d<float> box;
        computeBoundingBox(static_cast<const void*>(data), 6, 2u, 16u, 2u, box);
        check(box.MinEdge.X == 1.0f && box.MinEdge.Y == -2.0f && box.MinEdge.Z == 0.0f,
              "a 16-byte stride with dim 2 reads the first two floats of each element (min)");
        check(box.MaxEdge.X == 3.0f && box.MaxEdge.Y == 5.0f && box.MaxEdge.Z == 0.0f,
              "a 16-byte stride with dim 2 reads the first two floats of each element (max)");
    }

    // ---- dim above three reads three (the template clamps; the extra components must not widen the box). --------
    {
        const signed char data[10] = {1, 2, 3, 99, 99, 4, 5, 6, 99, 99};
        aabbox3d<float> box;
        computeBoundingBox(static_cast<const void*>(data), 0, 5u, 5u, 2u, box);
        check(box.MinEdge.X == 1.0f && box.MinEdge.Y == 2.0f && box.MinEdge.Z == 3.0f,
              "dim 5 reads the first three components only (min)");
        check(box.MaxEdge.X == 4.0f && box.MaxEdge.Y == 5.0f && box.MaxEdge.Z == 6.0f,
              "dim 5 reads the first three components only (max): the 99s are not used");
    }

    std::printf("%s\n", failures == 0 ? "bounding_box_dispatch: ok" : "bounding_box_dispatch: FAILED");
    return failures == 0 ? 0 : 1;
}
