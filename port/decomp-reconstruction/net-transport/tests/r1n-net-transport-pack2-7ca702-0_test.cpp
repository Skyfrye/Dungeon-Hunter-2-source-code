// Tests for batch r1n-net-transport-pack2-7ca702-0: DataPacketLobby, DefaultDataPacket and
// NetBitStream bodies (rows in ledger.d/r1n-net-transport-pack2-7ca702-0.csv).
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "net-transport/data_packet_lobby.hpp"
#include "net-transport/default_data_packet.hpp"
#include "net-transport/net_bit_stream.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A source packet with a fixed type and body. The packet classes read it through the
// DataPacket virtuals (getMessageLen, getMessageBody, getDataType).
class FixedPacket : public DefaultDataPacket {
public:
    FixedPacket(int type, const char* body, std::size_t length) {
        setDataType(type);
        setMessageBody(reinterpret_cast<const unsigned char*>(body), static_cast<int>(length));
    }
};

}  // namespace

int main() {
    // DataPacketLobby(DataPacket*): data type, length and body come from the source.
    {
        FixedPacket src(3, "abc", 3);
        DataPacketLobby lobby(&src);
        CHECK(lobby.getDataType() == 3);
        CHECK(lobby.IsSendByTcp());
        CHECK(lobby.getMessageLen() == 3);
        CHECK(std::memcmp(lobby.getMessageBody(), "abc", 3) == 0);
    }

    // String2Packet: the header is read at the position (0 after the source constructor). The body
    // is set from data + 2 with that length. It returns length + 2, or -1 when the length does not fit.
    {
        FixedPacket src(1, "", 0);
        DataPacketLobby lobby(&src);
        char data[] = {0, 3, 'a', 'b', 'c', 'd'};
        CHECK(lobby.String2Packet(data, 6) == 5);
        CHECK(lobby.getMessageLen() == 3);
        CHECK(std::memcmp(lobby.getMessageBody(), "abc", 3) == 0);
    }
    {
        FixedPacket src(1, "", 0);
        DataPacketLobby lobby(&src);
        char tooshort[] = {0, 5, 'a', 'b', 'c', 'd', 'e'};
        CHECK(lobby.String2Packet(tooshort, 6) == -1);  // 5 + 1 >= 6
    }

    // addShortLenString and getShortLenString: a packed message reads back as it was written.
    // Header 2 (length minus 2), type byte 1, then the 2-byte length and "hello": 10 bytes in all.
    {
        DataPacketLobby w;
        CHECK(w.addByte(1) == 1);
        CHECK(w.addShortLenString("hello", 5) == 1);
        CHECK(w.addShortLenString(nullptr, 5) == 0);
        CHECK(w.addShortLenString("x", 0) == 0);
        w.packMessage();
        CHECK(w.getMessageLen() == 10);
        CHECK(w.getMessageBody()[0] == 0 && w.getMessageBody()[1] == 8);

        DataPacketLobby r(&w);
        std::int16_t header = 0;
        CHECK(r.getShort(header) == 1 && header == 8);
        std::uint8_t type = 0;
        CHECK(r.getByte(type) == 1 && type == 1);
        char* text = nullptr;
        std::int16_t length = 0;
        CHECK(r.getShortLenString(text, length) == 1);
        CHECK(length == 5 && text != nullptr && std::strcmp(text, "hello") == 0);
        delete[] text;
    }

    // addPacket: a 2-byte big-endian length, then the source body. packMessage then sets the header.
    {
        FixedPacket src(2, "abc", 3);
        DataPacketLobby w;
        w.addPacket(&src);
        w.packMessage();  // 2 + 2 + 3 = 7 bytes, header 5
        CHECK(w.getMessageLen() == 7);
        const unsigned char* b = reinterpret_cast<const unsigned char*>(w.getMessageBody());
        CHECK(b[0] == 0 && b[1] == 5);
        CHECK(b[2] == 0 && b[3] == 3);
        CHECK(std::memcmp(b + 4, "abc", 3) == 0);
    }

    // setIP stores its own copy; a null address clears it.
    {
        DataPacketLobby w;
        CHECK(w.getIP() == nullptr);
        const char* stored = w.setIP("10.0.0.1");
        CHECK(stored != nullptr && std::strcmp(w.getIP(), "10.0.0.1") == 0);
        CHECK(stored == w.getIP());
        CHECK(w.setIP(nullptr) == nullptr && w.getIP() == nullptr);
    }

    // DefaultDataPacket(DataPacket*): data type, length and body come from the source.
    {
        FixedPacket src(2, "wxyz", 4);
        DefaultDataPacket d(&src);
        CHECK(d.getDataType() == 2 && d.IsSendByUdp());
        CHECK(d.getMessageLen() == 4);
        CHECK(std::memcmp(d.getMessageBody(), "wxyz", 4) == 0);
    }

    // DefaultDataPacket::addPacket: a 2-byte length, then the body, after the existing byte.
    {
        FixedPacket src(1, "abc", 3);
        DefaultDataPacket d;
        CHECK(d.addByte(9) == 1);
        d.addPacket(&src);
        CHECK(d.getMessageLen() == 6);
        const unsigned char* b = reinterpret_cast<const unsigned char*>(d.getMessageBody());
        CHECK(b[0] == 9 && b[1] == 0 && b[2] == 3);
        CHECK(std::memcmp(b + 3, "abc", 3) == 0);
    }

    // DefaultDataPacket::getPacket: reads a 2-byte length and the body after it, into a new packet.
    {
        FixedPacket src(1, "abc", 3);
        DefaultDataPacket s;
        s.addPacket(&src);  // body: 0, 3, 'a', 'b', 'c'
        DataPacket* out = nullptr;
        const int result = s.getPacket(out);  // the new packet's body pointer, as the 32-bit register
        CHECK(out != nullptr && result == static_cast<int>(reinterpret_cast<std::uintptr_t>(out->getMessageBody())));
        CHECK(out != nullptr && out->getMessageLen() == 3);
        CHECK(out != nullptr && std::memcmp(out->getMessageBody(), "abc", 3) == 0);
        delete out;
    }

    // Packet2String: big-endian length, then the body; the size is 2 + length.
    {
        DefaultDataPacket d;
        CHECK(d.addByte(1) == 1 && d.addByte(2) == 1 && d.addByte(3) == 1);
        char out[16] = {};
        int size = 0;
        d.Packet2String(out, size);
        CHECK(size == 5);
        CHECK(static_cast<unsigned char>(out[0]) == 0 && static_cast<unsigned char>(out[1]) == 3);
        CHECK(static_cast<unsigned char>(out[2]) == 1 && static_cast<unsigned char>(out[4]) == 3);
    }

    // DefaultDataPacket::setIP stores its own copy; a null address clears it.
    {
        DefaultDataPacket d;
        char ip[] = "192.168.0.2";
        d.setIP(ip);
        CHECK(d.getIP() != nullptr && d.getIP() != ip && std::strcmp(d.getIP(), ip) == 0);
        d.setIP(nullptr);
        CHECK(d.getIP() == nullptr);
    }

    // NetBitStream: a byte array written at bit offset 3 reads back from the same offset.
    // Stream bits: 101, then 0xAB, then 0xCD, so the bytes are B5 79 A0.
    {
        NetBitStream w(8);
        w.WriteByte(0x5, 3);
        const std::uint8_t ab_cd[] = {0xAB, 0xCD};
        w.WriteByteArray(ab_cd, 2);
        CHECK(w.WritePosition() == 19);

        NetBitStream r(w);
        CHECK(r.ReadByte(3) == 5);
        std::uint8_t out[2] = {};
        r.ReadByteArray(out, 2);
        CHECK(out[0] == 0xAB && out[1] == 0xCD);
    }

    // NetBitStream: an aligned byte array round trip.
    {
        NetBitStream w(4);
        const std::uint8_t pair[] = {0x12, 0x34};
        w.WriteByteArray(pair, 2);
        NetBitStream r(w);
        std::uint8_t out[2] = {};
        r.ReadByteArray(out, 2);
        CHECK(out[0] == 0x12 && out[1] == 0x34);
    }

    // WriteString and ReadString: one length byte, then the characters.
    {
        NetBitStream w(32);
        w.WriteString(std::string("hi"), 0);
        NetBitStream r(w);
        CHECK(r.ReadString() == "hi");
    }

    // Copy constructor, operator== and operator=: a copy compares equal, and assignment into a
    // smaller stream reallocates it to the source size.
    {
        NetBitStream a(4);
        a.WriteByte(0x0F, 4);  // 1111
        a.WriteByte(0x3, 2);   // 11
        NetBitStream b(a);
        CHECK(b == a);
        CHECK(b.WritePosition() == 6);
        NetBitStream c(2);
        c = a;
        CHECK(c == a);
        CHECK(c.Size() == 4);
        CHECK(c.WritePosition() == 6);
    }

    std::printf("%s\n", failures ? "r1n-net-transport-pack2-7ca702-0: FAILED"
                                 : "r1n-net-transport-pack2-7ca702-0: ok");
    return failures != 0;
}
