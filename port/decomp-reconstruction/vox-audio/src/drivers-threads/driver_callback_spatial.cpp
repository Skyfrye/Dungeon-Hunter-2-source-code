// vox::DriverCallbackSourceInterface: 3D gains. Stereo pan, Doppler pitch, distance
// attenuation and the directional cone. Positions are relative to the listener unless the
// source is marked relative (is_relative_).
#include <cmath>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {

// 0x891b80 _ZN3vox29DriverCallbackSourceInterface16GetStereoPanningEPiS1_
// The pan is the cosine between the source direction and the listener's right vector
// (front cross up), mapped to [0, 1]. Left is sqrt(1 - t^2) and right is t, in Q14.
int DriverCallbackSourceInterface::GetStereoPanning(int* left, int* right) {
    float cosine = 0.0f;
    bool have_cosine = false;
    if (is_relative_ != 0) {
        const float length = std::sqrt((position_[0] * position_[0] + position_[1] * position_[1]) +
                                       position_[2] * position_[2]);
        if (length > 0.0f) {
            cosine = position_[0] / length;
            have_cosine = true;
        }
    } else {
        const float rx = position_[0] - s_listenerPosition_[0];
        const float ry = position_[1] - s_listenerPosition_[1];
        const float rz = position_[2] - s_listenerPosition_[2];
        const float distance = std::sqrt((rx * rx + ry * ry) + rz * rz);
        const float* front = s_listenerFront_;
        const float* up = s_listenerUp_;
        const float rightx = front[1] * up[2] - front[2] * up[1];
        const float righty = front[2] * up[0] - up[2] * front[0];
        const float rightz = up[1] * front[0] - front[1] * up[0];
        const float right_length = std::sqrt((rightx * rightx + righty * righty) + rightz * rightz);
        if (distance > 0.0f && right_length > 0.0f) {
            cosine = (rx / distance) * (rightx / right_length) +
                     (ry / distance) * (righty / right_length) +
                     (rz / distance) * (rightz / right_length);
            have_cosine = true;
        }
    }
    if (!have_cosine) {
        cosine = 0.0f;
    }
    const float t = std::sqrt((cosine + 1.0f) * 0.5f);
    *left = static_cast<int>(static_cast<float>(std::sqrt(1.0f - t * t) * 16384.0));
    const int result = static_cast<int>(static_cast<float>(t * 16384.0));
    *right = result;
    return result;
}

// 0x891ed0 _ZN3vox29DriverCallbackSourceInterface15GetDopplerPitchEv
// Returns the Doppler pitch in Q14, clamped to [0.001, 2.9] and to 16 and 47513 at the ends.
int DriverCallbackSourceInterface::GetDopplerPitch() {
    if (s_dopplerFactor_ <= 0.0f) {
        return 0x4000;
    }
    float x;
    float y;
    float z;
    float listener_speed;
    if (is_relative_ != 0) {
        x = -position_[0];
        y = -position_[1];
        z = -position_[2];
        listener_speed = 0.0f;
    } else {
        x = s_listenerPosition_[0] - position_[0];
        y = s_listenerPosition_[1] - position_[1];
        z = s_listenerPosition_[2] - position_[2];
        listener_speed = (x * s_listenerVelocity_[0] + y * s_listenerVelocity_[1]) +
                         z * s_listenerVelocity_[2];
    }
    const float distance = std::sqrt((x * x + y * y) + z * z);
    const float source_speed = (x * velocity_[0] + y * velocity_[1]) + z * velocity_[2];
    if (listener_speed > distance * s_alteredSpeedOfSound_) {
        listener_speed = distance * s_alteredSpeedOfSound_;
    }
    const float denominator = distance * s_alteredSpeedOfSound_ - source_speed;
    if (denominator <= 0.0f) {
        return 0x4000;
    }
    const float ratio = (source_speed - listener_speed) / denominator + 1.0f;
    if (ratio > 2.9) {
        return 47513;
    }
    if (ratio >= 0.001) {
        return static_cast<int>(ratio * 16384.0f);
    }
    return 16;
}

