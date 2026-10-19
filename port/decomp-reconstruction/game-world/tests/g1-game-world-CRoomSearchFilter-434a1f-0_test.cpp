// Test for batch g1-game-world-CRoomSearchFilter-434a1f-0.
//
// Covers the logic that runs without the engine: the int and bin comparisons, the Set/Erase/Clear rules on the two filter
// lists and their masks, Copy and operator=, and TestRoomAttributes.
//
// CRoomAttributes is not linked here. TestRoomAttributes calls four of its methods, so this file defines those four
// (IsAttibuteActive for both attribute kinds, GetAttributeInt, GetAttributeBin) over a small fake room. No CRoomAttributes
// object is constructed: the room reference points at a zero-filled block that the fakes never read.
//
// The constructors leave the masks indeterminate (see the batch source). So every filter in this file is built in
// zero-filled storage, the state a zeroed block gives.
//
// Not covered: SetSearchAttributeBin above 64 bytes (undefined in the original).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>

#include "dh2/CRoomAttributes.hpp"
#include "dh2/CRoomSearchFilter.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Fake room state read by the CRoomAttributes methods below.
std::uint32_t g_intActive = 0;
std::int32_t g_intValue[8] = {};
std::uint32_t g_binActive = 0;
std::uint8_t g_binBytes[5][256] = {};
int g_binSize[5] = {};

void ResetRoom() {
    g_intActive = 0;
    std::memset(g_intValue, 0, sizeof g_intValue);
    g_binActive = 0;
    std::memset(g_binBytes, 0, sizeof g_binBytes);
    std::memset(g_binSize, 0, sizeof g_binSize);
}

void SetRoomInt(int attribute, int value) {
    g_intActive |= 1u << attribute;
    g_intValue[attribute] = value;
}

void SetRoomBin(int attribute, const char* text) {
    const std::size_t n = std::strlen(text);
    g_binActive |= 1u << attribute;
    std::memcpy(g_binBytes[attribute], text, n);
    g_binSize[attribute] = static_cast<int>(n);
}

// The room the filters are tested against. It is never constructed, and the fakes below ignore `this`.
alignas(CRoomAttributes) unsigned char g_roomStorage[sizeof(CRoomAttributes)];

CRoomAttributes& FakeRoom() {
    return *reinterpret_cast<CRoomAttributes*>(g_roomStorage);
}

}  // namespace

// Fakes for the CRoomAttributes methods that TestRoomAttributes calls. They are not part of the batch.
bool CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_INT attribute) {
    return ((g_intActive >> attribute) & 1u) != 0;
}

bool CRoomAttributes::IsAttibuteActive(tROOM_ATTRIBUTES_BIN attribute) {
    return ((g_binActive >> attribute) & 1u) != 0;
}

int CRoomAttributes::GetAttributeInt(tROOM_ATTRIBUTES_INT attribute) {
    return g_intValue[attribute];
}

int CRoomAttributes::GetAttributeBin(tROOM_ATTRIBUTES_BIN attribute, void* out, unsigned int size) {
    const int stored = g_binSize[attribute];
    const unsigned int n = static_cast<unsigned int>(stored) < size ? static_cast<unsigned int>(stored) : size;
    std::memcpy(out, g_binBytes[attribute], n);
    return stored;
}

namespace {

// A CRoomSearchFilter in zero-filled storage. The default constructor leaves the masks alone, so they start at zero.
class Filter {
public:
    Filter() {
        std::memset(storage_, 0, sizeof storage_);
        new (storage_) CRoomSearchFilter();
    }
    ~Filter() { get().~CRoomSearchFilter(); }
    Filter(const Filter&) = delete;
    Filter& operator=(const Filter&) = delete;

