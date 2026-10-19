// Test for batch g1-game-world-Container-e6443a-1 (part 2 of 2).
//
// The bodies in this batch pass the state numbers to SetState (0, 1, 2 from the spawn chain in InitPost, 4 for OPENED,
// 3 for ACTIVATE), and test the ACTIVATE and OPENED pair with an unsigned (state - 3) <= 1. This test checks that the
// enum in dh2/Container.hpp has those values and that the pair is exactly ACTIVATE and OPENED. Nothing is linked: the
// test only reads enumerators, so no object is constructed and no vtable is needed.

#include <cstdio>

#include "dh2/Container.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// The same test the pseudocode writes as (unsigned)(state - 3) <= 1, over the enumerators.
bool PseudocodeActivatedOrOpened(int state) {
    return static_cast<unsigned>(state - 3) <= 1u;
}

}  // namespace

int main() {
    EXPECT(static_cast<int>(Container::STATE_PRESPAWN) == 0);
    EXPECT(static_cast<int>(Container::STATE_SPAWN) == 1);
    EXPECT(static_cast<int>(Container::STATE_IDLE) == 2);
    EXPECT(static_cast<int>(Container::STATE_ACTIVATE) == 3);
    EXPECT(static_cast<int>(Container::STATE_OPENED) == 4);

    // Over every state, the pseudocode test and the pair of enumerators agree.
    for (int state = 0; state <= 4; ++state) {
        const bool pair = state == static_cast<int>(Container::STATE_ACTIVATE) ||
                          state == static_cast<int>(Container::STATE_OPENED);
        EXPECT(PseudocodeActivatedOrOpened(state) == pair);
    }
    // Values outside the enum (the unsigned subtraction wraps) are not ACTIVATE or OPENED.
    EXPECT(!PseudocodeActivatedOrOpened(-1));
    EXPECT(!PseudocodeActivatedOrOpened(5));

    if (g_failures == 0) {
        std::printf("Container part 2 test: all checks passed\n");
        return 0;
    }
    std::printf("Container part 2 test: %d failure(s)\n", g_failures);
    return 1;
}
