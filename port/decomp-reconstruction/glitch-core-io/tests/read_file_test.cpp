#include "glitch-core-io/io/read_file.hpp"
#include "io_stub_files.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    glitch::io::testing::StubReadFile base;
    long size = 7;
    CHECK(base.getBuffer(&size) == nullptr);
    CHECK(base.getExternalBuffer("x", &size) == nullptr);
    CHECK(!base.isAllInMemory());
    std::printf("%s\n", failures ? "read_file: FAILED" : "read_file: ok");
    return failures != 0;
}
