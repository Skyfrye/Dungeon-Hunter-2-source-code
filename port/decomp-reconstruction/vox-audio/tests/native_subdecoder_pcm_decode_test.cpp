// vox::VoxNativeSubDecoderPCM::DecodeSegment and DecodeCurrentSegmentWithOffset on a
// memory stream: a plain read, a read clipped at the region end, and a pending seek that
// zero-fills the start of the buffer.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "vox-audio/vox/native_sub_decoder.hpp"
#include "vox-audio/vox/stream.hpp"

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

// A stream over a byte vector; Seek with whence 0 is an absolute position.
class MemoryStream : public vox::StreamCursorInterface {
public:
    explicit MemoryStream(std::vector<std::uint8_t> data) : data_(std::move(data)) {}
    int Seek(int offset, int) override {
        pos_ = offset;
        return 0;
    }
    bool EndOfStream() override { return pos_ >= static_cast<int>(data_.size()); }
    int Tell() override { return pos_; }
    int Read(std::uint8_t* dst, int size) override {
        int left = static_cast<int>(data_.size()) - pos_;
        int n = size < left ? size : left;
        if (n < 0) n = 0;
        std::memcpy(dst, data_.data() + pos_, static_cast<std::size_t>(n));
        pos_ += n;
        return n;
    }
    bool IsSeekable() const override { return true; }

private:
    std::vector<std::uint8_t> data_;
    int pos_ = 0;
};

// Exposes the protected layout the decode reads: one mono 16-bit chunk of 20 frames.
class TestPcm : public vox::VoxNativeSubDecoderPCM {
public:
    TestPcm(vox::StreamCursorInterface* stream, vox::NativeChunks* chunks,
            vox::VoxVector<vox::VoxVector<std::int32_t>>* lists) {
        stream_ = stream;
        chunks_ = chunks;
        loop_lists_ = lists;
        bytes_per_sample_ = 2;
        base_offset_ = 0;
    }
    vox::SegmentState& Seg(int i) { return segments_[i]; }
    void SetPending(std::int32_t frames) { pending_seek_ = frames; }
};
}  // namespace

int main() {
    std::vector<std::uint8_t> data(40);
    for (std::size_t i = 0; i < data.size(); ++i) {
        data[i] = static_cast<std::uint8_t>(i + 1);
    }
    MemoryStream stream(data);
    vox::NativeChunks chunks;
    vox::NativeChunk chunk;
    chunk.byte_offset = 0;
    chunk.byte_size = 40;
    chunk.frame_count = 20;
    chunks.push_back(chunk);
    vox::VoxVector<vox::VoxVector<std::int32_t>> lists(1);
    lists[0] = {0, 0};

    TestPcm pcm(&stream, &chunks, &lists);
    for (int i = 0; i < 3; ++i) {
        vox::SegmentState& s = pcm.Seg(i);
        s.chunk_index = 0;
        s.end_frame = 19;
        s.entry_count = 1;
        s.entries_left = 1;
        s.state = 2;
        s.play_mode = 0;
    }

    // A read of 16 bytes at the start, then the next 16 bytes, then a read that runs past the
    // region end: the region ends after 40 bytes, so 8 bytes come back and the segment stops.
    std::uint8_t out[16] = {};
    CHECK(pcm.DecodeSegment(out, 16, &pcm.Seg(0)) == 16);
    CHECK(out[0] == 1 && out[15] == 16);
    CHECK(pcm.Seg(0).byte_offset == 16);
    CHECK(pcm.Seg(0).sample_position == 8);
    CHECK(pcm.DecodeSegment(out, 16, &pcm.Seg(0)) == 16);
    CHECK(out[0] == 17);
    CHECK(pcm.Seg(0).byte_offset == 32);
    CHECK(pcm.DecodeSegment(out, 16, &pcm.Seg(0)) == 8);
    CHECK(out[0] == 33 && out[7] == 40);
    CHECK(pcm.Seg(0).state == 1);

    // A pending seek of 2 frames zero-fills 4 bytes, then the current segment reads 4 bytes.
    std::uint8_t cur[8];
    std::memset(cur, 0xEE, sizeof cur);
    pcm.SetPending(2);
    CHECK(pcm.DecodeCurrentSegmentWithOffset(cur, 8) == 8);
    CHECK(cur[0] == 0 && cur[3] == 0);
    CHECK(cur[4] == 1 && cur[7] == 4);
    CHECK(pcm.Seg(2).byte_offset == 4);
    CHECK(pcm.Seg(2).sample_position == 2);

    std::printf("native_subdecoder_pcm_decode_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
