#include "net-transport/net_struct.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    {
        NetStructUInt<8> field;
        CHECK(field.TestValue(255));
        CHECK(!field.TestValue(256));
        field.SetValue(0xAB);
        NetBitStream w(8);
        field.Write(w);
        NetStructUInt<8> back;
        NetBitStream r(8);
        r.WriteStream(w);
        back.Read(r);
        CHECK(back.GetValue() == 0xAB);
    }
    {
        NetStructBool flag;
        flag.SetValue(true);
        NetBitStream w(4);
        flag.Write(w);
        NetStructBool back;
        NetBitStream r(4);
        r.WriteStream(w);
        back.Read(r);
        CHECK(back.GetValue());
    }
    {
        NetStructRangedFloat<16, -50000, 50000> f;
        CHECK(f.TestValue(-50000.f) && f.TestValue(50000.f) && !f.TestValue(50001.f));
        f.SetValue(12345.f);
        NetBitStream w(8);
        f.Write(w);
        NetBitStream r(8);
        r.WriteStream(w);
        NetStructRangedFloat<16, -50000, 50000> back;
        back.Read(r);
        float err = back.GetValue() - 12345.f;
        CHECK(err < 2.f && err > -2.f);  // 16 bits over a 100000 range: about 1.5 units per step
    }
    {
        // The 18-bit form divides by 262140 (not 2^18 - 1): raw 262140 maps to Max.
        NetBitStream w(8);
        w.WriteU32(262140, 18);
        NetBitStream r(8);
        r.WriteStream(w);
        NetStructRangedFloat<18, -200000, 200000> top;
        top.Read(r);
        CHECK(top.GetValue() == 200000.f);
    }
    {
        CNetworkId a;
        a.Reset();
        CNetworkId b;
        b.Reset();
        CHECK(!a.IsEqual(b));
    }
    std::printf("%s\n", failures ? "net_struct: FAILED" : "net_struct: ok");
    return failures != 0;
}
