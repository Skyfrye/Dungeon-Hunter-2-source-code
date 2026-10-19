// Track B batch e1-net-session-online-GLXPlayerSereverConfig-0: SendGetServerConfig,
// loadConfigFromLocal and Update. The other GLXPlayerSereverConfig bodies are in
// glx_player_serever_config.cpp and glx_player_serever_config_io.cpp.
//
// Not reproduced: the _android_log_write trace lines (RETURNNNNNNNNNN) in SendGetServerConfig.
// The port has no log stand-in, and the lines are trace-only.

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/time_util.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_http.hpp"
#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/xp_api.hpp"
#include "tinyxml-and-c-libs/ssencdec.hpp"

namespace {

// The request is answered within this many time units (the original's 18000 limit).
constexpr std::int32_t kRequestTimeout = 18000;

// XP_API_GET_TIME (0x82b138): gettimeofday in milliseconds, the same formula as OS_GetTime (0x89d368).
// The inline stand-in in deps/glx_stand_ins.hpp returns 0, which would disable the timeout.
std::uint32_t ClockMs() { return static_cast<std::uint32_t>(OS_GetTime()); }

}  // namespace

// 0x82eaac _ZN22GLXPlayerSereverConfig19SendGetServerConfigERi
// Partial: the "b=" blob comes from SSEncDec_String2Blob (0x82b5c8, tinyxml-and-c-libs), which the
// original calls here. The _android_log_write trace lines are not reproduced.
//
// Status out: -1 when the GGI or the game version is empty (the call returns false); 1 when the
// config is already loaded (the call returns true and sends nothing); 0 when the request was sent.
// The map reset (s_urlMap) runs only before a new request, as the original does.
bool GLXPlayerSereverConfig::SendGetServerConfig(std::int32_t& status) {
    // The original reads its own GGI (+0x08) and the static version string.
    if (GetGGI() == 0 || XP_API_STRLEN(s_GameVersion) == 0) {
        status = -1;
        return false;
    }
    if (s_isLoadConfig) {
        status = 1;
        return true;
    }

    // Drop the URL map before the new request. The original clears the tree only when it is
    // not empty; clearing an empty map is the same.
    s_urlMap.clear();

    // The request text: "f|1|i|<GGI>|v|<version>|" (the original's 0x1000-byte buffer).
    char buffer[0x1000] = {};
    std::snprintf(buffer, sizeof buffer, "f|%d|i|%d|v|%s|", 1, static_cast<int>(GetGGI()), s_GameVersion);
    XP_DEBUG_OUT("[GetWebConfig] before String2Blob -> buffer = %s\n", buffer);

    enabled_ = true;

    // "b=<blob>" sent by GET. SSEncDec_String2Blob returns a new[] buffer, freed with delete[].
    unsigned char* blob = SSEncDec_String2Blob(buffer);
    char request[0x1000] = {};
    std::snprintf(request, sizeof request, "b=%s",
                  blob != nullptr ? reinterpret_cast<const char*>(blob) : "");
    delete[] blob;

    // The request id is the second '|' field of the request text ("1" for the "f|1|" form).
    char field[0x0c] = {};
    getValue(buffer, field, 1, '|');
    requestId_ = XP_API_ATOI(field);
    requestTime_ = ClockMs();

    XP_DEBUG_OUT("SendByGet %s\n", request);
    if (requestClient_) {
        // Vtable slot +0x20 of GLXPlayerHttp: sendByGetWithNoVer(url, request).
        requestClient_->sendByGetWithNoVer(url_.get(), request);
    }
    status = 0;
    return true;
}

