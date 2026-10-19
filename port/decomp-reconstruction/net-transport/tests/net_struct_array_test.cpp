#include "net-transport/net_struct_array.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class TestElement {
public:
    bool has_data = false;
    bool write_called = false;
    int acked = 0;
    int lost = 0;
    int erased = 0;

    bool HasDataToSend(int) { return has_data; }
    bool Serialize(NetBitStream& stream, int, int) {
        write_called = true;
        stream.WriteBit(1);
        return has_data;
    }
    bool Load(NetBitStream& stream, int, int) { return stream.ReadBit() != 0; }
    void Erase(NetBitStream&) { ++erased; }
    int ProcessAcknowledgedPacket(int a2, int) { acked += a2; return acked; }
    int ProcessLostPacket(int a2, int) { lost += a2; return lost; }
};

class TestArray : public NetStructArray<TestElement, 4> {
public:
    void SetCount(int count) { count_ = count; }
    TestElement& at(int i) { return elements_[i]; }
};

}  // namespace

int main() {
    TestArray arr;
    CHECK(!arr.HasDataToSend(0));
    arr.SetCount(3);
    CHECK(!arr.HasDataToSend(0));
    arr.at(2).has_data = true;
    CHECK(arr.HasDataToSend(0));

    // Serialize writes the presence bit, then calls elements until one reports data.
    NetBitStream out(16);
    CHECK(arr.Serialize(out, 0, 0));
    CHECK(arr.at(0).write_called);
    CHECK(arr.at(2).write_called);

    // Acknowledgements and losses reach every element (void return, see the header).
    arr.ProcessAcknowledgedPacket(5, 0);
    arr.ProcessAcknowledgedPacket(5, 0);
    CHECK(arr.at(1).acked == 10);
    CHECK(arr.at(0).acked == 10);
    arr.ProcessLostPacket(3, 0);
    CHECK(arr.at(2).lost == 3);

    // Erase: presence bit set, so every element is erased.
    NetBitStream in(16);
    in.WriteBit(1);
    CHECK(arr.Erase(in) == 0);
    CHECK(arr.at(0).erased == 1);

    if (failures == 0) std::printf("net_struct_array_test: OK\n");
    return failures == 0 ? 0 : 1;
}
