// GLXPlayerUser response handlers (process*). Each one replaces the field it owns with
// the value in the response text. The response is split on '|' into fields; a record
// inside a field is split on '^' (games, avatars) or ',' (reputation). The original reads
// each field with getValue into a fixed buffer. Here each field is copied into a string
// of its exact length, so no buffer can overflow.
//
// A body that starts with "n" carries the other user's name in field 1, which moves every
// later field by two. Those bodies are handled with the offset `base` below.
#include "net-session-online/glx_player_user.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "core-platform/rss.hpp"
#include "core-platform/slim_xml.hpp"
#include "net-session-online/owned_text.hpp"
#include "net-session-online/xp_api.hpp"

namespace {
constexpr int kBar = '|';    // field separator (delim 124 in the original)
constexpr int kCaret = '^';  // record separator inside a game or avatar field (94)
constexpr int kComma = ',';  // value separator inside the reputation field (44)

// Field index of text (split by delim), copied with getValue. A missing field is "".
std::string Field(const std::string& text, std::int32_t index, int delim = kBar) {
    std::vector<char> src(text.begin(), text.end());
    src.push_back('\0');
    std::vector<char> out(text.size() + 1, '\0');
    getValue(src.data(), out.data(), index, delim);
    return std::string(out.data());
}

std::int32_t IntField(const std::string& text, std::int32_t index, int delim = kBar) {
    return std::atoi(Field(text, index, delim).c_str());
}

// Owned copy of a string, the original's new[] + copy pair.
std::unique_ptr<char[]> OwnedCopy(const std::string& text) {
    auto copy = std::make_unique<char[]>(text.size() + 1);
    std::memcpy(copy.get(), text.c_str(), text.size() + 1);
    return copy;
}

std::unique_ptr<char[]> OwnedField(const std::string& text, std::int32_t index, int delim = kBar) {
    return OwnedCopy(Field(text, index, delim));
}

// Number of '|' separators in text.
std::int32_t CountBars(const std::string& text) {
    std::int32_t count = 0;
    for (const char c : text) {
        if (c == '|') {
            ++count;
        }
    }
    return count;
}
}  // namespace

// 0x83b1ac _ZN13GLXPlayerUser11setPasswordEPc
// Replaces the password with a copy of the text (null stays null, "" stays "").
void GLXPlayerUser::setPassword(char* password) { password_ = OwnedDup(password); }

// 0x83adec _ZN13GLXPlayerUser15processLiveFeedsEPc
// The count is field 0 (+0x128). When it is above zero the _LiveFeed array is rebuilt: entry i
// takes field i+1 of the response, split on '^' into its two owned buffers. When the count is
// not above zero the array is kept, as in the original. Deviation: a field that is not found
// gives an empty buffer here; the original's buffer state for that case is not confirmed.
void GLXPlayerUser::processLiveFeeds(char* response) {
    const std::string body = response != nullptr ? std::string(response) : std::string();
    liveFeedCount_ = IntField(body, 0);
    if (liveFeedCount_ <= 0) {
        return;
    }
    liveFeeds_.clear();
    for (std::int32_t i = 0; i < liveFeedCount_; ++i) {
        const std::string record = Field(body, i + 1);
        liveFeeds_.push_back(std::make_unique<_LiveFeed>(OwnedField(record, 0, kCaret).release(),
                                                         OwnedField(record, 1, kCaret).release()));
    }
}

// 0x83afb8 _ZN13GLXPlayerUser22processUserChatWarningEPc
void GLXPlayerUser::processUserChatWarning(char* text) { chatWarning_ = OwnedNonEmpty(text); }

// 0x83b028 _ZN13GLXPlayerUser22processPromoAttachmentEPc
void GLXPlayerUser::processPromoAttachment(char* text) { promoAttachment_ = OwnedNonEmpty(text); }

// 0x83b074 _ZN13GLXPlayerUser20processRssAttachmentEPc
void GLXPlayerUser::processRssAttachment(char* text) { rssAttachment_ = OwnedNonEmpty(text); }

// 0x83b0c0 _ZN13GLXPlayerUser21processUserTrophyIconEPc
// The trophy-icon mode (+0xd4) picks the field: mode 0 stores the text at +0xcc, mode 1 at
// +0xd0, and mode 2 splits the text into both (field 1 to +0xd0, field 3 to +0xcc).
void GLXPlayerUser::processUserTrophyIcon(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    switch (trophyIconMode_) {
        case 0:
            iconText0_ = OwnedCopy(body);
            break;
        case 1:
            iconText1_ = OwnedCopy(body);
            break;
        case 2:
            iconText1_ = OwnedField(body, 1);
            iconText0_ = OwnedField(body, 3);
            break;
        default:
            break;
    }
}

