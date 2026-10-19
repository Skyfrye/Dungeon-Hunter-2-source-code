// Test for the QuestSavegame batch (game-items-save/src/g1-game-items-save-QuestSavegame-ef02ce-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked whole, so the symbols it needs from other batches are test doubles here: the QuestSavegame
// constructor and destructor, the Quest members the batch calls (the constructor, the owner and pydata binding, ReInit,
// and the save and load pair), the list constructors and destructors that a Quest is built from, the pydata table of
// Arrays::v2Quests, the ASSERT level, and the stream's typed helpers. The checks cover the batch source's own logic: the
// savegame word layout and its order, the count match, the index read by UnpackQuest, the save and load of one quest, and
// the list building in InitQuests.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "dh2/IStreamBase.hpp"
#include "dh2/Quest.hpp"
#include "dh2/QuestSavegame.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

// ---- ASSERT level and pydata table (the batch reads these) ----
int gAssertLevel = 0;

std::uint8_t* Arrays::v2Quests::members = nullptr;
std::uint32_t Arrays::v2Quests::size = 0;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "FAIL line %d: %s\n", __LINE__, #cond);  \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

// File words are little-endian 32-bit values.
std::uint32_t GetWordLE(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
           (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24);
}

void PutWordLE(std::uint8_t* p, std::uint32_t v) {
    p[0] = static_cast<std::uint8_t>(v);
    p[1] = static_cast<std::uint8_t>(v >> 8);
    p[2] = static_cast<std::uint8_t>(v >> 16);
    p[3] = static_cast<std::uint8_t>(v >> 24);
}

void AppendWord(std::vector<std::uint8_t>& bytes, std::uint32_t v) {
    std::uint8_t b[4];
    PutWordLE(b, v);
    bytes.insert(bytes.end(), b, b + 4);
}

// A byte stream the test can inspect.
struct FakeStream : IStreamBase {
    std::vector<std::uint8_t> bytes;
    std::size_t pos = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        std::uint8_t* out = static_cast<std::uint8_t*>(dst);
        for (std::uint64_t i = 0; i < n && pos + i < bytes.size(); ++i) out[i] = bytes[pos + i];
        return n;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        std::uint8_t* out = static_cast<std::uint8_t*>(dst);
        for (std::uint64_t i = 0; i < n; ++i) out[i] = pos + i < bytes.size() ? bytes[pos + i] : 0;
        pos += static_cast<std::size_t>(n);
        return n;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::uint8_t* in = static_cast<const std::uint8_t*>(src);
        if (pos + n > bytes.size()) bytes.resize(pos + static_cast<std::size_t>(n));
        for (std::uint64_t i = 0; i < n; ++i) bytes[pos + i] = in[i];
        pos += static_cast<std::size_t>(n);
        return n;
    }
    void seek(std::uint64_t p) override { pos = static_cast<std::size_t>(p); }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += static_cast<std::size_t>(n); }
};

}  // namespace

// The typed helpers of IStreamBase: 4-byte little-endian words through the stream's read and write slots.
template <>
void IStreamBase::readAs<int>(int& value) {
    std::uint8_t b[4] = {};
    read(b, 4);
    value = static_cast<int>(GetWordLE(b));
}

template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    std::uint8_t b[4] = {};
    read(b, 4);
    value = GetWordLE(b);
}

template <>
void IStreamBase::writeAs<int>(const int& value) {
    std::uint8_t b[4];
    PutWordLE(b, static_cast<std::uint32_t>(value));
    write(b, 4);
}

template <>
void IStreamBase::writeAs<unsigned int>(const unsigned int& value) {
    std::uint8_t b[4];
    PutWordLE(b, value);
    write(b, 4);
}

IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

// ---- QuestSavegame: constructor and destructor are stand-ins (their batch is not linked here) ----
QuestSavegame::QuestSavegame() {
    m_owner = nullptr;
    for (int d = 0; d < 3; ++d) {
        m_compiled[d] = false;
        m_currentQuest[d] = -1;
        m_currentPrimaryQuest[d] = -1;
        m_act[d] = 1;
        m_minAct[d] = 1;
    }
}

