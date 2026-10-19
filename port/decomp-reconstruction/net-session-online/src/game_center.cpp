#include "net-session-online/game_center.hpp"
#include "net-session-online/online_game_state.hpp"
#include "net-session-online/tb/online_singleton.hpp"

#include <cstring>

#include "core-platform/gc_singleton.hpp"
#include "dh2/MenuManager.hpp"  // MenuManager::GetInstance (0x42ca8c) and GetRoot (0x42cb80)
#include "dh2/MenuFX.hpp"       // MenuFX::InvokeASCallback (0x7ad7e8)

// 0x4991ac _ZN10GameCenter15ConnectToServerEi (bx lr)
void GameCenter::ConnectToServer(std::int32_t /*value*/) {}

// 0x4991b0 _ZN10GameCenter9GCFriendsEi (bx lr)
void GameCenter::GCFriends(std::int32_t /*value*/) {}

// 0x4991b4 _ZN10GameCenter17ProcessGCAPIErrorEPKcS1_ (bx lr)
void GameCenter::ProcessGCAPIError(const char* /*first*/, const char* /*second*/) {}

// 0x4991b8 _ZN10GameCenter21GetGCPlayerAttributesEv
std::int32_t GameCenter::GetGCPlayerAttributes() const {
    return static_cast<std::int32_t>(0xffff0000u);
}

// 0x499324 _ZN10GameCenter6IsHostEv
bool GameCenter::IsHost() const {
    if (hostUid_ == nullptr || userUid_ == nullptr) {
        return false;
    }
    return std::strcmp(hostUid_, userUid_.get()) == 0;
}

void GameCenter::SetUidsForTest(const char* host, const char* user) {
    auto copy = [](const char* text) -> std::unique_ptr<char[]> {
        if (text == nullptr) {
            return nullptr;
        }
        const std::size_t length = std::strlen(text) + 1;
        std::unique_ptr<char[]> out(new char[length]);
        std::memcpy(out.get(), text, length);
        return out;
    };
    hostUidStorage_ = copy(host);
    hostUid_ = hostUidStorage_.get();
    userUid_ = copy(user);
}

// 0x4999b8 _ZN10GameCenter15ResetPlayerListEv
void GameCenter::ResetPlayerList() {
    hostUid_ = hostUidStorage_.get();  // deviation: +0x30 may point into the list that is cleared next (dangling in the binary)
    playerList_.clear();
    playerList_.emplace_back(userUid_ != nullptr ? userUid_.get() : "");
    playerIdStatus_.clear();  // 0x499a34: the status list at +0x74 is freed node by node
    // 0x499a68: SetPlayerIDStatus(userUid, "ResetPlayerList", skip) with skip = (byte at +0x15 == 0).
    SetPlayerIDStatus(userUid_ != nullptr ? userUid_.get() : "", "ResetPlayerList", !startGate_);
}

// 0x4991d4 _ZN10GameCenter14GetPlayerCountEv
std::int32_t GameCenter::GetPlayerCount() {
    playerCount_ = static_cast<std::int32_t>(playerList_.size());
    return playerCount_;
}

// 0x499618 _ZN10GameCenter16SetGCPlayerAliasEPc
void GameCenter::SetGCPlayerAlias(const char* alias) {
    gcPlayerAlias_ = alias != nullptr ? alias : "";
}

// 0x499224 _ZN10GameCenter17SaveGCAchievementEPc
void GameCenter::SaveGCAchievement(const char* name) { achievements_.push_back(name); }

// 0x499264 _ZN10GameCenter17SetPlayerIDStatusEPKcS1_b
void GameCenter::SetPlayerIDStatus(const char* id, const char* status, bool skip) {
    if (id == nullptr) {
        return;
    }
    PlayerIdStatus entry{skip, id, status != nullptr ? status : ""};
    for (auto it = playerIdStatus_.begin(); it != playerIdStatus_.end(); ++it) {
        if (std::strcmp(id, it->id.c_str()) == 0) {
            *it = entry;  // the original links the new node in the old node's place
            return;
        }
    }
    playerIdStatus_.push_back(entry);
}

// 0x499564 _ZN10GameCenter13ReportGCScoreEi
// The gate and the flags are on the GameCenter singleton (GCSingleton<GameCenter>::GetInstance). The score
// is stored on this, as in the original.
void GameCenter::ReportGCScore(std::int32_t score) {
    GameCenter* singleton = GCSingleton<GameCenter>::GetInstance();
    if (!singleton->gateFlag_) {
        return;
    }
    pendingScore_ = score;
    singleton->scoreFlag_ = true;
    singleton->resultFlag_ = false;
}

