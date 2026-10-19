// Test for batch g1-game-anim-CharAnimator-2af513-2: CharAnimator::Update.
//
// Covers the arithmetic helpers the Update body uses for its loop counter and step-end tests
// (charanimator_detail::DecrementLoopCount, StoredLoopCount, StepReachesEnd). Update itself is not called: its state
// is in private members. The functions Update calls that are defined elsewhere are stubbed so this unit links alone.

#include <cstdint>
#include <cstdio>
#include <string>

#include "dh2/CharAnimator.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"

namespace charanimator_detail {
int DecrementLoopCount(int loopCount);
int StoredLoopCount(int remaining);
bool StepReachesEnd(int step, int stepCount);
}  // namespace charanimator_detail

// Stubs for the functions Update calls and that other batches define. None is reached by this test.
int Character::RaiseEvent(int, void*) {
    return 0;
}

void CharAnimator::IncAnimSetUsers() {}
void CharAnimator::DecAnimSetUsers() {}
void CharAnimator::ANIM_Set(int) {}
void CharAnimator::_SetAnim(int, unsigned int) {}
void CharAnimator::_SetAnimStep(unsigned int) {}

void PushProfilingContext(const char*) {}
void PopProfilingContext(const char*) {}

// Arrays::AnimTable storage (defined in pydata-accessors w7_arrays_02.cpp, not linked here). Update is not called.
std::uint8_t* Arrays::AnimTable::members = nullptr;
std::uint32_t Arrays::AnimTable::size = 0;

// DebugSwitches::s_inst (game-app Globals). The trace calls are not reached by this test.
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}

bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

}  // namespace

int main() {
    using namespace charanimator_detail;

    // DecrementLoopCount: a positive count goes down by one; zero and negative (forever) are unchanged.
    EXPECT(DecrementLoopCount(3) == 2);
    EXPECT(DecrementLoopCount(1) == 0);
    EXPECT(DecrementLoopCount(0) == 0);
    EXPECT(DecrementLoopCount(-1) == -1);
    EXPECT(DecrementLoopCount(-7) == -7);

    // StoredLoopCount: non-negative values are kept; any negative value is stored as -1 (forever).
    EXPECT(StoredLoopCount(2) == 2);
    EXPECT(StoredLoopCount(0) == 0);
    EXPECT(StoredLoopCount(-1) == -1);
    EXPECT(StoredLoopCount(-5) == -1);

    // StepReachesEnd: a step at or past the count ends the animation; before the count it does not.
    EXPECT(StepReachesEnd(0, 3) == false);
    EXPECT(StepReachesEnd(2, 3) == false);
    EXPECT(StepReachesEnd(3, 3) == true);
    EXPECT(StepReachesEnd(4, 3) == true);
    EXPECT(StepReachesEnd(0, 0) == true);

    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("CharAnimator helpers: all checks passed\n");
    return 0;
}
