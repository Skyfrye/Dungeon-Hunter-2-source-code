// GetNbAvailableSamples with buffer_bytes_ == 0. The ARM divides by buffer_bytes_ with no
// check, and the target's __aeabi_idiv returns 0 for a zero divisor (NOTES.md, Decisions),
// so every buffer counts 0 blocks. A free buffer then gives 0 - consumed, so the walk
// reports the requested count only when the first buffer is ready (0) or the ring wraps (-1).
#include <cstdint>
#include <cstdio>

#include "vox-audio/vox/driver_callback.hpp"

namespace vox {
struct DriverCallbackSourceInterfaceTestAccess {
    static void SetBuffers(DriverCallbackSourceInterface& d, DriverBuffer* begin, int count) {
        d.buffers_begin_ = begin;
        d.buffers_end_ = begin + count;
        d.buffer_count_ = count;
    }
    static void SetIndices(DriverCallbackSourceInterface& d, int read, int write) {
        d.read_index_ = read;
        d.write_index_ = write;
    }
    static void SetBufferBytes(DriverCallbackSourceInterface& d, int bytes) { d.buffer_bytes_ = bytes; }
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

    const std::int32_t kFormat[4] = {2, 44100, 16, 0};
    const std::int32_t kNoBuffers = 0;

    {
        // Two free buffers with zero bytes per block: every block count is 0.
        DriverCallbackSourceInterface ring(kFormat, &kNoBuffers, 0);
        DriverBuffer buffers[2];
        for (DriverBuffer& b : buffers) {
            b.size_ = 400;
            b.ready_ = 0;
        }
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, buffers, 2);
        DriverCallbackSourceInterfaceTestAccess::SetBufferBytes(ring, 0);
        DriverCallbackSourceInterfaceTestAccess::SetIndices(ring, 0, 0);
        CHECK(ring.GetNbAvailableSamples(1) == -1);  // no buffer gives any sample; the walk wraps
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, nullptr, 0);
    }
    {
        // A ready write buffer returns 0 before any division.
        DriverCallbackSourceInterface ring(kFormat, &kNoBuffers, 0);
        DriverBuffer buffers[2];
        buffers[0].ready_ = 1;
        buffers[1].ready_ = 1;
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, buffers, 2);
        DriverCallbackSourceInterfaceTestAccess::SetBufferBytes(ring, 0);
        DriverCallbackSourceInterfaceTestAccess::SetIndices(ring, 0, 0);
        CHECK(ring.GetNbAvailableSamples(5) == 0);
        DriverCallbackSourceInterfaceTestAccess::SetBuffers(ring, nullptr, 0);
    }

    std::printf("w12_get_nb_available_zero_bytes_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
