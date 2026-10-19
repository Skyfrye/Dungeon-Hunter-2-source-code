// vox::DriverCallbackSourceInterface: the mixing path. GetWorkData copies the source data
// through the ring, FreeDisposableData releases the played blocks, and FillBuffer picks
// one of four mixers (stereo or mono, with or without interpolation) for the current
// pitch.
#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
namespace {

// Gain of one 16-bit sample at a Q14 level.
inline std::int32_t Scale14(std::int32_t sample, std::int32_t level) {
    return static_cast<std::int32_t>((static_cast<std::int64_t>(sample) * level) >> 14);
}

// Integer division with the original's zero result for a zero divisor.
inline std::int32_t DivOrZero(std::int32_t numerator, std::int32_t denominator) {
    return denominator != 0 ? numerator / denominator : 0;
}

}  // namespace

// 0x8915c0 _ZN3vox29DriverCallbackSourceInterface11GetWorkDataEPhii
// Copies bytes of the source into out, walking the ring from the mixer cursor. The read
// position of each buffer is kept as whole blocks (+0x10) and a Q14 fraction (+0x0c), and
// is advanced by step. A buffer that runs out is released and the walk moves on. Returns
// the number of bytes copied; the byte offset (+0x58) grows by that amount.
std::size_t DriverCallbackSourceInterface::GetWorkData(std::uint8_t* out, int bytes, int step) {
    if (buffers_begin_ == nullptr || buffer_count_ <= 0) {
        return 0;
    }
    if (buffers_begin_[write_index_].ready_ != 0) {
        return 0;
    }
    int total = 0;
    if (bytes > 0) {
        total = bytes;
        int want = bytes;
        int idx = write_index_;
        int advance = step;
        while (true) {
            DriverBuffer* buffer = &buffers_begin_[idx];
            const int offset = total - want;
            const int consumed = buffer->field_10_ * buffer_bytes_;
            const int avail = buffer->size_ - consumed;
            const std::uint8_t* source = static_cast<const std::uint8_t*>(buffer->data_) + consumed;
            if (avail > want) {
                std::memcpy(out + offset, source, static_cast<std::size_t>(want));
                buffer->fraction_ += advance;
                buffer->field_10_ += buffer->fraction_ >> 14;
                buffer->fraction_ &= 0x3fff;
                break;
            }
            want -= avail;
            std::memcpy(out + offset, source, static_cast<std::size_t>(avail));
            buffer->fraction_ += advance;
            buffer->field_10_ += buffer->fraction_ >> 14;
            buffer->fraction_ &= 0x3fff;

            const int block = buffer_bytes_;
            const int consumed_blocks = buffer->field_10_;
            const int total_blocks = DivOrZero(buffer->size_, block);
            const int fraction = buffer->fraction_;
            if (consumed_blocks < total_blocks) {
                // The buffer is not used up: the next buffer, if it is free, gives one block.
                const int next = (write_index_ + 1) % buffer_count_;
                if (buffers_begin_[next].ready_ == 0) {
                    if (want > 0) {
                        std::memcpy(out + offset + avail, buffers_begin_[next].data_,
                                    static_cast<std::size_t>(block));
                        want -= block;
                    }
                    total -= want;
                } else {
                    buffer->ready_ = 1;
                    write_index_ = next;
                    total -= want;
                }
                break;
            }
            buffer->ready_ = 1;
            write_index_ = (write_index_ + 1) % buffer_count_;
            idx = write_index_;
            advance = fraction + ((consumed_blocks - total_blocks) << 14);
            if (buffers_begin_[idx].ready_ != 0 || want <= 0) {
                total -= want;
                break;
            }
        }
    }
    byte_offset_ += total;
    return static_cast<std::size_t>(total);
}

