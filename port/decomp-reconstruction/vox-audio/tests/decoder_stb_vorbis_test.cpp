// DecoderStbVorbis and DecoderStbVorbisCursor against a fake stb_vorbis. The real stb_vorbis
// is upstream code and is not linked here; these definitions model a 2-channel stream of
// 100 frames whose samples count up, so the cursor's counters and loop behaviour can be checked.
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "vox-audio/vox/decoder_stb_vorbis.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {
struct DecoderStbVorbisCursorTestAccess {
    static void SetBits(DecoderStbVorbisCursor* c, int bits) { c->params_.bits_per_sample = bits; }
    static std::uint32_t Position(const DecoderStbVorbisCursor* c) { return c->position_; }
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

int g_open_fail = 0;
int g_seek_start_calls = 0;
int g_close_calls = 0;
}  // namespace

// Fake stb_vorbis: a stream of kFrames frames with kChannels channels.
constexpr int kFrames = 100;
constexpr int kChannels = 2;

struct stb_vorbis {
    int total = kFrames;
    int pos = 0;
    int channels = kChannels;
};

// The signature must match stb_vorbis_api.hpp exactly. It is declared non-const there because that is
// the binary's mangled name (_Z20stb_vorbis_open_filePN3vox21StreamCursorInterfaceEiPiP16stb_vorbis_alloc);
// a `const stb_vorbis_alloc*` here is a DIFFERENT overload, so this fake would not define the symbol
// DecoderStbVorbisCursor calls and the real vendored stb_vorbis_open_file would be linked in instead.
stb_vorbis* stb_vorbis_open_file(vox::StreamCursorInterface* stream, int close_on_free, int* error,
                                 stb_vorbis_alloc* alloc) {
    (void)stream;
    (void)close_on_free;
    (void)alloc;
    if (g_open_fail != 0) {
        *error = 1;
        return nullptr;
    }
    *error = 0;
    return new stb_vorbis();
}

stb_vorbis_info stb_vorbis_get_info(stb_vorbis* f) {
    stb_vorbis_info info{};
    info.sample_rate = 44100;
    info.channels = f->channels;
    return info;
}

unsigned int stb_vorbis_stream_length_in_samples(stb_vorbis* f) {
    return static_cast<unsigned int>(f->total);
}

void stb_vorbis_seek_start(stb_vorbis* f) {
    f->pos = 0;
    ++g_seek_start_calls;
}

int stb_vorbis_get_samples_float_interleaved(stb_vorbis* f, int channels, float* buffer,
                                             int num_floats) {
    const int frames = std::min(num_floats / channels, f->total - f->pos);
    for (int i = 0; i < frames * channels; ++i) {
        buffer[i] = static_cast<float>(f->pos + i / channels);
    }
    f->pos += frames;
    return frames;
}

int stb_vorbis_get_samples_short_interleaved(stb_vorbis* f, int channels, short* buffer,
                                             int num_shorts) {
    const int frames = std::min(num_shorts / channels, f->total - f->pos);
    for (int i = 0; i < frames * channels; ++i) {
        buffer[i] = static_cast<short>(f->pos + i / channels);
    }
    f->pos += frames;
    return frames;
}

void stb_vorbis_close(stb_vorbis* f) {
    ++g_close_calls;
    delete f;
}

namespace {

// Stream stand-in: the stb calls are faked, so the stream only has to be non-null.
class FakeStream final : public vox::StreamCursorInterface {
public:
    int Seek(int offset, int whence) override {
        (void)offset;
        (void)whence;
        return 0;
    }
    bool EndOfStream() override { return false; }
    int Tell() override { return 0; }
    int Read(std::uint8_t* dst, int size) override {
        (void)dst;
        return size;
    }
    bool IsSeekable() const override { return true; }
};

void TestOpenAndFormat(vox::DecoderStbVorbis& decoder, FakeStream& stream) {
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    CHECK(c != nullptr);
    CHECK(c->HasData());
    CHECK(c->GetStreamCursor() == &stream);
    CHECK(c->Seek(0) == 0);
    CHECK(c->Seek(1) == -1);
    CHECK(c->Seek(kFrames + 1) == -1);
    decoder.DestroyCursor(c);
}

void TestDecodeAndEnd() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    CHECK(c != nullptr);

