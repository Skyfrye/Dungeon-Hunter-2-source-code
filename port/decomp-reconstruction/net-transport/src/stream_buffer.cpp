#include "dh2/StreamBuffer.hpp"

#include <algorithm>

// 0x3173f8 _ZN12StreamBufferC2Ev
// 0x316d3c _ZN12StreamBufferC1Ev
StreamBuffer::StreamBuffer() = default;

// 0x3171b8 _ZN12StreamBufferC2EP11IStreamBase (C1 alias 0x3172d8)
// Allocates one block of source->size() via expand, then reads the whole source into it.
//
// The final call is IStreamBase::read, which is the vtable slot at +0x18 (the listing's LDR R7,[R2,#0x18]
// matches IStreamBase.hpp's note that read is at +0x18). The Hex-Rays call is
// v5(a2, firstBlock, total, 0) against the signature (IStreamBase*, _DWORD, _DWORD, _DWORD), i.e. the object,
// the destination, and then `total` and 0 as the LOW and HIGH words of the 64-bit length - `read(void* dst,
// std::uint64_t n)` takes its count in the r2:r3 pair. So the source IS read into the block, and the port's
// `source->read(buffer_.FirstBlock(), total)` matches. (An intermediate note in this file claimed the original
// reads nothing because r3 is 0; that read the high word of the count as the count. It was wrong.)
// The only gap is the dropped debug ASSERT on the sized flag (StreamBuffer.h:130).
StreamBuffer::StreamBuffer(IStreamBase* source) {
    std::uint32_t total = source->size();
    expand(total);
    source->read(buffer_.FirstBlock(), total);
}

// 0x316a14 _ZN12StreamBufferD2Ev
// 0x3169c4 _ZN12StreamBufferD1Ev
StreamBuffer::~StreamBuffer() = default;

// 0x316430 _ZNK12StreamBuffer4sizeEv
std::uint32_t StreamBuffer::size() const {
    return buffer_.size();
}

// 0x31643c _ZNK12StreamBuffer4sizeEi
// Bytes in block `block`: the remaining size after `block` whole blocks, capped at one block.
std::uint32_t StreamBuffer::size(int block) const {
    std::uint32_t block_size = buffer_.block_size();
    std::uint32_t remaining = buffer_.size() - block_size * static_cast<std::uint32_t>(block);  // the member, not the virtual (0x31643c reads +0x28)
    return std::min(block_size, remaining);
}

// 0x316458 _ZNK12StreamBuffer7canReadEv
bool StreamBuffer::canRead() const {
    return true;
}

// 0x316460 _ZNK12StreamBuffer8canWriteEv
bool StreamBuffer::canWrite() const {
    return false;
}

// 0x3166bc _ZNK12StreamBuffer4peekEPvy
// Copies up to n bytes from the read position without moving it. The remaining count
// is computed as 64-bit size - position, so a read position past the end wraps as the
// original does.
std::uint64_t StreamBuffer::peek(void* dst, std::uint64_t n) const {
    std::uint64_t remaining = static_cast<std::uint64_t>(size()) - read_pos_;
    if (remaining < n) {
        n = remaining;
    }
    buffer_.read(static_cast<std::uint32_t>(read_pos_), dst, static_cast<std::uint32_t>(n));
    return n;
}

// 0x316494 _ZN12StreamBuffer4readEPvy
// Peeks through the virtual slot (+0x14 in the original), then advances the read position.
std::uint64_t StreamBuffer::read(void* dst, std::uint64_t n) {
    std::uint64_t got = peek(dst, n);
    read_pos_ += got;
    return got;
}

// 0x316fd4 _ZN12StreamBuffer5writeEPKvy
std::uint64_t StreamBuffer::write(const void* src, std::uint64_t n) {
    buffer_.write(static_cast<std::uint32_t>(write_pos_), src, static_cast<std::uint32_t>(n));
    write_pos_ += n;
    return n;
}

// 0x3164d8 _ZN12StreamBuffer4seekEy
// Positions past the end clamp to the size.
void StreamBuffer::seek(std::uint64_t pos) {
    read_pos_ = (pos <= buffer_.size()) ? pos : buffer_.size();  // reads the size member (+0x28), not the virtual size()
}

// 0x3164cc _ZNK12StreamBuffer4tellEv
std::uint64_t StreamBuffer::tell() const {
    return read_pos_;
}

// 0x316468 _ZN12StreamBuffer4skipEy
void StreamBuffer::skip(std::uint64_t n) {
    seek(read_pos_ + n);
}

// 0x316510 _ZN12StreamBuffer9seekWriteEy
void StreamBuffer::seekWrite(std::uint64_t pos) {
    write_pos_ = (pos <= buffer_.size()) ? pos : buffer_.size();  // reads the size member (+0x28), not the virtual size()
}

// 0x316488 _ZNK12StreamBuffer9tellWriteEv
std::uint64_t StreamBuffer::tellWrite() const {
    return write_pos_;
}

// 0x316a48 _ZN12StreamBuffer5clearEv
void StreamBuffer::clear() {
    buffer_.clear();
    read_pos_ = 0;
    write_pos_ = 0;
}

// 0x317180 _ZN12StreamBuffer6expandEy
// Clears the buffer, allocates one block of the given size and resets both positions.
void StreamBuffer::expand(std::uint64_t size) {
    buffer_.clear();
    buffer_.setSize(static_cast<std::uint32_t>(size));
    read_pos_ = 0;
    write_pos_ = 0;
}
