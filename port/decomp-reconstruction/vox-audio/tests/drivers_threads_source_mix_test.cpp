// vox::DriverCallbackSourceInterface's four mixers (0x88fdd4, 0x89278c, 0x891860, 0x892bd0):
// drives a ramped pass across a two-buffer ring so the ramp hand-off paths the listing has at
// loc_8900AC (stereo, no interpolation) and loc_892AE0 (mono, no interpolation) really run, and
// a one-buffer ramped pass so the level reloads at loc_891A78 (stereo, interpolating) and
// loc_892F40 (mono, interpolating) are exercised. The listener state is the constructor's (all
// zero) with distance model 0, so GetDistanceGain and GetDirectionalGain return unity, the pan
// gains are 11585 each and every mix target is 11585.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
struct DriverCallbackSourceInterfaceTestAccess {
    static void SetState(DriverCallbackSourceInterface& d, int state) { d.state_ = state; }
    static void SetRing(DriverCallbackSourceInterface& d, DriverBuffer* begin, int count) {
        d.buffers_begin_ = begin;
        d.buffers_end_ = begin + count;
        d.buffers_capacity_ = begin + count;
        d.buffer_count_ = count;
    }
    static void SetWriteIndex(DriverCallbackSourceInterface& d, int index) { d.write_index_ = index; }
    static int WriteIndex(const DriverCallbackSourceInterface& d) { return d.write_index_; }
    // The ring lives on this test's stack, so the destructor must not see it as its own
    // allocation (it would VoxFree a stack address).
    static void ClearRing(DriverCallbackSourceInterface& d) {
        d.buffers_begin_ = nullptr;
        d.buffers_end_ = nullptr;
        d.buffers_capacity_ = nullptr;
        d.buffer_count_ = 0;
    }
    static void SetRamp(DriverCallbackSourceInterface& d, int ramp, int gain, int left, int right) {
        d.ramp_samples_ = ramp;
        d.field_28_ = gain;
        d.field_2c_ = left;
        d.field_30_ = right;
        d.ramp_started_ = true;
    }
    static void SetScale(DriverCallbackSourceInterface& d, int scale) { d.scale_ = scale; }
    static int CurrentLevel(const DriverCallbackSourceInterface& d) { return d.field_2c_; }
    static int CurrentLevelRight(const DriverCallbackSourceInterface& d) { return d.field_30_; }
    static int ByteOffset(const DriverCallbackSourceInterface& d) { return d.byte_offset_; }
    static void MixStereoNoInter(DriverCallbackSourceInterface& d, int* out, int count) {
        d.FillBufferStereo16NoInter(out, count);
    }
    static void MixMonoNoInter(DriverCallbackSourceInterface& d, int* out, int count) {
        d.FillBufferMono16NoInter(out, count);
    }
    static void MixStereo(DriverCallbackSourceInterface& d, int* out, int count) {
        d.FillBufferStereo16(out, count);
    }
    static void MixMono(DriverCallbackSourceInterface& d, int* out, int count) {
        d.FillBufferMono16(out, count);
    }
};
}  // namespace vox

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

constexpr int kQ14 = 0x4000;
constexpr int kPan = 11585;  // GetStereoPanning with the listener at the origin

// The ring lives on this test's stack, so detach it before the source is destroyed: the
// destructor VoxFrees buffers_begin_, and a stack address would be a free() of a stack address.
struct RingGuard {
    explicit RingGuard(vox::DriverCallbackSourceInterface& d) : d_(d) {}
    ~RingGuard() { vox::DriverCallbackSourceInterfaceTestAccess::ClearRing(d_); }
    vox::DriverCallbackSourceInterface& d_;
};

// Stereo frames: left 0x4000, right 0x2000, twice; the same in the second buffer.
std::int16_t g_pcm[2][4] = {{0x4000, 0x2000, 0x4000, 0x2000}, {0x4000, 0x2000, 0x4000, 0x2000}};
// Mono frames: 0x4000, 0x2000.
std::int16_t g_mono[2] = {0x4000, 0x2000};
}  // namespace

