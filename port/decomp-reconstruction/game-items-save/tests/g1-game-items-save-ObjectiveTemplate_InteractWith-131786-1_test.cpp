// Test for batch g1-game-items-save-ObjectiveTemplate_InteractWith-131786-1 (Compile, handleEvent and the DBG text of the
// TriggerPlate instance).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source> <part 1 source>
// Returns non-zero when a check fails.
//
// The batch source and its part 1 (the destructors and GetPositions) are linked. The definitions below are test-only
// stand-ins for out-of-line code of other batches that the vtables and the linked bodies name: the Objective base
// (constructor, destructor, the markers, GetDesc, the stream and reset slots, and SetIsCompleted, which counts),
// Objective_EventReceiver (Register and Unregister count, and the base DBG trace returns 42 and writes nothing),
// the Objective_Qty and Objective_SavedQty destructors and stream and reset slots, the QE_ event chain
// (QuestEvent, QE_InteractWith and QE_TriggerPlate destructors, and FillNetworkMsg), the v2QuestObjective row chain
// (pydata-accessors), the Application singleton (zero-filled storage with m_pyDataConstants set), PyDataConstants
// getConstantName, and Character::SafeGetCharPropsId. The objective is a real ObjectiveTemplate_InteractWith for
// v2QuestTriggerPlate and QE_TriggerPlate, and the checks run through its virtual slots.
// The type 5 branch of DBG walks ObjectManager::m_characters, which is not built here, so the DBG check uses another type.
//
// Checks: Compile (the object id copied from the row, the valid flag, the -1 id that stops, and completion at the required
// count with one Unregister); handleEvent (a non-matching id changes nothing; a fresh event counts and sets flag0 and the
// event value; the count completes at the requirement; an absolute count (flag1) is ignored when not above the counter
// and otherwise raises it; a zero requirement completes on the first count); and DBG_TraceDetailedObjectiveInformation
// (its text, written to a temporary file, and the base trace result).

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ObjectiveTemplate_InteractWith.hpp"
#include "dh2/QE_TriggerPlate.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

constexpr int kTypeKill = 4;   // v2QuestObjectiveType the test names "Kill"
constexpr int kTargetId = 7;   // the row's object id (+0x20)
constexpr int kRequired = 2;   // the row's required count (+0x28)
constexpr int kBaseResult = 42;

int g_completed = 0;     // Objective::SetIsCompleted calls
int g_unregistered = 0;  // Unregister calls
int g_registered = 0;    // Register calls (unused here, kept for the stub)
int g_nameCalls = 0;     // getConstantName calls

unsigned char g_constantsTag = 0;
alignas(Application) unsigned char g_appStorage[sizeof(Application)];

}  // namespace

// ---- Link stubs (see the header comment) ------------------------------------------------------------------------------

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    ++g_nameCalls;
    if (std::strcmp(className, "v2QuestObjectiveType") == 0 && value == kTypeKill) {
        return "Kill";
    }
    return "";
}

int Character::SafeGetCharPropsId() {
    return -1;
}

// Objective base.
Objective::Objective() {
    m_type = 0;
    m_valid = false;
    m_pyData = nullptr;
    m_owner = nullptr;
    m_completed = false;
}
Objective::~Objective() {}
void Objective::InstallObjectiveMarker(int, int) {}
void Objective::RemoveObjectiveMarker() {}
std::string Objective::GetDesc() const {
    return std::string();
}
void Objective::Compile() {}
int Objective::DBG_TraceDetailedObjectiveInformation(__sFILE*) const {
    return 0;
}
void Objective::_loadData(IStreamBase*) {}
void Objective::_saveData(IStreamBase*) {}
void Objective::_resetData() {}
void Objective::SetIsCompleted() {
    ++g_completed;
    m_completed = true;
}

