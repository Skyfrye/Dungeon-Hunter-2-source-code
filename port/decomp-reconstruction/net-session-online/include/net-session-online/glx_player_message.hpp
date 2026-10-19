// GLXPlayerMessage: the player message box of the GLX player services (inbox and
// sent box). The web component parses the header lists into the arrays below, one
// entry per message. The list fields are text in the reply, so most arrays are strings.
//
// Layout (original 32-bit offsets, kept as comments; the GLXPlayerWebComponent base
// occupies +0x00..+0x3b):
//   +0x3c message ids (int array)          +0x40 titles (char* array)
//   +0x44 sender numbers (char* array)     +0x48 senders (char* array)
//   +0x4c receiver numbers (char* array)   +0x50 receiver names (char* array)
//   +0x54 created times (char* array)      +0x58 read states (byte array)
//   +0x5c message types (int array)        +0x60 message count (int)
//   +0x64 current message id (int)         +0x68 body (char*)
//   +0x6c..+0xb3 six boxes of three ints (12 bytes each); see BoxIndex()
//   +0xb4 sent message count (int)
#pragma once

#include <cstdint>
#include <memory>
#include <string>
#include <vector>

#include "net-session-online/glx_player_web_component.hpp"

class GLXPlayerMessage : public GLXPlayerWebComponent {
public:
    // 0x8368e0 _ZN16GLXPlayerMessageC1Ev, 0x836980 _ZN16GLXPlayerMessageC2Ev
    // The 0x428-byte request client at +0x20 is built here (see the .cpp).
    GLXPlayerMessage();
    // 0x83688c _ZN16GLXPlayerMessageD2Ev, and 0x83681c _ZN16GLXPlayerMessageD1Ev (the body is
    // in glx_player_message.cpp: it clears the lists). The deleting variant 0x836870 (D0) is
    // the compiler's delete of this destructor and is not a separate function here.
    // The message list and body are released by their members. The request client at +0x20
    // is released by the base class.
    ~GLXPlayerMessage() override;

    // 0x834d2c _ZN16GLXPlayerMessage15getMsgListCountEv
    std::int32_t getMsgListCount() const { return messageCount_; }
    // 0x834d34 _ZN16GLXPlayerMessage11getMsgCountEii
    // type 1, 2, 4, 8, 0x10, 0x20 selects a box group; box must be 0..2. Otherwise -1.
    std::int32_t getMsgCount(std::int32_t type, std::int32_t box) const;
    // 0x834dc0 _ZN16GLXPlayerMessage17getMySentMsgCountEv
    std::int32_t getMySentMsgCount() const { return mySentCount_; }
    // 0x834dc8 _ZN16GLXPlayerMessage8getMsgIDEi: default -1.
    std::int32_t getMsgID(std::int32_t index) const;
    // 0x834df8 _ZN16GLXPlayerMessage11getMsgTitleEi: default null.
    const char* getMsgTitle(std::int32_t index) const;
    // The string lists return the stored pointer, or null when the index is out of range. The
    // Hex-Rays return type is int, which is the pointer bits.
    // 0x834e28 _ZN16GLXPlayerMessage18getMsgSenderNumberEi
    const char* getMsgSenderNumber(std::int32_t index) const;
    // 0x834e58 _ZN16GLXPlayerMessage12getMsgSenderEi
    const char* getMsgSender(std::int32_t index) const;
    // 0x834e88 _ZN16GLXPlayerMessage23getMsgDesUserNumberListEi
    const char* getMsgDesUserNumberList(std::int32_t index) const;
    // 0x834eb8 _ZN16GLXPlayerMessage21getMsgDesUserNameListEi
    const char* getMsgDesUserNameList(std::int32_t index) const;
    // 0x834ee8 _ZN16GLXPlayerMessage17getMsgCreatedTimeEi
    const char* getMsgCreatedTime(std::int32_t index) const;
    // 0x835124 _ZN16GLXPlayerMessage17getMsgDesUserNameEii: a new 16-byte copy of the field
    // a3 (separated by ',') of the receiver-name list entry a2. The caller releases it with
    // delete[]. Null when the list is absent.
    char* getMsgDesUserName(std::int32_t index, std::int32_t field) const;
    // 0x835178 _ZN16GLXPlayerMessage19getMsgDesUserNumberEii: the same for the receiver-number list.
    char* getMsgDesUserNumber(std::int32_t index, std::int32_t field) const;
    // 0x834f18 _ZN16GLXPlayerMessage15getMsgReadStateEi: default 0.
    bool getMsgReadState(std::int32_t index) const;
    // 0x834f44 _ZN16GLXPlayerMessage10getMsgBodyEv: the body pointer, null when none.
    const char* getMsgBody() const { return body_.get(); }
    // 0x834f4c _ZN16GLXPlayerMessage15getCurrentMsgIDEv
    std::int32_t getCurrentMsgID() const { return currentMsgId_; }
    // 0x834f54 _ZN16GLXPlayerMessage21getCurrentMsgPositionEv: index of the current id, or -1.
    std::int32_t getCurrentMsgPosition() const;
    // 0x834fa4 _ZN16GLXPlayerMessage10getMsgTypeEi: default -1.
    std::int32_t getMsgType(std::int32_t index) const;
    // 0x834fd4 _ZN16GLXPlayerMessage13clearMsgCountEv: zeroes the six box groups.
    void clearMsgCount();

