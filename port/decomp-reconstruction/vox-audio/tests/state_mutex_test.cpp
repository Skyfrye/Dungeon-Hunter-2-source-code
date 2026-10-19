// AdpcmState defaults and vox::Mutex wrapper behaviour.
#include <cstdio>

#include "vox-audio/vox/adpcm_state.hpp"
#include "vox-audio/vox/mutex.hpp"

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
    AdpcmState s;
    CHECK(s.predictor == -1);
    CHECK(s.step_index == 0);

    vox::Mutex m;
    CHECK(m.TryLock());
    CHECK(!m.TryLock());  // already held by this thread
    m.Unlock();
    m.Lock();
    CHECK(!m.TryLock());
    m.Unlock();
    CHECK(m.TryLock());
    m.Unlock();

    if (g_failures == 0) {
        std::printf("state_mutex_test: all checks passed\n");
        return 0;
    }
    std::printf("state_mutex_test: %d failures\n", g_failures);
    return 1;
}