// 0x83b1e0 _ZN13GLXPlayerUser19processGetPromo_RSSEPc
// The response is parsed as an XML document (slim::XmlDocument) and its "rss" child is read into
// the feed at +0xf8 (promoRss_) with rss::read. The original calls strlen on the response without a
// check; a null response is ignored here instead of faulting.
void GLXPlayerUser::processGetPromo_RSS(char* response) {
    if (response == nullptr) {
        return;
    }
    slim::XmlDocument doc;
    doc.loadFromMemory(response, static_cast<unsigned int>(std::strlen(response)));
    if (const slim::XmlNode* rssNode = doc.findChild("rss")) {
        promoRss_.read(rssNode);
    }
}

// 0x83b280 _ZN13GLXPlayerUser17processGetADV_RSSEPc
// Same parse as processGetPromo_RSS, into the feed at +0xe8 (advRss_). Null handling as above.
void GLXPlayerUser::processGetADV_RSS(char* response) {
    if (response == nullptr) {
        return;
    }
    slim::XmlDocument doc;
    doc.loadFromMemory(response, static_cast<unsigned int>(std::strlen(response)));
    if (const slim::XmlNode* rssNode = doc.findChild("rss")) {
        advRss_.read(rssNode);
    }
}

// 0x83b320 _ZN13GLXPlayerUser19processUserGameIconEPc
// Partial. Frees the game icon (+0xc8), then stores field 1 with XP_API_PARSE_DATA_NEW, as the
// original does. That callee keeps the separator after a field that ends at one, so "0|iconA|x"
// stores "iconA|" (see 0x82b634). Field 3 is stored at +0xdc (unk_dc_) and field 5 is read as an
// int into +0xe4 (unk_e4_). Not reconstructed: when field 1 is not found, the original copies from
// one byte before the text (an out-of-bounds read); the port stores an empty icon there. The
// original also copies field 3 into an 8-byte buffer with no bound; the port keeps the whole field.
void GLXPlayerUser::processUserGameIcon(char* text) {
    gameIcon_.reset();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    char* icon = nullptr;
    (void)XP_API_PARSE_DATA_NEW(text, &icon, 1, kBar);
    gameIcon_.reset(icon);
    const std::string body(text);
    unk_dc_ = OwnedField(body, 3);
    unk_e4_ = IntField(body, 5);
}

// 0x83b424 _ZN13GLXPlayerUser21processUserAvatarListEPc
// Clears the list, then reads one record per field. A record is key^last-update^status.
// The count is 1 plus the number of '|' separators.
void GLXPlayerUser::processUserAvatarList(char* text) {
    clearAvatarList();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    const std::int32_t count = 1 + CountBars(body);
    avatarCount_ = count;
    for (std::int32_t i = 0; i < count; ++i) {
        const std::string record = Field(body, i);
        avatarKeys_.push_back(OwnedField(record, 0, kCaret));
        avatarLastUpdates_.push_back(OwnedField(record, 1, kCaret));
        avatarStatus_.push_back(IntField(record, 2, kCaret));
    }
}

// 0x83b620 _ZN13GLXPlayerUser15processUserDataEPc
// Frees the user data (+0xc0). A body that starts with "n" also stores field 1 as the other
// user's name (+0xc4); the data is then field 2.
void GLXPlayerUser::processUserData(char* text) {
    userData_.reset();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    std::int32_t index = 0;
    if (Field(body, 0) == "n") {
        otherUserName_ = OwnedField(body, 1);
        index = 2;
    }
    userData_ = OwnedField(body, index);
}

// 0x83b724 _ZN13GLXPlayerUser21processDownloadAvatarEPc
// Frees the avatar data (+0xb8). A body whose first field is not "n" stores that field as the
// avatar data. A body that starts with "n" stores field 1 as the other user's name (+0xc4) and
// field 2 as the other avatar data (+0xbc). The original does not free an earlier +0xc4 or
// +0xbc in that case; the port replaces them.
void GLXPlayerUser::processDownloadAvatar(char* text) {
    avatarData_.reset();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    if (Field(body, 0) != "n") {
        avatarData_ = OwnedCopy(Field(body, 0));
    } else {
        otherUserName_ = OwnedField(body, 1);
        otherAvatarData_ = OwnedField(body, 2);
    }
}

