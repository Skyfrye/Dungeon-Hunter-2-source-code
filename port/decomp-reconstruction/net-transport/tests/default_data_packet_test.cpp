#include "net-transport/default_data_packet.hpp"

#include <cstdio>
#include <cstring>
#include <cwchar>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Scalars round-trip through the write and read cursors.
    {
        DefaultDataPacket p;
        CHECK(p.getDataType() == 1);
        CHECK(p.IsSendByTcp());
        CHECK(p.addByte(0xab) == 1);
        CHECK(p.addShort(-2) == 1);
        CHECK(p.addInt(0x12345678) == 1);
        CHECK(p.addFloat(1.5f) == 1);
        CHECK(p.getMessageLen() == 1 + 2 + 4 + 4);

        unsigned char b = 0;
        std::int16_t s = 0;
        int i = 0;
        float f = 0.0f;
        CHECK(p.getByte(b) == 1 && b == 0xab);
        CHECK(p.getShort(s) == 1 && s == -2);
        CHECK(p.getInt(i) == 1 && i == 0x12345678);
        CHECK(p.getFloat(f) == 1 && f == 1.5f);
        CHECK(p.getByte(b) == 0 && b == 0);  // past the end
    }

    // Big-endian layout of short and int.
    {
        DefaultDataPacket p;
        CHECK(p.addShort(0x1234) == 1);
        CHECK(p.addInt(0x0a0b0c0d) == 1);
        const unsigned char* body = reinterpret_cast<const unsigned char*>(p.getMessageBody());
        CHECK(static_cast<unsigned char>(body[0]) == 0x12);
        CHECK(static_cast<unsigned char>(body[1]) == 0x34);
        CHECK(static_cast<unsigned char>(body[2]) == 0x0a);
        CHECK(static_cast<unsigned char>(body[5]) == 0x0d);
    }

    // The body holds 4096 bytes: 4092 bytes of padding, then one int fits and the next one does not.
    {
        DefaultDataPacket p;
        for (int n = 0; n < DefaultDataPacket::kBodySize - 4; ++n) {
            CHECK(p.addByte(0) == 1);
        }
        CHECK(p.addInt(1) == 1);
        CHECK(p.addInt(2) == 0);
        CHECK(p.getMessageLen() == DefaultDataPacket::kBodySize);
    }

    // Length-prefixed strings and wide strings.
    {
        DefaultDataPacket p;
        CHECK(p.addByteLenString("hello", 5) == 1);
        const wchar_t wide[] = L"wide";
        CHECK(p.addByteLenWideString(wide, 4) == 1);

        char* text = nullptr;
        unsigned char len = 0;
        CHECK(p.getByteLenString(text, len) == 1);
        CHECK(len == 5 && std::strcmp(text, "hello") == 0);
        delete[] text;

        wchar_t* wtext = nullptr;
        CHECK(p.getByteLenWideString(wtext, len) == 1);
        CHECK(len == 4 && std::wcscmp(wtext, wide) == 0);
        delete[] wtext;
    }

    // Stub strings return 0 and leave the output alone.
    {
        DefaultDataPacket p;
        char* out = nullptr;
        std::int16_t n = 7;
        CHECK(p.addQueryString("x", 1) == 0);
        CHECK(p.getShortLenString(out, n) == 0 && out == nullptr && n == 7);
    }

    // Packet2String and String2Packet are inverses.
    {
        DefaultDataPacket src;
        CHECK(src.addInt(0x01020304) == 1);
        char wire[16] = {};
        int size = 0;
        src.Packet2String(wire, size);
        CHECK(size == 2 + 4);
        CHECK(static_cast<unsigned char>(wire[0]) == 0 && static_cast<unsigned char>(wire[1]) == 4);

        DefaultDataPacket dst;
        CHECK(dst.String2Packet(wire, size) == size);
        int value = 0;
        CHECK(dst.getInt(value) == 1 && value == 0x01020304);
        CHECK(dst.String2Packet(wire, 3) == -1);  // does not fit
    }

    // Data type routing, port, IP and next packet.
    {
        DefaultDataPacket p;
        p.setDataType(2);
        CHECK(p.IsSendByUdp() && !p.IsSendByTcp());
        p.setDataType(3);
        CHECK(p.IsSendByTcp() && !p.IsSendByUdp());
        p.setPort(9100);
        CHECK(p.getPort() == 9100);
        CHECK(p.getIP() == nullptr);
        p.setIP(const_cast<char*>("10.0.0.1"));
        CHECK(p.getIP() != nullptr && std::strcmp(p.getIP(), "10.0.0.1") == 0);
        p.setIP(nullptr);
        CHECK(p.getIP() == nullptr);
        CHECK(p.getNextPacket() == nullptr);
        DefaultDataPacket next;
        p.setNextPacket(&next);
        CHECK(p.getNextPacket() == &next);
    }

    std::printf("%s\n", failures ? "default_data_packet: FAILED" : "default_data_packet: ok");
    return failures != 0;
}
