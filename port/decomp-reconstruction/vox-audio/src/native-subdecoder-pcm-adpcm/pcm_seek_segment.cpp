// PCM sub-decoder seek on a segment.
#include <cstddef>

#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

// 0x887b38 _ZN3vox22VoxNativeSubDecoderPCM4SeekEiPNS_12SegmentStateE
// A negative offset seeks to the loop start of the segment. Returns -1 when the frame is
// past the end of the chunk, otherwise the result of the stream seek.
int VoxNativeSubDecoderPCM::Seek(int sample_offset, SegmentState* segment) {
    const int frame = sample_offset < 0 ? segment->loop_start : sample_offset;
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment->chunk_index)];
    if (frame > chunk.frame_count) {
        return -1;
    }
    const int byte_in_chunk = static_cast<int>(bytes_per_sample_) * frame;
    const int result = stream_->Seek(base_offset_ + chunk.byte_offset + byte_in_chunk, 0);
    if (result == 0) {
        segment->sample_position = frame;
        segment->byte_offset = byte_in_chunk;
    }
    return result;
}

}  // namespace vox
