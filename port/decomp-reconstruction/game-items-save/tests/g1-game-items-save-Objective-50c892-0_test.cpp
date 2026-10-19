// Test for batch g1-game-items-save-Objective-50c892-0.
//
// Linked with the batch file and its companion (the stream bodies). Application is not constructed: its storage is
// zero-filled and only m_pyDataConstants (+0x2c) and m_stringManager (+0x34) are set. PyDataConstants getConstant and
// getConstantName, StringManager::getString and ScriptManager::StartScript are stubs that record their arguments.
// ScriptManager::s_inst is the object whose m_loadedCount (+0x08) is the script base. The row is a host
// Structs::v2QuestObjectiveStub, and its out-of-line virtuals are stubs. The stream reads are defined under their
// original symbols, because this TU cannot include dh2/StreamReader.hpp next to structs_records.hpp.
//
// Checks: the constructor, InvalidateCompile, _resetData, GetDescStrId, GetDescStr (ids 0 and below give "" with no
// lookup), GetDesc, SetIsCompleted (once, row number plus the script base; a negative number starts nothing),
// _loadData and _saveData, and DBG_TraceDetailedObjectiveInformation (its text, written to a temporary file).

#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/Objective.hpp"
#include "dh2/ScriptManager.hpp"
#include "dh2/StringManager.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Out-of-line virtuals of the row's classes (pydata-accessors, not linked here).
Structs::v2QuestObjective::~v2QuestObjective() {}
void Structs::v2QuestObjective::finalize() {}
void Structs::v2QuestObjective::read(IStreamBase*) {}
Structs::v2QuestObjectiveStub::~v2QuestObjectiveStub() {}
void Structs::v2QuestObjectiveStub::finalize() {}
void Structs::v2QuestObjectiveStub::read(IStreamBase*) {}

// The companion's stream reads under their original symbols (StreamReader::readAs<bool> and writeAs<bool>).
bool StreamReadBool(IStreamBase*) __asm__("_ZN12StreamReader6readAsIbEET_P11IStreamBase");
void StreamWriteBool(IStreamBase*, bool) __asm__("_ZN12StreamReader7writeAsIbEEvP11IStreamBaseT_");

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

constexpr int kInvalidType = 9;   // v2QuestObjectiveType "Invalid"
constexpr int kKillType = 4;      // v2QuestObjectiveType 4, named "Kill"
constexpr int kScriptBase = 100;  // ScriptManager::s_inst.m_loadedCount in this test

int g_constantCalls = 0;
int g_stringCalls = 0;
int g_lastStringId = 0;
int g_startCalls = 0;
int g_startId = 0;
int g_startModule = 0;
bool g_startRemote = true;
bool g_nextBool = false;
int g_writeCalls = 0;
bool g_lastWritten = false;

unsigned char g_constantsTag = 0;
unsigned char g_stringsTag = 0;
unsigned char g_streamTag = 0;

alignas(Application) unsigned char g_appStorage[sizeof(Application)];

}  // namespace

// Application singleton: zero-filled storage, with the two pointers the batch reads set by main.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    ++g_constantCalls;
    if (std::strcmp(className, "v2QuestObjectiveType") == 0 && std::strcmp(constantName, "Invalid") == 0) {
        return kInvalidType;
    }
    return -1;
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    if (std::strcmp(className, "v2QuestObjectiveType") == 0 && value == kKillType) {
        return "Kill";
    }
    return "";
}

const char* StringManager::getString(int id) const {
    ++g_stringCalls;
    g_lastStringId = id;
    static char text[32];
    std::snprintf(text, sizeof text, "string-%d", id);
    return text;
}

ScriptManager ScriptManager::s_inst;

ScriptManager::ScriptManager() {}

ScriptManager::~ScriptManager() {}

void ScriptManager::StartScript(int id, int module, bool fromRemote) {
    ++g_startCalls;
    g_startId = id;
    g_startModule = module;
    g_startRemote = fromRemote;
}

bool StreamReadBool(IStreamBase*) {
    return g_nextBool;
}

void StreamWriteBool(IStreamBase*, bool value) {
    ++g_writeCalls;
    g_lastWritten = value;
}

