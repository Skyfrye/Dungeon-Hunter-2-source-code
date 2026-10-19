// Test for batch g1-game-character-Character-ee9946-15.
//
// The batch source calls PlayerSavegame methods defined by other batches. They are stubbed below so the executable
// links. The stubs record their arguments and return fixed answers. Character and PlayerSavegame are not constructed:
// their storage is zero-filled and only the members the batch reads or writes (m_savegame, m_currentFaery,
// m_faeryCount) are used, as in the sibling tests. PlayerSavegame::m_difficultyLevel is the static global.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <ctime>

#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"

// ---- Global the batch source reads -------------------------------------------------------------------------

std::int32_t PlayerSavegame::m_difficultyLevel = 2;

// ---- Recorders and fixed answers ----------------------------------------------------------------------------

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// What the last call of one PlayerSavegame method received.
struct Record {
    int calls = 0;
    int a = 0;                 // first argument after the savegame (id, state, location)
    int b = 0;                 // second argument (level, location, or the bool flag as 0/1)
    int c = 0;                 // difficulty argument as the savegame received it
    const char* name = nullptr;
    const void* p = nullptr;   // first pointer argument (quest handlers)
    const void* q = nullptr;   // second pointer argument (quest handlers)
};

Record g_unlockAll;
Record g_setFastTravelName;
Record g_getFastTravelName;
Record g_getFastTravelId;
Record g_setFaerieState;
Record g_isFaerieUnlocked;
Record g_setFaerieLevel;
Record g_getFaerieLevel;
Record g_setSaveDate;
Record g_isLevelLocked;
Record g_setLevelState;
Record g_getLevelState;
Record g_isMapLocSeen;
Record g_isMapLocLocked;
Record g_setMapLocState;
Record g_saveQuests;
Record g_loadQuests;

bool g_answerFastTravel = true;
bool g_answerFaeryUnlocked = true;
int g_answerFaeryLevel = 9;
bool g_answerLevelLocked = true;
int g_answerLevelState = 1;
bool g_answerMapSeen = true;
bool g_answerMapLocked = false;

void ResetRecorders() {
    g_unlockAll = Record{};
    g_setFastTravelName = Record{};
    g_getFastTravelName = Record{};
    g_getFastTravelId = Record{};
    g_setFaerieState = Record{};
    g_isFaerieUnlocked = Record{};
    g_setFaerieLevel = Record{};
    g_getFaerieLevel = Record{};
    g_setSaveDate = Record{};
    g_isLevelLocked = Record{};
    g_setLevelState = Record{};
    g_getLevelState = Record{};
    g_isMapLocSeen = Record{};
    g_isMapLocLocked = Record{};
    g_setMapLocState = Record{};
    g_saveQuests = Record{};
    g_loadQuests = Record{};
}

// Zero-filled storage for the two objects. Only non-virtual members run on them, and the stubs never read them.
alignas(Character) unsigned char g_characterStorage[sizeof(Character)];
alignas(PlayerSavegame) unsigned char g_saveStorage[sizeof(PlayerSavegame)];

Character* TheCharacter() {
    return reinterpret_cast<Character*>(g_characterStorage);
}

PlayerSavegame* TheSavegame() {
    return reinterpret_cast<PlayerSavegame*>(g_saveStorage);
}

void ResetObjects() {
    std::memset(g_characterStorage, 0, sizeof g_characterStorage);
    std::memset(g_saveStorage, 0, sizeof g_saveStorage);
    TheCharacter()->m_savegame = TheSavegame();
    ResetRecorders();
}

}  // namespace

// ---- Stubs for PlayerSavegame methods defined by other batches (only the linker needs them) -----------------

void PlayerSavegame::SG_UnlockAllFastTravels() {
    ++g_unlockAll.calls;
}

void PlayerSavegame::SG_SetFastTravelIdUnlocked(const char* name, bool unlocked, int difficulty) {
    ++g_setFastTravelName.calls;
    g_setFastTravelName.name = name;
    g_setFastTravelName.a = unlocked ? 1 : 0;
    g_setFastTravelName.c = difficulty;
}

bool PlayerSavegame::SG_GetFastTravelIdUnlocked(const char* name, int difficulty) {
    ++g_getFastTravelName.calls;
    g_getFastTravelName.name = name;
    g_getFastTravelName.c = difficulty;
    return g_answerFastTravel;
}

