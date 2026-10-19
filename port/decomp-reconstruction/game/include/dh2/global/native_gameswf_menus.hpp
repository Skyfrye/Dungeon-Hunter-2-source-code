// gameswf natives of the message queues, online kick and login, equipment swap, zone travel, skill lists and details,
// ranking, world map, quest list, merchant list, HUD back, map icons, iPod, string lookup and multiplayer rooms
// (batch g1-game-app-global-f216b6-12, ELF 0x440e5c .. 0x445a10). Definitions:
// game-app/src/g1-game-app-global-f216b6-12.cpp.
//
// gameswf calls every native with one const fn_call&. The Hex-Rays int return is the leftover r0 of the last call,
// so the natives return void.
#pragma once

#include <cstddef>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// Title sort of NativeGetQuestIDsInRange (0x443b18). The original runs one pass per element. Each pass compares the
// neighbours (j, j + 1) and swaps them when strcmp(title(j + 1), title(j)) < 0. The result is ascending by title, and
// equal titles keep their order. TitleOf maps an item to its title (Quest::GetTitle in the original).
template <typename T, typename TitleOf>
void BubbleSortByTitle(std::vector<T>& items, TitleOf titleOf) {
    const std::size_t n = items.size();
    for (std::size_t pass = 1; pass <= n; ++pass) {
        for (std::size_t j = 0; j + 1 < n; ++j) {
            if (std::strcmp(titleOf(items[j + 1]), titleOf(items[j])) < 0) {
                std::swap(items[j], items[j + 1]);
            }
        }
    }
}

// 0x440e5c NativeGetNextOnlineStatusMessage(gameswf::fn_call const&)
void NativeGetNextOnlineStatusMessage(const gameswf::fn_call& call);
// 0x441b60 NativeKickPlayerOut(gameswf::fn_call const&)
void NativeKickPlayerOut(const gameswf::fn_call& call);
// 0x442198 NativeSwapEquipment(gameswf::fn_call const&)
void NativeSwapEquipment(const gameswf::fn_call& call);
// 0x4422b8 NativeGoToZone(gameswf::fn_call const&)
void NativeGoToZone(const gameswf::fn_call& call);
// 0x4425a0 NativeSkillGetEquipedSkillsIDs(gameswf::fn_call const&)
void NativeSkillGetEquipedSkillsIDs(const gameswf::fn_call& call);
// 0x442838 NativeSkipCharMenuTutorialMessage(gameswf::fn_call const&)
void NativeSkipCharMenuTutorialMessage(const gameswf::fn_call& call);
// 0x442994 NativeSkipAchievementMessage(gameswf::fn_call const&)
void NativeSkipAchievementMessage(const gameswf::fn_call& call);
// 0x442ea4 NativeStopMessage(gameswf::fn_call const&)
void NativeStopMessage(const gameswf::fn_call& call);
// 0x44344c NativeGetPlayerRanking(gameswf::fn_call const&)
void NativeGetPlayerRanking(const gameswf::fn_call& call);
// 0x4435e4 NativeGetWorldMapLocations(gameswf::fn_call const&)
void NativeGetWorldMapLocations(const gameswf::fn_call& call);
// 0x443b18 NativeGetQuestIDsInRange(gameswf::fn_call const&)
void NativeGetQuestIDsInRange(const gameswf::fn_call& call);
// 0x444168 NativeMerchantGetItemsListForSlot(gameswf::fn_call const&)
void NativeMerchantGetItemsListForSlot(const gameswf::fn_call& call);
// 0x444990 NativeBackToHud(gameswf::fn_call const&)
void NativeBackToHud(const gameswf::fn_call& call);
// 0x444ae0 NativeLoginInfos(gameswf::fn_call const&)
void NativeLoginInfos(const gameswf::fn_call& call);
// 0x444c68 NativeGetMapIcons(gameswf::fn_call const&)
void NativeGetMapIcons(const gameswf::fn_call& call);
// 0x444dec NativeGetIPodPlaylistName(gameswf::fn_call const&)
void NativeGetIPodPlaylistName(const gameswf::fn_call& call);
// 0x444ebc NativeGetStringFromSymbol(gameswf::fn_call const&)
void NativeGetStringFromSymbol(const gameswf::fn_call& call);
// 0x44506c NativeGetStringFromID(gameswf::fn_call const&)
void NativeGetStringFromID(const gameswf::fn_call& call);
// 0x4451ac NativeGetMultiplayerGameRooms(gameswf::fn_call const&)
void NativeGetMultiplayerGameRooms(const gameswf::fn_call& call);
// 0x445a10 NativeGetSkillDetails(gameswf::fn_call const&)
void NativeGetSkillDetails(const gameswf::fn_call& call);

// NativeSkillGetEquipedSkillsIDs (0x4425a0): the character from NativeGetPlayerChar(player, flag). When it exists,
// ids[i] is Character::SG_GetSkillInSlot(i) for the three slots 0..2 and the result is true. Otherwise the result is
// false and ids is left alone.
bool EquippedSkillIdsOfPlayer(int player, bool flag, int (&ids)[3]);

// NativeGetPlayerRanking (0x44344c): for stats 0..6, names[stat] is PlayerStatManager::GetStatStr(stat) and
// values[stat] is PlayerStatManager::GetStatValue(stat, player), read from the PlayerStatManager singleton.
void RankingStatsOfPlayer(int player, std::string (&names)[7], int (&values)[7]);
