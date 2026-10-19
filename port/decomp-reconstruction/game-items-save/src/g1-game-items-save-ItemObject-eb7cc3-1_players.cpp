// Companion of batch g1-game-items-save-ItemObject-eb7cc3-1. Holds the PlayerManager and PlayerStatManager reads that the
// ItemObject functions make through the global dword_99F76C and the stat singleton. They live in their own translation
// unit because dh2/PlayerManager.hpp includes net-transport's IStreamBase, which clashes with the pydata stream reader that
// dh2/Character.hpp brings in (CharProperties.hpp -> structs_records.hpp). The batch file therefore declares these helpers
// in namespace ItemObjectPlayers and calls them; this file defines them. Same arrangement as the ItemInventory batch 3.
//
// Each helper returns plain values (a Character pointer, a count, a player number), so the batch file never needs the
// PlayerManager or PlayerInfo layouts.

#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerStatManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // extern PlayerManager* dword_99F76C

namespace ItemObjectPlayers {

// The unk_660 word of the player record is the player's Character (PlayerInfo +0x660, the character_660 field).
// 0x36e744 PlayerManager::GetPlayer(friendlyId, true), read for ItemObject::_GetNextPlayerQuestRRId.
Character* QuestHolderOfPlayer(int friendlyId) {
    return dword_99F76C->GetPlayer(friendlyId, true)->unk_660;
}

// PlayerManager +0x6c4 (m_numCharacters), the loop bound of ItemObject::_GetNextPlayerQuestRRId.
int NumPlayerCharacters() {
    return dword_99F76C->m_numCharacters;
}

// PlayerInfo +0x678 (unk_678, the player number the record carries; read as the pickup-lock RR id by DropInventory,
// Interact and the stat call). 0x36eea8 PlayerManager::GetPlayerByCharacter(character, false).
int PlayerNumberOf(const Character* character) {
    return dword_99F76C->GetPlayerByCharacter(character, false)->unk_678;
}

// 0x36e478 PlayerManager::GetLocalPlayer(0, true), then its Character (+0x660). DropAndAwardLoot passes it as the owner.
Character* LocalPlayerCharacter() {
    return dword_99F76C->GetLocalPlayer(0, true)->unk_660;
}

// 0x36effc PlayerManager::IsLocalPlayer(character), an int in the binary, read as a flag.
bool IsLocalPlayerCharacter(const Character* character) {
    return dword_99F76C->IsLocalPlayer(character) != 0;
}

// Interact: PlayerStatManager::IncrementStat(stat 4, playerId) on Singleton<PlayerStatManager>::s_inst (0x3790ec).
// The stat is the fourth EStatType enumerator in the binary's call; its name is not recovered.
void IncrementStatFour(int playerNumber) {
    Singleton<PlayerStatManager>::s_inst.IncrementStat(static_cast<EStatType>(4), playerNumber);
}

}  // namespace ItemObjectPlayers
