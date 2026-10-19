#include "net-session-online/c_msg_quests_sync.hpp"

#include <algorithm>
#include <cstring>

#include "net-transport/socket_platform.hpp"

namespace {
constexpr std::size_t kHeaderBytes = 8;
}  // namespace

// 0x3291f8 _ZN14CMsgQuestsSyncC1Eb
CMsgQuestsSync::CMsgQuestsSync(bool withSerial) : CMessage("CMsgQuestsSync", withSerial) {
    typeName_ = "CMsgQuestsSync";
    reliable_ = true;
    includeLocalMember_ = false;
    sendMode_ = 1;
}

// 0x325d28 _ZN14CMsgQuestsSyncD1Ev
CMsgQuestsSync::~CMsgQuestsSync() = default;

// Reads the length word in place (the bytes are copied, as the original reads them).
void CMsgQuestsSync::SetBlock(const void* data, std::int32_t length) {
    std::memset(fixed_, 0, sizeof fixed_);                       // +0x54 = 0
    std::memcpy(fixed_, &length, sizeof length);                 // +0x50 = length
    block_.reset(new std::uint8_t[static_cast<std::size_t>(length)]);
    std::memcpy(block_.get(), data, static_cast<std::size_t>(length));
}

std::int32_t CMsgQuestsSync::BlockLength() const {
    std::int32_t length = 0;
    std::memcpy(&length, fixed_, sizeof length);
    return length;
}

// 0x31f4a8 _ZNK14CMsgQuestsSync11GetDataSizeEv
std::uint32_t CMsgQuestsSync::GetDataSize() const {
    return static_cast<std::uint32_t>(BlockLength() + static_cast<std::int32_t>(kHeaderBytes));
}

// 0x31fbc0 _ZN14CMsgQuestsSync9ResetDataEv
void CMsgQuestsSync::ResetData() {
    std::memset(fixed_, 0, sizeof fixed_);
    block_.reset();
}

// 0x320434 _ZN14CMsgQuestsSync8ReadDataER12NetBitStream
// A negative length from the stream is read as 0. The original would ask for a huge
// allocation.
std::uint32_t CMsgQuestsSync::ReadData(NetBitStream& stream) {
    const std::uint32_t size = GetDataSize();
    stream.ReadByteArray(fixed_, static_cast<std::uint32_t>(kHeaderBytes));
    block_.reset();
    const auto length = static_cast<std::size_t>(std::max<std::int32_t>(BlockLength(), 0));
    block_.reset(new std::uint8_t[length]);
    stream.ReadByteArray(block_.get(), static_cast<std::uint32_t>(length));
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CMsgQuestsSync::ReadData this %p length %zu block %p\n", static_cast<void*>(this), length, static_cast<void*>(block_.get()));
#endif
    return size;
}

// 0x3204fc _ZN14CMsgQuestsSync9WriteDataER12NetBitStream
std::uint32_t CMsgQuestsSync::WriteData(NetBitStream& stream) {
#ifdef DH2_HOST_RUNNER
    DH2_NET_LOG("[net] CMsgQuestsSync::WriteData this %p block %p length %d\n", static_cast<void*>(this), static_cast<void*>(block_.get()), BlockLength());
#endif
    if (block_ == nullptr) {
        return 0;
    }
    const std::uint32_t size = GetDataSize();
    stream.WriteByteArray(fixed_, static_cast<std::uint32_t>(kHeaderBytes));
    stream.WriteByteArray(block_.get(), static_cast<std::uint32_t>(std::max<std::int32_t>(BlockLength(), 0)));
    return size;
}

// 0x32793c _ZN14CMsgQuestsSync13SetPropertiesEv
void CMsgQuestsSync::SetProperties() {
    typeName_ = "CMsgQuestsSync";
    reliable_ = true;
    includeLocalMember_ = false;
    sendMode_ = 1;
}
