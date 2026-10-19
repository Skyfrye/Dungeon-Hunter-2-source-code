#include "net-session-online/glx_player_user.hpp"

#include <cstddef>
#include <cstring>

#include "net-session-online/owned_text.hpp"

namespace {
// Bounds shared by the indexed getters: index is at least 0 and below the size of
// the stored list. The avatar getters also check the avatar count (+0x114).
bool InRange(std::int32_t index, std::size_t size) {
    return index >= 0 && static_cast<std::size_t>(index) < size;
}
}  // namespace

// 0x83f8a4 _ZN13GLXPlayerUserC2Ev, 0x83f754 _ZN13GLXPlayerUserC1Ev
// The member defaults match the original's zeroing and -1 values. Two fields the original
// does not set are zeroed here: +0x104 (promo attachment) and +0x114 (avatar count). The
// request client is created after LoadConfig from the three owned strings, as the sibling
// services do.
GLXPlayerUser::GLXPlayerUser() : GLXPlayerWebComponent() {
    GLXPlayerWebComponent::LoadConfig();
    requestClient_ = std::make_unique<GLXPlayerHttp>(string10_.get(), string18_.get(), string14_.get());
}

// 0x83fb24 _ZN13GLXPlayerUserD1Ev, 0x83fda0 _ZN13GLXPlayerUserD2Ev
// Clears the list and information fields, then releases each owned field in the original's
// order. The rss feeds advRss_ (+0xe8) and promoRss_ (+0xf8) are released by their members
// after this body and before the base dtor, as the original does. The _LiveFeed array at
// +0x12c is released by clearing its vector.
GLXPlayerUser::~GLXPlayerUser() {
    clearUserGameList();
    clearUserState();
    clearUserInformation();
    clearAvatarList();
    password_.reset();           // +0x48
    userData_.reset();           // +0xc0
    otherUserName_.reset();      // +0xc4
    gameIcon_.reset();           // +0xc8
    unk_3c_.reset();             // +0x3c
    iconText0_.reset();          // +0xcc
    iconText1_.reset();          // +0xd0
    rssAttachment_.reset();      // +0xf4
    avatarKey_.reset();          // +0xa8
    otherAvatarKey_.reset();     // +0xac
    avatarLastUpdate_.reset();   // +0xb0
    otherAvatarLastUpdate_.reset();  // +0xb4
    avatarData_.reset();         // +0xb8
    otherAvatarData_.reset();    // +0xbc
    chatWarning_.reset();        // +0x118
    unk_11c_.reset();            // +0x11c
    unk_120_.reset();            // +0x120
    string124_.reset();          // +0x124
    liveFeeds_.clear();          // +0x12c
}

// 0x83a880 _ZN13GLXPlayerUser11getUserNameEv
const char* GLXPlayerUser::getUserName() const { return userName_.get(); }

// 0x83a888 _ZN13GLXPlayerUser11getPasswordEv
const char* GLXPlayerUser::getPassword() const { return password_.get(); }

// 0x83a890 _ZN13GLXPlayerUser8getEmailEv
const char* GLXPlayerUser::getEmail() const { return email_.get(); }

// 0x83a898 _ZN13GLXPlayerUser12getEmailFlagEv
std::uint8_t GLXPlayerUser::getEmailFlag() const { return emailFlag_; }

// 0x83a8a0 _ZN13GLXPlayerUser10getCountryEv
const char* GLXPlayerUser::getCountry() const { return country_.get(); }

// 0x83a8a8 _ZN13GLXPlayerUser12getFirstNameEv
const char* GLXPlayerUser::getFirstName() const { return firstName_.get(); }

// 0x83a8b0 _ZN13GLXPlayerUser11getLastNameEv
const char* GLXPlayerUser::getLastName() const { return lastName_.get(); }

// 0x83a8b8 _ZN13GLXPlayerUser6getSexEv
std::uint8_t GLXPlayerUser::getSex() const { return sex_; }

