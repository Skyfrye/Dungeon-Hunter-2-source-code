// Test for batch g1-game-items-save-RewardList-9d3d31-0 (game-items-save/src/g1-game-items-save-RewardList-9d3d31-0.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// Only the batch source is linked. The definitions below are test-only stand-ins for code in other batches:
//   Reward: the constructor, destructor, Compile, GetParam1 and DBG_TraceDetailedRewardInformation. The Reward vtable is
//     emitted in this translation unit, so these bodies must exist here. TestReward overrides Give, Compile, the trace and
//     the destructor, so the checks go through the real virtual dispatch in the batch source.
//   The five GetRewardImplInstance<T> factories. Each builds a TestReward and records the slot it came from.
//   ApplicationGetPyDataConstants and ApplicationGetStringManager, with PyDataConstants::getConstant and StringManager's
//   getString and parse. StrID names map to fixed ids; parse is vsnprintf on the format.
//   The out-of-line members of the pydata row classes, and operator new[](size, MemoryHintState) as malloc (the game-app
//   global). CustomFree is the inline stand-in from pydata-accessors/deps/stream_reader.hpp.
//
// Checks: the constructor, AssignPyData (factory table, row pointers, types, the clear, and the nonpositive count that
// keeps the array), SetOwner, Give (both results, and the stop at the first false), Compile, the trace, InvalidateCompile,
// CreateRewardString (the newline rule, the skipped rewards, the autotransmute fallback, the flag set by a non-text type,
// and the empty list), and the destructor (deletes the rewards, skips null slots).

#include <cstdarg>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Reward.hpp"
#include "dh2/RewardList.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/GetRewardImplInstance.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/runtime_support.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Out-of-line members of the pydata row classes (not linked here).
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

// StrID ids that the stand-in PyDataConstants returns.
constexpr int kIdGold = 100;
constexpr int kIdExp = 101;
constexpr int kIdAuto = 102;

int g_destroyed = 0;
int g_factoryHits[5] = {0, 0, 0, 0, 0};

alignas(StringManager) unsigned char g_stringStorage[sizeof(StringManager)] = {};
unsigned char g_constantsStorage[1] = {};

void SetRow(Structs::v2QuestRewardStub& row, int type, int param) {
    row.Type = type;
    row.Param1 = param;
}

}  // namespace

// A reward that records its calls. The factory slot is stored so the checks can tell which table entry built it.
class TestReward : public Reward {
public:
    ~TestReward() override { ++g_destroyed; }
    bool Give() override {
        ++giveCalls;
        return giveResult;
    }
    Reward* Compile() override {
        ++compileCalls;
        m_compiled = true;
        return this;
    }
    int DBG_TraceDetailedRewardInformation(__sFILE* s) override {
        ++traceCalls;
        traceFile = s;
        return 0;
    }

    int factory = -1;
    bool giveResult = true;
    int giveCalls = 0;
    int compileCalls = 0;
    int traceCalls = 0;
    __sFILE* traceFile = nullptr;
};

namespace {

TestReward* TR(const RewardList& list, int i) {
    return static_cast<TestReward*>(list.m_rewards[i]);
}

TestReward* MakeTestReward(int factory) {
    ++g_factoryHits[factory];
    TestReward* reward = new TestReward();
    reward->factory = factory;
    return reward;
}

}  // namespace

// The five factories in the explicit specializations declared by dh2/global/GetRewardImplInstance.hpp.
template <>
Reward* GetRewardImplInstance<Reward_Gold>() {
    return MakeTestReward(0);
}
template <>
Reward* GetRewardImplInstance<Reward_XP>() {
    return MakeTestReward(1);
}
template <>
Reward* GetRewardImplInstance<Reward_CharacterProps>() {
    return MakeTestReward(2);
}
template <>
Reward* GetRewardImplInstance<Reward_Loot>() {
    return MakeTestReward(3);
}
template <>
Reward* GetRewardImplInstance<Reward_ConsumeLoot>() {
    return MakeTestReward(4);
}

// Reward base (stand-ins for the batch in game-items-save/src/g1-game-items-save-Reward-c7d765-0.cpp).
Reward::Reward() : m_type(-1), m_compiled(false), m_pyData(nullptr), m_owner(nullptr), m_compiledStub(nullptr) {}
Reward::~Reward() {}
Reward* Reward::Compile() {
    return this;
}
int Reward::GetParam1() {
    return m_pyData->Param1;
}
int Reward::DBG_TraceDetailedRewardInformation(__sFILE*) {
    return 0;
}

// Accessors and the text stand-ins.
PyDataConstants* ApplicationGetPyDataConstants() {
    return reinterpret_cast<PyDataConstants*>(g_constantsStorage);
}

