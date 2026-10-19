// Checks the read bodies of batch e2-pydata-accessors-Structs-66b9bc-1: each read decodes little-endian
// fields at the original offsets, base reads come first, length-prefixed strings are NUL-terminated, and
// element arrays hold one element per record in file order.
#include "pydata-accessors/structs_records.hpp"
#include "read_bytes_stream.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Test-only shim: Structs::Loot's destructor and finalize live in src/w7_structs_2.cpp, which needs the
// script-command classes and is not linked here. Loot's vtable needs both symbols, so they are defined
// as no-ops (the test does not destroy the Loot object's element arrays).
namespace Structs {
Loot::~Loot() {}
void Loot::finalize() {}
}  // namespace Structs

// Hands out a fixed byte sequence to StreamReader::readAs and readStringEx.
class ByteStream : public ReadBytesStream {
public:
    explicit ByteStream(const std::vector<unsigned char>& data) : data_(data) {}
    bool ReadBytes(void* dst, std::size_t n) override {
        if (pos_ + n > data_.size()) return false;
        std::memcpy(dst, data_.data() + pos_, n);
        pos_ += n;
        return true;
    }

private:
    std::vector<unsigned char> data_;
    std::size_t pos_ = 0;
};

// Builds the byte image of a record: little-endian words, floats, bytes and raw strings.
class Image {
public:
    Image& i32(std::int32_t v) { return raw(&v, sizeof v); }
    Image& u32(std::uint32_t v) { return raw(&v, sizeof v); }
    Image& f32(float v) { return raw(&v, sizeof v); }
    Image& u8(unsigned char v) { return raw(&v, 1); }
    Image& str(const char* s) { return raw(s, std::strlen(s)); }
    const std::vector<unsigned char>& bytes() const { return bytes_; }

private:
    Image& raw(const void* p, std::size_t n) {
        const auto* c = static_cast<const unsigned char*>(p);
        bytes_.insert(bytes_.end(), c, c + n);
        return *this;
    }
    std::vector<unsigned char> bytes_;
};

