#include "net-transport/buffer.hpp"

#include <algorithm>
#include <cstring>

// 0x316988 _ZN6BufferD1Ev
Buffer::~Buffer() {
    clear();
}

// 0x316568 _ZNK6Buffer4readEjPvj
// Copies `length` bytes starting at `offset`, walking block by block. Each chunk is
// min(remaining, block_size - in_block); after the first block the chunks start at 0.
// Verified against Hex-Rays and the ARM listing 0x316568: the block index (offset / block_size),
// the in-block offset (offset % block_size), the chunk min(remaining, block_size - in_block),
// the first block pointer (begin[index] + in_block), the next-entry load (begin[++index]) with the
// chunk reset to min(remaining - chunk, block_size), and the loop's exit on remaining == 0 all match.
// Deviations, neither observable on a well-formed buffer: (1) the original's null test is only a
// debug assert (LDR/CMP #0 then gAssertLevel: level 1 prints "ASSERT(buffer_[block_number]) FAILED"
// at StreamBuffer.h:160, level 2 writes to address 0), after which memcpy() runs unconditionally and
// faults on a null block; the port returns at that block instead. (2) The pointer load is
// begin[index] with no end test, so an offset past the vector reads past it; the port's
// `index >= blocks_.size()` test stops instead. Both need an offset or a null block that breaks the
// buffer invariant, which peek() cannot produce (it clamps n to size - read_pos).
void Buffer::read(std::uint32_t offset, void* out, std::uint32_t length) const {
    std::uint32_t index = offset / block_size_;
    std::uint32_t in_block = offset % block_size_;
    std::uint8_t* dst = static_cast<std::uint8_t*>(out);
    std::uint32_t remaining = length;
    while (remaining != 0) {
        if (index >= blocks_.size() || blocks_[index] == nullptr) {
            return;
        }
        std::uint32_t count = std::min(remaining, block_size_ - in_block);
        std::memcpy(dst, blocks_[index] + in_block, count);
        dst += count;
        remaining -= count;
        in_block = 0;
        ++index;
    }
}

// 0x316f0c _ZN6Buffer5writeEjPKvj
// Hex-Rays: ensure blocks, grow size to offset + length, then copy block by block with the
// same chunking as read(). A write that crosses a block boundary continues into the next block.
void Buffer::write(std::uint32_t offset, const void* data, std::uint32_t length) {
    std::uint32_t index = offset / block_size_;
    std::uint32_t in_block = offset % block_size_;
    ensureBuffer(offset, length);
    if (size_ < length + offset) {
        size_ = length + offset;
    }
    const std::uint8_t* src = static_cast<const std::uint8_t*>(data);
    std::uint32_t remaining = length;
    while (remaining != 0) {
        std::uint32_t count = std::min(remaining, block_size_ - in_block);
        std::memcpy(blocks_[index] + in_block, src, count);
        src += count;
        remaining -= count;
        in_block = 0;
        ++index;
    }
}

// 0x31692c _ZN6Buffer5clearEv
void Buffer::clear() {
    for (std::uint8_t* block : blocks_) {
        if (block != nullptr) {
            delete[] block;
        }
    }
    blocks_.clear();
    sized_ = false;
    block_size_ = 0x800;
    size_ = 0;
}

// 0x317014 _ZN6Buffer7setSizeEj
// One block of `size`, a null sentinel, then the sized flag, block size and size.
// The original's leading debug ASSERT (buffer_.size() == 0, StreamBuffer.h:117) is dropped;
// it does not alter the body, so nothing observable differs.
void Buffer::setSize(std::uint32_t size) {
    blocks_.reserve(2);
    std::uint8_t* block = new std::uint8_t[size];
    blocks_.push_back(block);
    blocks_.push_back(nullptr);
    sized_ = true;
    block_size_ = size;
    size_ = size;
}

// 0x316d98 _ZN6Buffer12ensureBufferEjj
void Buffer::ensureBuffer(std::uint32_t offset, std::uint32_t length) {
    std::uint32_t needed = (offset + length) / block_size_ + 2;  // blocks + sentinel
    if (blocks_.size() >= needed) {
        return;
    }
    if (blocks_.capacity() < needed) {
        blocks_.reserve(needed);
    }
    // Drop the trailing sentinel before appending real blocks.
    if (!blocks_.empty()) {
        blocks_.pop_back();
    }
    while (blocks_.size() < needed - 1) {
        blocks_.push_back(new std::uint8_t[block_size_]);
    }
    blocks_.push_back(nullptr);
}
