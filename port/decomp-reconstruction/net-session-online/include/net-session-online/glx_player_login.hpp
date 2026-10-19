// GLXPlayerLogin: the login and lobby-server service of the GLX player services. It
// holds the push-notification (APNS) settings and the product list, and sends the
// keep-alive. The login reply and the lobby replies are parsed here.
//
// Layout (original 32-bit offsets, kept as comments; the GLXPlayerWebComponent base
// occupies +0x00..+0x3b):
//   +0x3c time value of the last login or lobby reply (int; sent back as "t|")
//   +0x40 keep-alive enabled (byte)           +0x44 time of the last keep-alive (int)
//   +0x48 APNS server address (char*)         +0x4c APNS port (int)
//   +0x50 APNS feedback address (char*)       +0x54 APNS feedback port (int)
//   +0x58 APNS public PEM path (char*)        +0x5c APNS private key PEM path (char*)
//   +0x60 APNS private key password (char*)
//   +0x64 product count (int)                 +0x68 product GGI array (int)
//   +0x6c product id array (int)              +0x70 product name array (char*)
//   +0x74 nickname from the "n" token (char*) +0x78 "un" token (char*)
//   +0x7c "l" value sent with the last login (char*)
//   +0x80 "gct" token (char*)                 +0x84 "u" token of a refused login (char*)
#pragma once

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "net-session-online/glx_player_web_component.hpp"

class GLXPlayerLogin : public GLXPlayerWebComponent {
public:
    // 0x834bd4 _ZN14GLXPlayerLoginC1Ev and 0x834c80 _ZN14GLXPlayerLoginC2Ev. Calls the web
    // component's LoadConfig (partial), then creates the GLXPlayerHttp client.
    GLXPlayerLogin();

    // 0x833374 _ZN14GLXPlayerLogin9getAPNSIPEv
    const char* getAPNSIP() const { return apnsIp_.get(); }
    // 0x83337c _ZN14GLXPlayerLogin11getAPNSPortEv
    std::int32_t getAPNSPort() const { return apnsPort_; }
    // 0x833384 _ZN14GLXPlayerLogin17getAPNSFeedBackIPEv
    const char* getAPNSFeedBackIP() const { return apnsFeedbackIp_.get(); }
    // 0x83338c _ZN14GLXPlayerLogin19getAPNSFeedBackPortEv
    std::int32_t getAPNSFeedBackPort() const { return apnsFeedbackPort_; }
    // 0x833394 _ZN14GLXPlayerLogin20getAPNSPublicPemPathEv
    const char* getAPNSPublicPemPath() const { return apnsPublicPem_.get(); }
    // 0x83339c _ZN14GLXPlayerLogin24getAPNSPrivateKeyPemPathEv
    const char* getAPNSPrivateKeyPemPath() const { return apnsPrivateKeyPem_.get(); }
    // 0x8333a4 _ZN14GLXPlayerLogin25getAPNSPrivateKeyPasswordEv
    const char* getAPNSPrivateKeyPassword() const { return apnsPrivateKeyPassword_.get(); }
    // 0x8333ac _ZN14GLXPlayerLogin19getProductListCountEv
    std::int32_t getProductListCount() const { return productCount_; }
    // 0x8333b4 _ZN14GLXPlayerLogin13getProductGGIEi: default -1.
    std::int32_t getProductGGI(std::int32_t index) const;
    // 0x8333d8 _ZN14GLXPlayerLogin12getProductIDEi: default -1.
    std::int32_t getProductID(std::int32_t index) const;
    // 0x8333fc _ZN14GLXPlayerLogin14getProductNameEi: the stored name pointer, default null.
    // The Hex-Rays return type is int, which is the pointer bits.
    const char* getProductName(std::int32_t index) const;
    // 0x83341c _ZN14GLXPlayerLogin19ShouldSendKeepAliveEv
    // True when keep-alive is enabled and more than 90000 ms have passed since the last one.
    bool ShouldSendKeepAlive() const;
    // Not a method in the original: CXPlayerManager reads the byte at +0x40 directly.
    bool KeepAliveEnabled() const { return keepAliveEnabled_; }

    // 0x833cbc _ZN14GLXPlayerLogin9SendLoginEPcS0_S0_iS0_S0_b (kind 0x0f). Returns 1 after the
    // request is handed to SendByGet, or 0 after the refusal (observer slot 3 with -100).
    std::int32_t SendLogin(char* user, char* password, char* udid, std::int32_t ordinal,
                           char* dValue, char* lValue, bool gllive);
    // 0x83406c _ZN14GLXPlayerLogin12sendRegisterEPcS0_S0_S0_bS0_bS0_b (kind 0x0b). Returns 1 after
    // the request is handed to SendByGet, or 0 after the refusal (observer slot 3 with -100).
    std::int32_t sendRegister(char* user, char* password, char* email, char* country, bool emailFlag,
                              char* udid, bool ordinalFlag, char* dValue, bool gllive);
    // 0x8344a0 _ZN14GLXPlayerLogin21processGetProductInfoEPc: parses the product list
    // ("ggi^id^name" records split by '|'). Empty input does nothing.
    void processGetProductInfo(char* text);
    // 0x833a84 _ZN14GLXPlayerLogin22processApplePushServerEPc: the APNS settings
    // ("address|port|feedback|feedbackPort|public|private|password"). Empty input does nothing.
    void processApplePushServer(char* text);
    // 0x834658 _ZN14GLXPlayerLogin15OnUpdateSuccessEi: the login reply ('u', 't', 'un', 'n',
    // 'gct' tokens), the keep-alive reply and the lobby replies, then the web component's handler.
    void OnUpdateSuccess(std::int32_t arg) override;
    // 0x8342f0 _ZN14GLXPlayerLogin15OnUpdateFailureEi: reads the reply code and, for a refused
    // login (code 48 with a "u" token), keeps the token. Then passes (kind, code) to observer
    // slot 3.
    bool OnUpdateFailure(std::int32_t code) override;

