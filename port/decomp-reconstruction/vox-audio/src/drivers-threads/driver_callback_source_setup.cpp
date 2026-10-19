// vox::DriverCallbackSourceInterface: construction, destruction, the ring setup (Init),
// the 3D and pitch setters, the upload path and the static listener state.
#include <cfloat>
#include <cstdint>
#include <cstring>

#include "vox-audio/vox/driver_callback.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

std::int32_t DriverCallbackSourceInterface::s_driverCallbackPeriod_ = 0x7fffffff;  // .data 0x99e26c
float DriverCallbackSourceInterface::s_dopplerFactor_ = 1.0f;  // .data 0x99e264 = 0x3f800000
float DriverCallbackSourceInterface::s_alteredSpeedOfSound_ = 343.3f;  // .data 0x99e268 = 0x43aba666
std::int32_t DriverCallbackSourceInterface::s_distanceModel_ = 2;  // .data 0x99e260
float DriverCallbackSourceInterface::s_listenerPosition_[3] = {};
float DriverCallbackSourceInterface::s_listenerVelocity_[3] = {};
float DriverCallbackSourceInterface::s_listenerFront_[3] = {};
float DriverCallbackSourceInterface::s_listenerUp_[3] = {};

// 0x8913b8 _ZN3vox29DriverCallbackSourceInterfaceC1EPvS1_j and 0x8914bc (C2), the same body.
// The ring is not allocated here; Init builds it.
DriverCallbackSourceInterface::DriverCallbackSourceInterface(const std::int32_t* format,
                                                             const std::int32_t* buffer_count,
                                                             std::uint32_t flags) {
    state_ = 0;
    scale_ = 0x4000;
    flags_ = flags;
    field_34_ = 0x4000;
    target_pitch_ = 0x4000;
    pitch_step_ = 0;
    buffers_begin_ = nullptr;
    buffers_end_ = nullptr;
    buffers_capacity_ = nullptr;
    channels_ = format[0];
    sample_rate_ = format[1];
    bits_per_sample_ = format[2];
    field_1c_ = format[3];
    // 3 ms of samples at the sample rate, computed in single precision as the original does.
    ramp_samples_ = static_cast<std::int32_t>(
        static_cast<float>(static_cast<float>(sample_rate_) * 0.003));
    buffer_count_ = buffer_count != nullptr ? *buffer_count : 3;
    buffer_bytes_ = channels_ * (bits_per_sample_ >> 3);
    period_ = 540;
}

// D1 0x8911fc and D2 0x891264 (identical bodies). D0 0x891248 is the deleting form.
DriverCallbackSourceInterface::~DriverCallbackSourceInterface() {
    Cleanup();
    if (buffers_begin_ != nullptr) {
        VoxFree(buffers_begin_);
    }
}

