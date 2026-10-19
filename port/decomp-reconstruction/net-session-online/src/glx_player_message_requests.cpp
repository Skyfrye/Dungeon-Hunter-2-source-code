// GLXPlayerMessage request senders. Each formats an "f|kind|i|GGI|u|UID|..." request into a
// 0x1000-byte buffer and hands it to SendByGet. The formats are the ones in the binary's
// .rodata, as far as the pseudocode shows them.
#include <cstdint>
#include <cstdio>

#include <cstring>
#include <string>

#include "net-session-online/deps/xp_api.hpp"
#include "net-session-online/glx_player_message.hpp"
#include "net-session-online/glx_player_observer.hpp"

namespace {
constexpr std::size_t kRequestBytes = 0x1000;

// A missing user id is written as an empty string, as in the other request builders.
const char* UidText(const char* uid) { return uid != nullptr ? uid : ""; }

// The comma list of the mask bits 1, 2, 4, 8, 16 and 32 (in that order), without the last comma.
std::string MaskList(std::int32_t mask) {
    std::string list;
    for (std::int32_t bit : {1, 2, 4, 8, 16, 32}) {
        if ((mask & bit) != 0) {
            list += std::to_string(bit);
            list += ',';
        }
    }
    if (!list.empty()) {
        list.pop_back();
    }
    return list;
}
}  // namespace

// 0x835db8 _ZN16GLXPlayerMessage17SendOnlineMessageEPciS0_S0_b
// Type 8 needs only the text. Other types need the text, the label and, unless the type is 1,
// the other field. A refusal sends observer slot 3 with (77, -100).
std::int32_t GLXPlayerMessage::SendOnlineMessage(char* text, std::int32_t type, char* label, char* other,
                                                 bool flag) {
    const auto refuse = [this]() -> std::int32_t {
        if (observer_ != nullptr) {
            observer_->OnRequestFailure(77, -100);
        }
        return 0;
    };
    char buf[kRequestBytes] = {};
    if (type == 8) {
        if (text == nullptr) {
            return refuse();
        }
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|%s|%s|", 77,
                      static_cast<int>(GetGGI()), UidText(GetUID()), 8, "", "", flag ? "un" : "n", text);
    } else {
        if (text == nullptr || label == nullptr) {
            return refuse();
        }
        if (type != 1 && other == nullptr) {
            return refuse();
        }
        // The original measures the other field here, so a null field is refused.
        if (other == nullptr || std::strlen(other) == 0) {
            return refuse();
        }
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%d|l|%s|o|%s|%s|%s|", 77,
                      static_cast<int>(GetGGI()), UidText(GetUID()), type, label, other,
                      flag ? "un" : "n", text);
    }
    XP_DEBUG_OUT("[SendOnlineMessage] %s\n", buf);
    SendByGet(buf);
    return 1;
}

// 0x83615c _ZN16GLXPlayerMessage20SendGetMessageHeaderEiiii
std::int32_t GLXPlayerMessage::SendGetMessageHeader(std::int32_t types, std::int32_t r, std::int32_t a,
                                                    std::int32_t c) {
    char buf[kRequestBytes] = {};
    if (types == -1) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|r|%d|a|%d|c|%d|", 75, static_cast<int>(GetGGI()),
                      UidText(GetUID()), r, a, c);
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%s|r|%d|a|%d|c|%d|", 75,
                      static_cast<int>(GetGGI()), UidText(GetUID()), MaskList(types).c_str(), r, a, c);
    }
    XP_DEBUG_OUT("[SendGetMessageHeader] %s\n", buf);
    SendByGet(buf);
    return 1;
}

// 0x836474 _ZN16GLXPlayerMessage19SendGetMessageCountEii
std::int32_t GLXPlayerMessage::SendGetMessageCount(std::int32_t types, std::int32_t r) {
    char buf[kRequestBytes] = {};
    if (types == -1) {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 74, static_cast<int>(GetGGI()), UidText(GetUID()));
    } else {
        std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|t|%s|r|%d|", 74, static_cast<int>(GetGGI()),
                      UidText(GetUID()), MaskList(types).c_str(), r);
    }
    XP_DEBUG_OUT("[SendGetMessageCount] %s\n", buf);
    SendByGet(buf);
    return 1;
}

// 0x835aac _ZN16GLXPlayerMessage26SendGetMySentMessageHeaderEii
void GLXPlayerMessage::SendGetMySentMessageHeader(std::int32_t first, std::int32_t count) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|a|%d|c|%d|", 0x5c, static_cast<int>(GetGGI()),
                  UidText(GetUID()), first, count);
    XP_DEBUG_OUT("[SendGetMessageHeader] %s\n", buf);
    SendByGet(buf);
}

// 0x835b74 _ZN16GLXPlayerMessage25SendGetMySentMessageCountEv
void GLXPlayerMessage::SendGetMySentMessageCount() {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|", 0x5b, static_cast<int>(GetGGI()), UidText(GetUID()));
    XP_DEBUG_OUT("[GLXPlayerMessage::SendGetMySentMessageCount] %s\n", buf);
    SendByGet(buf);
}

// 0x835c30 _ZN16GLXPlayerMessage20SendDelMySentMessageEi
void GLXPlayerMessage::SendDelMySentMessage(std::int32_t messageId) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|m|%d|", 0x5e, static_cast<int>(GetGGI()), UidText(GetUID()),
                  messageId);
    XP_DEBUG_OUT("[SendDelMySentMessage] %s\n", buf);
    SendByGet(buf);
}

// 0x835cf4 _ZN16GLXPlayerMessage17SendDeleteMessageEi
void GLXPlayerMessage::SendDeleteMessage(std::int32_t messageId) {
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|m|%d|", 0x4e, static_cast<int>(GetGGI()), UidText(GetUID()),
                  messageId);
    XP_DEBUG_OUT("[SendDeleteMessage] %s\n", buf);
    SendByGet(buf);
}

// 0x835fcc _ZN16GLXPlayerMessage21SendReadMySentMessageEi
void GLXPlayerMessage::SendReadMySentMessage(std::int32_t messageId) {
    currentMsgId_ = messageId;
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|m|%d|", 0x5d, static_cast<int>(GetGGI()), UidText(GetUID()),
                  currentMsgId_);
    XP_DEBUG_OUT("[SendReadMySentMessage] %s\n", buf);
    SendByGet(buf);
}

// 0x836094 _ZN16GLXPlayerMessage15SendReadMessageEi
void GLXPlayerMessage::SendReadMessage(std::int32_t messageId) {
    currentMsgId_ = messageId;
    char buf[kRequestBytes] = {};
    std::snprintf(buf, sizeof buf, "f|%d|i|%d|u|%s|m|%d|", 0x4c, static_cast<int>(GetGGI()), UidText(GetUID()),
                  currentMsgId_);
    XP_DEBUG_OUT("[SendReadMessage] %s\n", buf);
    SendByGet(buf);
}
