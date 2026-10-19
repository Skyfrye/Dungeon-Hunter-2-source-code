#include "core-platform/memory.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    InitMemory();
    char* a = static_cast<char*>(CustomAlloc(16, __FILE__, __LINE__, "main"));
    CHECK(a != nullptr);
    std::memset(a, 7, 16);
    FreeMem(a);
    FreeMem(nullptr);  // no-op as in the original

    void* g = GlitchAlloc(32, glitch::memory::EMH_UNRECOVERED);
    CHECK(g != nullptr);
    GlitchFree(g);

    void* s = SwfAlloc(8, swf::MEM_UNRECOVERED, __FILE__, __LINE__);
    CHECK(s != nullptr);
    SwfFree(s);

    int* arr = new (glitch::memory::EMH_UNRECOVERED, 0, __FILE__, __LINE__) int[4];
    CHECK(arr != nullptr);
    operator delete[](arr, glitch::memory::EMH_UNRECOVERED, 0, __FILE__, __LINE__);
    void* tagged = GlitchAlloc(8, glitch::memory::EMH_UNRECOVERED, 0, __FILE__, __LINE__);
    CHECK(tagged != nullptr);
    GlitchFree(tagged);

    LockMemoryMutex();
    UnlockMemoryMutex();
    UnInitMem();
    std::printf("%s\n", failures ? "memory: FAILED" : "memory: ok");
    return failures != 0;
}
