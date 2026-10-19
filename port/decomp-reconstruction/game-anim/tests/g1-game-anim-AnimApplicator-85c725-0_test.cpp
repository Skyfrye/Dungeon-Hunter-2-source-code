// Test for the AnimApplicator functions that run without the engine: the constructor, the callback pair, the delta
// arithmetic and the no-reference-node paths. Returns non-zero on failure.
#include <cmath>
#include <cstdio>

#include "dh2/AnimApplicator.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond);                   \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

bool Near(float a, float b) { return std::fabs(a - b) < 1e-6f; }

glitch::core::vector3d<float> Vec(float x, float y, float z) {
    glitch::core::vector3d<float> v;
    v.X = x;
    v.Y = y;
    v.Z = z;
    return v;
}

bool IsZero(const glitch::core::vector3d<float>& v) { return v.X == 0.0f && v.Y == 0.0f && v.Z == 0.0f; }

int g_callbackCalls = 0;
void* g_lastUser = nullptr;
glitch::scene::ITimelineController* g_lastTimeline = nullptr;

void OnTimeline(glitch::scene::ITimelineController* timeline, void* user) {
    ++g_callbackCalls;
    g_lastTimeline = timeline;
    g_lastUser = user;
}

void TestConstructor() {
    AnimApplicator a(nullptr);
    EXPECT(a.m_animator == nullptr);
    EXPECT(a.m_refNode == nullptr);
    EXPECT(a.unk_10 == 0);
    EXPECT(a.m_time == 0u);
    EXPECT(IsZero(a.m_prevPos));
    EXPECT(IsZero(a.m_delta));
    EXPECT(!a.m_callbackPending);
    EXPECT(a.m_callback == nullptr);
    EXPECT(a.m_callbackUser == nullptr);
}

void TestCallbacks() {
    AnimApplicator a(nullptr);
    int userTag = 7;
    int timelineTag = 0;
    auto* timeline = reinterpret_cast<glitch::scene::ITimelineController*>(&timelineTag);

    // Pending but no callback installed: nothing runs and the flag stays set.
    a.m_callbackPending = true;
    a.CheckCallback(timeline);
    EXPECT(g_callbackCalls == 0);
    EXPECT(a.m_callbackPending);

    // Callback installed and pending: it runs once with the timeline and user data, then the flag clears.
    a.SetCallback(OnTimeline, &userTag);
    EXPECT(a.m_callback == OnTimeline);
    EXPECT(a.m_callbackUser == &userTag);
    a.CheckCallback(timeline);
    EXPECT(g_callbackCalls == 1);
    EXPECT(g_lastTimeline == timeline);
    EXPECT(g_lastUser == &userTag);
    EXPECT(!a.m_callbackPending);

    // Not pending: no call.
    a.CheckCallback(timeline);
    EXPECT(g_callbackCalls == 1);
}

void TestCalculateDelta() {
    AnimApplicator a(nullptr);

    // First pose at time 10: delta is pose minus the zero previous pose.
    float dx = a.CalculateDelta(10, Vec(1.0f, 2.0f, 3.0f));
    EXPECT(Near(dx, 1.0f));
    EXPECT(Near(a.m_delta.X, 1.0f));
    EXPECT(Near(a.m_delta.Y, 2.0f));
    EXPECT(Near(a.m_delta.Z, 3.0f));
    EXPECT(Near(a.m_prevPos.X, 1.0f));
    EXPECT(Near(a.m_prevPos.Y, 2.0f));
    EXPECT(Near(a.m_prevPos.Z, 3.0f));
    EXPECT(a.m_time == 10u);

    // Same time again: delta is zeroed, previous pose still updates.
    dx = a.CalculateDelta(10, Vec(4.0f, 5.0f, 6.0f));
    EXPECT(Near(dx, 0.0f));
    EXPECT(IsZero(a.m_delta));
    EXPECT(Near(a.m_prevPos.X, 4.0f));
    EXPECT(Near(a.m_prevPos.Z, 6.0f));
    EXPECT(a.m_time == 10u);

    // New time: delta is the change since the previous pose.
    dx = a.CalculateDelta(11, Vec(4.0f, 5.0f, 9.0f));
    EXPECT(Near(dx, 0.0f));
    EXPECT(Near(a.m_delta.X, 0.0f));
    EXPECT(Near(a.m_delta.Y, 0.0f));
    EXPECT(Near(a.m_delta.Z, 3.0f));
    EXPECT(a.m_time == 11u);
}

void TestResetDeltaWithPose() {
    AnimApplicator a(nullptr);
    a.CalculateDelta(5, Vec(1.0f, 1.0f, 1.0f));
    a.ResetDelta(20, Vec(7.0f, 8.0f, 9.0f));
    EXPECT(a.m_time == 20u);
    EXPECT(Near(a.m_prevPos.X, 7.0f));
    EXPECT(Near(a.m_prevPos.Y, 8.0f));
    EXPECT(Near(a.m_prevPos.Z, 9.0f));
    EXPECT(IsZero(a.m_delta));
}

void TestResetDeltaTimeOnly() {
    // No reference node: only the time and the delta change; the previous pose is kept.
    AnimApplicator a(nullptr);
    a.CalculateDelta(5, Vec(2.0f, 3.0f, 4.0f));
    a.CalculateDelta(6, Vec(3.0f, 4.0f, 5.0f));
    EXPECT(Near(a.m_delta.X, 1.0f));

    a.ResetDelta(9u);
    EXPECT(a.m_time == 9u);
    EXPECT(IsZero(a.m_delta));
    EXPECT(Near(a.m_prevPos.X, 3.0f));
    EXPECT(Near(a.m_prevPos.Y, 4.0f));
    EXPECT(Near(a.m_prevPos.Z, 5.0f));
}

void TestAnimateNodeTimeOnly() {
    // No reference node: AnimateNode only writes m_time; the delta and previous pose are kept.
    AnimApplicator a(nullptr);
    a.CalculateDelta(3, Vec(1.0f, 0.0f, 0.0f));
    a.CalculateDelta(4, Vec(2.0f, 0.0f, 0.0f));
    EXPECT(Near(a.m_delta.X, 1.0f));

    a.AnimateNode(8u);
    EXPECT(a.m_time == 8u);
    EXPECT(Near(a.m_delta.X, 1.0f));
    EXPECT(Near(a.m_prevPos.X, 2.0f));
}

void TestDeletingDestructor() {
    // The destructor releases nothing when no reference node is set.
    AnimApplicator* heap = new AnimApplicator(nullptr);
    delete heap;
}

}  // namespace

int main() {
    TestConstructor();
    TestCallbacks();
    TestCalculateDelta();
    TestResetDeltaWithPose();
    TestResetDeltaTimeOnly();
    TestAnimateNodeTimeOnly();
    TestDeletingDestructor();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("AnimApplicator tests passed\n");
    return 0;
}
