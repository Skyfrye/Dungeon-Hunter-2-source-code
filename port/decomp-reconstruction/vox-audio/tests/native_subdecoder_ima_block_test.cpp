// VoxNativeSubDecoderIMAADPCM block bookkeeping: byte position from a sample offset, the
// decoding-buffer slots, and the frame count of one emulated block.
#include <cstdint>
#include <cstdio>

#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

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

class TestIma : public vox::VoxNativeSubDecoderIMAADPCM {
public:
    void Setup(vox::NativeChunks* chunks, int frames_per_block, std::int16_t block_bytes,
               std::int16_t channels) {
        chunks_ = chunks;
        frames_per_block_ = frames_per_block;
        bytes_per_sample_ = block_bytes;
        channels_ = channels;
    }
};
}  // namespace

int main() {
    // Byte position: block bytes times the number of whole blocks before the sample.
    TestIma ima;
    ima.Setup(nullptr, 100, 36, 1);
    CHECK(ima.GetBytePositionFromSampleOffset(0) == 0);
    CHECK(ima.GetBytePositionFromSampleOffset(99) == 0);
    CHECK(ima.GetBytePositionFromSampleOffset(250) == 72);

    // Decoding slots: the first three claims succeed, the fourth fails, a release frees one.
    CHECK(ima.GetDecodingBuffer() == 0);
    CHECK(ima.GetDecodingBuffer() == 1);
    CHECK(ima.GetDecodingBuffer() == 2);
    CHECK(ima.GetDecodingBuffer() == -1);
    ima.ReleaseDecodingBuffer(1);
    CHECK(ima.GetDecodingBuffer() == 1);
    ima.ReleaseDecodingBuffer(-1);  // negative index: nothing is released
    CHECK(ima.GetDecodingBuffer() == -1);
    ima.Reset();
    CHECK(ima.GetDecodingBuffer() == 0);

    // Seek(unsigned) is a stub returning 0.
    CHECK(ima.Seek(5u) == 0);

    // One emulated block of a mono chunk: 36 bytes is 1 + 8 * ((36 - 1) / 4) = 65 frames,
    // and the byte position moves by one block (36 bytes).
    vox::NativeChunks chunks;
    vox::NativeChunk chunk;
    chunk.byte_offset = 0;
    chunk.byte_size = 100;
    chunk.frame_count = 300;
    chunks.push_back(chunk);
    ima.Setup(&chunks, 100, 36, 1);
    vox::SegmentState seg;
    seg.chunk_index = 0;
    seg.end_frame = 299;
    seg.sample_position = 0;
    seg.byte_offset = 0;
    CHECK(ima.EmulateDecodeBlock(&seg) == 65);
    CHECK(seg.byte_offset == 36);

    std::printf("native_subdecoder_ima_block_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