StringManager* ApplicationGetStringManager() {
    return reinterpret_cast<StringManager*>(g_stringStorage);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "StrID") == 0) {
        if (std::strcmp(constantName, "GAMEPLAYMENUS_REWARD_DETAIL_GOLD") == 0) {
            return kIdGold;
        }
        if (std::strcmp(constantName, "GAMEPLAYMENUS_REWARD_DETAIL_EXP") == 0) {
            return kIdExp;
        }
        if (std::strcmp(constantName, "MENU_AUTOTRANSMUTE_1") == 0) {
            return kIdAuto;
        }
    }
    return -1;
}

const char* StringManager::getString(int id) const {
    switch (id) {
        case kIdGold:
            return "GOLD(%d)";
        case kIdExp:
            return "EXP(%d)";
        case kIdAuto:
            return "AUTO";
        default:
            return "";
    }
}

int StringManager::parse(std::string& out, const char* format, ...) {
    char buffer[128];
    std::va_list args;
    va_start(args, format);
    const int n = std::vsnprintf(buffer, sizeof buffer, format, args);
    va_end(args);
    out.assign(buffer);
    return n;
}

// operator new[](size, MemoryHintState) is the game-app global; malloc stands in for it here.
void* operator new[](std::size_t size, decltype(MHS_UNRECOVERED)) {
    return std::malloc(size);
}

