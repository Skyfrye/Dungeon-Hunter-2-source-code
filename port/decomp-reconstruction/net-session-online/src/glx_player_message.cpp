#include "net-session-online/glx_player_message.hpp"

#include <cstdlib>
#include <cstring>

#include "net-session-online/glx_text.hpp"

namespace {
// The original checks the list pointer (non-null) and the index against the count.
// The index is taken as unsigned: a negative index fails the test.
template <typename T>
bool InRange(const std::vector<T>& list, std::int32_t index, std::int32_t count) {
    return index >= 0 && index < count && static_cast<std::size_t>(index) < list.size();
}

// The original's string getters return the stored pointer, or null when the index fails.
const char* TextAt(const std::vector<std::string>& list, std::int32_t index, std::int32_t count) {
    return InRange(list, index, count) ? list[static_cast<std::size_t>(index)].c_str() : nullptr;
}

// Splits the text of a list record. The record fields are the '|' fields of a header line.
std::string RecordField(const std::string& record, std::int32_t index, char delim) {
    return GLXField(record.c_str(), index, delim);
}

// Empty-list result of a getter that returns a new copy (the original's 16-byte buffer).
char* CopyField(const std::vector<std::string>& list, std::int32_t index, std::int32_t field,
                std::int32_t count) {
    char* out = new char[16];
    std::memset(out, 0, 16);
    if (index >= 0 && index < count && static_cast<std::size_t>(index) < list.size()) {
        const std::string text = GLXField(list[static_cast<std::size_t>(index)].c_str(), field, ',');
        std::strncpy(out, text.c_str(), 15);
    }
    return out;
}
}  // namespace

// 0x8368e0 _ZN16GLXPlayerMessageC1Ev (C2 0x836980, same body)
// Loads the service URL, builds the request client (+0x20) from the host, path and third string as the
// original does, then sets the current id to -1 and clears the message count.
GLXPlayerMessage::GLXPlayerMessage() {
    GLXPlayerWebComponent::LoadConfig();
    requestClient_ = std::make_unique<GLXPlayerHttp>(string10_.get(), string18_.get(), string14_.get());
    currentMsgId_ = -1;
    clearMsgCount();
}

// 0x83681c _ZN16GLXPlayerMessageD1Ev, 0x83688c D2
// The original clears the lists and frees the body; the base destructor follows. The body is the
// unique_ptr at +0x68 and the request client is released by the base class.
GLXPlayerMessage::~GLXPlayerMessage() {
    clearMessageList();
}

// 0x834f54 _ZN16GLXPlayerMessage21getCurrentMsgPositionEv
std::int32_t GLXPlayerMessage::getCurrentMsgPosition() const {
    for (std::int32_t i = 0;; ++i) {
        if (i >= getMsgListCount()) {
            return -1;
        }
        if (getMsgID(i) == getCurrentMsgID()) {
            return i;
        }
    }
}

// 0x834d34 _ZN16GLXPlayerMessage11getMsgCountEii
// The six box groups are 12 bytes apart from +0x6c, so the type picks a group.
std::int32_t GLXPlayerMessage::getMsgCount(std::int32_t type, std::int32_t box) const {
    if (static_cast<std::uint32_t>(box) < 3) {
        const std::int32_t group = BoxIndex(type);
        if (group >= 0) {
            return boxCounts_[group][box];
        }
    }
    return -1;
}

// The original tests the type values 1, 2, 4, 8, 0x10 and 0x20 in that order.
std::int32_t GLXPlayerMessage::BoxIndex(std::int32_t type) {
    switch (type) {
        case 1: return 0;
        case 2: return 1;
        case 4: return 2;
        case 8: return 3;
        case 0x10: return 4;
        case 0x20: return 5;
        default: return -1;
    }
}

// 0x834dc8 _ZN16GLXPlayerMessage8getMsgIDEi
std::int32_t GLXPlayerMessage::getMsgID(std::int32_t index) const {
    if (InRange(ids_, index, messageCount_)) {
        return ids_[static_cast<std::size_t>(index)];
    }
    return -1;
}

// 0x834df8 _ZN16GLXPlayerMessage11getMsgTitleEi
const char* GLXPlayerMessage::getMsgTitle(std::int32_t index) const {
    return TextAt(titles_, index, messageCount_);
}

