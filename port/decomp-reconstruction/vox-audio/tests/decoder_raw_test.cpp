// DecoderRaw / DecoderRawCursor against a synthetic in-memory stream.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "vox-audio/vox/decoder_raw.hpp"

namespace vox {
struct DecoderRawCursorTestAccess {
    static void SetLoop(DecoderRawCursor* c, bool on) { c->loop_ = on; }
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

// Stream over a byte vector. Seek(offset, 0) sets the position; ReadRef hands out
// a pointer into the buffer when refs are allowed.
class FakeCursor final : public vox::StreamCursorInterface {
public:
    FakeCursor(std::vector<std::uint8_t> data, bool refs) : data_(std::move(data)), refs_(refs) {}
    int Seek(int offset, int whence) override {
        (void)whence;
        pos_ = static_cast<std::size_t>(offset);
        ++seeks_;
        return 0;
    }
    bool EndOfStream() override { return pos_ >= data_.size(); }
    int Tell() override { return static_cast<int>(pos_); }
    int Read(std::uint8_t* dst, int size) override {
        std::size_t n = std::min<std::size_t>(static_cast<std::size_t>(size), data_.size() - pos_);
        std::memcpy(dst, data_.data() + pos_, n);
        pos_ += n;
        return static_cast<int>(n);
    }
    int ReadRef(std::uint8_t*& ref, int size) override {
        std::size_t n = std::min<std::size_t>(static_cast<std::size_t>(size), data_.size() - pos_);
        ref = data_.data() + pos_;
        pos_ += n;
        return static_cast<int>(n);
    }
    bool IsSeekable() const override { return true; }
    bool AllowBufferReference() const override { return refs_; }

    std::size_t pos_ = 0;
    int seeks_ = 0;

private:
    std::vector<std::uint8_t> data_;
    bool refs_;
};

std::vector<std::uint8_t> Ramp(int n) {
    std::vector<std::uint8_t> v(static_cast<std::size_t>(n));
    for (int i = 0; i < n; ++i) v[static_cast<std::size_t>(i)] = static_cast<std::uint8_t>(i + 1);
    return v;
}

}  // namespace

int main() {
    // 2 channels, 16 bit, 5 frames -> 20 bytes per 5 frames of 4 bytes each.
    vox::TrackParams params;
    params.channels = 2;
    params.bits_per_sample = 16;
    params.length_frames = 5;
    params.sample_rate = 44100;
    vox::DecoderRaw decoder(&params);
    CHECK(decoder.GetType() == 0);
    std::int32_t* p = decoder.GetParam();
    CHECK(p[0] == 2 && p[1] == 44100 && p[2] == 16 && p[3] == 5);

    // Null params leave everything zero.
    vox::DecoderRaw empty(nullptr);
    CHECK(empty.GetParam()[0] == 0 && empty.GetParam()[3] == 0);

    // Non-looping decode stops at end of stream and reports the short count.
    {
        FakeCursor stream(Ramp(10), false);
        vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
        std::uint8_t out[16] = {};
        CHECK(c->HasData());
        CHECK(c->Decode(out, 16) == 10);
        CHECK(out[0] == 1 && out[9] == 10);
        CHECK(!c->HasData());
        decoder.DestroyCursor(c);
    }

    // Looping decode rewinds at end of stream and fills the full count.
    {
        FakeCursor stream(Ramp(4), false);
        vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
        vox::DecoderRawCursorTestAccess::SetLoop(static_cast<vox::DecoderRawCursor*>(c), true);
        std::uint8_t out[10] = {};
        CHECK(c->Decode(out, 10) == 10);
        CHECK(out[0] == 1 && out[3] == 4 && out[4] == 1 && out[9] == 2);
        CHECK(c->HasData());  // looping: exhausted stream rewinds, data remains
        decoder.DestroyCursor(c);
    }

    // Seek past the decoder length fails; in-range seek positions the stream.
    {
        FakeCursor stream(Ramp(40), false);
        vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
        CHECK(c->Seek(6) == -1);
        CHECK(c->Seek(3) == 0);
        CHECK(stream.pos_ == 12);  // 3 frames * 2 channels * 2 bytes
        CHECK(c->Seek(5) == 0);
        CHECK(stream.pos_ == 20);
        decoder.DestroyCursor(c);
    }

    // Buffer references: allowed streams hand back a pointer into the buffer.
    {
        FakeCursor stream(Ramp(8), true);
        vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
        CHECK(c->AllowBufferReference());
        void* ref = nullptr;
        CHECK(c->DecodeRef(ref, 4) == 4);
        CHECK(ref != nullptr && static_cast<std::uint8_t*>(ref)[0] == 1);
        CHECK(stream.pos_ == 4);
        decoder.DestroyCursor(c);
    }

    // Buffer references disallowed: DecodeRef copies via Decode.
    {
        FakeCursor stream(Ramp(8), false);
        vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
        std::uint8_t buf[8] = {};
        void* dst = buf;
        CHECK(!c->AllowBufferReference());
        CHECK(c->DecodeRef(dst, 8) == 8);
        CHECK(buf[7] == 8);
        decoder.DestroyCursor(c);
    }

    std::printf("decoder_raw_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
