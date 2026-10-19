// SWF ADPCM decoder (DefineSound sound format 1) as the DH2 binary decodes it inline in
// gameswf::define_sound_loader (0x77d0d0). Used by v1-vendor-gameswf-gameswf-fddef6-3.cpp.
//
// Bit stream (MSB first, read through the reader's read_uint / read_sint):
//   2 bits      code size minus 2 (0..3 gives 2, 3, 4 or 5 bits per code)
//   per block of up to 4096 frames:
//     16 bits   predictor (signed), 6 bits step index, for the left channel
//     if stereo: the same 22 bits for the right channel
//     then one code per channel for each remaining frame (left first, then right)
//
// Each code has `bits` bits: the top bit is the sign, the other bits are the magnitude m.
//   delta = (step + 2*m*step) >> (bits - 1), negated when the sign bit is set
//   predictor += delta, clamped to [-32768, 32767] (values above 32766 become 32767,
//   values below -32767 become -32768)
//   index += adjust[m], clamped to [0, 88]
// The first frame of each block is the block's predictor values, not a decoded code.
//
// Step table: in the binary, gameswf::s_stepsize (89 ints, the IMA table) directly follows
// gameswf::s_sample_rate_table (16 bytes, four ints). The decompiled `s_sample_rate_table[index + 4]`
// is therefore s_stepsize[index]. The symbol sizes are in recovered/native/symbols (symtab 39115/39117).
// The values below are the r1714 table (gameswf_sound.cpp); the binary bytes are not in this tree.
//
// Index adjust tables: gameswf::s_index_update_table_{2,3,4,5}bits (.data, sizes 8/16/32/64 bytes match).

#ifndef VENDOR_GAMESWF_ADPCM_DH2_HPP
#define VENDOR_GAMESWF_ADPCM_DH2_HPP

#include <cstdint>

namespace gameswf {
namespace dh2 {

inline constexpr int kAdpcmStepCount = 89;
inline constexpr int kAdpcmStep[kAdpcmStepCount] = {
    7, 8, 9, 10, 11, 12, 13, 14, 16, 17,
    19, 21, 23, 25, 28, 31, 34, 37, 41, 45,
    50, 55, 60, 66, 73, 80, 88, 97, 107, 118,
    130, 143, 157, 173, 190, 209, 230, 253, 279, 307,
    337, 371, 408, 449, 494, 544, 598, 658, 724, 796,
    876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066,
    2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358,
    5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899,
    15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

// gameswf::s_index_update_table_<bits>bits, indexed by the magnitude m = code & ((1 << (bits-1)) - 1).
inline constexpr int kAdpcmIndexAdjust2[2] = {-1, 2};
inline constexpr int kAdpcmIndexAdjust3[4] = {-1, -1, 2, 4};
inline constexpr int kAdpcmIndexAdjust4[8] = {-1, -1, -1, -1, 2, 4, 6, 8};
inline constexpr int kAdpcmIndexAdjust5[16] = {-1, -1, -1, -1, -1, -1, -1, -1, 1, 2, 4, 6, 8, 10, 13, 16};

inline int adpcm_index_adjust(int bits, int magnitude)
{
    switch (bits) {
    case 2: return kAdpcmIndexAdjust2[magnitude];
    case 3: return kAdpcmIndexAdjust3[magnitude];
    case 4: return kAdpcmIndexAdjust4[magnitude];
    default: return kAdpcmIndexAdjust5[magnitude];
    }
}

// Predictor and step index of one channel.
struct adpcm_channel {
    int predictor = 0;  // signed 16-bit range
    int index = 0;      // 0..88
};

// Decodes one code for one channel and returns the new predictor.
inline int adpcm_decode_code(adpcm_channel& ch, int code, int bits)
{
    const int sign_bit = 1 << (bits - 1);
    const int magnitude = code & (sign_bit - 1);
    const int step = kAdpcmStep[ch.index];

    int delta = (step + 2 * magnitude * step) >> (bits - 1);
    if ((code & sign_bit) != 0) {
        delta = -delta;
    }

    int predictor = ch.predictor + delta;
    if (predictor > 32766) {
        predictor = 32767;
    } else if (predictor < -32767) {
        predictor = -32768;
    }
    ch.predictor = predictor;

    int index = ch.index + adpcm_index_adjust(bits, magnitude);
    if (index < 0) {
        index = 0;
    } else if (index > 88) {
        index = 88;
    }
    ch.index = index;
    return predictor;
}

// Decodes `frames` frames (stereo: frame pairs) from `in` into `out`, interleaved for stereo.
// `out` must hold frames * (stereo ? 2 : 1) samples. Reader provides int read_uint(int bits)
// and int read_sint(int bits), like gameswf::stream.
template <class Reader>
void adpcm_expand(Reader& in, std::int16_t* out, int frames, bool stereo)
{
    const int bits = in.read_uint(2) + 2;
    const int channels = stereo ? 2 : 1;

    int remaining = frames;
    int frame = 0;
    while (remaining > 0) {
        const int block = remaining < 4096 ? remaining : 4096;

        adpcm_channel left;
        adpcm_channel right;
        left.predictor = in.read_sint(16);
        left.index = in.read_uint(6);
        if (stereo) {
            right.predictor = in.read_sint(16);
            right.index = in.read_uint(6);
        }

        // The first frame of a block is the block's predictor values.
        out[frame * channels] = static_cast<std::int16_t>(left.predictor);
        if (stereo) {
            out[frame * channels + 1] = static_cast<std::int16_t>(right.predictor);
        }
        ++frame;

        for (int i = 1; i < block; ++i, ++frame) {
            const int left_code = in.read_uint(bits);
            out[frame * channels] = static_cast<std::int16_t>(adpcm_decode_code(left, left_code, bits));
            if (stereo) {
                const int right_code = in.read_uint(bits);
                out[frame * channels + 1] = static_cast<std::int16_t>(adpcm_decode_code(right, right_code, bits));
            }
        }

        remaining -= block;
    }
}

}  // namespace dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_ADPCM_DH2_HPP