// 0x834e28 _ZN16GLXPlayerMessage18getMsgSenderNumberEi
const char* GLXPlayerMessage::getMsgSenderNumber(std::int32_t index) const {
    return TextAt(senderNumbers_, index, messageCount_);
}

// 0x834e58 _ZN16GLXPlayerMessage12getMsgSenderEi
const char* GLXPlayerMessage::getMsgSender(std::int32_t index) const {
    return TextAt(senders_, index, messageCount_);
}

// 0x834e88 _ZN16GLXPlayerMessage23getMsgDesUserNumberListEi
const char* GLXPlayerMessage::getMsgDesUserNumberList(std::int32_t index) const {
    return TextAt(desUserNumbers_, index, messageCount_);
}

// 0x834eb8 _ZN16GLXPlayerMessage21getMsgDesUserNameListEi
const char* GLXPlayerMessage::getMsgDesUserNameList(std::int32_t index) const {
    return TextAt(desUserNames_, index, messageCount_);
}

// 0x834ee8 _ZN16GLXPlayerMessage17getMsgCreatedTimeEi
const char* GLXPlayerMessage::getMsgCreatedTime(std::int32_t index) const {
    return TextAt(createdTimes_, index, messageCount_);
}

// 0x834f18 _ZN16GLXPlayerMessage15getMsgReadStateEi
bool GLXPlayerMessage::getMsgReadState(std::int32_t index) const {
    if (InRange(readStates_, index, messageCount_)) {
        return readStates_[static_cast<std::size_t>(index)] != 0;
    }
    return false;
}

// 0x834fa4 _ZN16GLXPlayerMessage10getMsgTypeEi
std::int32_t GLXPlayerMessage::getMsgType(std::int32_t index) const {
    if (InRange(types_, index, messageCount_)) {
        return types_[static_cast<std::size_t>(index)];
    }
    return -1;
}

// 0x834fd4 _ZN16GLXPlayerMessage13clearMsgCountEv
void GLXPlayerMessage::clearMsgCount() {
    for (auto& group : boxCounts_) {
        for (auto& value : group) {
            value = 0;
        }
    }
}

// 0x835124 _ZN16GLXPlayerMessage17getMsgDesUserNameEii
char* GLXPlayerMessage::getMsgDesUserName(std::int32_t index, std::int32_t field) const {
    if (desUserNames_.empty()) {
        return nullptr;
    }
    return CopyField(desUserNames_, index, field, messageCount_);
}

// 0x835178 _ZN16GLXPlayerMessage19getMsgDesUserNumberEii
char* GLXPlayerMessage::getMsgDesUserNumber(std::int32_t index, std::int32_t field) const {
    if (desUserNumbers_.empty()) {
        return nullptr;
    }
    return CopyField(desUserNumbers_, index, field, messageCount_);
}

// 0x8351cc _ZN16GLXPlayerMessage16clearMessageListEv
// The lists are vectors in the port, so freeing an entry is clearing the vector. The body and
// the box counts are kept, as the original keeps them.
void GLXPlayerMessage::clearMessageList() {
    ids_.clear();
    titles_.clear();
    senderNumbers_.clear();
    senders_.clear();
    desUserNumbers_.clear();
    desUserNames_.clear();
    createdTimes_.clear();
    readStates_.clear();
    types_.clear();
    messageCount_ = 0;
}

// 0x834ffc _ZN16GLXPlayerMessage15processMsgCountEPc
// Six groups separated by '|'. Field 0 of each group is skipped, and fields 1 to 3 are the
// counts of the three boxes of that group.
void GLXPlayerMessage::processMsgCount(char* text) {
    clearMsgCount();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    for (std::int32_t group = 0; group != 6; ++group) {
        const std::string record = GLXField(text, group, '|');
        for (std::int32_t box = 0; box != 3; ++box) {
            boxCounts_[group][box] = std::atoi(RecordField(record, box + 1, '^').c_str());
        }
    }
}

