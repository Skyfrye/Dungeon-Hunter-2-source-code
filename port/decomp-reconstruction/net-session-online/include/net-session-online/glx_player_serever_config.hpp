// GLXPlayerSereverConfig: the server-configuration service of the GLX player services. It is
// a GLXPlayerWebComponent. The response holds "key|value" pairs that GetValue looks up, and
// the config is saved to and loaded from a local file. The getters are reconstructed. The
// parsers, the file save and load, and the update callbacks are queued (see NOTES.md).
//
// Layout (original 32-bit offsets, kept as comments; the GLXPlayerWebComponent base occupies
// +0x00..+0x3b, and its GGI is at +0x08):
//   +0x3c server date (GameDate*, owned)   +0x40 local date (GameDate*, owned)
// Statics: s_GameVersion (0x32 bytes), m_webConfig_ggi, s_urlMap and s_isLoadConfig.
#pragma once

#include <cstdint>
#include <map>
#include <string>

#include "net-session-online/glx_player_web_component.hpp"

// The year and the day of the year, as GetCurTimeDate fills them (tm_year and tm_yday).
struct GameDate {
    std::int32_t year;  // +0x00
    std::int32_t yday;  // +0x04
};

class GLXPlayerSereverConfig : public GLXPlayerWebComponent {
public:
    // 0x82e898 C1, 0x82e94c C2. Allocates the two date objects, loads oconf.bar and builds the request client.
    explicit GLXPlayerSereverConfig(const char* gameVersion);
    ~GLXPlayerSereverConfig() override;  // 0x82e7ac D1, 0x82e830 D2

    // 0x82dffc _ZN22GLXPlayerSereverConfig6GetGgiEv
    static std::int32_t GetGgi();
    // 0x82e01c _ZN22GLXPlayerSereverConfig14GetGameVersionEv
    static char* GetGameVersion();
    // 0x82e038 _ZN22GLXPlayerSereverConfig11isOutOfDateEi: true when the server date is before the
    // local date, shifted by the given number of days.
    bool isOutOfDate(std::int32_t days) const;
    // 0x82e084 _ZN22GLXPlayerSereverConfig14GetCurTimeDateEP8GameDate
    static void GetCurTimeDate(GameDate* out);
    // 0x82ecfc _ZN22GLXPlayerSereverConfig8GetValueEPKc. Returns the stored value, or the empty
    // string (s_emptyUrl) when the key is missing.
    static const char* GetValue(const char* key);

    // 0x82e0bc _ZN22GLXPlayerSereverConfig16SaveServerConfigEv. Writes serverConfig.sav.
    std::int32_t SaveServerConfig();
    // 0x82e3b4 _ZN22GLXPlayerSereverConfig10LoadConfigEv. Reads oconf.bar. Partial: the original returns
    // 1 or 0; the base declares void LoadConfig, so the result is dropped.
    void LoadConfig() override;
    // 0x82f6d8 _ZN22GLXPlayerSereverConfig15OnUpdateSuccessEi. Partial: the token buffers are 256 bytes
    // where the original overflows 52-byte buffers (see the .cpp). The key check covers "type" too.
    void OnUpdateSuccess(std::int32_t arg) override;
    // 0x82f940 _ZN22GLXPlayerSereverConfig15OnUpdateFailureEi
    bool OnUpdateFailure(std::int32_t code) override;

    // 0x82eaac _ZN22GLXPlayerSereverConfig19SendGetServerConfigERi. Status out: 1 when the config is
    // already loaded, 0 when the request was sent by GET, -1 when the GGI or the version is missing
    // (then the result is false). The trace lines are not emitted (see the .cpp).
    bool SendGetServerConfig(std::int32_t& status);
    // 0x82faac _ZN22GLXPlayerSereverConfig19loadConfigFromLocalEv. Reads serverConfig.sav. Partial:
    // the original's fixed line buffers are unbounded; the port sizes them to the file (see the .cpp).
    bool loadConfigFromLocal();
    // 0x82fec8 _ZN22GLXPlayerSereverConfig6UpdateEv. Overrides the base Update (vtable +0x08). Partial:
    // the observer slot 0 argument is not in the pseudocode (see the .cpp).
    void Update() override;

    // Getters. Each one forwards a fixed key to GetValue.
    // 0x82eefc _ZN22GLXPlayerSereverConfig17GetGameMinVersionEv. Key "min" (ARM literal).
    const char* GetGameMinVersion() const;
    const char* GetGameLatestVersion() const;   // 0x82ef0c, key "latest"
    const char* GetChatRoomDomain() const;      // 0x82ef1c, key "ChatRoomDomain"
    const char* GetChatDomain() const;          // 0x82ef2c, key "ChatDomain"
    const char* GetChatServer() const;          // 0x82ef3c, key "ChatServer"
    const char* GetwebURLType() const;          // 0x82ef4c, key "type"
    static const char* GetPhpVer();             // 0x82ef5c, key "XPPHPVerNo"
    const char* GetXPlayerMPURL() const;        // 0x82ef6c, key "XPlayMPURL"
    const char* GetXPlayerDWURL() const;        // 0x82ef7c, key "XplayDWURL"
    static const char* GetXPlayerURL();         // 0x82ef8c, key "XplayerURL"

    // Not in the original: test seams.
    void SetValueForTest(const std::string& key, const std::string& value);
    void SetDatesForTest(GameDate* server, GameDate* local);

public:  // members are public (Track B decision 9)
    GameDate* serverDate_ = nullptr;  // +0x3c
    GameDate* localDate_ = nullptr;   // +0x40

    static char s_GameVersion[0x32];
    static std::int32_t m_webConfig_ggi;
    static std::map<std::string, std::string> s_urlMap;
    static bool s_isLoadConfig;   // set once the config is loaded from the server or the local file
    static bool m_isConfigured;   // set by the "configured" token in the server response
};