namespace {

// Objective has three pure slots. The test subclass gives them empty bodies.
class TestObjective : public Objective {
public:
    void Register() override {}
    void Unregister() override {}
    void GetPositions(Vector3DFList&) const override {}
};

void TestConstructor() {
    g_constantCalls = 0;
    TestObjective obj;
    EXPECT(g_constantCalls == 1);
    EXPECT(obj.m_type == kInvalidType);
    EXPECT(!obj.m_valid);
    EXPECT(!obj.m_completed);
    EXPECT(obj.m_pyData == nullptr);
    EXPECT(obj.m_owner == nullptr);
}

void TestInvalidateAndReset() {
    TestObjective obj;
    obj.m_valid = true;
    obj.m_completed = true;
    obj.InvalidateCompile();
    EXPECT(!obj.m_valid);
    EXPECT(!obj.m_completed);
    EXPECT(obj.m_type == kInvalidType);

    obj.m_valid = true;
    obj.m_completed = true;
    obj._resetData();
    EXPECT(!obj.m_completed);
    EXPECT(obj.m_valid);  // _resetData clears only m_completed
}

void TestDescriptions() {
    Structs::v2QuestObjectiveStub row;
    row.Desc = 5;
    TestObjective obj;
    obj.m_pyData = &row;
    EXPECT(obj.GetDescStrId() == 5);

    g_stringCalls = 0;
    EXPECT(std::strcmp(obj.GetDescStr(), "string-5") == 0);
    EXPECT(g_lastStringId == 5);
    EXPECT(g_stringCalls == 1);
    EXPECT(obj.GetDesc() == "string-5");

    row.Desc = 0;
    g_stringCalls = 0;
    EXPECT(std::strcmp(obj.GetDescStr(), "") == 0);
    EXPECT(g_stringCalls == 0);

    row.Desc = -3;
    g_stringCalls = 0;
    EXPECT(obj.GetDesc().empty());
    EXPECT(g_stringCalls == 0);
}

void TestSetIsCompleted() {
    Structs::v2QuestObjectiveStub row;
    row.OnComplete = 3;
    TestObjective obj;
    obj.m_pyData = &row;
    g_startCalls = 0;
    obj.SetIsCompleted();
    EXPECT(obj.m_completed);
    EXPECT(g_startCalls == 1);
    EXPECT(g_startId == 3 + kScriptBase);
    EXPECT(g_startModule == -1);
    EXPECT(!g_startRemote);

    obj.SetIsCompleted();  // already completed: no second start
    EXPECT(g_startCalls == 1);

    TestObjective negative;
    row.OnComplete = -1;
    negative.m_pyData = &row;
    negative.SetIsCompleted();
    EXPECT(negative.m_completed);
    EXPECT(g_startCalls == 1);  // a negative script number starts nothing
}

void TestLoadSave() {
    IStreamBase* stream = reinterpret_cast<IStreamBase*>(&g_streamTag);
    TestObjective obj;
    g_nextBool = true;
    obj._loadData(stream);
    EXPECT(obj.m_completed);
    g_nextBool = false;
    obj._loadData(stream);
    EXPECT(!obj.m_completed);

    g_writeCalls = 0;
    obj.m_completed = true;
    obj._saveData(stream);
    EXPECT(g_writeCalls == 1);
    EXPECT(g_lastWritten);
    obj.m_completed = false;
    obj._saveData(stream);
    EXPECT(g_writeCalls == 2);
    EXPECT(!g_lastWritten);
}

void TestTrace() {
    TestObjective obj;
    obj.m_type = kKillType;
    std::FILE* file = std::tmpfile();
    EXPECT(file != nullptr);
    if (file == nullptr) {
        return;
    }
    const int written = obj.DBG_TraceDetailedObjectiveInformation(reinterpret_cast<__sFILE*>(file));
    std::rewind(file);
    char buffer[128] = {};
    const std::size_t got = std::fread(buffer, 1, sizeof buffer - 1, file);
    std::fclose(file);

    const char expected[] = "\t  Unimplemented Trace for Objective\n\t    Type : Kill\n\n";
    const std::size_t expectedLen = sizeof expected - 1;
    EXPECT(got == expectedLen);
    EXPECT(std::memcmp(buffer, expected, expectedLen) == 0);
    // The return value is the fprintf count, which covers only the Type line.
    const char typeLine[] = "\t    Type : Kill\n\n";
    EXPECT(written == static_cast<int>(sizeof typeLine - 1));
}

}  // namespace

int main() {
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(&g_constantsTag);
    ApplicationGetInstance().m_stringManager = reinterpret_cast<StringManager*>(&g_stringsTag);
    ScriptManager::s_inst.m_loadedCount = kScriptBase;

    TestConstructor();
    TestInvalidateAndReset();
    TestDescriptions();
    TestSetIsCompleted();
    TestLoadSave();
    TestTrace();

    if (g_failures == 0) {
        std::printf("g1-game-items-save-Objective-50c892-0: all checks passed\n");
    } else {
        std::printf("g1-game-items-save-Objective-50c892-0: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
