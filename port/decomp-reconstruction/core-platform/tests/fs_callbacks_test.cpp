#include "core-platform/fs_callbacks.hpp"

#include <cstdio>
#include <cstdlib>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // A handle over a 10-byte buffer, positioned at byte 6.
    FsFileHandle* h = static_cast<FsFileHandle*>(std::malloc(sizeof(FsFileHandle)));
    h->data_ = static_cast<unsigned char*>(std::malloc(10));
    std::memcpy(h->data_, "0123456789", 10);
    h->size_ = 10;
    h->pos_ = 6;

    // A read of 8 bytes clamps to the 4 that remain.
    char out[16] = {};
    CHECK(fs_read_func(out, 8, h) == 4 && h->pos_ == 10);
    CHECK(std::strncmp(out, "6789", 4) == 0 && out[4] == '\0');

    // A read that fits is copied in full.
    h->pos_ = 2;
    char small[4] = {};
    CHECK(fs_read_func(small, 3, h) == 3 && h->pos_ == 5);
    CHECK(std::memcmp(small, "234", 3) == 0);

    CHECK(fs_read_func(out, 4, nullptr) == 0);
    CHECK(fs_close_func(h) == 0);  // frees the buffer and the handle

    std::printf("%s\n", failures ? "fs_callbacks: FAILED" : "fs_callbacks: ok");
    return failures != 0;
}