// 0x83a8c0 _ZN13GLXPlayerUser11getBirthdayEv
const char* GLXPlayerUser::getBirthday() const { return birthday_.get(); }

// 0x83a8c8 _ZN13GLXPlayerUser13getOnlineTimeEv
std::int32_t GLXPlayerUser::getOnlineTime() const { return onlineTime_; }

// 0x83a8d0 _ZN13GLXPlayerUser14getTotalTrophyEv
std::int32_t GLXPlayerUser::getTotalTrophy() const { return totalTrophy_; }

// 0x83a8d8 _ZN13GLXPlayerUser21getNumberUserGameListEv
std::int32_t GLXPlayerUser::getNumberUserGameList() const { return gameCount_; }

// 0x83a8e0 _ZN13GLXPlayerUser14getUserGamePIDEi
// The original returns the stored pointer for any index from 0 up, without a count check.
// The port returns nullptr outside the stored vector.
const char* GLXPlayerUser::getUserGamePID(std::int32_t index) const {
    if (!InRange(index, gamePid_.size())) {
        return nullptr;
    }
    return gamePid_[static_cast<std::size_t>(index)].get();
}

// 0x83a908 _ZN13GLXPlayerUser15getUserGameNameEi
const char* GLXPlayerUser::getUserGameName(std::int32_t index) const {
    if (!InRange(index, gameName_.size())) {
        return nullptr;
    }
    return gameName_[static_cast<std::size_t>(index)].get();
}

// 0x83a930 _ZN13GLXPlayerUser17getUserGameTrophyEi
// Default -1 for a negative index or an empty list.
std::int32_t GLXPlayerUser::getUserGameTrophy(std::int32_t index) const {
    if (!InRange(index, gameTrophy_.size())) {
        return -1;
    }
    return gameTrophy_[static_cast<std::size_t>(index)];
}

// 0x83a954 _ZN13GLXPlayerUser19getCurrentUserStateEv
std::int32_t GLXPlayerUser::getCurrentUserState() const { return currentState_; }

// 0x83a95c _ZN13GLXPlayerUser17getUserReputationEv
double GLXPlayerUser::getUserReputation() const { return reputation_; }

// 0x83a964 _ZN13GLXPlayerUser25getUserBadReputationCountEv
std::int32_t GLXPlayerUser::getUserBadReputationCount() const { return badReputation_; }

// 0x83a96c _ZN13GLXPlayerUser26getUserGoodReputationCountEv
std::int32_t GLXPlayerUser::getUserGoodReputationCount() const { return goodReputation_; }

// 0x83a974 _ZN13GLXPlayerUser13getUserTrophyEv
std::int32_t GLXPlayerUser::getUserTrophy() const { return trophy_; }

// 0x83a97c _ZN13GLXPlayerUser16getUserBestScoreEv
std::int32_t GLXPlayerUser::getUserBestScore() const { return bestScore_; }

// 0x83a984 _ZN13GLXPlayerUser16getUserAvatarKeyEv
const char* GLXPlayerUser::getUserAvatarKey() const { return avatarKey_.get(); }

// 0x83a98c _ZN13GLXPlayerUser23getUserAvatarLastUpdateEv
const char* GLXPlayerUser::getUserAvatarLastUpdate() const { return avatarLastUpdate_.get(); }

// 0x83a994 _ZN13GLXPlayerUser17getUserAvatarDataEv
const void* GLXPlayerUser::getUserAvatarData() const { return avatarData_.get(); }

// 0x83a99c _ZN13GLXPlayerUser11getUserDataEv
const char* GLXPlayerUser::getUserData() const { return userData_.get(); }

// 0x83a9a4 _ZN13GLXPlayerUser16getOtherUserNameEv
const char* GLXPlayerUser::getOtherUserName() const { return otherUserName_.get(); }

// 0x83a9ac _ZN13GLXPlayerUser12getAvatarKeyEi
// Returns the key only when the avatar list is set and the index is below the count.
const char* GLXPlayerUser::getAvatarKey(std::int32_t index) const {
    if (!InRange(index, avatarKeys_.size()) || index >= avatarCount_) {
        return nullptr;
    }
    return avatarKeys_[static_cast<std::size_t>(index)].get();
}

