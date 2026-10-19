// Test for batch g1-game-character-Character-ee9946-16.
//
// The batch source calls PlayerSavegame methods and reads the static PlayerSavegame::m_difficultyLevel, which other
// batches define. They are stubbed below so the executable links. Character, PlayerSavegame and QuestSavegame are not
// constructed: their storage is zero-filled, as in the sibling tests. The std::string the batch writes
// (PlayerSavegame::m_name) is constructed in place first. SG_NeedToResendQuestSyncMsg is partial (it does nothing yet),
// so the test only checks that it leaves the savegame alone.
// PlayerManager is not included here: dh2/PlayerManager.hpp conflicts with dh2/Character.hpp (IStreamBase), see the source.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"

// ---- Global the batch source reads -------------------------------------------------------------------------

std::int32_t PlayerSavegame::m_difficultyLevel = 2;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// What the last call of one PlayerSavegame method received, and how often it ran.
struct Record {
    int calls = 0;
    int a = 0;                 // first argument after the savegame
    int b = 0;                 // second argument
    int c = 0;                 // difficulty argument as the savegame received it
    const char* name = nullptr;
    const void* p = nullptr;   // stream pointer (trace)
};

Record g_mapLoc;
Record g_setSkillInSlot;
Record g_getSkillInSlot;
Record g_getSkillSlot;
Record g_hasSkillSlots;
Record g_setSkillLevel;
Record g_getSkillLevel;
Record g_getSkillId;
Record g_tell;
Record g_reload;
Record g_trace;
Record g_getQuestSG;
Record g_getNext;
Record g_getByName;
Record g_getByPred;
Record g_getById;

// Fixed answers and the arguments that are not plain integers.
int g_answerMapLoc = 4;
int g_answerSkillInSlot = 12;
int g_answerSkillSlot = 3;
bool g_answerHasSkillSlots = true;
int g_answerSkillLevel = 5;
int g_answerSkillId = 77;
bool (*g_lastPred)(const Quest*) = nullptr;
void (*g_lastCallback)(int, unsigned int, void*) = nullptr;
void* g_lastUser = nullptr;

int g_questToken = 0;
int g_streamToken = 0;

bool AcceptAll(const Quest*) {
    return true;
}

void TellCallback(int, unsigned int, void*) {
}

Quest* AnswerQuest() {
    return reinterpret_cast<Quest*>(&g_questToken);
}

void ResetRecorders() {
    g_mapLoc = Record{};
    g_setSkillInSlot = Record{};
    g_getSkillInSlot = Record{};
    g_getSkillSlot = Record{};
    g_hasSkillSlots = Record{};
    g_setSkillLevel = Record{};
    g_getSkillLevel = Record{};
    g_getSkillId = Record{};
    g_tell = Record{};
    g_reload = Record{};
    g_trace = Record{};
    g_getQuestSG = Record{};
    g_getNext = Record{};
    g_getByName = Record{};
    g_getByPred = Record{};
    g_getById = Record{};
    g_lastPred = nullptr;
    g_lastCallback = nullptr;
    g_lastUser = nullptr;
}

// Zero-filled storage for the objects. Only the members the batch reads or writes are used, and the stubs never read them.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];
alignas(PlayerSavegame) unsigned char g_saveStorage[sizeof(PlayerSavegame)];
alignas(QuestSavegame) unsigned char g_questStorage[sizeof(QuestSavegame)];

Character* TheCharacter() {
    return reinterpret_cast<Character*>(g_characterStorage);
}

PlayerSavegame* TheSavegame() {
    return reinterpret_cast<PlayerSavegame*>(g_saveStorage);
}

QuestSavegame* TheQuests() {
    return reinterpret_cast<QuestSavegame*>(g_questStorage);
}

void ResetObjects() {
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    std::memset(g_saveStorage, 0, sizeof g_saveStorage);
    std::memset(g_questStorage, 0, sizeof g_questStorage);
    new (&TheSavegame()->m_name) std::string();
    TheCharacter()->m_savegame = TheSavegame();
    ResetRecorders();
}

void DropSavegame() {
    TheCharacter()->m_savegame = nullptr;
    ResetRecorders();
}

// ---- Tests ---------------------------------------------------------------------------------------------------