// 0x892114 _ZN3vox29DriverCallbackSourceInterface15GetDistanceGainEv
// The distance models (1 to 6) follow the original's switch. Models 1 and 2 use a linear
// rolloff, 3 and 4 a linear fade between reference and maximum distance, 5 and 6 a power
// law. Any other model gives unity.
int DriverCallbackSourceInterface::GetDistanceGain() {
    float x;
    float y;
    float z;
    if (is_relative_ != 0) {
        x = position_[0];
        y = position_[1];
        z = position_[2];
    } else {
        x = position_[0] - s_listenerPosition_[0];
        y = position_[1] - s_listenerPosition_[1];
        z = position_[2] - s_listenerPosition_[2];
    }
    const float distance = std::sqrt((x * x + y * y) + z * z);
    const float ref = distance_ref_;
    const float max = distance_max_;
    const float rolloff = rolloff_;

    // Distance clamped to [ref, max], as models 2, 4 and 6 do.
    const auto clamped = [&]() {
        float d = distance;
        if (ref <= distance) {
            if (max < distance) {
                d = max;
            }
        } else {
            d = ref;
        }
        return d;
    };

    switch (s_distanceModel_) {
        case 1: {
            const float shaped = ref + (distance - ref) * rolloff;
            if (shaped > 0.0f) {
                return static_cast<int>((ref / shaped) * 16384.0f);
            }
            return 0x4000;
        }
        case 2: {
            const float d = clamped();
            const float shaped = ref + (d - ref) * rolloff;
            if (shaped > 0.0f) {
                return static_cast<int>((ref / shaped) * 16384.0f);
            }
            return 0x4000;
        }
        case 3: {
            const float span = max - ref;
            if (span <= 0.0f) {
                return 0x4000;
            }
            const float fade = (distance - ref) * rolloff / span;
            const float gain = 1.0f - fade;
            if (gain >= 0.0f) {
                return static_cast<int>(gain * 16384.0f);
            }
            return 0;
        }
        case 4: {
            const float span = max - ref;
            if (span <= 0.0f) {
                return 0x4000;
            }
            const float d = clamped();
            const float fade = (d - ref) * rolloff / span;
            const float gain = 1.0f - fade;
            if (gain >= 0.0f) {
                return static_cast<int>(gain * 16384.0f);
            }
            return 0;
        }
        case 5: {
            if (rolloff <= 0.0f || ref <= 0.0f) {
                return 0x4000;
            }
            return static_cast<int>(std::pow(distance / ref, -rolloff) * 16384.0f);
        }
        case 6: {
            if (rolloff <= 0.0f || ref <= 0.0f) {
                return 0x4000;
            }
            const float d = clamped();
            return static_cast<int>(std::pow(d / ref, -rolloff) * 16384.0f);
        }
        default:
            return 0x4000;
    }
}

// 0x892460 _ZN3vox29DriverCallbackSourceInterface18GetDirectionalGainEv
// The angle between the source direction and the vector from the source to the listener
// sets a gain: full inside the inner cone, the outer gain outside the outer cone, and a
// linear blend between them.
int DriverCallbackSourceInterface::GetDirectionalGain() {
    if (cone_inner_ >= 360.0f) {
        return 0x4000;
    }
    const float dx = direction_[0];
    const float dy = direction_[1];
    const float dz = direction_[2];
    if (dx == 0.0f && dy == 0.0f && dz == 0.0f) {
        return 0x4000;
    }
    float vx;
    float vy;
    float vz;
    if (is_relative_ != 0) {
        vx = -position_[0];
        vy = -position_[1];
        vz = -position_[2];
    } else {
        vx = s_listenerPosition_[0] - position_[0];
        vy = s_listenerPosition_[1] - position_[1];
        vz = s_listenerPosition_[2] - position_[2];
    }
    const float dot = (vx * dx + vy * dy) + vz * dz;
    const float cosine = std::sqrt((dot * dot) / (((vx * vx + vy * vy) + vz * vz) *
                                                  ((dx * dx + dy * dy) + dz * dz)));
    float angle = static_cast<float>(static_cast<float>(std::acos(cosine) * 180.0) / 3.141592653589793);
    if (dot < 0.0f) {
        angle = 180.0f - angle;
    }
    const float inner = cone_inner_ * 0.5f;
    if (angle <= inner) {
        return 0x4000;
    }
    const float outer = cone_outer_ * 0.5f;
    if (angle >= outer) {
        return static_cast<int>(cone_outer_gain_ * 16384.0f);
    }
    if (outer - inner <= 0.0f) {
        return 0x4000;
    }
    return static_cast<int>(
        ((outer - angle) + cone_outer_gain_ * (angle - inner)) / (outer - inner) * 16384.0f);
}

}  // namespace vox