// 0x83b82c _ZN13GLXPlayerUser17processUserAvatarEPc
// The non-"n" form stores the key (+0xa8) and last update (+0xb0) after a "d" and a "t" flag.
// The "n" form stores the other user's name (+0xc4) and, after the same flags, the other key
// (+0xac) and other last update (+0xb4). The key is field 3 when field 2 is "d", and the
// last-update flag and value follow it.
void GLXPlayerUser::processUserAvatar(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    if (Field(body, 0) != "n") {
        std::int32_t flagIndex = 1;
        std::int32_t valueIndex = 2;
        if (Field(body, 0) == "d") {
            avatarKey_ = OwnedField(body, 1);
            flagIndex = 2;
            valueIndex = 3;
        }
        if (Field(body, flagIndex) == "t") {
            avatarLastUpdate_ = OwnedField(body, valueIndex);
        }
    } else {
        otherUserName_ = OwnedField(body, 1);
        const bool keyForm = Field(body, 2) == "d";
        if (keyForm) {
            otherAvatarKey_ = OwnedField(body, 3);
        }
        const std::int32_t flagIndex = keyForm ? 4 : 3;
        const std::int32_t valueIndex = keyForm ? 5 : 4;
        if (Field(body, flagIndex) == "t") {
            otherAvatarLastUpdate_ = OwnedField(body, valueIndex);
        }
    }
}

// 0x83bae4 _ZN13GLXPlayerUser20processUserBestScoreEPc
// A body that starts with "n" stores field 1 as the other user's name and reads the score
// from field 2. Otherwise the score is field 0.
void GLXPlayerUser::processUserBestScore(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    if (Field(body, 0) == "n") {
        otherUserName_ = OwnedField(body, 1);
        bestScore_ = IntField(body, 2);
    } else {
        bestScore_ = IntField(body, 0);
    }
}

// 0x83bbf0 _ZN13GLXPlayerUser22processUserInformationEPc
// Clears the user information first. The fields are read from the offset `base`, which is
// 2 for the "n" form (the other user's name is field 1) and 0 otherwise.
void GLXPlayerUser::processUserInformation(char* text) {
    clearUserInformation();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    const bool otherForm = Field(body, 0) == "n";
    if (otherForm) {
        otherUserName_ = OwnedField(body, 1);
    }
    const std::int32_t base = otherForm ? 2 : 0;
    string40_ = OwnedField(body, base + 1);
    userName_ = OwnedField(body, base + 3);
    email_ = OwnedField(body, base + 5);
    emailFlag_ = IntField(body, base + 7) != 0 ? 1 : 0;
    country_ = OwnedField(body, base + 9);
    avatarKey_ = OwnedField(body, base + 11);
    avatarLastUpdate_ = OwnedField(body, base + 13);
    reputation_ = static_cast<double>(IntField(body, base + 15));
    firstName_ = OwnedField(body, base + 17);
    lastName_ = OwnedField(body, base + 19);
    sex_ = IntField(body, base + 21) != 0 ? 1 : 0;
    birthday_ = OwnedField(body, base + 23);
    onlineTime_ = IntField(body, base + 25);
    totalTrophy_ = IntField(body, base + 27);
    string124_ = OwnedField(body, base + 29);
}

// 0x83c040 _ZN13GLXPlayerUser17processUserTrophyEPc
// Same shape as processUserBestScore, for the trophy count.
void GLXPlayerUser::processUserTrophy(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    if (Field(body, 0) == "n") {
        otherUserName_ = OwnedField(body, 1);
        trophy_ = IntField(body, 2);
    } else {
        trophy_ = IntField(body, 0);
    }
}

// 0x83c14c _ZN13GLXPlayerUser16processUserStateEPc
// Clears the state first. The state value is field 1 of the "t" form (field 3 after the other
// user's name). The token at +0x88 is the next field after the flag field: field 3 for "t",
// and field 4 or 5 for the "n" and "un" forms, depending on field 2. The "a" flag value at
// +0x80 follows the token.
void GLXPlayerUser::processUserState(char* text) {
    clearUserState();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    const std::string kind = Field(body, 0);
    if (kind != "n" && kind != "un") {
        if (kind == "t") {
            currentState_ = IntField(body, 1);
            unk_88_ = OwnedField(body, 3);
            if (Field(body, 4) == "a") {
                field80_ = IntField(body, 5);
            }
        }
        return;
    }
    otherUserName_ = OwnedField(body, 1);
    if (Field(body, 2) != "t") {
        unk_88_ = OwnedField(body, 4);
        if (Field(body, 5) == "a") {
            field80_ = IntField(body, 6);
        }
    } else {
        currentState_ = IntField(body, 3);
        unk_88_ = OwnedField(body, 5);
        if (Field(body, 6) == "a") {
            field80_ = IntField(body, 7);
        }
    }
}

