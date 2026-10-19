// Test for batch g1-game-anim-AnimController-83ef73-0. Covers the parts that run without a RootSceneNode:
// the do-nothing callbacks and the default value of the scaling flag (read from the .data byte, see the source).
// Returns non-zero on failure.
#include <cstdio>

#include "dh2/AnimController.hpp"

int main() {
    int failures = 0;
    auto check = [&failures](bool ok, const char* what) {
        if (!ok) {
            std::printf("FAIL: %s\n", what);
            ++failures;
        }
    };

    check(AnimController::s_scalingEnabled, "s_scalingEnabled starts true (.data byte at 0x999841 is 1)");

    // The callbacks must have the declared function types, and calling the timeline one must be harmless.
    AnimController::AnimCallback animCb = &AnimController::_CBAnim_DoNothing;
    check(animCb != nullptr, "_CBAnim_DoNothing has the AnimCallback type");
    animCb(nullptr, nullptr);

    AnimController::EventCallback eventCb = &AnimController::_CBEvent_DoNothing;
    check(eventCb != nullptr, "_CBEvent_DoNothing has the EventCallback type");

    if (failures == 0) {
        std::printf("AnimController part 1: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
