#include "net-session-online/c_msg_drop_loot.hpp"

#include <cstring>

namespace {
constexpr std::size_t kHeaderBytes = 0x18;   // ReadByteArray / WriteByteArray of the header
constexpr std::size_t kLengthOffset = 0x14;  // +0x64 relative to +0x50
}  // namespace

// 0x328c84 _ZN12CMsgDropLootC1Eb
CMsgDropLoot::CMsgDropLoot(bool withSerial) : CMessage("CMsgDropLoot", withSerial) {
    typeName_ = "CMsgDropLoot";
    sendMode_ = 1;
    includeLocalMember_ = false;
}

// 0x31ffa8 _ZN12CMsgDropLootD1Ev
CMsgDropLoot::~CMsgDropLoot() = default;

// Reads the length word from the header. The bytes are copied, as the original reads them
// in place, so this also works where int alignment differs.
std::int32_t CMsgDropLoot::BlockLength() const {
    std::int32_t length = 0;
    std::memcpy(&length, fixed_ + kLengthOffset, sizeof length);
    return length;
}

// 0x31f48c _ZNK12CMsgDropLoot11GetDataSizeEv
std::uint32_t CMsgDropLoot::GetDataSize() const {
    return static_cast<std::uint32_t>(BlockLength() + static_cast<std::int32_t>(kHeaderBytes));
}

// 0x31fb84 _ZN12CMsgDropLoot9ResetDataEv
// The original zeroes the first byte, the four words from +0x54 and the length. The
// remaining header bytes are kept, as in the original. The block is freed and cleared
// here (the original leaves a dangling pointer).
void CMsgDropLoot::ResetData() {
    fixed_[0] = 0;
    std::memset(fixed_ + 4, 0, kHeaderBytes - 4);
    block_.reset();
}

// 0x3203bc _ZN12CMsgDropLoot8ReadDataER12NetBitStream
std::uint32_t CMsgDropLoot::ReadData(NetBitStream& stream) {
    const std::uint32_t size = GetDataSize();
    stream.ReadByteArray(fixed_, static_cast<std::uint32_t>(kHeaderBytes));
    block_.reset();
    const std::int32_t length = BlockLength();
    if (length > 0) {
        block_.reset(new std::uint8_t[static_cast<std::size_t>(length)]);
        stream.ReadByteArray(block_.get(), static_cast<std::uint32_t>(length));
    }
    return size;
}

// 0x3204a4 _ZN12CMsgDropLoot9WriteDataER12NetBitStream
std::uint32_t CMsgDropLoot::WriteData(NetBitStream& stream) {
    const std::uint32_t size = GetDataSize();
    stream.WriteByteArray(fixed_, static_cast<std::uint32_t>(kHeaderBytes));
    const std::int32_t length = BlockLength();
    if (block_ != nullptr && length > 0) {
        stream.WriteByteArray(block_.get(), static_cast<std::uint32_t>(length));
    }
    return size;
}

// NativeInvDropItem (0x43cfb4) fills the header and the block in place. The header words are written at their offsets from +0x50;
// the length word is written only with a block, as the original does. The original keeps the power ids in a CustomAlloc block it
// never frees; here the message owns a copy.
void CMsgDropLoot::SetLoot(std::uint8_t kind, std::int32_t itemId, std::int32_t objectNetworkId, const std::int32_t* powerIds,
                           std::int32_t powerCount) {
    const std::int32_t zero = 0;
    fixed_[0] = kind;                                           // +0x50
    std::memcpy(fixed_ + 0x04, &itemId, sizeof itemId);         // +0x54
    std::memcpy(fixed_ + 0x0c, &zero, sizeof zero);             // +0x5c
    std::memcpy(fixed_ + 0x08, &objectNetworkId, sizeof objectNetworkId);  // +0x58
    std::memcpy(fixed_ + 0x10, &zero, sizeof zero);             // +0x60
    if (powerIds != nullptr && powerCount > 0) {
        const std::int32_t bytes = powerCount * static_cast<std::int32_t>(sizeof(std::int32_t));
        std::memcpy(fixed_ + kLengthOffset, &bytes, sizeof bytes);  // +0x64
        block_.reset(new std::uint8_t[static_cast<std::size_t>(bytes)]);
        std::memcpy(block_.get(), powerIds, static_cast<std::size_t>(bytes));
    }
}

// 0x327908 _ZN12CMsgDropLoot13SetPropertiesEv
void CMsgDropLoot::SetProperties() {
    typeName_ = "CMsgDropLoot";
    sendMode_ = 1;
    includeLocalMember_ = false;
}
