// GLXPlayerLeaderboard request senders. Each formats an "f|kind|i|GGI|u|UID|..." request into a
// 0x1000-byte buffer and hands it to SendByGet.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_leaderboard.hpp"

namespace {
constexpr std::size_t kRequestBytes = 0x1000;

// A missing user id is written as an empty string, as in the other request builders.
const char* UidText(const char* uid) { return uid != nullptr ? uid : ""; }

// Appends formatted text to the end of the request buffer (the original's sprintf(&buf[strlen], ...)).
template <typename... Args>
void AppendFormat(char* buf, const char* format, Args... args) {
    const std::size_t used = std::strlen(buf);
    std::snprintf(buf + used, kRequestBytes - used, format, args...);
}
}  // namespace

// 0x832cc4 _ZN20GLXPlayerLeaderboard23sendRankGetAroundPlayerEiii
// The optional "l|first|" field is added when first >= 0, as in the original.
void GLXPlayerLeaderboard::sendRankGetAroundPlayer(std::int32_t first, std::int32_t page, std::int32_t time) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%d|t|%d|", 0x70, static_cast<int>(GetGGI()),
                  UidText(GetUID()), page, time);
    if (first >= 0) {
        AppendFormat(buf, "l|%d|", first);
    }
    withScores_ = false;
    XP_DEBUG_OUT("GLXPlayerUser::sendRankGetAroundPlayer_new before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x832dc4 _ZN20GLXPlayerLeaderboard11sendRankGetEiiiib
// The optional "l|first|" field is added when first >= 0, as in the original.
void GLXPlayerLeaderboard::sendRankGet(std::int32_t first, std::int32_t x, std::int32_t page, std::int32_t time,
                                       bool withScores) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%d|t|%d|x|%d|c|%d|", 0x6f, static_cast<int>(GetGGI()),
                  UidText(GetUID()), page, time, x, withScores ? 1 : 0);
    if (first >= 0) {
        AppendFormat(buf, "l|%d|", first);
    }
    withScores_ = withScores;
    XP_DEBUG_OUT("GLXPlayerUser::sendRankGet_new before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x832ee4 _ZN20GLXPlayerLeaderboard13sendHighScoreEPc
// The original appends the score text with sprintf(buf + len, score), so it is used as a format
// string there. The port appends it as plain text.
void GLXPlayerLeaderboard::sendHighScore(const char* score) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x6e, static_cast<int>(GetGGI()), UidText(GetUID()));
    const std::size_t used = std::strlen(buf);
    std::snprintf(buf + used, sizeof buf - used, "%s", score != nullptr ? score : "");
    XP_DEBUG_OUT("GLXPlayerUser::sendMultipleHighscores_new before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x832fb8 _ZN20GLXPlayerLeaderboard13sendHighScoreEiii
std::int32_t GLXPlayerLeaderboard::sendHighScore(std::int32_t s, std::int32_t l, std::int32_t t) {
    char buf[kRequestBytes] = {};
    if (l < 0) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%d|s|%d|", 0x6e, static_cast<int>(GetGGI()),
                      UidText(GetUID()), t, s);
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|l|%d|t|%d|s|%d|", 0x6e, static_cast<int>(GetGGI()),
                      UidText(GetUID()), l, t, s);
    }
    XP_DEBUG_OUT("GLXPlayerUser::sendHighscore before String2Blob -> buffer = %s\n", buf);
    return SendByGet(buf);
}