// 0x89071c _ZN3vox29DriverCallbackSourceInterface18FreeDisposableDataEiRiS1_
// Releases played blocks so that about requested bytes are freed, counting the buffers
// released (first) and the bytes released (second). The walk starts one buffer behind the
// write position, and stops at the buffer where the free space exceeds the buffer span
// (3 blocks and the Doppler and period scaling).
int DriverCallbackSourceInterface::FreeDisposableData(int requested, int& first, int& second) {
    mutex_.Lock();
    first = 0;
    second = 0;
    if (requested <= 0) {
        return mutex_.Unlock();
    }
    const std::int32_t block = buffer_bytes_;
    std::int32_t count = buffer_count_;
    const std::int32_t start_write = write_index_;
    // 32-bit words that wrap, as the ARM computes them (0x890764..0x89079c, two MLA and two ASR #14):
    // nothing ever calls SetDriverCallbackPeriod, so s_driverCallbackPeriod_ keeps its 0x7fffffff and
    // rate + 0x7fffffff * rate wraps to 0 (the rate is even), which leaves a look-ahead of 3 blocks
    // (plus 3 per unit of the pitch scale). A wider product made the span garbage (534540 bytes for
    // a 32 kHz stream): a music-state switch then freed the playing buffer as well, the upload cursor
    // fell one slot behind the play cursor, and the stream limped ever after (one refill burst per
    // ring cycle with empty gaps: the combat-music stutter).
    const std::int32_t period_scaled = static_cast<std::int32_t>(
        static_cast<std::uint32_t>(s_driverSampleRate_) +
        static_cast<std::uint32_t>(s_driverCallbackPeriod_) * static_cast<std::uint32_t>(s_driverSampleRate_));
    const std::int32_t span_scale = static_cast<std::int32_t>(
        static_cast<std::uint32_t>(scale_) +
        static_cast<std::uint32_t>(period_scaled >> 14) * static_cast<std::uint32_t>(scale_));
    const std::int32_t span = 3 * block + (span_scale >> 14) * 3 * block;

    std::int32_t stop_index = -1;
    std::int32_t stop_bytes = 0;
    if (count > 0) {
        std::int32_t accumulated = 0;
        std::int32_t previous = 0;
        std::int32_t visited = 0;
        std::int32_t idx = start_write;
        while (true) {
            DriverBuffer& buffer = buffers_begin_[idx];
            ++visited;
            if (buffer.ready_ == 0) {
                const std::int32_t consumed = buffer.field_10_ * block;
                accumulated += buffer.size_ - consumed;
                if (span < accumulated) {
                    stop_bytes = consumed + span - previous;
                    stop_index = idx;
                    break;
                }
            }
            if (visited == count) {
                stop_bytes = 0;
                stop_index = -1;
                break;
            }
            previous = accumulated;
            idx = (idx + 1) % count;
        }
    }

    int idx = start_write != 0 ? start_write - 1 : count - 1;
    if (count <= 0) {
        return mutex_.Unlock();
    }
    std::int32_t visited = 0;
    std::int32_t accumulated = 0;
    while (true) {
        DriverBuffer& buffer = buffers_begin_[idx];
        if (buffer.ready_ == 0) {
            const std::int32_t size = buffer.size_;
            const std::int32_t consumed = buffer.field_10_ * block;
            accumulated += size - consumed;
            if (idx == stop_index) {
                // The stop buffer: keep the part that is still needed.
                const std::int32_t remain = consumed + accumulated - requested;
                if (stop_bytes <= remain) {
                    buffer.size_ = remain;
                    read_index_ = (idx + 1) % buffer_count_;
                } else {
                    buffer.size_ = stop_bytes;
                    if (stop_bytes != 0) {
                        read_index_ = (idx + 1) % buffer_count_;
                    } else {
                        buffer.ready_ = 1;
                        ++first;
                        read_index_ = idx;
                    }
                }
                second = second - buffers_begin_[idx].size_ + size;
                return mutex_.Unlock();
            }
            if (requested <= accumulated) {
                buffer.size_ = consumed + accumulated - requested;
                read_index_ = (idx + 1) % buffer_count_;
                second = second - buffer.size_ + size;
                return mutex_.Unlock();
            }
            buffer.ready_ = 1;
            ++first;
            second += size;
            count = buffer_count_;
        }
        ++visited;
        if (idx != 0) {
            --idx;
        } else {
            idx = count - 1;
        }
        if (count <= visited) {
            return mutex_.Unlock();
        }
    }
}

