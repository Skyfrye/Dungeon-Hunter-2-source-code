// vox::VoxGainFade: the fade record of the master gain, of each group gain, and of an emitter's
// gain and pitch, plus the arithmetic their setters share. A record is 20 bytes in the original.
// The master record sits at +0xe0 and the group records start at +0xf4 with a 20-byte stride
// (the targets are the words at +0xe4 and +0xf8, read by the getters). The emitter gain record
// is at +0x48 and the pitch record at +0x78 (EmitterObj).
#pragma once

namespace vox {

struct VoxGainFade {
    float current = 0.0f;   // +0x00: the value the fade starts from
    float target = 0.0f;    // +0x04: the gain the fade ends at (what the getters return)
    float elapsed = 0.0f;   // +0x08
    float duration = 0.0f;  // +0x0c: the requested time plus 0.001
    bool flag = false;      // +0x10
};

// The requested gain clamped to [0, 1] (0x86b9b8 and 0x86bd5c clamp before they store it).
inline float ClampGainUnit(float gain) {
    if (gain >= 0.0f) {
        return gain > 1.0f ? 1.0f : gain;
    }
    return 0.0f;
}

// The value a fade has reached when a new fade starts: linear from current to target over
// elapsed / duration while elapsed is below duration, else the target. A zero duration with
// zero elapsed therefore gives the target, as the original's comparison does. The original
// evaluates the same expression for the groups and the master gain.
inline float CurrentOfFade(const VoxGainFade& fade) {
    if (fade.elapsed < fade.duration) {
        if (fade.duration > 0.0f) {
            return fade.current + (fade.elapsed * (fade.target - fade.current)) / fade.duration;
        }
        return fade.current;
    }
    return fade.target;
}

// Restarts a fade toward target over duration seconds: the current value is where the old fade
// has reached, the elapsed time is zero, and the duration is stored as given. The EmitterObj
// gain and pitch setters (0x86bb24, 0x86bc40) use this form.
inline void RestartFadeWithDuration(VoxGainFade& fade, float target, float duration) {
    fade.current = CurrentOfFade(fade);
    fade.target = target;
    fade.elapsed = 0.0f;
    fade.duration = duration;
    fade.flag = false;
}

// The master and group gains (SetMasterGain 0x86bd5c, SetGroupGain 0x86b9b8) restart with the
// duration time + 0.001 (constant 0x3a83126f), so the fade never has a zero duration.
inline void RestartFade(VoxGainFade& fade, float target, float time) {
    RestartFadeWithDuration(fade, target, time + 0.001f);
}

}  // namespace vox