QuestSavegame::~QuestSavegame() {}

// ---- Quest members the batch calls: test doubles that record what the batch asks of them ----
namespace {

constexpr int kQuestSaveMarker = 0x66;  // written by the stand-in _saveQuestData

int g_questCtorCount = 0;
int g_setOwnerCount = 0;
int g_reInitCount = 0;
int g_saveCount = 0;
int g_loadCount = 0;
int g_lastLoadPayload = 0;
Quest* g_lastLoadQuest = nullptr;
Quest* g_lastSaveQuest = nullptr;
std::vector<Structs::v2Quest*> g_assignRows;

// Raw storage for two pydata rows. The rows are never read or constructed, only addressed.
alignas(alignof(Structs::v2Quest)) std::uint8_t g_rowBlock[2 * sizeof(Structs::v2Quest)];

void ResetLogs() {
    g_questCtorCount = 0;
    g_setOwnerCount = 0;
    g_reInitCount = 0;
    g_saveCount = 0;
    g_loadCount = 0;
    g_lastLoadPayload = 0;
    g_lastLoadQuest = nullptr;
    g_lastSaveQuest = nullptr;
    g_assignRows.clear();
}

void SetWords(QuestSavegame& qs, int d, int cur, int prim, int act) {
    qs.m_currentQuest[d] = cur;
    qs.m_currentPrimaryQuest[d] = prim;
    qs.m_act[d] = act;
}

}  // namespace

Quest::Quest(int listIndex) {
    m_listIndex = listIndex;
    m_pyDataIndex = -1;
    m_owner = nullptr;
    ++g_questCtorCount;
}

ConditionList::ConditionList() {}
ConditionList::~ConditionList() {}
ObjectiveList::ObjectiveList() {}
ObjectiveList::~ObjectiveList() {}
RewardList::RewardList() {}
RewardList::~RewardList() {}

void Quest::SetOwnerToChildren() { ++g_setOwnerCount; }
void Quest::AssignPyData(Structs::v2Quest* pyData) { g_assignRows.push_back(pyData); }
void Quest::ReInit() { ++g_reInitCount; }

void Quest::_saveQuestData(IStreamBase* stream) {
    ++g_saveCount;
    g_lastSaveQuest = this;
    stream->writeAs(kQuestSaveMarker);
}

int Quest::_loadQuestData(IStreamBase* stream, bool /*flag*/) {
    ++g_loadCount;
    g_lastLoadQuest = this;
    int payload = 0;
    stream->readAs(payload);
    g_lastLoadPayload = payload;
    return 0;
}

