// mpc_getsize: the Musepack reader reports the size of the stream its cursor reads (owner
// word +0x04 of the cursor, then the stream's Size). Covers a memory-buffer stream.
#include <cstdint>
#include <cstdio>

#include "vox-audio/deps/mpc_reader.hpp"
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

}  // namespace

int main() {
    static const std::uint8_t kBytes[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};

    // A reader with no cursor reports 0.
    mpc_reader_t empty;
    CHECK(mpc_getsize(&empty) == 0);

    vox::StreamMemoryBufferParams params;
    params.data = kBytes;
    params.size = 10;
    params.explicit_owns = false;
    params.owns = false;
    vox::StreamMemoryBuffer buffer(&params);

    vox::StreamCursorInterface* cursor = buffer.CreateNewCursor();
    CHECK(cursor != nullptr);
    if (cursor != nullptr) {
        CHECK(cursor->OwnerStream() == &buffer);
        mpc_reader_t reader;
        reader.data = cursor;
        CHECK(mpc_getsize(&reader) == 10);
        buffer.DestroyCursor(cursor);
    }

    if (g_failures == 0) {
        std::printf("mpc_getsize_test: ok\n");
        return 0;
    }
    std::fprintf(stderr, "mpc_getsize_test: %d failure(s)\n", g_failures);
    return 1;
}