// 0x892f68 _ZN3vox29DriverCallbackSourceInterface10FillBufferEPii
// Moves the pitch toward its target by the step, recomputes the playback scale (Doppler
// pitch times the target pitch times the rate ratio) and mixes with the mixer for that
// scale: the unity-scale mixers when it is exactly 1.0, the interpolating ones otherwise.
void DriverCallbackSourceInterface::FillBuffer(int* out, int count) {
    mutex_.Lock();
    if (state_ != 1 || buffers_begin_ == nullptr || buffer_count_ <= 0 ||
        buffers_begin_[write_index_].ready_ != 0) {
        mutex_.Unlock();
        return;
    }
    if (target_pitch_ != field_34_) {
        const std::int64_t difference =
            std::llabs(static_cast<std::int64_t>(field_34_) - target_pitch_);
        const std::int64_t step = std::llabs(static_cast<std::int64_t>(pitch_step_));
        if (difference < step) {
            target_pitch_ = field_34_;
        } else {
            target_pitch_ = target_pitch_ + pitch_step_;
        }
    }
    if (channels_ == 1) {
        doppler_pitch_ = GetDopplerPitch();
    }
    const std::int64_t scaled =
        (static_cast<std::int64_t>(doppler_pitch_) *
         ((static_cast<std::int64_t>(target_pitch_) * rate_ratio_) >> 14)) >>
        14;
    const std::int32_t scale = static_cast<std::int32_t>(scaled);
    scale_ = scale;
    bool unity = false;
    if (scale == 0) {
        scale_ = 1;
    } else if (scale == 0x4000) {
        unity = true;
    }
    if (channels_ == 1 && bits_per_sample_ == 16) {
        if (unity) {
            FillBufferMono16NoInter(out, count);
        } else {
            FillBufferMono16(out, count);
        }
    } else if (channels_ == 2 && bits_per_sample_ == 16) {
        if (unity) {
            FillBufferStereo16NoInter(out, count);
        } else {
            FillBufferStereo16(out, count);
        }
    }
    mutex_.Unlock();
}

