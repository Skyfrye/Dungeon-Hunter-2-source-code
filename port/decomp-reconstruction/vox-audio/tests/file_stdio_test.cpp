// vox stdio helpers (openStdIO, readStdIO, writeStdIO, seekStdIO, closeStdIO) on a
// scratch file, and the DecoderRaw factory.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vox-audio/vox/decoder_raw.hpp"
#include "vox-audio/vox/file_stdio.hpp"
#include "vox-audio/vox/memory.hpp"

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
}  // namespace

int main() {
    const char* name = "vox_file_stdio_test.bin";

    // Write mode (7 = "wb"), then read mode (6 = "rb").
    void* out = vox::openStdIO(name, static_cast<vox::VoxFileAccessMode>(7));
    CHECK(out != nullptr);
    const std::uint8_t payload[6] = {10, 20, 30, 40, 50, 60};
    if (out != nullptr) {
        vox::writeStdIO(payload, 1, 6, out);
        vox::closeStdIO(out);
    }

    void* in = vox::openStdIO(name, static_cast<vox::VoxFileAccessMode>(6));
    CHECK(in != nullptr);
    if (in != nullptr) {
        std::uint8_t got[6] = {};
        vox::readStdIO(got, 1, 6, in);
        CHECK(std::memcmp(got, payload, sizeof payload) == 0);

        // Seek from the end (2) back four bytes, then from the start (0) to byte 2.
        vox::seekStdIO(in, -4, vox::kVoxFileSeekEnd);
        std::uint8_t tail[4] = {};
        vox::readStdIO(tail, 1, 4, in);
        CHECK(tail[0] == 30 && tail[3] == 60);

        vox::seekStdIO(in, 2, vox::kVoxFileSeekBegin);
        std::uint8_t mid[1] = {};
        vox::readStdIO(mid, 1, 1, in);
        CHECK(mid[0] == 30);

        // A whence value outside 1 and 2 is treated as SEEK_SET.
        vox::seekStdIO(in, 0, static_cast<vox::VoxFileSeekOrigin>(7));
        vox::readStdIO(mid, 1, 1, in);
        CHECK(mid[0] == 10);
        vox::closeStdIO(in);
    }

    // Modes outside 0..11 have no C mode string.
    CHECK(vox::openStdIO(name, static_cast<vox::VoxFileAccessMode>(12)) == nullptr);
    std::remove(name);

    // DecoderRawFactory: a constructed raw decoder with the parameter block copied in.
    vox::TrackParams params;
    params.channels = 2;
    params.sample_rate = 0;
    params.bits_per_sample = 16;
    params.length_frames = 100;
    void* raw = vox::DecoderRawFactory(&params);
    CHECK(raw != nullptr);
    if (raw != nullptr) {
        auto* decoder = static_cast<vox::DecoderInterface*>(raw);
        CHECK(decoder->GetType() == 0);
        CHECK(decoder->GetParam()[0] == 2);
        CHECK(decoder->GetParam()[2] == 16);
        decoder->~DecoderInterface();
        VoxFree(raw);
    }

    std::printf("file_stdio_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
