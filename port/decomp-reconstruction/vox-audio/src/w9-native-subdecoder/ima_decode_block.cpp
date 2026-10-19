// VoxNativeSubDecoderIMAADPCM::DecodeBlock: one IMA ADPCM block of the segment's chunk is read
// from the stream, decoded into interleaved 16-bit PCM, and the segment byte position and the
// per-channel ADPCM states are advanced. The nibble step is the one in ImaAdpcmDecodeBlock
// (ima_adpcm.cpp), written out here because the original clamps the returned frame count
// against the chunk length only after the whole block is decoded.
#include <cstdint>

#include "vox-audio/vox/ima_adpcm.hpp"
#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

namespace vox {

namespace {
// Little-endian signed 16-bit word at p.
std::int16_t LoadInt16(const std::uint8_t* p) {
    return static_cast<std::int16_t>(static_cast<std::uint16_t>(p[0] | (p[1] << 8)));
}
}  // namespace

// 0x887068 _ZN3vox27VoxNativeSubDecoderIMAADPCM11DecodeBlockEPvPNS_12SegmentStateE
// Layout (32-bit offsets of the original): +0x04 stream, +0x0a channels, +0x10 block bytes,
// +0x14 base offset, +0x18 chunk table, +0x19c pending block buffer, +0x1a0 ADPCM states
// (four bytes per channel). Segment: +0x00 chunk index, +0x08 byte position in the chunk,
// +0x0c frame position, the chunk entry gives the byte offset, byte size and frame count.
int VoxNativeSubDecoderIMAADPCM::DecodeBlock(void* buffer, SegmentState* segment) {
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment->chunk_index)];
    const int channels = channels_;

    // Seek the stream to the block when it is not already there.
    const int position = chunk.byte_offset + segment->byte_offset + base_offset_;
    if (stream_->Tell() != position) {
        stream_->Seek(position, 0);
    }

    // Read at most one block, and no more than the bytes left in the chunk.
    int want = bytes_per_sample_;
    const int remaining = chunk.byte_size - segment->byte_offset;
    if (want >= remaining) {
        want = remaining;
    }
    auto* block = static_cast<std::uint8_t*>(pending_);
    const int read = stream_->Read(block, want);
    segment->byte_offset += read;

    // Channel headers: int16 predictor, step index byte, one reserved byte. The original keeps
    // eight states, so the loop is bounded by that table.
    if (channels < 1 || channels > 8) {
        return 0;
    }
    for (int c = 0; c < channels; ++c) {
        const std::uint8_t* header = block + 4 * c;
        adpcm_states_[c].predictor = LoadInt16(header);
        adpcm_states_[c].step_index = header[2];
    }

    // The header predictors are the first frame of every channel.
    auto* out = static_cast<std::int16_t*>(buffer);
    for (int c = 0; c < channels; ++c) {
        out[c] = adpcm_states_[c].predictor;
    }
    int frames = 1;

    const int header_bytes = 4 * channels;
    const int data_bytes = read - header_bytes;
    if (data_bytes > 0) {
        // Each group is 4 bytes per channel: 8 nibbles, low nibble first, decoded into 8
        // consecutive frames of that channel.
        const std::uint8_t* data = block + header_bytes;
        int consumed = 0;
        do {
            for (int c = 0; c < channels; ++c) {
                const std::uint8_t* group = data + 4 * c;
                std::uint32_t word = static_cast<std::uint32_t>(group[0]) |
                                     (static_cast<std::uint32_t>(group[1]) << 8) |
                                     (static_cast<std::uint32_t>(group[2]) << 16) |
                                     (static_cast<std::uint32_t>(group[3]) << 24);
                AdpcmState& state = adpcm_states_[c];
                int predictor = state.predictor;
                int index = state.step_index;
                int nibble = group[0] & 0xF;
                for (int k = 0; k < 8; ++k) {
                    const int step = kImaStepTable[index];
                    int diff = step >> 3;
                    if ((nibble & 4) != 0) diff += step;
                    if ((nibble & 2) != 0) diff += step >> 1;
                    if ((nibble & 1) != 0) diff += step >> 2;
                    if ((nibble & 8) != 0) {
                        predictor -= diff;
                        if (predictor < -32768) predictor = -32768;
                    } else {
                        predictor += diff;
                        if (predictor >= 0x7FFF) predictor = 0x7FFF;
                    }
                    index += kImaIndexTable[nibble];
                    if (index < 0) {
                        index = 0;
                    } else if (index >= 88) {
                        index = 88;
                    }
                    out[(frames + k) * channels + c] = static_cast<std::int16_t>(predictor);
                    if (k < 7) {
                        word >>= 4;
                        nibble = static_cast<int>(word & 0xF);
                    }
                }
                state.predictor = static_cast<std::int16_t>(predictor);
                state.step_index = static_cast<std::uint8_t>(index);
            }
            data += 4 * channels;
            consumed += 4 * channels;
            frames += 8;
        } while (consumed < data_bytes);
    }

    // Clamp the frame count to the frames left in the chunk after the segment position.
    if (chunk.frame_count < frames + segment->sample_position) {
        return chunk.frame_count - segment->sample_position;
    }
    return frames;
}

}  // namespace vox
