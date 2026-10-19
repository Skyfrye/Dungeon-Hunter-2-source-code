// VoxNativeSubDecoderIMAADPCM constructor (C1 0x886bfc, C2 0x886dbc, the same body): the base
// constructor, then the three decode buffers, the pending block and the ADPCM states.
#include <cstddef>
#include <cstdint>

#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

namespace vox {

VoxNativeSubDecoderIMAADPCM::VoxNativeSubDecoderIMAADPCM(
    StreamCursorInterface* stream, const NativeHeaderWords& header, States* states,
    AudioSegments* segments, vox::VoxVector<vox::VoxVector<int>>* loop_lists, TransitionRules* rules,
    vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions, vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names,
    NativePlaylistsManager* playlists)
    : VoxNativeSubDecoder(stream, header, states, segments, loop_lists, rules, transitions,
                          names, playlists) {
    // +0x170 frames per block, +0x174 the decode buffers, +0x178..+0x18c the per-slot words,
    // +0x19c the pending block, +0x1a0 the eight ADPCM states (default constructed).
    frames_per_block_ = 0;
    decode_buffers_ = nullptr;
    pending_ = nullptr;

    // Each buffer is one block of bytes_per_sample bytes; the three slots hold 4 bytes per
    // byte of block. Every allocation is attempted, as in the original.
    const std::size_t block_bytes = static_cast<std::size_t>(bytes_per_sample_);
    decode_buffers_ = static_cast<DecodeBuffers*>(VoxAlloc(sizeof(DecodeBuffers)));
    pending_ = VoxAlloc(block_bytes);
    bool ok = decode_buffers_ != nullptr && pending_ != nullptr;
    if (ok) {
        for (void*& slot : decode_buffers_->slot) {
            slot = VoxAlloc(4 * block_bytes);
        }
        ok = decode_buffers_->slot[0] != nullptr && decode_buffers_->slot[1] != nullptr &&
             decode_buffers_->slot[2] != nullptr;
    }
    if (!ok) {
        // Failure leaves the track words zero (the original's LABEL_12 path).
        mode_ = 0;
        channels_ = 0;
        field_0c_ = 0;
        bytes_per_sample_ = 0;
        bits_ = 0;
        return;
    }

    for (int i = 0; i < 3; ++i) {
        block_result_[i] = 0;
        frames_into_block_[i] = 0;
        decoding_slot_used_[i] = 0;
    }
    if (channels_ == 0) {
        mode_ = 0;
        channels_ = 0;
        field_0c_ = 0;
        bytes_per_sample_ = 0;
        bits_ = 0;
        return;
    }

    // Frames per block: 2 * (bytes per sample - 4 * channels) / channels, plus one.
    const int bytes = static_cast<int>(bytes_per_sample_);
    const int channels = static_cast<int>(channels_);
    frames_per_block_ = 2 * (bytes - 4 * channels) / channels + 1;

    if (channels_ > 8) {
        mode_ = 0;
        channels_ = 0;
        field_0c_ = 0;
        bytes_per_sample_ = 0;
        bits_ = 0;
    }
}

}  // namespace vox
