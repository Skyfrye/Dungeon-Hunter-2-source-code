// Test for batch r2a-game-world-Container-e6443a-0 (redo of the bodies in game-world/src/g1-game-world-Container-e6443a-1.cpp).
//
// The standalone logic in this batch is the state encoding. InitPost, Interact and InterpretIncomingNetStruct pass the
// states to SetState, PopulateOutgoingNetStruct writes m_opened as 1 when the state is ACTIVATE or OPENED and 0 otherwise,
// and the pseudocode tests that pair as (unsigned)(state - 3) <= 1. Everything else in the batch needs the engine (the
// ObjectManager, the PhysicalWorld, the animation controller and the Lua state), so it is not run here. Nothing is linked:
// the test reads enumerators and computes the pair test only.

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

// The pseudocode's test over the state (unsigned)(state - 3) <= 1.
bool GateActivatedOrOpened(int state) {
    return static_cast<unsigned>(state - 3) <= 1u;
}

// PopulateOutgoingNetStruct's value for m_opened: 1 when ACTIVATE or OPENED, else 0.
unsigned OpenedFlagFor(int state) {
    return GateActivatedOrOpened(state) ? 1u : 0u;
}

}  // namespace

int main() {
    // The SetState arguments used by the batch's bodies.
    EXPECT(static_cast<int>(Container::STATE_PRESPAWN) == 0);  // InitPost, prespawn clip
    EXPECT(static_cast<int>(Container::STATE_SPAWN) == 1);     // InitPost, spawn clip
    EXPECT(static_cast<int>(Container::STATE_IDLE) == 2);      // InitPost idle clip, constructor, InterpretIncomingNetStruct
    EXPECT(static_cast<int>(Container::STATE_ACTIVATE) == 3);  // Interact and InterpretIncomingNetStruct, activate clip
    EXPECT(static_cast<int>(Container::STATE_OPENED) == 4);    // InitPost closed branch, Interact, InterpretIncomingNetStruct

    // The state is serialized as one byte (Container::Serialize), so every enumerator fits.
    EXPECT(static_cast<unsigned>(Container::STATE_OPENED) <= 0xffu);

    // Over every state the pseudocode gate and the enumerator pair agree, and the m_opened value follows the gate.
    for (int state = 0; state <= 4; ++state) {
        const bool pair = state == static_cast<int>(Container::STATE_ACTIVATE) ||
                          state == static_cast<int>(Container::STATE_OPENED);
        EXPECT(GateActivatedOrOpened(state) == pair);
        EXPECT(OpenedFlagFor(state) == (pair ? 1u : 0u));
    }

    // Values outside the enum: the unsigned subtraction wraps, so they are not ACTIVATE or OPENED.
    EXPECT(!GateActivatedOrOpened(-1));
    EXPECT(!GateActivatedOrOpened(5));
    EXPECT(OpenedFlagFor(2) == 0u);
    EXPECT(OpenedFlagFor(3) == 1u);
    EXPECT(OpenedFlagFor(4) == 1u);

    if (g_failures == 0) {
        std::printf("Container r2a batch 0 test: all checks passed\n");
        return 0;
    }
    std::printf("Container r2a batch 0 test: %d failure(s)\n", g_failures);
    return 1;
}