bool PlayerSavegame::SG_GetFastTravelIdUnlocked(int id, int difficulty) {
    ++g_getFastTravelId.calls;
    g_getFastTravelId.a = id;
    g_getFastTravelId.c = difficulty;
    return g_answerFastTravel;
}

unsigned int PlayerSavegame::SG_SetFaerieState(std::uint32_t id, int state, int difficulty) {
    ++g_setFaerieState.calls;
    g_setFaerieState.a = static_cast<int>(id);
    g_setFaerieState.b = state;
    g_setFaerieState.c = difficulty;
    return 0;
}

unsigned int PlayerSavegame::SG_SetFaerieLevel(std::uint32_t id, int level, int difficulty) {
    ++g_setFaerieLevel.calls;
    g_setFaerieLevel.a = static_cast<int>(id);
    g_setFaerieLevel.b = level;
    g_setFaerieLevel.c = difficulty;
    return 0;
}

int PlayerSavegame::SG_GetFaerieLevel(std::uint32_t id, int difficulty) const {
    ++g_getFaerieLevel.calls;
    g_getFaerieLevel.a = static_cast<int>(id);
    g_getFaerieLevel.c = difficulty;
    return g_answerFaeryLevel;
}

bool PlayerSavegame::SG_IsFaerieUnlocked(std::uint32_t id, int difficulty) const {
    ++g_isFaerieUnlocked.calls;
    g_isFaerieUnlocked.a = static_cast<int>(id);
    g_isFaerieUnlocked.c = difficulty;
    return g_answerFaeryUnlocked;
}

std::time_t PlayerSavegame::SG_SetSaveDate() {
    ++g_setSaveDate.calls;
    return 0;
}

void PlayerSavegame::SG_SetLevelState(int level, int state, int difficulty) {
    ++g_setLevelState.calls;
    g_setLevelState.a = level;
    g_setLevelState.b = state;
    g_setLevelState.c = difficulty;
}

int PlayerSavegame::SG_GetLevelState(int level, int difficulty) const {
    ++g_getLevelState.calls;
    g_getLevelState.b = level;
    g_getLevelState.c = difficulty;
    return g_answerLevelState;
}

bool PlayerSavegame::SG_IsLevelLocked(int level, int difficulty) const {
    ++g_isLevelLocked.calls;
    g_isLevelLocked.b = level;
    g_isLevelLocked.c = difficulty;
    return g_answerLevelLocked;
}

bool PlayerSavegame::SG_IsMapLocSeen(int location, int difficulty) const {
    ++g_isMapLocSeen.calls;
    g_isMapLocSeen.b = location;
    g_isMapLocSeen.c = difficulty;
    return g_answerMapSeen;
}

bool PlayerSavegame::SG_IsMapLocLocked(int location, int difficulty) const {
    ++g_isMapLocLocked.calls;
    g_isMapLocLocked.b = location;
    g_isMapLocLocked.c = difficulty;
    return g_answerMapLocked;
}

void PlayerSavegame::SG_SetMapLocState(int location, int state, int difficulty) {
    ++g_setMapLocState.calls;
    g_setMapLocState.a = location;
    g_setMapLocState.b = state;
    g_setMapLocState.c = difficulty;
}

void PlayerSavegame::__SaveQuests(IStreamBase* stream, void* user) {
    ++g_saveQuests.calls;
    g_saveQuests.p = stream;
    g_saveQuests.q = user;
}

void PlayerSavegame::__LoadQuests(IStreamBase* stream, void* user) {
    ++g_loadQuests.calls;
    g_loadQuests.p = stream;
    g_loadQuests.q = user;
}

// ---- Tests ------------------------------------------------------------------------------------------------

