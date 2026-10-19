// vox::VoxNativeSubDecoder segment bookkeeping (SwapOldAndCurrentSegments, StopSegment,
// IsExtraSegmentNeeded, GetNextDyingSegmentLifeState), the state copies, and the base
// NativeSubDecoderState constructor.
#include <cstdio>

#include "vox-audio/vox/native_playlist.hpp"
#include "vox-audio/vox/native_sub_decoder.hpp"
#include "vox-audio/vox/native_sub_decoder_state.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {
// Friend accessor for the private words of PlaylistElement (offset 0x00, 0x04, 0x08, 0x0c).
struct PlaylistElementTestAccess {
    static std::int32_t& Word(PlaylistElement& e, int offset) {
        switch (offset) {
            case 0x00: return e.field_00_;
            case 0x04: return e.field_04_;
            case 0x08: return e.field_08_;
            case 0x0c: return e.field_0c_;
            default: return e.field_10_;
        }
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

// Exposes the protected fields the reconstructed bodies read.
class TestSub : public vox::VoxNativeSubDecoder {
public:
    TestSub() {
        channels_ = 2;
        bits_ = 16;
    }
    std::int32_t& PrevWord(int offset) {
        return vox::PlaylistElementTestAccess::Word(prev_element_, offset);
    }
    std::int32_t& CurrentWord(int offset) {
        return vox::PlaylistElementTestAccess::Word(current_element_, offset);
    }
    void SetActive(int count) { active_segments_ = count; }
    int Active() const { return active_segments_; }
    int NextEvent() const { return next_event_; }
    void SetMode(std::uint16_t value) { mode_ = value; }
    vox::SegmentState& Seg(int i) { return segments_[i]; }
    void SetField38(int value) { field_38_ = value; }
    void SetStates(vox::States* states) { states_ = states; }
    void SetTransitions(vox::VoxVector<vox::VoxVector<vox::TransitionParams>>* transitions) {
        transitions_ = transitions;
    }
    int Field3c() const { return field_3c_; }
    int Field48() const { return field_48_; }
    int Field90() const { return field_90_; }
    int ResetPending() const { return reset_pending_; }
    bool HasData() const { return has_data_; }
    int Field34() const { return field_34_; }
    // Pure virtual slots of the base class. The decoders are not part of this test, so each
    // slot reports an empty decode.
    int Seek(unsigned int) override { return 0; }
    int DecodeCurrentSegmentWithOffset(void*, int) override { return 0; }
    int DecodeSegment(void*, int, vox::SegmentState*) override { return 0; }
    unsigned int GetBytePositionFromSampleOffset(unsigned int) override { return 0; }
    int GetDecodingBuffer() override { return -1; }
    void ReleaseDecodingBuffer(int) override {}
    int Seek(int, vox::SegmentState*) override { return 0; }
    void SetDecodingBufferToSegmentPosition(vox::SegmentState*) override {}
    int EmulateDecodeCurrentSegmentWithOffset(int) override { return 0; }
    int EmulateDecodeSegment(int, vox::SegmentState*) override { return 0; }
};

}  // namespace

int main() {
    // A fresh base: no segment is playing, so nothing needs an extra segment and the next
    // dying segment is the stopped one.
    TestSub sub;
    CHECK(sub.Active() == 0);
    CHECK(sub.IsExtraSegmentNeeded(nullptr) == true);
    CHECK(sub.GetNextDyingSegmentLifeState() == 2);

    // IsExtraSegmentNeeded with a rule: a plain rule needs an extra segment only when its
    // length is positive; a looped rule (type 6) always does.
    sub.SetActive(1);
    vox::TransitionRule plain;
    plain.type_ = 0;
    plain.length_ = 0.5f;
    CHECK(sub.IsExtraSegmentNeeded(&plain) == true);
    plain.length_ = 0.0f;
    CHECK(sub.IsExtraSegmentNeeded(&plain) == false);
    vox::TransitionRule looped;
    looped.type_ = 6;
    CHECK(sub.IsExtraSegmentNeeded(&looped) == true);
    // Without a rule, the previous element's word 3 or the current element's word 2 decides.
    CHECK(sub.IsExtraSegmentNeeded(nullptr) == false);
    sub.CurrentWord(0x08) = 1;
    CHECK(sub.IsExtraSegmentNeeded(nullptr) == true);

    // GetNextDyingSegmentLifeState with one segment playing returns 2 at once.
    CHECK(sub.GetNextDyingSegmentLifeState() == 2);

    // SwapOldAndCurrentSegments exchanges records 1 and 2 and sets their kinds.
    TestSub swap;
    swap.Seg(1).chunk_index = 5;
    swap.Seg(2).chunk_index = 7;
    swap.SwapOldAndCurrentSegments();
    CHECK(swap.Seg(1).chunk_index == 7);
    CHECK(swap.Seg(2).chunk_index == 5);
    CHECK(swap.Seg(1).play_mode == 2);
    CHECK(swap.Seg(2).play_mode == 1);

    // StopSegment clears the record, takes an active segment out of the count, and keeps
    // the buffer id.
    TestSub stop;
    stop.SetActive(2);
    stop.Seg(0).state = 1;
    stop.Seg(0).chunk_index = 3;
    stop.Seg(0).gain = 1234;
    stop.Seg(0).decoding_slot = 4;
    stop.Seg(0).play_mode = 1;
    stop.StopSegment(&stop.Seg(0));
    CHECK(stop.Active() == 1);
    CHECK(stop.Seg(0).state == 2);
    CHECK(stop.Seg(0).chunk_index == -1);
    CHECK(stop.Seg(0).play_mode == 0);
    CHECK(stop.Seg(0).gain == 0);
    CHECK(stop.Seg(0).entry_count == 1);
    CHECK(stop.Seg(0).decoding_slot == 4);
    CHECK(stop.HasData() == false);

    // MixSegmentInBuffer: 16 bytes of stereo 16-bit audio are 4 frames. With no gain ramp,
    // the original zeroes the remaining count at the end of the call (the `!v17` block).
    // The first call skips the 4 frames (remaining 10 covers them); a play mode of 3 sets
    // the state to 1.
    TestSub mix;
    std::int16_t src[16] = {};
    vox::VoxNativeSubDecoder::s_pMixingBuffer = VoxAlloc(64 * sizeof(std::int32_t));
    vox::SegmentState seg;
    seg.remaining_frames = 10;
    seg.play_mode = 3;
    mix.MixSegmentInBuffer(src, 16, &seg);
    CHECK(seg.remaining_frames == 0);
    CHECK(seg.state == 1);
    seg.remaining_frames = 2;
    mix.MixSegmentInBuffer(src, 16, &seg);
    CHECK(seg.remaining_frames == 0);

    // UpdateCurrentSegmentState with no current element: segment C is marked, and with no
    // rule its ramp words are cleared.
    TestSub update;
    update.CurrentWord(0x00) = -1;
    update.Seg(2).ramp_frames = 9;
    update.UpdateCurrentSegmentState(nullptr, false);
    CHECK(update.Seg(2).state == 4);
    CHECK(update.Seg(2).entry_count == 1);
    CHECK(update.Seg(2).entries_left == 1);
    CHECK(update.Seg(2).ramp_frames == 0);
    CHECK(update.NextEvent() == -1);

    // EmulateDecode and Decode with nothing playing mix nothing and stop nothing. A mode 17
    // decoder marks a segment in state 3.
    TestSub idle;
    CHECK(idle.EmulateDecode(64) == 0);
    CHECK(idle.Decode(nullptr, 64) == 0);
    idle.SetMode(17);
    idle.Seg(0).state = 3;
    idle.EmulateDecode(64);
    CHECK(idle.Seg(0).reset_pending);

    // SetState(int) stores the index, looks transitions_[field_38_][index] up for field_90_ and
    // the byte at +0x4c, and stores states_[index] into field_48_ (the playlist id). The entry's
    // value is -1 so the dispatch takes neither the rule branch nor UpdateSegmentsStates, which
    // would need the playlist manager this fixture does not have.
    TestSub indexed;
    vox::States states = {10, 11, 12, 13, 14};
    vox::TransitionParams params;
    params.value_ = -1;
    params.flag_ = 1;
    vox::VoxVector<vox::VoxVector<vox::TransitionParams>> transitions(1);
    transitions[0].assign(5, params);
    indexed.SetStates(&states);
    indexed.SetTransitions(&transitions);
    indexed.SetField38(0);
    indexed.SetState(4);
    CHECK(indexed.Field3c() == 4);
    CHECK(indexed.Field48() == 14);
    CHECK(indexed.Field90() == -1);
    CHECK(indexed.ResetPending() == 1);

    // NativeSubDecoderState: the constructor builds the defaults and the copies carry the
    // words across.
    vox::NativeSubDecoderState first(nullptr);
    CHECK(first.segments_[0].chunk_index == -1);
    CHECK(first.segments_[0].state == 2);
    
    CHECK(first.segments_[2].decoding_slot == -1);
    CHECK(first.playlists_ != nullptr);
    first.field_08_ = 11;
    first.field_68_ = 2;
    first.segments_[1].chunk_index = 6;
    first.has_data_ = true;

    TestSub copy;
    copy.SetState(&first);
    CHECK(copy.Field34() == 11);
    CHECK(copy.Active() == 2);
    CHECK(copy.Seg(1).chunk_index == 6);
    CHECK(copy.HasData() == true);

    vox::NativeSubDecoderState second(nullptr);
    copy.GetState(&second);
    CHECK(second.field_08_ == 11);
    CHECK(second.field_68_ == 2);
    CHECK(second.segments_[1].chunk_index == 6);
    CHECK(second.has_data_ == true);

    std::printf("native_subdecoder_base_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
