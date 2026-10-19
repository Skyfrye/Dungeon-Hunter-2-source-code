// Companion of batch g1-game-items-save-PlayerSavegame-56ccee-1. Holds the PlayerManager read that SG_LoadCheckpoint and
// SG_SaveCheckpoint make through the global dword_99F76C. It lives in its own translation unit because dh2/PlayerManager.hpp
// includes net-transport's deps (CustomFree, IStreamBase), which clash with the pydata name tables that the batch file uses
// for the fast-travel and world-map functions. The batch file declares the helper in namespace PlayerSavegamePlayers and
// calls it; this file defines it. Same arrangement as the ItemObject and ItemInventory batches.

#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // extern PlayerManager* dword_99F76C

namespace PlayerSavegamePlayers {

// 0x465450 and 0x466184 read (*(GetOnline() + 5) && (!dword_99F76C->IsLocalPlayerHosting() || dword_99F76C[+0x719])). The
// online flag is passed in, so the PlayerManager is read only when the game is online, as in the original. PlayerManager
// +0x719 is m_hostChanged (set by OnHostChangedNotification).
bool IsMultiplayerCheckpointName(bool online) {
    return online && (!dword_99F76C->IsLocalPlayerHosting() || dword_99F76C->m_hostChanged);
}

}  // namespace PlayerSavegamePlayers
