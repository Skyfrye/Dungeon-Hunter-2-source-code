// IMA ADPCM sub-decoder: block bookkeeping, decoding-buffer slots and the state copies.
#include <cstdint>

#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"
#include "vox-audio/vox/native_sub_decoder_state.hpp"

namespace vox {

namespace {

// __aeabi_idiv and __aeabi_uidiv return 0 for a zero divisor on the target.
int DivOrZero(int a, int b) { return b == 0 ? 0 : a / b; }
std::uint32_t UDivOrZero(std::uint32_t a, std::uint32_t b) { return b == 0 ? 0 : a / b; }

}  // namespace

// 0x88635c _ZN3vox27VoxNativeSubDecoderIMAADPCM4SeekEj
int VoxNativeSubDecoderIMAADPCM::Seek(unsigned int sample_offset) {
    (void)sample_offset;
    return 0;
}

// 0x886364 _ZN3vox27VoxNativeSubDecoderIMAADPCM18EmulateDecodeBlockEPNS_12SegmentStateE
// Frames the next block part of the segment would give, without decoding it. Advances the
// byte position by at most one frame's worth of bytes, and returns the number of frames.
int VoxNativeSubDecoderIMAADPCM::EmulateDecodeBlock(SegmentState* segment) {
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment->chunk_index)];
    const int channels = channels_;
    const int frame_bytes = bytes_per_sample_;
    const int position = segment->byte_offset;
    int step = chunk.byte_size - position;
    if (frame_bytes < step) {
        step = frame_bytes;
    }
    const int chunk_frames = chunk.frame_count;
    segment->byte_offset = step + position;

    const int frames_done = segment->sample_position;
    const int result = 8 * DivOrZero(step - 1, 4 * channels) + 1;
    if (chunk_frames < result + frames_done) {
        return chunk_frames - frames_done;
    }
    return result;
}

// 0x8863dc _ZN3vox27VoxNativeSubDecoderIMAADPCM41EmulateSetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
int VoxNativeSubDecoderIMAADPCM::EmulateSetDecodingBufferToSegmentPosition(SegmentState* segment) {
    const int frame = segment->sample_position;
    const int slot = segment->decoding_slot;
    segment->sample_position = frames_per_block_ * DivOrZero(frame, frames_per_block_);
    const int result = EmulateDecodeBlock(segment);
    block_result_[slot] = result;
    frames_into_block_[slot] = frame - segment->sample_position;
    segment->sample_position = frame;
    return result;
}

// 0x886434 _ZN3vox27VoxNativeSubDecoderIMAADPCM31GetBytePositionFromSampleOffsetEj
unsigned int VoxNativeSubDecoderIMAADPCM::GetBytePositionFromSampleOffset(unsigned int sample_offset) {
    const std::uint32_t blocks = UDivOrZero(sample_offset, static_cast<std::uint32_t>(frames_per_block_));
    return static_cast<std::uint32_t>(bytes_per_sample_) * blocks;
}

// 0x886454 _ZN3vox27VoxNativeSubDecoderIMAADPCM17GetDecodingBufferEv
// Claims the first free decoding slot and returns its index, or -1 when all three are taken.
int VoxNativeSubDecoderIMAADPCM::GetDecodingBuffer() {
    for (int slot = 0; slot < 3; ++slot) {
        if (decoding_slot_used_[slot] == 0) {
            decoding_slot_used_[slot] = 1;
            return slot;
        }
    }
    return -1;
}

// 0x8864a0 _ZN3vox27VoxNativeSubDecoderIMAADPCM21ReleaseDecodingBufferEi
void VoxNativeSubDecoderIMAADPCM::ReleaseDecodingBuffer(int buffer) {
    if (buffer >= 0) {
        decoding_slot_used_[buffer] = 0;
        block_result_[buffer] = 0;
        frames_into_block_[buffer] = 0;
    }
}

// 0x8864cc _ZN3vox27VoxNativeSubDecoderIMAADPCM5ResetEv
// Clears the nine block words (block result, frames into block and decoding slot used,
// three each), then tail-calls VoxNativeSubDecoder::Reset.
void VoxNativeSubDecoderIMAADPCM::Reset() {
    for (int slot = 0; slot < 3; ++slot) {
        block_result_[slot] = 0;
        frames_into_block_[slot] = 0;
        decoding_slot_used_[slot] = 0;
    }
    VoxNativeSubDecoder::Reset();
}

// 0x8864f8 _ZN3vox27VoxNativeSubDecoderIMAADPCM8SetStateEPNS_29NativeSubDecoderIMAADPCMStateE
// The base SetState runs first. The three decoding-slot words are copied from the state's
// words 81..83 (+0x144..+0x14c), and each record whose state is 3 gets its reset flag set.
void VoxNativeSubDecoderIMAADPCM::SetState(NativeSubDecoderIMAADPCMState* state) {
    VoxNativeSubDecoder::SetState(state);
    for (int slot = 0; slot < 3; ++slot) {
        decoding_slot_used_[slot] = state->decoding_slot_used_[slot];
    }
    for (SegmentState& segment : segments_) {
        if (segment.state == 3) {
            segment.reset_pending = true;
        }
    }
}

// 0x886554 _ZN3vox27VoxNativeSubDecoderIMAADPCM8GetStateEPNS_29NativeSubDecoderIMAADPCMStateE
// The base GetState runs first, then the three decoding-slot words are written back.
void VoxNativeSubDecoderIMAADPCM::GetState(NativeSubDecoderIMAADPCMState* state) {
    VoxNativeSubDecoder::GetState(state);
    for (int slot = 0; slot < 3; ++slot) {
        state->decoding_slot_used_[slot] = decoding_slot_used_[slot];
    }
}

}  // namespace vox