// 0x83a9dc _ZN13GLXPlayerUser19getAvatarLastUpdateEi
const char* GLXPlayerUser::getAvatarLastUpdate(std::int32_t index) const {
    if (!InRange(index, avatarLastUpdates_.size()) || index >= avatarCount_) {
        return nullptr;
    }
    return avatarLastUpdates_[static_cast<std::size_t>(index)].get();
}

// 0x83aa0c _ZN13GLXPlayerUser15getAvatarStatusEi
std::int32_t GLXPlayerUser::getAvatarStatus(std::int32_t index) const {
    if (!InRange(index, avatarStatus_.size()) || index >= avatarCount_) {
        return 0;
    }
    return avatarStatus_[static_cast<std::size_t>(index)];
}

// 0x83aa38 _ZN13GLXPlayerUser19processUploadAvatarEPc
void GLXPlayerUser::processUploadAvatar(char* data) { (void)data; }

// 0x83aa3c _ZN13GLXPlayerUser20clearUserInformationEv
void GLXPlayerUser::clearUserInformation() {
    string40_.reset();
    userName_.reset();
    email_.reset();
    country_.reset();
    firstName_.reset();
    lastName_.reset();
    birthday_.reset();
    otherUserName_.reset();
    avatarKey_.reset();
    avatarLastUpdate_.reset();
    string124_.reset();
    emailFlag_ = 0;
    sex_ = 0;
    onlineTime_ = 0;
    totalTrophy_ = 0;
}

// 0x83aba4 _ZN13GLXPlayerUser15clearAvatarListEv
void GLXPlayerUser::clearAvatarList() {
    avatarKeys_.clear();
    avatarLastUpdates_.clear();
    avatarStatus_.clear();
    avatarCount_ = 0;
}

// 0x83ac98 _ZN13GLXPlayerUser14clearUserStateEv
// Frees the token at +0x88 and the other user name at +0xc4, then sets +0x80 and +0x84 to -1.
void GLXPlayerUser::clearUserState() {
    unk_88_.reset();
    otherUserName_.reset();
    field80_ = -1;
    currentState_ = -1;
}

// 0x83ace0 _ZN13GLXPlayerUser17clearUserGameListEv
void GLXPlayerUser::clearUserGameList() {
    gamePid_.clear();
    gameName_.clear();
    gameTrophy_.clear();
    otherUserName_.reset();
    gameCount_ = 0;
}

// Test seams. These are not in the original.
void GLXPlayerUser::SetUserNameForTest(const char* name) { userName_ = OwnedNonEmpty(name); }

void GLXPlayerUser::SetGameForTest(std::int32_t index, const char* pid, const char* name,
                                   std::int32_t trophy) {
    const auto i = static_cast<std::size_t>(index);
    if (gamePid_.size() <= i) gamePid_.resize(i + 1);
    if (gameName_.size() <= i) gameName_.resize(i + 1);
    if (gameTrophy_.size() <= i) gameTrophy_.resize(i + 1, -1);
    gamePid_[i] = OwnedNonEmpty(pid);
    gameName_[i] = OwnedNonEmpty(name);
    gameTrophy_[i] = trophy;
}

void GLXPlayerUser::SetAvatarForTest(std::int32_t index, const char* key, const char* lastUpdate,
                                     std::int32_t status) {
    const auto i = static_cast<std::size_t>(index);
    if (avatarKeys_.size() <= i) avatarKeys_.resize(i + 1);
    if (avatarLastUpdates_.size() <= i) avatarLastUpdates_.resize(i + 1);
    if (avatarStatus_.size() <= i) avatarStatus_.resize(i + 1, 0);
    avatarKeys_[i] = OwnedNonEmpty(key);
    avatarLastUpdates_[i] = OwnedNonEmpty(lastUpdate);
    avatarStatus_[i] = status;
    if (avatarCount_ <= index) avatarCount_ = index + 1;
}
