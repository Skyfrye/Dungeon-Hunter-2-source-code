#include "net-transport/buffered_stream.hpp"
#include "dh2/StreamBuffer.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        StreamBuffer s;
        CHECK(s.size() == 0);
        CHECK(s.canRead());
        CHECK(!s.canWrite());
        CHECK(s.tell() == 0);
        CHECK(s.tellWrite() == 0);
    }
    {
        StreamBuffer s;
        s.expand(16);
        CHECK(s.size() == 16);
        CHECK(s.tell() == 0 && s.tellWrite() == 0);

        const char msg[] = "hello";
        CHECK(s.write(msg, 5) == 5);
        CHECK(s.tellWrite() == 5);
        CHECK(s.size() == 16);

        // peek does not move the read position
        char out[8] = {};
        CHECK(s.peek(out, 5) == 5);
        CHECK(std::memcmp(out, "hello", 5) == 0);
        CHECK(s.tell() == 0);

        CHECK(s.read(out, 5) == 5);
        CHECK(std::memcmp(out, "hello", 5) == 0);
        CHECK(s.tell() == 5);

        // reads clip to the end of the stream
        char tail[32] = {};
        CHECK(s.read(tail, 100) == 11);
        CHECK(s.tell() == 16);
        CHECK(s.read(tail, 1) == 0);
    }
    {
        StreamBuffer s;
        s.expand(10);
        // seek past the size clamps to the size, as the original does
        s.seek(100);
        CHECK(s.tell() == 10);
        s.seek(3);
        CHECK(s.tell() == 3);
        s.skip(4);
        CHECK(s.tell() == 7);
        s.skip(100);
        CHECK(s.tell() == 10);

        s.seekWrite(2);
        const char xy[] = "XY";
        s.write(xy, 2);
        CHECK(s.tellWrite() == 4);
        s.seek(0);
        char back[10] = {};
        CHECK(s.read(back, 10) == 10);
        CHECK(back[2] == 'X' && back[3] == 'Y');
    }
    {
        StreamBuffer s;
        s.expand(4);
        s.write("abcd", 4);
        CHECK(s.size(0) == 4);
        s.clear();
        CHECK(s.size() == 0 && s.tell() == 0 && s.tellWrite() == 0);
    }
    {
        // Copy from another stream through the IStreamBase constructor.
        StreamBuffer src;
        src.expand(6);
        src.write("source", 6);
        src.seek(0);
        StreamBuffer dst(&src);
        CHECK(dst.size() == 6);
        char got[7] = {};
        CHECK(dst.read(got, 6) == 6);
        CHECK(std::memcmp(got, "source", 6) == 0);
    }
    {
        BufferedStream b;
        StreamBuffer src;
        src.expand(5);
        src.write("12345", 5);
        src.seek(0);
        b.FillBuffer(&src);
        CHECK(b.size() == 5);
        CHECK(b.data() != nullptr && std::memcmp(b.data(), "12345", 5) == 0);
    }
    std::printf("%s\n", failures ? "stream_buffer: FAILED" : "stream_buffer: ok");
    return failures != 0;
}
