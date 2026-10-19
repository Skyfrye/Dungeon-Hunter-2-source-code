// Test for batch g1-game-items-save-Reward-c7d765-0.
//
// Linked with the batch file only. Application is not constructed: its storage is zero-filled and only m_pyDataConstants
// (+0x2c) is set. PyDataConstants getConstant and getConstantName are stubs that record their arguments. The stub row is
// a host Structs::v2QuestRewardStub, and its out-of-line virtuals are stubs. Reward is abstract, so the test derives a
// class that supplies Give.
//
// Checks: the constructor (one lookup of "Invalid", the fields it writes), GetParam1 (reads m_w2 of the row), Compile
// (returns this and leaves m_compiled alone), the base destructor through delete, and
// DBG_TraceDetailedRewardInformation (its text, written to a temporary file).

#include <cstddef>
#include <cstdio>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Reward.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Out-of-line virtuals of the row's classes (pydata-accessors, not linked here).
Structs::v2QuestReward::~v2QuestReward() {}
void Structs::v2QuestReward::finalize() {}
void Structs::v2QuestReward::read(IStreamBase*) {}
Structs::v2QuestRewardStub::~v2QuestRewardStub() {}
void Structs::v2QuestRewardStub::finalize() {}
void Structs::v2QuestRewardStub::read(IStreamBase*) {}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                    \
    do {                                                                \
        if (!(cond)) {                                                  \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                               \
        }                                                               \
    } while (0)

constexpr int kInvalidType = 7;  // v2QuestRewardType "Invalid"
constexpr int kGoldType = 3;     // v2QuestRewardType 3, named "Gold"

// The trace's fwrite count is the literal's length (the original passes 0x22).
static_assert(sizeof "\t  Unimplemented Trace for reward\n" - 1 == 0x22, "trace header length");

int g_constantCalls = 0;

unsigned char g_constantsTag = 0;

alignas(Application) unsigned char g_appStorage[sizeof(Application)];

// Reward is abstract (Give is pure). The test subclass only supplies Give.
class TestReward : public Reward {
public:
    bool Give() override { return false; }
};

void TestConstructor() {
    g_constantCalls = 0;
    TestReward reward;
    EXPECT(g_constantCalls == 1);
    EXPECT(reward.m_type == kInvalidType);
    EXPECT(!reward.m_compiled);
    EXPECT(reward.m_pyData == nullptr);
    EXPECT(reward.m_owner == nullptr);
}

void TestGetParam1() {
    Structs::v2QuestRewardStub row;
    row.Param1 = 42;
    row.Param2 = 9;
    TestReward reward;
    reward.m_pyData = &row;
    EXPECT(reward.GetParam1() == 42);
    row.Param1 = -5;
    EXPECT(reward.GetParam1() == -5);
    EXPECT(row.Param2 == 9);  // only m_w2 is read
}

void TestCompile() {
    TestReward reward;
    reward.m_compiled = false;
    EXPECT(reward.Compile() == &reward);
    EXPECT(!reward.m_compiled);  // the base Compile does not set the flag
}

void TestDestructor() {
    // The base destructor runs through delete on a base pointer. The compiler emits the deleting destructor.
    Reward* base = new TestReward();
    delete base;
}

void TestTrace() {
    TestReward reward;
    reward.m_type = kGoldType;
    std::FILE* file = std::tmpfile();
    EXPECT(file != nullptr);
    if (file == nullptr) {
        return;
    }
    const int written = reward.DBG_TraceDetailedRewardInformation(reinterpret_cast<__sFILE*>(file));
    std::rewind(file);
    char buffer[128] = {};
    const std::size_t got = std::fread(buffer, 1, sizeof buffer - 1, file);
    std::fclose(file);

    const char expected[] = "\t  Unimplemented Trace for reward\n\t    Type : Gold\n\n";
    const std::size_t expectedLen = sizeof expected - 1;
    EXPECT(got == expectedLen);
    EXPECT(std::memcmp(buffer, expected, expectedLen) == 0);
    // The return value is the fprintf count, which covers only the Type line.
    const char typeLine[] = "\t    Type : Gold\n\n";
    EXPECT(written == static_cast<int>(sizeof typeLine - 1));
}

}  // namespace

// Application singleton: zero-filled storage, with the pointer the batch reads set by main.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    ++g_constantCalls;
    if (std::strcmp(className, "v2QuestRewardType") == 0 && std::strcmp(constantName, "Invalid") == 0) {
        return kInvalidType;
    }
    return -1;
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    if (std::strcmp(className, "v2QuestRewardType") == 0 && value == kGoldType) {
        return "Gold";
    }
    return "";
}

int main() {
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(&g_constantsTag);

    TestConstructor();
    TestGetParam1();
    TestCompile();
    TestDestructor();
    TestTrace();

    if (g_failures == 0) {
        std::printf("g1-game-items-save-Reward-c7d765-0: all checks passed\n");
    } else {
        std::printf("g1-game-items-save-Reward-c7d765-0: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
