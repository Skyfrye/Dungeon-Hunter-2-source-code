// vox::AdpcmState: the 4-byte per-channel slot used by the IMA ADPCM decoder.
// The decoder keeps an array of these at +0x1a0 in VoxNativeSubDecoderIMAADPCM
// (four bytes per channel). Confirmed by the asm of DecodeBlock: the predictor
// is loaded with ldrsh at +0x00 and the step index with ldrb at +0x02.
#pragma once

#include <cstdint>

struct AdpcmState {
    std::int16_t predictor = static_cast<std::int16_t>(0xffff);  // +0x00 (ctor stores 0xffff)
    std::uint8_t step_index = 0;                                 // +0x02 (ctor stores 0)
};
