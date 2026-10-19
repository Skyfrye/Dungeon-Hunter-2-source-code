// CMsgDropLoot: loot drop message. Its wire payload is a 24-byte header followed by
// a variable-length block. The last four bytes of the header (+0x64) hold the
// block length, and the block itself is owned at +0x68.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x50..+0x63 header bytes (roles not recovered)  +0x64 block length (int32)
//   +0x68 block data (owned; freed by ResetData)
// GetDataSize is 24 + block length.
#pragma once

#include <cstdint>
#include <memory>

#include "net-session-online/c_message.hpp"

class CMsgDropLoot : public CMessage {
public:
    // 0x328c84 _ZN12CMsgDropLootC1Eb
    explicit CMsgDropLoot(bool withSerial);
    ~CMsgDropLoot() override;  // 0x31ffa8 D1 (the deleting destructor 0x3243c0 is skipped)

    // 0x31f484 _ZN12CMsgDropLoot10GetDataPtrEv
    void* GetDataPtr() override { return fixed_; }
    // 0x31f48c _ZNK12CMsgDropLoot11GetDataSizeEv
    std::uint32_t GetDataSize() const override;
    // 0x31fb84 _ZN12CMsgDropLoot9ResetDataEv
    void ResetData() override;
    // 0x3203bc _ZN12CMsgDropLoot8ReadDataER12NetBitStream
    // Returns the size from before the read, as the original does.
    std::uint32_t ReadData(NetBitStream& stream) override;
    // 0x3204a4 _ZN12CMsgDropLoot9WriteDataER12NetBitStream
    // Returns the size from before the write, as the original does.
    std::uint32_t WriteData(NetBitStream& stream) override;
    // 0x327908 _ZN12CMsgDropLoot13SetPropertiesEv
    void SetProperties();

    // The payload header as the senders fill it (NativeInvDropItem 0x43cfb4): byte +0x50 = kind, +0x54 = the item id, +0x58 = the dropping
    // object's network id, +0x5c and +0x60 = 0, +0x64 = the block length in bytes; the block (+0x68) holds the item's power ids as
    // 32-bit words. A block is stored only for a positive count.
    void SetLoot(std::uint8_t kind, std::int32_t itemId, std::int32_t objectNetworkId, const std::int32_t* powerIds,
                 std::int32_t powerCount);

    // Not in the original: test seam for the block length.
    std::int32_t BlockLengthForTest() const { return BlockLength(); }
    std::uint32_t SendModeForTest() const { return sendMode_; }
    bool IncludeLocalForTest() const { return includeLocalMember_; }

private:
    std::int32_t BlockLength() const;

    std::uint8_t fixed_[0x18] = {};          // +0x50..+0x67: header, length at +0x14 (+0x64)
    std::unique_ptr<std::uint8_t[]> block_;  // +0x68
};
