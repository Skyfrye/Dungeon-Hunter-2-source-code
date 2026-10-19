// VoxNativeSubDecoderPCM::Seek on a segment: frame to stream position, loop start for a
// negative offset, and the past-the-end rejection.
#include <cstdint>
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

// Records the last Seek; Tell reports the same position.
class SeekStream final : public vox::StreamCursorInterface {
public:
    int Seek(int offset, int whence) override {
        last_offset = offset;
        last_whence = whence;
        position = offset;
        return 0;
    }
    bool EndOfStream() override { return false; }
    int Tell() override { return position; }
    int Read(std::uint8_t*, int) override { return 0; }
    bool IsSeekable() const override { return true; }

    int last_offset = -1;
    int last_whence = -1;
    int position = 0;
};

// Exposes the members the Seek path reads.
class TestPcm : public vox::VoxNativeSubDecoderPCM {
public:
    void Setup(vox::StreamCursorInterface* stream, vox::NativeChunks* chunks,
               std::int16_t frame_bytes, std::int32_t base) {
        stream_ = stream;
        chunks_ = chunks;
        bytes_per_sample_ = frame_bytes;
        base_offset_ = base;
    }
};
}  // namespace

int main() {
    SeekStream stream;
    vox::NativeChunks chunks;
    vox::NativeChunk chunk;
    chunk.byte_offset = 100;
    chunk.byte_size = 500;
    chunk.frame_count = 50;
    chunks.push_back(chunk);

    TestPcm pcm;
    pcm.Setup(&stream, &chunks, 2, 1000);

    // Frame 10 of chunk 0: stream position base + chunk offset + 10 frames of 2 bytes.
    vox::SegmentState seg;
    seg.chunk_index = 0;
    seg.loop_start = 7;
    CHECK(pcm.Seek(10, &seg) == 0);
    CHECK(stream.last_offset == 1000 + 100 + 20);
    CHECK(stream.last_whence == 0);
    CHECK(seg.sample_position == 10);
    CHECK(seg.byte_offset == 20);

    // A negative offset seeks to the loop start (frame 7).
    CHECK(pcm.Seek(-1, &seg) == 0);
    CHECK(stream.last_offset == 1000 + 100 + 14);
    CHECK(seg.sample_position == 7);
    CHECK(seg.byte_offset == 14);

    // Past the end of the chunk: -1 and no change to the segment.
    seg.sample_position = 3;
    seg.byte_offset = 6;
    stream.last_offset = -5;
    CHECK(pcm.Seek(51, &seg) == -1);
    CHECK(stream.last_offset == -5);
    CHECK(seg.sample_position == 3);
    CHECK(seg.byte_offset == 6);

    // The last frame of the chunk is allowed.
    CHECK(pcm.Seek(50, &seg) == 0);
    CHECK(seg.sample_position == 50);

    std::printf("native_subdecoder_pcm_seek_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
