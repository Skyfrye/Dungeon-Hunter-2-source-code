// The emitter transport and gain setters and AccessController::ReleaseReadAccess return the
// Mutex::Unlock result (0 on success), as the binary tail-calls Mutex::Unlock.
#include <cstdio>

#include "vox-audio/vox/access_controller.hpp"
#include "vox-audio/vox/emitter_obj.hpp"

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
}  // namespace

int main() {
    vox::EmitterObj e;
    e.state_ = 1;
    e.state_set_ = 0;

    CHECK(e.SetGain(0.5f, 1.0f) == 0);
    CHECK(e.requested_gain_ == 0.5f);
    CHECK(e.SetPitch(2.0f, 1.0f) == 0);
    CHECK(e.Play(1.0f) == 0);
    CHECK(e.Pause(0.5f) == 0);
    CHECK(e.Stop(0.25f) == 0);
    CHECK(e.Resume(1.0f) == 0);

    // Resume from sub-state 2 restarts the fade toward 1.0 with the time as given.
    e.state_set_ = 2;
    CHECK(e.Resume(0.75f) == 0);
    CHECK(e.state_set_ == 1);
    CHECK(e.resume_fade_.target == 1.0f);
    CHECK(e.resume_fade_.duration == 0.75f);

    vox::AccessController ac;
    ac.GetReadAccess();
    CHECK(ac.ReleaseReadAccess() == 0);

    if (g_failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("w12_rem2_unlock_result_test: ok\n");
    return 0;
}
