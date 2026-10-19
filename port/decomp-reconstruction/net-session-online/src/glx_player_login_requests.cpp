// GLXPlayerLogin request senders and the keep-alive. Each sender formats an
// "f|kind|i|GGI|u|UID|..." request into a 0x1000-byte buffer and hands it to SendByGet.
// The formats are the ones in the binary's .rodata, as far as the pseudocode shows them.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "net-session-online/deps/glx_stand_ins.hpp"
#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_login.hpp"
#include "net-session-online/glx_player_observer.hpp"
#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/glx_text.hpp"
#include "net-session-online/owned_text.hpp"

namespace {
constexpr std::size_t kRequestBytes = 0x1000;

// A missing user id is written as an empty string, as in GLXPlayerUser's builders.
const char* UidText(const char* uid) { return uid != nullptr ? uid : ""; }
}  // namespace

// 0x83345c _ZN14GLXPlayerLogin32SendGameInvitationGetLobbyServerEPc
void GLXPlayerLogin::SendGameInvitationGetLobbyServer(const char* invitation) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|cn|%s|", 0x6c, static_cast<int>(GetGGI()), UidText(GetUID()),
                  invitation != nullptr ? invitation : "");
    lastKeepAliveMs_ = static_cast<std::int32_t>(XP_API_GET_TIME());
    XP_DEBUG_OUT("SendGameInvitationGetLobbyServer -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x833528 _ZN14GLXPlayerLogin18SendGetLobbyServerEv
void GLXPlayerLogin::SendGetLobbyServer() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x6b, static_cast<int>(GetGGI()), UidText(GetUID()));
    lastKeepAliveMs_ = static_cast<std::int32_t>(XP_API_GET_TIME());
    XP_DEBUG_OUT("SendGetLobbyServer -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x8335ec _ZN14GLXPlayerLogin32SendGetLobbyServerWithGameCenterEPcS0_S0_
// The request is "f|107|i|GGI|u|uid|", then "ver|..|" when the second argument is set, then
// "hu|..|" when the third is set. The third argument is the one the header calls gameCenterA.
void GLXPlayerLogin::SendGetLobbyServerWithGameCenter(const char* uid, const char* gameCenterA,
                                                      const char* gameCenterB) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x6b, static_cast<int>(GetGGI()), UidText(uid));
    if (gameCenterB != nullptr) {
        std::snprintf(buf + std::strlen(buf), sizeof buf - std::strlen(buf), "ver|%s|", gameCenterB);
    }
    if (gameCenterA != nullptr) {
        std::snprintf(buf + std::strlen(buf), sizeof buf - std::strlen(buf), "hu|%s|", gameCenterA);
    }
    lastKeepAliveMs_ = static_cast<std::int32_t>(XP_API_GET_TIME());
    XP_DEBUG_OUT("SendGetLobbyServer -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x833cbc _ZN14GLXPlayerLogin9SendLoginEPcS0_S0_iS0_S0_b
// Sends kind 15. "u" and "p" are required. The optional fields are "o" (ordinal, when
// positive), "d" (dValue), "l" (lValue, which is also kept at +0x7c), "t" (the loginTime_ from
// the last reply, when positive), "udid", "gllive" and "ver" (the game version, when set).
// The original's i386 and XP string copies have no effect and are not made.
std::int32_t GLXPlayerLogin::SendLogin(char* user, char* password, char* udid, std::int32_t ordinal,
                                       char* dValue, char* lValue, bool gllive) {
    if (user == nullptr || password == nullptr) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(15, -100);
        }
        return 0;
    }
    char buf[kRequestBytes] = {};
    char part[0x80] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|", 15, static_cast<int>(GetGGI()), user, password);
    if (ordinal > 0) {
        std::snprintf(part, sizeof part, "o|%d|", ordinal);
        std::strcat(buf, part);
    }
    if (dValue != nullptr) {
        std::snprintf(part, sizeof part, "d|%s|", dValue);
        std::strcat(buf, part);
    }
    std::strcat(buf, "un|1|");
    std::strcat(buf, "n|1|");
    if (lValue != nullptr) {
        std::snprintf(part, sizeof part, "l|%s|", lValue);
        std::strcat(buf, part);
        lToken_ = GLXCopy(lValue);
    }
    if (loginTime_ > 0) {
        std::snprintf(part, sizeof part, "t|%d|", loginTime_);
        std::strcat(buf, part);
    }
    if (udid != nullptr) {
        std::snprintf(part, sizeof part, "udid|%s|", udid);
        std::strcat(buf, part);
    }
    std::snprintf(part, sizeof part, "gllive|%d|", gllive ? 1 : 0);
    std::strcat(buf, part);
    const char* version = GLXPlayerSereverConfig::GetGameVersion();
    if (std::strlen(version) != 0) {
        std::snprintf(part, sizeof part, "ver|%s|", version);
        std::strcat(buf, part);
    }
    XP_DEBUG_OUT("[Login] %s\n", buf);
    SendByGet(buf);
    return 1;
}

