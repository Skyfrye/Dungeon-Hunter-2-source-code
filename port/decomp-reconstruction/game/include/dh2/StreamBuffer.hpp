// StreamBuffer: IStreamBase over a Buffer, with separate 64-bit read and write positions. The one definition of the
// class for every category; net-transport/stream_buffer.hpp only includes this header. The member functions are
// defined in net-transport/src/stream_buffer.cpp.
// Reconstructed from libDungeonHunter2.so pseudocode (Utils/StreamBuffer.h).
//
// Original 32-bit size 0x30 (48, the operator new size). Layout (32-bit offsets):
//   +0x00 vptr (_ZTV12StreamBuffer, 64 bytes: IStreamBase's 13 slots, then size(int) at +0x34)
//   +0x08 read position (64-bit)      +0x0c high word
//   +0x10 write position (64-bit)     +0x14 high word
//   +0x18 embedded Buffer: block size (0x800), block vector (+0x1c), size (+0x28), sized flag (+0x2c)
#pragma once

#include <cstdint>

#include "dh2/IStreamBase.hpp"
#include "net-transport/buffer.hpp"

class StreamBuffer : public IStreamBase {
public:
    StreamBuffer();                              // 0x3173f8 _ZN12StreamBufferC2Ev, 0x316d3c _ZN12StreamBufferC1Ev
    explicit StreamBuffer(IStreamBase* source);  // 0x3171b8 _ZN12StreamBufferC2EP11IStreamBase, 0x3172d8 _ZN12StreamBufferC1EP11IStreamBase
    ~StreamBuffer() override;                    // 0x316a14 _ZN12StreamBufferD2Ev, 0x3169c4 _ZN12StreamBufferD1Ev
    StreamBuffer(const StreamBuffer&) = delete;
    StreamBuffer& operator=(const StreamBuffer&) = delete;

    // Vtable slots in order: the IStreamBase overrides, then the slot StreamBuffer adds.
    std::uint32_t size() const override;         // +0x08 0x316430 _ZNK12StreamBuffer4sizeEv
    bool canRead() const override;               // +0x0c 0x316458 _ZNK12StreamBuffer7canReadEv
    bool canWrite() const override;              // +0x10 0x316460 _ZNK12StreamBuffer8canWriteEv
    std::uint64_t peek(void* dst, std::uint64_t n) const override;  // +0x14 0x3166bc _ZNK12StreamBuffer4peekEPvy
    std::uint64_t read(void* dst, std::uint64_t n) override;        // +0x18 0x316494 _ZN12StreamBuffer4readEPvy
    std::uint64_t write(const void* src, std::uint64_t n) override; // +0x1c 0x316fd4 _ZN12StreamBuffer5writeEPKvy
    void seek(std::uint64_t pos) override;       // +0x20 0x3164d8 _ZN12StreamBuffer4seekEy
    std::uint64_t tell() const override;         // +0x24 0x3164cc _ZNK12StreamBuffer4tellEv
    void skip(std::uint64_t n) override;         // +0x28 0x316468 _ZN12StreamBuffer4skipEy
    void seekWrite(std::uint64_t pos) override;  // +0x2c 0x316510 _ZN12StreamBuffer9seekWriteEy
    std::uint64_t tellWrite() const override;    // +0x30 0x316488 _ZNK12StreamBuffer9tellWriteEv
    virtual std::uint32_t size(int block) const; // +0x34 0x31643c _ZNK12StreamBuffer4sizeEi. Not in IStreamBase.

    void clear();                                // 0x316a48 _ZN12StreamBuffer5clearEv
    void expand(std::uint64_t size);             // 0x317180 _ZN12StreamBuffer6expandEy

    // +0x00 vptr (IStreamBase)
    std::uint64_t read_pos_ = 0;                 // +0x08
    std::uint64_t write_pos_ = 0;                // +0x10
    Buffer buffer_;                              // +0x18
};
