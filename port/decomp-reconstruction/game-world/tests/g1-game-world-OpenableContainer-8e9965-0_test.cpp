// Test for batch g1-game-world-OpenableContainer-8e9965-0.
//
// Most bodies in this batch need the engine (the pydata tables, the ItemInventory of a Character, the level), so they are
// not run here. This test checks the rules the bodies apply to their inputs: the lock predicate of IsLocked (the original's
// unsigned (state - 3) > 1 together with the key index test) and the quantity and consume rule of Unlock. It uses only
// enumerators from dh2/Container.hpp and dh2/OpenableContainer.hpp, so nothing is linked and no object is constructed.

#include <cstdio>

#include "dh2/Container.hpp"
#include "dh2/OpenableContainer.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// The pseudocode of IsLocked: (unsigned)(state - 3) > 1 && key item index != -1.
bool PseudocodeIsLocked(int state, int keyItemIndex) {
    return static_cast<unsigned>(state - 3) > 1u && keyItemIndex != -1;
}

// The rule of Unlock after the item lookup: the key quantity must not exceed the item quantity, and key_consume must be set.
bool UnlockAllowed(int keyQty, int itemQty, bool keyConsume) {
    return keyQty <= itemQty && keyConsume;
}

}  // namespace

int main() {
    // The enumerators the lock predicate depends on.
    EXPECT(static_cast<int>(Container::STATE_PRESPAWN) == 0);
    EXPECT(static_cast<int>(Container::STATE_SPAWN) == 1);
    EXPECT(static_cast<int>(Container::STATE_IDLE) == 2);
    EXPECT(static_cast<int>(Container::STATE_ACTIVATE) == 3);
    EXPECT(static_cast<int>(Container::STATE_OPENED) == 4);

    // A container is locked exactly while it is PRESPAWN, SPAWN or IDLE and has a key item index.
    for (int state = 0; state <= 4; ++state) {
        const bool unopened = state == static_cast<int>(Container::STATE_PRESPAWN) ||
                              state == static_cast<int>(Container::STATE_SPAWN) ||
                              state == static_cast<int>(Container::STATE_IDLE);
        EXPECT(PseudocodeIsLocked(state, -1) == false);
        EXPECT(PseudocodeIsLocked(state, 0) == unopened);
        EXPECT(PseudocodeIsLocked(state, 7) == unopened);
    }
    // Values outside the enumerators: the unsigned subtraction wraps, so they count as locked when a key is set.
    EXPECT(PseudocodeIsLocked(-1, 3) == true);
    EXPECT(PseudocodeIsLocked(5, 3) == true);

    // Unlock: key_qty 1 against an item of quantity 1 is allowed when consumed, and not when key_consume is off.
    EXPECT(UnlockAllowed(1, 1, true) == true);
    EXPECT(UnlockAllowed(1, 1, false) == false);
    EXPECT(UnlockAllowed(2, 1, true) == false);
    EXPECT(UnlockAllowed(2, 2, true) == true);
    EXPECT(UnlockAllowed(1, 0, true) == false);

    if (g_failures == 0) {
        std::printf("OpenableContainer test: all checks passed\n");
        return 0;
    }
    std::printf("OpenableContainer test: %d failure(s)\n", g_failures);
    return 1;
}
