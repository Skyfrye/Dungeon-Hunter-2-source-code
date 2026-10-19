// EmitterObj transport fades (Play, Pause, Stop) and the DSP name hand-off (SetDSPParameter,
// UpdateDSP, CleanUp).
#include <cstdio>
#include <cstring>

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
    // Play from a stopped emitter: fade toward 1.0 over 2 seconds, sub-state 1.
    vox::EmitterObj e;
    e.state_ = 0;
    e.state_set_ = 0;
    e.Play(2.0f);
    CHECK(e.state_set_ == 1);
    CHECK(e.resume_fade_.target == 1.0f);
    CHECK(e.resume_fade_.duration == 2.0f);
    CHECK(e.resume_fade_.current == 0.0f);
    CHECK(!e.resume_fade_.flag);

    // Pause while playing: sub-state 2, fade toward 0 over 1 second.
    e.state_ = 1;
    e.Pause(1.0f);
    CHECK(e.state_set_ == 2);
    CHECK(e.resume_fade_.target == 0.0f);
    CHECK(e.resume_fade_.duration == 1.0f);
    CHECK(e.resume_fade_.elapsed == 0.0f);

    // Stop from sub-state 2: sub-state 3, fade toward 0 over 0.5 seconds.
    e.Stop(0.5f);
    CHECK(e.state_set_ == 3);
    CHECK(e.resume_fade_.target == 0.0f);
    CHECK(e.resume_fade_.duration == 0.5f);

    // Stop again while in sub-state 3 with more time than the fade has left: no change.
    e.resume_fade_.elapsed = 0.0f;
    e.Stop(5.0f);
    CHECK(e.resume_fade_.duration == 0.5f);

    // Stop of an emitter that is not playing: silent end, target 1, flag set.
    vox::EmitterObj s;
    s.state_ = 0;
    s.Stop(0.25f);
    CHECK(s.state_set_ == 3);
    CHECK(s.resume_fade_.flag);
    CHECK(s.resume_fade_.duration == 0.0f);
    CHECK(s.resume_fade_.target == 1.0f);

    // Pause from sub-state 1 on a non-playing emitter: sub-state 2, silent fade with the flag.
    vox::EmitterObj p;
    p.state_ = 0;
    p.state_set_ = 1;
    p.Pause(1.0f);
    CHECK(p.state_set_ == 2);
    CHECK(p.resume_fade_.flag);
    CHECK(p.resume_fade_.target == 1.0f);

    // Pause in sub-state 2 with a fade longer than the 1 second left: no change.
    vox::EmitterObj q;
    q.state_set_ = 2;
    q.resume_fade_.target = 1.0f;
    q.resume_fade_.duration = 1.0f;
    q.resume_fade_.elapsed = 0.0f;
    q.Pause(2.0f);
    CHECK(q.resume_fade_.duration == 1.0f);
    CHECK(q.resume_fade_.target == 1.0f);

    // DSP name: parameter 0 copies the string to the pending slot; UpdateDSP applies it.
    vox::EmitterObj d;
    char reverb[] = "reverb";
    d.SetDSPParameter(0, reverb);
    CHECK(d.dsp_pending_ != nullptr);
    CHECK(d.dsp_pending_ != static_cast<void*>(reverb));
    CHECK(std::strcmp(static_cast<char*>(d.dsp_pending_), "reverb") == 0);
    d.UpdateDSP(0.1f);
    CHECK(d.dsp_pending_ == nullptr);
    CHECK(d.dsp_buffer_ != nullptr);
    CHECK(std::strcmp(static_cast<char*>(d.dsp_buffer_), "reverb") == 0);

    // Another parameter id is ignored.
    char chorus[] = "chorus";
    d.SetDSPParameter(1, chorus);
    CHECK(d.dsp_pending_ == nullptr);

    d.CleanUp();
    CHECK(d.dsp_buffer_ == nullptr);
    CHECK(d.dsp_pending_ == nullptr);

    return g_failures == 0 ? 0 : 1;
}
