#include "net-transport/net_struct_interpolation.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// The templates are abstract (Read, Write and TestValue are pure), so the test adds those.
class Probe : public NetStructInterpolatedRangedFloat18 {
public:
    explicit Probe(float value) : NetStructInterpolatedRangedFloat18(value) {}
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const float&) const override { return true; }
    int Average() const { return average_; }
};

}  // namespace

int main() {
    // The constructor stores the value.
    Probe probe(1.5f);
    CHECK(probe.GetValue() == 1.5f);

    // PostLoad feeds the value with the time. With a frame time of 0, the first sample has age 0,
    // so the average is 0, and the second sample (time 4) gives an age of -4 and an average of -2.
    probe.PostLoad(0);   // vtable +0x0c, void: AddValue's 20 is a leftover
    CHECK(probe.Average() == 0);
    probe.PostLoad(4);
    CHECK(probe.Average() == -2);
    CHECK(probe.GetSizeBits() == 18);   // the constructor sets sizeBits to Bits (0x3a681c)
    NetStructMember& as_member = probe;
    as_member.PostLoad(8);              // NetStruct::Load reaches it through the NetStructMember slot

    // AddValue returns 20 on every path.
    CHECK(probe.AddValue(2.0f, 0) == 20);

    std::printf("%s\n", failures ? "net_struct_interpolation: FAILED" : "net_struct_interpolation: ok");
    return failures ? 1 : 0;
}