    // 0x834ffc _ZN16GLXPlayerMessage15processMsgCountEPc: the six box groups, "group^a^b^c|...".
    void processMsgCount(char* text);
    // 0x8351cc _ZN16GLXPlayerMessage16clearMessageListEv: empties the lists and the count.
    void clearMessageList();
    // 0x835480 _ZN16GLXPlayerMessage26processMySentMsgHeaderListEPc: the sent box headers.
    void processMySentMsgHeaderList(char* text);
    // 0x835744 _ZN16GLXPlayerMessage20processMsgHeaderListEPc: the inbox headers.
    void processMsgHeaderList(char* text);
    // 0x83670c _ZN16GLXPlayerMessage15OnUpdateSuccessEi: dispatches the message replies ('J', 'K',
    // 'L' and ']' for the body, '[' for the sent count, '\\' for the sent box) and then calls the web component.
    void OnUpdateSuccess(std::int32_t arg) override;

    // Request senders: "f|kind|i|GGI|u|UID|..." requests handed to SendByGet.
    // 0x835db8 _ZN16GLXPlayerMessage17SendOnlineMessageEPciS0_S0_b (kind 0x4d). Returns 1 after
    // the request is handed to SendByGet, or 0 after the refusal (observer slot 3 with -100).
    std::int32_t SendOnlineMessage(char* text, std::int32_t type, char* label, char* other, bool flag);
    // 0x83615c _ZN16GLXPlayerMessage20SendGetMessageHeaderEiiii (kind 0x4b). The type mask is
    // written as a comma list of its bits (1, 2, 4, 8, 16, 32); -1 sends no list. r, a and c
    // are the three numeric fields of the request.
    std::int32_t SendGetMessageHeader(std::int32_t types, std::int32_t r, std::int32_t a, std::int32_t c);
    // 0x836474 _ZN16GLXPlayerMessage19SendGetMessageCountEii (kind 0x4a). -1 sends no list and no
    // "r|" field, as the original does.
    std::int32_t SendGetMessageCount(std::int32_t types, std::int32_t r);
    // 0x835aac _ZN16GLXPlayerMessage26SendGetMySentMessageHeaderEii (kind 0x5c, "a|" and "c|" fields)
    void SendGetMySentMessageHeader(std::int32_t first, std::int32_t count);
    // 0x835b74 _ZN16GLXPlayerMessage25SendGetMySentMessageCountEv (kind 0x5b)
    void SendGetMySentMessageCount();
    // 0x835c30 _ZN16GLXPlayerMessage20SendDelMySentMessageEi (kind 0x5e, "m|" field)
    void SendDelMySentMessage(std::int32_t messageId);
    // 0x835cf4 _ZN16GLXPlayerMessage17SendDeleteMessageEi (kind 0x4e, "m|" field)
    void SendDeleteMessage(std::int32_t messageId);
    // 0x835fcc _ZN16GLXPlayerMessage21SendReadMySentMessageEi (kind 0x5d). Stores the id at +0x64.
    void SendReadMySentMessage(std::int32_t messageId);
    // 0x836094 _ZN16GLXPlayerMessage15SendReadMessageEi (kind 0x4c). Stores the id at +0x64.
    void SendReadMessage(std::int32_t messageId);

    // Not in the original: test seams that fill the parsed lists.
    void SetMessageForTest(std::int32_t index, std::int32_t id, std::int32_t type,
                           const char* sender, bool read, const char* title);
    void SetCountForTest(std::int32_t count) { messageCount_ = count; }
    void SetBoxCountForTest(std::int32_t type, std::int32_t box, std::int32_t value);

private:
    // Returns the group index for a box type (0..5), or -1 for an unknown type.
    static std::int32_t BoxIndex(std::int32_t type);

    std::vector<std::int32_t> ids_;             // +0x3c
    std::vector<std::string> titles_;           // +0x40
    std::vector<std::string> senderNumbers_;    // +0x44
    std::vector<std::string> senders_;          // +0x48
    std::vector<std::string> desUserNumbers_;   // +0x4c
    std::vector<std::string> desUserNames_;     // +0x50
    std::vector<std::string> createdTimes_;     // +0x54
    std::vector<std::uint8_t> readStates_;      // +0x58
    std::vector<std::int32_t> types_;           // +0x5c
    std::int32_t messageCount_ = 0;             // +0x60
    std::int32_t currentMsgId_ = -1;            // +0x64 (ctor 0x8368e0 stores -1)
    std::unique_ptr<char[]> body_;              // +0x68
    std::int32_t boxCounts_[6][3] = {};         // +0x6c..+0xb3
    std::int32_t mySentCount_ = 0;              // +0xb4
};