// 0x835744 _ZN16GLXPlayerMessage20processMsgHeaderListEPc
// Fields 0 and 2 of the top level are not used. Field 1 is the count, and the records start at
// field 3. A record is id^type^title^sender^senderNumber^created^read.
void GLXPlayerMessage::processMsgHeaderList(char* text) {
    clearMessageList();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::int32_t count = std::atoi(GLXField(text, 1, '|').c_str());
    messageCount_ = count;
    const auto n = static_cast<std::size_t>(count > 0 ? count : 0);
    ids_.assign(n, 0);
    types_.assign(n, 0);
    readStates_.assign(n, 0);
    titles_.resize(n);
    senders_.resize(n);
    senderNumbers_.resize(n);
    createdTimes_.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        const std::string record = GLXField(text, static_cast<std::int32_t>(i) + 3, '|');
        ids_[i] = std::atoi(RecordField(record, 0, '^').c_str());
        types_[i] = std::atoi(RecordField(record, 1, '^').c_str());
        titles_[i] = RecordField(record, 2, '^');
        senders_[i] = RecordField(record, 3, '^');
        senderNumbers_[i] = RecordField(record, 4, '^');
        createdTimes_[i] = RecordField(record, 5, '^');
        readStates_[i] = std::atoi(RecordField(record, 6, '^').c_str()) != 0 ? 1 : 0;
    }
}

// 0x835480 _ZN16GLXPlayerMessage26processMySentMsgHeaderListEPc
// The sent box has the same top level as the inbox. A record is id^title^receiverNumber^
// receiverName^created.
void GLXPlayerMessage::processMySentMsgHeaderList(char* text) {
    clearMessageList();
    if (text == nullptr || std::strlen(text) == 0) {
        return;
    }
    const std::int32_t count = std::atoi(GLXField(text, 1, '|').c_str());
    messageCount_ = count;
    const auto n = static_cast<std::size_t>(count > 0 ? count : 0);
    ids_.assign(n, 0);
    titles_.resize(n);
    desUserNumbers_.resize(n);
    desUserNames_.resize(n);
    createdTimes_.resize(n);
    for (std::size_t i = 0; i < n; ++i) {
        const std::string record = GLXField(text, static_cast<std::int32_t>(i) + 3, '|');
        ids_[i] = std::atoi(RecordField(record, 0, '^').c_str());
        titles_[i] = RecordField(record, 1, '^');
        desUserNumbers_[i] = RecordField(record, 2, '^');
        desUserNames_[i] = RecordField(record, 3, '^');
        createdTimes_[i] = RecordField(record, 4, '^');
    }
}

// 0x83670c _ZN16GLXPlayerMessage15OnUpdateSuccessEi
// 'J' is the box counts, 'K' the inbox headers, 'L' and ']' the body, '[' the sent-box count
// and '\\' the sent-box headers. The web component's handler runs after each of them.
void GLXPlayerMessage::OnUpdateSuccess(std::int32_t arg) {
    std::string text = cursor_ != nullptr ? cursor_ : "";
    switch (arg) {
        case 'J':
            processMsgCount(text.data());
            break;
        case 'K':
            processMsgHeaderList(text.data());
            break;
        case 'L':
        case ']':
            body_ = GLXCopy(text);
            break;
        case '[':
            mySentCount_ = std::atoi(GLXField(text.c_str(), 0, '|').c_str());
            break;
        case '\\':
            processMySentMsgHeaderList(text.data());
            break;
        default:
            break;
    }
    GLXPlayerWebComponent::OnUpdateSuccess(arg);
}

void GLXPlayerMessage::SetMessageForTest(std::int32_t index, std::int32_t id, std::int32_t type,
                                         const char* sender, bool read, const char* title) {
    const auto i = static_cast<std::size_t>(index);
    const auto grow = [i](auto& list) {
        if (list.size() <= i) list.resize(i + 1);
    };
    grow(ids_); grow(titles_); grow(senders_); grow(types_); grow(readStates_);
    ids_[i] = id;
    types_[i] = type;
    senders_[i] = sender != nullptr ? sender : "";
    readStates_[i] = read ? 1 : 0;
    titles_[i] = title != nullptr ? title : "";
}

void GLXPlayerMessage::SetBoxCountForTest(std::int32_t type, std::int32_t box, std::int32_t value) {
    const std::int32_t group = BoxIndex(type);
    if (group >= 0 && box >= 0 && box < 3) {
        boxCounts_[group][box] = value;
    }
}
