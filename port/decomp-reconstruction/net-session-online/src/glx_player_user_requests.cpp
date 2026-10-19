// GLXPlayerUser request builders (send*). Each one checks its arguments, formats a
// "f|kind|i|GGI|u|UID|..." request and hands it to SendByGet or SendByPost. A rejected
// argument reports (kind, -100) to the observer (slot 3, OnResponseError) and sends
// nothing. The format strings are the ones in the binary's .rodata.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/glx_player_user.hpp"

namespace {
constexpr std::int32_t kInvalidArgument = -100;  // 0xffffff9c in the original
constexpr std::size_t kRequestBytes = 0x1000;

// The request header reads the GGI (+0x08) and the user id (+0x0c) of the web component.
// A missing user id is written as an empty string here.
const char* UidText(const char* uid) { return uid != nullptr ? uid : ""; }
}  // namespace

// 0x83cdc8 _ZN13GLXPlayerUser16sendGetLiveFeedsEi
void GLXPlayerUser::sendGetLiveFeeds(std::int32_t kind) {
    if (kind - 1 >= 0 && kind - 1 < 0x14) {
        char buf[kRequestBytes] = {};
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|c|%d|", 0x6f, static_cast<int>(GetGGI()),
                      UidText(GetUID()), kind);
        XP_DEBUG_OUT("GLXPlayerUser::sendGetLiveFeeds -> buffer = %s\n", buf);
        SendByGet(buf);
    }
}

// 0x83cea0 _ZN13GLXPlayerUser15sendSetUserMindEPc
// Accepts a mind text of 1 to 255 characters. The length is compared unsigned, so an
// empty text (strlen - 1 wraps) is refused too, as in the original.
void GLXPlayerUser::sendSetUserMind(char* mind) {
    if (mind == nullptr) {
        return;
    }
    if (std::strlen(mind) - 1 > 0xFE) {
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|mind|%s|", 110, static_cast<int>(GetGGI()),
                  UidText(GetUID()), mind);
    XP_DEBUG_OUT("GLXPlayerUser::sendSetUserMind -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83cf88 _ZN13GLXPlayerUser16sendSetUserStateEi
void GLXPlayerUser::sendSetUserState(std::int32_t state) {
    if (state == 2 || state == 3) {
        char buf[kRequestBytes] = {};
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|a|%d|", 0x61, static_cast<int>(GetGGI()),
                      UidText(GetUID()), state);
        XP_DEBUG_OUT("GLXPlayerUser::sendSetUserState -> buffer = %s\n", buf);
        SendByGet(buf);
    } else if (observer_ != nullptr) {
        observer_->OnRequestFailure(0x61, kInvalidArgument);
    }
}

// 0x83d080 _ZN13GLXPlayerUser18sendGetChatWarningEv
void GLXPlayerUser::sendGetChatWarning() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 99, static_cast<int>(GetGGI()), UidText(GetUID()));
    XP_DEBUG_OUT("[GLXPlayerChat::SendGetChatWarning] -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d13c _ZN13GLXPlayerUser20sendGetAdvAttachmentEi
void GLXPlayerUser::sendGetAdvAttachment(std::int32_t id) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|a|%d|", 0x59, static_cast<int>(GetGGI()),
                  UidText(GetUID()), id);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvAttachment before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d200 _ZN13GLXPlayerUser13sendGetAdvRSSEi
// Sent by POST. An id of -1 leaves out the "p" key.
void GLXPlayerUser::sendGetAdvRSS(std::int32_t id) {
    char buf[kRequestBytes] = {};
    if (id == -1) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x58, static_cast<int>(GetGGI()), UidText(GetUID()));
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%d|", 0x58, static_cast<int>(GetGGI()),
                      UidText(GetUID()), id);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvRSS before String2Blob -> buffer = %s\n", buf);
    SendByPost(buf);
}

// 0x83d2f8 _ZN13GLXPlayerUser21sendGetGameTrophyListEi
void GLXPlayerUser::sendGetGameTrophyList(std::int32_t page) {
    char buf[kRequestBytes] = {};
    if (page == -1) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x56, static_cast<int>(GetGGI()), UidText(GetUID()));
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%d|", 0x56, static_cast<int>(GetGGI()),
                      UidText(GetUID()), page);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetGameTrophyList before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d3f0 _ZN13GLXPlayerUser17sendGetTrophyIconEii
