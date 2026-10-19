// Test for batch g1-game-app-global-f216b6-6. Covers the Game Center achievements region mapping
// (NativeGCAchievementsOpenGLiveId in dh2/global/native_online_gc.hpp). The natives themselves are PARTIAL
// and need the gameswf value API, so they are not linked here. Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/global/native_online_gc.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // Languages 4..7 map to the region ids 5, 6, 7, 4 (the switch in nativeOpenGLive's caller).
    Check(NativeGCAchievementsOpenGLiveId(4) == 5, "language 4 -> region 5");
    Check(NativeGCAchievementsOpenGLiveId(5) == 6, "language 5 -> region 6");
    Check(NativeGCAchievementsOpenGLiveId(6) == 7, "language 6 -> region 7");
    Check(NativeGCAchievementsOpenGLiveId(7) == 4, "language 7 -> region 4");

    // Every other language index passes through unchanged, including the boundaries.
    Check(NativeGCAchievementsOpenGLiveId(0) == 0, "language 0 passes through");
    Check(NativeGCAchievementsOpenGLiveId(1) == 1, "language 1 passes through");
    Check(NativeGCAchievementsOpenGLiveId(3) == 3, "language 3 passes through");
    Check(NativeGCAchievementsOpenGLiveId(8) == 8, "language 8 passes through");
    Check(NativeGCAchievementsOpenGLiveId(-1) == -1, "negative language passes through");

    // The mapping is a permutation of 4..7: no two languages share a region.
    bool seen[8] = {false, false, false, false, false, false, false, false};
    bool distinct = true;
    for (int language = 4; language <= 7; ++language) {
        const int region = NativeGCAchievementsOpenGLiveId(language);
        if (region < 4 || region > 7 || seen[region]) {
            distinct = false;
        } else {
            seen[region] = true;
        }
    }
    Check(distinct, "languages 4..7 map to distinct regions 4..7");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-6: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
