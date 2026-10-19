// Test for batch g1-game-items-save-ConditionData-4a6aba-0.
//
// ConditionList, the pydata tables, the name lookup and the allocator are not linked into this test. ConditionList
// is stubbed here (its constructor, destructor, Eval and AssignPyData are counted). The element table is set up as
// host Structs::v2CondAnd rows (count at m_w1, stub array at m_w2), and the name lookup is a four-name list whose
// first two names are the table's size. CustomAlloc and CustomFree are malloc and free with counters.
//
// Checks: the constructor, SetAsTested and IsTrue, Init (empty name, Invalid, a name past the table size, a name in
// the table and its row), Clear, and the destructor, which runs Clear.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "core-platform/memory.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/ConditionList.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// Table storage and the element record's out-of-line members are owned by pydata-accessors, which is not linked here.
std::uint8_t* Arrays::v2Conditions::members = nullptr;
std::uint32_t Arrays::v2Conditions::size = 0;
Structs::v2CondAnd::~v2CondAnd() {}
void Structs::v2CondAnd::finalize() {}
void Structs::v2CondAnd::read(IStreamBase*) {}

namespace Arrays {
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

// The name table of the pydata lookup: four names, of which the table size (2) bounds the first two.
const char* const kNames[] = {"Foo", "Bar", "Invalid", "Beyond"};
constexpr int kNameCount = 4;

int g_listsBuilt = 0;
int g_listsDestroyed = 0;
int g_evalCalls = 0;
bool g_evalResult = true;
int g_assigns = 0;
Structs::v2ConditionStub* g_lastStubs = nullptr;
int g_lastCount = -1;
int g_allocs = 0;

Structs::v2CondAnd g_rows[2];  // element table: row 0 is "Foo", row 1 is "Bar"
char g_stubsFoo[16 * 3];       // stub arrays are only compared by address
char g_stubsBar[16 * 2];

void ResetCounters() {
    g_listsBuilt = g_listsDestroyed = g_evalCalls = g_assigns = g_allocs = 0;
    g_evalResult = true;
    g_lastStubs = nullptr;
    g_lastCount = -1;
}

void SetUpTable() {
    g_rows[0].CondsSize = 3;
    g_rows[0].Conds = g_stubsFoo;
    g_rows[1].CondsSize = 2;
    g_rows[1].Conds = g_stubsBar;
    Arrays::v2Conditions::members = reinterpret_cast<std::uint8_t*>(g_rows);
    Arrays::v2Conditions::size = 2;
}

Structs::v2ConditionStub* StubsOf(const char* base) {
    return reinterpret_cast<Structs::v2ConditionStub*>(const_cast<char*>(base));
}

void TestConstructorAndTested() {
    ResetCounters();
    ConditionData d;
    EXPECT(d.m_text.empty());
    EXPECT(d.m_list == nullptr);
    EXPECT(!d.m_tested);
    EXPECT(d.IsTrue());
    EXPECT(g_evalCalls == 0);

    d.SetAsTested(true);
    EXPECT(d.m_tested);
    EXPECT(d.IsTrue());
    d.SetAsTested(false);
    EXPECT(!d.m_tested);
    EXPECT(d.IsTrue());  // no list yet: true
}

void TestInitRejects() {
    ResetCounters();
    {
        ConditionData d;  // empty name
        d.Init();
        EXPECT(d.m_list == nullptr);
    }
    {
        ConditionData d;
        d.m_text = "Invalid";  // the sentinel name never resolves
        d.Init();
        EXPECT(d.m_list == nullptr);
    }
    {
        ConditionData d;
        d.m_text = "Beyond";  // index 3, past the table size of 2
        d.Init();
        EXPECT(d.m_list == nullptr);
    }
    {
        ConditionData d;
        d.m_text = "Unknown";  // not in the name table
        d.Init();
        EXPECT(d.m_list == nullptr);
    }
    EXPECT(g_allocs == 0);
    EXPECT(g_listsBuilt == 0);
    EXPECT(g_assigns == 0);
}

void TestInitBuildsList() {
    ResetCounters();
    ConditionData d;
    d.m_text = "Foo";
    d.Init();
    EXPECT(d.m_list != nullptr);
    EXPECT(g_allocs == 1);
    EXPECT(g_listsBuilt == 1);
    EXPECT(g_assigns == 1);
    EXPECT(g_lastStubs == StubsOf(g_stubsFoo));
    EXPECT(g_lastCount == 3);

    // The list's Eval decides IsTrue once the record is not tested.
    g_evalResult = false;
    EXPECT(!d.IsTrue());
    EXPECT(g_evalCalls == 1);
    d.SetAsTested(true);
    EXPECT(d.IsTrue());
    EXPECT(g_evalCalls == 1);  // tested: the list is not evaluated

    d.Clear();
}

void TestInitSecondRow() {
    ResetCounters();
    ConditionData d;
    d.m_text = "Bar";  // index 1, row 1 of the table
    d.Init();
    EXPECT(d.m_list != nullptr);
    EXPECT(g_assigns == 1);
    EXPECT(g_lastStubs == StubsOf(g_stubsBar));
    EXPECT(g_lastCount == 2);
    d.Clear();
}

void TestClear() {
    ResetCounters();
    ConditionData d;
    d.m_text = "Foo";
    d.Init();
    EXPECT(d.m_list != nullptr);

    d.Clear();
    EXPECT(d.m_list == nullptr);
    EXPECT(g_listsDestroyed == 1);

    d.Clear();  // no list: nothing happens
    EXPECT(g_listsDestroyed == 1);
}

void TestDestructorRunsClear() {
    ResetCounters();
    {
        ConditionData d;
        d.m_text = "Foo";
        d.Init();
        EXPECT(g_listsBuilt == 1);
    }
    EXPECT(g_listsDestroyed == 1);
}

}  // namespace

// ConditionList: the record is stubbed (its own batch owns the real bodies).
ConditionList::ConditionList() : m_count(0), m_conditions(nullptr), m_stubs(nullptr) {
    ++g_listsBuilt;
}

ConditionList::~ConditionList() {
    ++g_listsDestroyed;
}

bool ConditionList::Eval() {
    ++g_evalCalls;
    return g_evalResult;
}

void ConditionList::AssignPyData(Structs::v2ConditionStub* stubs, int count) {
    ++g_assigns;
    g_lastStubs = stubs;
    g_lastCount = count;
}

// Allocator: the engine's CustomAlloc is not linked into this test. CustomFree is the inline stand-in in
// pydata-accessors/deps/stream_reader.hpp (malloc and free), so frees are checked through the list's destructor.
void* CustomAlloc(unsigned size) {
    ++g_allocs;
    return std::malloc(size);
}

// Name lookup: the pydata lookup of Arrays::v2Conditions (explicit instantiation in member_ids.cpp in the engine).
namespace Arrays {
template <>
int GetMemberIDByString<v2Conditions>(const char* name) {
    for (int i = 0; i < kNameCount; ++i) {
        if (std::strcmp(name, kNames[i]) == 0) {
            return i;
        }
    }
    return -1;
}
}  // namespace Arrays

int main() {
    SetUpTable();
    TestConstructorAndTested();
    TestInitRejects();
    TestInitBuildsList();
    TestInitSecondRow();
    TestClear();
    TestDestructorRunsClear();
    if (g_failures == 0) {
        std::printf("ConditionData tests passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
