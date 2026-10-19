#include "net-transport/net_bit_stream_array.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    NetBitStreamArray streams(3, 16);
    streams.GetStream(0)->WriteU32(0xAB, 8);
    streams.GetStream(2)->WriteU32(0xCD, 8);
    NetBitStream out(64);
    streams.CopyAllStreams(out);
    CHECK(out.WritePosition() == 16);  // 8 bits from stream 0, none from stream 1, 8 from stream 2
    streams.ClearAllStreams();
    CHECK(streams.GetStream(0)->WritePosition() == 0);
    CHECK(streams.GetStream(2)->WritePosition() == 0);
    std::printf("%s\n", failures ? "net_bit_stream_array: FAILED" : "net_bit_stream_array: ok");
    return failures != 0;
}
