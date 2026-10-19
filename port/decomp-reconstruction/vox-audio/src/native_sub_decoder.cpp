// VoxNativeSubDecoder base and the PCM variant. Most PCM methods are stubs in the
// original: they return a fixed value or do nothing, and are reproduced as such.
#include "vox-audio/vox/native_sub_decoder.hpp"

#include <cstring>

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x8841f8 _ZN3vox19VoxNativeSubDecoderD1Ev
VoxNativeSubDecoder::~VoxNativeSubDecoder() {}

// 0x8847d4 _ZN3vox19VoxNativeSubDecoderD0Ev
// Deleting destructor variant; the compiler emits it for the class above.

// 0x884468 _ZN3vox19VoxNativeSubDecoder7HasDataEv
bool VoxNativeSubDecoder::HasData() {
    return has_data_;
}

// 0x887b24 _ZN3vox22VoxNativeSubDecoderPCMD2Ev and 0x887b28 _ZN3vox22VoxNativeSubDecoderPCMD1Ev
// Both bodies are empty.
VoxNativeSubDecoderPCM::~VoxNativeSubDecoderPCM() {}

// 0x8884f8 _ZN3vox22VoxNativeSubDecoderPCMD0Ev: deleting variant. The compiler emits it for
// the class above; a `delete` through the base pointer runs it.

// 0x887b0c _ZN3vox22VoxNativeSubDecoderPCM4SeekEj
int VoxNativeSubDecoderPCM::Seek(unsigned int sample_offset) {
    (void)sample_offset;
    return 0;
}

// 0x887b14 _ZN3vox22VoxNativeSubDecoderPCM17GetDecodingBufferEv
int VoxNativeSubDecoderPCM::GetDecodingBuffer() {
    return -1;
}

// 0x887b1c _ZN3vox22VoxNativeSubDecoderPCM21ReleaseDecodingBufferEi
void VoxNativeSubDecoderPCM::ReleaseDecodingBuffer(int buffer) {
    (void)buffer;
}

// 0x887b20 _ZN3vox22VoxNativeSubDecoderPCM34SetDecodingBufferToSegmentPositionEPNS_12SegmentStateE
void VoxNativeSubDecoderPCM::SetDecodingBufferToSegmentPosition(SegmentState* segment) {
    (void)segment;
}

// 0x887b2c _ZN3vox22VoxNativeSubDecoderPCM31GetBytePositionFromSampleOffsetEj
unsigned int VoxNativeSubDecoderPCM::GetBytePositionFromSampleOffset(unsigned int sample_offset) {
    return static_cast<unsigned int>(bytes_per_sample_) * sample_offset;
}

// 0x887bb8 _ZN3vox22VoxNativeSubDecoderPCM5ResetEv (empty)
void VoxNativeSubDecoderPCM::Reset() {}

// 0x887bbc _ZN3vox22VoxNativeSubDecoderPCM8SetStateEPNS_24NativeSubDecoderPCMStateE (empty)
void VoxNativeSubDecoderPCM::SetState(NativeSubDecoderPCMState*) {}

// 0x887bc0 _ZN3vox22VoxNativeSubDecoderPCM8GetStateEPNS_24NativeSubDecoderPCMStateE (empty)
void VoxNativeSubDecoderPCM::GetState(NativeSubDecoderPCMState*) {}

}  // namespace vox

