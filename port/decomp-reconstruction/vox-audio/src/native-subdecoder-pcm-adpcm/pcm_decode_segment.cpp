// PCM sub-decoder decode of a segment into a caller buffer (wave 9). Both functions follow the
// Hex-Rays bodies: the stream is positioned at the segment, reads are clipped at the end of the
// loop region, and a region that ends advances through the loop-list entries. The stream Read
// in each function takes the remaining byte count (the pseudocode's call passes it in a
// register the listing does not show; the clipped branch passes the count to the region end).
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <vector>

#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

namespace {

// __aeabi_idiv returns 0 for a zero divisor on the target, as the original does.
int DivArm(int numerator, int denominator) { return denominator == 0 ? 0 : numerator / denominator; }

// The loop list of a chunk; an out-of-range index gives an empty list.
const vox::VoxVector<std::int32_t>& ChunkLoopList(const vox::VoxVector<vox::VoxVector<std::int32_t>>* lists,
                                               int chunk) {
    static const vox::VoxVector<std::int32_t> kEmpty;
    if (lists == nullptr || chunk < 0 || static_cast<std::size_t>(chunk) >= lists->size()) {
        return kEmpty;
    }
    return (*lists)[static_cast<std::size_t>(chunk)];
}

std::int32_t SecondOf(const vox::VoxVector<std::int32_t>& list) {
    return list.size() > 1 ? list[1] : 0;
}

std::int32_t LastOf(const vox::VoxVector<std::int32_t>& list) {
    return list.empty() ? 0 : list.back();
}

}  // namespace

// 0x888050 _ZN3vox22VoxNativeSubDecoderPCM13DecodeSegmentEPviPNS_12SegmentStateE
int VoxNativeSubDecoderPCM::DecodeSegment(void* dst, int bytes, SegmentState* segment) {
    auto* out = static_cast<std::uint8_t*>(dst);
    const int bps = static_cast<int>(bytes_per_sample_);
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment->chunk_index)];
    const int position = segment->byte_offset + chunk.byte_offset + base_offset_;
    if (position != stream_->Tell()) {
        stream_->Seek(position, 0);
    }

    int done = 0;
    if (bytes > 0) {
        int limit = bps + segment->end_frame * bps;  // v12: the byte position of the region end
        while (true) {
            const int offset = segment->byte_offset;
            int got = 0;
            if (bytes - done + offset <= limit) {
                got = stream_->Read(out + done, bytes - done);
                segment->byte_offset += got;
            } else {
                got = stream_->Read(out + done, limit - offset);
                segment->byte_offset = limit;
            }
            if (got == 0) {
                segment->state = 1;
                break;
            }
            done += got;

            const int frame = DivArm(segment->byte_offset, bps);
            segment->sample_position = frame;
            if (frame > segment->end_frame) {
                const vox::VoxVector<std::int32_t>& list = ChunkLoopList(loop_lists_, segment->chunk_index);
                if (static_cast<std::uint32_t>(segment->entry_count) >> 1 != 0 &&
                    segment->entry_count == segment->entries_left) {
                    segment->loop_start = SecondOf(list);
                }
                const int entries_left = segment->entries_left - 1;
                segment->entries_left = entries_left;
                if (entries_left == 0) {
                    bool update = true;
                    if (segment->restart_at_end == 1) {
                        const std::int32_t last = LastOf(list);
                        limit = bps + last * bps;
                        segment->end_frame = last;
                        update = segment->play_mode == 1;
                    } else {
                        update = segment->play_mode == 1;
                    }
                    if (update) {
                        UpdateSegmentsStates();
                        limit = bps + segment->end_frame * bps;
                    }
                }

                // LABEL_15: the state checks run only when the region ended.
                const int state = segment->state;
                if (state == 3) {
                    if (segment->entries_left != 0) {
                        Seek(-1, segment);
                    }
                } else if (state == 4 && segment->sample_position > segment->end_frame) {
                    segment->state = 1;
                    break;
                }
            }
            // LABEL_17
            if (bytes <= done) {
                break;
            }
        }
    }
    // LABEL_21
    if (segment->play_mode == 3) {
        segment->state = 1;
    }
    return done;
}

// 0x8882ac _ZN3vox22VoxNativeSubDecoderPCM30DecodeCurrentSegmentWithOffsetEPvi
// The same loop for the current segment (segments_[2]), after a pending seek has zero-filled
// the start of the buffer. Differences from DecodeSegment, as in the listing: the restart
// keeps the state checks in the same order, the update of the segments runs without the
// play-mode test, and the end does not apply the play-mode-3 state.
int VoxNativeSubDecoderPCM::DecodeCurrentSegmentWithOffset(void* dst, int bytes) {
    auto* out = static_cast<std::uint8_t*>(dst);
    SegmentState& segment = segments_[2];
    const int bps = static_cast<int>(bytes_per_sample_);

    int done = 0;
    if (pending_seek_ > 0) {
        done = pending_seek_ * bps;
        std::memset(out, 0, static_cast<std::size_t>(done));
        pending_seek_ = 0;
    }

    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment.chunk_index)];
    const int position = chunk.byte_offset + segment.byte_offset + base_offset_;
    if (position != stream_->Tell()) {
        stream_->Seek(position, 0);
    }

    if (done < bytes) {
        int limit = bps + bps * segment.end_frame;  // v13
        do {
            const int offset = segment.byte_offset;
            int got = 0;
            if (bytes - done + offset <= limit) {
                got = stream_->Read(out + done, bytes - done);
                segment.byte_offset += got;
            } else {
                got = stream_->Read(out + done, limit - offset);
                segment.byte_offset = limit;
            }
            if (got == 0) {
                segment.state = 1;
                return done;
            }
            done += got;

            const int frame = DivArm(segment.byte_offset, bps);
            segment.sample_position = frame;
            if (frame > segment.end_frame) {
                const vox::VoxVector<std::int32_t>& list = ChunkLoopList(loop_lists_, segment.chunk_index);
                if (static_cast<std::uint32_t>(segment.entry_count) >> 1 != 0 &&
                    segment.entry_count == segment.entries_left) {
                    segment.loop_start = SecondOf(list);
                }
                const int entries_left = segment.entries_left - 1;
                segment.entries_left = entries_left;
                if (entries_left == 0) {
                    if (segment.restart_at_end == 1) {
                        segment.end_frame = LastOf(list);
                    }
                    UpdateSegmentsStates();
                    limit = bps + segment.end_frame * bps;
                }

                const int state = segment.state;
                if (state == 3) {
                    if (segment.entries_left != 0) {
                        Seek(-1, &segment);
                    }
                } else if (state == 4 && segment.sample_position > segment.end_frame) {
                    segment.state = 1;
                    return done;
                }
            }
        } while (bytes > done);
    }
    return done;
}

}  // namespace vox