// Without a savegame every getter returns its fallback, and no setter or forwarder reaches a savegame.
void TestWithoutSavegame() {
    ResetObjects();
    DropSavegame();
    Character* ch = TheCharacter();
    __sFILE* stream = reinterpret_cast<__sFILE*>(&g_streamToken);

    Check(ch->SG_GetMapLocState(3, -1) == -1, "GetMapLocState without savegame returns -1");
    Check(ch->SG_GetSkillInSlot(1) == -1, "GetSkillInSlot without savegame returns -1");
    Check(ch->SG_GetSkillSlot(9) == -1, "GetSkillSlot without savegame returns -1");
    Check(ch->SG_HasSkillSlots() == -1, "HasSkillSlots without savegame returns -1");
    Check(ch->SG_GetSkillLevel(4) == -1, "GetSkillLevel without savegame returns -1");
    Check(ch->SG_GetSkillId(4) == -1, "GetSkillId without savegame returns -1");
    Check(ch->SG_GetNextQuest(AcceptAll, 0, -1) == nullptr, "GetNextQuest without savegame returns null");
    Check(ch->SG_GetQuestByName("boss", -1) == nullptr, "GetQuestByName without savegame returns null");
    Check(ch->SG_GetQuestByID(AcceptAll, 0, -1) == nullptr, "GetQuestByID (predicate) without savegame returns null");
    Check(ch->SG_GetQuestByID(3, -1) == nullptr, "GetQuestByID (id) without savegame returns null");

    ch->SG_SetSkillInSlot(1, 2);
    ch->SG_SetSkillLevel(3, 4);
    ch->SG_ReloadSkills();
    ch->SG_TellSlots(TellCallback, nullptr);
    ch->SG_DBG_TraceDetailedQuestInformation(stream, 3, -1);
    ch->SG_SetCurrentAct(5, 1);
    ch->SG_SetCurrentPrimaryQuest(6, 1);
    ch->SG_SetCurrentQuest(7, 1);
    ch->SG_SetPlayerName("Aleta");
    Check(g_setSkillInSlot.calls == 0 && g_setSkillLevel.calls == 0 && g_reload.calls == 0 && g_tell.calls == 0,
          "skill setters, reload and TellSlots make no call without savegame");
    Check(g_trace.calls == 0 && g_getQuestSG.calls == 0, "trace and quest setters make no call without savegame");
}

