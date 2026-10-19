#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdint>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

#include "net-session-online/xp_api.hpp"

namespace {

// Field delimiters used by the friend list text: '|' between fields, '^' inside an entry,
// ',' inside the reputation field.
constexpr int kFieldDelim = 124;
constexpr int kEntryDelim = 94;
constexpr int kValueDelim = 44;

// Drops every element and releases the storage.
template <typename T>
void Release(std::vector<T>& field) {
    std::vector<T>().swap(field);
}

// Resizes a per-entry array to count entries, zero or empty filled.
template <typename T>
void Resize(std::vector<T>& field, std::int32_t count) {
    field.assign(static_cast<std::size_t>(count), T{});
}

}  // namespace

// 0x82bc78 _ZN19GLXPlayerUserFriend16clearFriendsListEv
// The original frees each raw array and sets the count to 0. The vectors release their storage here.
void GLXPlayerUserFriend::clearFriendsList() {
    Release(userNumber_);
    Release(name_);
    Release(country_);
    Release(reputation_);
    Release(badRep_);
    Release(goodRep_);
    Release(state_);
    Release(currentGame_);
    Release(trophy_);
    Release(language_);
    Release(avatarKey_);
    Release(avatarLastUpdate_);
    Release(totalTrophy_);
    count_ = 0;
}

// 0x82bfd8 _ZN19GLXPlayerUserFriend18processFriendsListEPc
// Clears the list, then reads the header fields and the count, and for each entry the text fields 0 (user number), 1 (name),
// 2 (country), 6 (current game), 8 (language), 9 (avatar key) and 10 (avatar last update) as strings (0x80, 0x80, 0x80, 3,
// 0x20, 0x20 bytes per entry in the original), the reputation triple "reputation,bad,good" (field 3), the total trophy (4),
// the state (5) and the trophy (7).
void GLXPlayerUserFriend::processFriendsList(const char* text) {
    clearFriendsList();
    if (text == nullptr) {
        return;
    }
    std::string source(text);
    if (source.empty()) {
        return;
    }
    char* list = source.data();

    char header[256];   // v44 in the original
    char entry[512];    // v43
    char pair[256];     // v44 (reused for the reputation field)
    char value[128];    // v45
    char name[0x80];    // field 1 of the entry

    std::memset(header, 0, sizeof header);
    getValue(list, header, 0, kFieldDelim);     // read and discarded, as in the original
    std::memset(header, 0, sizeof header);
    getValue(list, header, 1, kFieldDelim);
    const std::int32_t count = XP_API_ATOI(header);
    count_ = count;
    std::memset(header, 0, sizeof header);
    getValue(list, header, 2, kFieldDelim);     // read and discarded, as in the original

    if (count <= 0) {
        return;
    }
    const auto n = static_cast<std::int32_t>(count);
    Resize(userNumber_, n);
    Resize(name_, n);
    Resize(country_, n);
    Resize(reputation_, n);
    Resize(badRep_, n);
    Resize(goodRep_, n);
    Resize(state_, n);
    Resize(currentGame_, n);
    Resize(trophy_, n);
    Resize(language_, n);
    Resize(avatarKey_, n);
    Resize(avatarLastUpdate_, n);
    Resize(totalTrophy_, n);

    for (std::int32_t i = 0; i < n; ++i) {
        std::memset(entry, 0, sizeof entry);
        getValue(list, entry, i + 3, kFieldDelim);

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 0, kEntryDelim);  // user number (text)
        userNumber_[static_cast<std::size_t>(i)] = value;

        std::memset(name, 0, sizeof name);
        getValue(entry, name, 1, kEntryDelim);
        name_[static_cast<std::size_t>(i)] = name;

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 2, kEntryDelim);  // country (text)
        country_[static_cast<std::size_t>(i)] = value;

        // Field 3: "reputation,bad,good" packed into one field.
        std::memset(pair, 0, sizeof pair);
        getValue(entry, pair, 3, kEntryDelim);

        std::memset(value, 0, sizeof value);
        getValue(pair, value, 0, kValueDelim);
        reputation_[static_cast<std::size_t>(i)] = XP_API_ATOF(value);

        std::memset(value, 0, sizeof value);
        getValue(pair, value, 1, kValueDelim);
        badRep_[static_cast<std::size_t>(i)] = XP_API_ATOI(value);

        std::memset(value, 0, sizeof value);
        getValue(pair, value, 2, kValueDelim);
        goodRep_[static_cast<std::size_t>(i)] = XP_API_ATOI(value);

        std::memset(pair, 0, sizeof pair);
        getValue(entry, pair, 4, kEntryDelim);
        totalTrophy_[static_cast<std::size_t>(i)] = XP_API_ATOI(pair);

        std::memset(pair, 0, sizeof pair);
        getValue(entry, pair, 5, kEntryDelim);
        state_[static_cast<std::size_t>(i)] = XP_API_ATOI(pair);

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 6, kEntryDelim);  // current game (text)
        currentGame_[static_cast<std::size_t>(i)] = value;

        std::memset(pair, 0, sizeof pair);
        getValue(entry, pair, 7, kEntryDelim);
        trophy_[static_cast<std::size_t>(i)] = XP_API_ATOI(pair);

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 8, kEntryDelim);  // language (text)
        language_[static_cast<std::size_t>(i)] = value;

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 9, kEntryDelim);  // avatar key (text)
        avatarKey_[static_cast<std::size_t>(i)] = value;

        std::memset(value, 0, sizeof value);
        getValue(entry, value, 10, kEntryDelim);  // avatar last update (text)
        avatarLastUpdate_[static_cast<std::size_t>(i)] = value;
    }
}

// 0x82ca20 _ZN19GLXPlayerUserFriend15OnUpdateSuccessEi
// Code 61 parses the list at the response cursor. Code 73 clears the list and reads its count.
// Any other code goes to the base class. The base return value is not returned here.
void GLXPlayerUserFriend::OnUpdateSuccess(std::int32_t arg) {
    if (arg == 61) {
        processFriendsList(cursor_);
    } else if (arg == 73) {
        clearFriendsList();
        std::string source(cursor_ != nullptr ? cursor_ : "");
        char field[64];   // the original uses 8 bytes here
        std::memset(field, 0, sizeof field);
        getValue(source.data(), field, 0, kFieldDelim);
        count_ = XP_API_ATOI(field);
    }
    GLXPlayerWebComponent::OnUpdateSuccess(arg);
}