namespace {

// Savegame layout for three empty lists: each difficulty is count, current quest, current primary quest, act.
void TestSaveEmptyLists() {
    QuestSavegame qs;
    SetWords(qs, 0, 1, 4, 7);
    SetWords(qs, 1, 2, 5, 8);
    SetWords(qs, 2, 3, 6, 9);
    FakeStream out;
    qs.SaveQuests(&out);
    CHECK(out.bytes.size() == 48);
    const std::uint32_t expected[12] = {0, 1, 4, 7, 0, 2, 5, 8, 0, 3, 6, 9};
    for (std::size_t i = 0; i < 12 && out.bytes.size() >= 48; ++i) {
        CHECK(GetWordLE(&out.bytes[4 * i]) == expected[i]);
    }
}

// LoadQuests reads back what SaveQuests wrote, and copies each act into m_minAct.
void TestLoadRoundTrip() {
    QuestSavegame saved;
    SetWords(saved, 0, 1, 4, 7);
    SetWords(saved, 1, 2, 5, 8);
    SetWords(saved, 2, 3, 6, 9);
    FakeStream out;
    saved.SaveQuests(&out);

    QuestSavegame loaded;
    FakeStream in;
    in.bytes = out.bytes;
    loaded.LoadQuests(&in);
    for (int d = 0; d < 3; ++d) {
        CHECK(loaded.m_currentQuest[d] == d + 1);
        CHECK(loaded.m_currentPrimaryQuest[d] == d + 4);
        CHECK(loaded.m_act[d] == d + 7);
        CHECK(loaded.m_minAct[d] == d + 7);
    }
    CHECK(in.pos == 48);
}

// A count that does not match the list leaves the stream just after the count and the words untouched.
void TestCountMismatch() {
    QuestSavegame qs;
    qs.m_quests[0].assign(2, static_cast<Quest*>(nullptr));
    qs.m_currentQuest[0] = -5;
    qs.m_currentPrimaryQuest[0] = -6;
    qs.m_act[0] = 3;
    qs.m_minAct[0] = 9;

    FakeStream in;
    AppendWord(in.bytes, 0);   // count: the list holds 2, so the count does not match
    AppendWord(in.bytes, 77);  // not read
    AppendWord(in.bytes, 78);  // not read
    AppendWord(in.bytes, 79);  // not read
    ResetLogs();
    qs.UnpackQuests(0, &in, false);
    CHECK(in.pos == 4);
    CHECK(qs.m_currentQuest[0] == -5);
    CHECK(qs.m_currentPrimaryQuest[0] == -6);
    CHECK(qs.m_act[0] == 3);
    CHECK(qs.m_minAct[0] == 9);
    CHECK(g_loadCount == 0);
}

// One quest in the list: UnpackQuest reads its index, loads that quest, and the three words follow.
void TestUnpackOneQuest() {
    ResetLogs();
    QuestSavegame qs;
    Quest* quest = new Quest(1);
    qs.m_quests[1].push_back(quest);

    FakeStream in;
    AppendWord(in.bytes, 1);     // count
    AppendWord(in.bytes, 0);     // quest index
    AppendWord(in.bytes, 0x55);  // quest payload, read by the stand-in _loadQuestData
    AppendWord(in.bytes, 3);     // m_currentQuest
    AppendWord(in.bytes, 4);     // m_currentPrimaryQuest
    AppendWord(in.bytes, 6);     // m_act
    qs.UnpackQuests(1, &in, true);
    CHECK(g_loadCount == 1);
    CHECK(g_lastLoadQuest == quest);
    CHECK(g_lastLoadPayload == 0x55);
    CHECK(qs.m_currentQuest[1] == 3);
    CHECK(qs.m_currentPrimaryQuest[1] == 4);
    CHECK(qs.m_act[1] == 6);
    CHECK(qs.m_minAct[1] == 6);
    CHECK(in.pos == in.bytes.size());
}

// One quest in the list: PackQuest writes the index, then the quest's data, then the three words.
void TestPackOneQuest() {
    ResetLogs();
    QuestSavegame qs;
    Quest* quest = new Quest(2);
    qs.m_quests[2].push_back(quest);
    SetWords(qs, 2, 3, 4, 6);

    FakeStream out;
    qs.PackQuests(2, &out);
    const std::uint32_t expected[6] = {1, 0, kQuestSaveMarker, 3, 4, 6};
    CHECK(out.bytes.size() == 24);
    for (std::size_t i = 0; i < 6 && out.bytes.size() >= 24; ++i) {
        CHECK(GetWordLE(&out.bytes[4 * i]) == expected[i]);
    }
    CHECK(g_saveCount == 1);
    CHECK(g_lastSaveQuest == quest);
}

// An index past the list is a null entry: the ASSERT path runs (silent at level 0) and nothing is loaded.
void TestUnpackIndexOutOfRange() {
    ResetLogs();
    QuestSavegame qs;
    qs.m_quests[0].push_back(new Quest(0));

    FakeStream in;
    AppendWord(in.bytes, 1);  // count matches the list
    AppendWord(in.bytes, 5);  // index past the list
    AppendWord(in.bytes, 3);
    AppendWord(in.bytes, 4);
    AppendWord(in.bytes, 6);
    qs.UnpackQuests(0, &in, false);
    CHECK(g_loadCount == 0);
    CHECK(in.pos == in.bytes.size());
    CHECK(qs.m_currentQuest[0] == 3);
    CHECK(qs.m_currentPrimaryQuest[0] == 4);
    CHECK(qs.m_act[0] == 6);
}

// An empty pydata table builds empty lists and no quests.
void TestInitQuestsEmptyTable() {
    ResetLogs();
    Arrays::v2Quests::size = 0;
    Arrays::v2Quests::members = nullptr;
    QuestSavegame qs;
    qs.InitQuests();
    for (int d = 0; d < 3; ++d) {
        CHECK(qs.m_quests[d].empty());
    }
    CHECK(g_questCtorCount == 0);
    CHECK(g_reInitCount == 0);
}

// Two pydata rows build two quests per difficulty, each owned by the save's owner and bound to its row. A second call
// only resets the existing quests.
void TestInitQuestsBuildsLists() {
    ResetLogs();
    Arrays::v2Quests::size = 2;
    Arrays::v2Quests::members = g_rowBlock;
    static char nameAlpha[] = "Alpha";
    static char nameBeta[] = "Beta";
    static char* questNames[] = {nameAlpha, nameBeta};
    Arrays::v2Quests::m_memberNames.names = questNames;
    Arrays::v2Quests::m_memberNames.size = 2;

    QuestSavegame qs;
    Character* owner = reinterpret_cast<Character*>(static_cast<std::uintptr_t>(0x1234));
    qs.m_owner = owner;
    qs.InitQuests();

    CHECK(g_questCtorCount == 6);
    CHECK(g_setOwnerCount == 6);
    CHECK(g_reInitCount == 6);
    CHECK(g_assignRows.size() == 6);
    for (int d = 0; d < 3; ++d) {
        CHECK(qs.m_quests[d].size() == 2);
        for (int i = 0; i < 2 && qs.m_quests[d].size() == 2; ++i) {
            const Quest* quest = qs.m_quests[d][i];
            CHECK(quest != nullptr);
            if (quest == nullptr) continue;
            CHECK(quest->m_listIndex == d);
            CHECK(quest->m_pyDataIndex == i);
            CHECK(quest->m_owner == owner);
            CHECK(quest->m_name == questNames[i]);  // the pydata name is stored at Quest +0x14
            CHECK(g_assignRows[static_cast<std::size_t>(d * 2 + i)] ==
                  reinterpret_cast<Structs::v2Quest*>(g_rowBlock) + i);
        }
    }

    std::vector<Quest*> first[3];
    for (int d = 0; d < 3; ++d) first[d] = qs.m_quests[d];
    qs.InitQuests();
    CHECK(g_questCtorCount == 6);
    CHECK(g_setOwnerCount == 6);
    CHECK(g_reInitCount == 12);
    for (int d = 0; d < 3; ++d) {
        CHECK(qs.m_quests[d] == first[d]);
    }

    Arrays::v2Quests::size = 0;
    Arrays::v2Quests::members = nullptr;
    Arrays::v2Quests::m_memberNames.names = nullptr;
    Arrays::v2Quests::m_memberNames.size = 0;
}

}  // namespace

int main() {
    gAssertLevel = 0;
    TestSaveEmptyLists();
    TestLoadRoundTrip();
    TestCountMismatch();
    TestUnpackOneQuest();
    TestPackOneQuest();
    TestUnpackIndexOutOfRange();
    TestInitQuestsEmptyTable();
    TestInitQuestsBuildsLists();
    if (g_failures == 0) {
        std::printf("QuestSavegame batch: all checks passed\n");
        return 0;
    }
    std::printf("QuestSavegame batch: %d check(s) failed\n", g_failures);
    return 1;
}
