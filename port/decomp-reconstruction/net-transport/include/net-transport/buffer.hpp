// Buffer: block-chunked byte store used by the original network stream code.
// Reconstructed from libDungeonHunter2.so pseudocode (Utils/StreamBuffer.h).
// Blocks are individually allocated; the block vector always ends with one
// null sentinel entry, as in the original std::vector<unsigned char*>.
#pragma once

#include <cstddef>
#include <cstdint>
#include <vector>

class Buffer {
public:
    Buffer() = default;
    ~Buffer();
    Buffer(const Buffer&) = delete;
    Buffer& operator=(const Buffer&) = delete;

    // 0x316568 _ZNK6Buffer4readEjPvj
    void read(std::uint32_t offset, void* out, std::uint32_t length) const;
    // 0x316f0c _ZN6Buffer5writeEjPKvj
    void write(std::uint32_t offset, const void* data, std::uint32_t length);
    // 0x31692c _ZN6Buffer5clearEv
    void clear();
    // 0x317014 _ZN6Buffer7setSizeEj
    void setSize(std::uint32_t size);

    std::uint32_t size() const { return size_; }
    bool sized() const { return sized_; }  // +0x14 (not in the original; the original reads the field)
    // The block vector, including its trailing nullptr sentinel (the original reads begin and end directly).
    std::size_t block_vector_size() const { return blocks_.size(); }
    std::uint8_t* block(std::size_t index) const { return blocks_[index]; }
    // Accessors for the owning StreamBuffer (not in the original; the original reads the fields directly).
    std::uint32_t block_size() const { return block_size_; }
    std::uint8_t* FirstBlock() const { return blocks_.empty() ? nullptr : blocks_.front(); }

private:
    // 0x316d98 _ZN6Buffer12ensureBufferEjj
    void ensureBuffer(std::uint32_t offset, std::uint32_t length);

    std::uint32_t block_size_ = 0x800;          // +0x00 (reset to 0x800 by clear)
    std::vector<std::uint8_t*> blocks_;         // +0x04 begin, +0x08 end, +0x0C cap; trailing nullptr sentinel
    std::uint32_t size_ = 0;                    // +0x10
    bool sized_ = false;                        // +0x14 set by setSize, cleared by clear
};