// 0x82faac _ZN22GLXPlayerSereverConfig19loadConfigFromLocalEv
// Partial: the completeness check tests three keys. The third is the char[5] key "type": the
// _M_find<char [5]> clone (0x82f178) compares the tree with that literal, which the pseudocode
// does not show (the call has no argument). The original copies each line into fixed buffers
// (32 and 256 bytes) with no bound; the port sizes the buffers to the file.
//
// Other notes:
//   The "GGI" line is parsed and its value dropped. The original calls ATOI and discards the result
//   without storing it. The "Date" line is "year-yday" and fills the server date (+0x3c).
//   Each line is split at the first ':'. The value is the rest of the line, as in the original.
//   The original copies each field into fixed buffers (32 and 256 bytes) with no bound. The port
//   sizes the buffers to the file, so long lines are not cut.
//   A value whose split returns -1 (no field) is left empty. The original copies from offset -1
//   there, which is undefined.
bool GLXPlayerSereverConfig::loadConfigFromLocal() {
    if (s_isLoadConfig) {
        return true;
    }
    const std::int32_t handle = XP_API_FILE_OPEN("serverConfig.sav", "r");
    if (handle == 0) {
        XP_DEBUG_OUT("[GLXPlayerSereverConfig] loadConfigFromLocal - %s not found \n", "serverConfig.sav");
        return false;
    }

    const auto size = static_cast<std::size_t>(XP_API_FILE_GET_LENGTH(handle));
    std::vector<char> file(size + 1, 0);
    XP_API_FILE_READ(file.data(), size, 1, handle);

    std::vector<char> line(size + 1, 0);
    XP_API_PARSE_DATA(file.data(), line.data(), 0, 10);
    const auto firstLength = static_cast<std::int32_t>(XP_API_STRLEN(line.data()));
    if (firstLength > 0) {
        if (line[static_cast<std::size_t>(firstLength - 1)] == 13) {
            line[static_cast<std::size_t>(firstLength - 1)] = 0;
        }
        for (std::int32_t i = 1;; ++i) {
            std::vector<char> key(size + 1, 0);
            std::vector<char> value(size + 1, 0);
            XP_API_PARSE_DATA(line.data(), key.data(), 0, 58);
            const std::int32_t valueOffset = XP_API_PARSE_DATA(line.data(), value.data(), 1, 58);
            std::fill(value.begin(), value.end(), 0);
            const auto lineLength = static_cast<std::size_t>(XP_API_STRLEN(line.data()));
            if (valueOffset >= 0 && static_cast<std::size_t>(valueOffset) <= lineLength) {
                const std::size_t count = lineLength - static_cast<std::size_t>(valueOffset);
                std::memcpy(value.data(), line.data() + valueOffset, count);
            }
            XP_API_STRTRIM(key.data());
            XP_API_STRTRIM(value.data());

            if (std::strcmp(key.data(), "GGI") != 0) {
                if (std::strcmp(key.data(), "Date") != 0) {
                    if (XP_API_STRLEN(value.data()) != 0) {
                        // insert_unique: an existing key keeps its first value.
                        s_urlMap.insert({std::string(key.data()), std::string(value.data())});
                    }
                } else {
                    // "year-yday": the year is the first '-' field, the day of the year the second.
                    std::vector<char> year(size + 1, 0);
                    std::vector<char> yday(size + 1, 0);
                    XP_API_PARSE_DATA(value.data(), year.data(), 0, 45);
                    XP_API_PARSE_DATA(value.data(), yday.data(), 1, 45);
                    if (serverDate_ != nullptr) {
                        serverDate_->year = XP_API_ATOI(year.data());   // +0x3c, +0x00
                        serverDate_->yday = XP_API_ATOI(yday.data());   // +0x3c, +0x04
                    }
                }
            } else {
                // The original parses the GGI value and discards it.
                static_cast<void>(XP_API_ATOI(value.data()));
            }

            // Next line. An empty line ends the file.
            std::fill(line.begin(), line.end(), 0);
            XP_API_PARSE_DATA(file.data(), line.data(), i, 10);
            const auto length = static_cast<std::int32_t>(XP_API_STRLEN(line.data()));
            if (length <= 0) {
                break;
            }
            if (line[static_cast<std::size_t>(length - 1)] == 13) {
                line[static_cast<std::size_t>(length - 1)] = 0;
            }
        }
    }
    XP_API_FILE_CLOSE(handle);

    // The original returns 0 when any of the three keys is missing. The map keeps what was read.
    if (s_urlMap.count("XplayerURL") == 0 || s_urlMap.count("type") == 0 || s_urlMap.count("XPPHPVerNo") == 0) {
        return false;
    }
    s_isLoadConfig = true;
    return true;
}

// 0x82fec8 _ZN22GLXPlayerSereverConfig6UpdateEv
// Overrides GLXPlayerWebComponent::Update (vtable +0x08). It does not call the base.
// Partial: the observer slot 0 call on the error path (OnDownloadError) passes no argument in the
// pseudocode, so the port passes 0, as the base class does.
//
// Flow, as the pseudocode gives it:
//   1. Nothing happens unless the request is enabled.
//   2. The request client is polled (UpdateRequest). While it is in progress, a POST is not timed
//      out. A GET older than 18000 units is cancelled. Its id is reported through observer slot 1
//      (OnRequestTimeout), unless it was request 1 and the local file loads. Then slot 2 (text) runs.
//   3. When the request has finished, the enabled flag is cleared. An error cancels the request and
//      reports slot 0 (or loads the local file as above). Otherwise the response is parsed.
//
// Deviation: the original has no null check on the request client. The port returns early when it
// is missing, so the port does not dereference null.
void GLXPlayerSereverConfig::Update() {
    if (!enabled_) {
        return;
    }
    if (!requestClient_) {
        return;
    }
    requestClient_->UpdateRequest();

    if (requestClient_->IsInProgress() != 0) {
        if (requestClient_->IsSendByPost()) {
            return;
        }
        const std::uint32_t now = ClockMs();
        if (static_cast<std::int32_t>(now) - static_cast<std::int32_t>(requestTime_) <= kRequestTimeout) {
            return;
        }
        const std::int32_t id = requestId_;
        Cancel();
        if (id != 1 || !loadConfigFromLocal()) {
            if (observer_ != nullptr) {
                observer_->OnRequestTimeout(id);
            }
            return;
        }
    } else {
        enabled_ = false;
        XP_DEBUG_OUT("GLXPlayerWebComponent::Update(): m_enable is changed to false!!\n");
        if (!requestClient_->IsErrorOccurred()) {
            OnUpdateParse();
            return;
        }
        const std::int32_t id = requestId_;
        Cancel();
        if (id != 1 || !loadConfigFromLocal()) {
            if (observer_ != nullptr) {
                // Observer slot 0 with no argument in the pseudocode. The port passes 0.
                observer_->OnNetworkError();
            }
            return;
        }
    }

    // Local config loaded for request 1: observer slot 2 with no text (null, length 0).
    if (observer_ != nullptr) {
        observer_->OnRequestSuccess(1, nullptr, 0);
    }
}
