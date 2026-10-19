// Test for g1-game-items-save-ObjectiveList-953dbe-0.cpp. It links only that source and this file. The Objective members
// the list calls are defined in other batches, so this test defines them as recording stubs. The layout comes from
// dh2/Objective.hpp. ~ObjectiveList is in part 2, so the lists are allocated and never deleted. CreateObjectiveWithPyData
// is partial (the factory table is not recovered) and is not tested here.

#include <cstdio>
#include <vector>

#include "dh2/Objective.hpp"
#include "dh2/ObjectiveList.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, __LINE__, #cond);  \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

// Recorded in call order by the stubs and the overrides below.
int g_invalidateCalls = 0;  // Objective::InvalidateCompile is non-virtual, so every call lands in its stub
std::vector<int> g_compileOrder;

class TestObjective : public Objective {
public:
    explicit TestObjective(int id) : id_(id) {}

    void Compile() override {
        ++compiles;
        g_compileOrder.push_back(id_);
    }
    void Register() override { ++registers; }
    void Unregister() override { ++unregisters; }
    void GetPositions(Vector3DFList&) const override {}
    void RemoveObjectiveMarker() override { ++removeMarkers; }
    void InstallObjectiveMarker(int markerKind, int markerIndex) override {
        ++installs;
        lastKind = markerKind;
        lastIndex = markerIndex;
    }
    int DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const override {
        ++dbgCalls;
        lastFile = stream;
        return 0;
    }
    void _loadData(IStreamBase* stream) override {
        ++loads;
        lastLoadStream = stream;
    }
    void _saveData(IStreamBase* stream) override {
        ++saves;
        lastSaveStream = stream;
    }
    void _resetData() override { ++resets; }

    int id_ = 0;
    int compiles = 0;
    int registers = 0;
    int unregisters = 0;
    int removeMarkers = 0;
    int installs = 0;
    int lastKind = -1;
    int lastIndex = -1;
    int loads = 0;
    int saves = 0;
    int resets = 0;
    IStreamBase* lastLoadStream = nullptr;
    IStreamBase* lastSaveStream = nullptr;
    mutable int dbgCalls = 0;
    mutable __sFILE* lastFile = nullptr;
};

}  // namespace

// Objective members the list reaches that other batches define. Each one is the base version the vtable needs. The
// test's TestObjective overrides the ones it checks.
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
void Objective::InvalidateCompile() { ++g_invalidateCalls; }

int main() {
    // An empty list: the constructor zeroes the fields, Eval and IsValid are true, and no callee runs.
    ObjectiveList* list = new ObjectiveList();
    CHECK(list->m_count == 0);
    CHECK(list->m_objectives == nullptr);
    CHECK(list->m_pyData == nullptr);
    CHECK(list->Eval());
    CHECK(list->IsValid());
    list->Compile();
    CHECK(g_compileOrder.empty());

    TestObjective a(0);
    TestObjective b(1);
    TestObjective c(2);
    TestObjective* objs[3] = {&a, &b, &c};
    Objective* items[3] = {&a, &b, &c};
    list->m_count = 3;
    list->m_objectives = items;

    // Eval reads m_completed (+0x14) and IsValid reads m_valid (+0x08).
    a.m_completed = true;
    b.m_completed = true;
    c.m_completed = true;
    CHECK(list->Eval());
    b.m_completed = false;
    CHECK(!list->Eval());
    b.m_completed = true;
    CHECK(list->Eval());

    a.m_valid = false;
    b.m_valid = false;
    c.m_valid = true;
    CHECK(!list->IsValid());
    a.m_valid = true;
    b.m_valid = true;
    CHECK(list->IsValid());

    // SetOwner stores the owner at +0x10 of every objective.
    char ownerMarker = 0;
    Character* owner = reinterpret_cast<Character*>(&ownerMarker);
    list->SetOwner(owner);
    for (TestObjective* o : objs) {
        CHECK(o->m_owner == owner);
    }

    // LoopOnAll with the no-argument member pointer dispatches through the vtable, in index order.
    list->LoopOnAll(&Objective::Compile);
    for (TestObjective* o : objs) {
        CHECK(o->compiles == 1);
    }
    CHECK((g_compileOrder == std::vector<int>{0, 1, 2}));

    list->Compile();
    list->Register();
    list->Unregister();
    list->RemoveObjectiveMarkers();
    list->_resetData();
    for (TestObjective* o : objs) {
        CHECK(o->compiles == 2);
        CHECK(o->registers == 1);
        CHECK(o->unregisters == 1);
        CHECK(o->removeMarkers == 1);
        CHECK(o->resets == 1);
    }

    // InvalidateCompile calls the non-virtual Objective::InvalidateCompile once per objective.
    g_invalidateCalls = 0;
    list->InvalidateCompile();
    CHECK(g_invalidateCalls == 3);

    // InstallObjectiveMarkers passes its two ints to InstallObjectiveMarker on every objective.
    list->InstallObjectiveMarkers(2, 7);
    for (TestObjective* o : objs) {
        CHECK(o->installs == 1);
        CHECK(o->lastKind == 2);
        CHECK(o->lastIndex == 7);
    }

    // _saveData and _loadData pass the stream through to every objective.
    char streamMarker = 0;
    IStreamBase* stream = reinterpret_cast<IStreamBase*>(&streamMarker);
    list->_saveData(stream);
    for (TestObjective* o : objs) {
        CHECK(o->saves == 1);
        CHECK(o->lastSaveStream == stream);
    }
    list->_loadData(stream);
    for (TestObjective* o : objs) {
        CHECK(o->loads == 1);
        CHECK(o->lastLoadStream == stream);
    }

    // The debug trace calls DBG_TraceDetailedObjectiveInformation on every objective with the FILE pointer.
    char fileMarker = 0;
    __sFILE* file = reinterpret_cast<__sFILE*>(&fileMarker);
    list->DBG_TraceDetailedObjectiveListInformation(file);
    for (TestObjective* o : objs) {
        CHECK(o->dbgCalls == 1);
        CHECK(o->lastFile == file);
    }

    // The objectives are not deleted here: the list is leaked on purpose, so no ~ObjectiveList is linked.
    if (g_failures == 0) {
        std::printf("ObjectiveList part 1 test: OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
