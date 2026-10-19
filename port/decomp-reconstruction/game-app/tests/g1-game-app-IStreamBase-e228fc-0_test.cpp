// Test for batch g1-game-app-IStreamBase-e228fc-0 (IStreamBase, part 1 of 2).
// Runs the typed helpers of this batch, the string writeAs and the seek wrappers against an in-memory stream, and checks
// the file bytes they produce. Returns non-zero on failure.
// Not covered: the deleting destructor (compiler-generated). The part 2 helpers are not linked here.
#include "dh2/IStreamBase.hpp"

#include <algorithm>
#include <bitset>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"
#include "dh2/Door.hpp"
#include "pydata-accessors/structs_records.hpp"

// The source file reads this global; the test provides it (gAssertLevel 0 keeps ASSERT silent).
int gAssertLevel = 0;

// Out-of-line virtuals of Structs::CharacterProperties (pydata-accessors/src/structs_records.cpp, not linked here).
// Only the vtable is needed.
namespace Structs {
CharacterProperties::~CharacterProperties() {}
void CharacterProperties::finalize() {}
void CharacterProperties::read(IStreamBase*) {}
}  // namespace Structs

namespace {

// A byte-array stream. maxTransfer caps every read and write, to exercise the short-count path.
class MemoryStream final : public IStreamBase {
public:
    std::vector<std::uint8_t> bytes;
    std::uint64_t cursor = 0;
    std::uint64_t maxTransfer = ~static_cast<std::uint64_t>(0);

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return cursor < bytes.size(); }
    bool canWrite() const override { return true; }

    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::uint64_t count = Readable(n);
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        return count;
    }

    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t count = Readable(n);
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::uint64_t count = std::min(n, maxTransfer);
        const std::uint64_t needed = cursor + count;
        if (bytes.size() < needed) {
            bytes.resize(static_cast<std::size_t>(needed));
        }
        if (count != 0) {
            std::memcpy(bytes.data() + cursor, src, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    void seek(std::uint64_t pos) override { cursor = pos; }
    std::uint64_t tell() const override { return cursor; }
    void skip(std::uint64_t n) override { cursor += n; }

private:
    // Bytes that a read of n bytes can take from the current position, capped by maxTransfer.
    std::uint64_t Readable(std::uint64_t n) const {
        const std::uint64_t total = static_cast<std::uint64_t>(bytes.size());
        const std::uint64_t avail = cursor < total ? total - cursor : 0;
        return std::min(std::min(n, avail), maxTransfer);
    }
};

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Replaces the stream contents with the given bytes and rewinds it.
void Load(MemoryStream& s, const std::vector<std::uint8_t>& data) {
    s.bytes = data;
    s.cursor = 0;
    s.maxTransfer = ~static_cast<std::uint64_t>(0);
}

void TestReadUnsignedInt() {
    MemoryStream s;
    Load(s, {0xEF, 0xBE, 0xAD, 0xDE});  // little-endian 0xDEADBEEF
    unsigned int value = 0;
    s.readAs(value);
    EXPECT(value == 0xDEADBEEFu);
    EXPECT(s.cursor == 4);
}

void TestIntRoundTrip() {
    MemoryStream s;
    s.writeAs(0x01020304);
    EXPECT(s.bytes.size() == 4);
    EXPECT(s.bytes[0] == 0x04 && s.bytes[1] == 0x03 && s.bytes[2] == 0x02 && s.bytes[3] == 0x01);
    EXPECT(s.cursor == 4);
    s.seek(0);
    int value = 0;
    s.readAs(value);
    EXPECT(value == 0x01020304);
    EXPECT(s.cursor == 4);
}

void TestBoolAndUnsignedChar() {
    MemoryStream s;
    s.writeAs(true);
    s.writeAs(false);
    s.writeAs(static_cast<unsigned char>(0xAB));
    EXPECT(s.bytes.size() == 3);
    EXPECT(s.bytes[0] == 1 && s.bytes[1] == 0 && s.bytes[2] == 0xAB);
    s.seek(0);
    bool flag = false;
    s.readAs(flag);
    EXPECT(flag);
    s.readAs(flag);
    EXPECT(!flag);
    unsigned char byte = 0;
    s.readAs(byte);
    EXPECT(byte == 0xAB);
}

void TestDoorStatesRoundTrip() {
    MemoryStream s;
    s.writeAs(Door::DOOR_OPENING);
    EXPECT(s.bytes.size() == 4);
    EXPECT(s.bytes[0] == 3 && s.bytes[1] == 0 && s.bytes[2] == 0 && s.bytes[3] == 0);
    s.seek(0);
    Door::DoorStates state = Door::DOOR_CLOSED;
    s.readAs(state);
    EXPECT(state == Door::DOOR_OPENING);
}

void TestPoint3DBytesAndRoundTrip() {
    MemoryStream s;
    Point3D<float> p = {1.5f, -2.25f, 3.0f};
    s.writeAs(p);
    // float32 bit patterns 0x3FC00000, 0xC0100000, 0x40400000, little-endian.
    const std::uint8_t expect[12] = {0x00, 0x00, 0xC0, 0x3F, 0x00, 0x00, 0x10, 0xC0, 0x00, 0x00, 0x40, 0x40};
    EXPECT(s.bytes.size() == 12);
    EXPECT(std::memcmp(s.bytes.data(), expect, sizeof expect) == 0);
    s.seek(0);
    Point3D<float> q = {0.0f, 0.0f, 0.0f};
    s.readAs(q);
    EXPECT(q.X == 1.5f && q.Y == -2.25f && q.Z == 3.0f);
    EXPECT(s.cursor == 12);
}

// Structs::CharacterProperties: the 900-byte sheet. File bytes +0x00..+0x03 are the vptr word (written as zero), then the
// 224 int32 words m_w1..m_w224 at +0x04, little-endian.
void TestCharacterPropertiesRoundTrip() {
    MemoryStream s;
    Structs::CharacterProperties sheet;
    sheet.AIFaction = 0x01020304;
    sheet.AI = -2;
    sheet.Damage_Elemental_Max_Off_Hand = 100;
    sheet.Achievement_PickUp_Count = static_cast<std::int32_t>(0x80000001u);
    s.writeAs(sheet);
    EXPECT(s.bytes.size() == 900);
    EXPECT(s.cursor == 900);
    EXPECT(s.bytes[0] == 0 && s.bytes[1] == 0 && s.bytes[2] == 0 && s.bytes[3] == 0);
    EXPECT(s.bytes[4] == 0x04 && s.bytes[5] == 0x03 && s.bytes[6] == 0x02 && s.bytes[7] == 0x01);  // m_w1 at +0x04
    EXPECT(s.bytes[8] == 0xFE && s.bytes[9] == 0xFF && s.bytes[10] == 0xFF && s.bytes[11] == 0xFF);  // m_w2 at +0x08
    EXPECT(s.bytes[4 + 4 * 99] == 100 && s.bytes[4 + 4 * 99 + 1] == 0);                              // m_w100
    EXPECT(s.bytes[896] == 0x01 && s.bytes[897] == 0 && s.bytes[898] == 0 && s.bytes[899] == 0x80);  // m_w224 at +0x380
    EXPECT(s.bytes[12] == 0 && s.bytes[13] == 0);                                                    // m_w3 untouched

    s.seek(0);
    Structs::CharacterProperties back;
    back.AnimTable = 77;  // overwritten by the file
    s.readAs(back);
    EXPECT(s.cursor == 900);
    EXPECT(back.AIFaction == 0x01020304 && back.AI == -2 && back.AnimTable == 0 && back.Damage_Elemental_Max_Off_Hand == 100);
    EXPECT(back.Achievement_PickUp_Count == static_cast<std::int32_t>(0x80000001u));
}

void TestCharacterPropertiesShortReadKeepsWords() {
    // Eight bytes arrive (the vptr word and m_w1): the other words keep their values, as the original's direct read does.
    MemoryStream s;
    Load(s, {0, 0, 0, 0, 9, 0, 0, 0});
    Structs::CharacterProperties sheet;
    sheet.AIFaction = 1;
    sheet.AI = 42;
    sheet.Achievement_PickUp_Count = 7;
    s.readAs(sheet);
    EXPECT(s.cursor == 8);
    EXPECT(sheet.AIFaction == 9 && sheet.AI == 42 && sheet.Achievement_PickUp_Count == 7);
}

void TestBitsetBitOrder() {
    MemoryStream s;
    std::bitset<128> bits;
    bits.set(0);
    bits.set(9);
    bits.set(127);
    s.writeAs(bits);
    EXPECT(s.bytes.size() == 16);
    EXPECT(s.bytes[0] == 0x01 && s.bytes[1] == 0x02 && s.bytes[15] == 0x80);
    std::size_t nonZero = 0;
    for (std::size_t i = 0; i < s.bytes.size(); ++i) {
        if (s.bytes[i] != 0) {
            ++nonZero;
        }
    }
    EXPECT(nonZero == 3);
    s.seek(0);
    std::bitset<128> out;
    s.readAs(out);
    EXPECT(out == bits);
    EXPECT(out.count() == 3);
}

void TestBitsetShortReadKeepsBits() {
    // Four bytes arrive; the bits in the other twelve bytes are kept, as the original's direct read keeps them.
    MemoryStream s;
    Load(s, {0x01, 0x00, 0x00, 0x00});
    std::bitset<128> out;
    out.set(100);
    s.readAs(out);
    EXPECT(out.test(0));
    EXPECT(out.test(100));
    EXPECT(s.cursor == 4);
}

void TestWriteString() {
    MemoryStream s;
    s.writeAs(std::string("abc"));
    // The length counts the NUL: 4, then "abc" and the terminator.
    EXPECT(s.bytes == (std::vector<std::uint8_t>{4, 0, 0, 0, 'a', 'b', 'c', 0}));
    EXPECT(s.cursor == 8);

    MemoryStream empty;
    empty.writeAs(std::string());
    EXPECT(empty.bytes == (std::vector<std::uint8_t>{1, 0, 0, 0, 0}));
    EXPECT(empty.cursor == 5);
}

void TestSeekWrappers() {
    MemoryStream s;
    IStreamBase& base = s;
    base.seekWrite(10);
    EXPECT(base.tellWrite() == 10);
    EXPECT(s.cursor == 10);
}

void TestShortReadCountsOnlyWhatArrived() {
    // Two bytes arrive for a 4-byte read: the cursor advances by 2 and the helper reports the short count.
    MemoryStream s;
    Load(s, {0x01, 0x02});
    unsigned int value = 0;
    s.readAs(value);
    EXPECT(s.cursor == 2);
}

}  // namespace

int main() {
    TestReadUnsignedInt();
    TestIntRoundTrip();
    TestBoolAndUnsignedChar();
    TestDoorStatesRoundTrip();
    TestPoint3DBytesAndRoundTrip();
    TestCharacterPropertiesRoundTrip();
    TestCharacterPropertiesShortReadKeepsWords();
    TestBitsetBitOrder();
    TestBitsetShortReadKeepsBits();
    TestWriteString();
    TestSeekWrappers();
    TestShortReadCountsOnlyWhatArrived();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("IStreamBase helpers (part 1): all checks passed\n");
    return 0;
}
