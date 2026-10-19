// Test for Arrays::SkillListTable::read (0x4b9964) from e2-pydata-accessors-Arrays-b90cc9-0.cpp.
// Only the driver is exercised: the element class Structs::SkillList is stubbed here (its real read and
// finalize live in other slices), and the table's finalize is a local stub that frees the block the same
// way the shared finalize does. Checks: count and size, the header words (the ORIGINAL 32-bit stride, 12, at
// members-8, and the count at members-4), the element addresses at the host sizeof(SkillList) pitch (24 on a
// 64-bit host, so the 32-bit stride is not the in-memory stride), the element read order, and that the
// stream is consumed exactly. The stride arithmetic proper is covered by array_strides_test.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "pydata-accessors/array_strides.hpp"
#include "pydata-accessors/deps/stream_reader.hpp"
#include "read_bytes_stream.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_structs_1.hpp"
#include "pydata-accessors/w7_structs_2.hpp"
#include "pydata-accessors/w7_structs_3.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Byte stream over a fixed buffer.
class VecStream : public ReadBytesStream {
public:
    std::vector<unsigned char> bytes;
    std::size_t pos = 0;
    bool ReadBytes(void* dst, std::size_t n) override {
        if (pos + n > bytes.size()) return false;
        std::memcpy(dst, bytes.data() + pos, n);
        pos += n;
        return true;
    }
};

static void PutU32(std::vector<unsigned char>& b, std::uint32_t v) {
    for (int i = 0; i < 4; ++i) b.push_back(static_cast<unsigned char>(v >> (8 * i)));
}

// Element stubs: each element reads one int32 and records (element address, value) in read order.
static std::vector<std::uintptr_t> g_elems;
static std::vector<std::int32_t> g_values;

namespace Structs {
SkillList::~SkillList() {}
void SkillList::finalize() {}
void SkillList::read(IStreamBase* stream) {
    g_elems.push_back(reinterpret_cast<std::uintptr_t>(this));
    g_values.push_back(StreamReader::readAs<std::int32_t>(stream));
}
}  // namespace Structs

// The other four element classes in the same .cpp need definitions to link (vtable key functions). Their
// reads are never called here; they consume one int32 so a misrouted call would show up in the stream check.
namespace Structs {
Skill::~Skill() {}
void Skill::finalize() {}
void Skill::read(IStreamBase* stream) { StreamReader::readAs<std::int32_t>(stream); }
NumProbList::~NumProbList() {}
void NumProbList::finalize() {}
void NumProbList::read(IStreamBase* stream) { StreamReader::readAs<std::int32_t>(stream); }
Inventory::~Inventory() {}
void Inventory::finalize() {}
void Inventory::read(IStreamBase* stream) { StreamReader::readAs<std::int32_t>(stream); }
ItemBonusAttrList::~ItemBonusAttrList() {}
void ItemBonusAttrList::finalize() {}
void ItemBonusAttrList::read(IStreamBase* stream) { StreamReader::readAs<std::int32_t>(stream); }
}  // namespace Structs

// Table storage and the finalize bodies. The shared finalize frees the block at members - 8; these stubs
// do the same without running element destructors (the elements here have no owned storage).
namespace Arrays {
#define E2_STUB_TABLE(T)                                  \
    std::uint8_t* T::members = nullptr;                   \
    std::uint32_t T::size = 0;                            \
    void T::finalize() {                                  \
        if (members != nullptr) {                         \
            CustomFree(members - 8);                      \
            members = nullptr;                            \
        }                                                 \
    }
E2_STUB_TABLE(SkillTable)
E2_STUB_TABLE(SkillListTable)
E2_STUB_TABLE(NumProbArray)
E2_STUB_TABLE(InventoryTable)
E2_STUB_TABLE(ItemBonusAttrMonopoly)
#undef E2_STUB_TABLE
}  // namespace Arrays

int main() {
    constexpr std::size_t kStride = sizeof(Structs::SkillList);

    // 1. Three elements: stream is [count=3, 11, 22, 33].
    {
        VecStream s;
        PutU32(s.bytes, 3); PutU32(s.bytes, 11); PutU32(s.bytes, 22); PutU32(s.bytes, 33);
        g_elems.clear(); g_values.clear();
        Arrays::SkillListTable::read(&s);
        CHECK(Arrays::SkillListTable::size == 3);
        CHECK(g_values.size() == 3);
        CHECK(g_values.size() == 3 && g_values[0] == 11 && g_values[1] == 22 && g_values[2] == 33);
        std::uint8_t* m = Arrays::SkillListTable::members;
        CHECK(m != nullptr);
        if (m != nullptr) {
            std::uint32_t stride_word = 0, count_word = 0;
            std::memcpy(&stride_word, m - 8, 4);
            std::memcpy(&count_word, m - 4, 4);
            CHECK(stride_word == Arrays::ListingStride::SkillListTable);  // the original 32-bit stride, 12
            CHECK(stride_word == 12);
            CHECK(count_word == 3);
            for (std::size_t i = 0; i < g_elems.size() && i < 3; ++i) {
                CHECK(g_elems[i] == reinterpret_cast<std::uintptr_t>(m + kStride * i));
            }
        }
        CHECK(s.pos == s.bytes.size());  // the stream is consumed exactly
    }

    // 2. A second read frees the old block and replaces it: stream [count=1, 44].
    {
        VecStream s;
        PutU32(s.bytes, 1); PutU32(s.bytes, 44);
        g_elems.clear(); g_values.clear();
        Arrays::SkillListTable::read(&s);
        CHECK(Arrays::SkillListTable::size == 1);
        CHECK(g_values.size() == 1 && g_values[0] == 44);
        CHECK(s.pos == s.bytes.size());
    }

    // 3. Count zero: no element reads, one header block, stream consumed.
    {
        VecStream s;
        PutU32(s.bytes, 0);
        g_elems.clear(); g_values.clear();
        Arrays::SkillListTable::read(&s);
        CHECK(Arrays::SkillListTable::size == 0);
        CHECK(g_values.empty());
        CHECK(s.pos == s.bytes.size());
    }

    Arrays::SkillListTable::finalize();
    if (failures == 0) std::printf("e2 Arrays SkillListTable::read: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
