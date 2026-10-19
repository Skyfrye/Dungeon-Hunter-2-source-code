// Test for batch e2-net-transport-NetStructMemberType-b42f13-0: SetValue change tracking and
// GetValue/TestValue for the float, std::string, ByteArray and CNetworkId instantiations, the void
// Erase of the ByteArray and std::string instantiations (restore without SetChanged), the ByteArray
// destructor (the member owns and frees its buffer) and the bool instantiation's value at +0x1d.
// The test links the whole library (NetStructMember, NetStruct::s_changeCounter, NetBitStream).
#include <cstddef>
#include <cstdio>
#include <cstring>
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

class FloatMember final : public NetStructMemberType<float> {
public:
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const float& v) const override { return NetStructMemberType<float>::TestValue(v); }
};

class StringMember final : public NetStructMemberType<std::string> {
public:
    std::string to_read;  // what Read stores (stands in for the bytes of the stream)
    void Read(NetBitStream&) override { SetValue(to_read); }
    void Write(NetBitStream&) const override {}
    bool TestValue(const std::string& v) const override { return NetStructMemberType<std::string>::TestValue(v); }
};

class ByteArrayMember final : public NetStructMemberType<ByteArray> {
public:
    ByteArray to_read;  // what Read stores
    void Read(NetBitStream&) override { SetValue(to_read); }
    void Write(NetBitStream&) const override {}
    bool TestValue(const ByteArray& v) const override { return NetStructMemberType<ByteArray>::TestValue(v); }
};

class NetworkIdMember final : public NetStructMemberType<CNetworkId> {
public:
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    bool TestValue(const CNetworkId& v) const override { return NetStructMemberType<CNetworkId>::TestValue(v); }
};

void TestFloat() {
    FloatMember m;
    CHECK(m.GetValue() == 0.0f);
    CHECK(!m.IsChanged());

    m.SetValue(1.5f);
    CHECK(m.GetValue() == 1.5f);
    CHECK(m.IsChanged());        // a new value marks the member changed
    m.SetValue(1.5f);
    CHECK(!m.IsChanged());       // the same value does not

    CHECK(m.TestValue(0.0f));    // TestValue is always true for float
}

void TestString() {
    StringMember m;
    m.SetValue(std::string("abc"));
    CHECK(m.GetValue() == "abc");
    CHECK(m.IsChanged());
    m.SetValue(std::string("abc"));
    CHECK(!m.IsChanged());
    m.SetValue(std::string("abcd"));  // different length
    CHECK(m.GetValue() == "abcd");
    CHECK(m.IsChanged());
    CHECK(m.TestValue(std::string()));
}

void TestByteArray() {
    ByteArrayMember m;
    const std::uint8_t bytes[3] = {1, 2, 3};

    ByteArray src;
    src.SetBuffer(bytes, 3);
    CHECK(src.size == 3);

    m.SetValue(src);
    CHECK(m.GetValue().size == 3);
    CHECK(std::memcmp(m.GetValue().data, bytes, 3) == 0);
    CHECK(m.IsChanged());

    m.SetValue(src);             // same bytes: no change
    CHECK(!m.IsChanged());

    const std::uint8_t other[3] = {1, 2, 4};
    ByteArray diff;
    diff.SetBuffer(other, 3);
    m.SetValue(diff);            // same size, different bytes: changed
    CHECK(m.IsChanged());
    CHECK(std::memcmp(m.GetValue().data, other, 3) == 0);

    CHECK(m.TestValue(src));
    // src, diff and the member's own copy are released by their destructors (ByteArray owns its block).
}

