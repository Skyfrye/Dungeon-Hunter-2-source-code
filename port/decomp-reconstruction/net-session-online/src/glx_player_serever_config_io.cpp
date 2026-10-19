#include "net-session-online/glx_player_serever_config.hpp"

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/xp_api.hpp"

bool GLXPlayerSereverConfig::s_isLoadConfig = false;
bool GLXPlayerSereverConfig::m_isConfigured = false;

namespace {

// The owned-copy helper the original's XP_API_STRNEW calls stand for.
std::unique_ptr<char[]> CopyText(const std::string& text) {
    std::unique_ptr<char[]> copy(new char[text.size() + 1]);
    std::memcpy(copy.get(), text.c_str(), text.size() + 1);
    return copy;
}

// Service URL the config is loaded from. The host and path are split from it in LoadConfig.
constexpr const char kServiceUrl[] = "http://gllive.gameloft.com/ope/ServerConfig.php";

}  // namespace

// 0x82e0bc _ZN22GLXPlayerSereverConfig16SaveServerConfigEv
// Partial: the original formats each line into a 255-byte buffer with sprintf and does not bound it.
// The port builds the text with std::string. The local date is written as 0-0 when it is null,
// because the ctor port does not allocate it.
std::int32_t GLXPlayerSereverConfig::SaveServerConfig() {
    const std::int32_t handle = XP_API_FILE_OPEN("serverConfig.sav", "wb");
    if (handle == 0) {
        XP_DEBUG_OUT("SaveProfile(), Error creating file %s \n", "serverConfig.sav");
        return 0;
    }
    const GameDate date = localDate_ != nullptr ? *localDate_ : GameDate{0, 0};

    std::string text = std::string("GameVer: ") + s_GameVersion + "\r\n";
    text += "GGI: " + std::to_string(static_cast<std::int32_t>(GetGGI())) + "\r\n";
    text += "Date: " + std::to_string(date.year) + "-" + std::to_string(date.yday) + "\r\n";
    // The original walks the std::map tree in order, which is the map's own iteration order.
    for (const auto& entry : s_urlMap) {
        text += entry.first + ": " + entry.second + "\r\n";
    }

    XP_API_FILE_WRITE(text.data(), 1, text.size(), handle);
    XP_API_FILE_CLOSE(handle);
    return 1;
}

// 0x82e3b4 _ZN22GLXPlayerSereverConfig10LoadConfigEv
// Partial: the original returns 1 when oconf.bar was read and 0 when it is missing. The base class
// declares LoadConfig as void, so the result is dropped. Each line is split at the first ':'. A
// line with a GGI key sets the GGI. A value longer than 255 bytes is cut here; the original copies it
// unbounded.
void GLXPlayerSereverConfig::LoadConfig() {
    const std::int32_t handle = XP_API_FILE_OPEN("oconf.bar", "r");
    if (handle == 0) {
        XP_DEBUG_OUT("[GLXPlayerSereverConfig] load config - %s not found \n", "oconf.bar");
        return;
    }
    const std::int32_t length = XP_API_FILE_GET_LENGTH(handle);
    const auto size = static_cast<std::size_t>(length);
    std::vector<char> file(size + 1, 0);
    XP_API_FILE_READ(file.data(), size, 1, handle);

    std::vector<char> line(size + 1, 0);
    XP_API_PARSE_DATA(file.data(), line.data(), 0, 10);
    std::int32_t firstLength = static_cast<std::int32_t>(XP_API_STRLEN(line.data()));
    if (firstLength > 0 && line[static_cast<std::size_t>(firstLength - 1)] == 13) {
        line[static_cast<std::size_t>(firstLength - 1)] = 0;
    }

    // Service URL, split into host (+0x10 in the base, string10_) and path (string14_).
    url_ = CopyText(kServiceUrl);
    const std::string url(kServiceUrl);
    std::vector<char> urlBuf(url.begin(), url.end());
    urlBuf.push_back('\0');
    std::vector<char> field(url.size() + 1, 0);
    const std::int32_t hostOffset = XP_API_PARSE_DATA(urlBuf.data(), field.data(), 2, 47);
    const std::string rest = hostOffset >= 0 ? url.substr(static_cast<std::size_t>(hostOffset)) : std::string();
    std::vector<char> restBuf(rest.begin(), rest.end());
    restBuf.push_back('\0');
    std::vector<char> host(rest.size() + 1, 0);
    XP_API_PARSE_DATA(restBuf.data(), host.data(), 0, 47);
    const std::string hostText(host.data());
    string10_ = CopyText(hostText);
    string14_ = CopyText(rest.substr(hostText.size()));

    if (firstLength > 0) {
        for (std::int32_t i = 1;; ++i) {
            char key[32];
            char value[256];
            std::memset(key, 0, sizeof key);
            std::memset(value, 0, sizeof value);
            XP_API_PARSE_DATA(line.data(), key, 0, 58);
            const std::int32_t valueOffset = XP_API_PARSE_DATA(line.data(), value, 1, 58);
            std::memset(value, 0, sizeof value);
            const std::size_t lineLength = XP_API_STRLEN(line.data());
            if (valueOffset >= 0 && static_cast<std::size_t>(valueOffset) <= lineLength) {
                const std::size_t copyLength =
                    std::min(lineLength - static_cast<std::size_t>(valueOffset), sizeof value - 1);
                std::memcpy(value, line.data() + valueOffset, copyLength);
            }
            XP_API_STRTRIM(key);
            XP_API_STRTRIM(value);
            if (std::strcmp(key, "GGI") == 0) {
                const auto ggi = static_cast<std::int32_t>(XP_API_ATOI(value));
                SetGGI(static_cast<unsigned long>(ggi));
                m_webConfig_ggi = ggi;
            }

            // Next line. An empty line ends the file.
            std::memset(line.data(), 0, line.size());
            XP_API_PARSE_DATA(file.data(), line.data(), i, 10);
            const auto len = static_cast<std::int32_t>(XP_API_STRLEN(line.data()));
            if (len <= 0) {
                break;
            }
            if (line[static_cast<std::size_t>(len - 1)] == 13) {
                line[static_cast<std::size_t>(len - 1)] = 0;
            }
        }
    }
    XP_API_FILE_CLOSE(handle);
}