// 0x4995a0 _ZN10GameCenter19ReportGCAchievementEPc
// Partial: a null name is taken as "" (the original calls strdup on it).
void GameCenter::ReportGCAchievement(const char* name) {
    GameCenter* singleton = GCSingleton<GameCenter>::GetInstance();
    if (!singleton->gateFlag_) {
        return;
    }
    pendingAchievement_ = name != nullptr ? name : "";
    singleton->achievementFlag_ = true;
    singleton->resultFlag_ = false;
}

// 0x499efc _ZN10GameCenter15CoinTossForHostEv
// std::priv::_S_sort<std::string,..., std::less<std::string>> on the player list at +0x24 (ascending), then the data pointer
// of the first node's string (node +0x1c). There is no random toss: the "toss" is the sort. The caller
// (GCStartMultiplayerGame) stores the pointer in the host UID word (+0x30).
// Deviation: an empty list returns null (the binary reads the sentinel's string slot and crashes).
const char* GameCenter::CoinTossForHost() {
    playerList_.sort();
    if (playerList_.empty()) {
        return nullptr;
    }
    return playerList_.front().c_str();
}

// 0x49a03c _ZN10GameCenter21GCAddToJoinPlayerListEPKc
void GameCenter::GCAddToJoinPlayerList(const char* id) {
    playerList_.emplace_back(id != nullptr ? id : "");
}

// 0x499440 _ZN10GameCenter25GCStartGameTimeoutExpiredEv
// The start time is this->+0x1c. The timevaldiff call goes to the OnlineSingleton<OnlineGameState> instance,
// as the original's receiver does. timevaldiff reads only its two timevals (Hex-Rays 0x4a00a0), so the
// receiver does not change the result. The elapsed time is compared with 150000 ms.
bool GameCenter::GCStartGameTimeoutExpired() const {
    Timeval now{0, 0};
    GetTimeOfDay(&now);
    OnlineGameState* state = OnlineSingleton<OnlineGameState>::GetInstance();
    return state->timevaldiff(&gameStartTime_, &now) > 150000;
}

// 0x499f24 _ZN10GameCenter22GCStartMultiplayerGameEv
// Re-verified against the 0x499f24 disassembly (39 instructions). Asm, in order: read the GS singleton's gate
// byte (+0x15); return at once when it is ZERO (LDRB R4,[R0,#0x15]; CMP R4,#0; BEQ loc_499F48 skips the tail);
// store 1 to OnlineGameState +0x28 (flag28_); store 1 to the singleton's start flag (+0x11); gettimeofday into
// the singleton's +0x1c; store CoinTossForHost's word into the singleton's +0x30; walk the player-ID status
// list; then MenuManager::GetInstance()->GetRoot()->InvokeASCallback("_root", "GoToVerificationScreen", 0, 0);
// and return OnlineGameState::Init(4) on the OnlineSingleton instance.
// The blocker the previous note named is GONE: MenuManager::GetRoot (0x42cb80) is defined at
// game-ui/src/g1-game-ui-MenuManager-a5622d-0.cpp:87 and MenuManager::GetInstance (0x42ca8c) at line 37, so the
// MenuManager chain is written here. The invocation is the RenderFX::InvokeASCallback(const char*, const char*,
// const as_value*, int) overload (0x7ad7e8), which is the one the listing resolves at asm 0x499fa8.
// Fixed this pass (kept): the entry guard polarity -- the binary runs the tail when the gate is SET.
// Deviation: on the 64-bit host both return values are addresses narrowed to the binary's 32-bit word.
int GameCenter::GCStartMultiplayerGame() {
    GameCenter* singleton = GCSingleton<GameCenter>::GetInstance();
    if (!singleton->startGate_) {
        return static_cast<int>(reinterpret_cast<std::uintptr_t>(singleton));  // r0: the GS singleton pointer
    }
    OnlineSingleton<OnlineGameState>::GetInstance()->flag28_ = true;  // +0x28
    singleton->startFlag_ = true;                                     // +0x11
    GetTimeOfDay(&singleton->gameStartTime_);                         // +0x1c
    singleton->hostUid_ = singleton->CoinTossForHost();  // +0x30 now points at the first sorted player id
    DumpPlayerIDStatusList();
    MenuManager::GetInstance()->GetRoot()->InvokeASCallback("_root", "GoToVerificationScreen", nullptr, 0);
    return static_cast<int>(
        reinterpret_cast<std::uintptr_t>(OnlineSingleton<OnlineGameState>::GetInstance()->Init(4)));
}

// 0x499fc8 _ZN10GameCenter22GCStartMultiplayerGameEb
// The bool argument is unused (a2 is never read). The singleton's gate byte at +0x15 is cleared, then the
// no-argument overload runs on this and its result is the caller's r0 (the binary's tail is a B, not a BL).
// It is therefore returned here rather than dropped.
int GameCenter::GCStartMultiplayerGame(bool /*unused*/) {
    GCSingleton<GameCenter>::GetInstance()->startGate_ = false;
    return GCStartMultiplayerGame();
}
