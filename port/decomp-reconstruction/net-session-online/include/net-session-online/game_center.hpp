// GameCenter: the Game Center session state (Apple's service). On the desktop and
// Android targets the feature switch is kept, and the Game Center calls are no-ops.
// Only the parts with checkable logic are reconstructed here. The room and friend
// calls (GCStartMultiplayerGame, GetJoinPlayerList, ...) are queued.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x07 features enabled (byte)
//   +0x24 player-ID list (std::list<std::string>; the original is an STL list with its
//         sentinel at +0x24)   +0x2c player count (int, set by GetPlayerCount)
//   +0x30 host UID (owned string)    +0x34 local user UID (owned string)
//   +0x4c Game Center player alias (std::string)
#pragma once

#include <cstdint>
#include <list>
#include <memory>
#include <string>

#include "net-session-online/deps/time_of_day.hpp"

class GameCenter {
public:
    // 0x499194 _ZN10GameCenter16EnableGCFeaturesEv
    void EnableGCFeatures() { featuresEnabled_ = true; }
    // 0x4991a0 _ZN10GameCenter17DisableGCFeaturesEv
    void DisableGCFeatures() { featuresEnabled_ = false; }
    // 0x4991ac _ZN10GameCenter15ConnectToServerEi: no-op.
    void ConnectToServer(std::int32_t value);
    // 0x4991b0 _ZN10GameCenter9GCFriendsEi: no-op.
    void GCFriends(std::int32_t value);
    // 0x4991b4 _ZN10GameCenter17ProcessGCAPIErrorEPKcS1_: no-op.
    void ProcessGCAPIError(const char* first, const char* second);
    // 0x4991b8 _ZN10GameCenter21GetGCPlayerAttributesEv: returns 0xffff0000.
    std::int32_t GetGCPlayerAttributes() const;
    // 0x4991c4 _ZN10GameCenter10GetUserUidEv
    const char* GetUserUid() const { return userUid_.get(); }
    // 0x4991cc _ZN10GameCenter10GetHostUidEv
    const char* GetHostUid() const { return hostUid_; }
    // 0x499324 _ZN10GameCenter6IsHostEv. Re-verified from the asm: `return LC_API_STRCMP_0(*(this+12),
    // *(this+13)) == 0` -- two dword loads at +0x30 and +0x34 (hostUid_, userUid_) straight into strcmp,
    // with no null test. Reproduced as those two members; deviation (host-necessitated): a null UID would
    // fault inside strcmp in the binary, so the port answers false instead of dereferencing null.
    bool IsHost() const;

    // 0x4999b8 _ZN10GameCenter15ResetPlayerListEv: the list is replaced by the local user.
    // Partial in one case: a null user UID is taken as an empty string (the original would
    // construct a string from a null pointer).
    void ResetPlayerList();
    // 0x4991d4 _ZN10GameCenter14GetPlayerCountEv: counts the list, stores the count at +0x2c.
    std::int32_t GetPlayerCount();
    // 0x4995f4 _ZN10GameCenter16GetGCPlayerAliasEv: returns a copy of the alias.
    std::string GetGCPlayerAlias() const { return gcPlayerAlias_; }
    // 0x499618 _ZN10GameCenter16SetGCPlayerAliasEPc: stores the alias. A null alias is
    // taken as an empty string (partial, as for ResetPlayerList).
    void SetGCPlayerAlias(const char* alias);

    // 0x499208 _ZN10GameCenter22DumpPlayerIDStatusListEv: walks the player-ID status list
    // (+0x74). The loop has no body in the binary, so nothing happens.
    void DumpPlayerIDStatusList() const {}
    // 0x499224 _ZN10GameCenter17SaveGCAchievementEPc: appends the pointer to the achievement
    // list (+0x6c). Partial: the original stores the pointer, not a copy (so does this), and
    // returns the new list node, which is not exposed here. No caller in the corpus reads that
    // return. The allocation-failure path (returns 0 with nothing linked) is not modelled.
    void SaveGCAchievement(const char* name);
    // 0x499264 _ZN10GameCenter17SetPlayerIDStatusEPKcS1_b: replaces the entry for the ID in
    // place, or appends one. Partial: the original returns a register value (this, or a copied
    // status pointer), so this returns nothing. That value is passed on by GameCenter::ResetPlayerList
    // (0x4999b8). The allocation-failure path is not modelled. A null status is taken as "" (the
    // original would duplicate a null pointer).
    void SetPlayerIDStatus(const char* id, const char* status, bool skip);
    // 0x499564 _ZN10GameCenter13ReportGCScoreEi. The gate (+0x05) and the flags (+0x0d, +0x0e) are on
    // GCSingleton<GameCenter>::GetInstance(); the score is stored on this (+0x3c). The original returns
    // the singleton pointer as an int. No caller in the corpus reads it, so this returns nothing. The
    // gate is not set anywhere in this port yet.
    void ReportGCScore(std::int32_t score);
    // 0x4995a0 _ZN10GameCenter19ReportGCAchievementEPc. Partial: the gate and the flags are on the
    // singleton, as for ReportGCScore. A null name is taken as "" (the original calls strdup on it).
    void ReportGCAchievement(const char* name);
    // 0x499efc _ZN10GameCenter15CoinTossForHostEv: sorts the player list at +0x24 ascending and returns the
    // first element's text (there is no random toss), null for an empty list (the binary reads past the sentinel).
    // The caller stores the pointer in the host UID word (+0x30).
    const char* CoinTossForHost();
    // 0x49a03c _ZN10GameCenter21GCAddToJoinPlayerListEPKc. Partial: a null ID is taken as ""
    // (the original would construct a string from a null pointer).
    void GCAddToJoinPlayerList(const char* id);
    // 0x499440 _ZN10GameCenter25GCStartGameTimeoutExpiredEv. Reconstructed: the start time is this->+0x1c,
    // and the timevaldiff call goes to the OnlineSingleton<OnlineGameState> instance. timevaldiff (0x4a00a0)
    // reads only its two timevals, so the receiver does not change the result.
    bool GCStartGameTimeoutExpired() const;
    // 0x499f24 _ZN10GameCenter22GCStartMultiplayerGameEv. Re-verified against the listing and complete in the
    // port: the gate (+0x15), the start flag (+0x11), the start time (+0x1c), the CoinTossForHost sort,
    // OnlineGameState flag28_ (+0x28), the MenuManager "GoToVerificationScreen" chain (MenuManager::GetInstance
    // 0x42ca8c, GetRoot 0x42cb80 and RenderFX::InvokeASCallback 0x7ad7e8 are all defined now) and
    // OnlineGameState::Init(4) on the OnlineSingleton instance. The return value is the Init result, as the
    // binary's tail branch leaves in r0. The CoinTossForHost result is stored in the host UID (+0x30).
    int GCStartMultiplayerGame();
    // 0x499fc8 _ZN10GameCenter22GCStartMultiplayerGameEb. The bool argument is unused in the original (a2 is
    // never read). It clears the start gate (+0x15) on the GameCenter singleton and tail-branches to the
    // no-argument overload, whose result is passed through as the caller's r0 (hence the int return here).
    int GCStartMultiplayerGame(bool /*unused*/);
    // 0x499fe8 _ZN10GameCenter17GetJoinPlayerListEv. The original returns the list by value
    // (hidden result pointer); the copy is the same as the list at +0x24.
    std::list<std::string> GetJoinPlayerList() const { return playerList_; }
    // 0x499694 _ZN10GameCenter16GetGCPlayerGroupEv. Reconstructed (see the cpp). The inputs come from the
    // Application singleton: PlayerManager (+0x40), SavegameManager (+0x4c) and MenuManager (+0x54). The
    // decimal composition and the 32-bit strtol live in tb/gc_player_group.hpp.
    std::int32_t GetGCPlayerGroup();

