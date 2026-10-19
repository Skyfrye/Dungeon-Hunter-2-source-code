// PCM sub-decoder emulation of decoding: moves the stream and the segment position
// without producing samples.
#include <cstddef>

#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

namespace {

// __aeabi_uidiv returns 0 for a zero divisor on the target, as the original does.
std::uint32_t UDivOrZero(std::uint32_t a, std::uint32_t b) { return b == 0 ? 0 : a / b; }

}  // namespace

// 0x887bc4 _ZN3vox22VoxNativeSubDecoderPCM20EmulateDecodeSegmentEiPNS_12SegmentStateE
// Returns the number of bytes emulated. The stream calls are Seek(offset, whence) with
// whence 0 to the segment start and 1 for relative moves. UpdateSegmentsStates is the base
// class method (ledgered by the base worker).
int VoxNativeSubDecoderPCM::EmulateDecodeSegment(int sample_bytes, SegmentState* segment) {
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(segment->chunk_index)];
    const int frame_bytes = bytes_per_sample_;
    const int stream_pos = segment->byte_offset + chunk.byte_offset + base_offset_;
    if (stream_pos != stream_->Tell()) {
        stream_->Seek(stream_pos, 0);
    }

    int emulated = 0;
    bool ended = false;  // the original's `break` (sets the state to 1)
    if (sample_bytes > 0) {
        for (;;) {
            // The end of the current loop entry, in bytes (recomputed when the entry changes).
            const int end_bytes = frame_bytes + segment->end_frame * frame_bytes;
            const int remaining = sample_bytes - emulated;
            int step = 0;
            if (remaining + segment->byte_offset <= end_bytes) {
                stream_->Seek(remaining, 1);
                segment->byte_offset += remaining;
                step = remaining;
            } else {
                step = end_bytes - segment->byte_offset;
                stream_->Seek(step, 1);
                segment->byte_offset = end_bytes;
            }
            if (step == 0) {
                ended = true;
                break;
            }

            const int frame = static_cast<int>(
                UDivOrZero(static_cast<std::uint32_t>(segment->byte_offset),
                           static_cast<std::uint32_t>(frame_bytes)));
            emulated += step;
            segment->sample_position = frame;

            if (frame > segment->end_frame) {
                const vox::VoxVector<std::int32_t>& entries =
                    (*loop_lists_)[static_cast<std::size_t>(segment->chunk_index)];
                if ((segment->entry_count >> 1) != 0 && segment->entry_count == segment->entries_left) {
                    segment->loop_start = entries[1];
                }
                segment->entries_left -= 1;
                if (segment->entries_left == 0) {
                    if (segment->restart_at_end == 1) {
                        segment->end_frame = entries.back();
                    }
                    if (segment->play_mode == 1) {
                        UpdateSegmentsStates();
                    }
                }
                if (segment->state == 3) {
                    if (segment->entries_left != 0) {
                        Seek(-1, segment);
                    }
                } else if (segment->state == 4 && segment->sample_position > segment->end_frame) {
                    ended = true;
                    break;
                }
            }
            if (sample_bytes <= emulated) {
                break;
            }
        }
    }

    if (ended) {
        segment->state = 1;
    }
    if (segment->play_mode == 3) {
        segment->state = 1;
    }
    return emulated;
}

// 0x887e1c _ZN3vox22VoxNativeSubDecoderPCM37EmulateDecodeCurrentSegmentWithOffsetEi
// The same walk as EmulateDecodeSegment, on the current segment (segments_[2], +0x120). A
// pending seek (+0x168) is consumed first and counts as already emulated bytes.
int VoxNativeSubDecoderPCM::EmulateDecodeCurrentSegmentWithOffset(int sample_bytes) {
    SegmentState& cur = segments_[2];
    const NativeChunk& chunk = (*chunks_)[static_cast<std::size_t>(cur.chunk_index)];
    const int frame_bytes = bytes_per_sample_;
    const int pending = pending_seek_;
    if (pending > 0) {
        pending_seek_ = 0;
    }
    int emulated = pending > 0 ? pending * frame_bytes : 0;
    const int stream_pos = chunk.byte_offset + cur.byte_offset + base_offset_;
    if (stream_pos != stream_->Tell()) {
        stream_->Seek(stream_pos, 0);
    }

    if (emulated < sample_bytes) {
        do {
            const int end_bytes = frame_bytes + cur.end_frame * frame_bytes;
            const int remaining = sample_bytes - emulated;
            int step = 0;
            if (remaining + cur.byte_offset <= end_bytes) {
                stream_->Seek(remaining, 1);
                cur.byte_offset += remaining;
                step = remaining;
            } else {
                step = end_bytes - cur.byte_offset;
                stream_->Seek(step, 1);
                cur.byte_offset = end_bytes;
            }
            if (step == 0) {
                cur.state = 1;
                return emulated;
            }

            emulated += step;
            cur.sample_position = static_cast<int>(
                UDivOrZero(static_cast<std::uint32_t>(cur.byte_offset),
                           static_cast<std::uint32_t>(frame_bytes)));

            if (cur.sample_position > cur.end_frame) {
                const vox::VoxVector<std::int32_t>& entries =
                    (*loop_lists_)[static_cast<std::size_t>(cur.chunk_index)];
                if ((cur.entry_count >> 1) != 0 && cur.entry_count == cur.entries_left) {
                    cur.loop_start = entries[1];
                }
                cur.entries_left -= 1;
                if (cur.entries_left == 0) {
                    if (cur.restart_at_end == 1) {
                        cur.end_frame = entries.back();
                    }
                    UpdateSegmentsStates();
                }
                if (cur.state == 3) {
                    if (cur.entries_left != 0) {
                        Seek(-1, &cur);
                    }
                } else if (cur.state == 4 && cur.sample_position > cur.end_frame) {
                    cur.state = 1;
                    return emulated;
                }
            }
        } while (sample_bytes > emulated);
    }
    return emulated;
}

}  // namespace vox
