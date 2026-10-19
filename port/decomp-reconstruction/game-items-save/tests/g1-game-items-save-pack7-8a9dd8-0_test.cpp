// Test for batch g1-game-items-save-pack7-8a9dd8-0.
//
// Linked with the batch file and the Reward base source (g1-game-items-save-Reward-c7d765-0.cpp, which owns Reward's
// constructor, destructor and the base trace). Application is not constructed: its storage is zero-filled and only
// m_pyDataConstants is set. The engine calls are stubs that record their arguments: PyDataConstants::getConstant and
// getConstantName, Character::_GiveXP, ItemInventory::AddGold and ItemObject::DropLootTable. A Character is zero-filled
// storage read only through its fields and those stubbed calls. The pydata rows are host Structs::v2QuestRewardStub
// objects, and their out-of-line virtuals are stubs.
//
// Checks: Compile on the three derived types (flag, compiled copy, returns this), Give for gold, XP and loot (not compiled,
// compiled, the amounts, the XP shift, and the grant result), the gold and XP traces (text and return value), the first two
// lines of the loot trace (its Loot line is PARTIAL and is not checked), and the destructors through delete.
// The constant values used by the stubs (kXPType, kGoldType, kLootType) are test values, not the game's.

#include <cstddef>
#include <cstdio>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/Reward.hpp"
#include "dh2/Reward_Gold.hpp"
#include "dh2/Reward_Loot.hpp"
#include "dh2/Reward_XP.hpp"
#include "dh2/TrophyData.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Out-of-line virtuals of the pydata rows (pydata-accessors, not linked here), as in the Reward test.
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

constexpr int kInvalidType = 7;
constexpr int kXPType = 1;
constexpr int kGoldType = 3;
constexpr int kLootType = 4;

unsigned char g_constantsTag = 0;
alignas(Application) unsigned char g_appStorage[sizeof(Application)];
alignas(Character) unsigned char g_ownerStorage[sizeof(Character)];

int g_constantNameCalls = 0;

int g_giveXPCalls = 0;
int g_lastXP = 0;
bool g_lastXPFlag = false;
bool g_giveXPResult = true;

int g_addGoldCalls = 0;
int g_lastGold = 0;

int g_dropCalls = 0;
int g_lastDropLootId = 0;
const GameObject* g_lastDropDropper = nullptr;
const GameObject* g_lastDropKiller = nullptr;
const Character* g_lastDropOwner = nullptr;
int g_lastDropUnk = 0;

Character* ownerObject() {
    return reinterpret_cast<Character*>(g_ownerStorage);
}

void ResetOwner() {
    ownerObject()->m_pendingGoldText = -1;
    ownerObject()->m_pendingXPText = -1;
}

// Runs DBG_TraceDetailedRewardInformation into a temporary file. Returns the number of bytes read back.
std::size_t CaptureTrace(Reward& reward, int& returned, char* buffer, std::size_t capacity) {
    std::FILE* file = std::tmpfile();
    EXPECT(file != nullptr);
    if (file == nullptr) {
        buffer[0] = '\0';
        returned = -1;
        return 0;
    }
    returned = reward.DBG_TraceDetailedRewardInformation(reinterpret_cast<__sFILE*>(file));
    std::rewind(file);
    const std::size_t got = std::fread(buffer, 1, capacity - 1, file);
    buffer[got] = '\0';
    std::fclose(file);
    return got;
}

void TestCompile() {
    Structs::v2QuestRewardStub row;
    row.Type = kGoldType;

    Reward_Gold gold;
    gold.m_pyData = &row;
    EXPECT(gold.Compile() == &gold);
    EXPECT(gold.m_compiled);
    EXPECT(gold.m_compiledStub == &row);

    Reward_Loot loot;
    loot.m_pyData = &row;
    EXPECT(loot.Compile() == &loot);
    EXPECT(loot.m_compiled);
    EXPECT(loot.m_compiledStub == &row);

    Reward_XP xp;
    xp.m_pyData = &row;
    EXPECT(xp.Compile() == &xp);
    EXPECT(xp.m_compiled);
    EXPECT(xp.m_compiledStub == &row);
}

void TestGoldGive() {
    Structs::v2QuestRewardStub pyRow;
    pyRow.Param1 = 999;      // the pydata row, which Give must not read
    Structs::v2QuestRewardStub compiledRow;
    compiledRow.Param1 = 250;  // the compiled copy, which Give reads

    Reward_Gold gold;
    gold.m_owner = ownerObject();
    gold.m_pyData = &pyRow;
    ResetOwner();
    g_addGoldCalls = 0;

    EXPECT(gold.Give() == false);  // not compiled
    EXPECT(g_addGoldCalls == 0);
    EXPECT(ownerObject()->m_pendingGoldText == -1);

    gold.m_compiled = true;
    gold.m_compiledStub = &compiledRow;
    EXPECT(gold.Give() == true);
    EXPECT(g_addGoldCalls == 1);
    EXPECT(g_lastGold == 250);
    EXPECT(ownerObject()->m_pendingGoldText == 250);
}

void TestXPGive() {
    Structs::v2QuestRewardStub row;
    row.Param1 = 3;  // 3 << 8 = 768

    Reward_XP xp;
    xp.m_owner = ownerObject();
    xp.m_pyData = &row;
    ResetOwner();
    g_giveXPCalls = 0;

    EXPECT(xp.Give() == false);  // not compiled
    EXPECT(g_giveXPCalls == 0);

    static_cast<void>(xp.Compile());
    g_giveXPResult = true;
    EXPECT(xp.Give() == true);
    EXPECT(g_giveXPCalls == 1);
    EXPECT(g_lastXP == 768);
    EXPECT(g_lastXPFlag);
    EXPECT(ownerObject()->m_pendingXPText == 768);

    // A refused grant still returns true, and the owner's XP text is not written.
    ResetOwner();
    g_giveXPResult = false;
    EXPECT(xp.Give() == true);
    EXPECT(ownerObject()->m_pendingXPText == -1);
    g_giveXPResult = true;

    // A negative amount shifts as the 32-bit word does: -1 << 8 is -256.
    row.Param1 = -1;
    EXPECT(xp.Give() == true);
    EXPECT(g_lastXP == -256);
}

