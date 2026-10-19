// Companion of batch r2a-game-items-save-ItemInventory-cf6f6b-0 and of the in-place ItemInventory functions SetGold (0x3fdfd8),
// _AddItemInstance (0x3ff5d4) and TransferInventoryTo (0x3ffa68). Holds the one PlayerManager read they make: the local-player
// test PlayerManager::IsLocalPlayer through the global dword_99F76C (ELF 0x99f76c, the Application singleton's m_playerManager
// at +0x40). It lives in its own translation unit because dh2/PlayerManager.hpp includes net-transport's IStreamBase, which
// clashes with the pydata stream reader that dh2/Character.hpp brings into the batch files.

#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"

class Character;

namespace ItemInventoryTrophyPlayers {

// Nonzero when character is the local player (PlayerManager::IsLocalPlayer on dword_99F76C).
bool IsLocalPlayer(const Character* character) {
    return dword_99F76C->IsLocalPlayer(character) != 0;
}

}  // namespace ItemInventoryTrophyPlayers
