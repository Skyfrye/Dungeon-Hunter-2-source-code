// vox::VoxGainFade arithmetic shared by VoxEngineInternal::SetGroupGain and SetMasterGain:
// the clamp, a restart partway through a fade, the end of a fade and zero durations.
#include <cmath>
#include <cstdio>

#include "vox-audio/vox/gain_fade.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

bool Near(float a, float b) { return std::fabs(a - b) < 1e-5f; }
}  // namespace

static_assert(sizeof(vox::VoxGainFade) == 20, "a gain record is 20 bytes");

int main() {
    // The gain is clamped to [0, 1].
    CHECK(vox::ClampGainUnit(-0.5f) == 0.0f);
    CHECK(vox::ClampGainUnit(0.25f) == 0.25f);
    CHECK(vox::ClampGainUnit(2.0f) == 1.0f);

    // A fresh record restarts toward the target with the 0.001 margin on the duration.
    vox::VoxGainFade fade;
    vox::RestartFade(fade, 1.0f, 2.0f);
    CHECK(fade.current == 0.0f);
    CHECK(fade.target == 1.0f);
    CHECK(fade.elapsed == 0.0f);
    CHECK(Near(fade.duration, 2.001f));
    CHECK(!fade.flag);

    // Halfway through the fade the value is partway from current to target.
    fade.elapsed = 1.0f;
    CHECK(Near(vox::CurrentOfFade(fade), 1.0f / 2.001f));

    // A restart in the middle takes the interpolated value as the new starting point.
    vox::RestartFade(fade, 0.5f, 0.0f);
    CHECK(Near(fade.current, 1.0f / 2.001f));
    CHECK(fade.target == 0.5f);
    CHECK(Near(fade.duration, 0.001f));

    // Once elapsed reaches the duration, the value is the target.
    vox::VoxGainFade done;
    done.current = 0.2f;
    done.target = 0.8f;
    done.elapsed = 3.0f;
    done.duration = 3.0f;
    CHECK(vox::CurrentOfFade(done) == 0.8f);

    // A zero duration (elapsed is not below it) gives the target, with no division.
    vox::VoxGainFade zero;
    zero.current = 0.3f;
    zero.target = 0.9f;
    zero.elapsed = 0.0f;
    zero.duration = 0.0f;
    CHECK(vox::CurrentOfFade(zero) == 0.9f);

    std::printf("gain_fade_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
