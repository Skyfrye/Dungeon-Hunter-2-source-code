// Test for batch g1-game-anim-CharAnimator-2af513-0.
//
// Covers the constructor defaults, the stack and step accessors (ANIM_GetStepIndex, ANIM_SkipNextStep, ANIM_SetStep),
// ANIM_StopLoop, __Callback, and the AnimTable reads: ANIM_IsUnique, ANIM_IsRandom, ANIM_IsSequence, ANIM_GetStepCount and
// ANIM_GetCurrentlyPlayedAnimDict. The AnimTable is built as pydata builds it: a typed array of Structs::AnimTpl records,
// each with its Structs::AnimStep table, and Arrays::AnimTable::members points at element 0. So the typed record stride
// (sizeof the host record, not the 20-byte listing stride) is what these checks exercise.
// Not exercised: ANIM_SetSpeed (needs a Character with a VisualObject), IncAnimSetUsers, DecAnimSetUsers and
// CalculateExtraTime (partial in the source, see its notes).

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <vector>

// pydata headers come first: the record types and the table declarations are used as they are in the engine.
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

// The state members of CharAnimator sit under `private:` in its header. This test is the only place that sets them
// directly, so the header is included with `private` widened for this translation unit only.
#define private public
#include "dh2/CharAnimator.hpp"
#undef private

// Arrays::AnimTable::members is defined by pydata-accessors (w7_arrays_02.cpp), which this test does not link. The test
// defines it here, as the batch source reads it: a pointer to element 0 of a Structs::AnimTpl array.
std::uint8_t* Arrays::AnimTable::members = nullptr;

// Out-of-line members of the pydata records that the test constructs (not under test). The real bodies live in
// pydata-accessors (w7_structs_5.cpp and structs_records.cpp). These are empty: the test never reads or finalizes a record.
Structs::AnimTpl::~AnimTpl() {}
void Structs::AnimTpl::finalize() {}
void Structs::AnimTpl::read(IStreamBase*) {}
Structs::AnimStep::~AnimStep() {}
void Structs::AnimStep::finalize() {}
void Structs::AnimStep::read(IStreamBase*) {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

}  // namespace