// 0x88fdd4 _ZN3vox29DriverCallbackSourceInterface25FillBufferStereo16NoInterEPii
// Verified against the ARM listing (0x88FDD4..0x890154): the state/ring guards, the fraction
// carry (a nonzero buffer fraction bumps field_10_ and clears it), GetNbAvailableSamples, the
// ramp_len rules (count <= available: ramp_down_at = count + 1, down_len = 0, ramp_len =
// min(ramp_samples_, count + 1) capped at count; count > available: ramp_down_at =
// available - ramp_samples_ with down_len = ramp_samples_, or ramp_down_at = 0 with
// down_len = available when that is negative), the level start (field_28_ and ramp_started_ = 1
// on the first pass, else field_2c_ with step = DivOrZero(field_28_ - field_2c_, ramp_len)), the
// ramping test (down_len > 0 || step != 0), the per-frame level update (k < ramp_len ||
// k >= ramp_down_at) with the step recomputed at k == ramp_down_at as -|level / down_len|, the
// unity (frames = (size_ >> 2) - field_10_) and clip (n = min(count, frames)) rules, the
// byte_offset_ advance of 4n, the buffer release with the modulo write_index_ and the
// field_2c_ = level store on every exit. The ramp hand-off after a buffer ends mid-block is the
// listing's own path: the frame counter continues at the accumulated done count through
// var_14 and the level is reset to field_28_ at the end of each ramped pass (loc_8900AC), which
// the port's `level = field_28_` and `done += n` reproduce.
// Deviation: the host guard `buffers_begin_ == nullptr || buffer_count_ <= 0` is not in the
// listing (the original dereferences); it only fires on a ring Init never built. No other
// deviation; rechecked instruction by instruction in this batch.
void DriverCallbackSourceInterface::FillBufferStereo16NoInter(int* out, int count) {
    if (state_ != 1 || buffers_begin_ == nullptr || buffer_count_ <= 0) {
        return;
    }
    DriverBuffer* cur = &buffers_begin_[write_index_];
    if (cur->ready_ != 0) {
        return;
    }
    if (cur->fraction_ != 0) {
        ++cur->field_10_;
        cur->fraction_ = 0;
    }

    const std::int32_t available = GetNbAvailableSamples(count);
    const std::int32_t ramp = ramp_samples_;
    std::int32_t ramp_len = ramp;
    std::int32_t ramp_down_at = count + 1;
    std::int32_t down_len = 0;
    if (count > available) {
        ramp_down_at = available - ramp;
        down_len = ramp;
        if (ramp_down_at < 0) {
            down_len = available;
            ramp_down_at = 0;
        }
    }
    if (ramp_down_at >= ramp_len) {
        if (ramp_len >= count) {
            ramp_len = count;
        }
    } else {
        ramp_len = ramp_down_at;
    }

    std::int32_t level;
    std::int32_t step = 0;
    if (ramp_started_) {
        level = field_2c_;
        step = ramp_len > 0 ? DivOrZero(field_28_ - level, ramp_len) : 0;
    } else {
        ramp_started_ = true;
        level = field_28_;
    }
    if (count <= 0) {
        field_2c_ = level;
        return;
    }

    std::int32_t done = 0;
    while (true) {
        DriverBuffer* buffer = &buffers_begin_[write_index_];
        const std::int32_t frames = (buffer->size_ >> 2) - buffer->field_10_;
        const std::int32_t n = count < frames ? count : frames;
        const auto* src = reinterpret_cast<const std::int16_t*>(
            static_cast<const std::uint8_t*>(buffer->data_) + 4 * static_cast<std::size_t>(buffer->field_10_));

        if (down_len > 0 || step != 0) {
            for (std::int32_t k = done; k < done + n; ++k) {
                if (k == ramp_down_at) {
                    const std::int32_t q = DivOrZero(level, down_len);
                    step = q > 0 ? -q : q;
                }
                if (k < ramp_len || k >= ramp_down_at) {
                    level += step;
                }
                out[0] += Scale14(src[0], level);
                out[1] += Scale14(src[1], level);
                src += 2;
                out += 2;
            }
            done += n;
            level = field_28_;
        } else {
            for (std::int32_t i = 0; i < n; ++i) {
                out[0] += Scale14(src[0], level);
                out[1] += Scale14(src[1], level);
                src += 2;
                out += 2;
            }
            step = 0;
        }
        byte_offset_ += 4 * n;

        if (frames != n) {
            buffer->field_10_ += n;
        } else {
            buffer->ready_ = 1;
            write_index_ = (write_index_ + 1) % buffer_count_;
            if (buffers_begin_[write_index_].ready_ != 0) {
                field_2c_ = level;
                return;
            }
        }
        count -= n;
        if (count <= 0) {
            field_2c_ = level;
            return;
        }
    }
}