    std::int16_t buf[256] = {};
    // 40 bytes is 20 shorts, which is 10 frames of 2 channels at 16 bits (4 bytes per frame).
    CHECK(c->Decode(buf, 40) == 40);
    CHECK(c->HasData());
    CHECK(buf[0] == 0 && buf[2] == 1);  // frame index counts up
    // 360 bytes is 90 more frames; the stream then ends.
    CHECK(c->Decode(buf, 360) == 360);
    CHECK(!c->HasData());
    CHECK(c->Decode(buf, 40) == 0);  // no frames and no loop

    decoder.DestroyCursor(c);
}

void TestLoopRewinds() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    c->SetLoop(true);
    std::int16_t buf[512] = {};
    const int seeks_before = g_seek_start_calls;
    CHECK(c->Decode(buf, 400) == 400);  // 100 frames: the end is reached and Decode rewinds
    CHECK(g_seek_start_calls == seeks_before + 1);
    CHECK(c->HasData());
    CHECK(c->Decode(buf, 40) == 40);
    CHECK(buf[0] == 0);  // the stream starts again at frame 0
    decoder.DestroyCursor(c);

    // Reaching the end without a loop, then enabling the loop: HasData rewinds the cursor.
    vox::DecoderCursorInterface* d = decoder.CreateNewCursor(&stream);
    CHECK(d->Decode(buf, 400) == 400);
    CHECK(!d->HasData());
    d->SetLoop(true);
    const int seeks_mid = g_seek_start_calls;
    CHECK(d->HasData());
    CHECK(g_seek_start_calls == seeks_mid + 1);
    decoder.DestroyCursor(d);
}

void TestFloatPath() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    auto* cursor = static_cast<vox::DecoderStbVorbisCursor*>(c);
    vox::DecoderStbVorbisCursorTestAccess::SetBits(cursor, 0x20);
    float fbuf[64] = {};
    // 40 bytes is 10 floats, which is 5 frames of 2 channels at 32 bits (8 bytes per frame).
    CHECK(c->Decode(fbuf, 40) == 40);
    CHECK(fbuf[0] == 0.0f && fbuf[2] == 1.0f);
    decoder.DestroyCursor(c);
}

void TestOpenFailure() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    g_open_fail = 1;
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    g_open_fail = 0;
    CHECK(c != nullptr);
    CHECK(!c->HasData());
    std::int16_t buf[8] = {};
    CHECK(c->Decode(buf, 8) == 0);
    CHECK(c->Seek(0) == -1);
    decoder.DestroyCursor(c);
}

void TestDestroyClosesHandle() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    vox::DecoderCursorInterface* c = decoder.CreateNewCursor(&stream);
    const int closes_before = g_close_calls;
    decoder.DestroyCursor(c);
    CHECK(g_close_calls == closes_before + 1);
}

void TestFactory() {
    void* mem = vox::DecoderStbVorbisFactory(nullptr);
    CHECK(mem != nullptr);
    auto* decoder = static_cast<vox::DecoderStbVorbis*>(mem);
    CHECK(decoder->GetType() == 2);
    CHECK(decoder->GetParam() == nullptr);
    const int closes_before = g_close_calls;
    decoder->~DecoderStbVorbis();  // handle_ is null: nothing is closed
    CHECK(g_close_calls == closes_before);
    VoxFree(mem);
}

}  // namespace

int main() {
    FakeStream stream;
    vox::DecoderStbVorbis decoder;
    TestOpenAndFormat(decoder, stream);
    TestDecodeAndEnd();
    TestLoopRewinds();
    TestFloatPath();
    TestOpenFailure();
    TestDestroyClosesHandle();
    TestFactory();
    if (g_failures != 0) {
        std::fprintf(stderr, "decoder_stb_vorbis_test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("decoder_stb_vorbis_test: all checks passed\n");
    return 0;
}