int main() {
    // Constructor defaults. The stack entries are not set by the constructor, so they are not checked here.
    {
        CharAnimator a;
        EXPECT(a.m_stopped);
        EXPECT(a.m_speed == 1.0f);
        EXPECT(a.m_stepSpeed == 1.0f);
        EXPECT(a.m_pendingAnim == -1);
        EXPECT(a.m_animSetId == -1);
        EXPECT(a.m_character == nullptr);
        EXPECT(a.m_animStackIdx == 0);
        EXPECT(a.m_extraTime == 0);
        EXPECT(!a.m_swooshActive);
        EXPECT(!a.m_animSetCompiled);
        EXPECT(!a.m_animFinished);
        EXPECT(!a.m_stopLoop);
        EXPECT(!a.m_blended);
        EXPECT(!a.m_usersAdded);
        EXPECT(a.m_lastEventData == 0);

        // Stopped: every query takes the no-anim answer and no table is read.
        EXPECT(a.ANIM_GetStepIndex() == -1);
        EXPECT(a.ANIM_GetStepCount() == 0);
        EXPECT(!a.ANIM_IsUnique());
        EXPECT(!a.ANIM_IsRandom());
        EXPECT(!a.ANIM_IsSequence());
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == -1);
    }

    // Playing: step accessors act on the current stack level only where the index says so.
    {
        CharAnimator a;
        a.m_stopped = false;
        a.m_animStackIdx = 1;
        a.m_animStack[0] = {0, 3, 2};   // animId, loopCount, stepIndex
        a.m_animStack[1] = {1, -1, 4};

        EXPECT(a.ANIM_GetStepIndex() == 4);

        a.ANIM_SetStep(7);                       // current level
        EXPECT(a.m_animStack[1].m_stepIndex == 7);
        EXPECT(a.m_animStack[0].m_stepIndex == 2);

        a.ANIM_SkipNextStep();                   // current level
        EXPECT(a.m_animStack[1].m_stepIndex == 8);
        EXPECT(a.ANIM_GetStepIndex() == 8);

        a.ANIM_SkipNextStep(0u);                 // level 0 only
        EXPECT(a.m_animStack[0].m_stepIndex == 3);
        EXPECT(a.m_animStack[1].m_stepIndex == 8);

        a.ANIM_SetStep(5u, 0u);                  // level 0 only
        EXPECT(a.m_animStack[0].m_stepIndex == 5);
        EXPECT(a.ANIM_GetStepIndex() == 8);

        // StopLoop(false): loop count of the current level becomes 0, m_stopLoop untouched.
        a.ANIM_StopLoop(false);
        EXPECT(a.m_animStack[1].m_loopCount == 0);
        EXPECT(a.m_animStack[0].m_loopCount == 3);
        EXPECT(!a.m_stopLoop);

        // StopLoop(true) sets m_stopLoop.
        a.ANIM_StopLoop(true);
        EXPECT(a.m_stopLoop);
    }

    // Stopped: step writes and StopLoop do nothing.
    {
        CharAnimator a;
        a.m_stopped = true;
        a.m_animStackIdx = 0;
        a.m_animStack[0] = {0, 1, 6};

        a.ANIM_SetStep(9);
        a.ANIM_SkipNextStep();
        a.ANIM_StopLoop(true);

        EXPECT(a.m_animStack[0].m_stepIndex == 6);
        EXPECT(a.m_animStack[0].m_loopCount == 1);
        EXPECT(!a.m_stopLoop);
    }

    // __Callback marks the animation finished on the CharAnimator passed as user data.
    {
        CharAnimator a;
        a.m_animFinished = false;
        CharAnimator::__Callback(nullptr, &a);
        EXPECT(a.m_animFinished);
    }

    // AnimTable reads on a host table: three Structs::AnimTpl records (kind m_w4, step count m_w2, step table m_w3), each
    // with its own Structs::AnimStep array whose m_w2 is the animDict of that step.
    {
        std::vector<Structs::AnimStep> steps0(5);
        std::vector<Structs::AnimStep> steps1(3);
        std::vector<Structs::AnimStep> steps2(2);
        for (std::size_t i = 0; i < steps0.size(); ++i) steps0[i].Anim = 100 + static_cast<std::int32_t>(i);
        for (std::size_t i = 0; i < steps1.size(); ++i) steps1[i].Anim = 200 + static_cast<std::int32_t>(i);
        for (std::size_t i = 0; i < steps2.size(); ++i) steps2[i].Anim = 300 + static_cast<std::int32_t>(i);

        std::vector<Structs::AnimTpl> records(3);
        records[0].StepsSize = 5;  records[0].Steps = steps0.data(); records[0].Type = 0;  // unique, 5 steps
        records[1].StepsSize = 3;  records[1].Steps = steps1.data(); records[1].Type = 1;  // sequence, 3 steps
        records[2].StepsSize = 2;  records[2].Steps = steps2.data(); records[2].Type = 2;  // random, 2 steps
        Arrays::AnimTable::members = reinterpret_cast<std::uint8_t*>(records.data());

        CharAnimator a;
        a.m_stopped = false;
        a.m_animStackIdx = 0;

        // Record 0 is read from element 0, so its kind must not come from the low half of a pointer.
        a.m_animStack[0] = {0, 0, 0};
        EXPECT(a.ANIM_IsUnique());
        EXPECT(!a.ANIM_IsRandom());
        EXPECT(!a.ANIM_IsSequence());
        EXPECT(a.ANIM_GetStepCount() == 5);
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 100);

        a.m_animStack[0] = {1, 0, 0};
        EXPECT(!a.ANIM_IsUnique());
        EXPECT(!a.ANIM_IsRandom());
        EXPECT(a.ANIM_IsSequence());
        EXPECT(a.ANIM_GetStepCount() == 3);
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 200);

        a.m_animStack[0] = {2, 0, 0};
        EXPECT(!a.ANIM_IsUnique());
        EXPECT(a.ANIM_IsRandom());
        EXPECT(!a.ANIM_IsSequence());
        EXPECT(a.ANIM_GetStepCount() == 2);
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 300);

        // The animDict follows the step index of the current stack level, not level 0.
        a.m_animStackIdx = 1;
        a.m_animStack[0] = {2, 0, 0};    // level 0: record 2, step 0 (not current)
        a.m_animStack[1] = {1, 0, 1};    // level 1: record 1, step 1 (current)
        EXPECT(a.ANIM_IsSequence());
        EXPECT(a.ANIM_GetStepCount() == 3);
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 201);

        a.ANIM_SetStep(2);               // current level, step 2 (last of three)
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 202);

        a.m_animStack[1] = {0, 0, 4};    // record 0, step 4 (last of five)
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 104);

        a.m_animStack[1] = {2, 0, 1};    // record 2, step 1 (last of two)
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == 301);

        a.m_stopped = true;
        EXPECT(!a.ANIM_IsRandom());
        EXPECT(a.ANIM_GetStepCount() == 0);
        EXPECT(a.ANIM_GetCurrentlyPlayedAnimDict() == -1);

        Arrays::AnimTable::members = nullptr;
    }

    std::printf("%s (%d failure%s)\n", g_failures == 0 ? "PASS" : "FAIL", g_failures, g_failures == 1 ? "" : "s");
    return g_failures == 0 ? 0 : 1;
}
