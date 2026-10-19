#include "net-transport/net_bit_stream.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        // Single bits, MSB first, then read them back.
        NetBitStream w(4);
        w.WriteBit(1);
        w.WriteBit(0);
        w.WriteBit(1);
        CHECK(w.WritePosition() == 3);
        CHECK(static_cast<std::uint8_t>(w.Size()) == 4);
        NetBitStream r(4);
        r.SetBuffer(reinterpret_cast<const char*>("\xA0\0\0\0"), 4);  // 1010 0000
        CHECK(r.ReadBit() == 1);
        CHECK(r.ReadBit() == 0);
        CHECK(r.ReadBit() == 1);
        CHECK(r.ReadBit() == 0);
    }
    {
        // Mixed-width integers across byte boundaries.
        NetBitStream w(32);
        w.WriteU32(0x1ABC, 13);
        w.WriteU32(0x5, 3);
        w.WriteU32(0xDEADBEEF, 32);
        CHECK(w.WritePosition() == 48);
        NetBitStream r(32);
        r.WriteStream(w);  // reads are bounded by the write position, so copy it in
        CHECK(r.ReadU32(13) == 0x1ABC);
        CHECK(r.ReadU32(3) == 0x5);
        CHECK(r.ReadU32(32) == 0xDEADBEEF);
    }
    {
        // Byte arrays and strings, with revert back to a saved point.
        // The 0 here is the "no cap" form: the listing at 0x80edb0 branches on the third argument first
        // (CMP R2,#0 / BNE 0x80edf4), and the argument==0 path writes the string's whole length. This
        // round-trips in full, which is what it is checking.
        NetBitStream w(64);
        w.WriteBit(1);
        w.SetRevertPoint();
        w.WriteString("hello", 0);
        w.WriteByteArray("abc", 3);
        NetBitStream r(64);
        r.WriteStream(w);
        CHECK(r.ReadBit() == 1);
        CHECK(r.ReadString() == "hello");
        char tail[4] = {};
        r.ReadByteArray(tail, 3);
        CHECK(std::strcmp(tail, "abc") == 0);
        w.Revert();
        CHECK(w.WritePosition() == 1);
        w.Reset();
        CHECK(w.WritePosition() == 0 && w.ReadPosition() == 0);
    }
    {
        // The non-zero form is a cap, and it is the form every real caller uses:
        // NetStructString<16>::Write passes MOV R2,#0x10 (0x81e220), NetStructString<256>::Write passes
        // MOV R2,#0x100 (0x800c00). A string longer than the bound is truncated to the bound.
        NetBitStream capped(64);
        capped.WriteString("hello world", 5);
        NetBitStream cr(64);
        cr.WriteStream(capped);
        CHECK(cr.ReadString() == "hello");
        // Shorter than the bound stays whole, because the clamp only fires when len >= arg3.
        NetBitStream under(64);
        under.WriteString("hi", 16);
        NetBitStream ur(64);
        ur.WriteStream(under);
        CHECK(ur.ReadString() == "hi");
    }
    {
        // Reading past the written region sets an overflow and returns zero.
        NetBitStream w(8);
        w.WriteU32(0x7, 3);
        CHECK(w.ReadU32(8) == 0);
    }
    {
        // Copy constructor and operator= copy the size and both positions (Hex-Rays).
        NetBitStream a(8);
        a.WriteU32(0x12, 8);
        NetBitStream copy(a);
        CHECK(copy.Size() == 8 && copy.WritePosition() == 8);
        CHECK(copy == a);
        NetBitStream assigned(4);
        assigned = a;
        CHECK(assigned.Size() == 8 && assigned.WritePosition() == 8);
        CHECK(assigned == a);
    }
    std::printf("%s\n", failures ? "net_bit_stream: FAILED" : "net_bit_stream: ok");
    return failures != 0;
}
