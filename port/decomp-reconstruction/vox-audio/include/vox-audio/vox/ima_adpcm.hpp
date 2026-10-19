// IMA ADPCM block decoder (the core of VoxNativeSubDecoderIMAADPCM::DecodeBlock).
#pragma once

#include <cstddef>
#include <cstdint>

#include "vox-audio/vox/adpcm_state.hpp"

namespace vox {

// Standard IMA/DVI tables. The binary's copies are confirmed byte for byte: the
// 89 step values are the 178 bytes at .rodata 0x911a24 (AdpcmDecoder::cAdpcmStepSizeTable)
// and the 16 index bytes are at 0x911a14 (cAdpcmIndexTable), read with IDA get_bytes
// (read-only). The test r1-vox-audio-pack0-5b0f48-0_test checks these arrays against them.
extern const std::int16_t kImaStepTable[89];
extern const std::int8_t kImaIndexTable[16];

// Decodes one IMA ADPCM block into interleaved int16 PCM.
//
// Block layout (from the asm): per channel a 4-byte header (int16 predictor,
// uint8 step index, one reserved byte). Then groups of 4*channels bytes, one
// 4-byte word per channel, each word holding 8 nibbles (low nibble first).
//
// The first output frame is the header predictors. Each group adds 8 frames.
// states holds one entry per channel and is loaded from the headers and
// updated as the block decodes. out receives frames * channels samples.
//
// Returns the frame count per channel: 1 + 8 * groups, clipped to max_frames.
// Groups are ceil((block_bytes - 4*channels) / (4*channels)).
int ImaAdpcmDecodeBlock(const std::uint8_t* block, int block_bytes, int channels,
                        AdpcmState* states, std::int16_t* out, int max_frames);

}  // namespace vox
