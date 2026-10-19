#include "net-session-online/game_center.hpp"
#include "net-session-online/tb/gc_player_group.hpp"

#include <cstdint>

#include "dh2/Application.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Singleton.hpp"
#include "vendor-gameswf/gameswf_root.hpp"

// 0x499694 _ZN10GameCenter16GetGCPlayerGroupEv
//
// Reconstructed from the ARM listing (the pseudocode loses the second argument of the stream writes).
// The order of the original, with the globals read as members of the Application singleton (see
// dh2/global/Globals.hpp: dword_99F76C is +0x40, dword_99F778 +0x4c, dword_99F780 +0x54):
//   1. id = PlayerManager::GetLocalPlayer(0, false)->+0x664. If it is -1, id = SavegameManager +0x08.
//   2. PlayerSavegame savegame(id, 1, false).
//   3. MenuManager::GetRoot() is called twice. The second result's RenderFX::GetRoot() gives the
//      gameswf root, whose get_root_movie() is the character. The first result runs
//      InvokeASCallback(character, "GetCurrentDifficulty", nullptr, 0), which is the Flash side.
//   4. second = SavegameManager +0x0c. It is read after the callback, as in the listing.
//   5. savegame.SG_Load(16); savegame.SG_GetCurrentPrimaryQuest(m_difficultyLevel).
//   6. first = SG_GetQuestSG()->m_act[m_difficultyLevel] (the word at +0x44 + 4 * difficulty).
//   7. The stream writes first, then second. The result is strtol of that text on a 32-bit long.
// The stream and strtol steps live in gc_player_group::ComposeGCPlayerGroup.
std::int32_t GameCenter::GetGCPlayerGroup() {
    Application& app = Singleton<Application>::s_inst;

    // PlayerInfo +0x664 is the local player's id. The name is not recovered (unk_664).
    std::int32_t slot = app.m_playerManager->GetLocalPlayer(0, false)->unk_664;
    if (slot == -1) {
        slot = app.m_savegameManager->m_lastSlot;  // SavegameManager +0x08
    }
    PlayerSavegame savegame(static_cast<std::uint32_t>(slot), 1, false);

    MenuFX* menuRoot = app.m_menuManager->GetRoot();
    MenuFX* gameRoot = app.m_menuManager->GetRoot();
    gameswf::character* rootMovie = gameRoot->GetRoot()->get_root_movie();
    menuRoot->InvokeASCallback(rootMovie, "GetCurrentDifficulty", nullptr, 0);

    // SavegameManager +0x0c. The name is not recovered (unk_0c); the listing reads it after the callback.
    const std::int32_t second = app.m_savegameManager->unk_0c;

    savegame.SG_Load(16);
    savegame.SG_GetCurrentPrimaryQuest(PlayerSavegame::m_difficultyLevel);
    const std::int32_t difficulty = PlayerSavegame::m_difficultyLevel;
    const std::int32_t first = savegame.SG_GetQuestSG()->m_act[difficulty];

    return gc_player_group::ComposeGCPlayerGroup(first, second);
}