int main() {
    using vox::DriverBuffer;
    using vox::DriverCallbackSourceInterface;
    using vox::DriverCallbackSourceInterfaceTestAccess;

    const std::int32_t stereo_format[4] = {2, 44100, 16, 0};  // buffer_bytes_ = 4
    const std::int32_t mono_format[4] = {1, 44100, 16, 0};    // buffer_bytes_ = 2

    // --- 0x88fdd4 FillBufferStereo16NoInter: a ramp across a buffer boundary. ----------------
    {
        DriverCallbackSourceInterface source(stereo_format, nullptr, 1);
        DriverBuffer ring[2];
        ring[0].data_ = g_pcm[0];
        ring[0].size_ = 8;  // two stereo frames
        ring[1].data_ = g_pcm[1];
        ring[1].size_ = 8;
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 2);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        // ramp_samples_ 4 from field_2c_ 0 to field_28_ 0x4000 over a request of 4 frames gives
        // ramp_len 4, ramp_down_at 5 and step 4096. Frames 0 and 1 come from buffer 0 at levels
        // 4096 and 8192; the buffer then ends, loc_8900AC reloads the level to field_28_, and the
        // remaining frames come from buffer 1 with the frame counter continued at 2, so they use
        // 16384 + step and 16384 + 2 * step.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 4, kQ14, 0, 0);
        int out[8] = {};
        DriverCallbackSourceInterfaceTestAccess::MixStereoNoInter(source, out, 4);
        CHECK(out[0] == 4096);
        CHECK(out[1] == 2048);
        CHECK(out[2] == 8192);
        CHECK(out[3] == 4096);
        CHECK(out[4] == 20480);
        CHECK(out[5] == 10240);
        CHECK(out[6] == 24576);
        CHECK(out[7] == 12288);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == kQ14);
        CHECK(DriverCallbackSourceInterfaceTestAccess::ByteOffset(source) == 16);
        CHECK(ring[0].ready_ == 1);
        CHECK(ring[0].field_10_ == 0);  // the whole buffer went in one pass
        CHECK(DriverCallbackSourceInterfaceTestAccess::WriteIndex(source) == 0);
    }

    // --- 0x89278c FillBufferMono16NoInter: the same ramp on the mono path. -------------------
    {
        DriverCallbackSourceInterface source(mono_format, nullptr, 1);
        DriverBuffer ring[1];
        ring[0].data_ = g_mono;
        ring[0].size_ = 4;  // two mono frames
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 1);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        // count 2 <= available 2 gives ramp_down_at 3, down_len 0 and ramp_len 3, so both pan
        // targets are 11585 and each step is (11585 - 0) / 3 = 3861. Levels 3861 then 7722, and
        // loc_892AE0 reloads both from the targets, which is what a subsequent pass would use.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 8, kQ14, 0, 0);
        int out[4] = {};
        DriverCallbackSourceInterfaceTestAccess::MixMonoNoInter(source, out, 2);
        CHECK(out[0] == 3861);
        CHECK(out[1] == 3861);
        CHECK(out[2] == 3861);
        CHECK(out[3] == 3861);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == kPan);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevelRight(source) == kPan);
        CHECK(DriverCallbackSourceInterfaceTestAccess::ByteOffset(source) == 4);
        CHECK(ring[0].ready_ == 1);
    }

    // --- 0x89278c: the no-ramp path keeps its own levels and never reloads them. -------------
    {
        DriverCallbackSourceInterface source(mono_format, nullptr, 1);
        DriverBuffer ring[1];
        ring[0].data_ = g_mono;
        ring[0].size_ = 4;
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 1);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        // ramp_samples_ 0 leaves ramp_len 0, so both steps are 0 and the edge flag is clear: the
        // plain loc_892974 loop mixes with field_2c_ / field_30_ exactly as loaded, and only the
        // first pass through loc_892B94 would have replaced them with the pan targets.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 0, kQ14, kPan, kPan);
        int out[4] = {};
        DriverCallbackSourceInterfaceTestAccess::MixMonoNoInter(source, out, 2);
        CHECK(out[0] == ((0x4000 * kPan) >> 14));
        CHECK(out[1] == ((0x4000 * kPan) >> 14));
        CHECK(out[2] == ((0x2000 * kPan) >> 14));
        CHECK(out[3] == ((0x2000 * kPan) >> 14));
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == kPan);
    }

    // --- 0x891860 FillBufferStereo16: a ramped, interpolating pass. --------------------------
    {
        DriverCallbackSourceInterface source(stereo_format, nullptr, 1);
        DriverBuffer ring[1];
        ring[0].data_ = g_pcm[0];
        ring[0].size_ = 8;
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 1);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        DriverCallbackSourceInterfaceTestAccess::SetScale(source, kQ14);
        // count 2 <= available 2 gives ramp_len 3 and step (0x4000 - 0) / 3 = 5461; the scratch
        // holds the two frames copied out of the ring, the fraction is 0, and loc_891A78 sets
        // field_2c_ to field_28_ at the end of the pass.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 8, kQ14, 0, 0);
        int out[4] = {};
        DriverCallbackSourceInterfaceTestAccess::MixStereo(source, out, 2);
        CHECK(out[0] == 5461);
        CHECK(out[1] == 2730);
        CHECK(out[2] == 10922);
        CHECK(out[3] == 5461);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == kQ14);
        // The interpolating mixers leave byte_offset_ to GetWorkData: the request was 20 stereo
        // bytes, 8 were copied out of the ring and the remainder ran into the released buffer,
        // so the offset is 8.
        CHECK(DriverCallbackSourceInterfaceTestAccess::ByteOffset(source) == 8);
        CHECK(ring[0].ready_ == 1);
    }

    // --- 0x892bd0 FillBufferMono16: a ramped, interpolating pass. ---------------------------
    {
        DriverCallbackSourceInterface source(mono_format, nullptr, 1);
        DriverBuffer ring[1];
        ring[0].data_ = g_mono;
        ring[0].size_ = 4;
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 1);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        DriverCallbackSourceInterfaceTestAccess::SetScale(source, kQ14);
        // Same ramp_len 3 and step 3861 as the non-interpolating mono case; loc_892F40 reloads
        // both levels from the targets (11585) before loc_892E08 stores them, so a pass that
        // ramped must not leave the ramped values (3861 / 7722) in field_2c_ / field_30_.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 8, kQ14, 0, 0);
        int out[4] = {};
        DriverCallbackSourceInterfaceTestAccess::MixMono(source, out, 2);
        CHECK(out[0] == 3861);
        CHECK(out[1] == 3861);
        CHECK(out[2] == 3861);
        CHECK(out[3] == 3861);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == kPan);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevelRight(source) == kPan);
        // GetWorkData copied 4 mono bytes out of the ring and the mixer does not advance the
        // offset itself, so it stays 4.
        CHECK(DriverCallbackSourceInterfaceTestAccess::ByteOffset(source) == 4);
        CHECK(ring[0].ready_ == 1);
    }

    // --- 0x892bd0: the no-ramp path stores the levels it loaded, not the targets. -----------
    {
        DriverCallbackSourceInterface source(mono_format, nullptr, 1);
        DriverBuffer ring[1];
        ring[0].data_ = g_mono;
        ring[0].size_ = 4;
        DriverCallbackSourceInterfaceTestAccess::SetRing(source, ring, 1);
        RingGuard guard(source);
        DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
        DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
        DriverCallbackSourceInterfaceTestAccess::SetScale(source, kQ14);
        // ramp_samples_ 0 and ramp_started_ set: ramp_len 0, both steps 0 and no edge, so the
        // plain loc_892DAC loop runs with field_2c_ unchanged at 0 and loc_892F40 is not reached.
        DriverCallbackSourceInterfaceTestAccess::SetRamp(source, 0, kQ14, 0, 0);
        int out[4] = {};
        DriverCallbackSourceInterfaceTestAccess::MixMono(source, out, 2);
        CHECK(out[0] == 0);
        CHECK(out[1] == 0);
        CHECK(out[2] == 0);
        CHECK(out[3] == 0);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevel(source) == 0);
        CHECK(DriverCallbackSourceInterfaceTestAccess::CurrentLevelRight(source) == 0);
    }

    std::printf("drivers_threads_source_mix_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
