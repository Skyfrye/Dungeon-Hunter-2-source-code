// IMA ADPCM block decoding on synthetic blocks.
#include <cstdint>
#include <cstdio>
#include <vector>

#include "vox-audio/vox/ima_adpcm.hpp"

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
    // Mono, header predictor 0, index 0 (step 7). First byte 0xF7 holds nibbles
    // 7 (low) then F (high). Step 7 with code 7 gives diff 0+7+3+1 = 11.
    // Index moves to 8 (step 16). Code F: diff 2+16+8+4 = 30, sign set: 11-30 = -19.
    {
        std::uint8_t block[4 + 4] = {0, 0, 0, 0, 0xF7, 0, 0, 0};
        AdpcmState st[1];
        std::int16_t out[16] = {};
        int frames = vox::ImaAdpcmDecodeBlock(block, 8, 1, st, out, 16);
        CHECK(frames == 9);
        CHECK(out[0] == 0);
        CHECK(out[1] == 11);
        CHECK(out[2] == -19);
        CHECK(st[0].predictor == out[8]);
    }

    // Header predictor and index are read from the block.
    {
        // predictor 1000 (0x03E8), index 0; no step: all zero nibbles keep predictor
        // and walk the index to 0, so the decoded frames stay at 1000.
        std::uint8_t block[8] = {0xE8, 0x03, 0, 0, 0, 0, 0, 0};
        AdpcmState st[1];
        std::int16_t out[9] = {};
        int frames = vox::ImaAdpcmDecodeBlock(block, 8, 1, st, out, 9);
        CHECK(frames == 9);
        for (int i = 0; i < 9; ++i) CHECK(out[i] == 1000);
        CHECK(st[0].step_index == 0);
    }

    // Stereo: header ch0 predictor 100, ch1 predictor -100. Each channel has one
    // zero word, so both keep their predictor. Output is interleaved.
    {
        std::vector<std::uint8_t> block(8 + 8, 0);
        block[0] = 100;                 // ch0 predictor low byte
        block[4] = static_cast<std::uint8_t>(-100 & 0xff);
        block[5] = static_cast<std::uint8_t>((-100 >> 8) & 0xff);
        AdpcmState st[2];
        std::vector<std::int16_t> out(9 * 2, 0);
        int frames = vox::ImaAdpcmDecodeBlock(block.data(), static_cast<int>(block.size()), 2, st, out.data(), 9);
        CHECK(frames == 9);
        CHECK(out[0] == 100 && out[1] == -100);
        CHECK(out[2] == 100 && out[3] == -100);
        CHECK(out[16] == 100 && out[17] == -100);
    }

    // max_frames clips the decode: header plus one group only.
    {
        std::uint8_t block[8 + 8] = {0};
        AdpcmState st[1];
        std::int16_t out[64] = {};
        int frames = vox::ImaAdpcmDecodeBlock(block, 16, 1, st, out, 5);
        CHECK(frames == 1);
    }

    // Header only: one frame, no groups.
    {
        std::uint8_t block[4] = {5, 0, 3, 0};
        AdpcmState st[1];
        std::int16_t out[1] = {};
        CHECK(vox::ImaAdpcmDecodeBlock(block, 4, 1, st, out, 1) == 1);
        CHECK(out[0] == 5);
        CHECK(st[0].step_index == 3);
    }

    if (g_failures == 0) {
        std::printf("ima_adpcm_test: all checks passed\n");
        return 0;
    }
    std::printf("ima_adpcm_test: %d failures\n", g_failures);
    return 1;
}