// 0x83406c _ZN14GLXPlayerLogin12sendRegisterEPcS0_S0_S0_bS0_bS0_b
// Sends kind 11 with "u", "p", "e" (email), "c" (country), "ef" (email flag), "o" (flag) and,
// when set, "d" (dValue), "udid" and "ver". "gllive" comes last. The first four arguments
// must all be set, otherwise the refusal (observer slot 3 with -100) is sent instead.
std::int32_t GLXPlayerLogin::sendRegister(char* user, char* password, char* email, char* country,
                                          bool emailFlag, char* udid, bool ordinalFlag, char* dValue,
                                          bool gllive) {
    if (user == nullptr || password == nullptr || email == nullptr || country == nullptr) {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(11, -100);
        }
        return 0;
    }
    char buf[kRequestBytes] = {};
    char part[0x80] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|p|%s|e|%s|c|%s|ef|%d|o|%d|", 11,
                  static_cast<int>(GetGGI()), user, password, email, country, emailFlag ? 1 : 0,
                  ordinalFlag ? 1 : 0);
    if (dValue != nullptr) {
        std::snprintf(part, sizeof part, "d|%s|", dValue);
        std::strcat(buf, part);
    }
    if (udid != nullptr) {
        std::snprintf(part, sizeof part, "udid|%s|", udid);
        std::strcat(buf, part);
    }
    const char* version = GLXPlayerSereverConfig::GetGameVersion();
    if (std::strlen(version) != 0) {
        std::snprintf(part, sizeof part, "ver|%s|", version);
        std::strcat(buf, part);
    }
    std::snprintf(part, sizeof part, "gllive|%d|", gllive ? 1 : 0);
    std::strcat(buf, part);
    XP_DEBUG_OUT("GLXPlayerUser::sendRegister before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
    return 1;
}

// 0x83370c _ZN14GLXPlayerLogin18SendGetProductInfoEPc
// Partial: the pseudocode calls strlen on a null list, which the original cannot survive.
// This port sends the request with an empty list in that case.
void GLXPlayerLogin::SendGetProductInfo(const char* list) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|l|%s|", 0x5f, static_cast<int>(GetGGI()), UidText(GetUID()),
                  list != nullptr ? list : "");
    XP_DEBUG_OUT("GLXPlayerLogin::SendGetProductInfo -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x833814 _ZN14GLXPlayerLogin15SendGetAPNSInfoEi
void GLXPlayerLogin::SendGetAPNSInfo(std::int32_t type) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%d|", 0x53, static_cast<int>(GetGGI()), UidText(GetUID()),
                  static_cast<int>(type));
    XP_DEBUG_OUT("GLXPlayerLogin::SendGetAPNSInfo -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x8338d8 _ZN14GLXPlayerLogin13SendKeepAliveEv
void GLXPlayerLogin::SendKeepAlive() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x10, static_cast<int>(GetGGI()), UidText(GetUID()));
    lastKeepAliveMs_ = static_cast<std::int32_t>(XP_API_GET_TIME());
    XP_DEBUG_OUT("SendKeepAlive -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x83399c _ZN14GLXPlayerLogin9KeepAliveEv
void GLXPlayerLogin::KeepAlive() {
    if (!ShouldSendKeepAlive()) {
        return;
    }
    SendKeepAlive();
}

// 0x8339c0 _ZN14GLXPlayerLogin10SendLogoutEv
void GLXPlayerLogin::SendLogout() {
    keepAliveEnabled_ = false;
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x11, static_cast<int>(GetGGI()), UidText(GetUID()));
    XP_DEBUG_OUT("[Logout] before String2Blob -> buffer = %s\n", buf);
    SendByGet(buf);
}

// 0x8343e0 _ZN14GLXPlayerLogin6UpdateEv
void GLXPlayerLogin::Update() {
    KeepAlive();
    GLXPlayerWebComponent::Update();
}

// 0x8343f8 _ZN14GLXPlayerLogin16clearProductInfoEv
void GLXPlayerLogin::clearProductInfo() {
    productGgi_.clear();
    productId_.clear();
    productName_.clear();
    productCount_ = 0;
}

// 0x834928 _ZN14GLXPlayerLoginD1Ev (D2 at 0x834a8c has the same body). The owned strings are
// released by their unique_ptr members; the product lists are cleared here.
GLXPlayerLogin::~GLXPlayerLogin() { clearProductInfo(); }
