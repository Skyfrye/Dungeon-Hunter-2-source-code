// Checks the clock logic of glitch::collada::CTimelineController (batch
// e1-glitch-scene-collada-gui-glitch_collada_CTimelineController-0): range setup,
// jumps, clip changes, and the end-of-range wrap and callback in update().
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"

#include <cmath>
#include <cstdio>

using namespace glitch::collada;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static int callbackCount = 0;
static void onEnd(glitch::scene::ITimelineController*, void* data) {
    callbackCount += static_cast<int>(reinterpret_cast<std::intptr_t>(data));
}

int main() {
    // Defaults: loop on, scale 1, no clip table.
    {
        CTimelineController t;
        CHECK(t.getLoop());
        CHECK(t.getScale() == 1.0f);
        CHECK(t.getClipCount() == 0);
        t.setLoop(false);
        CHECK(!t.getLoop());
        t.setScale(2.0f);
        CHECK(t.getScale() == 2.0f);
    }

    // setRange without apply: stores the range and the length in seconds.
    {
        CTimelineController t;
        t.setRange(100, 1100, false);
        CHECK(t.rangeStartMs == 100);
        CHECK(t.rangeEndMs == 1100);
        CHECK(std::fabs(t.rangeStartSec - 0.1f) < 1e-6f);
        CHECK(std::fabs(t.rangeLengthSec - 1.0f) < 1e-6f);
        CHECK(t.currentTimeMs == 0);  // not applied
    }

    // setRange with apply: jumps to the range start.
    {
        CTimelineController t;
        t.setRange(200, 1200, true);
        CHECK(t.currentTimeMs == 200);
        CHECK(std::fabs(t.currentSec - 0.2f) < 1e-6f);
    }

    // jumpTo returns the time in seconds and clears the started flag.
    {
        CTimelineController t;
        float s = t.jumpTo(750);
        CHECK(std::fabs(s - 0.75f) < 1e-6f);
        CHECK(t.currentTimeMs == 750);
        CHECK(!t.started);
    }

    // setClip with a clip table takes the clip's start and end; setRange then has no effect.
    {
        SAnimationClip clips[2] = {};
        clips[0].start = 0;
        clips[0].end = 500;
        clips[1].start = 500;
        clips[1].end = 2500;
        SLibraryAnimationClips table;
        table.count = 2;
        table.clips = clips;
        CTimelineController t;
        t.clipTable = &table;
        float length = t.setClip(1);
        CHECK(t.currentClipIndex == 1);
        CHECK(t.rangeStartMs == 500);
        CHECK(t.rangeEndMs == 2500);
        CHECK(std::fabs(length - 2.0f) < 1e-6f);
        CHECK(std::fabs(t.rangeLengthSec - 2.0f) < 1e-6f);
        t.setRange(0, 100, false);
        CHECK(t.rangeStartMs == 500);  // ignored while a clip table is present
    }

    // update: first call only starts the clock; a later call advances it.
    {
        CTimelineController t;
        t.setRange(0, 1000, false);
        t.setLoop(false);
        t.jumpTo(0);
        CHECK(t.update(0) == 0);
        CHECK(t.started);
        CHECK(t.update(500) == 500);
        CHECK(t.update(750) == 750);
    }

    // update: non-loop reaching the end calls the callback once and clamps at the end.
    {
        CTimelineController t;
        callbackCount = 0;
        t.callback = onEnd;
        t.callbackData = reinterpret_cast<void*>(1);
        t.setRange(0, 1000, false);
        t.setLoop(false);
        t.jumpTo(0);
        t.update(0);
        t.update(500);
        CHECK(t.update(1500) == 1000);
        CHECK(callbackCount == 1);
        CHECK(t.update(1800) == 1000);
        CHECK(callbackCount == 1);  // reported once
    }

    // update: loop wraps back into the range and calls the callback.
    {
        CTimelineController t;
        callbackCount = 0;
        t.callback = onEnd;
        t.callbackData = reinterpret_cast<void*>(1);
        t.setRange(0, 1000, false);
        t.setLoop(true);
        t.jumpTo(0);
        t.update(0);
        t.update(500);
        // Position 1.5 s with a 1.0 s range: wraps to 0.5 s.
        CHECK(t.update(1500) == 500);
        CHECK(callbackCount == 1);
    }

    if (failures == 0) {
        std::printf("collada_timeline_controller_0_test: all checks passed\n");
        return 0;
    }
    std::printf("collada_timeline_controller_0_test: %d failure(s)\n", failures);
    return 1;
}
