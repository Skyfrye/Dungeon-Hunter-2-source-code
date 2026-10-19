#include "net-session-online/glx_player_serever_config.hpp"

#include <cstring>
#include <ctime>

char GLXPlayerSereverConfig::s_GameVersion[0x32] = {};
std::int32_t GLXPlayerSereverConfig::m_webConfig_ggi = 0;
std::map<std::string, std::string> GLXPlayerSereverConfig::s_urlMap;

// 0x82e898 _ZN22GLXPlayerSereverConfigC1EPKc (C2 at 0x82e94c has the same body)
// Allocates the server and local date objects (+0x3c, +0x40), fills the local date with the current
// time, loads oconf.bar, then builds the request client (+0x20) from the host (+0x10), the path (+0x14)
// and the third string (+0x18), as the original does. The server date is zeroed here; the original
// leaves its 8 bytes uninitialised until the server answers.
GLXPlayerSereverConfig::GLXPlayerSereverConfig(const char* gameVersion) {
    std::memset(s_GameVersion, 0, sizeof(s_GameVersion));
    if (gameVersion != nullptr) {
        std::strncpy(s_GameVersion, gameVersion, sizeof(s_GameVersion) - 1);
    }
    serverDate_ = new GameDate{};
    localDate_ = new GameDate{};
    GetCurTimeDate(localDate_);
    GLXPlayerSereverConfig::LoadConfig();
    requestClient_ = std::make_unique<GLXPlayerHttp>(string10_.get(), string18_.get(), string14_.get());
}

// 0x82e7ac _ZN22GLXPlayerSereverConfigD1Ev (D2 at 0x82e830): frees the two date objects.
GLXPlayerSereverConfig::~GLXPlayerSereverConfig() {
    delete serverDate_;
    serverDate_ = nullptr;
    delete localDate_;
    localDate_ = nullptr;
}

// 0x82dffc _ZN22GLXPlayerSereverConfig6GetGgiEv
std::int32_t GLXPlayerSereverConfig::GetGgi() { return m_webConfig_ggi; }

// 0x82e01c _ZN22GLXPlayerSereverConfig14GetGameVersionEv
char* GLXPlayerSereverConfig::GetGameVersion() { return s_GameVersion; }

// 0x82e038 _ZN22GLXPlayerSereverConfig11isOutOfDateEi
// The server year is compared first. In the same year the server day plus the given days is
// compared with the local day.
bool GLXPlayerSereverConfig::isOutOfDate(std::int32_t days) const {
    const std::int32_t serverYear = serverDate_->year;
    const std::int32_t localYear = localDate_->year;
    if (serverYear < localYear) {
        return true;
    }
    if (serverYear == localYear) {
        return days + serverDate_->yday < localDate_->yday;
    }
    return false;
}

// 0x82e084 _ZN22GLXPlayerSereverConfig14GetCurTimeDateEP8GameDate
void GLXPlayerSereverConfig::GetCurTimeDate(GameDate* out) {
    const std::time_t now = std::time(nullptr);
    const std::tm* local = std::localtime(&now);
    out->year = local->tm_year;
    out->yday = local->tm_yday;
}

// 0x82ecfc _ZN22GLXPlayerSereverConfig8GetValueEPKc
// A map lookup. A missing key gives s_emptyUrl, which is a one-byte zeroed object in .bss (the symbol
// size is 1), so it is the empty string.
const char* GLXPlayerSereverConfig::GetValue(const char* key) {
    static const char kEmptyUrl[] = "";
    const auto it = s_urlMap.find(key != nullptr ? key : "");
    return it == s_urlMap.end() ? kEmptyUrl : it->second.c_str();
}

// 0x82eefc _ZN22GLXPlayerSereverConfig17GetGameMinVersionEv
// Forwards the literal "min" (the ARM listing loads "min" for GetValue).
const char* GLXPlayerSereverConfig::GetGameMinVersion() const { return GetValue("min"); }

// 0x82ef0c _ZN22GLXPlayerSereverConfig20GetGameLatestVersionEv
const char* GLXPlayerSereverConfig::GetGameLatestVersion() const { return GetValue("latest"); }

// 0x82ef1c _ZN22GLXPlayerSereverConfig17GetChatRoomDomainEv
const char* GLXPlayerSereverConfig::GetChatRoomDomain() const { return GetValue("ChatRoomDomain"); }

// 0x82ef2c _ZN22GLXPlayerSereverConfig13GetChatDomainEv
const char* GLXPlayerSereverConfig::GetChatDomain() const { return GetValue("ChatDomain"); }

// 0x82ef3c _ZN22GLXPlayerSereverConfig13GetChatServerEv
const char* GLXPlayerSereverConfig::GetChatServer() const { return GetValue("ChatServer"); }

// 0x82ef4c _ZN22GLXPlayerSereverConfig13GetwebURLTypeEv
const char* GLXPlayerSereverConfig::GetwebURLType() const { return GetValue("type"); }

// 0x82ef5c _ZN22GLXPlayerSereverConfig9GetPhpVerEv
const char* GLXPlayerSereverConfig::GetPhpVer() { return GetValue("XPPHPVerNo"); }

// 0x82ef6c _ZN22GLXPlayerSereverConfig15GetXPlayerMPURLEv
const char* GLXPlayerSereverConfig::GetXPlayerMPURL() const { return GetValue("XPlayMPURL"); }

// 0x82ef7c _ZN22GLXPlayerSereverConfig15GetXPlayerDWURLEv
const char* GLXPlayerSereverConfig::GetXPlayerDWURL() const { return GetValue("XplayDWURL"); }

// 0x82ef8c _ZN22GLXPlayerSereverConfig13GetXPlayerURLEv
const char* GLXPlayerSereverConfig::GetXPlayerURL() { return GetValue("XplayerURL"); }

void GLXPlayerSereverConfig::SetValueForTest(const std::string& key, const std::string& value) {
    s_urlMap[key] = value;
}

void GLXPlayerSereverConfig::SetDatesForTest(GameDate* server, GameDate* local) {
    delete serverDate_;
    delete localDate_;
    serverDate_ = server;
    localDate_ = local;
}