// 0x83c484 _ZN13GLXPlayerUser19processUserGameListEPc
// Clears the game list first. Each game is a record pid^name^trophy in fields 0 onward, or
// from field 2 in the "n" form. The count is the number of '|' separators, plus 2 minus the
// number of leading fields (1 or 2), as in the original.
void GLXPlayerUser::processUserGameList(char* text) {
    clearUserGameList();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    std::int32_t leading = 1;
    std::int32_t offset = 0;
    if (Field(body, 0) == "n") {
        otherUserName_ = OwnedField(body, 1);
        leading = 2;
        offset = 2;
    }
    const std::int32_t count = CountBars(body) + 2 - leading;
    gameCount_ = count;
    for (std::int32_t i = 0; i < count; ++i) {
        const std::string record = Field(body, i + offset);
        gamePid_.push_back(OwnedField(record, 0, kCaret));
        gameName_.push_back(OwnedField(record, 1, kCaret));
        gameTrophy_.push_back(IntField(record, 2, kCaret));
    }
}

// 0x83c6f8 _ZN13GLXPlayerUser21processUserReputationEPc
// A body that starts with "n" stores field 1 as the other user's name, and the reputation
// is then field 2. The reputation is "value,bad,good": a double, then two ints.
void GLXPlayerUser::processUserReputation(char* text) {
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::string body(text);
    std::int32_t index = 0;
    if (Field(body, 0) == "n") {
        otherUserName_ = OwnedField(body, 1);
        index = 2;
    }
    const std::string reputation = Field(body, index);
    reputation_ = std::atof(Field(reputation, 0, kComma).c_str());
    badReputation_ = IntField(reputation, 1, kComma);
    goodReputation_ = IntField(reputation, 2, kComma);
}

// 0x83c894 _ZN13GLXPlayerUser15OnUpdateSuccessEi
// Routes the response by code to the handler for it, then calls the base, which reports the
// response text to the observer. Code 58 stores the whole text at +0x3c. Code 98 stores its
// two tokens at +0x11c ("d" flag) and +0x120 ("t" flag). The original returns the base result;
// the port's base is void, so nothing is returned.
void GLXPlayerUser::OnUpdateSuccess(std::int32_t code) {
    const std::string body = cursor_ != nullptr ? std::string(cursor_) : std::string();
    std::vector<char> buffer(body.begin(), body.end());
    buffer.push_back('\0');
    char* text = buffer.data();

    switch (code) {
        case 53:
            country_ = OwnedField(body, 1);
            break;
        case 58:
            unk_3c_ = OwnedCopy(body);
            break;
        case 63:
            otherUserName_.reset();
            processUserGameList(text);
            break;
        case 64:
            otherUserName_.reset();
            processUserState(text);
            break;
        case 65:
            otherUserName_.reset();
            processUserData(text);
            break;
        case 67:
            otherUserName_.reset();
            processUserReputation(text);
            break;
        case 69:
            otherUserName_.reset();
            processUserBestScore(text);
            break;
        case 70:
            otherUserName_.reset();
            processUserAvatar(text);
            break;
        case 71:
            processUploadAvatar(text);
            break;
        case 81:
            otherUserName_.reset();
            processUserInformation(text);
            break;
        case 84:
            processUserTrophyIcon(text);
            break;
        case 88:
            processGetADV_RSS(text);
            break;
        case 89:
            processRssAttachment(text);
            break;
        case 90:
            processUserGameIcon(text);
            break;
        case 98: {
            // Each token is kept when its flag matches: "d" stores at +0x11c, "t" at +0x120.
            std::vector<char> token(body.size() + 256, '\0');
            if (IsNextResponseStringToken("d")) {
                unk_11c_ = OwnedCopy(GetNextResponseToken(token.data()));
            }
            if (IsNextResponseStringToken("t")) {
                unk_120_ = OwnedCopy(GetNextResponseToken(token.data()));
            }
            break;
        }
        case 99:
            processUserChatWarning(text);
            break;
        case 101:
            processDownloadAvatar(text);
            break;
        case 103:
            processUserAvatarList(text);
            break;
        case 111:
            processLiveFeeds(text);
            break;
        case 204:
            processGetPromo_RSS(text);
            break;
        case 205:
            processPromoAttachment(text);
            break;
        default:
            break;
    }
    GLXPlayerWebComponent::OnUpdateSuccess(code);
}