// 0x893108 _ZN3vox29DriverCallbackSourceInterface4InitEv
// Verified against the ARM listing (0x893108..0x8932D4): the lock, field_28_ and field_34_ =
// 0x4000, rate_ratio_ = (sample_rate_ << 14) / s_driverSampleRate_ (idiv, 0 when the rate is 0),
// the 3D defaults (position/velocity/direction zeroed, cone_outer_gain_ 0, rolloff_ 1,
// cone_outer_ 360 (the MOV #0x43000000 + ADD #0xB40000 pair is 0x43B40000, which the Hex-Rays
// dump prints as 1135869952 and GetDirectionalGain compares against), field_ac_ FLT_MAX,
// doppler_pitch_ 0x4000, is_relative_ 0, distance_max_ FLT_MAX, distance_ref_ 1, cone_inner_ 360,
// read_index_ and write_index_ 0), the byte total (150 * rate * channels_ * (bits >> 3) / 1000,
// built as the unsigned magic-multiply quotient the listing computes) and its frame alignment
// (v8 = total - total % (channels_ * (bits >> 3))), the per-buffer append with the doubling
// growth ((count >= 1 ? 2 * count : 1) elements, the copy, VoxFree of the old block, then
// begin/end/capacity), the buffer_count_ update with state_ = -1 at or below zero, and
// byte_offset_ = 0 with the Unlock tail all match.
// Deviation (host, unobservable): the 0x18-byte ring element is copied from a stack template the
// listing only fills from sp+0x24 to sp+0x38 (ready_ byte at +0x14 = 1, +0x04 = 0, +0x08 = the
// aligned byte count, +0x0c and +0x10 = 0); word 0 (the element's data pointer) is never stored,
// so the binary copies an indeterminate stack word into it. The port's DriverBuffer
// default-initialises that word to null. Nothing can read it: the element is appended with ready_
// set, every mixer path tests ready_ first, and UploadData assigns data_ before clearing ready_.
// The listing's overflow guard on the growth ((v16 <= 0xAAAAAAA) && (count <= v16), whose false
// branch allocates the bogus size 0xFFFFFFF0) is not reproduced: it needs more than 89 million
// ring elements. The port's `grown == nullptr` break stands in for the original's unchecked
// dereference of a failed allocation.
int DriverCallbackSourceInterface::Init() {
    mutex_.Lock();
    field_28_ = 0x4000;
    field_34_ = 0x4000;

    const std::int32_t rate = sample_rate_;
    rate_ratio_ = s_driverSampleRate_ != 0
                      ? static_cast<std::int32_t>((static_cast<std::int64_t>(rate) << 14) / s_driverSampleRate_)
                      : 0;

    const std::int32_t bytes_per_sample = bits_per_sample_ >> 3;
    const std::int64_t total_bytes =
        static_cast<std::int64_t>(bytes_per_sample) * 150 * rate * channels_ / 1000;
    const std::int64_t block = static_cast<std::int64_t>(channels_) * bytes_per_sample;
    const std::int64_t aligned_bytes = block != 0 ? total_bytes - total_bytes % block : total_bytes;

    for (int i = 0; i < 3; ++i) {
        position_[i] = 0.0f;
        velocity_[i] = 0.0f;
        direction_[i] = 0.0f;
    }
    cone_outer_gain_ = 0.0f;
    rolloff_ = 1.0f;
    cone_outer_ = 360.0f;
    field_ac_ = FLT_MAX;
    doppler_pitch_ = 0x4000;
    is_relative_ = 0;
    distance_max_ = FLT_MAX;
    distance_ref_ = 1.0f;
    cone_inner_ = 360.0f;
    read_index_ = 0;
    write_index_ = 0;

    if (flags_ != 0) {
        // Append one element per buffer. A full array is replaced by one of twice the
        // length: the existing elements are copied and the new one goes after them.
        for (std::int32_t i = 0; i < buffer_count_; ++i) {
            if (buffers_end_ == buffers_capacity_) {
                const std::size_t existing = static_cast<std::size_t>(buffers_end_ - buffers_begin_);
                const std::size_t new_capacity = existing == 0 ? 1 : 2 * existing;
                auto* grown = static_cast<DriverBuffer*>(
                    VoxAlloc(new_capacity * sizeof(DriverBuffer)));
                if (grown == nullptr) {
                    break;
                }
                for (std::size_t k = 0; k < existing; ++k) {
                    grown[k] = buffers_begin_[k];
                }
                if (buffers_begin_ != nullptr) {
                    VoxFree(buffers_begin_);
                }
                buffers_begin_ = grown;
                buffers_end_ = grown + existing;
                buffers_capacity_ = grown + new_capacity;
            }
            DriverBuffer element;
            element.total_bytes_ = static_cast<std::int32_t>(aligned_bytes);
            element.ready_ = 1;
            *buffers_end_ = element;
            ++buffers_end_;
        }
        const std::int32_t count = static_cast<std::int32_t>(buffers_end_ - buffers_begin_);
        buffer_count_ = count;
        if (count <= 0) {
            state_ = -1;
        }
    }
    byte_offset_ = 0;
    return mutex_.Unlock();
}

// 0x8909e8 _ZN3vox29DriverCallbackSourceInterface14Set3DParameterEiPv
void DriverCallbackSourceInterface::Set3DParameter(int which, const void* value) {
    mutex_.Lock();
    if (flags_ != 0) {
        switch (which) {
            case 0:
                std::memcpy(&is_relative_, value, sizeof(std::int32_t));
                break;
            case 1:
                std::memcpy(&distance_max_, value, sizeof(float));
                break;
            case 2:
                std::memcpy(&distance_ref_, value, sizeof(float));
                break;
            case 3:
                std::memcpy(&rolloff_, value, sizeof(float));
                break;
            case 4:
                std::memcpy(&cone_inner_, value, sizeof(float));
                break;
            case 5:
                std::memcpy(&cone_outer_, value, sizeof(float));
                break;
            case 6:
                std::memcpy(&cone_outer_gain_, value, sizeof(float));
                break;
            case 8:
                std::memcpy(position_, value, sizeof(position_));
                break;
            case 9:
                std::memcpy(velocity_, value, sizeof(velocity_));
                break;
            case 10:
                std::memcpy(direction_, value, sizeof(direction_));
                break;
            default:
                break;
        }
    }
    mutex_.Unlock();
}

