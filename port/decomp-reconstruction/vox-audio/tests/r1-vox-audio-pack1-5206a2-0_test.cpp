// vox::VoxNativeSubDecoder::UpdateOldSegmentState (0x8847e8): the zero branch, the frame
// count from the rule, the loop-list element for rule types 4 and 5, the negative-frame
// pull-back and the gain ramp.
#include <cstdio>
#include <vector>

#include "vox-audio/vox/native_containers.hpp"
#include "vox-audio/vox/native_sub_decoder.hpp"

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

// Exposes the protected words the old-segment code reads and writes. The pure virtual
// decode slots are not used by UpdateOldSegmentState and return zero.
class OldSegmentSub : public vox::VoxNativeSubDecoder {
public:
    int Seek(unsigned int) override { return 0; }
    int DecodeCurrentSegmentWithOffset(void*, int) override { return 0; }
    int DecodeSegment(void*, int, vox::SegmentState*) override { return 0; }
    unsigned int GetBytePositionFromSampleOffset(unsigned int) override { return 0; }
    int GetDecodingBuffer() override { return 0; }
    void ReleaseDecodingBuffer(int) override {}
    int Seek(int, vox::SegmentState*) override { return 0; }
    void SetDecodingBufferToSegmentPosition(vox::SegmentState*) override {}
    int EmulateDecodeCurrentSegmentWithOffset(int) override { return 0; }
    int EmulateDecodeSegment(int, vox::SegmentState*) override { return 0; }

    vox::SegmentState& Seg(int i) { return segments_[i]; }
    void SetFrameWord(std::int32_t value) { field_0c_ = value; }
    void SetLoopLists(vox::VoxVector<vox::VoxVector<std::int32_t>>* lists) { loop_lists_ = lists; }
};

// Builds the current record (segments_[2]) and the rule, then runs the update.
struct Fixture {
    OldSegmentSub sub;
    vox::VoxVector<vox::VoxVector<std::int32_t>> lists;
    vox::TransitionRule rule;

    Fixture() {
        sub.SetFrameWord(100);
        sub.SetLoopLists(&lists);
        vox::SegmentState& current = sub.Seg(2);
        current.chunk_index = 0;
        current.sample_position = 15;
        current.field_2c = 5;
        current.gain = 1000;
        current.entries_left = 0;
        current.state = 2;
        rule.length_ = 0.5f;   // 100 * 0.5 = 50 frames
        rule.field_1c_ = 1.0f; // 100 * 1.0 = 100
        rule.flag_0c_ = 0;
        rule.type_ = 0;
    }
};

void TestNullRuleZeroesOldRecord() {
    Fixture f;
    f.sub.Seg(2).chunk_index = 3;
    f.sub.UpdateOldSegmentState(nullptr);
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.play_mode == 2);
    CHECK(old.chunk_index == 3);
    CHECK(old.gain == 0);
    CHECK(old.remaining_frames == 0);
    CHECK(old.field_2c == 0);
    CHECK(old.ramp_frames == 0);
    CHECK(old.ramp_step == 0);
    CHECK(old.entries_left == 1);
    CHECK(old.state == 4);
    CHECK(old.entry_count == 1);
}

void TestZeroFrameRuleZeroesAndKeepsFlag() {
    Fixture f;
    f.rule.length_ = 0.0f;
    f.rule.flag_0c_ = 1;
    f.sub.UpdateOldSegmentState(&f.rule);
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.restart_at_end == 1);
    CHECK(old.field_2c == 0);
    CHECK(old.gain == 0);
    CHECK(old.state == 4);
    CHECK(old.entries_left == 1);
}

void TestPlainRuleRampsFromCurrentGain() {
    Fixture f;
    f.sub.UpdateOldSegmentState(&f.rule);
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.play_mode == 2);
    CHECK(old.field_2c == 50);
    CHECK(old.remaining_frames == 100);
    CHECK(old.ramp_frames == 50);
    CHECK(old.gain == 1000);
    CHECK(old.ramp_step == -20);       // -1000 / 50
    CHECK(old.state == 2);             // copied from the current record, not reset
    CHECK(old.entries_left == 0);
}

void TestCurrentWithoutFramesRampsFromUnity() {
    Fixture f;
    f.sub.Seg(2).field_2c = 0;         // v5 == 0: the gain becomes 0x40000000
    f.sub.UpdateOldSegmentState(&f.rule);
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.gain == 0x40000000);
    CHECK(old.ramp_step == -0x40000000 / 50);
}

void TestLoopElementAfterPositionForTypeFour() {
    Fixture f;
    f.lists = {{10, 20, 30}};
    f.rule.type_ = 4;
    f.rule.flag_0c_ = 1;
    f.sub.UpdateOldSegmentState(&f.rule);
    const vox::SegmentState& old = f.sub.Seg(1);
    // element 20 is the first past position 15: remaining = 100 + (20 - 15) = 105.
    CHECK(old.remaining_frames == 105);
    // reset flag set: candidate = 1 - 20 + 30 = 11, below the 50 frames, so it replaces them.
    CHECK(old.field_2c == 11);
    CHECK(old.ramp_frames == 11);
    CHECK(old.ramp_step == -1000 / 11);
    CHECK(old.entries_left == 1);
    CHECK(old.entry_count == 1);
    CHECK(old.state == 4);
}

void TestTypeFiveNeedsFourElements() {
    Fixture f;
    f.lists = {{10, 20, 30}};
    f.rule.type_ = 5;
    f.sub.UpdateOldSegmentState(&f.rule);
    // Three elements: type 5 finds nothing, so the element is 0 and remaining = 100 - 15.
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.remaining_frames == 85);
    CHECK(old.entries_left == 1);
    CHECK(old.state == 4);
}

void TestNegativeRemainingPullsFramesToZero() {
    Fixture f;
    f.rule.field_1c_ = -1.0f;          // remaining = -100
    f.sub.UpdateOldSegmentState(&f.rule);
    const vox::SegmentState& old = f.sub.Seg(1);
    CHECK(old.remaining_frames == 0);
    CHECK(old.field_2c == 0);
    CHECK(old.ramp_frames == 0);
    CHECK(old.ramp_step == 0);         // a zero divisor gives zero
}

}  // namespace

int main() {
    TestNullRuleZeroesOldRecord();
    TestZeroFrameRuleZeroesAndKeepsFlag();
    TestPlainRuleRampsFromCurrentGain();
    TestCurrentWithoutFramesRampsFromUnity();
    TestLoopElementAfterPositionForTypeFour();
    TestTypeFiveNeedsFourElements();
    TestNegativeRemainingPullsFramesToZero();
    if (g_failures == 0) {
        std::printf("r1-vox-audio-pack1-5206a2-0 test: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
