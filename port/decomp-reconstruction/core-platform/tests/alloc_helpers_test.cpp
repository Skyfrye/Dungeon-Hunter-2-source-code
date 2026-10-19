#include "core-platform/memory.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    char* a = static_cast<char*>(CustomAlloc(8));
    CHECK(a != nullptr);
    std::memcpy(a, "abcdefg", 8);

    // Grow: the first bytes are copied and the old block is released.
    char* b = static_cast<char*>(CustomRealloc(a, 16));
    CHECK(b != nullptr);
    CHECK(std::memcmp(b, "abcdefg", 8) == 0);
    FreeMem(b);

    // Realloc of a null block is a plain allocation.
    void* c = CustomRealloc(nullptr, 4);
    CHECK(c != nullptr);
    CustomFree(c);

    void* m = CustomMemalign(16, 32);
    CHECK(m != nullptr);
    CustomFree(m);

    void* im = internal_malloc_aligned(16, 24, __FILE__, __LINE__, "test");
    CHECK(im != nullptr);
    CustomFree(im);

    void* plain = AllocateMem(64, 0, __FILE__, __LINE__, "test");
    CHECK(plain != nullptr);
    FreeMem(plain);

    void* aligned = AllocateMem(64, 16, __FILE__, __LINE__, "test");
    CHECK(aligned != nullptr);
    FreeMem(aligned);

    std::printf("%s\n", failures ? "alloc_helpers: FAILED" : "alloc_helpers: ok");
    return failures != 0;
}
