// Companion of batch g1-game-items-save-ItemInventory-cf6f6b-3. Holds the PlayerManager reads that _GetEffectiveProb
// (0x402854) makes through the global dword_99F76C. They live in their own translation unit because dh2/PlayerManager.hpp
// includes net-transport's IStreamBase, which clashes with the pydata stream reader in the batch file.
//
// The counts are read in the original's order: mage, rogue, warrior.

#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"

namespace ItemInventoryLootPlayers {

// 0x402854 ItemInventory::_GetEffectiveProb(Structs::LootEntry const&), the PlayerManager part.
void Counts(int& mage, int& rogue, int& warrior) {
    PlayerManager* players = dword_99F76C;
    mage = players->GetNumPlayerCharacterMage();
    rogue = players->GetNumPlayerCharacterRogue();
    warrior = players->GetNumPlayerCharacterWarrior();
}

}  // namespace ItemInventoryLootPlayers
