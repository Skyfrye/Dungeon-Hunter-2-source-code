// Test for batch v1-vendor-gameswf-gameswf-fddef6-6.
//
// Covers the arithmetic that the batch's bodies use, through the header helpers in tu_file_callbacks.hpp: the byte count
// of mem_read_func, the grow decision and offset clamp of mem_write_func, the chunk size of buffered_read, the tell and
// eof rules of the buffered file, and one hand-computed trace of the window state across two reads.
//
// The batch .cpp is not linked here. Its bodies need the upstream tu_file and membuf code and the allocator, which are in
// other units.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)

#include <cstdint>
#include <cstdio>

#include "vendor-gameswf/tu_file_callbacks.hpp"

namespace {

int g_failures = 0;

#define EXPECT_EQ(actual, expected)                                                        \
    do {                                                                                   \
        long long a_ = static_cast<long long>(actual);                                     \
        long long e_ = static_cast<long long>(expected);                                   \
        if (a_ != e_) {                                                                    \
            std::printf("FAIL %s:%d: %s = %lld, expected %lld\n", __FILE__, __LINE__,     \
                        #actual, a_, e_);                                                  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

#define EXPECT_TRUE(cond)                                                                  \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);                    \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

using namespace gameswf;

void test_window_size() {
    EXPECT_EQ(kBufferedWindowSize, 4096);
    buffered_file bf{};
    EXPECT_EQ(sizeof(bf.m_window), 4096u);
}

// mem_read_func: min(bytes, size - position), and the position advances by the count.
void test_mem_read_count() {
    EXPECT_EQ(mem_read_count(10, 0, 4), 4);
    EXPECT_EQ(mem_read_count(10, 8, 5), 2);   // clipped at the end
    EXPECT_EQ(mem_read_count(10, 10, 3), 0);  // at the end
    EXPECT_EQ(mem_read_count(10, 3, 0), 0);   // nothing wanted
    EXPECT_EQ(mem_read_count(0, 0, 7), 0);    // empty buffer
}

// mem_write_func: grows when position - size + bytes is positive.
void test_mem_write_grow() {
    EXPECT_TRUE(mem_write_grows(10, 10, 4));    // append at the end
    EXPECT_TRUE(mem_write_grows(10, 12, 1));    // past the end (the binary grows to position + bytes)
    EXPECT_TRUE(!mem_write_grows(10, 2, 8));    // fits exactly: 2 - 10 + 8 == 0
    EXPECT_TRUE(!mem_write_grows(10, 0, 3));    // inside the data
}

// After the resize the offset is the position, and a position past the new size is clamped to it (both returned).
void test_mem_write_offset() {
    int pos = 0;
    EXPECT_EQ(mem_write_offset_after_resize(10, 14, &pos), 10);  // append: offset is the old position
    EXPECT_EQ(pos, 10);
    EXPECT_EQ(mem_write_offset_after_resize(20, 14, &pos), 14);  // position past the new size: clamped
    EXPECT_EQ(pos, 14);
    EXPECT_EQ(mem_write_offset_after_resize(12, 13, &pos), 12);  // past the old size, inside the new one
    EXPECT_EQ(pos, 12);
}

// buffered_read: the chunk is min(unread window bytes, wanted bytes).
void test_buffered_read_count() {
    EXPECT_EQ(buffered_read_count(4096, 10), 10);
    EXPECT_EQ(buffered_read_count(3, 10), 3);
    EXPECT_EQ(buffered_read_count(5, 5), 5);
    EXPECT_EQ(buffered_read_count(0, 10), 0);
}

// buffered_tell is the window start plus the bytes taken; buffered_get_eof is the underlying eof with an empty window.
void test_buffered_tell_and_eof() {
    EXPECT_EQ(buffered_tell_position(4096, 914), 5010);
    EXPECT_EQ(buffered_tell_position(0, 0), 0);
    EXPECT_TRUE(buffered_get_eof_state(true, 0));
    EXPECT_TRUE(!buffered_get_eof_state(true, 3));   // unread bytes remain in the window
    EXPECT_TRUE(!buffered_get_eof_state(false, 0));  // the underlying file is not at its end
}

// Hand-computed trace of buffered_read over an underlying file of 10000 bytes, using the same steps as the body:
//   read 10:    window refilled at base 0 (4096 bytes), taken 10, remaining 4086, offset 10, tell 10.
//   read 5000:  4086 taken from the window (offset 10 to 4096), remaining 0. Refill at base 4096 (the underlying
//               position after the first refill). 914 taken from the new window, remaining 3182, offset 914, tell 5010.
void test_buffered_read_trace() {
    // First read: a fresh window of 4096 bytes (the underlying position is 0 before it, so base 0).
    int base = 0;
    int offset = 0;
    int remaining = 0;
    int underlying_pos = 0;

    base = underlying_pos;                      // refill: base = tell
    remaining = kBufferedWindowSize;            // read returned 4096
    underlying_pos += kBufferedWindowSize;
    offset = 0;
    int count = buffered_read_count(remaining, 10);
    remaining -= count;
    offset += count;
    EXPECT_EQ(count, 10);
    EXPECT_EQ(remaining, 4086);
    EXPECT_EQ(buffered_tell_position(base, offset), 10);

    // Second read of 5000 bytes: drain the window first, then refill.
    int left = 5000;
    count = buffered_read_count(remaining, left);
    left -= count;
    remaining -= count;
    offset += count;
    EXPECT_EQ(count, 4086);
    EXPECT_EQ(remaining, 0);
    EXPECT_EQ(offset, 4096);
    EXPECT_EQ(left, 914);

    base = underlying_pos;                      // refill at position 4096
    EXPECT_EQ(base, 4096);
    remaining = kBufferedWindowSize;
    underlying_pos += kBufferedWindowSize;
    offset = 0;
    count = buffered_read_count(remaining, left);
    left -= count;
    remaining -= count;
    offset += count;
    EXPECT_EQ(count, 914);
    EXPECT_EQ(left, 0);
    EXPECT_EQ(remaining, 3182);
    EXPECT_EQ(offset, 914);
    EXPECT_EQ(buffered_tell_position(base, offset), 5010);
}

}  // namespace

int main() {
    test_window_size();
    test_mem_read_count();
    test_mem_write_grow();
    test_mem_write_offset();
    test_buffered_read_count();
    test_buffered_tell_and_eof();
    test_buffered_read_trace();
    if (g_failures == 0) {
        std::printf("all tests passed\n");
        return 0;
    }
    std::printf("%d failure(s)\n", g_failures);
    return 1;
}
