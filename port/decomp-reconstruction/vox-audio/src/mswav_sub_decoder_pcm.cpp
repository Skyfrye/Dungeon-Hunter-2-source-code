// vox::VoxMSWavSubDecoderPCM: PCM sub-decoder for the WAV data chunks (see the header).
#include "vox-audio/vox/mswav_sub_decoder_pcm.hpp"

#include <cstdint>

namespace vox {
namespace {

// The ARM division helpers return 0 for a zero divisor under the default handler, so the
// port does the same instead of trapping.
int DivOrZero(int a, int b) { return b == 0 ? 0 : a / b; }
int RemOrZero(int a, int b) { return b == 0 ? 0 : a % b; }
std::uint32_t UDivOrZero(std::uint32_t a, std::uint32_t b) { return b == 0 ? 0 : a / b; }

}  // namespace

// 0x876168 _ZN3vox21VoxMSWavSubDecoderPCMC1EPNS_21StreamCursorInterfaceEPNS_9WaveChunkE
// 0x876200 is the C2 variant with the same body. The original writes the fields in this
// order: the chunk, the stream, the format (bits, channels, sample rate), the total frame
// count (data size over the frame size), and finally the first data chunk.
VoxMSWavSubDecoderPCM::VoxMSWavSubDecoderPCM(StreamCursorInterface* stream, WaveChunk* chunk) {
    chunk_ = chunk;
    stream_ = stream;
    bits_per_sample_ = chunk->bits_per_sample;
    channels_ = chunk->channels;
    sample_rate_ = chunk->sample_rate;
    int frame_bytes = channels_ * (bits_per_sample_ >> 3);
    total_frames_ = static_cast<std::uint32_t>(DivOrZero(GetDataSize(), frame_bytes));
    GoToNextDataChunk();
}

// 0x875e24 D1 (empty). D0 0x875ec8 is compiler-generated.
VoxMSWavSubDecoderPCM::~VoxMSWavSubDecoderPCM() {}

// 0x875e28 _ZN3vox21VoxMSWavSubDecoderPCM11GetDataSizeEv
// The sum of the sizes of every chunk in the data list, starting at the list head.
int VoxMSWavSubDecoderPCM::GetDataSize() {
    const DataNode* node = chunk_->data_list;
    if (node == nullptr) {
        return 0;
    }
    int total = static_cast<int>(node->size);
    for (const DataNode* next = node->next; next != nullptr; next = next->next) {
        total += static_cast<int>(next->size);
    }
    return total;
}

// 0x875e58 _ZN3vox21VoxMSWavSubDecoderPCM7HasDataEv
// No stream means no data. When every frame has been decoded and the loop flag is set, the
// stream is rewound with Seek(0) and the answer is taken again.
bool VoxMSWavSubDecoderPCM::HasData() {
    if (stream_ == nullptr) {
        return false;
    }
    if (frame_pos_ < total_frames_ || !loop_) {
        return frame_pos_ < total_frames_;
    }
    Seek(0);
    return frame_pos_ < total_frames_;
}

// 0x875edc _ZN3vox21VoxMSWavSubDecoderPCM4SeekEj
// Seeks to a frame. Past the end of the data it returns -1. Otherwise the cursor restarts at the
// first chunk and skips whole chunks until the target lies inside one, then moves the stream
// forward by the remaining bytes. A frame of 0 stops at the first chunk.
int VoxMSWavSubDecoderPCM::Seek(unsigned int frame) {
    if (total_frames_ < frame) {
        return -1;
    }
    frame_pos_ = 0;
    node_ = nullptr;
    GoToNextDataChunk();
    if (frame == 0 || node_ == nullptr) {
        return 0;
    }
    std::uint32_t remaining = frame;
    std::uint32_t node_size = chunk_->current_data_size;
    std::uint32_t align = static_cast<std::uint32_t>(chunk_->block_align);
    while (UDivOrZero(node_size, align) <= remaining) {
        frame_pos_ += UDivOrZero(node_size, align);
        GoToNextDataChunk();
        node_size = chunk_->current_data_size;
        align = static_cast<std::uint32_t>(chunk_->block_align);
        remaining -= UDivOrZero(node_size, align);
        if (remaining == 0 || node_ == nullptr) {
            return 0;
        }
    }
    frame_pos_ += remaining;
    stream_->Seek(static_cast<int>(align * remaining), 1);
    node_pos_ = align * remaining;
    return 0;
}

// 0x875fd0 _ZN3vox21VoxMSWavSubDecoderPCM6DecodeEPvi
// Decodes up to count bytes, rounded down to whole frames. Each read stays inside the current
// chunk. When the chunk ends it moves to the next one. At the end of the data it either stops
// or, with the loop flag set, rewinds with Seek(0). The return value is the number of bytes
// written to dst.
int VoxMSWavSubDecoderPCM::Decode(void* dst_v, int count) {
    auto* dst = static_cast<std::uint8_t*>(dst_v);
    std::uint32_t node_size = chunk_->current_data_size;
    if (node_pos_ >= node_size) {
        GoToNextDataChunk();
        node_size = chunk_->current_data_size;
    }
    int align = chunk_->block_align;
    int want = count - RemOrZero(count, align);
    if (want <= 0) {
        return 0;
    }
    int frame_bytes = channels_ * (bits_per_sample_ >> 3);
    int done = 0;
    while (true) {
        std::uint32_t pos = node_pos_;
        int got = 0;
        std::uint32_t new_pos = 0;
        if (static_cast<std::uint32_t>(want - done) + pos <= node_size) {
            got = stream_->Read(dst + done, want - done);
            new_pos = node_pos_ + static_cast<std::uint32_t>(got);
        } else {
            got = stream_->Read(dst + done, static_cast<int>(node_size - pos));
            new_pos = chunk_->current_data_size;
        }
        node_pos_ = new_pos;
        done += got;
        frame_pos_ += static_cast<std::uint32_t>(DivOrZero(got, frame_bytes));

        if (new_pos < node_size) {
            // The read stopped inside the chunk. More frames are needed only if some were
            // read and the total has not been reached.
            if (frame_pos_ < total_frames_) {
                if (got == 0) {
                    return done;
                }
            } else {
                // The data is used up: rewind when looping, else stop.
                if (!loop_ || Seek(0) != 0) {
                    return done;
                }
            }
        } else if (frame_pos_ >= total_frames_) {
            if (!loop_ || Seek(0) != 0) {
                return done;
            }
        } else {
            GoToNextDataChunk();
            if (chunk_->current_data_size == 0) {
                if (!loop_) {
                    frame_pos_ = total_frames_;
                    return done;
                }
                if (Seek(0) != 0) {
                    return done;
                }
            }
        }
        if (want <= done) {
            return done;
        }
    }
}

}  // namespace vox
