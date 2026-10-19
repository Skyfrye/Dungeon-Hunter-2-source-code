// vox::VoxMSWavSubDecoderIMAADPCM: constructor, HasData, Seek, Decode and DecodeBlock.
#include <climits>
#include <cstring>
#include <new>

#include "vox-audio/vox/ima_adpcm.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/mswav_sub_decoder_imaadpcm.hpp"

namespace vox {

namespace {

// The ARM integer divide returns 0 for a zero divisor (see Decisions in NOTES.md).
int SignedDivOrZero(int a, int b) {
    return b == 0 ? 0 : a / b;
}

std::uint32_t UnsignedDivOrZero(std::uint32_t a, std::uint32_t b) {
    return b == 0 ? 0 : a / b;
}

}  // namespace

// 0x8755b0 _ZN3vox26VoxMSWavSubDecoderIMAADPCMC1EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
// 0x875744 _ZN3vox26VoxMSWavSubDecoderIMAADPCMC2EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
// Sets up the base fields and the block buffers. The file's channel count and sample rate are
// copied, the bit depth is 16 (the decoder output), and the total is the fact chunk's count.
// Channel counts above 8 leave the info zeroed. A failed allocation leaves the info zeroed.
VoxMSWavSubDecoderIMAADPCM::VoxMSWavSubDecoderIMAADPCM(StreamCursorInterface* stream, WaveChunk* chunk) {
    stream_ = stream;
    chunk_ = chunk;
    GoToNextDataChunk();
    data_start_ = stream_->Tell();

    decode_block_ = static_cast<std::int16_t*>(VoxAlloc(4u * static_cast<unsigned int>(chunk_->block_align)));
    if (decode_block_ == nullptr) {
        return;
    }
    raw_block_ = static_cast<std::uint8_t*>(VoxAlloc(static_cast<unsigned int>(chunk_->block_align)));
    if (raw_block_ == nullptr) {
        VoxFree(decode_block_);
        decode_block_ = nullptr;
        return;
    }

    const int channels = chunk_->channels;
    if (channels == 0) {
        return;
    }
    frames_per_block_ = 2 * (chunk_->block_align - 4 * channels) / channels + 1;
    bits_per_sample_ = 16;
    channels_ = channels;
    sample_rate_ = chunk_->sample_rate;
    total_frames_ = chunk_->fact_value;
    if (channels > 8) {
        total_frames_ = 0;
        channels_ = 0;
        sample_rate_ = 0;
        bits_per_sample_ = 0;
    }
}

// 0x875418 _ZN3vox26VoxMSWavSubDecoderIMAADPCM7HasDataEv
bool VoxMSWavSubDecoderIMAADPCM::HasData() {
    if (stream_ == nullptr) {
        return false;
    }
    if (loop_) {
        if (frames_done_ < total_frames_ &&
            (static_cast<std::uint32_t>(data_pos_) < chunk_->current_data_size ||
             sample_index_ != decoded_frames_)) {
            return true;
        }
        Seek(0);
    }
    if (frames_done_ >= total_frames_) {
        return false;
    }
    if (static_cast<std::uint32_t>(data_pos_) < chunk_->current_data_size) {
        return true;
    }
    return sample_index_ != decoded_frames_;
}

// 0x875c34 _ZN3vox26VoxMSWavSubDecoderIMAADPCM4SeekEj
// Positions the stream at the block that holds the frame, decodes that block and skips to the
// frame inside it.
int VoxMSWavSubDecoderIMAADPCM::Seek(unsigned int frame) {
    if (total_frames_ <= frame) {
        return -1;
    }
    const std::uint32_t block = UnsignedDivOrZero(frame, static_cast<std::uint32_t>(frames_per_block_));
    const int block_bytes = chunk_->block_align * static_cast<int>(block);
    stream_->Seek(block_bytes + data_start_, 0);
    data_pos_ = block_bytes;

    const std::uint32_t block_start = static_cast<std::uint32_t>(frames_per_block_) * block;
    const std::uint32_t in_block = frame - block_start;
    frames_done_ = in_block + block_start;
    sample_index_ = static_cast<int>(in_block);
    decoded_frames_ = DecodeBlock(decode_block_);
    return 0;
}

// 0x875cc8 _ZN3vox26VoxMSWavSubDecoderIMAADPCM6DecodeEPvi
// Copies decoded frames to dst, decoding a new block when the current one is used up. A loop
// restarts the data with Seek(0) once the data runs out, as the original does; the loop test
// runs before the count test, so the restart happens even when no frames are left.
int VoxMSWavSubDecoderIMAADPCM::Decode(void* dst, int count) {
    const int bytes_per_sample = bits_per_sample_ >> 3;
    const int frame_bytes = channels_ * bytes_per_sample;
    const int wanted = SignedDivOrZero(count, frame_bytes);
    if (wanted <= 0) {
        return 0;
    }

    auto* out = static_cast<std::uint8_t*>(dst);
    int remaining = wanted;
    do {
        int index = sample_index_;
        int decoded = decoded_frames_;
        int source = 0;  // in samples (int16), into decode_block_
        if (index == decoded) {
            decoded = DecodeBlock(decode_block_);
            decoded_frames_ = decoded;
            sample_index_ = 0;
            index = 0;
        } else {
            source = index * channels_;
        }

        int avail = decoded - index;
        if (avail >= remaining) {
            avail = remaining;
        }
        const int channels = channels_;
        std::memcpy(out + 2 * channels * (wanted - remaining), decode_block_ + source,
                    static_cast<std::size_t>(2 * channels * avail));
        sample_index_ = index + avail;
        frames_done_ += static_cast<std::uint32_t>(avail);
        remaining -= avail;
    } while (((frames_done_ < total_frames_ &&
               (static_cast<std::uint32_t>(data_pos_) < chunk_->current_data_size ||
                sample_index_ != decoded_frames_)) ||
              (loop_ && Seek(0) == 0)) &&
             remaining > 0);

    return (wanted - remaining) * channels_ * bytes_per_sample;
}

// 0x8758d8 _ZN3vox26VoxMSWavSubDecoderIMAADPCM11DecodeBlockEPv (partial: two deviations)
// Reads up to one block from the stream (fewer at the end of the data chunk) and decodes it
// with the shared IMA ADPCM block decoder, which takes the header predictors and step indices
// from the block and keeps them in states_ (this+0x2A, 4-byte predictor/index pairs, one per
// channel). The step and index tables are the binary's (confirmed against .rodata 0x911a24,
// 89 step values = 178 bytes, and 0x911a14, 16 index bytes, with IDA get_bytes; see ima_adpcm.hpp).
// The header words (raw_block_[0] and [1] into states_[0], then two words per further channel),
// the group loop's 8 frames per iteration (the frame count starts at 1 for the header and grows
// by 8 per group), the bytes read (current_data_size - data_pos_ clamped to block_align), the
// data_pos_ advance by the read count, and the clip of the result to total_frames_ - frames_done_
// all match the listing.
// Deviation 1: with a chunk of zero channels and at least one byte read, the listing enters the
// group loop with v45 = bytes read and adds v34 to its group counter; v34 is R1, which the setup
// sets to 0 and which the inner channel loop (skipped when channels is 0) never assigns, so the
// counter never advances and the loop spins for ever. The port returns one frame and decodes
// nothing instead of reproducing that hang.
// Deviation 2: the first step lookup uses the block header's step index unclamped, so a header
// index above 88 reads past the 89-entry step table; the original reads whatever follows the table
// in .rodata and the port reads past its own array, so those out-of-range values differ (both are
// undefined reads on malformed input).
int VoxMSWavSubDecoderIMAADPCM::DecodeBlock(std::int16_t* out) {
    const std::uint32_t left = chunk_->current_data_size - static_cast<std::uint32_t>(data_pos_);
    const std::uint32_t block_align = static_cast<std::uint32_t>(chunk_->block_align);
    const int to_read = static_cast<int>(left < block_align ? left : block_align);
    const int read = stream_->Read(raw_block_, to_read);

    const int channels = chunk_->channels;
    int frames = 1;  // header only, as the original counts it
    if (channels > 0) {
        frames = ImaAdpcmDecodeBlock(raw_block_, read, channels, states_, out, INT_MAX);
    }
    data_pos_ += read;

    // Frames past the end of the file are not counted.
    int result = frames;
    const int done = static_cast<int>(frames_done_);
    if (frames + done > static_cast<int>(total_frames_)) {
        result = static_cast<int>(total_frames_) - done;
    }
    return result;
}

}  // namespace vox
