// IStreamBase: abstract stream interface, the one definition for every category (net-transport, pydata-accessors and
// the game). StreamBuffer (dh2/StreamBuffer.hpp) is its concrete implementation, and the save, level and network code
// read and write fields through readAs<T> and writeAs<T>.
// Original 32-bit vtable (_ZTV11IStreamBase, 60 bytes, 13 slots after the 8-byte header): the two destructors,
// nine pure virtuals, and the non-pure seekWrite and tellWrite. Slot names follow the StreamBuffer overrides.
// StreamBuffer adds one slot of its own, size(int) at +0x34; it is not part of this interface.
// The object is the vptr and nothing else: the only code that stores this vtable is the destructor pair (off_95B020
// at 0x316404 / 0x316798), and StreamBuffer's constructor (0x3173f8) puts its first member at +0x08 straight after the
// vptr. The original size is 4; the header reserves nothing after the vptr.
// Return types: size(), peek, read, write and tell return unsigned long long in the original (r0:r1; size() is the
// zero-extended 32-bit count). size() keeps std::uint32_t here, as every override in the tree declares it; the count
// is lossless below 4 GiB.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x316404 D1, 0x316798 D0).
#pragma once

#include <cstdint>
#include <string>

class IStreamBase {
public:
    // Vtable slots in order.
    virtual ~IStreamBase();                                             // +0x00, +0x04: 0x316404 (D1), 0x316798 (D0)
    virtual std::uint32_t size() const = 0;                             // +0x08 pure
    virtual bool canRead() const = 0;                                   // +0x0c pure
    virtual bool canWrite() const = 0;                                  // +0x10 pure
    virtual std::uint64_t peek(void* dst, std::uint64_t n) const = 0;   // +0x14 pure
    virtual std::uint64_t read(void* dst, std::uint64_t n) = 0;         // +0x18 pure. readAs<T> calls it with (&value, sizeof(T), 0)
    virtual std::uint64_t write(const void* src, std::uint64_t n) = 0;  // +0x1c pure. writeAs<T> calls it with (&value, sizeof(T), 0)
    virtual void seek(std::uint64_t pos) = 0;                           // +0x20 pure. seekWrite forwards to it
    virtual std::uint64_t tell() const = 0;                             // +0x24 pure. tellWrite forwards to it
    virtual void skip(std::uint64_t n) = 0;                             // +0x28 pure
    virtual void seekWrite(std::uint64_t pos);                          // +0x2c 0x316408: seek(pos)
    virtual std::uint64_t tellWrite() const;                            // +0x30 0x31641c: tell()

    // Typed helpers. Each moves sizeof(T) bytes through read or write and asserts that the whole
    // count was transferred. Instantiated for unsigned int, int, unsigned char, signed char, unsigned
    // short, unsigned long long, bool, Point3D<float>, Structs::CharacterProperties, Door::DoorStates
    // and std::bitset<128>.
    template <typename T> void readAs(T& value);
    template <typename T> void writeAs(const T& value);
    void readAs(std::string& value);                                    // 0x461da8
    void writeAs(const std::string& value);                             // 0x461668

    // +0x00 vptr (implicit). No data members.
};
