// Test for batch e2-net-transport-NetStructMemberType-b42f13-1: the CNetworkId instantiation of
// NetStructMemberType<T> (constructor, SetValue change key, Erase restore).
// Field2/Field3 cannot be set without a NetBitStream, so the tests use the address fields only.
#include <cstdint>
#include <cstdio>

#include "net-transport/net_struct.hpp"

namespace {

int failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++failures;                                                \
        }                                                              \
    } while (0)

class NetworkIdMember final : public NetStructMemberType<CNetworkId> {
public:
    NetworkIdMember() = default;
    explicit NetworkIdMember(const CNetworkId& id) : NetStructMemberType<CNetworkId>(id, 0) {}
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const CNetworkId& v) const override { return NetStructMemberType<CNetworkId>::TestValue(v); }
};

CNetworkId MakeAddress0(std::uint16_t lo, std::uint32_t hi) {
    CNetworkId id;
    id.SetAddress0(lo, hi);
    return id;
}

CNetworkId MakeAddress1(std::uint16_t lo, std::uint32_t hi) {
    CNetworkId id;
    id.SetAddress1(lo, hi);
    return id;
}

void TestSetValueChanges() {
    NetworkIdMember m;
    CHECK(!m.IsChanged());

    const CNetworkId a = MakeAddress0(0x1234, 0x0A0B0C0D);
    m.SetValue(a);
    CHECK(m.GetValue().Flags() == 2);
    CHECK(m.IsChanged());        // a new key marks the member changed
    m.SetValue(a);
    CHECK(!m.IsChanged());       // the same key does not

    const CNetworkId b = MakeAddress0(0x1235, 0x0A0B0C0D);  // different low word, different key
    m.SetValue(b);
    CHECK(m.IsChanged());
    CHECK(m.GetValue().Flags() == 2);
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    CHECK(m.GetValue().GetAddress0(lo, hi));
    CHECK(lo == 0x1235 && hi == 0x0A0B0C0D);
}

void TestKeyIncludesFlags() {
    // address0 and address1 with the same value have equal sums, but the flag bits differ, so the key differs.
    NetworkIdMember m;
    m.SetValue(MakeAddress0(1, 0));
    m.IsChanged();
    m.SetValue(MakeAddress1(1, 0));
    CHECK(m.IsChanged());
    CHECK(m.GetValue().Flags() == 1);
}

void TestSelfAssignment() {
    NetworkIdMember m;
    m.SetValue(MakeAddress1(7, 9));
    m.IsChanged();
    m.SetValue(m.GetValue());    // same key, no copy needed
    CHECK(!m.IsChanged());
    CHECK(m.GetValue().Flags() == 1);
}

void TestConstructor() {
    NetworkIdMember empty(CNetworkId{});
    CHECK(empty.GetValue().Flags() == 0);
    CHECK(!empty.IsChanged());   // zero key equals the reset value's key

    const CNetworkId id = MakeAddress1(0x0042, 0x7F000001);
    NetworkIdMember m(id);
    CHECK(m.GetValue().Flags() == 1);
    CHECK(m.IsChanged());        // SetValue from the constructor marks the member changed
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    CHECK(m.GetValue().GetAddress1(lo, hi));
    CHECK(lo == 0x0042 && hi == 0x7F000001);
}

void TestErase() {
    NetworkIdMember m(MakeAddress0(0x0BEE, 0x11223344));
    m.IsChanged();
    NetBitStream stream(8);      // Read is a no-op in the member, so Load leaves the value alone
    m.Erase(stream);             // void: the pseudocode's int is a leftover R0
    CHECK(m.GetValue().Flags() == 2);
    std::uint16_t lo = 0;
    std::uint32_t hi = 0;
    CHECK(m.GetValue().GetAddress0(lo, hi));
    CHECK(lo == 0x0BEE && hi == 0x11223344);  // restored
}

}  // namespace

int main() {
    TestSetValueChanges();
    TestKeyIncludesFlags();
    TestSelfAssignment();
    TestConstructor();
    TestErase();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("e2-net-transport-NetStructMemberType-b42f13-1 tests passed\n");
    return 0;
}
