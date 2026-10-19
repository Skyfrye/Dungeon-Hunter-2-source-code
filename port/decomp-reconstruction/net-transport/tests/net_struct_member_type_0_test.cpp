// Test for batch e1-net-transport-NetStructMemberType-0: GetValue, TestValue and SetValue of the
// NetStructMemberType<T> specializations (int, unsigned int, bool, std::string, ByteArray).
#include <cstdio>
#include <string>

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

// Concrete member: the template leaves Read/Write and TestValue for int to the derived class.
class IntMember final : public NetStructMemberType<std::int32_t> {
public:
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const std::int32_t& v) const override { return NetStructMemberType<std::int32_t>::TestValue(v); }
};

class StringMember final : public NetStructMemberType<std::string> {
public:
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const std::string& v) const override { return NetStructMemberType<std::string>::TestValue(v); }
};

}  // namespace

int main() {
    // GetValue returns a reference to the stored value (this + 0x20).
    IntMember m;
    CHECK(m.GetValue() == 0);
    const std::int32_t& ref = m.GetValue();
    CHECK(&ref == &m.GetValue());

    // TestValue for int is always true.
    CHECK(m.TestValue(0));
    CHECK(m.TestValue(-12345));

    // SetValue stores the value and reports a change only when it differs.
    m.IsChanged();  // clear any initial change flag
    m.SetValue(7);
    CHECK(m.GetValue() == 7);
    CHECK(m.IsChanged());
    m.SetValue(7);
    CHECK(!m.IsChanged());

    // std::string: GetValue and TestValue.
    StringMember s;
    CHECK(s.GetValue().empty());
    CHECK(s.TestValue(std::string("abc")));

    if (failures == 0) {
        std::printf("net_struct_member_type_0_test: all checks passed\n");
        return 0;
    }
    std::printf("net_struct_member_type_0_test: %d failure(s)\n", failures);
    return 1;
}
