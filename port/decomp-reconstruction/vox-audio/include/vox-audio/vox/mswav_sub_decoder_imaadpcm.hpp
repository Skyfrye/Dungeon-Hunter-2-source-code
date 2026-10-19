// vox::VoxMSWavSubDecoderIMAADPCM: the IMA ADPCM variant of the WAV sub-decoder interface.
// Each block of the data chunk starts with a 4-byte header per channel; the frames of the
// block are decoded into decode_block_ and handed out as the caller asks.
//
// Layout, original 32-bit offsets (the base fields are in VoxMSWavSubDecoder): +0x2a eight
// AdpcmState slots (4 bytes each, predictor then step index), +0x4c decoded PCM buffer,
// +0x50 frames per block, +0x54 bytes read from the current data chunk, +0x58 stream offset
// of the data, +0x5c frames decoded from the current block, +0x60 next frame in that block,
// +0x64 frames returned so far, +0x68 raw block buffer.
#pragma once

#include <cstdint>

#include "vox-audio/vox/adpcm_state.hpp"
#include "vox-audio/vox/decoder_mswav_cursor.hpp"

namespace vox {

class VoxMSWavSubDecoderIMAADPCM : public VoxMSWavSubDecoder {
public:
    // C1 0x8755b0 and C2 0x875744 share this body.
    VoxMSWavSubDecoderIMAADPCM(StreamCursorInterface* stream, WaveChunk* chunk);
    // D1 0x8754dc and D2 0x875554: the decoded block at +0x4c is freed. The raw block is freed
    // too; the original does not free it (see the notes).
    ~VoxMSWavSubDecoderIMAADPCM() override;

    bool HasData() override;                    // 0x875418
    int Seek(unsigned int frame) override;      // 0x875c34: 0 on success, -1 past the end
    int Decode(void* dst, int count) override;  // 0x875cc8: returns the bytes written

private:
    // 0x8758d8 _ZN3vox26VoxMSWavSubDecoderIMAADPCM11DecodeBlockEPv: reads one block from the
    // stream and decodes it into out. Returns the frames in the block, clipped to the frames
    // still owed by the file.
    int DecodeBlock(std::int16_t* out);

    AdpcmState states_[8];                  // +0x2a, one per channel
    std::int16_t* decode_block_ = nullptr;  // +0x4c
    int frames_per_block_ = 0;              // +0x50
    int data_pos_ = 0;                      // +0x54
    int data_start_ = 0;                    // +0x58
    int decoded_frames_ = 0;                // +0x5c
    int sample_index_ = 0;                  // +0x60
    std::uint32_t frames_done_ = 0;         // +0x64 (the base frame_pos_ at +0x24 is unused here)
    std::uint8_t* raw_block_ = nullptr;     // +0x68
};

}  // namespace vox
