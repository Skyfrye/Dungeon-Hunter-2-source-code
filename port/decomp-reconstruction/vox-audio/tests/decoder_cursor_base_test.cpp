// DecoderCursorInterface base accessors: Reset seeks to frame 0; the loop flag,
// stream and rewind limit come from the base class.
#include <cstdint>
#include <cstdio>

#include "vox-audio/vox/decoder.hpp"

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

class NullStream final : public vox::StreamCursorInterface {
public:
    int Seek(int, int) override { return 0; }
    bool EndOfStream() override { return true; }
    int Tell() override { return 0; }
    int Read(std::uint8_t*, int) override { return 0; }
    bool IsSeekable() const override { return true; }
};

// Records the frames passed to Seek.
class RecordingCursor final : public vox::DecoderCursorInterface {
public:
    int Decode(void*, int) override { return 0; }
    int Seek(unsigned int frame) override {
        last_seek = static_cast<int>(frame);
        ++seeks;
        return 0;
    }
    bool HasData() override { return false; }

    int last_seek = -1;
    int seeks = 0;
    using vox::DecoderCursorInterface::decoder_;
    using vox::DecoderCursorInterface::stream_;
    using vox::DecoderCursorInterface::loop_;
};
}  // namespace

int main() {
    RecordingCursor c;
    NullStream stream;

    c.Reset();
    CHECK(c.seeks == 1);
    CHECK(c.last_seek == 0);

    CHECK(c.GetRewindLimit() == 0);
    CHECK(!c.AllowBufferReference());
    CHECK(c.GetStreamCursor() == nullptr);

    c.stream_ = &stream;
    CHECK(c.GetStreamCursor() == &stream);

    CHECK(!c.loop_);
    c.SetLoop(true);
    CHECK(c.loop_);
    c.Rewind(5);            // empty in the original: no seek
    CHECK(c.seeks == 1);

    std::printf("decoder_cursor_base_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
