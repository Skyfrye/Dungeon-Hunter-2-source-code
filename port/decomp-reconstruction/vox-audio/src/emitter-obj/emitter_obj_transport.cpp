// vox::EmitterObj transport: Play, Pause and Stop drive the resume fade record (+0x5c..+0x6c,
// the fade toward 1.0 that the original calls the resume fade) and the sub-state word (+0x94).
// Each one takes the Handlable mutex (+0x18).
#include "vox-audio/vox/emitter_obj.hpp"

namespace vox {

namespace {

// A fade with no current value and no duration, ending at target. The original stores this
// when a transport call arrives while the emitter is not playing (state word other than 1).
void SetSilentFade(VoxGainFade& fade, float target) {
    fade.current = 0.0f;
    fade.target = target;
    fade.elapsed = 0.0f;
    fade.duration = 0.0f;
    fade.flag = true;
}

}  // namespace

// 0x86e304 _ZN3vox10EmitterObj4PlayEf
// Returns the Mutex::Unlock result. A fade that was pausing (sub-state 2) starts from where it has
// reached. Otherwise it starts from 0.
int EmitterObj::Play(float fade) {
    mutex.Lock();
    if (state_set_ == 2) {
        RestartFadeWithDuration(resume_fade_, 1.0f, fade);
    } else {
        resume_fade_.current = 0.0f;
        resume_fade_.target = 1.0f;
        resume_fade_.elapsed = 0.0f;
        resume_fade_.duration = fade;
        resume_fade_.flag = false;
    }
    state_set_ = 1;
    return mutex.Unlock();
}

// 0x86e428 _ZN3vox10EmitterObj5PauseEf
// A pause during a play or stop fade (sub-state 2 or 3) only takes effect when it is shorter than
// the time left on the fade. From sub-state 1 it starts a fade toward 0 when the state word is 1,
// otherwise a silent fade to 1 with the flag set. Returns the Mutex::Unlock result.
int EmitterObj::Pause(float fade) {
    mutex.Lock();
    const int sub_state = state_set_;
    if (sub_state == 2 || sub_state == 3) {
        const float remaining = resume_fade_.duration - resume_fade_.elapsed;
        if (fade < remaining) {
            RestartFadeWithDuration(resume_fade_, 0.0f, fade);
        }
    } else if (sub_state == 1) {
        state_set_ = 2;
        if (state_ == 1) {
            RestartFadeWithDuration(resume_fade_, 0.0f, fade);
        } else {
            SetSilentFade(resume_fade_, 1.0f);
        }
    }
    return mutex.Unlock();
}

// 0x86e868 _ZN3vox10EmitterObj4StopEf
// While playing (state word 1) a stop from sub-state 3 only takes effect when it is shorter than
// the time left. Otherwise the sub-state becomes 3 and a fade toward 0 starts; with the state word
// not 1, the fade is silent. Returns the Mutex::Unlock result.
int EmitterObj::Stop(float fade) {
    mutex.Lock();
    if (state_ == 1) {
        if (state_set_ == 3) {
            const float remaining = resume_fade_.duration - resume_fade_.elapsed;
            if (fade < remaining) {
                RestartFadeWithDuration(resume_fade_, 0.0f, fade);
            }
        } else {
            state_set_ = 3;
            RestartFadeWithDuration(resume_fade_, 0.0f, fade);
        }
    } else {
        state_set_ = 3;
        SetSilentFade(resume_fade_, 1.0f);
    }
    return mutex.Unlock();
}

}  // namespace vox
