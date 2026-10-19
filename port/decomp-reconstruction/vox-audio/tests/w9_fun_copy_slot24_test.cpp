// FUN_008a0364: copies three words from src into the +0x24 field of an object.
#include <cstdint>
#include <cstdio>

void FUN_008a0364(std::uint32_t* slot24, std::uint32_t unused_r1, const std::uint32_t* src);

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
    // Fields after the copy must match the source; the neighbouring word must not move.
    std::uint32_t object[6] = {0xAAAAAAAAu, 0, 0, 0, 0, 0xBBBBBBBBu};
    const std::uint32_t src[3] = {0x11111111u, 0x22222222u, 0x33333333u};

    FUN_008a0364(&object[1], 0x7u, src);

    CHECK(object[1] == 0x11111111u);
    CHECK(object[2] == 0x22222222u);
    CHECK(object[3] == 0x33333333u);
    CHECK(object[0] == 0xAAAAAAAAu);
    CHECK(object[4] == 0u);
    CHECK(object[5] == 0xBBBBBBBBu);
    CHECK(src[0] == 0x11111111u);

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    return 0;
}
