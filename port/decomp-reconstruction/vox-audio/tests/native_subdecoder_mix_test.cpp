// vox::VoxNativeSubDecoder::EmulateMixSegmentInBuffer: the gain ramp over two blocks of a
// stereo 16-bit segment (4-byte frames). The ramp ends in the second block, which resets the
// ramp words and the gain to zero, as the original's end-of-ramp block does.
#include <cstdio>

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

class TestSub : public vox::VoxNativeSubDecoderPCM {
public:
    TestSub() {
        channels_ = 2;
        bits_ = 16;
    }
    int Emulate(int bytes, vox::SegmentState* seg) { return EmulateMixSegmentInBuffer(bytes, seg); }
};
}  // namespace

int main() {
    TestSub sub;
    vox::SegmentState seg;
    seg.remaining_frames = 0;
    seg.ramp_frames = 4;
    seg.ramp_step = 1;
    seg.gain = 1000;
    seg.state = 4;

    // First block: 2 frames of a 4-frame ramp. The gain steps by one per frame.
    CHECK(sub.Emulate(8, &seg) == 1);
    CHECK(seg.ramp_frames == 2);
    CHECK(seg.gain == 1002);

    // Second block: the remaining 2 frames finish the ramp; the words are cleared.
    CHECK(sub.Emulate(16, &seg) == 1);
    CHECK(seg.ramp_frames == 0);
    CHECK(seg.ramp_step == 0);
    CHECK(seg.gain == 0);
    CHECK(seg.remaining_frames == 0);
    CHECK(seg.state == 4);

    std::printf("native_subdecoder_mix_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
