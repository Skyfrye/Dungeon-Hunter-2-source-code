// Test for the ObjectiveList destructor, AssignPyData and GetDesc
// (game-items-save/src/g1-game-items-save-ObjectiveList-953dbe-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Only the batch source is linked. The definitions below are test-only stand-ins for code in other batches, kept small:
//   ObjectiveList::ObjectiveList (0x47a3c0) and the factory ObjectiveList::CreateObjectiveWithPyData (0x47a3e8);
//   the Objective constructor, destructor and non-pure virtual bodies (Compile, DBG_Trace..., the markers, GetDesc,
//   _loadData, _saveData, _resetData). The Objective vtable is emitted in this translation unit, so those bodies must
//   exist here to link. operator new[](size, MemoryHintState) is the game-app global (malloc here).
// TestObjective overrides every virtual slot, so the checks go through the real dispatch in the batch source.
// The stub rows are never built: AssignPyData only stores the row pointer and takes row addresses, so the test allocates
// raw storage for host-sized rows and does not read them. The factory stand-in works out the row index from the address.

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <string>
#include <utility>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace {

constexpr int kRows = 4;

int gFailures = 0;
int gDestroyed = 0;                                        // objectives deleted through their virtual destructor
std::vector<std::string> gRowDesc;                         // GetDesc text of row i
std::vector<Structs::v2QuestObjectiveStub*> gFactoryRows;  // rows the factory stand-in was called with, in call order
Structs::v2QuestObjectiveStub* gRows = nullptr;            // row 0 of the block the factory stand-in indexes

void Check(bool ok, const char* expr, int line) {
    if (!ok) {
        std::fprintf(stderr, "FAIL line %d: %s\n", line, expr);
        ++gFailures;
    }
}
#define CHECK(expr) Check((expr), #expr, __LINE__)

class TestObjective : public Objective {
public:
    explicit TestObjective(std::string desc) : m_desc(std::move(desc)) {}
    ~TestObjective() override { ++gDestroyed; }
    void Compile() override {}
    int DBG_TraceDetailedObjectiveInformation(__sFILE*) const override { return 0; }
    void InstallObjectiveMarker(int, int) override {}
    void RemoveObjectiveMarker() override {}
    void Register() override {}
    void Unregister() override {}
    void GetPositions(Vector3DFList&) const override {}
    std::string GetDesc() const override { return m_desc; }
    void _loadData(IStreamBase*) override {}
    void _saveData(IStreamBase*) override {}
    void _resetData() override {}

private:
    std::string m_desc;
};

// Raw storage for count host-sized rows. The rows are never read, so nothing is constructed in them.
Structs::v2QuestObjectiveStub* AllocRows(int count) {
    return static_cast<Structs::v2QuestObjectiveStub*>(
        std::malloc(sizeof(Structs::v2QuestObjectiveStub) * static_cast<std::size_t>(count)));
}

void ResetFactory(std::vector<std::string> descs) {
    gRowDesc = std::move(descs);
    gFactoryRows.clear();
    gDestroyed = 0;
}

// Builds a list over the current gRowDesc, then checks the joined description.
void CheckJoin(std::vector<std::string> descs, const char* expected, int line) {
    ResetFactory(std::move(descs));
    gRows = AllocRows(static_cast<int>(gRowDesc.size()));
    ObjectiveList* list = new ObjectiveList();
    list->AssignPyData(gRows, static_cast<int>(gRowDesc.size()));
    const std::string got = list->GetDesc();
    if (got != expected) {
        std::fprintf(stderr, "FAIL line %d: GetDesc gave \"%s\", expected \"%s\"\n", line, got.c_str(), expected);
        ++gFailures;
    }
    delete list;
    std::free(gRows);
    gRows = nullptr;
}

