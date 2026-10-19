// vox::Srand48 and vox::Lrand48: the seeded sequence matches the POSIX formula and the values
// the host's glibc lrand48 gives after srand48 (seed 1 and seed -5).
#include <cstdint>
#include <cstdio>

#include "vox-audio/vox/random48.hpp"

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
    // srand48(1): the two first values from glibc are 89400484 and 976015093.
    vox::Srand48(1);
    CHECK(vox::Lrand48() == 89400484);
    CHECK(vox::Lrand48() == 976015093);

    // srand48(-5): 1754100061 and 487370682 in glibc.
    vox::Srand48(-5);
    CHECK(vox::Lrand48() == 1754100061);
    CHECK(vox::Lrand48() == 487370682);

    // Values are never negative (31 bits).
    vox::Srand48(12345);
    for (int i = 0; i < 1000; ++i) {
        CHECK(vox::Lrand48() >= 0);
    }

    std::printf("random48_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
