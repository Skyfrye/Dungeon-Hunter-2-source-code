// Stream base-class defaults: ReadRef falls back to Read, Destruct runs the
// destructor only, and the stream Init/Shutdown hooks do nothing.
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <utility>
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

// Cursor without a ReadRef override: the base default must copy through Read.
class CopyCursor final : public vox::StreamCursorInterface {
public:
    explicit CopyCursor(std::vector<std::uint8_t> data) : data_(std::move(data)) {}
    int Seek(int offset, int whence) override {
        (void)whence;
        pos_ = static_cast<std::size_t>(offset);
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
    bool IsSeekable() const override { return true; }

private:
    std::vector<std::uint8_t> data_;
    std::size_t pos_ = 0;
};

// Counts destructor runs so Destruct can be checked without freeing storage.
struct Counted {
    explicit Counted(int* counter) : counter_(counter) {}
    ~Counted() { ++*counter_; }
    int* counter_;
};

}  // namespace

int main() {
    CopyCursor cursor({1, 2, 3, 4, 5});
    std::uint8_t buf[8] = {};
    std::uint8_t* ref = buf;
    CHECK(cursor.ReadRef(ref, 3) == 3);
    CHECK(ref == buf);            // destination pointer is unchanged
    CHECK(buf[0] == 1 && buf[1] == 2 && buf[2] == 3);
    CHECK(cursor.Tell() == 3);
    CHECK(!cursor.AllowBufferReference());

    // Init and Shutdown are no-ops on the cursor and the stream bases.
    cursor.Init();
    cursor.Shutdown();
    CHECK(cursor.Tell() == 3);

    // Destruct ends the object's lifetime; the storage is then released separately.
    int destroyed = 0;
    void* raw = ::operator new(sizeof(Counted));
    Counted* obj = new (raw) Counted(&destroyed);
    Destruct(obj);
    CHECK(destroyed == 1);
    ::operator delete(raw);

    std::printf("stream_base_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
