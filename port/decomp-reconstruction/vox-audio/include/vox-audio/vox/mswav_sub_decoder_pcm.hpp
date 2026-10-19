// vox::VoxMSWavSubDecoderPCM: the PCM variant of the WAV sub-decoder. It reads the data
// chunks of the WAV block in order, one chunk at a time, and tracks position in frames.
//
// Layout: the shared fields are in VoxMSWavSubDecoder (stream +0x04, chunk +0x08, current
// data chunk +0x0c, channels +0x10, sample rate +0x14, bits per sample +0x18, total frames
// +0x1c, bytes into the chunk +0x20, frames decoded +0x24, loop +0x28). The constructor
// sets them from the WAV block.
#pragma once

#include "vox-audio/vox/decoder_mswav_cursor.hpp"

namespace vox {

class VoxMSWavSubDecoderPCM : public VoxMSWavSubDecoder {
public:
    // C1 0x876168 and C2 0x876200 have the same body.
    VoxMSWavSubDecoderPCM(StreamCursorInterface* stream, WaveChunk* chunk);
    ~VoxMSWavSubDecoderPCM() override;  // D1 0x875e24 (empty); D0 0x875ec8 is the deleting variant

    int GetDataSize();                   // 0x875e28: sum of the chunk sizes from the data list
    bool HasData() override;             // 0x875e58
    int Seek(unsigned int frame) override;   // 0x875edc
    int Decode(void* dst, int count) override;  // 0x875fd0
};

}  // namespace vox