// A mode (rt) of 0..2 is stored at +0xd4 and sent. Other modes send nothing.
void GLXPlayerUser::sendGetTrophyIcon(std::int32_t trophy, std::int32_t mode) {
    if (static_cast<std::uint32_t>(mode) < 3u) {
        trophyIconMode_ = mode;
        char buf[kRequestBytes] = {};
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%d|rt|%d|", 0x54, static_cast<int>(GetGGI()),
                      UidText(GetUID()), trophy, mode);
        XP_DEBUG_OUT("GLXPlayerUser::sendGetTrophyIcon before String2Blob -> buffer = %s\n", buf);
        SendByGet(buf);
    }
}

// 0x83d4d0 _ZN13GLXPlayerUser20sendDelUserStoreDataEPc
void GLXPlayerUser::sendDelUserStoreData(char* key) {
    if (key == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x48, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|k|%s|", 0x48, static_cast<int>(GetGGI()),
                  UidText(GetUID()), key);
    XP_DEBUG_OUT("GLXPlayerUser::sendDelUserStoreData before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d5c0 _ZN13GLXPlayerUser21sendGetUserAvatarListEv
void GLXPlayerUser::sendGetUserAvatarList() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x67, static_cast<int>(GetGGI()), UidText(GetUID()));
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatarList-> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d67c _ZN13GLXPlayerUser17sendDelUserAvatarEPc
void GLXPlayerUser::sendDelUserAvatar(char* avatarKey) {
    if (avatarKey == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x66, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|d|%s|", 0x66, static_cast<int>(GetGGI()),
                  UidText(GetUID()), avatarKey);
    XP_DEBUG_OUT("GLXPlayerUser::sendDelUserAvatar-> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d77c _ZN13GLXPlayerUser20sendUploadUserAvatarEPc
// Formats the upload request and sends it by POST. A null path is reported to the
// observer (slot 3 with 0x47) and nothing is sent. The original returns the POST result;
// the base SendByPost returns nothing, so this returns nothing too.
void GLXPlayerUser::sendUploadUserAvatar(char* path) {
    if (path == nullptr) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(0x47, kInvalidArgument);
        }
        return;
    }
    std::vector<char> buf(std::strlen(path) + 128, '\0');
    std::snprintf(buf.data(), buf.size(), "f|%d|i|%d|u|%s|d|%s|", 71, static_cast<int>(GetGGI()),
                  UidText(GetUID()), path);
    XP_DEBUG_OUT("GLXPlayerUser::sendUploadUserAvatar before String2Blob -> buffer length = %d\n",
                 static_cast<int>(std::strlen(buf.data())));
    SendByPost(buf.data());
}

// 0x83e918 _ZN13GLXPlayerUser15sendAwardTrophyEPii
// The list is the ids joined with commas. As in the original, a count of 1 leaves the list
// empty (its loop is skipped for that count).
void GLXPlayerUser::sendAwardTrophy(std::int32_t* ids, std::int32_t count) {
    if (ids == nullptr || count <= 0) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(85, kInvalidArgument);
        }
        return;
    }
    std::string list;
    if (count != 1) {
        for (std::int32_t i = 0; i < count; ++i) {
            if (i > 0) {
                list += ',';
            }
            list += std::to_string(ids[i]);
        }
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%s|", 85, static_cast<int>(GetGGI()),
                  UidText(GetUID()), list.c_str());
    XP_DEBUG_OUT("GLXPlayerUser::sendAwardTrophy before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83eb14 _ZN13GLXPlayerUser18sendUpdateUserInfoEPciS0_S0_S0_iS0_
// Refused (observer slot 3 with 82) only when every field is unset. Otherwise each set
// field is appended as "|key|value". The request is built in a std::string, so a long
// value is not cut at the 0x80-byte field buffer of the original.
void GLXPlayerUser::sendUpdateUserInfo(char* email, std::int32_t emailFlag, char* country, char* firstName,
                                       char* lastName, std::int32_t sex, char* birthday) {
    const bool nothingToSend = email == nullptr && emailFlag == -1 && country == nullptr &&
                               firstName == nullptr && lastName == nullptr && sex == -1 &&
                               birthday == nullptr;
    if (nothingToSend) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(82, kInvalidArgument);
        }
        return;
    }
    std::string req = "f|82|i|" + std::to_string(static_cast<int>(GetGGI())) + "|u|" + UidText(GetUID());
    if (email != nullptr) {
        req += std::string("|email|") + email;
    }
    if (emailFlag != -1) {
        req += "|email_flag|" + std::to_string(emailFlag);
    }
    if (country != nullptr) {
        req += std::string("|country|") + country;
    }
    if (firstName != nullptr) {
        req += std::string("|firstname|") + firstName;
    }
    if (lastName != nullptr) {
        req += std::string("|lastname|") + lastName;
    }
    if (sex != -1) {
        req += "|sex|" + std::to_string(sex);
    }
    if (birthday != nullptr) {
        req += std::string("|birthday|") + birthday + "|";
    }
    std::vector<char> buf(req.begin(), req.end());
    buf.push_back('\0');
    XP_DEBUG_OUT("GLXPlayerUser::sendUpdateUserInfo before String2Blob -> buffer = %s\n", buf.data());
    SendByGet(buf.data());
}

