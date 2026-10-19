// VoxNativeSubDecoder segment bookkeeping (base class), wave 9. The control flow follows
// the Hex-Rays bodies; the word offsets in each comment are the ARM offsets from the
// pseudocode (`this[n]` is +4n). The functions that need a playlist element lookup, the
// rule table or a container that is not ported are partial, and each comment says what is
// missing. Nothing in this file calls the playlist lookups that return an element pointer.
#include <cstring>

#include "vox-audio/vox/native_sub_decoder.hpp"

#include "vox-audio/vox/native_sub_decoder_state.hpp"

namespace vox {

namespace {
// ARM sdiv returns 0 for a zero divisor; the reconstruction keeps that result.
int DivArm(int numerator, int denominator) {
    return denominator == 0 ? 0 : numerator / denominator;
}
}  // namespace

// The record that StopSegment leaves and the state constructor starts from. The loop-list
// words entry_count and entries_left start at 1, as in the original defaults.
void SegmentState::SetStopped() {
    chunk_index = -1;
    play_mode = 0;
    byte_offset = 0;
    sample_position = 0;
    loop_start = 0;
    end_frame = 0;
    entry_count = 1;
    entries_left = 1;
    restart_at_end = 0;
    state = 2;
    remaining_frames = 0;
    field_2c = 0;
    ramp_frames = 0;
    ramp_step = 0;
    gain = 0;
    decoding_slot = -1;
    reset_pending = false;
}

// 0x8842e8 _ZN3vox19VoxNativeSubDecoder26EmulateMixMultipleSegmentsEi
// Slot 0x34 is EmulateDecodeSegment, slot 0x30 is EmulateDecodeCurrentSegmentWithOffset.
int VoxNativeSubDecoder::EmulateMixMultipleSegments(int bytes) {
    int frames_a = 0;
    if (segments_[0].state > 2) {
        frames_a = EmulateDecodeSegment(bytes, &segments_[0]);
        EmulateMixSegmentInBuffer(frames_a, &segments_[0]);
    }
    if (segments_[1].state > 2) {
        const int frames_b = EmulateDecodeSegment(bytes, &segments_[1]);
        if (frames_a < frames_b) {
            frames_a = frames_b;
        }
        EmulateMixSegmentInBuffer(frames_b, &segments_[1]);
    }
    const int frames_c = EmulateDecodeCurrentSegmentWithOffset(bytes);
    EmulateMixSegmentInBuffer(frames_c, &segments_[2]);
    return frames_c < frames_a ? frames_a : frames_c;
}

// 0x8843b8 _ZN3vox19VoxNativeSubDecoder28GetNextDyingSegmentLifeStateEv
int VoxNativeSubDecoder::GetNextDyingSegmentLifeState() {
    if (active_segments_ <= 1) {
        return 2;
    }
    if (prev_element_.field_04_ == 1) {
        if (field_3c_ != field_38_ && segments_[2].gain < segments_[1].gain) {
            return 1;
        }
        return 2;
    }
    // Element list of the dying segment: entry [1] of its vector<int> (the original reads
    // the second word of the list at segment C's index).
    if (prev_element_.field_08_ != 1 ||
        segments_[2].sample_position >= (*loop_lists_)[segments_[2].chunk_index][1]) {
        return 2;
    }
    return 1;
}

// 0x884470 _ZN3vox19VoxNativeSubDecoder20IsExtraSegmentNeededEPNS_14TransitionRuleE
bool VoxNativeSubDecoder::IsExtraSegmentNeeded(TransitionRule* rule) {
    if (active_segments_ <= 0) {
        return active_segments_ == 0;
    }
    if (rule != nullptr) {
        if (rule->type_ == 0) {
            return rule->length_ > 0.0f;
        }
        return true;
    }
    if (prev_element_.field_0c_ == 1) {
        return true;
    }
    return current_element_.field_08_ == 1;
}

// 0x8844e8 _ZN3vox19VoxNativeSubDecoder18MixSegmentInBufferEPsiPNS_12SegmentStateE
// Adds the decoded frames of one segment into the 32-bit mixing buffer, with the gain ramp.
// The return value is the last value the original leaves in its result register (the ramp
// step, a quotient, or a mixed sample, depending on the path taken); callers ignore it.
int VoxNativeSubDecoder::MixSegmentInBuffer(std::int16_t* src, int bytes, SegmentState* segment) {
    auto* mix = static_cast<std::int32_t*>(s_pMixingBuffer);
    const int channels = channels_;
    int frames = DivArm(bytes, channels * (static_cast<int>(bits_) >> 3));  // v10
    int remaining = segment->remaining_frames;                             // v9
    const int gain_in = segment->gain;                                     // v11
    int ramp_step = segment->ramp_step;                                    // v28 (v12)
    int ramp_frames = segment->ramp_frames;                                // v13
    int gain = gain_in;
    int result = 0;

    const int after = remaining - frames;
    segment->remaining_frames = after < 0 ? 0 : after;

    if (remaining > 0) {
        if (remaining >= frames) {
            remaining = frames;
        }
        const int samples = channels * remaining;  // v14
        if (ramp_step < 0) {
            // A falling ramp mixes the decoded samples straight in.
            for (int k = 0; k < samples; ++k) {
                mix[k] += src[k];
            }
            src += samples;
            mix += samples;
        } else {
            // Otherwise the first samples are skipped and the mix pointer restarts at the base.
            src += samples;
            mix = static_cast<std::int32_t*>(s_pMixingBuffer) + samples;
        }
        frames -= remaining;
    }

    result = channels * frames;  // v30
    const int total_samples = result;
    int ramp_samples = ramp_frames * channels;  // v16
    if (ramp_frames > 0) {
        int ramp_used;  // v32
        if (frames < ramp_frames) {
            ramp_used = frames;
            if (segment->play_mode == 3) {
                result = DivArm(-gain_in, frames);
                ramp_samples = channels * frames;
                ramp_step = result;
            } else {
                ramp_samples = channels * frames;
            }
        } else {
            ramp_used = ramp_frames;
        }
        if (ramp_samples > 0) {
            // Each sample is scaled by the gain; the gain steps once per completed frame.
            for (int i = 0; i < ramp_samples;) {
                const std::int32_t scaled = static_cast<std::int32_t>(src[i]) * (gain >> 15);
                mix[i] += scaled >> 15;
                ++i;
                result = DivArm(i, channels);
                if (i % channels == 0) {
                    gain += ramp_step;
                }
            }
            mix += ramp_samples;
            src += ramp_samples;
        }
        frames = ramp_used;
        const int left = segment->ramp_frames;
        segment->gain = gain;
        const int next_ramp = left - ramp_used;
        segment->ramp_frames = next_ramp < 0 ? 0 : next_ramp;
        ramp_frames = segment->ramp_frames;
    } else {
        ramp_frames = segment->ramp_frames;
    }

    if (ramp_frames == 0) {
        result = ramp_step;
        segment->remaining_frames = 0;
        segment->field_2c = 0;
        if (ramp_step < 0) {
            frames = 1;
        }
        segment->ramp_frames = 0;
        segment->ramp_step = 0;
        segment->gain = 0;
        if (ramp_step >= 0) {
            // The rest of the block is mixed at unity gain.
            int sample = ramp_samples;
            for (int j = 0; sample < total_samples; ++sample, ++j) {
                result = mix[j];
                mix[j] = result + src[j];
            }
        } else {
            segment->state = frames;
        }
    }
    if (segment->play_mode == 3) {
        segment->state = 1;
    }
    return result;
}

// 0x884734 _ZN3vox19VoxNativeSubDecoder11StopSegmentEPNS_12SegmentStateE
// Mode 17 first releases the segment's decoding buffer through slot 0x24.
void VoxNativeSubDecoder::StopSegment(SegmentState* segment) {
    if (mode_ == 17) {
        ReleaseDecodingBuffer(segment->decoding_slot);
    }
    if (segment->state == 1) {
        --active_segments_;
    }
    if (segment->play_mode == 1) {
        has_data_ = false;
    }
    segment->chunk_index = -1;
    segment->gain = 0;
    segment->entries_left = 1;
    segment->state = 2;
    segment->play_mode = 0;
    segment->byte_offset = 0;
    segment->sample_position = 0;
    segment->loop_start = 0;
    segment->end_frame = 0;
    segment->entry_count = 1;
    segment->restart_at_end = 0;
    segment->remaining_frames = 0;
    segment->field_2c = 0;
    segment->ramp_frames = 0;
    segment->ramp_step = 0;
}

// 0x884bc4 _ZN3vox19VoxNativeSubDecoder25UpdateCurrentSegmentStateEPNS_14TransitionRuleEb
// Verified against the ARM listing (0x884BC4..0x884EE4) and the Hex-Rays body: the element branch
// (current_element_.field_00_ != -1) stores chunk_index = field_00_, and either takes
// byte_offset from virtual slot +0x1C GetBytePositionFromSampleOffset(sample_position) when
// field_04_ == 1, or takes loop_start = loop_lists_[field_00_][field_08_ != 1],
// entry_count = entries_left = field_10_, restart_at_end = field_0c_,
// end_frame = loop_lists_[field_00_][2], sample_position = |pending_seek_| when pending_seek_ < 0
// (else the loop_start value it just loaded), byte_offset from slot +0x1C again and state = 3.
// Then, with mode_ == 17 and extra set, decoding_slot = slot +0x20 GetDecodingBuffer() and the
// reset byte at +0x160 is cleared. The element == -1 entry stores entries_left = 1, state = 4,
// entry_count = 1 and next_event_ = -1. Without a rule the five words gain, remaining_frames,
// field_2c, ramp_frames and ramp_step are zeroed.
// The rule branch: field_2c = (int)((float)field_0c_ * rule->start_) (zeroing the same five words
// when it is not positive); type 0 sets remaining_frames = (int)((float)field_0c_ *
// (rule->end_ - rule->start_)) and carries sample_position (field_04_ != 0), loop_lists_[chunk][1]
// (field_04_ == 0 and field_08_ == 0) or 0 into the tail; type 6 with field_04_ == 0 carries
// loop_lists_[chunk][1] and sets remaining_frames = field_2c - (int)((float)field_0c_ *
// rule->end_) - (field_08_ == 1 ? loop_lists_[chunk][1] : 0) + pending_seek_ (carrying 0 when
// field_08_ == 1); any other type keeps remaining_frames and carries 0. A negative
// remaining_frames moves into field_2c (clamped at 0) and clears remaining_frames. The tail with
// entries_left == 1 makes the listing's stack copy of the chunk's loop list and reads its last
// word when rule->flag_0c_ == 1 or loop_lists_[chunk][2] otherwise, storing `1 - carried + word`
// into field_2c when that is smaller. It ends with ramp_frames = field_2c, gain = 0 and
// ramp_step = 0x40000000 / field_2c.
// Deviation: the return value is unobserved (UpdateSegmentsStates discards it and its own caller
// reads the element record instead), so every path returns 0.
int VoxNativeSubDecoder::UpdateCurrentSegmentState(TransitionRule* rule, bool extra) {
    const std::int32_t element = current_element_.field_00_;
    std::int32_t carried = element;  // v19

    if (element != -1) {
        if (current_element_.field_04_ == 1) {
            segments_[2].chunk_index = element;
            segments_[2].byte_offset = static_cast<std::int32_t>(
                GetBytePositionFromSampleOffset(
                    static_cast<unsigned int>(segments_[2].sample_position)));
        } else {
            const auto& loops = *loop_lists_;
            const std::size_t chunk = static_cast<std::size_t>(element);
            segments_[2].chunk_index = element;
            const std::int32_t loop_start = loops[chunk][(current_element_.field_08_ - 1) != 0 ? 1 : 0];
            segments_[2].loop_start = loop_start;
            segments_[2].entry_count = current_element_.field_10_;
            segments_[2].entries_left = current_element_.field_10_;
            segments_[2].restart_at_end = current_element_.field_0c_;
            segments_[2].end_frame = loops[chunk][2];
            segments_[2].sample_position = pending_seek_ < 0 ? -pending_seek_ : loop_start;
            segments_[2].byte_offset = static_cast<std::int32_t>(
                GetBytePositionFromSampleOffset(
                    static_cast<unsigned int>(segments_[2].sample_position)));
            segments_[2].state = 3;
        }
        if (mode_ == 17 && extra) {
            segments_[2].decoding_slot = GetDecodingBuffer();
            segments_[2].reset_pending = false;
        }
    } else {
        segments_[2].entries_left = 1;
        segments_[2].state = 4;
        segments_[2].entry_count = 1;
        next_event_ = -1;
    }

    if (rule == nullptr) {
        segments_[2].gain = 0;
        segments_[2].remaining_frames = 0;
        segments_[2].field_2c = 0;
        segments_[2].ramp_frames = 0;
        segments_[2].ramp_step = 0;
        return 0;
    }

    const float scale = static_cast<float>(field_0c_);  // v15
    const std::int32_t base = static_cast<std::int32_t>(scale * rule->start_);  // v16
    segments_[2].field_2c = base;
    if (base <= 0) {
        segments_[2].gain = 0;
        segments_[2].remaining_frames = 0;
        segments_[2].field_2c = 0;
        segments_[2].ramp_frames = 0;
        segments_[2].ramp_step = 0;
        return 0;
    }

    const auto& loops = *loop_lists_;
    const std::size_t chunk = static_cast<std::size_t>(element);
    std::int32_t remaining;  // v18
    if (rule->type_ == 0) {
        remaining = static_cast<std::int32_t>(scale * (rule->end_ - rule->start_));
        segments_[2].remaining_frames = remaining;
        if (current_element_.field_04_ != 0) {
            carried = segments_[2].sample_position;
        } else if (current_element_.field_08_ == 0) {
            carried = loops[chunk][1];
        } else {
            carried = 0;
        }
    } else if (rule->type_ == 6 && current_element_.field_04_ == 0) {
        carried = loops[chunk][1];
        const std::int32_t scaled_end = static_cast<std::int32_t>(scale * rule->end_);  // v28
        if (current_element_.field_08_ == 1) {
            remaining = scaled_end + carried - base;
        } else {
            remaining = scaled_end - base;
        }
        remaining += pending_seek_;
        if (current_element_.field_08_ == 1) {
            carried = current_element_.field_04_;
        }
        segments_[2].remaining_frames = remaining;
    } else {
        remaining = segments_[2].remaining_frames;
        carried = 0;
    }

    if (remaining < 0) {
        // LABEL_23: the shortfall moves into field_2c, never below zero.
        const std::int32_t previous = segments_[2].field_2c;
        segments_[2].remaining_frames = 0;
        const std::int32_t sum = remaining + previous;
        segments_[2].field_2c = sum < 0 ? 0 : sum;
    }
    if (segments_[2].entries_left == 1) {
        // LABEL_26: the listing copies the chunk's loop list on the stack and reads its last
        // word (rule->flag_0c_ == 1) or word 2 (otherwise); the copy's buffer is VoxFreed.
        const vox::VoxVector<std::int32_t> copy = loops[chunk];
        const std::int32_t word =
            rule->flag_0c_ == 1 ? copy[copy.size() - 1] : loops[chunk][2];
        const std::int32_t candidate = 1 - carried + word;
        if (candidate < segments_[2].field_2c) {
            segments_[2].field_2c = candidate;
        }
    }
    // LABEL_14
    const std::int32_t period = segments_[2].field_2c;
    segments_[2].ramp_frames = period;
    segments_[2].gain = 0;
    segments_[2].ramp_step = DivArm(0x40000000, period);
    return 0;
}

// 0x884f3c _ZN3vox19VoxNativeSubDecoder8SetStateEPNS_21NativeSubDecoderStateE
// Copies the playlist manager and every saved word, record and element.
void VoxNativeSubDecoder::SetState(NativeSubDecoderState* state) {
    if (playlists_ != nullptr && state->playlists_ != nullptr) {
        playlists_->SetState(*state->playlists_);
    }
    field_34_ = state->field_08_;
    field_38_ = state->field_0c_;
    field_3c_ = state->field_10_;
    field_40_ = state->field_14_;
    field_44_ = state->field_18_;
    field_48_ = state->field_1c_;
    reset_pending_ = state->field_20_;
    prev_prev_element_ = state->element_a_;
    prev_element_ = state->element_b_;
    current_element_ = state->element_c_;
    field_8c_ = state->field_60_;
    field_90_ = state->field_64_;
    active_segments_ = state->field_68_;
    segments_[0] = state->segments_[0];
    segments_[1] = state->segments_[1];
    segments_[2] = state->segments_[2];
    next_event_ = state->field_138_;
    pending_seek_ = state->field_13c_;
    has_data_ = state->has_data_;
}

// 0x88506c _ZN3vox19VoxNativeSubDecoder8GetStateEPNS_21NativeSubDecoderStateE
// The reverse of SetState.
void VoxNativeSubDecoder::GetState(NativeSubDecoderState* state) {
    if (state->playlists_ != nullptr && playlists_ != nullptr) {
        state->playlists_->SetState(*playlists_);
    }
    state->field_08_ = field_34_;
    state->field_0c_ = field_38_;
    state->field_10_ = field_3c_;
    state->field_14_ = field_40_;
    state->field_18_ = field_44_;
    state->field_1c_ = field_48_;
    state->field_20_ = reset_pending_;
    state->element_a_ = prev_prev_element_;
    state->element_b_ = prev_element_;
    state->element_c_ = current_element_;
    state->field_60_ = field_8c_;
    state->field_64_ = field_90_;
    state->field_68_ = active_segments_;
    state->segments_[0] = segments_[0];
    state->segments_[1] = segments_[1];
    state->segments_[2] = segments_[2];
    state->field_138_ = next_event_;
    state->field_13c_ = pending_seek_;
    state->has_data_ = has_data_;
}

// 0x885538 _ZN3vox19VoxNativeSubDecoder25SwapOldAndCurrentSegmentsEv
// The second and third records swap. The third becomes kind 1 and the second kind 2.
void VoxNativeSubDecoder::SwapOldAndCurrentSegments() {
    const SegmentState old_third = segments_[2];
    segments_[2] = segments_[1];
    segments_[1] = old_third;
    segments_[2].play_mode = 1;
    segments_[1].play_mode = 2;
}

// 0x8855e8 _ZN3vox19VoxNativeSubDecoder19ApplyTransitionRuleEPNS_14TransitionRuleE
// The playlist lookups are the manager calls of the listing: field_44_ and field_40_ pick the
// playlist to move (field_40_ is first reset to its previous state when they are equal), and
// field_48_ is the playlist the element comes from. The element copy takes the five words of
// the found element and then the rule's kind (+0x04) and field_08 (+0x08). Without an element
// the current element index is -1. The listing returns an int that its only caller does not
// read (UpdateSegmentsStates ignores it), so this returns void.
void VoxNativeSubDecoder::ApplyTransitionRule(TransitionRule* rule) {
    PlaylistElement* element = nullptr;
    if (rule->kind_ == 1) {
        if (GetNextDyingSegmentLifeState() == 2) {
            playlists_->TransposePlaylistParameters(field_44_, field_48_);
        } else {
            if (field_44_ == field_40_) {
                playlists_->SetPlaylistToPreviousState(field_40_);
            }
            playlists_->TransposePlaylistParameters(field_40_, field_48_);
            SwapOldAndCurrentSegments();
        }
        element = playlists_->GetPlaylistElement(field_48_, 1, -1);
        const int frames = static_cast<int>(static_cast<float>(field_0c_) * rule->length_);
        if (frames <= 0) {
            if (segments_[1].state > 2) {
                segments_[1].state = 0;
                --active_segments_;
            }
            if (segments_[0].state > 2) {
                segments_[0].state = 0;
                --active_segments_;
            }
        }
    } else {
        if (reset_pending_ != 0) {
            playlists_->ResetPlaylist(field_48_);
            reset_pending_ = 0;
        }
        element = playlists_->GetPlaylistElement(field_48_, 0, -1);
    }

    if (element != nullptr) {
        current_element_ = *element;
        current_element_.field_04_ = rule->kind_;
        current_element_.field_08_ = rule->field_08_;
    } else {
        current_element_.field_00_ = -1;
    }
}

// 0x885740 _ZN3vox19VoxNativeSubDecoder20UpdateSegmentsStatesEv
// Verified line by line against the ARM listing (0x885740..0x885978): the playlist index is
// states_[field_3c_]; the branch is taken when field_3c_ == field_38_ or field_38_ < 0, and it
// calls GetPlaylistElement(index, 0, -1) and copies the five words of the found element (or
// writes -1 to current_element_.field_00_); otherwise it calls ApplyTransitionRule on
// &transition_rules_[field_90_]. The element >= 0 path then calls IsExtraSegmentNeeded, and on
// 0 extra takes active_segments_ (on 1 extra it raises active_segments_ by one unless it is
// already above 2, which goes straight to UpdateDyingSegmentState + UpdateOldSegmentState), runs
// UpdateOldSegmentState when the count is 2, calls UpdateCurrentSegmentState(rule, extra), sets
// segments_[2].reset_pending when sample_position is not 0, and computes next_event_ from the
// peeked element (-1 when there is no peek). The element < 0 path calls
// UpdateCurrentSegmentState(rule, false) only when the element is exactly -1. The tail shifts
// field_34_/field_38_/field_40_/field_44_ from their successors, copies the +0x64 element record
// over the +0x50 one and the +0x78 one over the +0x64 one, stores field_8c_ = field_90_ and
// returns the first word of the current element record. Deviation (reproduced, not dropped): the
// loop-list reads (loops[chunk][2] - loops[peek->field_00_][1] and loops[chunk][2]) have no length
// test in the listing either, so the port's unchecked vector indexing reproduces the original's
// unchecked read; the values read past a short list are heap-dependent in both.
int VoxNativeSubDecoder::UpdateSegmentsStates() {
    const std::size_t playlist = static_cast<std::size_t>(field_3c_);
    const int playlist_index = (*states_)[playlist];                       // v4
    TransitionRule* rule = nullptr;                                        // v6
    if (field_3c_ == field_38_ || field_38_ < 0) {
        PlaylistElement* found = playlists_->GetPlaylistElement(playlist_index, 0, -1);
        if (found == nullptr) {
            current_element_.field_00_ = -1;
        } else {
            current_element_ = *found;
        }
    } else {
        rule = &(*transition_rules_)[static_cast<std::size_t>(field_90_)];
        ApplyTransitionRule(rule);
    }

    const std::int32_t element = current_element_.field_00_;
    if (element < 0) {
        if (element == -1) {
            UpdateCurrentSegmentState(rule, false);
        }
    } else {
        const bool extra = IsExtraSegmentNeeded(rule);
        std::int32_t count = active_segments_;  // v13
        bool over_limit = false;                // v14 > 2 on the extra path
        if (extra) {
            if (active_segments_ > 2) {
                over_limit = true;
            } else {
                ++active_segments_;
                count = active_segments_;
            }
        }
        if (over_limit || count > 2) {
            UpdateDyingSegmentState(rule);
            UpdateOldSegmentState(rule);
        } else if (count == 2) {
            UpdateOldSegmentState(rule);
        }
        UpdateCurrentSegmentState(rule, extra);
        if (segments_[2].sample_position != 0) {
            segments_[2].reset_pending = true;
        }
        PlaylistElement* peek = nullptr;
        if (segments_[2].entries_left == 1) {
            peek = playlists_->PeekAtNextPlaylistElement(playlist_index);
        }
        if (peek != nullptr) {
            const auto& loops = *loop_lists_;
            const std::size_t chunk = static_cast<std::size_t>(segments_[2].chunk_index);
            if (peek->field_08_ == 1) {
                next_event_ = loops[chunk][2] - loops[static_cast<std::size_t>(peek->field_00_)][1];
            } else if (current_element_.field_0c_ == 1) {
                next_event_ = loops[chunk][2];
            }
        } else {
            next_event_ = -1;
        }
    }

    // LABEL_19: the history shift of the element words and the records.
    const std::int32_t old_3c = field_3c_;
    const std::int32_t old_44 = field_44_;
    const std::int32_t old_48 = field_48_;
    field_34_ = field_38_;
    field_38_ = old_3c;
    field_40_ = old_44;
    field_44_ = old_48;
    prev_prev_element_ = prev_element_;
    prev_element_ = current_element_;
    field_8c_ = field_90_;
    return current_element_.field_00_;
}

// 0x885984 _ZN3vox19VoxNativeSubDecoder23InterpretTransitionRuleEi
// Verified against the ARM listing (0x885984..0x885A38): rules[index].type_ (the word at +0x04 of
// the 36-byte rule, index * 0x24 from the rules data pointer) selects the tail call to
// UpdateSegmentsStates; otherwise PeekAtNextPlaylistElement(states_[field_3c_]) is called, a null
// peek tail-calls UpdateSegmentsStates, and a non-null peek sets next_event_ (+0x164) either to
// loop_lists_[chunk][2] - loop_lists_[peek->field_00_][1] when peek->field_08_ is 1 or to
// loop_lists_[chunk][2] otherwise, with chunk = segments_[2].chunk_index.
// Deviation (host): the listing's return value is UpdateSegmentsStates' int on the two tail-call
// paths, segments_[2].chunk_index on the field_08_ == 1 path and the PlaylistElement pointer on the
// last path, so it has no single int form on a 64-bit host. Nothing observes it: its only caller
// SetState(int) is tail-called by DecoderNativeCursor::Decode (0x872218), which reloads R0 at both
// call sites, so the port keeps the void return.
void VoxNativeSubDecoder::InterpretTransitionRule(int index) {
    if ((*transition_rules_)[static_cast<std::size_t>(index)].type_ == 0) {
        UpdateSegmentsStates();
        return;
    }
    PlaylistElement* peek =
        playlists_->PeekAtNextPlaylistElement((*states_)[static_cast<std::size_t>(field_3c_)]);
    if (peek == nullptr) {
        UpdateSegmentsStates();
        return;
    }
    const auto& loops = *loop_lists_;
    const std::size_t chunk = static_cast<std::size_t>(segments_[2].chunk_index);
    if (peek->field_08_ == 1) {
        next_event_ = loops[chunk][2] - loops[static_cast<std::size_t>(peek->field_00_)][1];
    } else {
        next_event_ = loops[chunk][2];
    }
}

// 0x885a3c _ZN3vox19VoxNativeSubDecoder8SetStateEi
// Verified against the ARM listing (0x885A3C..0x885AC0): field_3c_ = index is stored first and
// unconditionally; when the previous field_38_ is 0 or more, transitions_[field_38_] (the 12-byte
// outer record) is indexed at the 8-byte entry `index`, and entry word 0 goes to field_90_ while
// entry byte 4 goes to the byte at +0x4c; states_[index] is stored into field_48_ (the playlist
// the rule code takes the element from); then field_90_ 0 or more tail-calls
// InterpretTransitionRule(field_90_) and a previous field_38_ of exactly -1 tail-calls
// UpdateSegmentsStates. The dispatch tests the ORIGINAL field_38_, as the listing's R3 does.
// Deviation: the original's byte store at +0x4c leaves the three upper bytes of the word
// untouched; the port stores the byte into the whole 32-bit reset_pending_, whose upper bytes are
// zero anyway (the constructor and Reset set it to 0 or 1).
void VoxNativeSubDecoder::SetState(int index) {
    const std::int32_t previous = field_38_;
    field_3c_ = index;
    if (previous >= 0) {
        const vox::VoxVector<TransitionParams>& record =
            (*transitions_)[static_cast<std::size_t>(previous)];
        const TransitionParams& entry = record[static_cast<std::size_t>(index)];
        field_90_ = entry.value_;
        reset_pending_ = entry.flag_;
    }
    field_48_ = (*states_)[static_cast<std::size_t>(index)];
    if (field_90_ >= 0) {
        InterpretTransitionRule(field_90_);
    } else if (previous == -1) {
        UpdateSegmentsStates();
    }
}

// The stop block shared by EmulateDecode and Decode: a segment whose state is 0 or 1 is
// stopped, in A, B, C order (the original tests each state in that order).
namespace {
void StopIdleSegments(VoxNativeSubDecoder* sub, SegmentState* segments) {
    for (int i = 0; i < 3; ++i) {
        if (segments[i].state <= 1) {
            sub->StopSegment(&segments[i]);
        }
    }
}
}  // namespace

// 0x885ac0 _ZN3vox19VoxNativeSubDecoder13EmulateDecodeEi
int VoxNativeSubDecoder::EmulateDecode(int bytes) {
    const int frame_bytes = static_cast<int>(channels_) * (static_cast<int>(bits_) >> 3);
    const int aligned = bytes - bytes % frame_bytes;
    const int next = next_event_;
    if (next >= 0) {
        const int offset = segments_[2].sample_position;
        if (next <= aligned / frame_bytes + offset) {
            pending_seek_ = next - offset;
            UpdateSegmentsStates();
        }
    }
    int result = 0;
    if (active_segments_ > 1) {
        result = EmulateMixMultipleSegments(aligned);
    } else if (active_segments_ == 1) {
        if (segments_[2].ramp_frames > 0) {
            result = EmulateMixMultipleSegments(aligned);
        } else {
            result = EmulateDecodeSegment(aligned, &segments_[2]);
        }
    }
    StopIdleSegments(this, segments_);
    if (mode_ == 17) {
        if (segments_[0].state == 3) {
            segments_[0].reset_pending = true;
        }
        if (segments_[1].state == 3) {
            segments_[1].reset_pending = true;
        }
        if (segments_[2].state == 3) {
            segments_[2].reset_pending = true;
        }
    }
    return result;
}

// 0x885c1c _ZN3vox19VoxNativeSubDecoder6DecodeEPvi
int VoxNativeSubDecoder::Decode(void* dst, int bytes) {
    const int frame_bytes = static_cast<int>(channels_) * (static_cast<int>(bits_) >> 3);
    const int aligned = bytes - bytes % frame_bytes;
    const int next = next_event_;
    if (next >= 0) {
        const int offset = segments_[2].sample_position;
        if (next <= aligned / frame_bytes + offset) {
            pending_seek_ = next - offset;
            UpdateSegmentsStates();
        }
    }
    int result = 0;
    if (active_segments_ > 1) {
        result = MixMultipleSegments(static_cast<std::int16_t*>(dst), aligned);
    } else if (active_segments_ == 1) {
        if (segments_[2].ramp_frames > 0) {
            result = MixMultipleSegments(static_cast<std::int16_t*>(dst), aligned);
        } else {
            result = DecodeSegment(dst, aligned, &segments_[2]);
        }
    }
    StopIdleSegments(this, segments_);
    return result;
}

}  // namespace vox
