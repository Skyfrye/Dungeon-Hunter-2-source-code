#include "glitch-core-io/io/memory_write_file.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::io;

int main() {
    CMemoryWriteFile f(16);
    CHECK(f.getBufferSize() == 0 && f.getPos() == 0);
    CHECK(std::strcmp(f.getFileName(), "<memory>") == 0);
    CHECK(f.referenceCounter == 1);

    const char text[] = "abc";
    CHECK(f.write(text, 3) == 3);
    CHECK(f.getBufferSize() == 3);
    CHECK(f.getPos() == 3);
    CHECK(std::memcmp(f.getBuffer(), "abc", 3) == 0);

    // Writing advances the position, so the next write appends.
    CHECK(f.write("de", 2) == 2);
    CHECK(f.getPos() == 5 && f.getBufferSize() == 5);
    CHECK(std::memcmp(f.getBuffer(), "abcde", 5) == 0);

    // An absolute seek does nothing.
    CHECK(f.seek(1, false));
    CHECK(f.getPos() == 5);
    f.position = 0;

    // Relative seek forward grows the buffer to pos + 1 (the buffer holds 5 bytes here).
    f.position = 0;
    CHECK(f.seek(5, true));
    CHECK(f.getPos() == 5 && f.getBufferSize() == 5);
    CHECK(f.seek(2, true));
    CHECK(f.getPos() == 7 && f.getBufferSize() == 8);

    // Seeking before the start clamps to 0.
    CHECK(f.seek(-100, true));
    CHECK(f.getPos() == 0);

    f.flush();
    std::printf("%s\n", failures ? "memory_write_file: FAILED" : "memory_write_file: ok");
    return failures != 0;
}