namespace vox {

void* VoxNativeSubDecoder::s_pMixingBuffer = nullptr;
int VoxNativeSubDecoder::s_nbSamplesMixingBuffer = 0;

// 0x884438 _ZN3vox19VoxNativeSubDecoder14GetTrackParamsEv
TrackParams VoxNativeSubDecoder::GetTrackParams() {
    TrackParams params;
    params.channels = channels_;
    params.sample_rate = field_0c_;
    params.bits_per_sample = bits_;
    params.length_frames = 0;
    return params;
}

// 0x884f04 _ZN3vox19VoxNativeSubDecoder5CleanEv
void VoxNativeSubDecoder::Clean() {
    if (s_pMixingBuffer != nullptr) {
        VoxFree(s_pMixingBuffer);
    }
}

namespace {
// ARM sdiv returns 0 for a zero divisor; the reconstruction keeps that result.
int DivArm(int numerator, int denominator) {
    return denominator == 0 ? 0 : numerator / denominator;
}

// The loop list of a chunk. An index outside the table gives an empty list, where the
// original reads whatever the word holds.
const vox::VoxVector<std::int32_t>& ChunkLoopList(const vox::VoxVector<vox::VoxVector<std::int32_t>>* lists,
                                               int chunk) {
    static const vox::VoxVector<std::int32_t> kEmpty;
    if (lists == nullptr || chunk < 0 || static_cast<std::size_t>(chunk) >= lists->size()) {
        return kEmpty;
    }
    return (*lists)[static_cast<std::size_t>(chunk)];
}

std::int32_t ListAt(const vox::VoxVector<std::int32_t>& list, int index) {
    if (index < 0 || static_cast<std::size_t>(index) >= list.size()) {
        return 0;
    }
    return list[static_cast<std::size_t>(index)];
}
}  // namespace

// 0x885258 _ZN3vox19VoxNativeSubDecoder19MixMultipleSegmentsEPsi
// Decodes the three segments into dst and mixes them in the 32-bit buffer, then clips the
// buffer back to 16-bit samples. Returns the largest frame count of the decodes.
int VoxNativeSubDecoder::MixMultipleSegments(std::int16_t* dst, int bytes) {
    const int frames = DivArm(bytes, static_cast<int>(channels_) * (static_cast<int>(bits_) >> 3));
    if (frames > s_nbSamplesMixingBuffer) {
        if (s_pMixingBuffer != nullptr) {
            VoxFree(s_pMixingBuffer);
        }
        s_pMixingBuffer = VoxAlloc(2 * static_cast<std::size_t>(bytes));
        if (s_pMixingBuffer == nullptr) {
            s_nbSamplesMixingBuffer = 0;
            segments_[2].state = 1;
            segments_[0].state = 1;
            segments_[1].state = 1;
            return 0;
        }
        s_nbSamplesMixingBuffer = frames;
        std::memset(s_pMixingBuffer, 0, 2 * static_cast<std::size_t>(bytes));
    } else {
        std::memset(s_pMixingBuffer, 0, 2 * static_cast<std::size_t>(bytes));
    }

    int decoded_a = 0;
    if (segments_[0].state > 2) {
        decoded_a = DecodeSegment(dst, bytes, &segments_[0]);
        MixSegmentInBuffer(dst, decoded_a, &segments_[0]);
    }
    if (segments_[1].state > 2) {
        const int decoded_b = DecodeSegment(dst, bytes, &segments_[1]);
        if (decoded_a < decoded_b) {
            decoded_a = decoded_b;
        }
        MixSegmentInBuffer(dst, decoded_b, &segments_[1]);
    }
    int decoded_c = DecodeCurrentSegmentWithOffset(dst, bytes);
    MixSegmentInBuffer(dst, decoded_c, &segments_[2]);
    if (decoded_c < decoded_a) {
        decoded_c = decoded_a;
    }

    const int samples = static_cast<int>(channels_) * frames;
    const auto* mix = static_cast<const std::int32_t*>(s_pMixingBuffer);
    for (int k = 0; k < samples; ++k) {
        const std::int32_t value = mix[k];
        if (static_cast<std::uint32_t>(value + 0x8000) > 0xFFFFu) {
            dst[k] = value < 0 ? static_cast<std::int16_t>(-32768) : static_cast<std::int16_t>(0x7FFF);
        } else {
            dst[k] = static_cast<std::int16_t>(value);
        }
    }
    return decoded_c;
}

// 0x8841fc _ZN3vox19VoxNativeSubDecoder25EmulateMixSegmentInBufferEiPNS_12SegmentStateE
// Advances the segment's remaining frames and its gain ramp over one block without
// decoding. Returns the ramp step (the original's result register).
int VoxNativeSubDecoder::EmulateMixSegmentInBuffer(int bytes, SegmentState* segment) {
    const int frames = DivArm(bytes, static_cast<int>(channels_) * (static_cast<int>(bits_) >> 3));
    const int gain = segment->gain;
    int ramp_step = segment->ramp_step;
    int ramp_frames = segment->ramp_frames;
    int left = frames;

    const int remaining_before = segment->remaining_frames;
    const int after = remaining_before - frames;
    segment->remaining_frames = after < 0 ? 0 : after;
    if (remaining_before > 0) {
        left -= remaining_before < frames ? remaining_before : frames;
    }

    int mode = segment->play_mode;
    if (ramp_frames > 0) {
        if (left < ramp_frames) {
            if (mode == 3) {
                ramp_step = DivArm(-gain, left);
            }
        } else {
            left = segment->ramp_frames;
        }
        ramp_frames -= left;
        const int new_gain = gain + left * ramp_step;
        segment->ramp_frames = ramp_frames < 0 ? 0 : ramp_frames;
        segment->gain = new_gain;
        ramp_frames = segment->ramp_frames;
    }

    if (ramp_frames == 0) {
        segment->remaining_frames = 0;
        segment->field_2c = 0;
        segment->ramp_frames = 0;
        segment->ramp_step = 0;
        segment->gain = 0;
        if (ramp_step < 0) {
            segment->state = 1;
        }
    }
    if (mode == 3) {
        segment->state = 1;
    }
    return ramp_step;
}

namespace {
// The first loop-list element past the position for the rule types 4 and 5 (v14 of the
// original). Type 4 looks at every element from the first; type 5 starts at the fourth
// (index 3) and needs more than three. Zero when no element is past the position.
std::int32_t LoopElementAfter(int type, const vox::VoxVector<std::int32_t>& list, std::int32_t position) {
    const int count = static_cast<int>(list.size());
    if (type == 5) {
        if (count > 3) {
            std::int32_t value = list[3];
            if (value > position) {
                return value;
            }
            for (int i = 4; i != count; ++i) {
                value = list[static_cast<std::size_t>(i)];
                if (value > position) {
                    return value;
                }
            }
        }
        return 0;
    }
    if (count > 0) {
        if (list[0] > position) {
            return list[0];
        }
        for (int i = 1; i != count; ++i) {
            if (list[static_cast<std::size_t>(i)] > position) {
                return list[static_cast<std::size_t>(i)];
            }
        }
    }
    return 0;
}
}  // namespace

// 0x8847e8 _ZN3vox19VoxNativeSubDecoder21UpdateOldSegmentStateEPNS_14TransitionRuleE
// The old segment (segments_[1]) becomes a copy of the current one (segments_[2], the
// 0x41-byte record copy), in play mode 2. A null rule, or a rule whose frame count is not
// positive, takes the zero branch (state 4, one entry). With frames, the remaining frames
// are the rule's second float scaled by the base field, plus the distance from the position
// to the loop-list element (rule type 4 or 5, or word 2 for type 6). A negative total is
// pulled to zero. When the reset flag is set, the frame count becomes 1 - element + the
// list's end value if that is smaller. The gain ramp runs from the current record's gain,
// or from 0x40000000 when the current record had no frames left.
void VoxNativeSubDecoder::UpdateOldSegmentState(TransitionRule* rule) {
    segments_[1] = segments_[2];
    segments_[1].play_mode = 2;

    const auto zero_branch = [this]() {
        SegmentState& old = segments_[1];
        old.gain = 0;
        old.remaining_frames = 0;
        old.field_2c = 0;
        old.ramp_frames = 0;
        old.ramp_step = 0;
        old.entries_left = 1;
        old.state = 4;
        old.entry_count = 1;
    };

    if (rule == nullptr) {
        zero_branch();
        return;
    }

    // v5 of the original: the current frame count, read before the rule overwrites it.
    const std::int32_t old_field_2c = segments_[1].field_2c;
    segments_[1].restart_at_end = rule->flag_0c_;
    const std::int32_t frames = static_cast<std::int32_t>(static_cast<float>(field_0c_) * rule->length_);
    segments_[1].field_2c = frames;
    if (frames <= 0) {
        zero_branch();
        return;
    }

    // v8: the frame count from the rule's second float (+0x1c).
    std::int32_t remaining = static_cast<std::int32_t>(static_cast<float>(field_0c_) * rule->field_1c_);

    // The loop list of the old segment's chunk (the copy the original makes is only read here).
    const vox::VoxVector<std::int32_t>& list = ChunkLoopList(loop_lists_, segments_[1].chunk_index);
    const std::int32_t count = static_cast<std::int32_t>(list.size());
    const std::int32_t sample_position = segments_[1].sample_position;  // v18, +0xe8

    const std::int32_t type = rule->type_;  // +0x04 of the rule
    std::int32_t element = 0;               // v14: the loop-list element, or the position for type 0
    std::int32_t reset_flag = 0;            // v13
    if (type != 0) {
        if (type == 6) {
            element = ListAt(list, 2);
        } else if (type == 4 || type == 5) {
            element = LoopElementAfter(type, list, sample_position);
        } else {
            element = 0;
        }
        // LABEL_36: the difference from the position is added to the frame count.
        remaining += element - sample_position;
        segments_[1].remaining_frames = remaining;
        reset_flag = 1;
    } else {
        reset_flag = segments_[1].entries_left;  // word 7 (+0x1c of the record)
        segments_[1].remaining_frames = remaining;
        element = sample_position;
        if (reset_flag != 1) {
            reset_flag = 0;
        }
    }

    // v15: the frame count of the old segment, pulled to zero when the remaining frames are
    // negative (LABEL_38 in the original).
    std::int32_t v15;
    if (remaining >= 0) {
        v15 = segments_[1].field_2c;
    } else {
        const std::int32_t previous = segments_[1].field_2c;
        segments_[1].remaining_frames = 0;
        v15 = remaining + previous;
        segments_[1].field_2c = v15;
        if (v15 < 0) {
            segments_[1].field_2c = 0;
            v15 = 0;
        }
    }

    // LABEL_9: with the reset flag, the frame count is pulled back to the reversed end of the
    // list (the last element for a rule flag of 1, else word 2) when that is smaller.
    std::int32_t v17 = v15;
    if (reset_flag != 0) {
        const std::int32_t end_value = rule->flag_0c_ == 1 ? ListAt(list, count - 1) : ListAt(list, 2);
        const std::int32_t candidate = 1 - element + end_value;
        if (candidate < v15) {
            segments_[1].field_2c = candidate;
            v17 = candidate;
        }
    }

    segments_[1].ramp_frames = v17;
    if (old_field_2c > 0) {
        // The gain of the current record, and its negation as the ramp step.
        const std::int32_t current_gain = segments_[2].gain;
        segments_[1].gain = current_gain;
        const std::int32_t negated = static_cast<std::int32_t>(0u - static_cast<std::uint32_t>(current_gain));
        segments_[1].ramp_step = DivArm(negated, segments_[1].field_2c);
    } else {
        segments_[1].gain = 0x40000000;
        segments_[1].ramp_step = DivArm(-1073741824, segments_[1].field_2c);
    }

    if (reset_flag != 0) {
        // LABEL_30: the state-4 tail of the zero branch, without the ramp reset.
        segments_[1].entries_left = 1;
        segments_[1].state = 4;
        segments_[1].entry_count = 1;
    }
}

// 0x884ab4 _ZN3vox19VoxNativeSubDecoder23UpdateDyingSegmentStateEPNS_14TransitionRuleE
// The first record becomes the second one (kind 3, state 4), and its gain ramp is set over
// the frames left in the loop list of its chunk.
void VoxNativeSubDecoder::UpdateDyingSegmentState(TransitionRule* rule) {
    segments_[0] = segments_[1];
    segments_[0].play_mode = 3;
    segments_[0].state = 4;

    const vox::VoxVector<std::int32_t>& own_list = ChunkLoopList(loop_lists_, segments_[0].chunk_index);
    const int count = static_cast<int>(own_list.size());

    int ramp = 0;
    if (segments_[1].field_2c != 0) {
        ramp = segments_[0].ramp_frames;
    } else {
        segments_[0].gain = 0x40000000;
        ramp = 256;
    }
    if (rule != nullptr) {
        ramp = static_cast<int>(static_cast<float>(field_0c_) * rule->length_);
    }

    const vox::VoxVector<std::int32_t>& chunk_list = ChunkLoopList(loop_lists_, segments_[1].chunk_index);
    const int list_value = segments_[0].restart_at_end == 1 ? ListAt(chunk_list, count - 1)
                                                            : ListAt(chunk_list, 2);
    const int headroom = 1 - segments_[0].sample_position + list_value;
    const int limit = ramp <= headroom ? ramp : headroom;
    segments_[0].field_2c = limit;
    segments_[0].ramp_frames = limit;
    if (limit > 0) {
        segments_[0].ramp_step = DivArm(-segments_[0].gain, limit);
    }
}

}  // namespace vox