    // Test seams. Not in the original.
    bool StartFlagForTest() const { return startFlag_; }
    bool StartGateForTest() const { return startGate_; }
    void SetStartGateForTest(bool open) { startGate_ = open; }
    bool FeaturesEnabledForTest() const { return featuresEnabled_; }
    const std::list<std::string>& PlayerListForTest() const { return playerList_; }
    const std::list<const char*>& AchievementsForTest() const { return achievements_; }
    struct PlayerIdStatus {
        bool skip;
        std::string id;
        std::string status;
    };
    const std::list<PlayerIdStatus>& PlayerIdStatusForTest() const { return playerIdStatus_; }
    bool ScoreFlagForTest() const { return scoreFlag_; }
    bool AchievementFlagForTest() const { return achievementFlag_; }
    std::int32_t PendingScoreForTest() const { return pendingScore_; }
    const std::string& PendingAchievementForTest() const { return pendingAchievement_; }
    void SetGateForTest(bool open) { gateFlag_ = open; }
    void SetUidsForTest(const char* host, const char* user);

public:  // decision 9: GSInit::Update writes resultFlag_ (+0x0e) directly
    // Members in offset order (original 32-bit offsets). The bytes between the flags are not accessed by any recovered function.
    std::uint8_t pad_00_[5] = {};                // +0x00 .. +0x04
    bool gateFlag_ = false;                      // +0x05 (role not identified)
    std::uint8_t pad_06_ = 0;                    // +0x06
    bool featuresEnabled_ = false;               // +0x07
    std::uint8_t pad_08_[2] = {};                // +0x08, +0x09
    bool unk_0a = false;                         // +0x0a set with resultFlag_ by MenuMainMenu::Show for the GoToMainMenu event 7
    std::uint8_t pad_0b_ = 0;                    // +0x0b
    bool achievementFlag_ = false;               // +0x0c
    bool scoreFlag_ = false;                     // +0x0d
    bool resultFlag_ = false;                    // +0x0e (cleared by both reports)
    std::uint8_t pad_0f_[2] = {};                // +0x0f, +0x10
    bool startFlag_ = false;                     // +0x11 set when a multiplayer start runs
    std::uint8_t pad_12_ = 0;                    // +0x12
    bool unk_13 = false;                         // +0x13 set to 1 by MenuMainMenu::Show
    bool unk_14 = false;                         // +0x14 cleared by MenuMainMenu::Show
    // +0x15: start gate, cleared by GCStartMultiplayerGame(bool). Its value at construction is
    // not recovered (the ctor is queued), so it defaults to false here.
    bool startGate_ = false;                     // +0x15
    std::uint8_t pad_16_[6] = {};                // +0x16 .. +0x1b
    Timeval gameStartTime_{0, 0};                // +0x1c (sec, usec), set by GCStartMultiplayerGame
    std::list<std::string> playerList_;          // +0x24
    std::int32_t playerCount_ = 0;               // +0x2c
    const char* hostUid_ = nullptr;              // +0x30 the host UID: the owned copy below, or the first sorted player id after CoinTossForHost
    std::unique_ptr<char[]> hostUidStorage_;     // owned copy behind hostUid_ when it was set from text (port; the binary stores raw pointers)
    std::unique_ptr<char[]> userUid_;            // +0x34
    std::string pendingAchievement_;             // +0x38
    std::int32_t pendingScore_ = -1;             // +0x3c
    std::string gcPlayerAlias_;                  // +0x4c
    std::list<const char*> achievements_;        // +0x6c (list of pointers, not copies)
    std::list<PlayerIdStatus> playerIdStatus_;   // +0x74
};