// 0x89278c _ZN3vox29DriverCallbackSourceInterface23FillBufferMono16NoInterEPii
// Verified against the ARM listing (0x89278C..0x892B08): the state/ring guards and the fraction
// carry, the two targets (target_right from right_pan and target_left from left_pan, both scaled
// by combined = (directional_gain * ((field_28_ * distance_gain) >> 14)) >> 14), the two steps
// DivOrZero(target - level, ramp_len) from field_2c_/field_30_, the same ramp_len/down_len/
// ramp_down_at rules as the stereo mixer, the ramping test (down_len > 0 || step_left != 0 ||
// step_right != 0), the per-frame update of both levels under k < ramp_len || k >= ramp_down_at
// with both steps recomputed at k == ramp_down_at as -|level / down_len| (the EOR/RSB absolute
// value at loc_892AA0), the mono frame size (size_ >> 1) - field_10_ and n = min(count, frames),
// the byte_offset_ advance of 2n and the buffer release. The ramp hand-off is the listing's
// loc_892AE0/loc_892B84, which reload both levels from the two target slots (var_18 for the left
// and var_14 for the right) after a ramped pass; only that path resets them -- loc_892B8C, the
// non-ramping path's n <= 0 exit, leaves both levels untouched, which is why the port has no
// reset there. Deviation: the host guard `buffers_begin_ == nullptr || buffer_count_ <= 0` is not
// in the listing. Rechecked instruction by instruction in this batch; no other deviation.
void DriverCallbackSourceInterface::FillBufferMono16NoInter(int* out, int count) {
    if (state_ != 1 || buffers_begin_ == nullptr || buffer_count_ <= 0) {
        return;
    }
    DriverBuffer* cur = &buffers_begin_[write_index_];
    if (cur->ready_ != 0) {
        return;
    }
    if (cur->fraction_ != 0) {
        ++cur->field_10_;
        cur->fraction_ = 0;
    }

    const std::int32_t distance_gain = GetDistanceGain();
    const std::int32_t directional_gain = GetDirectionalGain();
    const std::int32_t gain_times_distance = field_28_ * distance_gain;
    std::int32_t combined = directional_gain * (gain_times_distance >> 14);
    combined >>= 14;
    std::int32_t left_pan = 0;
    std::int32_t right_pan = 0;
    GetStereoPanning(&left_pan, &right_pan);
    const std::int32_t target_right = Scale14(right_pan, combined);
    const std::int32_t target_left = Scale14(left_pan, combined);

    const std::int32_t available = GetNbAvailableSamples(count);
    const std::int32_t ramp = ramp_samples_;
    std::int32_t ramp_len = ramp;
    std::int32_t ramp_down_at = count + 1;
    std::int32_t down_len = 0;
    if (count > available) {
        ramp_down_at = available - ramp;
        down_len = available;
        if (ramp_down_at >= 0) {
            down_len = ramp;
        } else {
            ramp_down_at = 0;
        }
    }
    if (ramp_down_at >= ramp_len) {
        if (ramp_len >= count) {
            ramp_len = count;
        }
    } else {
        ramp_len = ramp_down_at;
    }

    std::int32_t level_left;
    std::int32_t level_right;
    std::int32_t step_left = 0;
    std::int32_t step_right = 0;
    if (ramp_started_) {
        level_left = field_2c_;
        level_right = field_30_;
        if (ramp_len > 0) {
            step_left = DivOrZero(target_left - level_left, ramp_len);
            step_right = DivOrZero(target_right - level_right, ramp_len);
        }
    } else {
        ramp_started_ = true;
        level_right = target_right;
        level_left = target_left;
    }
    if (count <= 0) {
        field_2c_ = level_left;
        field_30_ = level_right;
        return;
    }

    std::int32_t done = 0;
    while (true) {
        DriverBuffer* buffer = &buffers_begin_[write_index_];
        const std::int32_t frames = (buffer->size_ >> 1) - buffer->field_10_;
        const std::int32_t n = count < frames ? count : frames;
        const auto* src = reinterpret_cast<const std::int16_t*>(
            static_cast<const std::uint8_t*>(buffer->data_) + 2 * static_cast<std::size_t>(buffer->field_10_));

        if (down_len > 0 || step_left != 0 || step_right != 0) {
            for (std::int32_t k = done; k < done + n; ++k) {
                if (k == ramp_down_at) {
                    const std::int32_t ql = DivOrZero(level_left, down_len);
                    const std::int32_t qr = DivOrZero(level_right, down_len);
                    step_left = ql > 0 ? -ql : ql;
                    step_right = qr > 0 ? -qr : qr;
                }
                if (k < ramp_len || k >= ramp_down_at) {
                    level_left += step_left;
                    level_right += step_right;
                }
                out[0] += Scale14(src[0], level_left);
                out[1] += Scale14(src[0], level_right);
                src += 1;
                out += 2;
            }
            done += n;
            level_left = target_left;
            level_right = target_right;
        } else {
            // loc_892B8C: the non-ramping path skips the loop when n <= 0 and leaves both levels
            // exactly as they were; only the ramping path (loc_892B84) loads the targets.
            for (std::int32_t i = 0; i < n; ++i) {
                out[0] += Scale14(src[0], level_left);
                out[1] += Scale14(src[0], level_right);
                src += 1;
                out += 2;
            }
        }
        byte_offset_ += 2 * n;

        if (frames != n) {
            buffer->field_10_ += n;
        } else {
            buffer->ready_ = 1;
            write_index_ = (write_index_ + 1) % buffer_count_;
            if (buffers_begin_[write_index_].ready_ != 0) {
                field_2c_ = level_left;
                field_30_ = level_right;
                return;
            }
        }
        count -= n;
        if (count <= 0) {
            field_2c_ = level_left;
            field_30_ = level_right;
            return;
        }
    }
}

