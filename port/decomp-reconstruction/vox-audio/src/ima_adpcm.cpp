#include "vox-audio/vox/ima_adpcm.hpp"

#include <algorithm>

namespace vox {

const std::int16_t kImaStepTable[89] = {
    7,     8,     9,     10,    11,    12,    13,    14,    16,    17,    19,    21,    23,    25,    28,    31,
    34,    37,    41,    45,    50,    55,    60,    66,    73,    80,    88,    97,    107,   118,   130,   143,
    157,   173,   190,   209,   230,   253,   279,   307,   337,   371,   408,   449,   494,   544,   598,   658,
    724,   796,   876,   963,   1060,  1166,  1282,  1411,  1552,  1707,  1878,  2066,  2272,  2499,  2749,  3024,
    3327,  3660,  4026,  4428,  4871,  5358,  5894,  6484,  7132,  7845,  8630,  9493,  10442, 11487, 12635, 13899,
    15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

const std::int8_t kImaIndexTable[16] = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

namespace {

// One nibble of the asm inner loop (0x887300-0x887388): the step is taken from
// the current index, the difference is built from the bits of the nibble, the
// predictor is clamped to int16, and the index moves by the adjust table and is
// clamped to [0, 88].
std::int16_t DecodeNibble(int code, std::int16_t& predictor, int& index) {
    int step = kImaStepTable[index];
    int diff = step >> 3;
    if (code & 4) diff += step;
    if (code & 2) diff += step >> 1;
    if (code & 1) diff += step >> 2;

    int p = (code & 8) ? predictor - diff : predictor + diff;
    p = std::clamp(p, -32768, 32767);
    predictor = static_cast<std::int16_t>(p);

    index = std::clamp(index + kImaIndexTable[code & 0xf], 0, 88);
    return predictor;
}

}  // namespace

int ImaAdpcmDecodeBlock(const std::uint8_t* block, int block_bytes, int channels,
                        AdpcmState* states, std::int16_t* out, int max_frames) {
    if (block == nullptr || states == nullptr || out == nullptr || channels <= 0) {
        return 0;
    }

    // Headers: one per channel, 4 bytes each.
    for (int c = 0; c < channels; ++c) {
        const std::uint8_t* h = block + 4 * c;
        states[c].predictor = static_cast<std::int16_t>(static_cast<std::uint16_t>(h[0] | (h[1] << 8)));
        states[c].step_index = h[2];
    }

    // Frame 0 is the predictors.
    for (int c = 0; c < channels; ++c) {
        out[c] = states[c].predictor;
    }

    int remaining = block_bytes - 4 * channels;
    int group_bytes = 4 * channels;
    int groups = remaining > 0 ? (remaining + group_bytes - 1) / group_bytes : 0;
    int frames = 1;

    for (int g = 0; g < groups; ++g) {
        if (frames + 8 > max_frames) {
            break;
        }
        const std::uint8_t* group = block + 4 * channels + g * group_bytes;
        for (int c = 0; c < channels; ++c) {
            const std::uint8_t* word = group + 4 * c;
            for (int i = 0; i < 8; ++i) {
                int code = (word[i / 2] >> ((i & 1) * 4)) & 0xf;
                int index = states[c].step_index;
                std::int16_t sample = DecodeNibble(code, states[c].predictor, index);
                states[c].step_index = static_cast<std::uint8_t>(index);
                out[(frames + i) * channels + c] = sample;
            }
        }
        frames += 8;
    }
    return frames;
}

}  // namespace vox