    CRoomSearchFilter& get() { return *std::launder(reinterpret_cast<CRoomSearchFilter*>(storage_)); }

private:
    alignas(CRoomSearchFilter) unsigned char storage_[sizeof(CRoomSearchFilter)];
};

void SetBin(CRoomSearchFilter& f, tROOM_ATTRIBUTES_BIN attribute, ROOM_SEARCH_OPERATOR op, const char* text) {
    f.SetSearchAttributeBin(attribute, op, const_cast<char*>(text), static_cast<unsigned int>(std::strlen(text)));
}

void TestIntComparisons() {
    Filter f;
    CRoomSearchFilter& s = f.get();
    EXPECT(s.TestIntValues(3, 3, kOpEqual));
    EXPECT(!s.TestIntValues(3, 4, kOpEqual));
    EXPECT(!s.TestIntValues(3, 3, kOpNotEqual));
    EXPECT(s.TestIntValues(3, 4, kOpNotEqual));
    EXPECT(s.TestIntValues(2, 3, kOpLess));
    EXPECT(!s.TestIntValues(3, 3, kOpLess));
    EXPECT(s.TestIntValues(3, 3, kOpLessEqual));
    EXPECT(!s.TestIntValues(4, 3, kOpLessEqual));
    EXPECT(s.TestIntValues(4, 3, kOpGreater));
    EXPECT(!s.TestIntValues(3, 3, kOpGreater));
    EXPECT(s.TestIntValues(3, 3, kOpGreaterEqual));
    EXPECT(!s.TestIntValues(2, 3, kOpGreaterEqual));
    // Any operator outside 0..5 is false.
    EXPECT(!s.TestIntValues(3, 3, static_cast<ROOM_SEARCH_OPERATOR>(6)));
}

void TestBinComparisons() {
    Filter f;
    CRoomSearchFilter& s = f.get();
    char abc[] = "abc";
    char abd[] = "abd";
    char ab[] = "ab";
    // Operator 0: equal size and equal bytes.
    EXPECT(s.TestBinValues(abc, 3, abc, 3, kOpEqual));
    EXPECT(!s.TestBinValues(abc, 3, abd, 3, kOpEqual));
    EXPECT(!s.TestBinValues(abc, 3, ab, 2, kOpEqual));
    // Operator 1 inverts the result, so a size mismatch becomes a match.
    EXPECT(!s.TestBinValues(abc, 3, abc, 3, kOpNotEqual));
    EXPECT(s.TestBinValues(abc, 3, abd, 3, kOpNotEqual));
    EXPECT(s.TestBinValues(abc, 3, ab, 2, kOpNotEqual));
}

void TestSetAndEraseInt() {
    Filter f;
    CRoomSearchFilter& s = f.get();

    s.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_2, kOpLess, 10);
    EXPECT(s.IsFilterActive(ROOM_INT_ATTRIBUTE_2));
    EXPECT(!s.IsFilterActive(ROOM_INT_ATTRIBUTE_1));
    EXPECT(s.m_intFilters.size() == 1);

    // Setting the same attribute again replaces the entry; the list does not grow.
    s.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_2, kOpGreater, 5);
    EXPECT(s.m_intFilters.size() == 1);
    EXPECT(s.m_intFilters[0].attribute == ROOM_INT_ATTRIBUTE_2);
    EXPECT(s.m_intFilters[0].op == kOpGreater);
    EXPECT(s.m_intFilters[0].value == 5);

    // New attributes are appended, so the order of entries is the order of the last Set.
    s.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_4, kOpEqual, 7);
    s.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_1, kOpNotEqual, 9);
    EXPECT(s.m_intFilters.size() == 3);
    EXPECT(s.m_intFilters[0].attribute == ROOM_INT_ATTRIBUTE_2);
    EXPECT(s.m_intFilters[1].attribute == ROOM_INT_ATTRIBUTE_4);
    EXPECT(s.m_intFilters[2].attribute == ROOM_INT_ATTRIBUTE_1);

    // Erasing a middle entry shifts the later ones down and keeps their order.
    s.EraseSearchAttributeInt(ROOM_INT_ATTRIBUTE_4);
    EXPECT(!s.IsFilterActive(ROOM_INT_ATTRIBUTE_4));
    EXPECT(s.m_intFilters.size() == 2);
    EXPECT(s.m_intFilters[0].attribute == ROOM_INT_ATTRIBUTE_2);
    EXPECT(s.m_intFilters[1].attribute == ROOM_INT_ATTRIBUTE_1);
    EXPECT(s.m_intFilters[1].op == kOpNotEqual);
    EXPECT(s.m_intFilters[1].value == 9);

    // Erasing an attribute with no entry changes nothing in the list.
    s.EraseSearchAttributeInt(ROOM_INT_ATTRIBUTE_6);
    EXPECT(s.m_intFilters.size() == 2);
}

void TestSetAndEraseBin() {
    Filter f;
    CRoomSearchFilter& s = f.get();

    SetBin(s, ROOM_BIN_ATTRIBUTE_1, kOpEqual, "abc");
    EXPECT(s.IsFilterActive(ROOM_BIN_ATTRIBUTE_1));
    EXPECT(!s.IsFilterActive(ROOM_BIN_ATTRIBUTE_0));
    EXPECT(s.m_binFilters.size() == 1);
    EXPECT(s.m_binFilters[0].size == 3);
    EXPECT(std::memcmp(s.m_binFilters[0].value, "abc", 3) == 0);
    // The bytes past the stored size are zero, as the original clears the buffer before the copy.
    EXPECT(s.m_binFilters[0].value[3] == 0);

    // Setting the same attribute again replaces the entry.
    SetBin(s, ROOM_BIN_ATTRIBUTE_1, kOpNotEqual, "xy");
    EXPECT(s.m_binFilters.size() == 1);
    EXPECT(s.m_binFilters[0].size == 2);
    EXPECT(s.m_binFilters[0].op == kOpNotEqual);
    EXPECT(std::memcmp(s.m_binFilters[0].value, "xy", 2) == 0);

    SetBin(s, ROOM_BIN_ATTRIBUTE_3, kOpEqual, "q");
    SetBin(s, ROOM_BIN_ATTRIBUTE_0, kOpEqual, "z");
    s.EraseSearchAttributeBin(ROOM_BIN_ATTRIBUTE_1);
    EXPECT(!s.IsFilterActive(ROOM_BIN_ATTRIBUTE_1));
    EXPECT(s.m_binFilters.size() == 2);
    EXPECT(s.m_binFilters[0].attribute == ROOM_BIN_ATTRIBUTE_3);
    EXPECT(s.m_binFilters[1].attribute == ROOM_BIN_ATTRIBUTE_0);
    EXPECT(s.m_binFilters[1].size == 1);
}