// 0x3704e8: Erase loads from the stream, then puts the old bytes back with ByteArray::SetBuffer directly. The
// load reaches SetValue (so SetChanged), the restore does not undo that flag.
void TestByteArrayErase() {
    ByteArrayMember m;
    const std::uint8_t first[3] = {9, 8, 7};
    const std::uint8_t second[4] = {1, 2, 3, 4};
    ByteArray a;
    a.SetBuffer(first, 3);
    m.SetValue(a);
    m.IsChanged();
    m.to_read.SetBuffer(second, 4);

    NetBitStream stream(8);
    m.Erase(stream);
    CHECK(m.GetValue().size == 3);
    CHECK(std::memcmp(m.GetValue().data, first, 3) == 0);   // restored
    CHECK(m.IsChanged());                                   // Read's SetValue marked it, Erase does not clear it
}

// 0x371ae8: the same for std::string.
void TestStringErase() {
    StringMember m;
    m.SetValue(std::string("keep"));
    m.IsChanged();
    m.to_read = "other";
    NetBitStream stream(8);
    m.Erase(stream);
    CHECK(m.GetValue() == "keep");
    CHECK(m.IsChanged());
}

// 0x36ff88 / 0x370778: the member frees its buffer and the ByteArray copy semantics are deep.
void TestByteArrayOwnership() {
    ByteArray a;
    const std::uint8_t bytes[4] = {5, 6, 7, 8};
    a.SetBuffer(bytes, 4);
    ByteArray b(a);                          // deep copy
    CHECK(b.size == 4 && b.data != a.data);
    CHECK(std::memcmp(b.data, bytes, 4) == 0);
    ByteArray c;
    c = a;                                   // deep copy assignment
    CHECK(c.data != a.data && std::memcmp(c.data, bytes, 4) == 0);
    ByteArray d(std::move(c));               // the block moves
    CHECK(c.data == nullptr && d.size == 4);

    // A heap-allocated member destroyed through its base pointer frees the value buffer exactly once
    // (the destructor frees and nulls it, the ByteArray destructor then sees null).
    NetStructMember* member = new ByteArrayMember();
    static_cast<ByteArrayMember*>(member)->SetValue(a);
    delete member;
}

// 0x36d308 / 0x36da20 / 0x36dd94: the bool instantiation keeps its value in the byte right after the
// NetStructMember base fields (+0x1d in the original), not at +0x20.
class BoolMember final : public NetStructMemberType<bool> {
public:
    void Read(NetBitStream&) override {}
    void Write(NetBitStream&) const override {}
    const void* ChangedAddress() const { return &changed_; }
    const void* ValueAddress() const { return &value_; }
};

void TestBool() {
    BoolMember m;
    CHECK(!m.GetValue());
    CHECK(m.TestValue(false) && m.TestValue(true));          // always true
    CHECK(static_cast<const char*>(m.ValueAddress()) ==
          static_cast<const char*>(m.ChangedAddress()) + 1);  // +0x1d follows changed_ at +0x1c
    m.SetValue(true);
    CHECK(m.GetValue());
    CHECK(m.IsChanged());
    m.SetValue(true);
    CHECK(!m.IsChanged());
    NetBitStream stream(8);
    m.IsChanged();
    m.Erase(stream);                                        // Load is a no-op here, the value is restored
    CHECK(m.GetValue());
    // The object is no larger than the base plus its 1-byte value (the value sits in the base's tail padding).
    CHECK(sizeof(BoolMember) <= sizeof(NetStructMember) + 8);
}

void TestNetworkId() {
    NetworkIdMember m;
    CHECK(m.TestValue(CNetworkId()));  // TestValue is always true for CNetworkId
    CHECK(!m.IsChanged());             // nothing was set
}

}  // namespace

int main() {
    TestFloat();
    TestString();
    TestByteArray();
    TestByteArrayErase();
    TestStringErase();
    TestByteArrayOwnership();
    TestBool();
    TestNetworkId();
    if (failures == 0) {
        std::printf("e2-net-transport-NetStructMemberType-b42f13-0 test: all passed\n");
        return 0;
    }
    std::printf("e2-net-transport-NetStructMemberType-b42f13-0 test: %d failure(s)\n", failures);
    return 1;
}