// Each wrapper forwards its arguments, resolves -1 to the static difficulty, and returns the savegame's answer.
void TestForwarding() {
    ResetObjects();
    Character* ch = TheCharacter();

    Check(ch->SG_GetMapLocState(3, -1) == g_answerMapLoc, "GetMapLocState returns the savegame answer");
    Check(g_mapLoc.a == 3 && g_mapLoc.c == 2, "GetMapLocState forwards location and resolves -1 to m_difficultyLevel");
    ch->SG_GetMapLocState(3, 0);
    Check(g_mapLoc.c == 0, "GetMapLocState keeps an explicit difficulty");

    ch->SG_SetSkillInSlot(1, 6);
    Check(g_setSkillInSlot.calls == 1 && g_setSkillInSlot.a == 1 && g_setSkillInSlot.b == 6,
          "SetSkillInSlot forwards slot and row");
    Check(ch->SG_GetSkillInSlot(2) == g_answerSkillInSlot && g_getSkillInSlot.a == 2,
          "GetSkillInSlot forwards slot and returns the answer");
    Check(ch->SG_GetSkillSlot(9) == g_answerSkillSlot && g_getSkillSlot.a == 9,
          "GetSkillSlot forwards row and returns the answer");

    Check(ch->SG_HasSkillSlots() == 1, "HasSkillSlots returns 1 for a true answer");
    g_answerHasSkillSlots = false;
    Check(ch->SG_HasSkillSlots() == 0, "HasSkillSlots returns 0 for a false answer");
    g_answerHasSkillSlots = true;

    ch->SG_SetSkillLevel(4, 7);
    Check(g_setSkillLevel.a == 4 && g_setSkillLevel.b == 7, "SetSkillLevel forwards row and level");
    Check(ch->SG_GetSkillLevel(4) == g_answerSkillLevel && g_getSkillLevel.a == 4,
          "GetSkillLevel forwards row and returns the answer");
    Check(ch->SG_GetSkillId(4) == g_answerSkillId && g_getSkillId.a == 4,
          "GetSkillId forwards row and returns the answer");

    ch->SG_ReloadSkills();
    Check(g_reload.calls == 1, "ReloadSkills forwards once");

    int user = 0;
    ch->SG_TellSlots(TellCallback, &user);
    Check(g_lastCallback == TellCallback && g_lastUser == &user, "TellSlots forwards callback and user pointer");

    ch->SG_SetPlayerName("Aleta");
    Check(TheSavegame()->m_name == "Aleta", "SetPlayerName writes PlayerSavegame::m_name");

    __sFILE* stream = reinterpret_cast<__sFILE*>(&g_streamToken);
    ch->SG_DBG_TraceDetailedQuestInformation(stream, 3, -1);
    Check(g_trace.calls == 1 && g_trace.p == stream && g_trace.a == 3 && g_trace.c == 2,
          "DBG trace forwards stream and state, and resolves -1");

    Check(ch->SG_GetNextQuest(AcceptAll, 2, -1) == AnswerQuest(), "GetNextQuest returns the savegame answer");
    Check(g_getNext.a == 2 && g_getNext.c == 2 && g_lastPred == AcceptAll,
          "GetNextQuest forwards predicate and from, and resolves -1");

    Check(ch->SG_GetQuestByName("boss", 1) == AnswerQuest(), "GetQuestByName returns the savegame answer");
    Check(g_getByName.name != nullptr && std::strcmp(g_getByName.name, "boss") == 0 && g_getByName.c == 1,
          "GetQuestByName forwards name and difficulty");

    Check(ch->SG_GetQuestByID(AcceptAll, 3, 0) == AnswerQuest(), "GetQuestByID (predicate) returns the savegame answer");
    Check(g_getByPred.a == 3 && g_getByPred.c == 0 && g_lastPred == AcceptAll,
          "GetQuestByID (predicate) forwards nth and difficulty");

    Check(ch->SG_GetQuestByID(7, -1) == AnswerQuest(), "GetQuestByID (id) returns the savegame answer");
    Check(g_getById.a == 7 && g_getById.c == 2 && g_getById.b == 1,
          "GetQuestByID (id) forwards id, resolves -1, and passes compile = true");
}

// The three quest setters write one int per difficulty in the QuestSavegame the savegame returns.
void TestQuestMembers() {
    ResetObjects();
    Character* ch = TheCharacter();
    QuestSavegame* q = TheQuests();
    q->m_act[0] = 1;
    q->m_act[1] = 1;
    q->m_act[2] = 1;

    ch->SG_SetCurrentAct(3, 1);
    Check(q->m_act[1] == 3 && q->m_act[0] == 1 && q->m_act[2] == 1,
          "SetCurrentAct raises the act of the given difficulty only");
    ch->SG_SetCurrentAct(2, 1);
    Check(q->m_act[1] == 3, "SetCurrentAct keeps the higher act");
    ch->SG_SetCurrentAct(5, -1);
    Check(q->m_act[2] == 5 && q->m_act[1] == 3, "SetCurrentAct -1 selects m_difficultyLevel (2)");

    ch->SG_SetCurrentPrimaryQuest(7, 0);
    Check(q->m_currentPrimaryQuest[0] == 7 && q->m_currentPrimaryQuest[1] == 0,
          "SetCurrentPrimaryQuest writes the given difficulty only");
    ch->SG_SetCurrentPrimaryQuest(9, -1);
    Check(q->m_currentPrimaryQuest[2] == 9, "SetCurrentPrimaryQuest -1 selects m_difficultyLevel (2)");

    ch->SG_SetCurrentQuest(4, 1);
    Check(q->m_currentQuest[1] == 4 && q->m_currentQuest[0] == 0, "SetCurrentQuest writes the given difficulty only");
    ch->SG_SetCurrentQuest(6, -1);
    Check(q->m_currentQuest[2] == 6, "SetCurrentQuest -1 selects m_difficultyLevel (2)");
}

// SG_NeedToResendQuestSyncMsg is PARTIAL: its body does nothing yet. The test records that the savegame is untouched.
void TestNeedToResendIsPartial() {
    ResetObjects();
    Character* ch = TheCharacter();
    ch->m_initFinalDone = 1;
    TheSavegame()->m_questSynced = true;
    ch->SG_NeedToResendQuestSyncMsg();
    Check(TheSavegame()->m_questSynced, "NeedToResendQuestSyncMsg (PARTIAL) leaves m_questSynced unchanged");
}

}  // namespace