namespace {

// Forwarding of the difficulty argument and the other arguments to the savegame.
void TestForwarding() {
    ResetObjects();
    Character* ch = TheCharacter();

    // -1 becomes the static difficulty (2 here); an explicit difficulty is passed as it is.
    ch->SG_SetFaerieState(3, 1, -1);
    Check(g_setFaerieState.calls == 1, "SetFaerieState forwards once");
    Check(g_setFaerieState.a == 3 && g_setFaerieState.b == 1, "SetFaerieState forwards id and state");
    Check(g_setFaerieState.c == 2, "SetFaerieState -1 becomes m_difficultyLevel");
    ch->SG_SetFaerieState(3, 1, 0);
    Check(g_setFaerieState.c == 0, "SetFaerieState explicit difficulty is kept");

    ch->SG_SetFaerieLevel(4, 6, -1);
    Check(g_setFaerieLevel.a == 4 && g_setFaerieLevel.b == 6 && g_setFaerieLevel.c == 2,
          "SetFaerieLevel forwards id, level and resolved difficulty");

    Check(ch->SG_GetFaerieLevel(3, -1) == g_answerFaeryLevel, "GetFaerieLevel returns the savegame answer");
    Check(g_getFaerieLevel.c == 2, "GetFaerieLevel -1 becomes m_difficultyLevel");

    Check(ch->SG_IsFaerieUnlocked(3, -1) == g_answerFaeryUnlocked, "IsFaerieUnlocked returns the savegame answer");
    Check(g_isFaerieUnlocked.c == 2, "IsFaerieUnlocked -1 becomes m_difficultyLevel");

    ch->SG_SetLevelState(4, 7, -1);
    Check(g_setLevelState.a == 4 && g_setLevelState.b == 7 && g_setLevelState.c == 2,
          "SetLevelState forwards level, state and resolved difficulty in order");

    Check(ch->SG_GetLevelState(7, 1) == g_answerLevelState, "GetLevelState returns the savegame answer");
    Check(g_getLevelState.b == 7 && g_getLevelState.c == 1, "GetLevelState forwards level and explicit difficulty");

    Check(ch->SG_IsLevelLocked(7, -1) == g_answerLevelLocked, "IsLevelLocked returns the savegame answer");
    Check(g_isLevelLocked.c == 2, "IsLevelLocked -1 becomes m_difficultyLevel");

    Check(ch->SG_IsMapLocSeen(9, 0) == g_answerMapSeen, "IsMapLocSeen returns the savegame answer");
    Check(g_isMapLocSeen.b == 9 && g_isMapLocSeen.c == 0, "IsMapLocSeen forwards location and difficulty");
    Check(ch->SG_IsMapLocLocked(9, -1) == g_answerMapLocked, "IsMapLocLocked returns the savegame answer");
    Check(g_isMapLocLocked.c == 2, "IsMapLocLocked -1 becomes m_difficultyLevel");

    ch->SG_SetMapLocState(4, 9, -1);
    Check(g_setMapLocState.a == 4 && g_setMapLocState.b == 9 && g_setMapLocState.c == 2,
          "SetMapLocState forwards location, state and resolved difficulty in order");

    ch->SG_SetFastTravelIdUnlocked("town", true, -1);
    Check(g_setFastTravelName.name != nullptr && std::strcmp(g_setFastTravelName.name, "town") == 0,
          "SetFastTravelIdUnlocked forwards the name");
    Check(g_setFastTravelName.a == 1 && g_setFastTravelName.c == 2,
          "SetFastTravelIdUnlocked forwards the flag and resolved difficulty");

    Check(ch->SG_GetFastTravelIdUnlocked("town", -1) == g_answerFastTravel,
          "GetFastTravelIdUnlocked (name) returns the savegame answer");
    Check(g_getFastTravelName.c == 2, "GetFastTravelIdUnlocked (name) -1 becomes m_difficultyLevel");
    Check(ch->SG_GetFastTravelIdUnlocked(12, 0) == g_answerFastTravel,
          "GetFastTravelIdUnlocked (id) returns the savegame answer");
    Check(g_getFastTravelId.a == 12 && g_getFastTravelId.c == 0,
          "GetFastTravelIdUnlocked (id) forwards the id and explicit difficulty");

    ch->SG_UnlockAllFastTravels();
    Check(g_unlockAll.calls == 1, "UnlockAllFastTravels forwards once");
    ch->SG_SetSaveDate();
    Check(g_setSaveDate.calls == 1, "SetSaveDate forwards once");

    // Quest handlers: the pointers are forwarded unchanged.
    int streamMarker = 0;
    int userMarker = 0;
    int streamMarkerB = 0;
    Character::__SaveQuests(reinterpret_cast<IFileStream*>(&streamMarker), &userMarker);
    Check(g_saveQuests.calls == 1, "__SaveQuests forwards once");
    Check(g_saveQuests.p == static_cast<const void*>(&streamMarker), "__SaveQuests forwards the stream pointer");
    Check(g_saveQuests.q == static_cast<const void*>(&userMarker), "__SaveQuests forwards the user pointer");

    Character::__LoadQuests(reinterpret_cast<IStreamBase*>(&streamMarkerB), &userMarker);
    Check(g_loadQuests.calls == 1, "__LoadQuests forwards once");
    Check(g_loadQuests.p == static_cast<const void*>(&streamMarkerB), "__LoadQuests forwards the stream pointer");
    Check(g_loadQuests.q == static_cast<const void*>(&userMarker), "__LoadQuests forwards the user pointer");

    // Changing the static difficulty changes what -1 resolves to.
    PlayerSavegame::m_difficultyLevel = 0;
    ch->SG_IsLevelLocked(7, -1);
    Check(g_isLevelLocked.c == 0, "IsLevelLocked -1 follows a changed m_difficultyLevel");
    PlayerSavegame::m_difficultyLevel = 2;
}

// Reads and writes of the per-difficulty arrays that the batch touches directly (PlayerSavegame +0xa0 and +0xac).
void TestDirectArrays() {
    ResetObjects();
    Character* ch = TheCharacter();
    PlayerSavegame* sg = TheSavegame();

    ch->SG_SetCurrentFaerie(7, -1);
    Check(sg->m_currentFaery[2] == 7, "SetCurrentFaerie -1 writes m_currentFaery[m_difficultyLevel]");
    Check(ch->SG_GetCurrentFaerieId(-1) == 7, "GetCurrentFaerieId -1 reads m_currentFaery[m_difficultyLevel]");

    ch->SG_SetCurrentFaerie(9, 0);
    Check(sg->m_currentFaery[0] == 9, "SetCurrentFaerie explicit difficulty writes that index");
    Check(ch->SG_GetCurrentFaerieId(0) == 9, "GetCurrentFaerieId explicit difficulty reads that index");
    Check(ch->SG_GetCurrentFaerieId(1) == 0, "GetCurrentFaerieId leaves the other difficulties alone");

    sg->m_faeryCount[2] = 4;
    sg->m_faeryCount[1] = 3;
    Check(ch->SG_GetFaerieCount(-1) == 4, "GetFaerieCount -1 reads m_faeryCount[m_difficultyLevel]");
    Check(ch->SG_GetFaerieCount(1) == 3, "GetFaerieCount explicit difficulty reads that index");
}

// A null savegame: the getters return their fallbacks and the setters do nothing.
void TestNullSavegame() {
    ResetObjects();
    Character* ch = TheCharacter();
    ch->m_savegame = nullptr;

    Check(ch->SG_GetCurrentFaerieId(-1) == 0, "GetCurrentFaerieId returns 0 without a savegame");
    Check(ch->SG_GetFaerieCount(-1) == -1, "GetFaerieCount returns -1 without a savegame");
    Check(ch->SG_GetFaerieLevel(3, -1) == -1, "GetFaerieLevel returns -1 without a savegame");
    Check(ch->SG_GetLevelState(7, -1) == -1, "GetLevelState returns -1 without a savegame");
    Check(!ch->SG_IsFaerieUnlocked(3, -1), "IsFaerieUnlocked is false without a savegame");
    Check(!ch->SG_IsLevelLocked(7, -1), "IsLevelLocked is false without a savegame");
    Check(!ch->SG_IsMapLocSeen(9, 0), "IsMapLocSeen is false without a savegame");
    Check(!ch->SG_IsMapLocLocked(9, 0), "IsMapLocLocked is false without a savegame");
    Check(!ch->SG_GetFastTravelIdUnlocked("town", -1), "GetFastTravelIdUnlocked (name) is false without a savegame");
    Check(!ch->SG_GetFastTravelIdUnlocked(12, 0), "GetFastTravelIdUnlocked (id) is false without a savegame");

    ch->SG_SetCurrentFaerie(5, -1);
    ch->SG_SetFaerieState(3, 1, -1);
    ch->SG_SetFaerieLevel(4, 6, -1);
    ch->SG_SetLevelState(4, 7, -1);
    ch->SG_SetMapLocState(4, 9, -1);
    ch->SG_SetFastTravelIdUnlocked("town", true, -1);
    ch->SG_UnlockAllFastTravels();
    ch->SG_SetSaveDate();
    Check(g_setFaerieState.calls == 0 && g_setFaerieLevel.calls == 0 && g_setLevelState.calls == 0 &&
              g_setMapLocState.calls == 0 && g_setFastTravelName.calls == 0 && g_unlockAll.calls == 0 &&
              g_setSaveDate.calls == 0,
          "setters call nothing without a savegame");
}

}  // namespace

int main() {
    TestForwarding();
    TestDirectArrays();
    TestNullSavegame();

    if (g_failures == 0) {
        std::printf("g1-game-character-Character-ee9946-15 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-character-Character-ee9946-15 test: %d check(s) failed\n", g_failures);
    return 1;
}
