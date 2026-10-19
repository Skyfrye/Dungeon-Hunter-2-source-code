// vox::VoxMSWavSubDecoderPCM over two data chunks: sizes, decode across a chunk boundary,
// the end of the data, looping, seeking and the whole-frame rounding of Decode.
#include <cstdint>
#include <cstdio>
#include <utility>
#include <vector>

#include "vox-audio/vox/mswav_sub_decoder_pcm.hpp"

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

// A stream over a fixed byte array. Byte i holds the value i, so a decoded byte shows
// where it came from in the file.
class MemoryStream : public vox::StreamCursorInterface {
public:
    explicit MemoryStream(std::vector<std::uint8_t> bytes) : bytes_(std::move(bytes)) {}
    int Seek(int offset, int whence) override {
        pos_ = whence == 0 ? offset : pos_ + offset;
        return 0;
    }
    bool EndOfStream() override { return pos_ >= bytes_.size(); }
    int Tell() override { return static_cast<int>(pos_); }
    int Read(std::uint8_t* dst, int size) override {
        std::size_t avail = pos_ < bytes_.size() ? bytes_.size() - pos_ : 0;
        std::size_t n = static_cast<std::size_t>(size) < avail ? static_cast<std::size_t>(size) : avail;
        for (std::size_t i = 0; i < n; ++i) {
            dst[i] = bytes_[pos_ + i];
        }
        pos_ += n;
        return static_cast<int>(n);
    }
    bool IsSeekable() const override { return true; }

private:
    std::vector<std::uint8_t> bytes_;
    std::size_t pos_ = 0;
};
}  // namespace

int main() {
    // File layout: chunk A header at 0 (8 bytes), its data at 8..15; chunk B header at 16,
    // its data at 24..31. The data is 16-bit mono, so a frame is 2 bytes and the data holds
    // 8 frames.
    std::vector<std::uint8_t> file(32);
    for (std::size_t i = 0; i < file.size(); ++i) {
        file[i] = static_cast<std::uint8_t>(i);
    }
    MemoryStream stream(file);

    vox::DataNode node_b;
    node_b.offset = 16;
    node_b.size = 8;
    vox::DataNode node_a;
    node_a.offset = 0;
    node_a.size = 8;
    node_a.next = &node_b;

    vox::WaveChunk wave;
    wave.channels = 1;
    wave.sample_rate = 8000;
    wave.block_align = 2;
    wave.bits_per_sample = 16;
    wave.data_list = &node_a;

    vox::VoxMSWavSubDecoderPCM sub(&stream, &wave);
    CHECK(sub.GetDataSize() == 16);
    CHECK(sub.HasData());

    // Decode fills 8 bytes from chunk A, then 8 from chunk B in a second call.
    std::uint8_t buf[32] = {};
    CHECK(sub.Decode(buf, 8) == 8);
    CHECK(buf[0] == 8 && buf[7] == 15);
    CHECK(sub.Decode(buf, 8) == 8);
    CHECK(buf[0] == 24 && buf[7] == 31);
    CHECK(!sub.HasData());  // every frame is decoded and the loop flag is off

    // A single call that crosses the chunk boundary. The decode of a request that is
    // rounded down to whole frames returns the rounded count.
    CHECK(sub.Seek(0) == 0);
    CHECK(sub.Decode(buf, 16) == 16);
    CHECK(buf[0] == 8 && buf[7] == 15 && buf[8] == 24 && buf[15] == 31);
    CHECK(sub.Seek(0) == 0);
    CHECK(sub.Decode(buf, 5) == 4);  // 5 bytes round down to 4 (two frames)
    CHECK(buf[0] == 8 && buf[3] == 11);
    CHECK(sub.Decode(buf, 0) == 0);

    // Seeking inside chunk A and across into chunk B.
    CHECK(sub.Seek(3) == 0);
    CHECK(sub.Decode(buf, 2) == 2);
    CHECK(buf[0] == 14 && buf[1] == 15);
    CHECK(sub.Seek(6) == 0);  // chunk A holds 4 frames, so frame 6 is 2 frames into chunk B
    CHECK(sub.Decode(buf, 2) == 2);
    CHECK(buf[0] == 28 && buf[1] == 29);
    CHECK(sub.Seek(9) == -1);  // past the 8 frames of data

    // Looping: at the end HasData rewinds to the start and reports data again.
    sub.loop_ = true;
    CHECK(sub.Seek(0) == 0);
    CHECK(sub.Decode(buf, 16) == 16);
    CHECK(sub.HasData());
    CHECK(sub.Decode(buf, 8) == 8);
    CHECK(buf[0] == 8 && buf[7] == 15);

    // A sub-decoder without a stream reports no data. Callers check HasData before Decode.
    vox::VoxMSWavSubDecoderPCM empty(nullptr, &wave);
    CHECK(!empty.HasData());

    std::printf("mswav_sub_decoder_pcm_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
