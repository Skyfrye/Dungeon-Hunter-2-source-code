// NetBitStream: MSB-first bit reader/writer over a fixed byte buffer, used for
// all network serialisation. Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vtable (virtual destructor)
//   +0x04 buffer        uint8_t*
//   +0x08 size          bytes in buffer
//   +0x0C read_pos      bits
//   +0x10 write_pos     bits
//   +0x14 revert_read   bits, saved by SetRevertPoint
//   +0x18 revert_write  bits, saved by SetRevertPoint
//   +0x1C flags         bit0 = read overflow, bit1 = write overflow
#pragma once

#include <cstddef>
#include <cstdint>
#include <string>

class NetBitStream {
public:
    explicit NetBitStream(std::uint32_t size);     // 0x80e908 / 0x80ea50 (C1/C2 Ej)
    NetBitStream(const NetBitStream& other);       // 0x80eef4 / 0x80ef8c (C1/C2 ERKS_)
    NetBitStream& operator=(const NetBitStream& other);  // 0x80ee5c _ZN12NetBitStreamaSERKS_
    virtual ~NetBitStream();                       // 0x80e790 / 0x80e7f4 (D1/D2)
    bool operator==(const NetBitStream& other) const;    // 0x80f024

    void SetRevertPoint();                         // 0x80e410
    void Revert();                                 // 0x80e83c
    void Reset();                                  // 0x80e89c

    void WriteBit(std::uint32_t bit);              // 0x80e42c
    int ReadBit();                                 // 0x80e498
    void WriteByte(std::uint8_t value, std::uint32_t bits);   // 0x80e4e8
    std::uint32_t ReadByte(std::uint32_t bits);    // 0x80e564
    void WriteU32(std::uint32_t value, std::uint32_t bits);   // 0x80e5dc
    std::uint32_t ReadU32(std::uint32_t bits);     // 0x80e630

    void WriteByteArray_BitSize(const void* src, std::uint32_t bits);  // 0x80ece8
    void ReadByteArray_BitSize(void* dst, std::uint32_t bits);         // 0x80ebc8
    void WriteByteArray(const void* src, std::uint32_t bytes);         // 0x80eda8
    void ReadByteArray(void* dst, std::uint32_t bytes);                // 0x80ec28
    void WriteStream(const NetBitStream& other);   // 0x80ed54
    void WriteString(const std::string& text, std::uint32_t max_len);  // 0x80edb0
    std::string ReadString();                      // 0x80ec30

    void GetBuffer(char* out, std::uint32_t capacity);        // 0x80ee0c
    void SetBuffer(const char* src, std::size_t length);      // 0x80ee3c

    std::uint32_t Size() const { return size_; }
    std::uint32_t ReadPosition() const { return read_pos_; }
    std::uint32_t WritePosition() const { return write_pos_; }
    // The overflow flags at +0x1c (bit0 read overflow, bit1 write overflow). Read inline by
    // NetStruct::SerializeInternal (0x814b0c) to stop serialising once the stream is full.
    std::uint32_t Flags() const { return flags_; }

private:
    // 0x80eac8 _ZN12NetBitStream12ShiftMemCopyEPvjPKvji, write direction.
    static void CopyBitsIn(std::uint8_t* dst, std::uint8_t* dst_end, unsigned shift,
                           const std::uint8_t* src, std::uint32_t bits);
    // 0x80eac8, read direction (shift = read position mod 8).
    static void CopyBitsOut(std::uint8_t* dst, const std::uint8_t* src, const std::uint8_t* src_end,
                            unsigned shift, std::uint32_t bits);

    std::uint8_t* buffer_ = nullptr;      // +0x04
    std::uint32_t size_ = 0;              // +0x08
    std::uint32_t read_pos_ = 0;          // +0x0C
    std::uint32_t write_pos_ = 0;         // +0x10
    std::uint32_t revert_read_ = 0;       // +0x14
    std::uint32_t revert_write_ = 0;      // +0x18
    std::uint32_t flags_ = 0;             // +0x1C
};