// 0x82f6d8 _ZN22GLXPlayerSereverConfig15OnUpdateSuccessEi
// Partial: the completeness check tests three keys, "XplayerURL", "type" (the char[5] key, from the
// _M_find<char [5]> clone at 0x82f178) and "XPPHPVerNo". The original copies each token into 52- and
// 28-byte stack buffers with a 0x1000-byte memcpy (an overflow for long tokens); the port reads
// tokens into 256-byte buffers. Other codes go to the base class. A null cursor or observer is
// treated as empty or absent.
void GLXPlayerSereverConfig::OnUpdateSuccess(std::int32_t arg) {
    if (arg != 1) {
        GLXPlayerWebComponent::OnUpdateSuccess(arg);
        return;
    }
    auto next = [this]() {
        char token[256];
        std::memset(token, 0, sizeof token);
        GetNextResponseToken(token);
        return std::string(token);
    };

    // Pairs of tokens: key, value. The "configured" key sets the configured flag and the token after
    // it starts the next pair.
    std::string key = next();
    while (!key.empty()) {
        std::string value = next();
        if (key == "configured") {
            if (value.empty()) {
                key = next();
                continue;
            }
            m_isConfigured = XP_API_ATOI(value.data()) == 1;
            std::string following = next();
            if (following.empty()) {
                break;
            }
            key = following;
            continue;
        }
        if (!value.empty()) {
            s_urlMap.insert({key, value});  // insert_unique: an existing key is kept
        }
        key = next();
    }

    const bool hasUrl = s_urlMap.count("XplayerURL") != 0;
    const bool hasType = s_urlMap.count("type") != 0;
    const bool hasPhpVersion = s_urlMap.count("XPPHPVerNo") != 0;
    if (!hasUrl || !hasType || !hasPhpVersion) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(1, 40);
        }
        return;
    }
    s_isLoadConfig = true;
    SaveServerConfig();
    if (observer_ != nullptr) {
        const char* text = cursor_ != nullptr ? cursor_ : "";
        observer_->OnRequestSuccess(1, const_cast<char*>(text), static_cast<std::int32_t>(std::strlen(text)));
    }
}

// 0x82f940 _ZN22GLXPlayerSereverConfig15OnUpdateFailureEi
// Partial: the original copies each key with a 0x1000-byte memcpy into a 52-byte buffer. The port
// reads each token into a 256-byte buffer instead (the base's contract).
bool GLXPlayerSereverConfig::OnUpdateFailure(std::int32_t code) {
    const std::int32_t token = GetNextResponseIntToken();
    if (code == 1 && token == 101) {
        auto next = [this]() {
            char text[256];
            std::memset(text, 0, sizeof text);
            GetNextResponseToken(text);
            return std::string(text);
        };
        for (;;) {
            std::string key = next();
            if (key.empty()) {
                break;
            }
            std::string value = next();
            if (!value.empty()) {
                s_urlMap.insert({key, value});
            }
        }
    }
    if (observer_ != nullptr) {
        observer_->OnRequestFailure(code, token);
    }
    return true;
}
