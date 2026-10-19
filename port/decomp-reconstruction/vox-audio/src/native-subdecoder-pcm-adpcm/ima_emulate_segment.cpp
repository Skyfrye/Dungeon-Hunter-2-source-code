// IMA ADPCM sub-decoder emulation of decoding: walks the blocks of a segment, counting frames
// and advancing the segment position, without writing samples. UpdateSegmentsStates is the
// base class method (ledgered by the base worker).
#include <cstddef>
#include <cstdint>
#include <vector>

#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

namespace vox {

namespace {

// __aeabi_idiv returns 0 for a zero divisor on the target, as the original does.
int DivOrZero(int a, int b) { return b == 0 ? 0 : a / b; }

}  // namespace

// 0x886580 _ZN3vox27VoxNativeSubDecoderIMAADPCM20EmulateDecodeSegmentEiPNS_12SegmentStateE
// Returns the number of bytes emulated (frames times channels times bytes per sample).
int VoxNativeSubDecoderIMAADPCM::EmulateDecodeSegment(int sample_bytes, SegmentState* segment) {
    const int channels = channels_;
    const int bytes_per_sample = bits_ >> 3;
    const int total_frames = DivOrZero(sample_bytes, channels * bytes_per_sample);
    const int slot = segment->decoding_slot;
    int remaining = total_frames;
    bool stopped = false;  // the original's LABEL_24 (sets the state to 1)

    while (remaining > 0) {
        if (segment->reset_pending) {
            EmulateSetDecodingBufferToSegmentPosition(segment);
            segment->reset_pending = false;
        }
        int block = block_result_[slot];
        if (frames_into_block_[slot] == block) {
            block = EmulateDecodeBlock(segment);
            block_result_[slot] = block;
            frames_into_block_[slot] = 0;
        }
        if (block == 0) {
            stopped = true;
            break;
        }

        // Frames taken from this block: limited by the segment end, the request and the block.
        int take = segment->end_frame + 1 - segment->sample_position;
        if (remaining < take) {
            take = remaining;
        }
        const int in_block = block - frames_into_block_[slot];
        if (take >= in_block) {
            take = in_block;
        }
        frames_into_block_[slot] += take;
        remaining -= take;
        segment->sample_position += take;

        if (segment->sample_position > segment->end_frame) {
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
                stopped = true;
                break;
            }
        }
    }

    if (stopped) {
        segment->state = 1;
    }
    if (segment->play_mode == 3) {
        segment->state = 1;
    }
    return (total_frames - remaining) * channels * bytes_per_sample;
}

// 0x8867dc _ZN3vox27VoxNativeSubDecoderIMAADPCM37EmulateDecodeCurrentSegmentWithOffsetEi
// The current segment (segments_[2]). A pending seek (+0x168) is consumed first and counts
// as already emulated frames. The decompiled signature shows two extra arguments; they are
// temporaries of the original and are not part of the interface.
int VoxNativeSubDecoderIMAADPCM::EmulateDecodeCurrentSegmentWithOffset(int sample_bytes) {
    SegmentState& cur = segments_[2];
    const int channels = channels_;
    const int bytes_per_sample = bits_ >> 3;
    const int total_frames = DivOrZero(sample_bytes, channels * bytes_per_sample);
    const int pending = pending_seek_;
    int remaining = total_frames;
    if (pending > 0) {
        pending_seek_ = 0;
        remaining = total_frames - pending;
    }
    const int slot = cur.decoding_slot;
    bool stopped = false;  // the original's LABEL_29 (sets the state to 1)

    while (remaining > 0) {
        if (cur.reset_pending) {
            EmulateSetDecodingBufferToSegmentPosition(&cur);
            cur.reset_pending = false;
        }
        int block = block_result_[slot];
        if (frames_into_block_[slot] == block) {
            block = EmulateDecodeBlock(&cur);
            block_result_[slot] = block;
            frames_into_block_[slot] = 0;
        }
        if (block == 0) {
            stopped = true;
            break;
        }

        int take = cur.end_frame + 1 - cur.sample_position;
        if (remaining < take) {
            take = remaining;
        }
        const int in_block = block - frames_into_block_[slot];
        if (take >= in_block) {
            take = in_block;
        }
        frames_into_block_[slot] += take;
        remaining -= take;
        cur.sample_position += take;

        if (cur.sample_position > cur.end_frame) {
            const vox::VoxVector<std::int32_t>& entries =
                (*loop_lists_)[static_cast<std::size_t>(cur.chunk_index)];
            if ((cur.entry_count >> 1) != 0 && cur.entry_count == cur.entries_left) {
                cur.loop_start = entries[1];
            }
            cur.entries_left -= 1;
            if (cur.entries_left == 0 && cur.restart_at_end == 1) {
                cur.end_frame = entries.back();
            }
            if (cur.entries_left == 0) {
                UpdateSegmentsStates();
            }
            if (cur.state == 3) {
                if (cur.entries_left != 0) {
                    Seek(-1, &cur);
                }
            } else if (cur.state == 4 && cur.sample_position > cur.end_frame) {
                stopped = true;
                break;
            }
        }
    }

    if (stopped) {
        cur.state = 1;
    }
    return (total_frames - remaining) * channels * bytes_per_sample;
}

}  // namespace vox
