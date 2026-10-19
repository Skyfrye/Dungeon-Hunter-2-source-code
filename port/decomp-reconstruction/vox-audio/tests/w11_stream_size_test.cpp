// vox::StreamInterface::Size (0x8886e4) returns the size word at +0x04 of the stream, which the
// derived streams fill in. A memory buffer and a file-backed stream report their size through it.
#include <cstdint>
#include <cstdio>
#include <vector>

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

// Stream that only sets the base size word and reads it through the base accessor.
class SizeOnlyStream : public vox::StreamInterface {
public:
    explicit SizeOnlyStream(int size) { size_ = size; }
    int GetType() const override { return 0; }
    vox::StreamCursorInterface* CreateNewCursor() override { return nullptr; }
    void DestroyCursor(vox::StreamCursorInterface*) override {}
};
}  // namespace

int main() {
    SizeOnlyStream probe(1234);
    vox::StreamInterface* base = &probe;
    CHECK(base->Size() == 1234);

    // A memory buffer stores its size in the same base word.
    const std::uint8_t bytes[5] = {1, 2, 3, 4, 5};
    vox::StreamMemoryBufferParams params;
    params.data = bytes;
    params.size = 5;
    params.explicit_owns = false;
    params.owns = false;
    vox::StreamMemoryBuffer buffer(&params);
    vox::StreamInterface* as_base = &buffer;
    CHECK(as_base->Size() == 5);

    std::printf("w11_stream_size_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
