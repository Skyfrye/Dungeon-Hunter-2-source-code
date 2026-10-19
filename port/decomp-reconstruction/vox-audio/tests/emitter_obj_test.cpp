// EmitterObj accessors: gain modifier, ready flag, group mask, state and user data.
#include <cstdint>
#include <cstdio>
#include <limits>

#include "vox-audio/vox/emitter_obj.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)
}  // namespace

int main() {
    vox::EmitterObj e;

    e.SetGainModifier(0.5f);
    CHECK(e.gain_modifier_ == 0.5f);

    // IsReady is the inverted busy byte at +0x1c.
    e.ready_flag_ = 0;
    CHECK(e.IsReady());
    e.ready_flag_ = 1;
    CHECK(!e.IsReady());

    e.SetGroup(3);
    CHECK(e.GetGroup() == 3);
    CHECK(e.IsGroup(1u << 3));
    CHECK(!e.IsGroup(1u << 2));
    CHECK(e.IsGroup((1u << 3) | 1u));

    e.SetState(7);
    CHECK(e.state_set_ == 7);   // SetState writes +0x94
    CHECK(e.GetState() == 0);   // GetState reads +0x90, as the original does
    e.state_ = 5;
    CHECK(e.GetState() == 5);

    e.SetLoop(true);
    CHECK(e.loop_ == 1);        // SetLoop writes +0x8d
    CHECK(!e.GetLoop());        // GetLoop reads +0x8c, as the original does
    e.loop_read_ = 1;
    CHECK(e.GetLoop());

    e.Reset();
    CHECK(e.reset_flag_ == 1);

    std::uintptr_t word = 0xabcd;
    e.SetUserData(word);
    CHECK(e.user_data_ == 0xabcd);


    // 3D parameters: ids 8/9/10 are the position/velocity/direction vectors, 1..7 floats.
    vox::EmitterObj p;
    p.SetDefaultParameters();
    CHECK(p.dirty_[8] == 1 && p.dirty_[9] == 1 && p.dirty_[10] == 1);
    CHECK(p.float_params_[1] == 100.0f);  // parameter 2
    CHECK(p.float_params_[2] == 1.0f);    // parameter 3
    CHECK(p.float_params_[3] == 360.0f);  // parameter 4
    CHECK(p.float_params_[4] == 360.0f);  // parameter 5
    CHECK(p.float_params_[0] == std::numeric_limits<float>::max());  // parameter 1
    float px = 9.0f, py = 9.0f, pz = 9.0f;
    p.Get3DParameter3f(8, px, py, pz);
    CHECK(px == 0.0f && py == 0.0f && pz == 0.0f);

    p.Set3DParameter3f(9, 1.0f, 2.0f, 3.0f);  // velocity
    vox::VoxVector3f v;
    p.Get3DParameterfv(9, v);
    CHECK(v.x == 1.0f && v.y == 2.0f && v.z == 3.0f);
    p.Get3DParameterfv(10, v);                // direction is untouched
    CHECK(v.x == 0.0f && v.y == 0.0f && v.z == 0.0f);

    p.Set3DParameterf(3, 0.25f);              // parameter 3 is float_params_[2]
    float f = 0.0f;
    p.Get3DParameterf(3, f);
    CHECK(f == 0.25f);
    p.Set3DParameterf(8, 5.0f);               // not a float id: no effect
    p.Get3DParameterf(8, f);
    CHECK(f == 0.25f);

    p.Set3DParameteri(0, 42);
    int iv = 0;
    p.Get3DParameteri(0, iv);
    CHECK(iv == 42 && p.dirty_[0] == 1);

    // Done/alive: a fresh emitter (state 0, state_set 0) is done with no references,
    // so it should die. A held reference keeps it alive until NeedToDie is set.
    vox::EmitterObj d;
    CHECK(d.IsDone());
    CHECK(d.ShouldDie());
    CHECK(!d.IsAlive());
    d.ref_count = 1;
    CHECK(!d.ShouldDie());
    CHECK(d.IsAlive());
    d.NeedToDie();
    CHECK(d.ShouldDie());
    d.SetState(1);                           // writes state_set_ (+0x94)
    CHECK(d.state_set_ == 1);
    CHECK(d.IsPlaying());                    // state_set_ == 1 counts as playing
    d.SetAutoKillAfterDone(true);
    CHECK(d.auto_kill_);

    // Gain fade (SetGain 0x86bb24): the raw gain is kept and not clamped, the fade starts from
    // where the previous one has reached, and the duration is the time as given (no +0.001).
    vox::EmitterObj g;
    g.SetGain(0.5f, 2.0f);
    CHECK(g.requested_gain_ == 0.5f);
    CHECK(g.gain_fade_.current == 0.0f);
    CHECK(g.gain_fade_.target == 0.5f);
    CHECK(g.gain_fade_.duration == 2.0f);
    CHECK(g.gain_fade_.elapsed == 0.0f && !g.gain_fade_.flag);
    CHECK(g.GetGain() == 0.0f);              // GetGain reads gain_ (+0x3c), which SetGain leaves alone
    g.gain_fade_.elapsed = 1.0f;             // as the update would advance it
    g.SetGain(3.0f, 4.0f);                   // above 1: not clamped
    CHECK(g.requested_gain_ == 3.0f && g.gain_fade_.target == 3.0f);
    CHECK(g.gain_fade_.current == 0.25f);    // 0 + 1 * (0.5 - 0) / 2
    CHECK(g.gain_fade_.duration == 4.0f && g.gain_fade_.elapsed == 0.0f);
    g.SetGain(1.0f, 0.0f);                   // the old fade has a duration, so current is still computed
    CHECK(g.gain_fade_.current == 0.25f);
    g.SetGain(0.0f, 0.0f);                   // zero elapsed and zero duration: current is the target
    CHECK(g.gain_fade_.current == 1.0f);
    CHECK(g.gain_fade_.target == 0.0f);

    // Pitch fade (SetPitch 0x86bc40): raw pitch at +0x74 and the fade target at +0x7c.
    vox::EmitterObj pf;
    pf.SetPitch(2.0f, 1.5f);
    CHECK(pf.pitch_ == 2.0f && pf.GetPitch() == 2.0f);
    CHECK(pf.pitch_fade_.target == 2.0f && pf.pitch_fade_.duration == 1.5f);
    CHECK(pf.pitch_fade_.current == 0.0f);

    // Resume (0x86c1d4): a paused emitter (sub-state 2) plays again and fades to 1.0.
    vox::EmitterObj r;
    r.state_set_ = 2;
    r.Resume(0.5f);
    CHECK(r.state_set_ == 1);
    CHECK(r.resume_fade_.target == 1.0f && r.resume_fade_.duration == 0.5f);
    CHECK(!r.resume_fade_.flag);
    vox::EmitterObj r_busy;                  // sub-state 3 with state 2 is not resumed
    r_busy.state_ = 2;
    r_busy.state_set_ = 3;
    r_busy.Resume(0.5f);
    CHECK(r_busy.state_set_ == 3 && r_busy.resume_fade_.duration == 0.0f);
    // GetStatus reads the resume flag while the state is 1: flag set reports 2.
    r.state_ = 1;
    r.resume_fade_.flag = true;
    CHECK(r.GetStatus() == 2);
    r.resume_fade_.flag = false;
    CHECK(r.GetStatus() == 0x11);            // sub-state 1 while playing

    // Interactive music state name (0x866abc): the flag is set and the name kept.
    vox::EmitterObj im;
    im.SetInteractiveMusicStateChange("combat");
    CHECK(im.interactive_state_set_ && im.interactive_state_ == "combat");

    std::printf("emitter_obj_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