    // Request senders. Each builds an "f|kind|i|GGI|u|UID|..." request and hands it to SendByGet.
    // 0x83345c _ZN14GLXPlayerLogin32SendGameInvitationGetLobbyServerEPc (kind 0x6c, "cn|" field)
    void SendGameInvitationGetLobbyServer(const char* invitation);
    // 0x833528 _ZN14GLXPlayerLogin18SendGetLobbyServerEv (kind 0x6b)
    void SendGetLobbyServer();
    // 0x8335ec _ZN14GLXPlayerLogin32SendGetLobbyServerWithGameCenterEPcS0_S0_ (kind 0x6b). Partial:
    // the two appended fields use format strings that are not identified; they are not built.
    void SendGetLobbyServerWithGameCenter(const char* uid, const char* gameCenterA, const char* gameCenterB);
    // 0x83370c _ZN14GLXPlayerLogin18SendGetProductInfoEPc (kind 0x5f, "l|" field). Partial: a null
    // list makes the original call strlen on null; this port sends the request with an empty list.
    void SendGetProductInfo(const char* list);
    // 0x833814 _ZN14GLXPlayerLogin15SendGetAPNSInfoEi (kind 0x53, "t|" field)
    void SendGetAPNSInfo(std::int32_t type);
    // 0x8338d8 _ZN14GLXPlayerLogin13SendKeepAliveEv (kind 0x10). Stores the time in +0x44.
    void SendKeepAlive();
    // 0x83399c _ZN14GLXPlayerLogin9KeepAliveEv: sends a keep-alive when one is due.
    void KeepAlive();
    // 0x8339c0 _ZN14GLXPlayerLogin10SendLogoutEv (kind 0x11). Clears the keep-alive flag first.
    void SendLogout();
    // 0x8343e0 _ZN14GLXPlayerLogin6UpdateEv: keep-alive, then the web component update.
    void Update() override;
    // 0x8343f8 _ZN14GLXPlayerLogin16clearProductInfoEv: empties the product lists and the count.
    void clearProductInfo();

    // The nickname from the "n" token (+0x74). CMatchingGLLive reads the field directly (IsMyFriend, and
    // CreateJoinRoomInternal for the lobby creator's name); the original has no named getter for it.
    const char* nickName() const { return nickName_.get(); }

    // Not in the original: test seams for the fields the getters read.
    void SetNickNameForTest(const char* value) {
        nickName_.reset();
        if (value != nullptr) {
            const std::size_t length = std::strlen(value) + 1;
            nickName_.reset(new char[length]);
            std::memcpy(nickName_.get(), value, length);
        }
    }
    void SetAPNSIPForTest(const char* value);
    void SetAPNSPortForTest(std::int32_t value) { apnsPort_ = value; }
    void SetProductsForTest(std::vector<std::int32_t> ggis, std::vector<std::int32_t> ids,
                            const std::vector<std::string>& names);
    void SetKeepAliveForTest(bool enabled, std::int32_t lastTimeMs) {
        keepAliveEnabled_ = enabled;
        lastKeepAliveMs_ = lastTimeMs;
    }

public:
    ~GLXPlayerLogin() override;  // 0x834928 D1, 0x834a8c D2 (clears the product lists)

    // The login un-token at +0x78 (the lobby id SearchRoomInternal passes), null until a login has set it.
    const char* UnToken() const { return unToken_.get(); }

private:
    bool keepAliveEnabled_ = false;                    // +0x40
    std::int32_t lastKeepAliveMs_ = 0;                 // +0x44
    std::unique_ptr<char[]> apnsIp_;                   // +0x48
    std::int32_t apnsPort_ = 0;                        // +0x4c
    std::unique_ptr<char[]> apnsFeedbackIp_;           // +0x50
    std::int32_t apnsFeedbackPort_ = 0;                // +0x54
    std::unique_ptr<char[]> apnsPublicPem_;            // +0x58
    std::unique_ptr<char[]> apnsPrivateKeyPem_;        // +0x5c
    std::unique_ptr<char[]> apnsPrivateKeyPassword_;   // +0x60
    std::int32_t productCount_ = 0;                    // +0x64
    std::vector<std::int32_t> productGgi_;             // +0x68
    std::vector<std::int32_t> productId_;              // +0x6c
    std::vector<std::unique_ptr<char[]>> productName_; // +0x70
    std::int32_t loginTime_ = 0;                       // +0x3c
    std::unique_ptr<char[]> nickName_;                 // +0x74
    std::unique_ptr<char[]> unToken_;                  // +0x78
    std::unique_ptr<char[]> lToken_;                   // +0x7c
    std::unique_ptr<char[]> gctToken_;                 // +0x80
    std::unique_ptr<char[]> uErrorToken_;              // +0x84
};
