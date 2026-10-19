// CMsgQuestsSync: quest sync message. Its wire payload is an 8-byte header followed by
// a block. The first word of the header (+0x50) is the block length, and the block is
// owned at +0x58. GetDataPtr is inherited from CMessage (null), as in the original.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x50 block length (int32)  +0x54 second header word (role not recovered)
//   +0x58 block data (owned; freed by ResetData)
// GetDataSize is the block length plus 8.
#pragma once

#include <cstdint>
#include <memory>

#include "net-session-online/c_message.hpp"

class CMsgQuestsSync : public CMessage {
public:
    // 0x3291f8 _ZN14CMsgQuestsSyncC1Eb
    // The flags set here (reliable, send mode 1, no local member) are kept.
    explicit CMsgQuestsSync(bool withSerial);
    ~CMsgQuestsSync() override;  // 0x325d28 D1 (the deleting destructor 0x325d80 is skipped)

    // 0x31f4a8 _ZNK14CMsgQuestsSync11GetDataSizeEv
    std::uint32_t GetDataSize() const override;
    // 0x31fbc0 _ZN14CMsgQuestsSync9ResetDataEv
    void ResetData() override;
    // 0x320434 _ZN14CMsgQuestsSync8ReadDataER12NetBitStream
    // Returns the size from before the read. Allocates the block even for length 0.
    std::uint32_t ReadData(NetBitStream& stream) override;
    // 0x3204fc _ZN14CMsgQuestsSync9WriteDataER12NetBitStream
    // Writes nothing and returns 0 when no block is set; otherwise returns the size.
    std::uint32_t WriteData(NetBitStream& stream) override;
    // 0x32793c _ZN14CMsgQuestsSync13SetPropertiesEv
    void SetProperties();

    // The sender's stores, which the original writes inline through the message pointer (PlayerSavegame::SG_TryQuestSync
    // 0x4679e8): +0x54 = 0, +0x50 = length, +0x58 = operator new[](length) and a copy of the bytes.
    void SetBlock(const void* data, std::int32_t length);

    // Not in the original: test seam for the block length.
    std::int32_t BlockLengthForTest() const { return BlockLength(); }
    // Not in the original: read access for MultiplayerCallback::HandleQuestsSyncMessage. BlockData is the
    // block at +0x58 (null when no block), BlockSizeValue the block length word at +0x50.
    const char* BlockData() const { return reinterpret_cast<const char*>(block_.get()); }
    std::int32_t BlockSizeValue() const { return BlockLength(); }

private:
    std::int32_t BlockLength() const;

    std::uint8_t fixed_[8] = {};              // +0x50 length, +0x54 second word
    std::unique_ptr<std::uint8_t[]> block_;   // +0x58
};
