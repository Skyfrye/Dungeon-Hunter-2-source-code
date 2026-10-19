// vox::DriverCallbackSourceInterface state machine, ring-buffer ready flags and the
// fixed-point accessors, on a buffer array owned by the test.
#include <cstdio>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
struct DriverCallbackSourceInterfaceTestAccess {
    static void SetState(DriverCallbackSourceInterface& d, int state) { d.state_ = state; }
    static int State(const DriverCallbackSourceInterface& d) { return d.state_; }
    static void SetBuffers(DriverCallbackSourceInterface& d, DriverBuffer* begin, int count) {
        d.buffers_begin_ = begin;
        d.buffers_end_ = begin + count;
        d.buffer_count_ = count;
    }
    static void SetIndices(DriverCallbackSourceInterface& d, int read, int write) {
        d.read_index_ = read;
        d.write_index_ = write;
    }
    static int ReadIndex(const DriverCallbackSourceInterface& d) { return d.read_index_; }
    static void SetWords(DriverCallbackSourceInterface& d, int gain, int pitch) {
        d.field_28_ = gain;
        d.field_34_ = pitch;
    }
    static int ByteOffset(const DriverCallbackSourceInterface& d) { return d.byte_offset_; }
    static void SetByteOffsetRaw(DriverCallbackSourceInterface& d, int value) { d.byte_offset_ = value; }
    static void SetBufferBytes(DriverCallbackSourceInterface& d, int bytes) { d.buffer_bytes_ = bytes; }
    static int GainWord(const DriverCallbackSourceInterface& d) { return d.field_28_; }
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
    using vox::DriverBuffer;
    using vox::DriverCallbackSourceInterface;
    using vox::DriverCallbackSourceInterfaceTestAccess;

    // The original stride is 0x18 bytes on 32-bit ARM; the port holds a data pointer, so only
    // the fields it reads are checked here (ready flag at +0x14 in the original).
    static_assert(sizeof(DriverBuffer) >= 0x15, "buffer holds the ready flag");

    // The constructor takes a format (channels, rate, bits, one more word) and a buffer
    // count pointer; a zero count gives no ring.
    const std::int32_t kFormat[4] = {2, 44100, 16, 0};
    const std::int32_t kNoBuffers = 0;

    DriverCallbackSourceInterface source(kFormat, &kNoBuffers, 0);
    CHECK(source.AllowBufferReference() == 1);
    CHECK(source.GetBufferCount() == 0);
    // The constructor leaves state 0; these checks start from the no-buffer state -1.
    DriverCallbackSourceInterfaceTestAccess::SetState(source, -1);
    CHECK(source.GetState() == -1);

