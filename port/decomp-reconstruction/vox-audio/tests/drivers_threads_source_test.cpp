// vox::DriverCallbackSourceInterface setup and upload path: Init builds the ring, UploadData
// fills the upload cursor, GetWorkData copies from the mixer cursor, SetPitch stores the Q14
// pitch, and the static listener helpers return their documented values.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
struct DriverCallbackSourceInterfaceTestAccess {
    static void SetState(DriverCallbackSourceInterface& d, int state) { d.state_ = state; }
    static void SetBuffers(DriverCallbackSourceInterface& d, DriverBuffer* begin, int count) {
        d.buffers_begin_ = begin;
        d.buffers_end_ = begin + count;
        d.buffers_capacity_ = begin + count;
        d.buffer_count_ = count;
    }
    static void SetWriteIndex(DriverCallbackSourceInterface& d, int index) { d.write_index_ = index; }
    static int ReadIndex(const DriverCallbackSourceInterface& d) { return d.read_index_; }
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
}  // namespace

int main() {
    using vox::DriverCallbackSourceInterface;
    using vox::DriverCallbackSourceInterfaceTestAccess;
    using vox::DriverListener3D;

    const std::int32_t format[4] = {2, 44100, 16, 0};  // stereo, 44.1 kHz, 16 bit
    const std::int32_t three = 3;
    const std::uint32_t flags = 1;

    // Constructor and Init: three buffers, state idle, the first buffer free for upload.
    DriverCallbackSourceInterface source(format, &three, flags);
    source.Init();
    CHECK(source.GetBufferCount() == 3);
    CHECK(source.GetState() == 0);
    CHECK(source.NeedData() == 1);
    CHECK(source.GetByteOffset() == 0);

    // Upload fills the upload cursor and moves it on; a full wrap returns it to 0.
    std::int16_t pcm[128];
    for (int i = 0; i < 128; ++i) {
        pcm[i] = static_cast<std::int16_t>(i * 3 - 100);
    }
    source.UploadData(pcm, 256);
    CHECK(DriverCallbackSourceInterfaceTestAccess::ReadIndex(source) == 1);
    CHECK(source.NeedData() == 1);  // buffer 1 is still free
    source.UploadData(pcm, 256);
    source.UploadData(pcm, 256);
    CHECK(DriverCallbackSourceInterfaceTestAccess::ReadIndex(source) == 0);
    CHECK(source.NeedData() == 0);  // buffer 0 holds data now

    // Mixer side: start playing and copy 8 bytes from the first buffer.
    DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
    DriverCallbackSourceInterfaceTestAccess::SetWriteIndex(source, 0);
    std::uint8_t out[8] = {};
    const std::size_t copied = source.GetWorkData(out, 8, 0x4000);
    CHECK(copied == 8);
    CHECK(std::memcmp(out, pcm, 8) == 0);
    CHECK(source.GetByteOffset() == 8);

    // SetPitch stores the Q14 word: 0.5 is 8192, values above 2 clamp to 2, and 0 or less
    // give the smallest word.
    source.SetPitch(0.5f);
    CHECK(source.GetPitch() == 0.5f);
    source.SetPitch(3.0f);
    CHECK(source.GetPitch() == 2.0f);
    source.SetPitch(-1.0f);
    CHECK(source.GetPitch() == 1.0f / 16384.0f);

    // Static listener helpers. The Doppler factor is positive: the altered speed of sound is
    // the speed divided by the factor. With a zero factor, the speed is stored and 0 returned.
    DriverListener3D listener;
    listener.doppler_factor = 2.0f;
    listener.speed_of_sound = 343.0f;
    listener.distance_model = 0;
    CHECK(DriverCallbackSourceInterface::Set3DParameters(listener) == 171.5f);
    listener.doppler_factor = 0.0f;
    CHECK(DriverCallbackSourceInterface::Set3DParameters(listener) == 0.0f);

    CHECK(DriverCallbackSourceInterface::SetDriverCallbackPeriod(1.0f) == 16384);
    CHECK(DriverCallbackSourceInterface::SetDriverCallbackPeriod(0.5f) == 8192);

    // With no distance model the gain is unity; with a zero Doppler factor the pitch is unity.
    CHECK(source.GetDistanceGain() == 0x4000);
    CHECK(source.GetDopplerPitch() == 0x4000);

    // Init sets the directional cone to 360 degrees, which is unity everywhere.
    CHECK(source.GetDirectionalGain() == 0x4000);

    // Panning with the listener at the origin and no front or up vector: the cosine is 0,
    // so both channels get sqrt(1/2) in Q14.
    int left = 0;
    int right = 0;
    const int right_result = source.GetStereoPanning(&left, &right);
    CHECK(right_result == right);
    CHECK(left == 11585);
    CHECK(right == 11585);

    // Freeing with nothing to release reports zero counts.
    int freed_count = -1;
    int freed_bytes = -1;
    source.FreeDisposableData(0, freed_count, freed_bytes);
    CHECK(freed_count == 0 && freed_bytes == 0);

    std::printf("drivers_threads_source_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
