#include "net-transport/data_packet_lobby.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Writer: write typed values, then pack. The header holds the length minus 2.
    DataPacketLobby writer;
    CHECK(writer.getDataType() == 1);
    CHECK(writer.IsSendByTcp());
    CHECK(writer.addInt(0x01020304) == 1);
    CHECK(writer.addShort(-2) == 1);
    CHECK(writer.addByte(0x7f) == 1);
    CHECK(writer.addFloat(1.5f) == 1);
    CHECK(writer.addShortLenString("abc", 3) == 1);
    writer.packMessage();
    CHECK(writer.getMessageLen() == 2 + 4 + 2 + 1 + 4 + 2 + 3);
    CHECK(writer.getMessageBody()[0] == 0);
    CHECK(writer.getMessageBody()[1] == 16);  // length - 2

    // Reader: a copy of the packed bytes. Skip the 2-byte header with getShort.
    DataPacketLobby reader;
    reader.setMessageBody(reinterpret_cast<const unsigned char*>(writer.getMessageBody()), writer.getMessageLen());
    std::int16_t header = 0;
    CHECK(reader.getShort(header) == 1);
    CHECK(header == static_cast<std::int16_t>(writer.getMessageLen() - 2));

    int i = 0;
    CHECK(reader.getInt(i) == 1 && i == 0x01020304);
    std::int16_t s = 0;
    CHECK(reader.getShort(s) == 1 && s == -2);
    std::uint8_t b = 0;
    CHECK(reader.getByte(b) == 1 && b == 0x7f);
    float f = 0.0f;
    CHECK(reader.getFloat(f) == 1 && f == 1.5f);
    char* text = nullptr;
    std::int16_t text_len = 0;
    CHECK(reader.getShortLenString(text, text_len) == 1);
    CHECK(text_len == 3 && text != nullptr && std::strcmp(text, "abc") == 0);
    delete[] text;
    // Nothing is left to read.
    CHECK(reader.getByte(b) == 0);
    CHECK(reader.getInt(i) == 0);

    // Growth: writing past 4096 bytes doubles the buffer and keeps every byte.
    DataPacketLobby big;
    for (int n = 0; n < 5000; ++n) {
        CHECK(big.addByte(static_cast<std::uint8_t>(n)) == 1);
    }
    big.packMessage();
    CHECK(big.getMessageLen() == 5002);
    // Bytes start at offset 2 of the grown buffer (the header is at 0 and 1).
    const unsigned char* body = reinterpret_cast<const unsigned char*>(big.getMessageBody());
    bool all_match = true;
    for (int n = 0; n < 5000; ++n) {
        if (body[2 + n] != static_cast<std::uint8_t>(n)) {
            all_match = false;
        }
    }
    CHECK(all_match);

    // Port and IP accessors.
    DataPacketLobby meta;
    meta.setPort(4242);
    CHECK(meta.getPort() == 4242);
    CHECK(meta.getIP() == nullptr);
    meta.setIP("10.0.0.1");
    CHECK(std::strcmp(meta.getIP(), "10.0.0.1") == 0);
    meta.setDataType(2);
    CHECK(meta.IsSendByUdp() && !meta.IsSendByTcp());
    meta.setDataType(3);
    CHECK(meta.IsSendByTcp());

    // A null next packet and the stub string helpers.
    CHECK(meta.getNextPacket() == nullptr);
    CHECK(meta.addByteLenString("x", 1) == 0);

    if (failures == 0) {
        std::printf("data_packet_lobby_test: all checks passed\n");
    }
    return failures == 0 ? 0 : 1;
}