void TestClearKeepsMasks() {
    Filter f;
    CRoomSearchFilter& s = f.get();
    s.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_5, kOpEqual, 1);
    SetBin(s, ROOM_BIN_ATTRIBUTE_2, kOpEqual, "k");
    s.Clear();
    EXPECT(s.m_intFilters.empty());
    EXPECT(s.m_binFilters.empty());
    // Clear resets the vectors only: the active bits stay set.
    EXPECT(s.IsFilterActive(ROOM_INT_ATTRIBUTE_5));
    EXPECT(s.IsFilterActive(ROOM_BIN_ATTRIBUTE_2));
}

void TestCopyAndAssign() {
    Filter src;
    CRoomSearchFilter& a = src.get();
    a.SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_3, kOpGreaterEqual, 12);
    SetBin(a, ROOM_BIN_ATTRIBUTE_4, kOpNotEqual, "hi");

    // operator= copies both vectors, and not the masks.
    Filter dst;
    CRoomSearchFilter& b = dst.get();
    b = a;
    EXPECT(b.m_intFilters.size() == 1);
    EXPECT(b.m_intFilters[0].attribute == ROOM_INT_ATTRIBUTE_3);
    EXPECT(b.m_intFilters[0].op == kOpGreaterEqual);
    EXPECT(b.m_intFilters[0].value == 12);
    EXPECT(b.m_binFilters.size() == 1);
    EXPECT(b.m_binFilters[0].size == 2);
    EXPECT(std::memcmp(b.m_binFilters[0].value, "hi", 2) == 0);
    EXPECT(!b.IsFilterActive(ROOM_INT_ATTRIBUTE_3));

    // Self-assignment leaves the filter as it was.
    b = b;
    EXPECT(b.m_intFilters.size() == 1);
    EXPECT(b.m_binFilters.size() == 1);

    // The copy constructor copies the vectors the same way.
    CRoomSearchFilter copy(a);
    EXPECT(copy.m_intFilters.size() == 1);
    EXPECT(copy.m_intFilters[0].value == 12);
    EXPECT(copy.m_binFilters.size() == 1);
    EXPECT(copy.m_binFilters[0].size == 2);
}

void TestRoomAttributesMatch() {
    // An empty filter matches any room.
    {
        Filter f;
        ResetRoom();
        EXPECT(f.get().TestRoomAttributes(FakeRoom()));
    }

    // An int filter needs its attribute active and the comparison to hold.
    {
        Filter f;
        f.get().SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_2, kOpLess, 10);
        ResetRoom();
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));  // not active
        SetRoomInt(2, 5);
        EXPECT(f.get().TestRoomAttributes(FakeRoom()));
        ResetRoom();
        SetRoomInt(2, 12);
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));  // comparison fails
    }

    // A bin filter needs its attribute active and equal bytes (operator 0).
    {
        Filter f;
        SetBin(f.get(), ROOM_BIN_ATTRIBUTE_1, kOpEqual, "abc");
        ResetRoom();
        SetRoomBin(1, "abc");
        EXPECT(f.get().TestRoomAttributes(FakeRoom()));
        ResetRoom();
        SetRoomBin(1, "abd");
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));
        ResetRoom();
        SetRoomBin(1, "ab");  // size differs
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));
    }

    // An inverting bin operator matches when the bytes differ.
    {
        Filter f;
        SetBin(f.get(), ROOM_BIN_ATTRIBUTE_0, kOpNotEqual, "abc");
        ResetRoom();
        SetRoomBin(0, "abc");
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));
        ResetRoom();
        SetRoomBin(0, "xyz");
        EXPECT(f.get().TestRoomAttributes(FakeRoom()));
    }

    // Both lists must hold: the int part passes and the bin part fails.
    {
        Filter f;
        f.get().SetSearchAttributeInt(ROOM_INT_ATTRIBUTE_7, kOpEqual, 4);
        SetBin(f.get(), ROOM_BIN_ATTRIBUTE_3, kOpEqual, "ok");
        ResetRoom();
        SetRoomInt(7, 4);
        SetRoomBin(3, "no");
        EXPECT(!f.get().TestRoomAttributes(FakeRoom()));
        ResetRoom();
        SetRoomInt(7, 4);
        SetRoomBin(3, "ok");
        EXPECT(f.get().TestRoomAttributes(FakeRoom()));
    }
}

}  // namespace

int main() {
    TestIntComparisons();
    TestBinComparisons();
    TestSetAndEraseInt();
    TestSetAndEraseBin();
    TestClearKeepsMasks();
    TestCopyAndAssign();
    TestRoomAttributesMatch();
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("OK\n");
    return 0;
}
