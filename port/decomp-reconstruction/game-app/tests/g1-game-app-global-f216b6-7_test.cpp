// Test for batch g1-game-app-global-f216b6-7. Covers GLLiveLanguageArg, the language remap of NativeGLLive (0x43a758).
// The helper is inline in the topic header, so the test links without the batch source (its natives need the
// Application singleton and the gameswf accessors). Exit status 0 means every check passed.
#include <cstdio>

#include "dh2/global/native_app_hud_level.hpp"

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
    Check(GLLiveLanguageArg(4) == 5, "language 4 is passed as 5");
    Check(GLLiveLanguageArg(5) == 6, "language 5 is passed as 6");
    Check(GLLiveLanguageArg(6) == 7, "language 6 is passed as 7");
    Check(GLLiveLanguageArg(7) == 4, "language 7 is passed as 4");

    const int others[] = {-1, 0, 1, 2, 3, 8, 9, 100};
    for (int language : others) {
        Check(GLLiveLanguageArg(language) == language, "other languages pass through unchanged");
    }

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-7 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
