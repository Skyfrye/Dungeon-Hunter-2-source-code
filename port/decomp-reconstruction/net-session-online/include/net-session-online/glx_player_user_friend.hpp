// GLXPlayerUserFriend: the friend list. Each per-entry field is a parallel array
// indexed by the friend index; the original stores them as raw heap arrays at
// the offsets listed below and checks the index against the count at +0x3c.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x3c count
//   +0x40 user number (uint)     +0x44 name (char*)          +0x48 country
//   +0x4c reputation (double)    +0x50 bad reputation count  +0x54 good reputation count
//   +0x58 state                  +0x5c current game          +0x60 trophy
//   +0x64 language               +0x68 avatar key            +0x6c avatar last update
//   +0x70 total trophy score
//
// Getters do not return an error for an out-of-range index: they return the
// default shown in each comment. The network calls (send*, process*) are not
// reconstructed yet.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "net-session-online/glx_player_web_component.hpp"

// The original derives from the GLXPlayerWebComponent base (+0x00..+0x3b), which the offsets above assume.
class GLXPlayerUserFriend : public GLXPlayerWebComponent {
public:
    GLXPlayerUserFriend();                 // 0x82cb60 C1, 0x82cbf8 C2
    ~GLXPlayerUserFriend() override;       // 0x82cacc D1, 0x82cb24 D2

    // 0x82b9f4 _ZN19GLXPlayerUserFriend15GetFriendsCountEv
    std::int32_t GetFriendsCount() const { return count_; }

    // 0x82b9fc GetUserNumber(int): the user number text (a char* in the original), default null.
    const char* GetUserNumber(std::int32_t index) const;
    // 0x82ba2c GetName(int): default null. Index is strictly less than the count here.
    const char* GetName(std::int32_t index) const;
    // 0x82ba5c GetCountry(int): default 0.
    const char* GetCountry(std::int32_t index) const;
    // 0x82ba8c GetReputation(int): default -1.0.
    double GetReputation(std::int32_t index) const;
    // 0x82baf8 GetGoodReputationCount(int): default -1.
    std::int32_t GetGoodReputationCount(std::int32_t index) const;
    // 0x82bac8 GetBadReputationCount(int): default -1.
    std::int32_t GetBadReputationCount(std::int32_t index) const;
    // 0x82bb28 GetState(int): default -1.
    std::int32_t GetState(std::int32_t index) const;
    // 0x82bb58 GetCurrentGame(int): default 0.
    const char* GetCurrentGame(std::int32_t index) const;
    // 0x82bb88 GetTrophy(int): default -1.
    std::int32_t GetTrophy(std::int32_t index) const;
    // 0x82bbb8 GetTotalTrophyScore(int): default -1.
    std::int32_t GetTotalTrophyScore(std::int32_t index) const;
    // 0x82bbe8 GetLanguage(int): default 0.
    const char* GetLanguage(std::int32_t index) const;
    // 0x82bc18 GetAvatarLastUpdate(int): default 0.
    const char* GetAvatarLastUpdate(std::int32_t index) const;
    // 0x82bc48 GetAvatarKey(int): default 0.
    const char* GetAvatarKey(std::int32_t index) const;

    // 0x82bc78 _ZN19GLXPlayerUserFriend16clearFriendsListEv: empties all 13 per-entry arrays, count = 0.
    void clearFriendsList();
    // 0x82bfd8 _ZN19GLXPlayerUserFriend18processFriendsListEPc
    void processFriendsList(const char* text);
    // 0x82ca20 _ZN19GLXPlayerUserFriend15OnUpdateSuccessEi. Code 61 parses, 73 clears and reads the count.
    void OnUpdateSuccess(std::int32_t arg) override;

    // Request senders: "f|kind|i|GGI|u|UID|..." requests handed to SendByGet.
    // 0x82c584 _ZN19GLXPlayerUserFriend23sendGetUserFriendsCountEv (kind 0x49)
    void sendGetUserFriendsCount();
    // 0x82c640 _ZN19GLXPlayerUserFriend18sendGetUserFriendsEii (kind 0x3d, "a|" and "c|" fields)
    // Returns the SendByGet result (1).
    std::int32_t sendGetUserFriends(std::int32_t first, std::int32_t count);
    // 0x82c708 _ZN19GLXPlayerUserFriend17sendDelUserFriendEPcb (kind 0x3c). The flag picks the
    // "n|" field (false) or the "un|" field (true).
    void sendDelUserFriend(const char* name, bool byUserName);
    // 0x82c7f4 _ZN19GLXPlayerUserFriend21sendConfirmUserFriendEPcib (kind 0x3e, "c|" field). The
    // flag is stored as 0 or 1 and the int picks the "n|" or "un|" field.
    void sendConfirmUserFriend(const char* name, std::int32_t confirm, bool byUserName);
    // 0x82c8ec _ZN19GLXPlayerUserFriend17sendAddUserFriendEPcS0_b (kind 0x3b). The message, when
    // not null, is appended as an "m|" field.
    // Returns the SendByGet result (1).
    std::int32_t sendAddUserFriend(const char* name, const char* message, bool byUserName);

    // Not in the original: test seam. Sizes every per-entry array to count entries.
    void ReserveForTest(std::int32_t count);
    void SetNameForTest(std::int32_t index, const std::string& name);

private:
    std::int32_t count_ = 0;                  // +0x3c
    std::vector<std::string> userNumber_;     // +0x40 (text)
    std::vector<std::string> name_;           // +0x44
    std::vector<std::string> country_;        // +0x48 (text)
    std::vector<double> reputation_;          // +0x4c
    std::vector<std::int32_t> badRep_;        // +0x50
    std::vector<std::int32_t> goodRep_;       // +0x54
    std::vector<std::int32_t> state_;         // +0x58
    std::vector<std::string> currentGame_;    // +0x5c (text)
    std::vector<std::int32_t> trophy_;        // +0x60
    std::vector<std::string> language_;       // +0x64 (text)
    std::vector<std::string> avatarKey_;      // +0x68 (text)
    std::vector<std::string> avatarLastUpdate_;  // +0x6c (text)
    std::vector<std::int32_t> totalTrophy_;   // +0x70
};
