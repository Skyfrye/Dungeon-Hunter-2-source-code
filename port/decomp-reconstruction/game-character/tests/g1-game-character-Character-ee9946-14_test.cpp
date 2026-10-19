// Test for batch g1-game-character-Character-ee9946-14.
//
// Character is not constructed: its storage is zero-filled, and only the SG_* accessors run. They read m_savegame and
// the PlayerSavegame members, and nothing else. PlayerSavegame is not constructed either. Its storage is zero-filled,
// its members are set directly, and only the name (a std::string) is placed with a placement new. The static
// difficulty, PlayerSavegame::m_difficultyLevel (0x9a6060 in the original), has no definition in any source yet, so
// this test defines it. _MoveTo and _WarpTo are partial and are not tested.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <new>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"

// Static difficulty: declared in PlayerSavegame.hpp, defined here for the test only.
std::int32_t PlayerSavegame::m_difficultyLevel = 0;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // Zero-filled storage. The objects are never constructed or destroyed, and no virtual function is called.
    alignas(16) unsigned char charStorage[sizeof(Character)] = {};
    alignas(16) unsigned char sgStorage[sizeof(PlayerSavegame)] = {};
    Character* ch = reinterpret_cast<Character*>(charStorage);
    PlayerSavegame* sg = reinterpret_cast<PlayerSavegame*>(sgStorage);

    // ---- no savegame: getters return their defaults and setters change nothing ----
    PlayerSavegame::m_difficultyLevel = 1;
    Check(ch->m_savegame == nullptr, "no savegame attached");
    Check(ch->SG_GetSlot() == -1, "no savegame: SG_GetSlot is -1");
    Check(ch->SG_GetPlayerClass() == -1, "no savegame: SG_GetPlayerClass is -1");
    Check(ch->SG_GetPlayerLevel() == -1, "no savegame: SG_GetPlayerLevel is -1");
    Check(ch->SG_GetGameDifficulty() == -1, "no savegame: SG_GetGameDifficulty is -1");
    Check(ch->SG_GetGameDifficultyUnlocked() == -1, "no savegame: SG_GetGameDifficultyUnlocked is -1");
    Check(!ch->SG_IsBlocked(), "no savegame: SG_IsBlocked is false");
    Check(ch->SG_GetPlayerName() == nullptr, "no savegame: SG_GetPlayerName is null");

    ch->SG_SetSlot(3);
    ch->SG_SetPlayerClass(3);
    ch->SG_SetPlayerLevel(3);
    ch->SG_SetGameDifficultyUnlocked(3);
    ch->SG_SetGameDifficulty(0);
    ch->SG_Block(true);
    ch->SG_SetUseSpawnPoint(true);
    ch->SG_SetLevelId(5, 0);
    ch->SG_SetLevelEntryPoint(5, 0);
    ch->SG_SetPlayer(ch);
    ch->SG_RedoQuestSync();
    Check(PlayerSavegame::m_difficultyLevel == 1, "no savegame: SG_SetGameDifficulty leaves the static difficulty");
    Check(ch->SG_GetSlot() == -1 && ch->SG_GetPlayerClass() == -1 && ch->SG_GetPlayerLevel() == -1,
          "no savegame: setters leave the getters at -1");
    Check(ch->SG_GetGameDifficultyUnlocked() == -1 && !ch->SG_IsBlocked(),
          "no savegame: unlocked difficulty and block stay at their defaults");

    // ---- savegame attached ----
    new (&sg->m_name) std::string("Hero");
    ch->m_savegame = sg;

    ch->SG_SetSlot(7);
    Check(sg->m_slot == 7 && ch->SG_GetSlot() == 7, "SG_SetSlot writes m_slot and SG_GetSlot reads it");

    ch->SG_SetPlayerClass(3);
    ch->SG_SetPlayerLevel(12);
    Check(sg->m_playerClass == 3 && ch->SG_GetPlayerClass() == 3, "SG_SetPlayerClass and SG_GetPlayerClass");
    Check(sg->m_playerLevel == 12 && ch->SG_GetPlayerLevel() == 12, "SG_SetPlayerLevel and SG_GetPlayerLevel");
    Check(ch->SG_GetPlayerName() != nullptr && std::strcmp(ch->SG_GetPlayerName(), "Hero") == 0,
          "SG_GetPlayerName returns the name text");

    ch->SG_Block(true);
    Check(sg->m_saveBlocked && ch->SG_IsBlocked(), "SG_Block(true) sets the block");
    ch->SG_Block(false);
    Check(!sg->m_saveBlocked && !ch->SG_IsBlocked(), "SG_Block(false) clears the block");

    sg->m_questSynced = true;
    ch->SG_RedoQuestSync();
    Check(!sg->m_questSynced, "SG_RedoQuestSync clears m_questSynced");

    ch->SG_SetPlayer(ch);
    Check(sg->m_player == ch, "SG_SetPlayer writes m_player");
    Check(sg->m_questLog.m_owner == ch, "SG_SetPlayer writes the owner of m_questLog");
    Check(sg->m_volatileQuestLog.m_owner == ch, "SG_SetPlayer writes the owner of m_volatileQuestLog");
    ch->SG_SetPlayer(nullptr);
    Check(sg->m_player == nullptr && sg->m_questLog.m_owner == nullptr && sg->m_volatileQuestLog.m_owner == nullptr,
          "SG_SetPlayer(nullptr) clears all three owners");

    // Unlocked difficulty only rises. The static difficulty may only be set up to the unlocked value.
    Check(ch->SG_GetGameDifficultyUnlocked() == 0, "unlocked difficulty starts at 0");
    ch->SG_SetGameDifficultyUnlocked(2);
    Check(ch->SG_GetGameDifficultyUnlocked() == 2, "SG_SetGameDifficultyUnlocked raises the unlocked difficulty");
    ch->SG_SetGameDifficultyUnlocked(1);
    Check(ch->SG_GetGameDifficultyUnlocked() == 2, "SG_SetGameDifficultyUnlocked never lowers it");

    PlayerSavegame::m_difficultyLevel = 0;
    ch->SG_SetGameDifficulty(3);
    Check(PlayerSavegame::m_difficultyLevel == 0, "SG_SetGameDifficulty refuses a difficulty above unlocked");
    ch->SG_SetGameDifficulty(2);
    Check(PlayerSavegame::m_difficultyLevel == 2 && ch->SG_GetGameDifficulty() == 2,
          "SG_SetGameDifficulty sets the static difficulty up to unlocked");

    // Spawn-point flag is indexed by the static difficulty (currently 2).
    ch->SG_SetUseSpawnPoint(true);
    Check(sg->m_useSpawnPoint[2] && !sg->m_useSpawnPoint[0] && !sg->m_useSpawnPoint[1],
          "SG_SetUseSpawnPoint writes the flag for the static difficulty only");
    PlayerSavegame::m_difficultyLevel = 0;
    ch->SG_SetUseSpawnPoint(true);
    Check(sg->m_useSpawnPoint[0], "SG_SetUseSpawnPoint follows a change of the static difficulty");
    PlayerSavegame::m_difficultyLevel = 2;

    // Level id: an explicit difficulty, then -1 for the static difficulty (2).
    ch->SG_SetLevelId(77, 1);
    Check(sg->unk_50[1] == 77 && sg->unk_50[0] == 0 && sg->unk_50[2] == 0,
          "SG_SetLevelId with an explicit difficulty writes only that entry");
    ch->SG_SetLevelId(88, -1);
    Check(sg->unk_50[2] == 88, "SG_SetLevelId with -1 uses the static difficulty");

    // Entry point: explicit difficulty 0, then -1 for the static difficulty (2).
    ch->SG_SetLevelEntryPoint(9, 0);
    Check(sg->m_levelEntryPoint[0] == 9 && sg->m_levelEntryPoint[1] == 0,
          "SG_SetLevelEntryPoint with an explicit difficulty");
    ch->SG_SetLevelEntryPoint(15, -1);
    Check(sg->m_levelEntryPoint[2] == 15, "SG_SetLevelEntryPoint with -1 uses the static difficulty");

    ch->m_savegame = nullptr;

    if (g_failures == 0) std::printf("g1-game-character-Character-ee9946-14 test: OK\n");
    return g_failures == 0 ? 0 : 1;
}
