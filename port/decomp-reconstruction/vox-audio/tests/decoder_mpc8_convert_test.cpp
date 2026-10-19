// vox::ConvertFloatSamplesToShort (the conversion DecoderMPC8Cursor::ConvertFloatToShort uses):
// scale by 2^15, truncate, saturate to int16.
#include <cstdio>

#include "vox-audio/vox/decoder_mpc8.hpp"

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
    const float in[] = {0.0f, 0.5f, -0.5f, 1.0f, -1.0f, 1.5f, -1.5f, 0.999995f, 2.0f};
    std::int16_t out[9] = {};
    vox::ConvertFloatSamplesToShort(out, in, 9);
    CHECK(out[0] == 0);
    CHECK(out[1] == 16384);
    CHECK(out[2] == -16384);
    CHECK(out[3] == 32767);    // 32768 saturates to the positive maximum
    CHECK(out[4] == -32768);   // exactly -1.0 is the negative minimum
    CHECK(out[5] == 32767);
    CHECK(out[6] == -32768);
    CHECK(out[7] == 32767);    // 32767.67 truncates to 32767
    CHECK(out[8] == 32767);

    // A count of zero writes nothing.
    std::int16_t untouched[2] = {7, 7};
    vox::ConvertFloatSamplesToShort(untouched, in, 0);
    CHECK(untouched[0] == 7 && untouched[1] == 7);

    std::printf("decoder_mpc8_convert_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