// 0x891860 _ZN3vox29DriverCallbackSourceInterface18FillBufferStereo16EPii
// Verified against the ARM listing (0x891860..0x891B74): span = scale_ * count, work_bytes =
// 4 * ((span >> 14) + 3), GetWorkBuffer with state_ = -1 when it is empty, GetWorkData over the
// span, available = ((copied >> 2) << 14) / scale_ (signed, with the +3 correction) and the
// scratch data pointer from the work buffer's word 1. The frame and ramp rules match the
// listing: count <= available gives frames = count, ramp_down_at = count + 1, down_len = 0 and
// ramp_edge = 0; count > available gives frames = available - 1, down_len = ramp_samples_ and
// ramp_edge = down_len > 0, or ramp_down_at = 0, down_len = frames and ramp_edge = frames > 0
// when frames - ramp_samples_ is negative. ramp_len = min over ramp_samples_, ramp_down_at and
// count as the listing computes it. level starts at field_2c_ with step = 0, or at field_28_
// with ramp_started_ set, and the ramping path is step != 0 || ramp_edge. The per-frame body
// (index = pos >> 14, fraction = (pos << 18) >> 18, linear interpolation between data[index] and
// data[index + 1] on both channels, the level update under k < ramp_len || k >= ramp_down_at, the
// step recomputed at k == ramp_down_at as -|level / down_len| via the EOR/RSB absolute value, and
// pos += scale_ per frame) matches. The ramp hand-off is the listing's loc_891A74/loc_891A78,
// which sets level = field_28_ and leaves the function through the epilogue at loc_891880, so a
// ramped pass always consumes the whole request; the non-ramping path returns through
// loc_891A7C with field_2c_ = level.
// Deviations, both unobservable here: the host guard on state_/buffers_begin_/buffer_count_ is
// not in the listing, and `available` uses the port's unsigned size_t division where the listing
// corrects a negative `copied` with +3 before the arithmetic shift (GetWorkData never returns a
// negative count) plus a `scale_ == 0` guard (the original would divide by zero). Rechecked
// instruction by instruction in this batch; no other deviation.
void DriverCallbackSourceInterface::FillBufferStereo16(int* out, int count) {
    if (state_ != 1 || buffers_begin_ == nullptr || buffer_count_ <= 0) {
        return;
    }
    DriverBuffer* cur = &buffers_begin_[write_index_];
    if (cur->ready_ != 0) {
        return;
    }
    const std::int32_t position = cur->fraction_;
    const std::int32_t span = scale_ * count;
    const std::int32_t work_bytes = 4 * ((span >> 14) + 3);
    DriverScratchBuffer& work = DriverCallbackInterface::GetWorkBuffer(work_bytes);
    if (work.count == 0) {
        state_ = -1;
        return;
    }
    const std::size_t copied = GetWorkData(static_cast<std::uint8_t*>(work.data), work_bytes, span);
    const std::int32_t available = scale_ != 0
                                       ? static_cast<std::int32_t>(
                                             (static_cast<std::int64_t>(copied / 4) << 14) / scale_)
                                       : 0;
    const auto* data = static_cast<const std::int16_t*>(work.data);

    const std::int32_t ramp = ramp_samples_;
    std::int32_t frames;
    std::int32_t ramp_down_at;
    std::int32_t ramp_len = ramp;
    std::int32_t down_len;
    bool ramp_edge;
    if (count > available) {
        frames = available - 1;
        ramp_down_at = frames - ramp;
        down_len = ramp;
        if (ramp_down_at < 0) {
            ramp_down_at = 0;
            down_len = frames;
            ramp_edge = frames > 0;
        } else {
            ramp_edge = down_len > 0;
        }
    } else {
        frames = count;
        ramp_down_at = count + 1;
        down_len = 0;
        ramp_edge = false;
    }
    if (ramp_down_at >= ramp_len) {
        if (ramp_len >= count) {
            ramp_len = count;
        }
    } else {
        ramp_len = ramp_down_at;
    }

    std::int32_t level = field_2c_;
    std::int32_t step = 0;
    if (ramp_started_) {
        step = ramp_len > 0 ? DivOrZero(field_28_ - level, ramp_len) : 0;
    } else {
        ramp_started_ = true;
        level = field_28_;
    }
    const bool ramping = step != 0 || ramp_edge;

    const auto sample_at = [&](std::int32_t pos, std::int32_t& left, std::int32_t& right) {
        const std::int32_t index = pos >> 14;
        const std::int32_t fraction = pos & 0x3fff;
        const std::int16_t* a = data + 2 * index;
        const std::int16_t* b = a + 2;
        left = a[0] + ((fraction * (b[0] - a[0])) >> 14);
        right = a[1] + ((fraction * (b[1] - a[1])) >> 14);
    };

    if (ramping) {
        std::int32_t pos = position;
        for (std::int32_t i = 0; i < frames; ++i) {
            if (i == ramp_down_at) {
                const std::int32_t q = DivOrZero(level, down_len);
                step = q > 0 ? -q : q;
            }
            if (i < ramp_len || i >= ramp_down_at) {
                level += step;
            }
            std::int32_t left;
            std::int32_t right;
            sample_at(pos, left, right);
            out[0] += Scale14(left, level);
            out[1] += Scale14(right, level);
            pos += scale_;
            out += 2;
        }
        field_2c_ = field_28_;
        return;
    }
    if (level == 0 || frames <= 0) {
        field_2c_ = level;
        return;
    }
    std::int32_t pos = position;
    for (std::int32_t i = 0; i < frames; ++i) {
        std::int32_t left;
        std::int32_t right;
        sample_at(pos, left, right);
        out[0] += Scale14(left, level);
        out[1] += Scale14(right, level);
        pos += scale_;
        out += 2;
    }
    field_2c_ = level;
}

