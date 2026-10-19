#include "net-transport/buffer.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        Buffer b;
        b.setSize(16);
        CHECK(b.size() == 16);
        const char msg[] = "hello";
        b.write(3, msg, sizeof(msg));
        char out[sizeof(msg)] = {};
        b.read(3, out, sizeof(msg));
        CHECK(std::strcmp(out, "hello") == 0);
        b.clear();
        CHECK(b.size() == 0);
    }
    {
        // Writes that cross block boundaries continue into the next block (Hex-Rays Buffer::write).
        Buffer b;
        b.setSize(8);
        std::uint8_t data[8] = {1, 2, 3, 4, 5, 6, 7, 8};
        b.write(4, data, 8);
        CHECK(b.size() == 12);
        std::uint8_t back[4] = {};
        b.read(4, back, 4);
        CHECK(back[0] == 1 && back[3] == 4);
    }
    {
        // read() walks blocks: an 8-byte write in 4-byte blocks spans three blocks.
        Buffer b;
        b.setSize(4);
        const char text[] = "abcdefgh";
        b.write(0, text, 8);
        CHECK(b.size() == 8);
        char out[7] = {};
        b.read(2, out, 6);
        CHECK(std::memcmp(out, "cdefgh", 6) == 0);
        char tail[9] = {};
        b.read(0, tail, 8);
        CHECK(std::memcmp(tail, "abcdefgh", 8) == 0);
    }
    std::printf("%s\n", failures ? "buffer: FAILED" : "buffer: ok");
    return failures != 0;
}