// AssignPyData builds one objective per row at the host row stride. The destructor deletes every objective.
void TestAssignBuildsRowsAtHostStride() {
    ResetFactory({"", "alpha", "", "beta"});
    gRows = AllocRows(kRows);
    ObjectiveList* list = new ObjectiveList();
    list->AssignPyData(gRows, kRows);

    CHECK(list->m_count == kRows);
    CHECK(list->m_pyData == gRows);
    CHECK(list->m_objectives != nullptr);
    CHECK(gFactoryRows.size() == static_cast<std::size_t>(kRows));
    for (int i = 0; i < kRows; ++i) {
        CHECK(static_cast<std::size_t>(i) < gFactoryRows.size() && gFactoryRows[i] == &gRows[i]);
    }
    CHECK(list->GetDesc() == "alpha\nbeta");

    delete list;
    CHECK(gDestroyed == kRows);
    std::free(gRows);
    gRows = nullptr;
}

// A zero count stores the count and the row pointer, creates nothing and keeps no array.
void TestZeroCountBuildsNothing() {
    ResetFactory({});
    gRows = AllocRows(1);
    ObjectiveList* list = new ObjectiveList();
    list->AssignPyData(gRows, 0);

    CHECK(list->m_count == 0);
    CHECK(list->m_pyData == gRows);
    CHECK(list->m_objectives == nullptr);
    CHECK(gFactoryRows.empty());
    CHECK(list->GetDesc().empty());

    delete list;
    CHECK(gDestroyed == 0);
    std::free(gRows);
    gRows = nullptr;
}

// The separator goes only between non-empty texts: none before the first, none for an empty text.
void TestSeparators() {
    CheckJoin({"", "", "", ""}, "", __LINE__);
    CheckJoin({}, "", __LINE__);
    CheckJoin({"x"}, "x", __LINE__);
    CheckJoin({"", "", "only", ""}, "only", __LINE__);
    CheckJoin({"x", "", "y", "z"}, "x\ny\nz", __LINE__);
}

// An empty slot in the pointer array is skipped by the destructor: only the other objectives are deleted.
void TestDestructorSkipsEmptySlots() {
    ResetFactory({"a", "b", "c"});
    gRows = AllocRows(3);
    ObjectiveList* list = new ObjectiveList();
    list->AssignPyData(gRows, 3);

    delete list->m_objectives[1];     // release the middle objective by hand
    list->m_objectives[1] = nullptr;  // the destructor must skip this slot
    gDestroyed = 0;

    delete list;
    CHECK(gDestroyed == 2);
    std::free(gRows);
    gRows = nullptr;
}

}  // namespace

// Stand-ins for the definitions of other batches (see the header comment).
Objective::Objective() {}
Objective::~Objective() {}
void Objective::Compile() {}
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const { return 0; }
void Objective::InstallObjectiveMarker(int, int) {}
void Objective::RemoveObjectiveMarker() {}
std::string Objective::GetDesc() const { return std::string(); }
void Objective::_loadData(IStreamBase*) {}
void Objective::_saveData(IStreamBase*) {}
void Objective::_resetData() {}

ObjectiveList::ObjectiveList() : m_count(0), m_objectives(nullptr), m_pyData(nullptr) {}

Objective* ObjectiveList::CreateObjectiveWithPyData(Structs::v2QuestObjectiveStub* stub) {
    gFactoryRows.push_back(stub);
    const auto row = static_cast<std::size_t>(stub - gRows);
    return new TestObjective(row < gRowDesc.size() ? gRowDesc[row] : std::string("?"));
}

// CustomFree is the inline malloc/free stand-in from pydata-accessors/deps/stream_reader.hpp. The name MemoryHintState is
// a function there, which hides the enum type, so the hint parameter is spelled through the enumerator's type.
void* operator new[](std::size_t size, decltype(MHS_UNRECOVERED)) { return std::malloc(size); }

int main() {
    TestAssignBuildsRowsAtHostStride();
    TestZeroCountBuildsNothing();
    TestSeparators();
    TestDestructorSkipsEmptySlots();
    if (gFailures == 0) {
        std::printf("ObjectiveList tests passed\n");
    }
    return gFailures == 0 ? 0 : 1;
}