int main() {
    // LootEntry::read: eight int32 words at +0x4..+0x20.
    {
        Image img;
        for (int i = 1; i <= 8; ++i) img.i32(i);
        ByteStream in(img.bytes());
        Structs::LootEntry e;
        e.read(&in);
        CHECK(e.ItemListID == 1 && e.WProb == 8);
    }

    // FastTravelDestination::read: int, int, uint length, string, int, int.
    {
        Image img;
        img.i32(5).i32(-1).u32(3).str("abc").i32(7).i32(9);
        ByteStream in(img.bytes());
        Structs::FastTravelDestination f;
        f.read(&in);
        CHECK(f.DescriptionId == 5 && f.EntryPointId == -1);
        CHECK(f.LevelNameSize == 3);
        CHECK(f.LevelName != nullptr && std::memcmp(f.LevelName, "abc", 3) == 0);
        CHECK(static_cast<char*>(f.LevelName)[3] == '\0');
        CHECK(f.LocationType == 7 && f.StringId == 9);
    }

    // Faery::read: four int32 words, uint length, string, two int32 words.
    {
        Image img;
        img.i32(1).i32(2).i32(3).i32(4).u32(2).str("hi").i32(6).i32(8);
        ByteStream in(img.bytes());
        Structs::Faery fa;
        fa.read(&in);
        CHECK(fa.Name == 4 && fa.SpellScriptSize == 2);
        CHECK(fa.SpellScript != nullptr && std::memcmp(fa.SpellScript, "hi", 2) == 0);
        CHECK(static_cast<char*>(fa.SpellScript)[2] == '\0');
        CHECK(fa.SpellType == 6 && fa.Type == 8);
    }

    // AIProps::read: int32 words, one-byte bool at +0x10, floats at +0x18, +0x1c, +0x20, +0x3c, +0x40,
    // length word at +0x28 followed by the string.
    {
        Image img;
        img.i32(1).i32(2).i32(3).u8(1).i32(4).f32(1.5f).f32(2.5f).f32(3.5f).i32(6)
            .u32(4).str("name").i32(7).i32(8).i32(9).f32(0.25f).f32(0.5f);
        ByteStream in(img.bytes());
        Structs::AIProps p;
        p.read(&in);
        CHECK(p.CombatMusic == 3);
        CHECK(p.DelayedLoad == true);
        CHECK(p.Flags == 4);
        CHECK(p.InteractRadius == 1.5f && p.MeleeRadius == 3.5f);
        CHECK(p.OnAggroSFX == 6 && p.ScriptSize == 4);
        CHECK(p.Script != nullptr && std::memcmp(p.Script, "name", 4) == 0);
        CHECK(static_cast<char*>(p.Script)[4] == '\0');
        CHECK(p.SelfFX == 7 && p.Type == 9);
        CHECK(p.ViewRadius == 0.25f && p.ViewRadiusNoAggro == 0.5f);
    }

    // v2ConditionStub::read: base v2Condition word (+0x4), then +0x8 and +0xc.
    {
        Image img;
        img.i32(11).i32(12).i32(13);
        ByteStream in(img.bytes());
        Structs::v2ConditionStub c;
        c.read(&in);
        CHECK(c.Op == 11 && c.Op1 == 12 && c.Op2 == 13);
    }

    // v2QuestRewardStub::read: base v2QuestReward word (+0x4), then +0x8 and +0xc.
    {
        Image img;
        img.i32(21).i32(22).i32(23);
        ByteStream in(img.bytes());
        Structs::v2QuestRewardStub r;
        r.read(&in);
        CHECK(r.Type == 21 && r.Param1 == 22 && r.Param2 == 23);
    }

    // v2QuestObjectiveStub::read: base three words, then two length-prefixed strings and three int32 words.
    {
        Image img;
        img.i32(10).i32(20).i32(30).u32(2).str("ab").u32(1).str("z").i32(40).i32(41).i32(42);
        ByteStream in(img.bytes());
        Structs::v2QuestObjectiveStub s;
        s.read(&in);
        CHECK(s.Type == 10 && s.OnComplete == 30);
        CHECK(s.Str1Size == 2 && s.Str2Size == 1);
        CHECK(s.Str1 != nullptr && std::memcmp(s.Str1, "ab", 2) == 0);
        CHECK(static_cast<char*>(s.Str1)[2] == '\0');
        CHECK(s.Str2 != nullptr && static_cast<char*>(s.Str2)[0] == 'z');
        CHECK(static_cast<char*>(s.Str2)[1] == '\0');
        CHECK(s.OID1 == 40 && s.Value == 42);
    }

    // Loot::read: table A (two LootEntry records), table B (empty), table C (three int32 words).
    {
        Image img;
        img.i32(1).i32(2).u32(2);
        for (int e = 0; e < 2; ++e) for (int w = 0; w < 8; ++w) img.i32(100 * (e + 1) + w);
        img.u32(0);
        img.u32(3).i32(7).i32(8).i32(9);
        ByteStream in(img.bytes());
        Structs::Loot loot;
        loot.read(&in);
        CHECK(loot.RollType == 1 && loot.NumRandomItemProbs == 2);
        CHECK(loot.RandomLootEntriesSize == 2 && loot.RandomLootEntries != nullptr);
        auto* a = static_cast<Structs::LootEntry*>(loot.RandomLootEntries);
        CHECK(a[0].ItemListID == 100 && a[0].WProb == 107);
        CHECK(a[1].ItemListID == 200 && a[1].WProb == 207);
        CHECK(loot.FixedLootEntriesSize == 0);
        CHECK(loot.SubLootsSize == 3 && loot.SubLoots != nullptr);
        auto* words = static_cast<std::int32_t*>(loot.SubLoots);
        CHECK(words[0] == 7 && words[1] == 8 && words[2] == 9);
    }

    // A short stream stops the field reads: a string read past the end leaves the buffer NUL-terminated.
    {
        Image img;
        img.i32(5).i32(-1).u32(3).str("ab");  // the string is two bytes short
        ByteStream in(img.bytes());
        Structs::FastTravelDestination f;
        f.read(&in);
        CHECK(f.LevelNameSize == 3);
        CHECK(f.LevelName != nullptr && static_cast<char*>(f.LevelName)[3] == '\0');
    }

    if (failures == 0) std::printf("e2-pydata-accessors-Structs-66b9bc-1 tests passed\n");
    return failures == 0 ? 0 : 1;
}