// 0x892bd0 _ZN3vox29DriverCallbackSourceInterface16FillBufferMono16EPii
// Verified against the ARM listing (0x892BD0..0x892F6C), which corrected one value: on the
// count > available path with frames - ramp_samples_ negative, the listing's loc_892F4C sets
// ramp_down_at from r10, which is 0 there (r10 held the zero ready_ byte), and down_len from the
// frame count; the port had ramp_down_at = frames, which suppressed the step recompute at the
// first frame. Everything else matches: span = scale_ * count, work_bytes = 4 * ((span >> 14) + 3)
// for GetWorkBuffer and 2 * ((span >> 14) + 3) bytes for GetWorkData (r11 << 1),
// GetWorkBuffer with state_ = -1 when empty, GetWorkData over the span, available =
// ((copied >> 1) << 14) / scale_, the two targets from GetDistanceGain, GetDirectionalGain and
// GetStereoPanning with combined = (directional_gain * ((field_28_ * distance_gain) >> 14)) >> 14,
// the steps DivOrZero(target - level, ramp_len) from field_2c_ and field_30_ (both zeroed when
// ramp_len is not positive), the ramping test from the two steps or the edge flag, the per-frame
// update of both levels under i < ramp_len || i >= ramp_down_at with both steps recomputed at
// i == ramp_down_at as -|level / down_len| (loc_892AA0's EOR/RSB idiom, shared with the
// FillBufferMono16NoInter body at the same addresses), the mono frame size (size_ >> 1) -
// field_10_, n = min(count, frames), the buffer release and the field_2c_/field_30_ stores. The
// listing's separate non-ramping loop (loc_892DAC, entered when both steps are zero and the edge
// flag is clear) is not reproduced as a second loop, but it is equivalent: in exactly that case
// the port's recompute point is never reached and its step is zero, so no level changes. The
// ramping pass's own exit (loc_892F40, reached with i == frames or with frames <= 0) reloads both
// levels from the targets before loc_892E08 stores them, which the port now does too; the earlier
// port stored the ramped values instead. Deviation: the host guard on state_/buffers_begin_/
// buffer_count_ is not in the listing. Rechecked instruction by instruction in this batch.
void DriverCallbackSourceInterface::FillBufferMono16(int* out, int count) {
    if (state_ != 1 || buffers_begin_ == nullptr || buffer_count_ <= 0) {
        return;
    }
    DriverBuffer* cur = &buffers_begin_[write_index_];
    if (cur->ready_ != 0) {
        return;
    }
    const std::int32_t position = cur->fraction_;
    const std::int32_t span = scale_ * count;
    const std::int32_t work_bytes = 4 * ((span >> 14) + 3);
    DriverScratchBuffer& work = DriverCallbackInterface::GetWorkBuffer(work_bytes);
    if (work.count == 0) {
        state_ = -1;
        return;
    }
    const std::size_t copied = GetWorkData(static_cast<std::uint8_t*>(work.data),
                                           2 * ((span >> 14) + 3), span);
    const std::int32_t available = scale_ != 0
                                       ? static_cast<std::int32_t>(
                                             (static_cast<std::int64_t>(copied / 2) << 14) / scale_)
                                       : 0;
    const auto* data = static_cast<const std::int16_t*>(work.data);

    const std::int32_t distance_gain = GetDistanceGain();
    const std::int32_t directional_gain = GetDirectionalGain();
    std::int32_t left_pan = 0;
    std::int32_t right_pan = 0;
    GetStereoPanning(&left_pan, &right_pan);
    const std::int32_t combined = (directional_gain * ((field_28_ * distance_gain) >> 14)) >> 14;
    const std::int32_t target_left = Scale14(left_pan, combined);
    const std::int32_t target_right = Scale14(right_pan, combined);

    const std::int32_t ramp = ramp_samples_;
    std::int32_t frames;
    std::int32_t ramp_down_at;
    std::int32_t ramp_len = ramp;
    std::int32_t down_len;
    bool ramp_edge;
    if (count > available) {
        frames = available - 1;
        ramp_down_at = frames - ramp;
        down_len = ramp;
        if (ramp_down_at < 0) {
            // The listing's loc_892F4C: r10 is the zero ready_ byte, so the down-ramp starts at
            // frame 0 and runs over the whole frame count.
            ramp_down_at = 0;
            down_len = frames;
            ramp_edge = frames > 0;
        } else {
            ramp_edge = down_len > 0;
        }
    } else {
        frames = count;
        ramp_down_at = count + 1;
        down_len = 0;
        ramp_edge = false;
    }
    if (ramp_down_at >= ramp_len) {
        if (ramp_len >= count) {
            ramp_len = count;
        }
    } else {
        ramp_len = ramp_down_at;
    }

    std::int32_t level_left = field_2c_;
    std::int32_t level_right = field_30_;
    std::int32_t step_left = 0;
    std::int32_t step_right = 0;
    if (ramp_started_) {
        if (ramp_len > 0) {
            step_left = DivOrZero(target_left - level_left, ramp_len);
            step_right = DivOrZero(target_right - level_right, ramp_len);
        }
    } else {
        ramp_started_ = true;
        level_left = target_left;
        level_right = target_right;
    }

    std::int32_t pos = position;
    for (std::int32_t i = 0; i < frames; ++i) {
        if (i == ramp_down_at) {
            const std::int32_t ql = DivOrZero(level_left, down_len);
            const std::int32_t qr = DivOrZero(level_right, down_len);
            step_left = ql > 0 ? -ql : ql;
            step_right = qr > 0 ? -qr : qr;
        }
        if (i < ramp_len || i >= ramp_down_at) {
            level_left += step_left;
            level_right += step_right;
        }
        const std::int32_t index = pos >> 14;
        const std::int32_t fraction = pos & 0x3fff;
        const std::int16_t* a = data + index;
        const std::int32_t sample = a[0] + ((fraction * (a[1] - a[0])) >> 14);
        out[0] += Scale14(sample, level_left);
        out[1] += Scale14(sample, level_right);
        pos += scale_;
        out += 2;
    }
    // loc_892F40: a pass that ramped reloads both levels from the targets (var_14/var_10) before
    // storing them; the plain loc_892DAC loop falls straight through to loc_892E08 instead.
    if (step_left != 0 || step_right != 0 || ramp_edge) {
        level_left = target_left;
        level_right = target_right;
    }
    field_2c_ = level_left;
    field_30_ = level_right;
}

}  // namespace vox