namespace {

void TestConstructor() {
    RewardList list;
    EXPECT(list.m_count == 0);
    EXPECT(list.m_rewards == nullptr);
    EXPECT(list.m_pyData == nullptr);
    EXPECT(list.m_rewardString.empty());
    EXPECT(list.unk_18 == &list.m_rewardString);
    EXPECT(list.unk_1c == &list.m_rewardString);
}

void TestAssignPyDataFactoryTable() {
    for (int& hits : g_factoryHits) {
        hits = 0;
    }
    Structs::v2QuestRewardStub rows[5];
    for (int t = 0; t < 5; ++t) {
        SetRow(rows[t], t, 10 + t);
    }
    RewardList list;
    list.AssignPyData(rows, 5);
    EXPECT(list.m_count == 5);
    EXPECT(list.m_pyData == rows);
    EXPECT(list.m_rewards != nullptr);
    for (int i = 0; i < 5; ++i) {
        // Stub type i selects table slot i, and the slot builds reward i.
        EXPECT(TR(list, i)->factory == i);
        EXPECT(list.m_rewards[i]->m_type == i);
        EXPECT(list.m_rewards[i]->m_pyData == &rows[i]);
        EXPECT(g_factoryHits[i] == 1);
    }
}

void TestAssignPyDataClearsTextAndKeepsArrayForZeroCount() {
    Structs::v2QuestRewardStub rows[2];
    SetRow(rows[0], 0, 1);
    SetRow(rows[1], 1, 2);
    g_destroyed = 0;
    {
        RewardList list;
        list.AssignPyData(rows, 2);
        Reward** array = list.m_rewards;
        list.m_rewardString = "OLD";
        list.AssignPyData(rows, 0);
        EXPECT(list.m_count == 0);
        EXPECT(list.m_rewards == array);  // a nonpositive count keeps the array
        EXPECT(list.m_pyData == rows);
        EXPECT(list.m_rewardString.empty());
        EXPECT(list.Give());  // an empty list gives true
        // The original does not delete the two rewards when the count drops to zero. Delete them here, and the list
        // destructor then frees the array only.
        delete array[0];
        delete array[1];
        EXPECT(g_destroyed == 2);
    }
    EXPECT(g_destroyed == 2);
}

void TestSetOwner() {
    Structs::v2QuestRewardStub rows[3];
    for (int i = 0; i < 3; ++i) {
        SetRow(rows[i], 0, i);
    }
    RewardList list;
    list.AssignPyData(rows, 3);
    alignas(8) unsigned char ownerStorage[8] = {};
    Character* owner = reinterpret_cast<Character*>(ownerStorage);
    list.SetOwner(owner);
    for (int i = 0; i < 3; ++i) {
        EXPECT(list.m_rewards[i]->m_owner == owner);
    }
}

void TestGive() {
    Structs::v2QuestRewardStub rows[3];
    SetRow(rows[0], 1, 1);
    SetRow(rows[1], 0, 2);
    SetRow(rows[2], 3, 3);
    RewardList list;
    list.AssignPyData(rows, 3);
    EXPECT(list.Give());
    for (int i = 0; i < 3; ++i) {
        EXPECT(TR(list, i)->giveCalls == 1);
    }
    // The second reward refuses, so the third is not asked.
    TR(list, 1)->giveResult = false;
    EXPECT(!list.Give());
    EXPECT(TR(list, 0)->giveCalls == 2);
    EXPECT(TR(list, 1)->giveCalls == 2);
    EXPECT(TR(list, 2)->giveCalls == 1);

    RewardList empty;
    EXPECT(empty.Give());
}

void TestCompile() {
    Structs::v2QuestRewardStub rows[3];
    for (int i = 0; i < 3; ++i) {
        SetRow(rows[i], 2, i);
    }
    RewardList list;
    list.AssignPyData(rows, 3);
    list.Compile();
    for (int i = 0; i < 3; ++i) {
        EXPECT(TR(list, i)->compileCalls == 1);
        EXPECT(TR(list, i)->m_compiled);
    }
    RewardList empty;
    empty.Compile();  // nothing to do
}

void TestTrace() {
    Structs::v2QuestRewardStub rows[3];
    for (int i = 0; i < 3; ++i) {
        SetRow(rows[i], 0, i);
    }
    RewardList list;
    list.AssignPyData(rows, 3);
    alignas(8) unsigned char fileTag[8] = {};
    __sFILE* file = reinterpret_cast<__sFILE*>(fileTag);
    list.DBG_TraceDetailedRewardListInformation(file);
    for (int i = 0; i < 3; ++i) {
        EXPECT(TR(list, i)->traceCalls == 1);
        EXPECT(TR(list, i)->traceFile == file);
    }
}

void TestInvalidateCompile() {
    Structs::v2QuestRewardStub rows[2];
    SetRow(rows[0], 1, 4);
    SetRow(rows[1], 0, 5);
    RewardList list;
    list.AssignPyData(rows, 2);
    list.Compile();
    list.m_rewardString = "TEXT";
    list.InvalidateCompile();
    EXPECT(list.m_rewardString.empty());
    for (int i = 0; i < 2; ++i) {
        EXPECT(!list.m_rewards[i]->m_compiled);
    }
}

void TestCreateRewardString() {
    // XP, Gold, Loot (no text) and Gold: the newline comes before every text but the first, and Loot adds neither text nor
    // a newline.
    Structs::v2QuestRewardStub rows[4];
    SetRow(rows[0], 1, 10);
    SetRow(rows[1], 0, 20);
    SetRow(rows[2], 3, 30);
    SetRow(rows[3], 0, 40);
    {
        RewardList list;
        list.AssignPyData(rows, 4);
        list.Compile();
        list.CreateRewardString();
        EXPECT(list.m_rewardString == "EXP(10)\nGOLD(20)\nGOLD(40)");

        // Only the Loot reward is compiled: it sets the first flag without text, so the autotransmute text is not used.
        list.InvalidateCompile();
        list.m_rewards[2]->Compile();
        list.CreateRewardString();
        EXPECT(list.m_rewardString.empty());

        // Nothing compiled: the autotransmute text is the whole string.
        list.InvalidateCompile();
        list.CreateRewardString();
        EXPECT(list.m_rewardString == "AUTO");
    }
    {
        // A non-text reward first and then an XP reward: the XP text starts with the newline, because the first flag was
        // cleared by the Loot-type reward.
        Structs::v2QuestRewardStub pair[2];
        SetRow(pair[0], 2, 5);
        SetRow(pair[1], 1, 6);
        RewardList list;
        list.AssignPyData(pair, 2);
        list.Compile();
        list.CreateRewardString();
        EXPECT(list.m_rewardString == "\nEXP(6)");
    }
    {
        // An empty list returns at once and leaves the text alone.
        RewardList list;
        list.m_rewardString = "KEEP";
        list.CreateRewardString();
        EXPECT(list.m_rewardString == "KEEP");
    }
}

void TestDestructorDeletesRewards() {
    Structs::v2QuestRewardStub rows[3];
    for (int i = 0; i < 3; ++i) {
        SetRow(rows[i], 0, i);
    }
    g_destroyed = 0;
    RewardList* list = new RewardList();
    list->AssignPyData(rows, 3);
    // A null slot is skipped. Delete the middle reward first, so the test does not leak it.
    Reward* middle = list->m_rewards[1];
    list->m_rewards[1] = nullptr;
    delete middle;
    EXPECT(g_destroyed == 1);
    delete list;
    EXPECT(g_destroyed == 3);
}

}  // namespace

int main() {
    TestConstructor();
    TestAssignPyDataFactoryTable();
    TestAssignPyDataClearsTextAndKeepsArrayForZeroCount();
    TestSetOwner();
    TestGive();
    TestCompile();
    TestTrace();
    TestInvalidateCompile();
    TestCreateRewardString();
    TestDestructorDeletesRewards();

    if (g_failures == 0) {
        std::printf("g1-game-items-save-RewardList-9d3d31-0: all checks passed\n");
    } else {
        std::printf("g1-game-items-save-RewardList-9d3d31-0: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
