// vox::VoxNativeSubDecoder flag and the PCM sub-decoder's byte position and stubs.
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

// Exposes the protected fields the recovered accessors read.
class TestPcm : public vox::VoxNativeSubDecoderPCM {
public:
    void SetBytesPerSample(std::int16_t bytes) { bytes_per_sample_ = bytes; }
    void SetHasData(bool on) { has_data_ = on; }
};
}  // namespace

int main() {
    TestPcm pcm;
    CHECK(!pcm.HasData());
    pcm.SetHasData(true);
    CHECK(pcm.HasData());

    pcm.SetBytesPerSample(2);
    CHECK(pcm.GetBytePositionFromSampleOffset(0) == 0);
    CHECK(pcm.GetBytePositionFromSampleOffset(1000) == 2000);

    // Stubs in the original: fixed return values or no effect.
    CHECK(pcm.Seek(123) == 0);
    CHECK(pcm.GetDecodingBuffer() == -1);
    pcm.ReleaseDecodingBuffer(0);
    pcm.SetDecodingBufferToSegmentPosition(nullptr);

    std::printf("native_sub_decoder_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