// Objective_EventReceiver: the destructor is the key function, so the vtable is emitted here.
Objective_EventReceiver::~Objective_EventReceiver() {}
int Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(__sFILE*) const {
    return kBaseResult;
}
void Objective_EventReceiver::Register() {
    ++g_registered;
    m_registered = true;
}
void Objective_EventReceiver::Unregister() {
    ++g_unregistered;
    m_registered = false;
}
bool Objective_EventReceiver::onEvent(const IEvent*, const EventManager*) {
    return false;
}

// Objective_Qty and Objective_SavedQty.
Objective_Qty::~Objective_Qty() {}
Objective_SavedQty::~Objective_SavedQty() {}
void Objective_SavedQty::_loadData(IStreamBase*) {}
void Objective_SavedQty::_saveData(IStreamBase*) {}
void Objective_SavedQty::_resetData() {}

// The QE_ event chain. QE_TriggerPlate's destructor is the key function of its vtable.
QuestEvent::~QuestEvent() {}
QE_InteractWith::~QE_InteractWith() {}
void QE_InteractWith::FillNetworkMsg(tMsgRaisedEventData&) const {}
QE_TriggerPlate::~QE_TriggerPlate() {}

// The v2QuestObjective row chain (pydata-accessors, not linked here).
Structs::v2QuestObjective::~v2QuestObjective() {}
void Structs::v2QuestObjective::finalize() {}
void Structs::v2QuestObjective::read(IStreamBase*) {}
Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub() {}
void Structs::v2QuestObjectiveStub::finalize() {}
void Structs::v2QuestObjectiveStub::read(IStreamBase*) {}

