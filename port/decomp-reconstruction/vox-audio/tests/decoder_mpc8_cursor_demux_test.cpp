// vox::DecoderMPC8Cursor constructor, destructor, Seek and Decode, driven through a fake
// Musepack demuxer defined in this file (the libmpcdec functions are not in the port).
// Checks the reader wiring, the seek arguments, 16-bit output, the end of a stream and the
// loop restart, which seeks back to sample 0.
#include <cstdint>
#include <cstdio>
#include <new>
#include <vector>

#include "vox-audio/deps/mpc_demux.hpp"
#include "vox-audio/vox/decoder_mpc8.hpp"

// Opaque to the cursor, which reads only the first two members (libmpcdec's mpc_demux_t::r and ::d, two pointers).
struct mpc_demux {
    void* open_a;
    void* open_b;
};

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

struct FakeDemux {
    mpc_reader_t* reader = nullptr;
    mpc_demux object{this, this};
    std::uint32_t info_rate = 44100;
    std::uint32_t info_channels = 2;
    std::uint32_t info_total = 0;
    // Each decode call returns the next block: interleaved stereo floats (2 per frame).
    std::vector<std::vector<float>> blocks;
    std::size_t next = 0;
    int init_calls = 0;
    int exit_calls = 0;
    int seek_calls = 0;
    std::uint64_t last_seek_sample = 0;
    int seek_result = 0;  // 0 = success
    float* last_buffer = nullptr;
};

FakeDemux g;

class ConcreteMPC8 final : public vox::DecoderMPC8 {
public:
    using vox::DecoderMPC8::DecoderMPC8;
    vox::DecoderCursorInterface* CreateNewCursor(vox::StreamCursorInterface*) override { return nullptr; }
};

void ResetFake() {
    g = FakeDemux();
}

}  // namespace

// The fake demuxer. The cursor calls these by name.
mpc_demux* mpc_demux_init(mpc_reader_t* reader) {
    g.reader = reader;
    ++g.init_calls;
    return &g.object;
}

void mpc_demux_exit(mpc_demux* demux) {
    (void)demux;
    ++g.exit_calls;
}

void mpc_demux_get_info(mpc_demux* demux, std::uint32_t* info) {
    (void)demux;
    info[0] = g.info_rate;
    info[1] = g.info_channels;
    info[14] = g.info_total;
}

void mpc_demux_decode(mpc_demux* demux, MpcFrameInfo* frame) {
    (void)demux;
    g.last_buffer = frame->buffer;
    if (g.next >= g.blocks.size()) {
        frame->samples = 0;
        return;
    }
    const std::vector<float>& block = g.blocks[g.next++];
    frame->samples = static_cast<std::int32_t>(block.size() / 2);
    for (std::size_t i = 0; i < block.size(); ++i) {
        frame->buffer[i] = block[i];
    }
}

int mpc_demux_seek_sample(mpc_demux* demux, std::uint64_t sample) {
    (void)demux;
    ++g.seek_calls;
    g.last_seek_sample = sample;
    if (g.seek_result == 0) {
        g.next = 0;  // the fake restarts its blocks from the beginning
    }
    return g.seek_result;
}

int main() {
    vox::DecoderMPC8Params params;  // first = 0, so the stream sets the sample rate
    ConcreteMPC8 decoder(&params);
    int marker = 0;
    auto* stream = reinterpret_cast<vox::StreamCursorInterface*>(&marker);  // never dereferenced

    // Reader wiring: the five wrappers and the stream pointer are installed by the constructor.
    {
        ResetFake();
        g.info_total = 2;
        vox::DecoderMPC8Cursor cursor(&decoder, stream);
        CHECK(g.init_calls == 1);
        CHECK(g.reader != nullptr);
        if (g.reader != nullptr) {
            CHECK(g.reader->read == &mpc_read);
            CHECK(g.reader->seek == &mpc_seek);
            CHECK(g.reader->tell == &mpc_tell);
            CHECK(g.reader->get_size == &mpc_getsize);
            CHECK(g.reader->can_seek == &mpc_canseek);
            CHECK(g.reader->data == stream);
        }
    }
    CHECK(g.exit_calls == 1);  // the destructor closes the demuxer

    // Seek: sample 0 is refused without calling the demuxer.
    {
        ResetFake();
        g.info_total = 10;
        vox::DecoderMPC8Cursor cursor(&decoder, stream);
        CHECK(cursor.Seek(0) == -1);
        CHECK(g.seek_calls == 0);
        CHECK(cursor.Seek(7) == 0);
        CHECK(g.seek_calls == 1);
        CHECK(g.last_seek_sample == 0);  // the listing seeks to sample 0 whatever the request (r2:r3 = 0)
        g.seek_result = 1;
        CHECK(cursor.Seek(9) == -1);
        CHECK(g.seek_calls == 2);
    }

    // Decode, 16-bit stereo: two frames, converted with the 2^15 scale and saturation.
    {
        ResetFake();
        g.info_total = 2;
        g.blocks.push_back({0.5f, -0.5f, 1.0f, -1.0f});
        vox::DecoderMPC8Cursor cursor(&decoder, stream);
        std::int16_t out[4] = {0, 0, 0, 0};
        const int got = cursor.Decode(out, 8);
        CHECK(got == 8);
        CHECK(out[0] == 16384 && out[1] == -16384);
        CHECK(out[2] == 32767 && out[3] == -32768);
        CHECK(g.last_buffer != nullptr);  // the cursor passed its PCM buffer to the demuxer
        // The stream is at its end (position equals the total) and does not loop.
        CHECK(cursor.Decode(out, 8) == 0);
        CHECK(g.seek_calls == 0);
    }

    // End of a stream that is longer than the demuxer delivers: the decode stops when the
    // demuxer returns no samples (port deviation, see decoder_mpc8_cursor_io.cpp).
    {
        ResetFake();
        g.info_total = 5;
        g.blocks.push_back({0.25f, 0.25f, 0.25f, 0.25f});
        vox::DecoderMPC8Cursor cursor(&decoder, stream);
        std::int16_t out[8] = {};
        const int got = cursor.Decode(out, 16);  // four frames requested, two available
        CHECK(got == 8);
        CHECK(out[0] == 8192 && out[3] == 8192);
        CHECK(out[4] == 0);  // nothing written past the decoded frames
    }

    // Loop: at the end of the stream the cursor seeks back to the position before the last
    // update (0 here) and decodes the stream again.
    {
        ResetFake();
        g.info_total = 2;
        g.blocks.push_back({0.5f, 0.5f, -0.5f, -0.5f});
        vox::DecoderMPC8Cursor cursor(&decoder, stream);
        cursor.SetLoop(true);
        std::int16_t out[8] = {};
        const int got = cursor.Decode(out, 16);  // four frames: the two-frame stream twice
        CHECK(got == 16);
        CHECK(out[0] == 16384 && out[1] == 16384 && out[2] == -16384 && out[3] == -16384);
        CHECK(out[4] == 16384 && out[5] == 16384 && out[6] == -16384 && out[7] == -16384);
        CHECK(g.seek_calls == 2);
        CHECK(g.last_seek_sample == 0);
    }

    std::printf("decoder_mpc8_cursor_demux_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