// ---- Stubs for PlayerSavegame and QuestSavegame members defined by other batches (only the linker needs them) ------

int PlayerSavegame::SG_GetMapLocState(int location, int difficulty) const {
    ++g_mapLoc.calls;
    g_mapLoc.a = location;
    g_mapLoc.c = difficulty;
    return g_answerMapLoc;
}

int PlayerSavegame::SG_ReloadSkills() {
    ++g_reload.calls;
    return 0;
}

void PlayerSavegame::SG_TellSlots(void (*callback)(int, unsigned int, void*), void* user) const {
    ++g_tell.calls;
    g_lastCallback = callback;
    g_lastUser = user;
}

void PlayerSavegame::SG_SetSkillInSlot(int slot, std::uint32_t row) {
    ++g_setSkillInSlot.calls;
    g_setSkillInSlot.a = slot;
    g_setSkillInSlot.b = static_cast<int>(row);
}

int PlayerSavegame::SG_GetSkillInSlot(int slot) const {
    ++g_getSkillInSlot.calls;
    g_getSkillInSlot.a = slot;
    return g_answerSkillInSlot;
}

int PlayerSavegame::SG_GetSkillSlot(std::uint32_t row) const {
    ++g_getSkillSlot.calls;
    g_getSkillSlot.a = static_cast<int>(row);
    return g_answerSkillSlot;
}

bool PlayerSavegame::SG_HasSkillSlots() const {
    ++g_hasSkillSlots.calls;
    return g_answerHasSkillSlots;
}

void PlayerSavegame::SG_SetSkillLevel(std::uint32_t row, int level) {
    ++g_setSkillLevel.calls;
    g_setSkillLevel.a = static_cast<int>(row);
    g_setSkillLevel.b = level;
}

int PlayerSavegame::SG_GetSkillLevel(std::uint32_t row) const {
    ++g_getSkillLevel.calls;
    g_getSkillLevel.a = static_cast<int>(row);
    return g_answerSkillLevel;
}

int PlayerSavegame::SG_GetSkillId(std::uint32_t row) const {
    ++g_getSkillId.calls;
    g_getSkillId.a = static_cast<int>(row);
    return g_answerSkillId;
}

QuestSavegame* PlayerSavegame::SG_GetQuestSG() {
    ++g_getQuestSG.calls;
    return TheQuests();
}

Quest* PlayerSavegame::SG_DBG_TraceDetailedQuestInformation(__sFILE* stream, int state, int difficulty) {
    ++g_trace.calls;
    g_trace.p = stream;
    g_trace.a = state;
    g_trace.c = difficulty;
    return nullptr;
}

Quest* PlayerSavegame::SG_GetNextQuest(bool (*pred)(const Quest*), int from, int difficulty) const {
    ++g_getNext.calls;
    g_lastPred = pred;
    g_getNext.a = from;
    g_getNext.c = difficulty;
    return AnswerQuest();
}

Quest* PlayerSavegame::SG_GetQuestByName(const char* name, int difficulty) {
    ++g_getByName.calls;
    g_getByName.name = name;
    g_getByName.c = difficulty;
    return AnswerQuest();
}

Quest* PlayerSavegame::SG_GetQuestByID(bool (*pred)(const Quest*), int nth, int difficulty) const {
    ++g_getByPred.calls;
    g_lastPred = pred;
    g_getByPred.a = nth;
    g_getByPred.c = difficulty;
    return AnswerQuest();
}

Quest* PlayerSavegame::SG_GetQuestByID(int id, int difficulty, bool compile) {
    ++g_getById.calls;
    g_getById.a = id;
    g_getById.b = compile ? 1 : 0;
    g_getById.c = difficulty;
    return AnswerQuest();
}

// ---- Entry point ------------------------------------------------------------------------------------------------

int main() {
    TestWithoutSavegame();
    TestForwarding();
    TestQuestMembers();
    TestNeedToResendIsPartial();
    if (g_failures != 0) {
        std::printf("g1-game-character-Character-ee9946-16: %d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-Character-ee9946-16: all checks passed\n");
    return 0;
}