// 0x890be8 _ZN3vox29DriverCallbackSourceInterface8SetPitchEf
// The pitch is a Q14 word. Values above 2.0 clamp to 0x8000 (2.0); values at or below 0 give
// 1 (the original's 0x4000 base is not used here). While playing, the per-period pitch
// step is recomputed from the new target.
void DriverCallbackSourceInterface::SetPitch(float pitch) {
    mutex_.Lock();
    std::int32_t q;
    if (pitch > 2.0f) {
        q = 0x8000;
    } else if (pitch > 0.0f) {
        q = static_cast<std::int32_t>(pitch * 16384.0f);
    } else {
        q = 1;
    }
    field_34_ = q;
    if (state_ != 1) {
        target_pitch_ = q;
        mutex_.Unlock();
        return;
    }
    const std::int32_t period = period_;
    const std::int64_t ratio = period > s_driverCallbackPeriod_
                                   ? (static_cast<std::int64_t>(s_driverCallbackPeriod_) << 14) / period
                                   : 0x4000;
    pitch_step_ = static_cast<std::int32_t>(
        (static_cast<std::int64_t>(q) - target_pitch_) * ratio >> 14);
    mutex_.Unlock();
}

// 0x890d40 _ZN3vox29DriverCallbackSourceInterface10UploadDataEPvi
// Stores the data in the buffer at the upload cursor when that buffer is free.
void DriverCallbackSourceInterface::UploadData(const void* data, int size) {
    mutex_.Lock();
    if (state_ != -1 && size > 0 && buffer_count_ > 0 && buffers_begin_ != nullptr) {
        DriverBuffer& buffer = buffers_begin_[read_index_];
        if (buffer.ready_ != 0) {
            buffer.data_ = const_cast<void*>(data);
            buffer.size_ = size;
            buffer.total_bytes_ = size;
            buffer.fraction_ = 0;
            buffer.field_10_ = 0;
            buffer.ready_ = 0;
            read_index_ = (read_index_ + 1) % buffer_count_;
        }
    }
    mutex_.Unlock();
}

// 0x890198 _ZN3vox29DriverCallbackSourceInterface15Set3DParametersENS_18ListenerParametersENS_22Vox3DGeneralParametersE
// The original takes its arguments as twelve words and two floats. The port receives the
// same values in DriverListener3D. Returns the altered speed of sound when the Doppler
// factor is positive; otherwise 0 (the original returns the comparison as a bit pattern).
float DriverCallbackSourceInterface::Set3DParameters(const DriverListener3D& listener) {
    std::memcpy(s_listenerPosition_, listener.position, sizeof(s_listenerPosition_));
    std::memcpy(s_listenerVelocity_, listener.velocity, sizeof(s_listenerVelocity_));
    std::memcpy(s_listenerFront_, listener.orientation, sizeof(s_listenerFront_));
    std::memcpy(s_listenerUp_, listener.orientation + 3, sizeof(s_listenerUp_));
    s_distanceModel_ = listener.distance_model;
    s_dopplerFactor_ = listener.doppler_factor;
    if (listener.doppler_factor > 0.0f) {
        s_alteredSpeedOfSound_ = listener.speed_of_sound / listener.doppler_factor;
        return s_alteredSpeedOfSound_;
    }
    s_alteredSpeedOfSound_ = listener.speed_of_sound;
    return 0.0f;
}

// 0x890254 _ZN3vox29DriverCallbackSourceInterface23SetDriverCallbackPeriodEf
int DriverCallbackSourceInterface::SetDriverCallbackPeriod(float period) {
    const int result = static_cast<int>(static_cast<float>(period * 16384.0));
    s_driverCallbackPeriod_ = result;
    return result;
}

}  // namespace vox