// 0x83d84c _ZN13GLXPlayerUser22sendDownloadUserAvatarEPc
void GLXPlayerUser::sendDownloadUserAvatar(char* avatarKey) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|d|%s|", 0x65, static_cast<int>(GetGGI()),
                  UidText(GetUID()), avatarKey);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatar before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83d910 _ZN13GLXPlayerUser14sendGetUserUIDEPcb
// The bool selects the "un" key (true) or the "n" key (false).
void GLXPlayerUser::sendGetUserUID(char* name, bool byUserName) {
    if (name == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x3a, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, byUserName ? "f|%d|i|%d|u|%s|un|%s|" : "f|%d|i|%d|u|%s|n|%s|", 0x3a,
                  static_cast<int>(GetGGI()), UidText(GetUID()), name);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserUID before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83da24 _ZN13GLXPlayerUser23sendPointUserReputationEPcib
// The points must be 1 or 5. The bool selects the "un" key (true) or "n" (false).
void GLXPlayerUser::sendPointUserReputation(char* name, std::int32_t points, bool byUserName) {
    if (name == nullptr || (points != 5 && points != 1)) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x44, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, byUserName ? "f|%d|i|%d|u|%s|un|%s|r|%d|" : "f|%d|i|%d|u|%s|n|%s|r|%d|",
                  0x44, static_cast<int>(GetGGI()), UidText(GetUID()), name, points);
    XP_DEBUG_OUT("GLXPlayerUser::sendUpdateReputation before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83db50 _ZN13GLXPlayerUser20sendSetUserStoreDataEPcS0_
// Sent by POST. Without a key the observer gets (0x42, -100) and nothing is sent.
void GLXPlayerUser::sendSetUserStoreData(char* key, char* value) {
    if (key == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x42, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|k|%s|d|%s|", 0x42, static_cast<int>(GetGGI()),
                  UidText(GetUID()), key, value);
    XP_DEBUG_OUT("GLXPlayerUser::sendSetUserStoreData -> buffer length = %d\n",
                 static_cast<int>(std::strlen(buf)));
    SendByPost(buf);
}

// 0x83dc4c _ZN13GLXPlayerUser21sendRetrievalPasswordEPc
void GLXPlayerUser::sendRetrievalPassword(char* name) {
    if (name == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x34, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x34, static_cast<int>(GetGGI()), name);
    XP_DEBUG_OUT("GLXPlayerUser::sendRetrievalPassword before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83dd34 _ZN13GLXPlayerUser15sendChangeEmailEPcS0_S0_
void GLXPlayerUser::sendChangeEmail(char* name, char* password, char* newEmail) {
    if (name == nullptr || password == nullptr || newEmail == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x33, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|ne|%s|", 0x33, static_cast<int>(GetGGI()), name,
                  password, newEmail);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeEmail before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83de3c _ZN13GLXPlayerUser18sendChangePasswordEPcS0_S0_S0_
// The new password must match its repeat (strcmp of the two).
void GLXPlayerUser::sendChangePassword(char* name, char* password, char* newPassword, char* repeat) {
    if (name == nullptr || password == nullptr || newPassword == nullptr || repeat == nullptr ||
        std::strcmp(newPassword, repeat) != 0) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x32, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|np|%s|vp|%s|", 0x32, static_cast<int>(GetGGI()),
                  name, password, newPassword, repeat);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangePassword before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83df58 _ZN13GLXPlayerUser18sendChangeUserNameEPcS0_S0_b
void GLXPlayerUser::sendChangeUserName(char* name, char* password, char* newName, bool keepOther) {
    if (name == nullptr || password == nullptr || newName == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x0e, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|nu|%s|o|%d|", 0x0e, static_cast<int>(GetGGI()), name,
                  password, newName, keepOther ? 1 : 0);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeUserName before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e068 _ZN13GLXPlayerUser14sendGetUsedAppEPc
// Without a name the request uses the user id.
void GLXPlayerUser::sendGetUsedApp(char* name) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x39, static_cast<int>(GetGGI()),
                  name == nullptr ? UidText(GetUID()) : name);
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUsedApp before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e260 _ZN13GLXPlayerUser14sendGetCountryEPcS0_b
void GLXPlayerUser::sendGetCountry(char* name, char* name2, bool flag) {
    if (name == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x36, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    if (name2 == nullptr) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|nf|%d|", 0x35, static_cast<int>(GetGGI()), name,
                      flag ? 1 : 0);
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|n|%s|nf|%d|", 0x35, static_cast<int>(GetGGI()), name,
                      name2, flag ? 1 : 0);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetCountry before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e158 _ZN13GLXPlayerUser17sendChangeCountryEPcS0_S0_
void GLXPlayerUser::sendChangeCountry(char* name, char* password, char* country) {
    if (name == nullptr || password == nullptr || country == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x36, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|nc|%s|", 0x36, static_cast<int>(GetGGI()), name,
                  password, country);
    XP_DEBUG_OUT("GLXPlayerUser::sendChangeCountry before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e384 _ZN13GLXPlayerUser24sendGetGeneralConditionsEPc
// Sent by POST. The trace text names GLXPlayerLogin, which the original logs here.
void GLXPlayerUser::sendGetGeneralConditions(char* language) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|l|%s|", 0x62, static_cast<int>(GetGGI()), UidText(GetUID()),
                  language);
    XP_DEBUG_OUT("GLXPlayerLogin::SendGetGeneralConditions -> buffer = %s\n", buf);
    SendByPost(buf);
}

// 0x83e448 _ZN13GLXPlayerUser15sendGetGameIconEiPc
// The optional parts are appended only when the id is not -1 and the name is set.
void GLXPlayerUser::sendGetGameIcon(std::int32_t gameId, char* name) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x5a, static_cast<int>(GetGGI()), UidText(GetUID()));
    if (gameId != -1) {
        std::strncat(buf, "p|", sizeof buf - std::strlen(buf) - 1);
        char part[256] = {};
        std::snprintf(part, sizeof part, "%d|", gameId);
        std::strncat(buf, part, sizeof buf - std::strlen(buf) - 1);
    }
    if (name != nullptr) {
        char part[256] = {};
        std::snprintf(part, sizeof part, "pn|%s|", name);
        std::strncat(buf, part, sizeof buf - std::strlen(buf) - 1);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetAdvAttachment before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e598 _ZN13GLXPlayerUser22sendGetPromoAttachmentEPci
// The "u" part is appended when the name is set.
void GLXPlayerUser::sendGetPromoAttachment(char* name, std::int32_t attachmentId) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|a|%d|", 0xcd, static_cast<int>(GetGGI()), attachmentId);
    if (name != nullptr) {
        char part[128] = {};
        std::snprintf(part, sizeof part, "u|%s|", name);
        std::strncat(buf, part, sizeof buf - std::strlen(buf) - 1);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetPromoAttachment before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e6a0 _ZN13GLXPlayerUser15sendGetPromoRssEPciiS0_
// Sent by POST. The "u" part is appended when the name is set.
void GLXPlayerUser::sendGetPromoRss(char* name, std::int32_t year, std::int32_t nid, char* language) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|y|%d|nid|%d|l|%s|", 0xcc, static_cast<int>(GetGGI()), year, nid,
                  language);
    if (name != nullptr) {
        char part[128] = {};
        std::snprintf(part, sizeof part, "u|%s|", name);
        std::strncat(buf, part, sizeof buf - std::strlen(buf) - 1);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendGetPromoRss before String2Blob -> buffer = %s\n", buf);
    SendByPost(buf);
}

// Shared shape of the user queries below: a base request, then an optional "|n|name|"
// or "|un|name|" clause chosen by the bool. The base of the first group has no trailing
// '|' and the second group has one, as in the original.
namespace {
void AppendNameClause(char* buf, std::size_t size, const char* name, bool byUserName, const char* lead) {
    if (name == nullptr) {
        return;
    }
    char part[128] = {};
    std::snprintf(part, sizeof part, byUserName ? "%sun|%s|" : "%sn|%s|", lead, name);
    std::strncat(buf, part, size - std::strlen(buf) - 1);
}
}  // namespace

// 0x83ee20 _ZN13GLXPlayerUser15sendGetUserInfoEPcb
void GLXPlayerUser::sendGetUserInfo(char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s", 0x51, static_cast<int>(GetGGI()), UidText(GetUID()));
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserInfo before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83ef50 _ZN13GLXPlayerUser17sendGetUserAvatarEPcb
void GLXPlayerUser::sendGetUserAvatar(char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x46, static_cast<int>(GetGGI()), UidText(GetUID()));
    AppendNameClause(buf, sizeof buf, name, byUserName, "");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserAvatar before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83f080 _ZN13GLXPlayerUser20sendGetUserBestScoreEPcb
void GLXPlayerUser::sendGetUserBestScore(char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s", 0x45, static_cast<int>(GetGGI()), UidText(GetUID()));
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserBestScore before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83f1b0 _ZN13GLXPlayerUser17sendGetReputationEPcb
void GLXPlayerUser::sendGetReputation(char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s", 0x43, static_cast<int>(GetGGI()), UidText(GetUID()));
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetReputation before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83f440 _ZN13GLXPlayerUser16sendGetUserStateEPcb
void GLXPlayerUser::sendGetUserState(char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s", 0x40, static_cast<int>(GetGGI()), UidText(GetUID()));
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserState before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83f2e0 _ZN13GLXPlayerUser20sendGetUserStoreDataEPcS0_b
void GLXPlayerUser::sendGetUserStoreData(char* key, char* name, bool byUserName) {
    if (key == nullptr) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x40, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|k|%s", 0x41, static_cast<int>(GetGGI()), UidText(GetUID()),
                  key);
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserStoreData before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83f570 _ZN13GLXPlayerUser19sendGetUserGameListEPciib
// Both numbers must be non-negative (the original tests their OR).
void GLXPlayerUser::sendGetUserGameList(char* name, std::int32_t first, std::int32_t count, bool byUserName) {
    if ((first | count) < 0) {
        if (observer_ != nullptr) observer_->OnRequestFailure(0x3f, kInvalidArgument);
        return;
    }
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|d|%d|l|%d", 0x3f, static_cast<int>(GetGGI()),
                  UidText(GetUID()), first, count);
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserGameList before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83e7b8 _ZN13GLXPlayerUser25sendGetUserGameTrophyListEiPcb
// The "p" clause is added when the id is not -1; the name clause as in the other queries.
void GLXPlayerUser::sendGetUserGameTrophyList(std::int32_t gameId, char* name, bool byUserName) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s", 0x57, static_cast<int>(GetGGI()), UidText(GetUID()));
    if (gameId != -1) {
        char part[128] = {};
        std::snprintf(part, sizeof part, "|p|%d", gameId);
        std::strncat(buf, part, sizeof buf - std::strlen(buf) - 1);
    }
    AppendNameClause(buf, sizeof buf, name, byUserName, "|");
    XP_DEBUG_OUT("GLXPlayerUser::sendGetUserGameTrophyList before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}
