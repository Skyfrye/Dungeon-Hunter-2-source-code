// Batch g1-game-items-save-PlayerStatManager-d6e093-1 (owner PlayerStatManager, part 2: UpdateRanking, GetLeader and
// GetNumLeadingStats). Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. The declarations are in
// dh2/PlayerStatManager.hpp. The class has no data members (the vptr is the whole object).
//
// Facts from the pseudocode that these bodies depend on:
//  * GetRanking(stat, sort) returns one static buffer of (value, playerIndex) int pairs, one pair per player, shared by all
//    stats. With sort set it refills the buffer and sorts it. With sort clear it does nothing and returns the buffer as the
//    last sorted call left it, whatever the stat. So GetLeader reads the leader of the most recent sorted ranking, not
//    necessarily of the stat it was asked about. The original does the same.
//  * Invoke(stat, playerId, rankIndex) looks the player up with PlayerManager::GetPlayerByInternalID, so its second argument
//    is the internal player id and its third is the position in the ranking (UpdateRanking passes its loop index).
//  * dword_99F76C is the PlayerManager instance (dh2/global/IsMultiplayerGame.hpp).

#include "dh2/PlayerStatManager.hpp"

#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"

// 0x379d18 PlayerStatManager::UpdateRanking(EStatType) const
// Gets the sorted ranking for stat, calls DebugSwitches::load on the instance and reads the isTracingPlayerStats switch
// (the result is discarded by the original), then calls Invoke once per player in ranking order with the player id from
// the second word of each pair and the position as the rank index. The return value is the last Invoke result. With no
// players the loop does not run and the return value is the PlayerManager::GetNumPlayers result, as in the original.
int PlayerStatManager::UpdateRanking(EStatType stat) const {
    int* ranking = GetRanking(stat, true);
    DebugSwitches::s_inst.load();
    {
        std::string name("isTracingPlayerStats");
        DebugSwitches::s_inst.GetSwitch(name);
    }
    int result = dword_99F76C->GetNumPlayers();
    const int numPlayers = result;
    if (result > 0) {
        for (int pos = 0; pos != numPlayers; ++pos) {
            result = Invoke(stat, ranking[2 * pos + 1], pos);
        }
    }
    return result;
}

// 0x379dfc PlayerStatManager::GetLeader(EStatType) const
// The leader is the player index in the second word of the first pair. GetRanking is called without sort, so this reads
// the buffer as the last sorted call left it (see the file comment).
int PlayerStatManager::GetLeader(EStatType stat) const {
    return GetRanking(stat, false)[1];
}

// 0x379e10 PlayerStatManager::GetNumLeadingStats(int) const
// Counts the stats 0 to 5 (killer to support) for which playerId is the leader and the stat value is above 0. The loop
// stops at 6, so the XP stat (6) is never counted.
int PlayerStatManager::GetNumLeadingStats(int playerId) const {
    int count = 0;
    for (int stat = 0; stat != 6; ++stat) {
        const EStatType type = static_cast<EStatType>(stat);
        if (GetLeader(type) == playerId && GetStatValue(type, playerId) > 0) {
            ++count;
        }
    }
    return count;
}