namespace {

// Builds the objective the checks use, with its row. The row is a host Structs::v2QuestObjectiveStub and only the fields
// the instance reads are set.
void Configure(ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate>& obj,
               Structs::v2QuestObjectiveStub& row, int objectId, int required) {
    row.Type = kTypeKill;
    row.OID1 = objectId;
    row.OID2 = 3;
    row.Value = required;
    obj.m_pyData = &row;
    obj.m_objectId = objectId;
    obj.m_currentQty = 0;
    obj.m_valid = false;
    obj.m_completed = false;
    g_completed = 0;
    g_unregistered = 0;
}

// An event with the QE_InteractWith fields set, as a raise would leave them. The count is 0 and not flagged.
void SetEvent(QE_TriggerPlate& ev, int matchId) {
    ev.m_character = nullptr;
    ev.m_targetId = 0;
    ev.m_flag0 = 0;
    ev.m_flag1 = 0;
    ev.m_value = -1;
    ev.m_matchId = matchId;
}

void TestCompile() {
    Structs::v2QuestObjectiveStub row;
    ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate> obj;

    // Fresh count below the requirement: the id is copied, the objective is valid, and nothing completes.
    Configure(obj, row, kTargetId, kRequired);
    Objective& base = obj;
    base.Compile();
    EXPECT(obj.m_objectId == kTargetId);
    EXPECT(obj.m_valid);
    EXPECT(!obj.m_completed);
    EXPECT(g_completed == 0);
    EXPECT(g_unregistered == 0);

    // Row id -1: the id is copied, and the objective stays as it was (not valid here).
    Configure(obj, row, -1, kRequired);
    obj.m_objectId = 5;
    base.Compile();
    EXPECT(obj.m_objectId == -1);
    EXPECT(!obj.m_valid);
    EXPECT(g_completed == 0);
    EXPECT(g_unregistered == 0);

    // Count at the requirement: completes once and unregisters once.
    Configure(obj, row, kTargetId, kRequired);
    obj.m_currentQty = kRequired;
    base.Compile();
    EXPECT(obj.m_valid);
    EXPECT(obj.m_completed);
    EXPECT(g_completed == 1);
    EXPECT(g_unregistered == 1);
}

void TestHandleEvent() {
    Structs::v2QuestObjectiveStub row;
    ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate> obj;
    Objective_EventReceiver& receiver = obj;

    // A DataID that is not the objective's id changes nothing.
    Configure(obj, row, kTargetId, kRequired);
    obj.m_valid = true;
    QE_TriggerPlate other;
    SetEvent(other, kTargetId + 1);
    EXPECT(!receiver.handleEvent(&other, nullptr));
    EXPECT(obj.m_currentQty == 0);
    EXPECT(other.m_flag0 == 0);
    EXPECT(other.m_value == -1);
    EXPECT(g_completed == 0);
    EXPECT(g_unregistered == 0);

    // A counting event (flag1 clear): the count goes to 1, the event is flagged with value 1, and it is not complete yet.
    QE_TriggerPlate first;
    SetEvent(first, kTargetId);
    EXPECT(!receiver.handleEvent(&first, nullptr));
    EXPECT(obj.m_currentQty == 1);
    EXPECT(first.m_flag0 == 1);
    EXPECT(first.m_value == 1);
    EXPECT(g_completed == 0);

    // The second counting event reaches the requirement: completes once and unregisters once.
    QE_TriggerPlate second;
    SetEvent(second, kTargetId);
    EXPECT(!receiver.handleEvent(&second, nullptr));
    EXPECT(obj.m_currentQty == 2);
    EXPECT(second.m_value == 2);
    EXPECT(g_completed == 1);
    EXPECT(g_unregistered == 1);

    // An absolute count (flag1) that is not above the counter changes nothing.
    QE_TriggerPlate low;
    SetEvent(low, kTargetId);
    low.m_flag1 = 1;
    low.m_value = 1;
    EXPECT(!receiver.handleEvent(&low, nullptr));
    EXPECT(obj.m_currentQty == 2);
    EXPECT(low.m_flag0 == 0);
    EXPECT(g_completed == 1);
    EXPECT(g_unregistered == 1);

    // An absolute count above the counter raises it. The count is past the requirement, so it completes again (the
    // listing does not check m_completed in handleEvent).
    QE_TriggerPlate high;
    SetEvent(high, kTargetId);
    high.m_flag1 = 1;
    high.m_value = 5;
    EXPECT(!receiver.handleEvent(&high, nullptr));
    EXPECT(obj.m_currentQty == 5);
    EXPECT(high.m_flag0 == 0);
    EXPECT(g_completed == 2);
    EXPECT(g_unregistered == 2);

    // A zero requirement completes on the first counted event.
    Configure(obj, row, kTargetId, 0);
    obj.m_valid = true;
    QE_TriggerPlate zero;
    SetEvent(zero, kTargetId);
    EXPECT(!receiver.handleEvent(&zero, nullptr));
    EXPECT(obj.m_currentQty == 1);
    EXPECT(g_completed == 1);
    EXPECT(g_unregistered == 1);
}

void TestDbg() {
    Structs::v2QuestObjectiveStub row;
    ObjectiveTemplate_InteractWith<Structs::v2QuestTriggerPlate, QE_TriggerPlate> obj;
    Configure(obj, row, 9, kRequired);  // object id 9, not type 5, so no ObjectManager walk

    std::FILE* file = std::tmpfile();
    EXPECT(file != nullptr);
    if (file == nullptr) {
        return;
    }
    const Objective& base = obj;
    const int result = base.DBG_TraceDetailedObjectiveInformation(reinterpret_cast<__sFILE*>(file));
    EXPECT(result == kBaseResult);

    std::rewind(file);
    char text[512] = {};
    const std::size_t count = std::fread(text, 1, sizeof text - 1, file);
    text[count] = '\0';
    std::fclose(file);
    const char* expected =
        "\t  Objective_InteractWith\n"
        "\t    Type        : Kill\n"
        "\t    Object      : 9\n"
        "\t    Level (OID) : na\n\n";  // the level index is outside the (empty) pydata name table
    EXPECT(std::strcmp(text, expected) == 0);
    EXPECT(g_nameCalls > 0);
}

}  // namespace

int main() {
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(&g_constantsTag);
    TestCompile();
    TestHandleEvent();
    TestDbg();
    if (g_failures == 0) {
        std::printf("ObjectiveTemplate_InteractWith-131786-1: all checks passed\n");
        return 0;
    }
    std::printf("ObjectiveTemplate_InteractWith-131786-1: %d check(s) failed\n", g_failures);
    return 1;
}
