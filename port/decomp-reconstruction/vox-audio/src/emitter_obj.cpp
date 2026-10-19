#include "vox-audio/vox/emitter_obj.hpp"

#include <limits>

namespace vox {

// 0x863528 _ZN3vox10EmitterObj15SetGainModifierEf
void EmitterObj::SetGainModifier(float gain) {
    gain_modifier_ = gain;
}

// 0x863530 _ZN3vox10EmitterObj7IsReadyEv
bool EmitterObj::IsReady() {
    return (ready_flag_ ^ 1) != 0;
}

// 0x8653c0 _ZN3vox10EmitterObj11SetUserDataERNS_21EmitterHandleUserDataE
void EmitterObj::SetUserData(const std::uintptr_t& first_word) {
    mutex.Lock();
    user_data_ = first_word;
    mutex.Unlock();
}

// 0x8655e0 _ZN3vox10EmitterObj5ResetEv
void EmitterObj::Reset() {
    mutex.Lock();
    reset_flag_ = 1;
    mutex.Unlock();
}

// 0x865608 _ZN3vox10EmitterObj7SetLoopEb
// The original stores the flag at +0x8d; GetLoop reads +0x8c. Both are kept.
void EmitterObj::SetLoop(bool loop) {
    mutex.Lock();
    loop_ = loop ? 1 : 0;
    mutex.Unlock();
}

// 0x865630 _ZN3vox10EmitterObj7GetLoopEv
bool EmitterObj::GetLoop() {
    mutex.Lock();
    const bool loop = loop_read_ != 0;
    mutex.Unlock();
    return loop;
}

// 0x865658 _ZN3vox10EmitterObj8SetStateEi
void EmitterObj::SetState(int state) {
    mutex.Lock();
    state_set_ = state;
    mutex.Unlock();
}

// 0x865680 _ZN3vox10EmitterObj8GetStateEv
int EmitterObj::GetState() {
    mutex.Lock();
    const int state = state_;
    mutex.Unlock();
    return state;
}

// 0x8656f8 _ZN3vox10EmitterObj7IsGroupEj
bool EmitterObj::IsGroup(std::uint32_t groups) {
    mutex.Lock();
    const bool in_group = (groups & (std::uint32_t{1} << group_)) != 0;
    mutex.Unlock();
    return in_group;
}

// 0x865734 _ZN3vox10EmitterObj8SetGroupEi
void EmitterObj::SetGroup(int group) {
    mutex.Lock();
    group_ = group;
    mutex.Unlock();
}

// 0x86575c _ZN3vox10EmitterObj8GetGroupEv
int EmitterObj::GetGroup() {
    mutex.Lock();
    const int group = group_;
    mutex.Unlock();
    return group;
}

// 0x864e64 _ZN3vox10EmitterObj16Get3DParameterfvEiRNS_11VoxVector3fE
void EmitterObj::Get3DParameterfv(int param, VoxVector3f& out) {
    mutex.Lock();
    switch (param) {
        case 8: out = position_; break;
        case 9: out = velocity_; break;
        case 10: out = direction_; break;
        default: break;
    }
    mutex.Unlock();
}

// 0x864f04 _ZN3vox10EmitterObj16Get3DParameter3fEiRfS1_S1_
void EmitterObj::Get3DParameter3f(int param, float& x, float& y, float& z) {
    mutex.Lock();
    const VoxVector3f* src = nullptr;
    switch (param) {
        case 8: src = &position_; break;
        case 9: src = &velocity_; break;
        case 10: src = &direction_; break;
        default: break;
    }
    if (src != nullptr) {
        x = src->x;
        y = src->y;
        z = src->z;
    }
    mutex.Unlock();
}

// 0x864fa0 _ZN3vox10EmitterObj15Get3DParameterfEiRf
// Parameter ids 1..7 map to float_params_[0..6]; other ids leave out untouched.
void EmitterObj::Get3DParameterf(int param, float& out) {
    mutex.Lock();
    const unsigned index = static_cast<unsigned>(param) - 1u;
    if (index < 7u) {
        out = float_params_[index];
    }
    mutex.Unlock();
}

// 0x865044 _ZN3vox10EmitterObj15Get3DParameteriEiRi
void EmitterObj::Get3DParameteri(int param, int& out) {
    mutex.Lock();
    if (param == 0) {
        out = param0_;
    }
    mutex.Unlock();
}

// 0x865078 _ZN3vox10EmitterObj16Set3DParameterfvEiRKNS_11VoxVector3fE
void EmitterObj::Set3DParameterfv(int param, const VoxVector3f& value) {
    mutex.Lock();
    switch (param) {
        case 8:
            position_ = value;
            dirty_[8] = 1;
            break;
        case 9:
            velocity_ = value;
            dirty_[9] = 1;
            break;
        case 10:
            direction_ = value;
            dirty_[10] = 1;
            break;
        default: break;
    }
    mutex.Unlock();
}

// 0x865130 _ZN3vox10EmitterObj16Set3DParameter3fEifff
void EmitterObj::Set3DParameter3f(int param, float x, float y, float z) {
    mutex.Lock();
    VoxVector3f* dst = nullptr;
    switch (param) {
        case 8: dst = &position_; break;
        case 9: dst = &velocity_; break;
        case 10: dst = &direction_; break;
        default: break;
    }
    if (dst != nullptr) {
        dst->x = x;
        dst->y = y;
        dst->z = z;
        dirty_[param] = 1;
    }
    mutex.Unlock();
}

// 0x8651c0 _ZN3vox10EmitterObj15Set3DParameterfEif
void EmitterObj::Set3DParameterf(int param, float value) {
    mutex.Lock();
    const unsigned index = static_cast<unsigned>(param) - 1u;
    if (index < 7u) {
        float_params_[index] = value;
        dirty_[index + 1u] = 1;
    }
    mutex.Unlock();
}

// 0x865280 _ZN3vox10EmitterObj15Set3DParameteriEii
void EmitterObj::Set3DParameteri(int param, int value) {
    mutex.Lock();
    if (param == 0) {
        param0_ = value;
        dirty_[0] = 1;
    }
    mutex.Unlock();
}

// 0x8652b8 _ZN3vox10EmitterObj20SetDefaultParametersEv
// Defaults: param 0 = 0, params 1..6 = FLT_MAX, 100, 1, 360, 360, 0 (the ARM stores
// 0x7f7fffff, 0x42c80000, 0x3f800000, 0x43b40000 twice, and 0), and the three vectors
// zeroed through the setters so their dirty bytes are set.
void EmitterObj::SetDefaultParameters() {
    Set3DParameteri(0, 0);
    Set3DParameterf(1, std::numeric_limits<float>::max());
    Set3DParameterf(2, 100.0f);
    Set3DParameterf(3, 1.0f);
    Set3DParameterf(4, 360.0f);
    Set3DParameterf(5, 360.0f);
    Set3DParameterf(6, 0.0f);
    position_ = VoxVector3f{};
    Set3DParameterfv(8, position_);
    velocity_ = VoxVector3f{};
    Set3DParameterfv(9, velocity_);
    direction_ = VoxVector3f{};
    Set3DParameterfv(10, direction_);
}

// 0x86556c _ZN3vox10EmitterObj6IsDoneEv
bool EmitterObj::IsDone() {
    mutex.Lock();
    const bool done = IsDoneUnlocked();
    mutex.Unlock();
    return done;
}

// 0x86559c _ZN3vox10EmitterObj9IsPlayingEv
bool EmitterObj::IsPlaying() {
    mutex.Lock();
    const bool playing = state_ == 1 || state_set_ == 1;
    mutex.Unlock();
    return playing;
}

// 0x8656a8 _ZN3vox10EmitterObj8GetPitchEv
float EmitterObj::GetPitch() {
    mutex.Lock();
    const float pitch = pitch_;
    mutex.Unlock();
    return pitch;
}

// 0x8656d0 _ZN3vox10EmitterObj7GetGainEv
float EmitterObj::GetGain() {
    mutex.Lock();
    const float gain = gain_;
    mutex.Unlock();
    return gain;
}

// 0x86bb24 _ZN3vox10EmitterObj7SetGainEff
// Returns the Mutex::Unlock result, as the original tail-calls Mutex::Unlock.
// The requested gain is stored raw (+0x40) and not clamped. The fade starts from where the
// previous fade has reached, and its duration is the time as given, with no +0.001.
// GetGain still reads gain_ (+0x3c), which SetGain does not write.
int EmitterObj::SetGain(float gain, float time) {
    mutex.Lock();
    requested_gain_ = gain;
    RestartFadeWithDuration(gain_fade_, gain, time);
    return mutex.Unlock();
}

// 0x86bc40 _ZN3vox10EmitterObj8SetPitchEff
// The requested pitch is stored raw at +0x74 (pitch_) and is also the fade target at +0x7c.
// The fade restarts with the duration as given. Returns the Mutex::Unlock result.
int EmitterObj::SetPitch(float pitch, float time) {
    mutex.Lock();
    pitch_ = pitch;
    RestartFadeWithDuration(pitch_fade_, pitch, time);
    return mutex.Unlock();
}

// 0x86c1d4 _ZN3vox10EmitterObj6ResumeEf
// Returns the Mutex::Unlock result. An emitter
// whose sub-state is 2, or whose state is 2 and whose sub-state is not 3, becomes playing (sub-state
// 1) and starts a fade toward 1.0 over the time given, with no +0.001. The fade record is at
// +0x5c; the name resume_fade_ is ours, the original does not name it.
int EmitterObj::Resume(float time) {
    mutex.Lock();
    if (state_set_ == 2 || (state_ == 2 && state_set_ != 3)) {
        state_set_ = 1;
        RestartFadeWithDuration(resume_fade_, 1.0f, time);
    }
    return mutex.Unlock();
}

// 0x866abc _ZN3vox10EmitterObj30SetInteractiveMusicStateChangeEPKc
// The original takes no lock. Its body is the flag byte at +0x144 set to 1 (the byte at +0x145 is
// a separate flag, written elsewhere), then strcpy(this+0x146, name). The copy is unbounded and
// no code in vox-audio reads the name back, so a std::string holds the same content.
// Deviation: a null name crashes the original in strcpy; the port stores an empty string.
void EmitterObj::SetInteractiveMusicStateChange(const char* state) {
    interactive_state_set_ = true;
    interactive_state_ = state != nullptr ? state : std::string();
}

// 0x865784 _ZN3vox10EmitterObj9ShouldDieEv
bool EmitterObj::ShouldDie() {
    mutex.Lock();
    const bool die = ShouldDieUnlocked();
    mutex.Unlock();
    return die;
}

// 0x8657f4 _ZN3vox10EmitterObj7IsAliveEv
// Reconstructed against the 0x8657f4 listing (13 instructions): ADD R4,R0,#0x18; Lock(R4);
// BL ShouldDie(0x865784); Unlock(R4); EOR R0,R5,#1; UXTB R0,R0. ShouldDie locks the same +0x18
// mutex (its own ADD R5,R0,#0x18; Lock), and Mutex::Mutex (0x8935d0) initialises it with
// pthread_mutex_init(mutex, NULL), i.e. the default non-recursive type, so the listing blocks on
// its own lock and IsAlive never returns.
// Deviation (host-necessitated): the port calls the unlocked body (ShouldDieUnlocked) under the one
// Lock, so it returns the value the listing computes but can never hand back (!ShouldDieUnlocked()).
bool EmitterObj::IsAlive() {
    mutex.Lock();
    const bool alive = !ShouldDieUnlocked();
    mutex.Unlock();
    return alive;
}

// 0x865828 _ZN3vox10EmitterObj9NeedToDieEv (the 20-byte body in the queue)
void EmitterObj::NeedToDie() {
    mutex.Lock();
    need_to_die_ = true;
    mutex.Unlock();
}

// 0x865850 _ZN3vox10EmitterObj20SetAutoKillAfterDoneEb
void EmitterObj::SetAutoKillAfterDone(bool on) {
    mutex.Lock();
    auto_kill_ = on;
    mutex.Unlock();
}

// 0x865398 _ZN3vox10EmitterObj11GetUserDataEv
std::uintptr_t EmitterObj::GetUserData() {
    mutex.Lock();
    const std::uintptr_t data = user_data_;
    mutex.Unlock();
    return data;
}

// 0x86353c _ZN3vox10EmitterObj7_IsDoneEv
// Reads the state pair (+0x90, +0x94). State 3 is done when the second word is 3;
// state 0 is done when the second word is 0; any other state is not done.
bool EmitterObj::IsDoneUnlocked() {
    if (state_ == 3) {
        return state_set_ == 3;
    }
    if (state_ == 0) {
        return state_set_ == 0;
    }
    return false;
}

// Body of 0x865784 without the lock. Dies when done with no references left, when
// the kill flag is set (+0x11c), or when the state word is -1.
bool EmitterObj::ShouldDieUnlocked() {
    if (IsDoneUnlocked() && ref_count == 0) {
        return true;
    }
    if (need_to_die_) {
        return true;
    }
    return state_ == -1;
}

}  // namespace vox