    // With state -1 nothing moves.
    source.Play();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == -1);

    DriverBuffer buffers[3];
    buffers[0].ready_ = 1;
    buffers[1].ready_ = 0;
    buffers[2].ready_ = 0;
    DriverCallbackSourceInterfaceTestAccess::SetBuffers(source, buffers, 3);
    DriverCallbackSourceInterfaceTestAccess::SetState(source, 0);
    CHECK(source.GetBufferCount() == 3);

    // Play then Pause: 0 -> 1 -> 2; a second Pause changes nothing.
    source.Play();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == 1);
    source.Pause();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == 2);
    source.Pause();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == 2);

    // Byte offset round trip (SetByteOffset writes +0x58 under the lock).
    source.SetByteOffset(4096);
    CHECK(source.GetByteOffset() == 4096);

    // NeedData reports the read buffer's ready flag while playing.
    DriverCallbackSourceInterfaceTestAccess::SetState(source, 1);
    DriverCallbackSourceInterfaceTestAccess::SetIndices(source, 0, 0);
    CHECK(source.NeedData() == 1);
    DriverCallbackSourceInterfaceTestAccess::SetIndices(source, 1, 0);
    CHECK(source.NeedData() == 0);

    // GetState: playing with the write buffer ready reports 3, otherwise the state.
    DriverCallbackSourceInterfaceTestAccess::SetIndices(source, 0, 0);
    CHECK(source.GetState() == 3);
    DriverCallbackSourceInterfaceTestAccess::SetIndices(source, 0, 1);
    CHECK(source.GetState() == 1);

    // Stop from playing: 3, every buffer ready, indices and byte offset cleared.
    buffers[1].ready_ = 0;
    source.Stop();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == 3);
    CHECK(buffers[0].ready_ == 1 && buffers[1].ready_ == 1 && buffers[2].ready_ == 1);
    CHECK(DriverCallbackSourceInterfaceTestAccess::ReadIndex(source) == 0);
    CHECK(source.GetByteOffset() == 0);

    // Reset with buffers: state 0 and the byte offset cleared again.
    DriverCallbackSourceInterfaceTestAccess::SetByteOffsetRaw(source, 77);
    source.Reset();
    CHECK(DriverCallbackSourceInterfaceTestAccess::State(source) == 0);
    CHECK(source.GetByteOffset() == 0);

    // Cleanup drops the buffer list end back to the begin pointer.
    source.Cleanup();
    CHECK(source.GetBufferCount() == 3);
    CHECK(source.NeedData() == 0);  // no buffers left in the list, so no ready flag

    // Fixed-point accessors: the words are Q14, so 16384 is 1.0 and 8192 is 0.5.
    DriverCallbackSourceInterfaceTestAccess::SetWords(source, 16384, 8192);
    CHECK(source.GetGain() == 1.0f);
    CHECK(source.GetPitch() == 0.5f);

    // SetGain stores the Q14 word: 1.0 -> 16384, 0.5 -> 8192, 0 -> 0.
    source.SetGain(1.0f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 16384);
    source.SetGain(0.5f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 8192);
    CHECK(source.GetGain() == 0.5f);
    source.SetGain(0.0f);
    CHECK(DriverCallbackSourceInterfaceTestAccess::GainWord(source) == 0);

    // GetNbAvailableSamples on three empty buffers of 4 blocks each (size 400, 100 bytes).
    {
        DriverCallbackSourceInterface ring(kFormat, &kNoBuffers, 0);
        DriverBuffer ringBuffers[3];
        for (DriverBuffer& b : ringBuffers) {
            b.size_ = 400;
            b.ready_ = 0;
        }
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, ringBuffers, 3);
        DriverCallbackSourceInterfaceTestAccess::SetBufferBytes(ring, 100);
        DriverCallbackSourceInterfaceTestAccess::SetIndices(ring, 0, 0);
        CHECK(ring.GetNbAvailableSamples(3) == 3);      // first buffer alone has 4
        CHECK(ring.GetNbAvailableSamples(6) == 6);      // 4 + 4 reaches 6 in the next buffer
        CHECK(ring.GetNbAvailableSamples(10) == 10);    // 4 + 4 + 4 reaches 10
        CHECK(ring.GetNbAvailableSamples(20) == -1);    // the ring wraps short of 20
        ringBuffers[1].ready_ = 1;                      // a ready buffer stops the walk
        CHECK(ring.GetNbAvailableSamples(6) == 4);
        ringBuffers[1].ready_ = 0;
        ringBuffers[0].ready_ = 1;                      // the write buffer ready means 0
        CHECK(ring.GetNbAvailableSamples(3) == 0);
        ringBuffers[0].ready_ = 0;
        ringBuffers[0].field_10_ = 1;                   // the count at +0x10 is subtracted
        CHECK(ring.GetNbAvailableSamples(3) == 3);      // 3 free in the first buffer
        CHECK(ring.GetNbAvailableSamples(4) == 4);      // 3 + 4 reaches 4 in the next buffer
        // The destructor frees the ring, so detach the stack array first.
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, nullptr, 0);
    }
    DriverCallbackSourceInterfaceTestAccess::SetBuffers(source, nullptr, 0);

    std::printf("driver_callback_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