void TestLootGive() {
    Structs::v2QuestRewardStub row;
    row.Param2 = 17;

    Reward_Loot loot;
    loot.m_owner = ownerObject();
    loot.m_pyData = &row;
    g_dropCalls = 0;

    EXPECT(loot.Give() == false);  // not compiled
    EXPECT(g_dropCalls == 0);

    static_cast<void>(loot.Compile());
    EXPECT(loot.Give() == true);
    EXPECT(g_dropCalls == 1);
    EXPECT(g_lastDropLootId == 17);
    EXPECT(g_lastDropDropper == static_cast<const GameObject*>(ownerObject()));
    EXPECT(g_lastDropKiller == static_cast<const GameObject*>(ownerObject()));
    EXPECT(g_lastDropOwner == ownerObject());
    EXPECT(g_lastDropUnk == -1);
}

void TestGoldTrace() {
    Structs::v2QuestRewardStub row;
    row.Type = kGoldType;
    row.Param1 = 250;

    Reward_Gold gold;
    gold.m_pyData = &row;

    char text[256] = {};
    int returned = 0;
    CaptureTrace(gold, returned, text, sizeof text);
    const char expected[] = "\t  v2QuestRewardGiveGold\n\t    Type        : Gold\n\t    Gold        : 250G\n\n";
    EXPECT(std::strcmp(text, expected) == 0);
    const char goldLine[] = "\t    Gold        : 250G\n\n";
    EXPECT(returned == static_cast<int>(sizeof goldLine - 1));
}

void TestXPTrace() {
    Structs::v2QuestRewardStub row;
    row.Type = kXPType;
    row.Param1 = 40;

    Reward_XP xp;
    xp.m_pyData = &row;

    char text[256] = {};
    int returned = 0;
    CaptureTrace(xp, returned, text, sizeof text);
    const char expected[] = "\t  v2QuestRewardGiveXP\n\t    Type        : XP\n\t    XP          : 40XP\n\n";
    EXPECT(std::strcmp(text, expected) == 0);
    const char xpLine[] = "\t    XP          : 40XP\n\n";
    EXPECT(returned == static_cast<int>(sizeof xpLine - 1));
}

void TestLootTraceHeader() {
    // The header, the Type line and the Loot line; a loot index outside Arrays::LootTable::size prints "na". The return value is
    // the Loot line's count.
    Structs::v2QuestRewardStub row;
    row.Type = kLootType;
    row.Param2 = 17;

    Reward_Loot loot;
    loot.m_pyData = &row;
    static_cast<void>(loot.Compile());

    char text[256] = {};
    int returned = 0;
    CaptureTrace(loot, returned, text, sizeof text);
    const char expected[] = "\t  v2QuestRewardGiveLoot\n\t    Type        : Loot\n\t    Loot        : na \n";
    EXPECT(std::strcmp(text, expected) == 0);
    const char lootLine[] = "\t    Loot        : na \n";
    EXPECT(returned == static_cast<int>(sizeof lootLine - 1));
}

void TestDestructors() {
    // The deleting destructors come from the vtable (slot 0x04), so each delete runs the derived destructor first.
    Reward* gold = new Reward_Gold();
    delete gold;
    Reward* loot = new Reward_Loot();
    delete loot;
    Reward* xp = new Reward_XP();
    delete xp;
    TrophyData* trophy = new TrophyData();
    delete trophy;
}

}  // namespace

// Application singleton: zero-filled storage, with the pointer the batch reads set by main.
Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    if (std::strcmp(className, "v2QuestRewardType") == 0 && std::strcmp(constantName, "Invalid") == 0) {
        return kInvalidType;
    }
    return -1;
}

const char* PyDataConstants::getConstantName(const char* className, int value) const {
    ++g_constantNameCalls;
    if (std::strcmp(className, "v2QuestRewardType") != 0) {
        return "";
    }
    switch (value) {
        case kXPType:
            return "XP";
        case kGoldType:
            return "Gold";
        case kLootType:
            return "Loot";
        default:
            return "";
    }
}

bool Character::_GiveXP(int xp, bool a) {
    ++g_giveXPCalls;
    g_lastXP = xp;
    g_lastXPFlag = a;
    return g_giveXPResult;
}

void ItemInventory::AddGold(int amount) {
    ++g_addGoldCalls;
    g_lastGold = amount;
}

void ItemObject::DropLootTable(int lootTableId, const GameObject* dropper, const GameObject* killer,
                               const Character* ownerArg, int unk_arg) {
    ++g_dropCalls;
    g_lastDropLootId = lootTableId;
    g_lastDropDropper = dropper;
    g_lastDropKiller = killer;
    g_lastDropOwner = ownerArg;
    g_lastDropUnk = unk_arg;
}

int main() {
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(&g_constantsTag);

    TestCompile();
    TestGoldGive();
    TestXPGive();
    TestLootGive();
    TestGoldTrace();
    TestXPTrace();
    TestLootTraceHeader();
    TestDestructors();

    if (g_failures == 0) {
        std::printf("g1-game-items-save-pack7-8a9dd8-0: all checks passed\n");
    } else {
        std::printf("g1-game-items-save-pack7-8a9dd8-0: %d check(s) failed\n", g_failures);
    }
    return g_failures == 0 ? 0 : 1;
}
